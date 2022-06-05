# Findings

## On disk

No offline records found on disk

## Network

### Startup
`https://api.advista.no/Report/Number/Mobile` reports 3277109 (entries?). Advista is likely parent company of telguarder? https://www.advista.no/en/home/

### Incoming call

`https://tgedgeapi.telguarder.com/v2/Search/NumberLookup/Mobile`. Checks incoming mobile number. Large amount of feedback data on number. Largely community driven?

Request:
```json
{
    "keepProportions": true,
    "logoHeight": 132,
    "logoWidth": 132,
    "numbers": [
        "00447868726250"
    ],
    "resizeLogo": true
}
```

Response:
```json
{
    "ad": null,
    "debugs": null,
    "executeTime": 16,
    "queryTime": 3,
    "request": {
        "adNetwork": null,
        "count": 0,
        "debug": false,
        "keepProportions": true,
        "logoHeight": 132,
        "logoWidth": 132,
        "numbers": [
            "00447868726250"
        ],
        "offset": null,
        "resizeLogo": true,
        "showAd": null,
        "text": null
    },
    "results": [
        {
            "dangerous": null,
            "error": false,
            "isValid": false,
            "number": "00447868726250",
            "result": [
                {
                    "address": {
                        "country": "",
                        "place": "",
                        "street": "",
                        "zip": ""
                    },
                    "coordinates": null,
                    "id": null,
                    "logWebUrl": null,
                    "logoUrl": null,
                    "mobileNumbers": {
                        "primary": "",
                        "secondary": ""
                    },
                    "name": "",
                    "organizationNumbers": [],
                    "phoneNumbers": {
                        "primary": "",
                        "secondary": ""
                    },
                    "spam": {
                        "infoPageUrl": null,
                        "message": "Multiple users have reported the number as telephone sales/spam",
                        "spamType": "communityReported",
                        "title": "Warning"
                    },
                    "type": "company",
                    "visitingAddress": {
                        "country": "",
                        "place": "",
                        "street": "",
                        "zip": ""
                    },
                    "webUrl": null,
                    "webUrlText": null
                }
            ],
            "searchId": "76ffc982c18d46fd8f7b1bbd4c30c51f",
            "securityLevel": 50,
            "spam": {
                "infoPageUrl": null,
                "message": "Multiple users have reported the number as telephone sales/spam",
                "spamType": "communityReported",
                "title": "Warning"
            }
        }
    ]
}
```

`https://api.advista.no/Report/Number/Comments/Mobile`. Checks for community comments on number.

Request:
```json
{
    "count": 30,
    "number": "00447868726250",
    "offset": 0
}
```

Response (snippet):
```json
{
    "comments": [
        {
            "country": "de",
            "id": 0,
            "isWeb": false,
            "language": "de",
            "number": null,
            "text": "Nervt 😤😤😡😡",
            "timeStamp": "2021-09-08T13:57:32.09+00:00"
        },
        {
            "country": "de",
            "id": 0,
            "isWeb": false,
            "language": "de",
            "number": null,
            "text": "Angeblich \"übers Kleingedruckte\" in ein Lottospiel (6 aus 49) geraten. Nachdem ich sagte, ich würde nie Lotto spielen, wurde aufgelegt.",
            "timeStamp": "2021-07-09T11:46:50.693+00:00"
        },
    ]
}
```

`https://api.advista.no/tgp/hourlyactivity?mcc=310&language=en`. Request live data of recent activity.