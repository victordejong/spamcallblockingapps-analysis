.class public Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/common/base/POBRequestBuilding;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/pubmatic/sdk/openwrap/core/POBRequest;

.field private final c:Landroid/content/Context;

.field private final d:Ljava/lang/Boolean;

.field private e:Lcom/pubmatic/sdk/common/utility/POBLocationDetector;

.field private f:Lcom/pubmatic/sdk/common/models/POBDeviceInfo;

.field private g:Lcom/pubmatic/sdk/common/models/POBAppInfo;


# direct methods
.method public constructor <init>(Lcom/pubmatic/sdk/openwrap/core/POBRequest;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->b:Lcom/pubmatic/sdk/openwrap/core/POBRequest;

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->d:Ljava/lang/Boolean;

    return-void
.end method

.method private a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "IABUSPrivacy_String"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "profileid"

    :try_start_1
    iget-object v3, p0, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->b:Lcom/pubmatic/sdk/openwrap/core/POBRequest;

    invoke-virtual {v3}, Lcom/pubmatic/sdk/openwrap/core/POBRequest;->getProfileId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->d:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->b:Lcom/pubmatic/sdk/openwrap/core/POBRequest;

    invoke-virtual {v2}, Lcom/pubmatic/sdk/openwrap/core/POBRequest;->getVersionId()Ljava/lang/Integer;

    move-result-object v2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v2, :cond_0

    const-string v2, "versionid"

    :try_start_2
    iget-object v3, p0, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->b:Lcom/pubmatic/sdk/openwrap/core/POBRequest;

    invoke-virtual {v3}, Lcom/pubmatic/sdk/openwrap/core/POBRequest;->getVersionId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v2, p0, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->b:Lcom/pubmatic/sdk/openwrap/core/POBRequest;

    invoke-virtual {v2}, Lcom/pubmatic/sdk/openwrap/core/POBRequest;->a()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    const-string v2, "sumry_disable"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_1
    const-string v2, "clientconfig"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getPartnerServices()Lcom/pubmatic/sdk/common/base/POBBiddingPartnerService;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v2, "loginfo"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    const-string v2, "wrapper"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occurred in getExtObject() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "POBRequestBuilder"

    invoke-static {v3, v1, v2}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method private b()Lorg/json/JSONObject;
    .locals 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getSdkConfig()Lcom/pubmatic/sdk/common/POBSDKConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/POBSDKConfig;->getUserInfo()Lcom/pubmatic/sdk/common/models/POBUserInfo;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const-string v2, "region"

    :try_start_1
    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/models/POBUserInfo;->getRegion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->addParamToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "city"

    :try_start_2
    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/models/POBUserInfo;->getCity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->addParamToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v2, "metro"

    :try_start_3
    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/models/POBUserInfo;->getMetro()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->addParamToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v2, "zip"

    :try_start_4
    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/models/POBUserInfo;->getZip()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->addParamToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string v2, "country"

    :try_start_5
    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/models/POBUserInfo;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v2, v1}, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->addParamToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->e:Lcom/pubmatic/sdk/common/utility/POBLocationDetector;

    invoke-static {v1}, Lcom/pubmatic/sdk/common/utility/POBUtils;->getLocation(Lcom/pubmatic/sdk/common/utility/POBLocationDetector;)Lcom/pubmatic/sdk/common/models/POBLocation;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    if-eqz v1, :cond_2

    const-string v2, "type"

    :try_start_6
    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/models/POBLocation;->getSource()Lcom/pubmatic/sdk/common/models/POBLocation$Source;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pubmatic/sdk/common/models/POBLocation$Source;->getValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    const-string v2, "lat"

    :try_start_7
    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/models/POBLocation;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    const-string v2, "lon"

    :try_start_8
    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/models/POBLocation;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/models/POBLocation;->getSource()Lcom/pubmatic/sdk/common/models/POBLocation$Source;

    move-result-object v2

    sget-object v3, Lcom/pubmatic/sdk/common/models/POBLocation$Source;->GPS:Lcom/pubmatic/sdk/common/models/POBLocation$Source;

    if-ne v2, v3, :cond_1

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/models/POBLocation;->getAccuracy()F

    move-result v2

    float-to-int v2, v2

    if-lez v2, :cond_1

    const-string v3, "accuracy"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_1
    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/models/POBLocation;->getLastFixInMillis()J

    move-result-wide v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    const-string v3, "lastfix"

    const-wide/16 v4, 0x3e8

    :try_start_9
    div-long/2addr v1, v4

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_2
    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->f:Lcom/pubmatic/sdk/common/models/POBDeviceInfo;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    if-eqz v1, :cond_3

    const-string v2, "utcoffset"

    :try_start_a
    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->getTimeZoneOffsetInMinutes()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occurred in getGeoObject() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "POBRequestBuilder"

    invoke-static {v3, v1, v2}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-object v0
