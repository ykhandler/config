if [ -f "/tmp/sd/test/factory_test.sh" ]; then
	ulimit -s 1024
	export LD_LIBRARY_PATH=/home/lib:$LD_LIBRARY_PATH
	export LD_LIBRARY_PATH=/home/app/locallib:$LD_LIBRARY_PATH
	export LD_LIBRARY_PATH=/home/hisiko/hisilib:$LD_LIBRARY_PATH
	export PATH=/home/app/localbin:$PATH
	export PATH=/home/base/tools:$PATH
	himm 0x2013002c 0
	/tmp/sd/test/factory_test.sh
	sleep 1000
fi