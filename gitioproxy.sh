#!/bin/bash
# gitio.sh MODULE_NO IMG_START_NO IMG_END_NO

if [ -n "$2" ]; then
	if [ -n "$3" ]; then
		for i in $(seq $2 $3)
		do
			# echo $i;
			curl -x http://localhost:10809 -i https://git.io -F url=https://raw.githubusercontent.com/zchli/steeldive/master/"$1"/"$1"-"$i".jpg -F code=steeldive-"$1"-"$i";
		done
	else
		# echo $2;
	    curl -x http://localhost:10809 -i https://git.io -F url=https://raw.githubusercontent.com/zchli/steeldive/master/"$1"/"$1"-"$2".jpg -F code=steeldive-"$1"-"$2";
	fi
else
	# echo $2;
    curl -x http://localhost:10809 -i https://raw.githubusercontent.com/zchli/steeldive/master/"$1"/"$1".jpg -F code=steeldive-"$1";
fi
