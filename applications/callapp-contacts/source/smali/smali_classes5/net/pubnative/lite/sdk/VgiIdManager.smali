.class public Lnet/pubnative/lite/sdk/VgiIdManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final KEY_VGI_ID:Ljava/lang/String; = "VGI_id"

.field private static final PREFERENCES_VGI_ID:Ljava/lang/String; = "net.pubnative.lite.vgiid"

.field private static final TAG:Ljava/lang/String; = "VgiIdManager"


# instance fields
.field private mAppToken:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mIdModel:Lnet/pubnative/lite/sdk/models/IdModel;

.field private final mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lnet/pubnative/lite/sdk/VgiIdManager;->mContext:Landroid/content/Context;

    const-string v0, "net.pubnative.lite.vgiid"

    const/4 v1, 0x0

    .line 43
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lnet/pubnative/lite/sdk/VgiIdManager;->mPreferences:Landroid/content/SharedPreferences;

    .line 44
    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->getAppToken()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/pubnative/lite/sdk/VgiIdManager;->mAppToken:Ljava/lang/String;

    return-void
.end method

.method private getApps(Lnet/pubnative/lite/sdk/UserDataManager;Lnet/pubnative/lite/sdk/DeviceInfo;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/pubnative/lite/sdk/UserDataManager;",
            "Lnet/pubnative/lite/sdk/DeviceInfo;",
            ")",
            "Ljava/util/List<",
            "Lnet/pubnative/lite/sdk/models/IdApp;",
            ">;"
        }
    .end annotation

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 97
    new-instance v1, Lnet/pubnative/lite/sdk/models/IdApp;

    invoke-direct {v1}, Lnet/pubnative/lite/sdk/models/IdApp;-><init>()V

    .line 99
    new-instance v2, Lnet/pubnative/lite/sdk/models/IdPrivacy;

    invoke-direct {v2}, Lnet/pubnative/lite/sdk/models/IdPrivacy;-><init>()V

    .line 100
    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/UserDataManager;->getIABUSPrivacyString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lnet/pubnative/lite/sdk/models/IdPrivacy;->iab_ccpa:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/UserDataManager;->getIABGDPRConsentString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lnet/pubnative/lite/sdk/models/IdPrivacy;->tcfv2:Ljava/lang/String;

    .line 103
    invoke-virtual {p2}, Lnet/pubnative/lite/sdk/DeviceInfo;->limitTracking()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v2, Lnet/pubnative/lite/sdk/models/IdPrivacy;->lat:Ljava/lang/Boolean;

    .line 105
    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->getBundleId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lnet/pubnative/lite/sdk/models/IdApp;->bundle_id:Ljava/lang/String;

    .line 106
    iput-object v2, v1, Lnet/pubnative/lite/sdk/models/IdApp;->privacy:Lnet/pubnative/lite/sdk/models/IdPrivacy;

    .line 108
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private getBatteryCapacity(Landroid/content/Context;)J
    .locals 5

    .line 172
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-wide/16 v1, -0x1

    const/16 v3, 0x15

    if-lt v0, v3, :cond_1

    const-string v0, "batterymanager"

    .line 173
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/BatteryManager;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 175
    invoke-virtual {p1, v0}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x4

    .line 176
    invoke-virtual {p1, v3}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 178
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v4, :cond_0

    goto :goto_0

    .line 181
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    div-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0x64

    int-to-long v0, v0

    return-wide v0

    :cond_1
    :goto_0
    return-wide v1
.end method

