# Update script of oub-remix by @marshmello61

repo="oub-remix"
rm -rf ${repo}

echo "You're running the oub-remix Updater script by @RoyalBoy69"
echo " "
# Get username of user
echo -n "Enter your GitHub username: "
read userName
echo " "

# Check if user has forked or has the same repo name
echo -n "Have you forked oub-remix from RoyalBoy69 or has the same repo name i.e. oub-remix? [y/n]: "
read fork
echo " "

if [[ "${fork}" == 'y' ]]; then
	git clone https://github.com/${userName}/${repo}.git
	cd ${repo}
elif [[ "${fork}" == 'n' ]]; then
	echo -n "Enter your repo name: "
	read repo
	git clone https://github.com/${userName}/${repo}.git
	cd ${repo}
else
        echo " "
        echo "You were only supposed to enter y or n"
        exit 1
fi

echo " "
echo "Updating your oub-remix"
git pull https://github.com/sahyam2019/oub-remix.git
git commit -m "Ho ja update"
git push
echo " "
echo "Updated"
cd ..
rm -rf ${repo}
