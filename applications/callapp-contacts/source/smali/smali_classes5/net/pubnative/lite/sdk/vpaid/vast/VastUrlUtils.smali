.class public Lnet/pubnative/lite/sdk/vpaid/vast/VastUrlUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 18

    .line 15
    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->getUserDataManager()Lnet/pubnative/lite/sdk/UserDataManager;

    move-result-object v0

    const-string v1, "1"

    const/4 v2, 0x0

    const-string v3, "0"

    if-eqz v0, :cond_1

    .line 16
    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->getUserDataManager()Lnet/pubnative/lite/sdk/UserDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/UserDataManager;->gdprApplies()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, v3

    .line 19
    :goto_0
    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->getUserDataManager()Lnet/pubnative/lite/sdk/UserDataManager;

    move-result-object v2

    invoke-virtual {v2}, Lnet/pubnative/lite/sdk/UserDataManager;->isCCPAOptOut()Z

    move-result v2

    .line 20
    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->getUserDataManager()Lnet/pubnative/lite/sdk/UserDataManager;

    move-result-object v4

    invoke-virtual {v4}, Lnet/pubnative/lite/sdk/UserDataManager;->isConsentDenied()Z

    move-result v4

    move-object v15, v0

    goto :goto_1

    :cond_1
    move-object v15, v3

    const/4 v4, 0x0

    .line 25
    :goto_1
    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->isCoppaEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    if-nez v2, :cond_3

    if-nez v4, :cond_3

    .line 26
    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->getDeviceInfo()Lnet/pubnative/lite/sdk/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/DeviceInfo;->limitTracking()Z

    move-result v0

    if-nez v0, :cond_3

    .line 27
    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->getDeviceInfo()Lnet/pubnative/lite/sdk/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/DeviceInfo;->getAdvertisingId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move-object v9, v3

    goto :goto_3

    :cond_3
    :goto_2
    move-object v9, v1

    .line 34
    :goto_3
    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->getLocationManager()Lnet/pubnative/lite/sdk/location/HyBidLocationManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->getLocationManager()Lnet/pubnative/lite/sdk/location/HyBidLocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/location/HyBidLocationManager;->getUserLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 35
    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->getLocationManager()Lnet/pubnative/lite/sdk/location/HyBidLocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/location/HyBidLocationManager;->getUserLocation()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_4

    .line 36
    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->getLocationManager()Lnet/pubnative/lite/sdk/location/HyBidLocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/location/HyBidLocationManager;->getUserLocation()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_4
    move-object v0, v1

    .line 37
    :goto_4
    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->getLocationManager()Lnet/pubnative/lite/sdk/location/HyBidLocationManager;

    move-result-object v2

    invoke-virtual {v2}, Lnet/pubnative/lite/sdk/location/HyBidLocationManager;->getUserLocation()Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    cmpl-double v6, v2, v4

    if-eqz v6, :cond_5

    .line 38
    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->getLocationManager()Lnet/pubnative/lite/sdk/location/HyBidLocationManager;

    move-result-object v1

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/location/HyBidLocationManager;->getUserLocation()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    :cond_5
    move-object v10, v0

    move-object v11, v1

    goto :goto_5

    :cond_6
    move-object v10, v1

    move-object v11, v10

    .line 42
    :goto_5
    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->getDeviceInfo()Lnet/pubnative/lite/sdk/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/DeviceInfo;->getAdvertisingId()Ljava/lang/String;

    move-result-object v6

    .line 43
    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->getBundleId()Ljava/lang/String;

    move-result-object v7

    .line 49
    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->getDeviceInfo()Lnet/pubnative/lite/sdk/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/DeviceInfo;->getDeviceWidth()Ljava/lang/String;

    move-result-object v13

    .line 50
    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->getDeviceInfo()Lnet/pubnative/lite/sdk/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/DeviceInfo;->getDeviceHeight()Ljava/lang/String;

    move-result-object v14

    .line 52
    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->getUserDataManager()Lnet/pubnative/lite/sdk/UserDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/UserDataManager;->getIABGDPRConsentString()Ljava/lang/String;

    move-result-object v16

    .line 53
    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->getUserDataManager()Lnet/pubnative/lite/sdk/UserDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/UserDataManager;->getIABUSPrivacyString()Ljava/lang/String;

    move-result-object v17

    const-string v8, "wifi"

    const-string v12, ""

    move-object/from16 v5, p0

    .line 41
    invoke-static/range {v5 .. v17}, Lnet/pubnative/lite/sdk/vpaid/vast/VastUrlUtils;->getVastURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getVastURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 70
    new-instance v0, Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;

    invoke-direct {v0, p0}, Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0, p1}, Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;->adId(Ljava/lang/String;)Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;

    move-result-object p0

    .line 73
    invoke-virtual {p0, p2}, Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;->bundle(Ljava/lang/String;)Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;

    move-result-object p0

    .line 74
    invoke-virtual {p0, p3}, Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;->connection(Ljava/lang/String;)Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;

    move-result-object p0

    .line 75
    invoke-virtual {p0, p4}, Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;->dnt(Ljava/lang/String;)Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;

    move-result-object p0

    .line 76
    invoke-virtual {p0, p10}, Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;->gdpr(Ljava/lang/String;)Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;

    move-result-object p0

    .line 77
    invoke-virtual {p0, p11}, Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;->gdprConsent(Ljava/lang/String;)Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;

    move-result-object p0

    .line 78
    invoke-virtual {p0, p8}, Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;->width(Ljava/lang/String;)Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;

    move-result-object p0

    .line 79
    invoke-virtual {p0, p9}, Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;->height(Ljava/lang/String;)Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;

    move-result-object p0

    .line 80
    invoke-virtual {p0, p5}, Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;->lat(Ljava/lang/String;)Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;

    move-result-object p0

    .line 81
    invoke-virtual {p0, p6}, Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;->lon(Ljava/lang/String;)Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;

    move-result-object p0

    .line 82
    invoke-virtual {p0, p7}, Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;->userAgent(Ljava/lang/String;)Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;

    move-result-object p0

    .line 83
    invoke-virtual {p0, p12}, Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;->usPrivacy(Ljava/lang/String;)Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;

    move-result-object p0

    .line 84
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;->build()Lnet/pubnative/lite/sdk/models/VASTtag;

    move-result-object p0

    .line 86
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/models/VASTtag;->getFormattedURL()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
