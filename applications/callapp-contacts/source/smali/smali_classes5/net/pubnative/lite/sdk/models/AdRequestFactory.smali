.class public Lnet/pubnative/lite/sdk/models/AdRequestFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/lite/sdk/models/AdRequestFactory$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AdRequestFactory"


# instance fields
.field private mDeviceInfo:Lnet/pubnative/lite/sdk/DeviceInfo;

.field private mIntegrationType:Lnet/pubnative/lite/sdk/models/IntegrationType;

.field private mIsRewarded:Z

.field private mLocationManager:Lnet/pubnative/lite/sdk/location/HyBidLocationManager;

.field private mUserDataManager:Lnet/pubnative/lite/sdk/UserDataManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 58
    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->getDeviceInfo()Lnet/pubnative/lite/sdk/DeviceInfo;

    move-result-object v0

    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->getLocationManager()Lnet/pubnative/lite/sdk/location/HyBidLocationManager;

    move-result-object v1

    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->getUserDataManager()Lnet/pubnative/lite/sdk/UserDataManager;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lnet/pubnative/lite/sdk/models/AdRequestFactory;-><init>(Lnet/pubnative/lite/sdk/DeviceInfo;Lnet/pubnative/lite/sdk/location/HyBidLocationManager;Lnet/pubnative/lite/sdk/UserDataManager;)V

    return-void
.end method