.method private getDevice(Lnet/pubnative/lite/sdk/DeviceInfo;)Lnet/pubnative/lite/sdk/models/IdDevice;
    .locals 8

    .line 114
    new-instance v0, Lnet/pubnative/lite/sdk/models/IdDevice;

    invoke-direct {v0}, Lnet/pubnative/lite/sdk/models/IdDevice;-><init>()V

    .line 115
    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    iput-object v1, v0, Lnet/pubnative/lite/sdk/models/IdDevice;->id:Ljava/lang/String;

    .line 117
    new-instance v1, Lnet/pubnative/lite/sdk/models/IdOs;

    invoke-direct {v1}, Lnet/pubnative/lite/sdk/models/IdOs;-><init>()V

    const-string v2, "Android"

    .line 118
    iput-object v2, v1, Lnet/pubnative/lite/sdk/models/IdOs;->name:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/DeviceInfo;->getOSVersion()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lnet/pubnative/lite/sdk/models/IdOs;->version:Ljava/lang/String;

    .line 121
    new-instance p1, Lnet/pubnative/lite/sdk/models/IdBattery;

    invoke-direct {p1}, Lnet/pubnative/lite/sdk/models/IdBattery;-><init>()V

    .line 122
    iget-object v2, p0, Lnet/pubnative/lite/sdk/VgiIdManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lnet/pubnative/lite/sdk/VgiIdManager;->getBatteryCapacity(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 123
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_0

    .line 124
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 125
    iput-object v2, p1, Lnet/pubnative/lite/sdk/models/IdBattery;->capacity:Ljava/lang/String;

    .line 127
    :cond_0
    iget-object v2, p0, Lnet/pubnative/lite/sdk/VgiIdManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lnet/pubnative/lite/sdk/VgiIdManager;->isBatteryCharging(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v2

    .line 128
    iput-object v2, p1, Lnet/pubnative/lite/sdk/models/IdBattery;->charging:Ljava/lang/Boolean;

    .line 130
    iput-object v1, v0, Lnet/pubnative/lite/sdk/models/IdDevice;->os:Lnet/pubnative/lite/sdk/models/IdOs;

    .line 131
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v1, v0, Lnet/pubnative/lite/sdk/models/IdDevice;->manufacture:Ljava/lang/String;

    .line 132
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v1, v0, Lnet/pubnative/lite/sdk/models/IdDevice;->model:Ljava/lang/String;

    .line 133
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v1, v0, Lnet/pubnative/lite/sdk/models/IdDevice;->brand:Ljava/lang/String;

    .line 134
    iput-object p1, v0, Lnet/pubnative/lite/sdk/models/IdDevice;->battery:Lnet/pubnative/lite/sdk/models/IdBattery;

    return-object v0
.end method

.method private getUsers(Lnet/pubnative/lite/sdk/DeviceInfo;Lnet/pubnative/lite/sdk/location/HyBidLocationManager;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/pubnative/lite/sdk/DeviceInfo;",
            "Lnet/pubnative/lite/sdk/location/HyBidLocationManager;",
            ")",
            "Ljava/util/List<",
            "Lnet/pubnative/lite/sdk/models/IdUser;",
            ">;"
        }
    .end annotation

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 141
    new-instance v1, Lnet/pubnative/lite/sdk/models/IdUser;

    invoke-direct {v1}, Lnet/pubnative/lite/sdk/models/IdUser;-><init>()V

    .line 143
    new-instance v2, Lnet/pubnative/lite/sdk/models/IdUserVendor;

    invoke-direct {v2}, Lnet/pubnative/lite/sdk/models/IdUserVendor;-><init>()V

    .line 144
    new-instance v3, Lnet/pubnative/lite/sdk/models/IdGgl;

    invoke-direct {v3}, Lnet/pubnative/lite/sdk/models/IdGgl;-><init>()V

    .line 146
    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/DeviceInfo;->getAdvertisingId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lnet/pubnative/lite/sdk/models/IdGgl;->GAID:Ljava/lang/String;

    .line 148
    iput-object v3, v2, Lnet/pubnative/lite/sdk/models/IdUserVendor;->GGL:Lnet/pubnative/lite/sdk/models/IdGgl;

    .line 150
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 151
    new-instance v3, Lnet/pubnative/lite/sdk/models/IdLocation;

    invoke-direct {v3}, Lnet/pubnative/lite/sdk/models/IdLocation;-><init>()V

    if-eqz p2, :cond_0

    .line 154
    invoke-virtual {p2}, Lnet/pubnative/lite/sdk/location/HyBidLocationManager;->getUserLocation()Landroid/location/Location;

    move-result-object p2

    .line 156
    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lnet/pubnative/lite/sdk/models/IdLocation;->lat:Ljava/lang/String;

    .line 157
    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lnet/pubnative/lite/sdk/models/IdLocation;->lon:Ljava/lang/String;

    .line 158
    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lnet/pubnative/lite/sdk/models/IdLocation;->accuracy:Ljava/lang/String;

    .line 159
    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v3, Lnet/pubnative/lite/sdk/models/IdLocation;->ts:Ljava/lang/String;

    .line 161
    :cond_0
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    iput-object v2, v1, Lnet/pubnative/lite/sdk/models/IdUser;->vendors:Lnet/pubnative/lite/sdk/models/IdUserVendor;

    .line 164
    iput-object p1, v1, Lnet/pubnative/lite/sdk/models/IdUser;->locations:Ljava/util/List;

    .line 166
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private isBatteryCharging(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 2

    .line 189
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const-string v0, "batterymanager"

    .line 190
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/BatteryManager;

    if-eqz p1, :cond_0

    .line 192
    invoke-virtual {p1}, Landroid/os/BatteryManager;->isCharging()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public getVgiIdModel()Lnet/pubnative/lite/sdk/models/IdModel;
    .locals 3

    .line 62
    iget-object v0, p0, Lnet/pubnative/lite/sdk/VgiIdManager;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "VGI_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 68
    :try_start_0
    iget-object v1, p0, Lnet/pubnative/lite/sdk/VgiIdManager;->mAppToken:Ljava/lang/String;

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/PNCrypto;->decryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 71
    new-instance v0, Lnet/pubnative/lite/sdk/models/IdModel;

    invoke-direct {v0, v1}, Lnet/pubnative/lite/sdk/models/IdModel;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 73
    sget-object v1, Lnet/pubnative/lite/sdk/VgiIdManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lnet/pubnative/lite/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v2
.end method

.method public init()V
    .locals 4

    .line 48
    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->getUserDataManager()Lnet/pubnative/lite/sdk/UserDataManager;

    move-result-object v0

    .line 49
    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->getDeviceInfo()Lnet/pubnative/lite/sdk/DeviceInfo;

    move-result-object v1

    .line 50
    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->getLocationManager()Lnet/pubnative/lite/sdk/location/HyBidLocationManager;

    move-result-object v2

    .line 52
    new-instance v3, Lnet/pubnative/lite/sdk/models/IdModel;

    invoke-direct {v3}, Lnet/pubnative/lite/sdk/models/IdModel;-><init>()V

    iput-object v3, p0, Lnet/pubnative/lite/sdk/VgiIdManager;->mIdModel:Lnet/pubnative/lite/sdk/models/IdModel;

    .line 54
    invoke-direct {p0, v0, v1}, Lnet/pubnative/lite/sdk/VgiIdManager;->getApps(Lnet/pubnative/lite/sdk/UserDataManager;Lnet/pubnative/lite/sdk/DeviceInfo;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v3, Lnet/pubnative/lite/sdk/models/IdModel;->apps:Ljava/util/List;

    .line 55
    iget-object v0, p0, Lnet/pubnative/lite/sdk/VgiIdManager;->mIdModel:Lnet/pubnative/lite/sdk/models/IdModel;

    invoke-direct {p0, v1}, Lnet/pubnative/lite/sdk/VgiIdManager;->getDevice(Lnet/pubnative/lite/sdk/DeviceInfo;)Lnet/pubnative/lite/sdk/models/IdDevice;

    move-result-object v3

    iput-object v3, v0, Lnet/pubnative/lite/sdk/models/IdModel;->device:Lnet/pubnative/lite/sdk/models/IdDevice;

    .line 56
    iget-object v0, p0, Lnet/pubnative/lite/sdk/VgiIdManager;->mIdModel:Lnet/pubnative/lite/sdk/models/IdModel;

    invoke-direct {p0, v1, v2}, Lnet/pubnative/lite/sdk/VgiIdManager;->getUsers(Lnet/pubnative/lite/sdk/DeviceInfo;Lnet/pubnative/lite/sdk/location/HyBidLocationManager;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lnet/pubnative/lite/sdk/models/IdModel;->users:Ljava/util/List;

    .line 58
    iget-object v0, p0, Lnet/pubnative/lite/sdk/VgiIdManager;->mIdModel:Lnet/pubnative/lite/sdk/models/IdModel;

    invoke-virtual {p0, v0}, Lnet/pubnative/lite/sdk/VgiIdManager;->setVgiIdModel(Lnet/pubnative/lite/sdk/models/IdModel;)V

    return-void
.end method

.method public setVgiIdModel(Lnet/pubnative/lite/sdk/models/IdModel;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 83
    :try_start_0
    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/models/IdModel;->toJson()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 84
    iget-object v0, p0, Lnet/pubnative/lite/sdk/VgiIdManager;->mAppToken:Ljava/lang/String;

    invoke-static {p1, v0}, Lnet/pubnative/lite/sdk/utils/PNCrypto;->encryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 86
    iget-object v0, p0, Lnet/pubnative/lite/sdk/VgiIdManager;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "VGI_id"

    .line 87
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 88
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 90
    sget-object v0, Lnet/pubnative/lite/sdk/VgiIdManager;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lnet/pubnative/lite/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
