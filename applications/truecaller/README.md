# Findings

## On disk

`insights.db` contains table `catagorizer_probability` which seems to contain keywords with probability mapping. Likely spam detection. Cool!
`tc.db`: no interesting data

`countries.json` and `edges.json` in `files/` seem to contain a list of countries and available endpoints to use.

No other on disk offline detection method could be found.

## Network

### Startup

`https://premium-se1.truecaller.com/v2/subscriptions/status?encoding=json`. Seems to check premium status. Query asks for JSON.

Response:
```json
{
    "proStatus": {
        "contactRequestQuota": {
            "Year": 365,
            "month": 365
        },
        "credits": 0,
        "expires": "1970-01-01T00:00:00Z",
        "gracePeriodExpires": "1970-01-01T00:00:00Z",
        "inAppPurchaseAllowed": true,
        "isExpired": true,
        "isFreeTrial": false,
        "isGracePeriodExpired": true,
        "level": "none",
        "renewable": false,
        "start": "1970-01-01T00:00:00Z"
    }
}
```

### Incoming call

`https://search5-eu.truecaller.com/v2/search?q=447868726250&countryCode=NL&type=2&placement=CALLERID%2CAFTERCALL%2CDETAILS&adId=f27b7cdd-660e-473a-95f8-839885ec1465&encoding=json`

Query:
```
q:           447868726250
countryCode: NL
type:        2
placement:   CALLERID,AFTERCALL,DETAILS
adId:        f27b7cdd-660e-473a-95f8-839885ec1465
encoding:    json
```

Response:
```json
{
    "data": [
        {
            "access": "PUBLIC",
            "addresses": [
                {
                    "countryCode": "GB",
                    "timeZone": "+01:00",
                    "type": "address"
                }
            ],
            "badges": [],
            "cacheTtl": 1296000000,
            "enhanced": true,
            "id": "RpC0/ZOUzlRjzydRQveeuA==",
            "internetAddresses": [],
            "name": "کلاهبرداری",
            "phones": [
                {
                    "carrier": "Hutchison 3G Ltd",
                    "countryCode": "GB",
                    "dialingCode": 44,
                    "e164Format": "+447868726250",
                    "nationalFormat": "07868 726250",
                    "numberType": "MOBILE",
                    "spamScore": 31,
                    "spamType": "SPAMMER",
                    "type": "openPhone"
                }
            ],
            "score": 0.306375,
            "searchWarnings": [],
            "sources": [],
            "spamInfo": {
                "spamCategories": [],
                "spamScore": 31,
                "spamType": "SPAMMER",
                "spamVersion": 1
            },
            "surveys": [],
            "tags": []
        }
    ],
    "provider": "ss-nu",
    "stats": {
        "sourceStats": []
    }
}
```