.end method

.method private c()Lorg/json/JSONArray;
    .locals 8

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->b:Lcom/pubmatic/sdk/openwrap/core/POBRequest;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/openwrap/core/POBRequest;->getImpressions()[Lcom/pubmatic/sdk/openwrap/core/POBImpression;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    :try_start_0
    invoke-virtual {v5}, Lcom/pubmatic/sdk/openwrap/core/POBImpression;->getImpressionJson()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception occurred in getImpressionJson() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    const-string v7, "POBRequestBuilder"

    invoke-static {v7, v5, v6}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private d()Lorg/json/JSONObject;
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "omidpn"

    const-string v3, "Pubmatic"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "omidpv"

    const-string v3, "1.8.2"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ext"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception occurred in getMeasurementParam() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "POBRequestBuilder"

    invoke-static {v2, v0, v1}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private e()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->b:Lcom/pubmatic/sdk/openwrap/core/POBRequest;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/openwrap/core/POBRequest;->getAdServerUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->b:Lcom/pubmatic/sdk/openwrap/core/POBRequest;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/openwrap/core/POBRequest;->getAdServerUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->a:Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->b:Lcom/pubmatic/sdk/openwrap/core/POBRequest;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/openwrap/core/POBRequest;->isDebugStateEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "debug=1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private f()Lorg/json/JSONObject;
    .locals 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getSdkConfig()Lcom/pubmatic/sdk/common/POBSDKConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/POBSDKConfig;->getUserInfo()Lcom/pubmatic/sdk/common/models/POBUserInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/models/POBUserInfo;->getGender()Lcom/pubmatic/sdk/common/models/POBUserInfo$Gender;

    move-result-object v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder$a;->a:[I

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/models/POBUserInfo;->getGender()Lcom/pubmatic/sdk/common/models/POBUserInfo$Gender;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pubmatic/sdk/common/models/POBUserInfo$Gender;->ordinal()I

    move-result v3

    aget v2, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    const-string v4, "gender"

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    :try_start_1
    const-string v2, "O"

    :goto_0
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_0
    const-string v2, "F"

    goto :goto_0

    :cond_1
    const-string v2, "M"

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/models/POBUserInfo;->getBirthYear()I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-lez v2, :cond_3

    const-string v2, "yob"

    :try_start_2
    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/models/POBUserInfo;->getBirthYear()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/models/POBUserInfo;->getKeywords()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pubmatic/sdk/common/utility/POBUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v2, :cond_4

    const-string v2, "keywords"

    :try_start_3
    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/models/POBUserInfo;->getKeywords()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    invoke-static {}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getSdkConfig()Lcom/pubmatic/sdk/common/POBSDKConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/POBSDKConfig;->getGdprConsent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pubmatic/sdk/common/utility/POBUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v2, "consent"

    :try_start_4
    invoke-static {}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getSdkConfig()Lcom/pubmatic/sdk/common/POBSDKConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pubmatic/sdk/common/POBSDKConfig;->getGdprConsent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ext"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occurred in getUserJson() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "POBRequestBuilder"

    invoke-static {v3, v1, v2}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_2
    return-object v0
.end method

.method private g()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->f:Lcom/pubmatic/sdk/common/models/POBDeviceInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->updateAdvertisingIdInfo()V

    :cond_0
    return-void
.end method


# virtual methods
.method public addParamToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p3}, Lcom/pubmatic/sdk/common/utility/POBUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to add "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " and "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "POBRequestBuilder"

    invoke-static {p3, p1, p2}, Lcom/pubmatic/sdk/common/log/PMLog;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public build()Lcom/pubmatic/sdk/common/network/POBHttpRequest;
    .locals 3

    invoke-direct {p0}, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->getBody()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2.5"

    invoke-virtual {p0, v0, v1, v2}, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->prepareHttpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/pubmatic/sdk/common/network/POBHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public getAppJson(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6

    const-string v0, "POBRequestBuilder"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "name"

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->g:Lcom/pubmatic/sdk/common/models/POBAppInfo;

    invoke-virtual {v4}, Lcom/pubmatic/sdk/common/models/POBAppInfo;->getAppName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v2, v4}, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->addParamToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "bundle"

    :try_start_1
    iget-object v4, p0, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->g:Lcom/pubmatic/sdk/common/models/POBAppInfo;

    invoke-virtual {v4}, Lcom/pubmatic/sdk/common/models/POBAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v2, v4}, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->addParamToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getSdkConfig()Lcom/pubmatic/sdk/common/POBSDKConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pubmatic/sdk/common/POBSDKConfig;->getApplicationInfo()Lcom/pubmatic/sdk/common/models/POBApplicationInfo;

    move-result-object v2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v2, :cond_3

    const-string v4, "domain"

    :try_start_2
    invoke-virtual {v2}, Lcom/pubmatic/sdk/common/models/POBApplicationInfo;->getDomain()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v1, v4, v5}, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->addParamToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/pubmatic/sdk/common/models/POBApplicationInfo;->getStoreURL()Ljava/net/URL;

    move-result-object v4
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v4, :cond_0

    const-string v4, "storeurl"

    :try_start_3
    invoke-virtual {v2}, Lcom/pubmatic/sdk/common/models/POBApplicationInfo;->getStoreURL()Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v1, v4, v5}, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->addParamToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :cond_0
    const-string v4, "Missing \"storeURL\" in the request. It is required for platform identification"

    :try_start_4
    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/pubmatic/sdk/common/log/PMLog;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {v2}, Lcom/pubmatic/sdk/common/models/POBApplicationInfo;->isPaid()Ljava/lang/Boolean;

    move-result-object v4
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    if-eqz v4, :cond_1

    const-string v4, "paid"

    :try_start_5
    invoke-virtual {v2}, Lcom/pubmatic/sdk/common/models/POBApplicationInfo;->isPaid()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_1
    invoke-virtual {v2}, Lcom/pubmatic/sdk/common/models/POBApplicationInfo;->getCategories()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/pubmatic/sdk/common/models/POBApplicationInfo;->getCategories()Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    const-string v4, "cat"

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    invoke-virtual {v2}, Lcom/pubmatic/sdk/common/models/POBApplicationInfo;->getKeywords()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pubmatic/sdk/common/utility/POBUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    if-nez v4, :cond_3

    const-string v4, "keywords"

    :try_start_6
    invoke-virtual {v2}, Lcom/pubmatic/sdk/common/models/POBApplicationInfo;->getKeywords()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_3
    const-string v2, "ver"

    :try_start_7
    iget-object v4, p0, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->g:Lcom/pubmatic/sdk/common/models/POBAppInfo;

    invoke-virtual {v4}, Lcom/pubmatic/sdk/common/models/POBAppInfo;->getAppVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "id"

    invoke-virtual {v2, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "publisher"

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception occurred in getAppJson() : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, p1, v2}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-object v1
.end method

