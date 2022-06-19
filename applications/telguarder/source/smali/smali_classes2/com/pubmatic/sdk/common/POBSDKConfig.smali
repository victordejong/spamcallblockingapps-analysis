.class public Lcom/pubmatic/sdk/common/POBSDKConfig;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Z

.field private b:J

.field private c:Z

.field private d:Ljava/lang/Boolean;

.field private e:Lcom/pubmatic/sdk/common/models/POBLocation;

.field private f:Z

.field private g:Z

.field private h:Lcom/pubmatic/sdk/common/models/POBUserInfo;

.field private i:Lcom/pubmatic/sdk/common/models/POBApplicationInfo;

.field private j:Ljava/lang/Boolean;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pubmatic/sdk/common/POBSDKConfig;->a:Z

    const-wide/32 v1, 0x927c0

    iput-wide v1, p0, Lcom/pubmatic/sdk/common/POBSDKConfig;->b:J

    iput-boolean v0, p0, Lcom/pubmatic/sdk/common/POBSDKConfig;->c:Z

    iput-boolean v0, p0, Lcom/pubmatic/sdk/common/POBSDKConfig;->f:Z

    iput-boolean v0, p0, Lcom/pubmatic/sdk/common/POBSDKConfig;->g:Z

    return-void
.end method


# virtual methods
.method public allowAdvertisingId(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/pubmatic/sdk/common/POBSDKConfig;->g:Z

    return-void
.end method

.method public allowLocationAccess(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/pubmatic/sdk/common/POBSDKConfig;->a:Z

    return-void
.end method

.method public getApplicationInfo()Lcom/pubmatic/sdk/common/models/POBApplicationInfo;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/POBSDKConfig;->i:Lcom/pubmatic/sdk/common/models/POBApplicationInfo;

    return-object v0
.end method

.method public getCCPA()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/POBSDKConfig;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getGdprConsent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/POBSDKConfig;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getHtmlMeasurementProvider()Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.pubmatic.sdk.omsdk.POBHTMLMeasurement"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_0

    :catch_4
    move-exception v1

    goto :goto_0

    :catch_5
    move-exception v1

    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    const-string v0, "OMSDK"

    const-string v1, "%s"

    invoke-static {v0, v1, v2}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method public getLocation()Lcom/pubmatic/sdk/common/models/POBLocation;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/POBSDKConfig;->e:Lcom/pubmatic/sdk/common/models/POBLocation;

    return-object v0
.end method

.method public getLocationDetectionDurationInMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/pubmatic/sdk/common/POBSDKConfig;->b:J

    return-wide v0
.end method

.method public getUserInfo()Lcom/pubmatic/sdk/common/models/POBUserInfo;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/POBSDKConfig;->h:Lcom/pubmatic/sdk/common/models/POBUserInfo;

    return-object v0
.end method

.method public getVideoMeasurementProvider()Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.pubmatic.sdk.omsdk.POBVideoMeasurement"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_0

    :catch_4
    move-exception v1

    goto :goto_0

    :catch_5
    move-exception v1

    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    const-string v0, "OMSDK"

    const-string v1, "%s"

    invoke-static {v0, v1, v2}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method public isAllowAdvertisingId()Z
    .locals 1

    iget-boolean v0, p0, Lcom/pubmatic/sdk/common/POBSDKConfig;->g:Z

    return v0
.end method

.method public isCoppa()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/POBSDKConfig;->d:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isGdprEnabled()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/POBSDKConfig;->j:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isLocationAccessAllowed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/pubmatic/sdk/common/POBSDKConfig;->a:Z

    return v0
.end method

.method public isRequestSecureCreative()Z
    .locals 1

    iget-boolean v0, p0, Lcom/pubmatic/sdk/common/POBSDKConfig;->f:Z

    return v0
.end method

.method public isUseInternalBrowser()Z
    .locals 1

    iget-boolean v0, p0, Lcom/pubmatic/sdk/common/POBSDKConfig;->c:Z

    return v0
.end method

.method public setApplicationInfo(Lcom/pubmatic/sdk/common/models/POBApplicationInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/common/POBSDKConfig;->i:Lcom/pubmatic/sdk/common/models/POBApplicationInfo;

    return-void
.end method

.method public setCCPA(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/common/POBSDKConfig;->l:Ljava/lang/String;

    return-void
.end method

.method public setCoppa(Z)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/pubmatic/sdk/common/POBSDKConfig;->d:Ljava/lang/Boolean;

    return-void
.end method

.method public setGdprConsent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/common/POBSDKConfig;->k:Ljava/lang/String;

    return-void
.end method

.method public setGdprEnabled(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/common/POBSDKConfig;->j:Ljava/lang/Boolean;

    return-void
.end method

.method public setLocation(Lcom/pubmatic/sdk/common/models/POBLocation;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/common/POBSDKConfig;->e:Lcom/pubmatic/sdk/common/models/POBLocation;

    return-void
.end method

.method public setLocationDetectionDurationInMillis(J)V
    .locals 0

    iput-wide p1, p0, Lcom/pubmatic/sdk/common/POBSDKConfig;->b:J

    return-void
.end method

.method public setRequestSecureCreative(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/pubmatic/sdk/common/POBSDKConfig;->f:Z

    return-void
.end method

.method public setUseInternalBrowser(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/pubmatic/sdk/common/POBSDKConfig;->c:Z

    return-void
.end method

.method public setUserInfo(Lcom/pubmatic/sdk/common/models/POBUserInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/common/POBSDKConfig;->h:Lcom/pubmatic/sdk/common/models/POBUserInfo;

    return-void
.end method
