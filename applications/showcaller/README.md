# Findings

## On disk

`offlinedata.sqlite` contains about 50 000 entries. Numbers hashed and labeled.

## Network

Size per request on startup is < 1MB, likely no offline db is retrieved.

Binary encoded, following URLs were observed:

- `https://app.show-caller.com/api/v1/sea.php`
- `https://app.show-caller.com/api/v1/cheact.php`
- `https://app.show-caller.com/api/v1/seacomcousub.php`

Similar in structure to callerid-block