.method public getBody()Lorg/json/JSONObject;
    .locals 4

    invoke-direct {p0}, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->g()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "id"

    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "at"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "cur"

    :try_start_1
    invoke-virtual {p0}, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->getCurrencyJson()Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v1, "imp"

    :try_start_2
    invoke-direct {p0}, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->c()Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v1, "app"

    :try_start_3
    iget-object v3, p0, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->b:Lcom/pubmatic/sdk/openwrap/core/POBRequest;

    invoke-virtual {v3}, Lcom/pubmatic/sdk/openwrap/core/POBRequest;->getPubId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->getAppJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    const-string v1, "device"

    :try_start_4
    invoke-virtual {p0}, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->getDeviceObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getSdkConfig()Lcom/pubmatic/sdk/common/POBSDKConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/POBSDKConfig;->getHtmlMeasurementProvider()Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider;

    move-result-object v1
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    if-eqz v1, :cond_0

    const-string v1, "source"

    :try_start_5
    invoke-direct {p0}, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->d()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    invoke-direct {p0}, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->f()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_1

    const-string v3, "user"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->b:Lcom/pubmatic/sdk/openwrap/core/POBRequest;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/openwrap/core/POBRequest;->getTestMode()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->b:Lcom/pubmatic/sdk/openwrap/core/POBRequest;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/openwrap/core/POBRequest;->getTestMode()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "test"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    invoke-virtual {p0}, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->getRegsJson()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_3

    const-string v2, "regs"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    :cond_3
    const-string v1, "ext"

    :try_start_6
    invoke-direct {p0}, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occurred in getBody() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "POBRequestBuilder"

    invoke-static {v3, v1, v2}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method public getCurrencyJson()Lorg/json/JSONArray;
    .locals 2

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const-string v1, "USD"

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    return-object v0
.end method

