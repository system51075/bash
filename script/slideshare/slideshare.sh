#!/bin/bash
> file_temp.html
curl -s $1 > tem.html
name=`echo $1|cut -d "/" -f5`
for i in `cat tem.html |grep data-full|egrep -o 'https?://[^ ]+'|sed s/\"//g`;do
#	echo $i
	echo " <img src=\"$i\"<br>" >> file_temp.html
done
/usr/local/wkhtmltox/bin/wkhtmltopdf file_temp.html /home/tantro/www/test_code/pdf/${name}.pdf
echo "File name : /home/tantro/www/test_code/pdf/${name}.pdf"
