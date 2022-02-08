#!/bin/bash
echo "PHP5.6 Provisioning - begin"
sudo add-apt-repository ppa:ondrej/php
sudo apt-get update
sudo apt-get install -y php5.6 libapache2-mod-php5.6 php5.6-mysql
cd /var/www/html/
sudo mv index.html default.html
sudo cp /vagrant/conf/index.php /var/www/html/index.php
echo "PHP5.6 Provisioning - end"