.method public getDeviceObject()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->f:Lcom/pubmatic/sdk/common/models/POBDeviceInfo;

    if-eqz v1, :cond_3

    const-string v1, "geo"

    :try_start_0
    invoke-direct {p0}, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->b()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "pxratio"

    :try_start_1
    iget-object v2, p0, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->f:Lcom/pubmatic/sdk/common/models/POBDeviceInfo;

    invoke-virtual {v2}, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->getPxratio()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v1, "mccmnc"

    :try_start_2
    iget-object v2, p0, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->f:Lcom/pubmatic/sdk/common/models/POBDeviceInfo;

    invoke-virtual {v2}, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->getMccmnc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->f:Lcom/pubmatic/sdk/common/models/POBDeviceInfo;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->getLmtEnabled()Ljava/lang/Boolean;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v1, :cond_0

    const-string v1, "lmt"

    :try_start_3
    iget-object v2, p0, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->f:Lcom/pubmatic/sdk/common/models/POBDeviceInfo;

    invoke-virtual {v2}, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->getLmtEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->f:Lcom/pubmatic/sdk/common/models/POBDeviceInfo;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->getAdvertisingID()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getSdkConfig()Lcom/pubmatic/sdk/common/POBSDKConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pubmatic/sdk/common/POBSDKConfig;->isAllowAdvertisingId()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    const-string v2, "ifa"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getNetworkMonitor(Landroid/content/Context;)Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;->getConnectionType()Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v2, "connectiontype"

    :try_start_4
    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;->getValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string v1, "carrier"

    :try_start_5
    iget-object v2, p0, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->f:Lcom/pubmatic/sdk/common/models/POBDeviceInfo;

    invoke-virtual {v2}, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->getCarrierName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->addParamToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "js"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const-string v1, "ua"

    :try_start_6
    iget-object v2, p0, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->f:Lcom/pubmatic/sdk/common/models/POBDeviceInfo;

    invoke-virtual {v2}, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    const-string v1, "make"

    :try_start_7
    iget-object v2, p0, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->f:Lcom/pubmatic/sdk/common/models/POBDeviceInfo;

    invoke-virtual {v2}, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->getMake()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    const-string v1, "model"

    :try_start_8
    iget-object v2, p0, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->f:Lcom/pubmatic/sdk/common/models/POBDeviceInfo;

    invoke-virtual {v2}, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    const-string v1, "os"

    :try_start_9
    iget-object v2, p0, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->f:Lcom/pubmatic/sdk/common/models/POBDeviceInfo;

    invoke-virtual {v2}, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->getOsName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    const-string v1, "osv"

    :try_start_a
    iget-object v2, p0, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->f:Lcom/pubmatic/sdk/common/models/POBDeviceInfo;

    invoke-virtual {v2}, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->getOsVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    const-string v1, "h"

    :try_start_b
    iget-object v2, p0, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->f:Lcom/pubmatic/sdk/common/models/POBDeviceInfo;

    invoke-virtual {v2}, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->getScreenHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    const-string v1, "w"

    :try_start_c
    iget-object v2, p0, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->f:Lcom/pubmatic/sdk/common/models/POBDeviceInfo;

    invoke-virtual {v2}, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->getScreenWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    const-string v1, "language"

    :try_start_d
    iget-object v2, p0, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->f:Lcom/pubmatic/sdk/common/models/POBDeviceInfo;

    invoke-virtual {v2}, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->getAcceptLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/pubmatic/sdk/common/utility/POBUtils;->isTablet(Landroid/content/Context;)Z

    move-result v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    const-string v2, "devicetype"

    if-eqz v1, :cond_2

    const/4 v1, 0x5

    :try_start_e
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occurred in getDeviceObject() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "POBRequestBuilder"

    invoke-static {v3, v1, v2}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-object v0
