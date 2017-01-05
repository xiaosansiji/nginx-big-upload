#!/bin/bash
CDIR=`pwd`
echo "Stoppin nginx"
if [ -f ../docker/nginx ]
then
  NGINX_BIN=../docker/nginx
else
  NGINX_BIN=`which nginx`
fi
set -x
$NGINX_BIN -s stop -p $CDIR -c $CDIR/nginx-big-upload-test.conf
