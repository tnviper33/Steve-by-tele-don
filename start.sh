if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/narutooxox/RolexTG.git /Rolex
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Rolex
fi
cd /RolexBot
pip3 install -U -r requirements.txt
echo "Bot Assembilng...."
python3 bot.py