.end method

.method public getRegsJson()Lorg/json/JSONObject;
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getSdkConfig()Lcom/pubmatic/sdk/common/POBSDKConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/POBSDKConfig;->isCoppa()Ljava/lang/Boolean;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const-string v1, "coppa"

    :try_start_1
    invoke-static {}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getSdkConfig()Lcom/pubmatic/sdk/common/POBSDKConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pubmatic/sdk/common/POBSDKConfig;->isCoppa()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    invoke-static {}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getSdkConfig()Lcom/pubmatic/sdk/common/POBSDKConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/POBSDKConfig;->isGdprEnabled()Ljava/lang/Boolean;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v1, :cond_1

    const-string v3, "gdpr"

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_1
    invoke-static {}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getSdkConfig()Lcom/pubmatic/sdk/common/POBSDKConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/POBSDKConfig;->getCCPA()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pubmatic/sdk/common/utility/POBUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->c:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-static {v1}, Lcom/pubmatic/sdk/common/utility/POBUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "us_privacy"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "ext"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_4
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception occurred in getRegsJson() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "POBRequestBuilder"

    invoke-static {v2, v0, v1}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public prepareHttpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/pubmatic/sdk/common/network/POBHttpRequest;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    const-string v1, "x-openrtb-version"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance p3, Lcom/pubmatic/sdk/common/network/POBHttpRequest;

    invoke-direct {p3}, Lcom/pubmatic/sdk/common/network/POBHttpRequest;-><init>()V

    sget-object v1, Lcom/pubmatic/sdk/common/network/POBHttpRequest$HTTP_METHOD;->POST:Lcom/pubmatic/sdk/common/network/POBHttpRequest$HTTP_METHOD;

    invoke-virtual {p3, v1}, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->setRequestMethod(Lcom/pubmatic/sdk/common/network/POBHttpRequest$HTTP_METHOD;)V

    invoke-virtual {p3, p2}, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->setPostData(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->setUrl(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->b:Lcom/pubmatic/sdk/openwrap/core/POBRequest;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/openwrap/core/POBRequest;->getNetworkTimeout()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    invoke-virtual {p3, p1}, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->setTimeout(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->setRequestTag(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->setHeaders(Ljava/util/Map;)V

    return-object p3
.end method

.method public setAppInfo(Lcom/pubmatic/sdk/common/models/POBAppInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->g:Lcom/pubmatic/sdk/common/models/POBAppInfo;

    return-void
.end method

.method public setDeviceInfo(Lcom/pubmatic/sdk/common/models/POBDeviceInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->f:Lcom/pubmatic/sdk/common/models/POBDeviceInfo;

    return-void
.end method

.method public setLocationDetector(Lcom/pubmatic/sdk/common/utility/POBLocationDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/core/POBRequestBuilder;->e:Lcom/pubmatic/sdk/common/utility/POBLocationDetector;

    return-void
.end method