.method constructor <init>(Lnet/pubnative/lite/sdk/DeviceInfo;Lnet/pubnative/lite/sdk/location/HyBidLocationManager;Lnet/pubnative/lite/sdk/UserDataManager;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sget-object v0, Lnet/pubnative/lite/sdk/models/IntegrationType;->HEADER_BIDDING:Lnet/pubnative/lite/sdk/models/IntegrationType;

    iput-object v0, p0, Lnet/pubnative/lite/sdk/models/AdRequestFactory;->mIntegrationType:Lnet/pubnative/lite/sdk/models/IntegrationType;

    .line 62
    iput-object p1, p0, Lnet/pubnative/lite/sdk/models/AdRequestFactory;->mDeviceInfo:Lnet/pubnative/lite/sdk/DeviceInfo;

    .line 63
    iput-object p2, p0, Lnet/pubnative/lite/sdk/models/AdRequestFactory;->mLocationManager:Lnet/pubnative/lite/sdk/location/HyBidLocationManager;

    .line 64
    iput-object p3, p0, Lnet/pubnative/lite/sdk/models/AdRequestFactory;->mUserDataManager:Lnet/pubnative/lite/sdk/UserDataManager;

    return-void
.end method

.method static synthetic access$000(Lnet/pubnative/lite/sdk/models/AdRequestFactory;Ljava/lang/String;Lnet/pubnative/lite/sdk/models/AdSize;Ljava/lang/String;ZLnet/pubnative/lite/sdk/models/AdRequestFactory$Callback;)V
    .locals 0

    .line 44
    invoke-direct/range {p0 .. p5}, Lnet/pubnative/lite/sdk/models/AdRequestFactory;->processAdvertisingId(Ljava/lang/String;Lnet/pubnative/lite/sdk/models/AdSize;Ljava/lang/String;ZLnet/pubnative/lite/sdk/models/AdRequestFactory$Callback;)V

    return-void
.end method

.method private getDefaultMetaFields()Ljava/lang/String;
    .locals 4

    const-string v0, "points"

    const-string v1, "revenuemodel"

    const-string v2, "contentinfo"

    const-string v3, "creativeid"

    .line 201
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    .line 206
    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDefaultNativeAssetFields()Ljava/lang/String;
    .locals 6

    const-string v0, "icon"

    const-string v1, "title"

    const-string v2, "banner"

    const-string v3, "cta"

    const-string v4, "rating"

    const-string v5, "description"

    .line 210
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    .line 217
    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private processAdvertisingId(Ljava/lang/String;Lnet/pubnative/lite/sdk/models/AdSize;Ljava/lang/String;ZLnet/pubnative/lite/sdk/models/AdRequestFactory$Callback;)V
    .locals 6

    if-eqz p5, :cond_0

    .line 99
    iget-object v5, p0, Lnet/pubnative/lite/sdk/models/AdRequestFactory;->mIntegrationType:Lnet/pubnative/lite/sdk/models/IntegrationType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lnet/pubnative/lite/sdk/models/AdRequestFactory;->buildRequest(Ljava/lang/String;Lnet/pubnative/lite/sdk/models/AdSize;Ljava/lang/String;ZLnet/pubnative/lite/sdk/models/IntegrationType;)Lnet/pubnative/lite/sdk/models/AdRequest;

    move-result-object p1

    invoke-interface {p5, p1}, Lnet/pubnative/lite/sdk/models/AdRequestFactory$Callback;->onRequestCreated(Lnet/pubnative/lite/sdk/models/AdRequest;)V

    :cond_0
    return-void
.end method


# virtual methods
.method buildRequest(Ljava/lang/String;Lnet/pubnative/lite/sdk/models/AdSize;Ljava/lang/String;ZLnet/pubnative/lite/sdk/models/IntegrationType;)Lnet/pubnative/lite/sdk/models/AdRequest;
    .locals 6

    .line 104
    iget-object v0, p0, Lnet/pubnative/lite/sdk/models/AdRequestFactory;->mUserDataManager:Lnet/pubnative/lite/sdk/UserDataManager;

    if-nez v0, :cond_0

    .line 105
    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->getUserDataManager()Lnet/pubnative/lite/sdk/UserDataManager;

    move-result-object v0

    iput-object v0, p0, Lnet/pubnative/lite/sdk/models/AdRequestFactory;->mUserDataManager:Lnet/pubnative/lite/sdk/UserDataManager;

    .line 107
    :cond_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/models/AdRequestFactory;->mUserDataManager:Lnet/pubnative/lite/sdk/UserDataManager;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/UserDataManager;->isCCPAOptOut()Z

    move-result v0

    .line 108
    new-instance v1, Lnet/pubnative/lite/sdk/models/AdRequest;

    invoke-direct {v1}, Lnet/pubnative/lite/sdk/models/AdRequest;-><init>()V

    .line 109
    iput-object p1, v1, Lnet/pubnative/lite/sdk/models/AdRequest;->zoneid:Ljava/lang/String;

    .line 110
    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->getAppToken()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lnet/pubnative/lite/sdk/models/AdRequest;->apptoken:Ljava/lang/String;

    const-string p1, "android"

    .line 111
    iput-object p1, v1, Lnet/pubnative/lite/sdk/models/AdRequest;->os:Ljava/lang/String;

    .line 112
    iget-object p1, p0, Lnet/pubnative/lite/sdk/models/AdRequestFactory;->mDeviceInfo:Lnet/pubnative/lite/sdk/DeviceInfo;

    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/DeviceInfo;->getOSVersion()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lnet/pubnative/lite/sdk/models/AdRequest;->osver:Ljava/lang/String;

    .line 113
    iget-object p1, p0, Lnet/pubnative/lite/sdk/models/AdRequestFactory;->mDeviceInfo:Lnet/pubnative/lite/sdk/DeviceInfo;

    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/DeviceInfo;->getModel()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lnet/pubnative/lite/sdk/models/AdRequest;->devicemodel:Ljava/lang/String;

    .line 114
    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->isCoppaEnabled()Z

    move-result p1

    const-string v2, "0"

    const-string v3, "1"

    if-eqz p1, :cond_1

    move-object p1, v3

    goto :goto_0

    :cond_1
    move-object p1, v2

    :goto_0
    iput-object p1, v1, Lnet/pubnative/lite/sdk/models/AdRequest;->coppa:Ljava/lang/String;

    const-string p1, "pubnativenet"

    .line 115
    iput-object p1, v1, Lnet/pubnative/lite/sdk/models/AdRequest;->omidpn:Ljava/lang/String;

    const-string p1, "1.3.17"

    .line 116
    iput-object p1, v1, Lnet/pubnative/lite/sdk/models/AdRequest;->omidpv:Ljava/lang/String;

    .line 118
    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->isCoppaEnabled()Z

    move-result p1

    if-nez p1, :cond_3

    if-nez p4, :cond_3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    if-nez v0, :cond_3

    iget-object p1, p0, Lnet/pubnative/lite/sdk/models/AdRequestFactory;->mUserDataManager:Lnet/pubnative/lite/sdk/UserDataManager;

    .line 119
    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/UserDataManager;->isConsentDenied()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 122
    :cond_2
    iput-object p3, v1, Lnet/pubnative/lite/sdk/models/AdRequest;->gid:Ljava/lang/String;

    .line 124
    iget-object p1, p0, Lnet/pubnative/lite/sdk/models/AdRequestFactory;->mDeviceInfo:Lnet/pubnative/lite/sdk/DeviceInfo;

    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/DeviceInfo;->getAdvertisingIdMd5()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lnet/pubnative/lite/sdk/models/AdRequest;->gidmd5:Ljava/lang/String;

    .line 125
    iget-object p1, p0, Lnet/pubnative/lite/sdk/models/AdRequestFactory;->mDeviceInfo:Lnet/pubnative/lite/sdk/DeviceInfo;

    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/DeviceInfo;->getAdvertisingIdSha1()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lnet/pubnative/lite/sdk/models/AdRequest;->gidsha1:Ljava/lang/String;

    goto :goto_2

    .line 120
    :cond_3
    :goto_1
    iput-object v3, v1, Lnet/pubnative/lite/sdk/models/AdRequest;->dnt:Ljava/lang/String;

    .line 128
    :goto_2
    iget-object p1, p0, Lnet/pubnative/lite/sdk/models/AdRequestFactory;->mUserDataManager:Lnet/pubnative/lite/sdk/UserDataManager;

    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/UserDataManager;->getIABUSPrivacyString()Ljava/lang/String;

    move-result-object p1

    .line 129
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_4

    .line 130
    iput-object p1, v1, Lnet/pubnative/lite/sdk/models/AdRequest;->usprivacy:Ljava/lang/String;

    .line 133
    :cond_4
    iget-object p1, p0, Lnet/pubnative/lite/sdk/models/AdRequestFactory;->mUserDataManager:Lnet/pubnative/lite/sdk/UserDataManager;

    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/UserDataManager;->getIABGDPRConsentString()Ljava/lang/String;

    move-result-object p1

    .line 134
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_5

    .line 135
    iput-object p1, v1, Lnet/pubnative/lite/sdk/models/AdRequest;->userconsent:Ljava/lang/String;

    .line 138
    :cond_5
    iget-object p1, p0, Lnet/pubnative/lite/sdk/models/AdRequestFactory;->mDeviceInfo:Lnet/pubnative/lite/sdk/DeviceInfo;

    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/DeviceInfo;->getLocale()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lnet/pubnative/lite/sdk/models/AdRequest;->locale:Ljava/lang/String;

    .line 140
    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->isCoppaEnabled()Z

    move-result p1

    if-nez p1, :cond_6

    if-nez p4, :cond_6

    if-nez v0, :cond_6

    iget-object p1, p0, Lnet/pubnative/lite/sdk/models/AdRequestFactory;->mUserDataManager:Lnet/pubnative/lite/sdk/UserDataManager;

    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/UserDataManager;->isConsentDenied()Z

    move-result p1

    if-nez p1, :cond_6

    .line 141
    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->getAge()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lnet/pubnative/lite/sdk/models/AdRequest;->age:Ljava/lang/String;

    .line 142
    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->getGender()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lnet/pubnative/lite/sdk/models/AdRequest;->gender:Ljava/lang/String;

    .line 143
    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->getKeywords()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lnet/pubnative/lite/sdk/models/AdRequest;->keywords:Ljava/lang/String;

    .line 146
    :cond_6
    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->getBundleId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lnet/pubnative/lite/sdk/models/AdRequest;->bundleid:Ljava/lang/String;

    .line 147
    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->isTestMode()Z

    move-result p1

    if-eqz p1, :cond_7

    move-object p1, v3

    goto :goto_3

    :cond_7
    move-object p1, v2

    :goto_3
    iput-object p1, v1, Lnet/pubnative/lite/sdk/models/AdRequest;->testMode:Ljava/lang/String;

    if-nez p2, :cond_8

    .line 151
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/models/AdRequestFactory;->getDefaultNativeAssetFields()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lnet/pubnative/lite/sdk/models/AdRequest;->af:Ljava/lang/String;

    goto :goto_4

    .line 153
    :cond_8
    invoke-virtual {p2}, Lnet/pubnative/lite/sdk/models/AdSize;->getAdLayoutSize()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lnet/pubnative/lite/sdk/models/AdRequest;->al:Ljava/lang/String;

    .line 155
    invoke-virtual {p2}, Lnet/pubnative/lite/sdk/models/AdSize;->getWidth()I

    move-result p1

    if-eqz p1, :cond_9

    .line 156
    invoke-virtual {p2}, Lnet/pubnative/lite/sdk/models/AdSize;->getWidth()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lnet/pubnative/lite/sdk/models/AdRequest;->width:Ljava/lang/String;

    .line 159
    :cond_9
    invoke-virtual {p2}, Lnet/pubnative/lite/sdk/models/AdSize;->getHeight()I

    move-result p1

    if-eqz p1, :cond_a

    .line 160
    invoke-virtual {p2}, Lnet/pubnative/lite/sdk/models/AdSize;->getHeight()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lnet/pubnative/lite/sdk/models/AdRequest;->height:Ljava/lang/String;

    .line 164
    :cond_a
    :goto_4
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/models/AdRequestFactory;->getDefaultMetaFields()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lnet/pubnative/lite/sdk/models/AdRequest;->mf:Ljava/lang/String;

    const-string p1, "HyBid"

    .line 166
    iput-object p1, v1, Lnet/pubnative/lite/sdk/models/AdRequest;->displaymanager:Ljava/lang/String;

    .line 167
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "sdkandroid"

    const/4 v0, 0x0

    aput-object p3, p2, v0

    .line 168
    invoke-virtual {p5}, Lnet/pubnative/lite/sdk/models/IntegrationType;->getCode()Ljava/lang/String;

    move-result-object p3

    const/4 p5, 0x1

    aput-object p3, p2, p5

    const/4 p3, 0x2

    const-string v4, "2.4.3"

    aput-object v4, p2, p3

    const-string p3, "%s_%s_%s"

    .line 167
    invoke-static {p1, p3, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lnet/pubnative/lite/sdk/models/AdRequest;->displaymanagerver:Ljava/lang/String;

    .line 170
    iget-object p1, p0, Lnet/pubnative/lite/sdk/models/AdRequestFactory;->mLocationManager:Lnet/pubnative/lite/sdk/location/HyBidLocationManager;

    if-eqz p1, :cond_b

    .line 171
    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/location/HyBidLocationManager;->getUserLocation()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 172
    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->isCoppaEnabled()Z

    move-result p2

    if-nez p2, :cond_b

    if-nez p4, :cond_b

    iget-object p2, p0, Lnet/pubnative/lite/sdk/models/AdRequestFactory;->mUserDataManager:Lnet/pubnative/lite/sdk/UserDataManager;

    .line 173
    invoke-virtual {p2}, Lnet/pubnative/lite/sdk/UserDataManager;->isConsentDenied()Z

    move-result p2

    if-nez p2, :cond_b

    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->isLocationTrackingEnabled()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 174
    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array p3, p5, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p4

    aput-object p4, p3, v0

    const-string p4, "%.6f"

    invoke-static {p2, p4, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v1, Lnet/pubnative/lite/sdk/models/AdRequest;->latitude:Ljava/lang/String;

    .line 175
    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array p3, p5, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, p3, v0

    invoke-static {p2, p4, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lnet/pubnative/lite/sdk/models/AdRequest;->longitude:Ljava/lang/String;

    .line 179
    :cond_b
    iget-boolean p1, p0, Lnet/pubnative/lite/sdk/models/AdRequestFactory;->mIsRewarded:Z

    if-eqz p1, :cond_c

    .line 180
    iput-object v3, v1, Lnet/pubnative/lite/sdk/models/AdRequest;->rv:Ljava/lang/String;

    goto :goto_5

    .line 182
    :cond_c
    iput-object v2, v1, Lnet/pubnative/lite/sdk/models/AdRequest;->rv:Ljava/lang/String;

    .line 185
    :goto_5
    iget-object p1, p0, Lnet/pubnative/lite/sdk/models/AdRequestFactory;->mDeviceInfo:Lnet/pubnative/lite/sdk/DeviceInfo;

    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/DeviceInfo;->getDeviceHeight()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lnet/pubnative/lite/sdk/models/AdRequest;->deviceHeight:Ljava/lang/String;

    .line 186
    iget-object p1, p0, Lnet/pubnative/lite/sdk/models/AdRequestFactory;->mDeviceInfo:Lnet/pubnative/lite/sdk/DeviceInfo;

    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/DeviceInfo;->getDeviceWidth()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lnet/pubnative/lite/sdk/models/AdRequest;->deviceWidth:Ljava/lang/String;

    .line 188
    iget-object p1, p0, Lnet/pubnative/lite/sdk/models/AdRequestFactory;->mDeviceInfo:Lnet/pubnative/lite/sdk/DeviceInfo;

    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/DeviceInfo;->getOrientation()Lnet/pubnative/lite/sdk/DeviceInfo$Orientation;

    move-result-object p1

    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/DeviceInfo$Orientation;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lnet/pubnative/lite/sdk/models/AdRequest;->orientation:Ljava/lang/String;

    .line 190
    iget-object p1, p0, Lnet/pubnative/lite/sdk/models/AdRequestFactory;->mDeviceInfo:Lnet/pubnative/lite/sdk/DeviceInfo;

    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/DeviceInfo;->checkSoundSetting()V

    .line 191
    iget-object p1, p0, Lnet/pubnative/lite/sdk/models/AdRequestFactory;->mDeviceInfo:Lnet/pubnative/lite/sdk/DeviceInfo;

    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/DeviceInfo;->getSoundSetting()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lnet/pubnative/lite/sdk/models/AdRequest;->soundSetting:Ljava/lang/String;

    return-object v1
.end method

.method public createAdRequest(Ljava/lang/String;Lnet/pubnative/lite/sdk/models/AdSize;ZLnet/pubnative/lite/sdk/models/AdRequestFactory$Callback;)V
    .locals 10

    .line 68
    iget-object v0, p0, Lnet/pubnative/lite/sdk/models/AdRequestFactory;->mDeviceInfo:Lnet/pubnative/lite/sdk/DeviceInfo;

    if-nez v0, :cond_0

    .line 69
    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->getDeviceInfo()Lnet/pubnative/lite/sdk/DeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lnet/pubnative/lite/sdk/models/AdRequestFactory;->mDeviceInfo:Lnet/pubnative/lite/sdk/DeviceInfo;

    .line 75
    :cond_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/models/AdRequestFactory;->mDeviceInfo:Lnet/pubnative/lite/sdk/DeviceInfo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 76
    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/DeviceInfo;->getAdvertisingId()Ljava/lang/String;

    move-result-object v2

    .line 77
    iget-object v0, p0, Lnet/pubnative/lite/sdk/models/AdRequestFactory;->mDeviceInfo:Lnet/pubnative/lite/sdk/DeviceInfo;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/DeviceInfo;->limitTracking()Z

    move-result v0

    .line 78
    iget-object v3, p0, Lnet/pubnative/lite/sdk/models/AdRequestFactory;->mDeviceInfo:Lnet/pubnative/lite/sdk/DeviceInfo;

    invoke-virtual {v3}, Lnet/pubnative/lite/sdk/DeviceInfo;->getContext()Landroid/content/Context;

    move-result-object v3

    move v8, v0

    move-object v7, v2

    move-object v2, v3

    goto :goto_0

    :cond_1
    move-object v7, v2

    const/4 v8, 0x0

    .line 80
    :goto_0
    iput-boolean p3, p0, Lnet/pubnative/lite/sdk/models/AdRequestFactory;->mIsRewarded:Z

    .line 81
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_2

    if-eqz v2, :cond_2

    .line 83
    :try_start_0
    new-instance p3, Lnet/pubnative/lite/sdk/utils/HyBidAdvertisingId;

    new-instance v0, Lnet/pubnative/lite/sdk/models/AdRequestFactory$1;

    invoke-direct {v0, p0, p1, p2, p4}, Lnet/pubnative/lite/sdk/models/AdRequestFactory$1;-><init>(Lnet/pubnative/lite/sdk/models/AdRequestFactory;Ljava/lang/String;Lnet/pubnative/lite/sdk/models/AdSize;Lnet/pubnative/lite/sdk/models/AdRequestFactory$Callback;)V

    invoke-direct {p3, v2, v0}, Lnet/pubnative/lite/sdk/utils/HyBidAdvertisingId;-><init>(Landroid/content/Context;Lnet/pubnative/lite/sdk/utils/HyBidAdvertisingId$Listener;)V

    new-array p1, v1, [Ljava/lang/Void;

    invoke-static {p3, p1}, Lnet/pubnative/lite/sdk/utils/PNAsyncUtils;->safeExecuteOnExecutor(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 90
    :catch_0
    sget-object p1, Lnet/pubnative/lite/sdk/models/AdRequestFactory;->TAG:Ljava/lang/String;

    const-string p2, "Error executing HyBidAdvertisingId AsyncTask"

    invoke-static {p1, p2}, Lnet/pubnative/lite/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v9, p4

    .line 93
    invoke-direct/range {v4 .. v9}, Lnet/pubnative/lite/sdk/models/AdRequestFactory;->processAdvertisingId(Ljava/lang/String;Lnet/pubnative/lite/sdk/models/AdSize;Ljava/lang/String;ZLnet/pubnative/lite/sdk/models/AdRequestFactory$Callback;)V

    return-void
.end method

.method public setIntegrationType(Lnet/pubnative/lite/sdk/models/IntegrationType;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lnet/pubnative/lite/sdk/models/AdRequestFactory;->mIntegrationType:Lnet/pubnative/lite/sdk/models/IntegrationType;

    return-void
.end method
