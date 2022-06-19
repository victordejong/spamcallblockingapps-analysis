.class public Lcom/mopub/common/MoPub;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/MoPub$AnalyticsEventsListener;,
        Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;,
        Lcom/mopub/common/MoPub$a;,
        Lcom/mopub/common/MoPub$BrowserAgent;,
        Lcom/mopub/common/MoPub$LocationAwareness;
    }
.end annotation


# static fields
.field public static final ANALYTICS_MOPUB_TAG:Ljava/lang/String; = "mopub"

.field public static final SDK_VERSION:Ljava/lang/String; = "5.16.4"

.field private static volatile a:Lcom/mopub/common/MoPub$BrowserAgent;

.field public static analyticsEventsListener:Lcom/mopub/common/MoPub$AnalyticsEventsListener;

.field private static volatile b:Z

.field private static c:Z

.field private static d:Ljava/lang/reflect/Method;

.field private static e:Z

.field private static f:Z

.field private static g:Lcom/mopub/common/AdapterConfigurationManager;

.field private static h:Lcom/mopub/common/privacy/PersonalInfoManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    sget-object v0, Lcom/mopub/common/MoPub$BrowserAgent;->IN_APP:Lcom/mopub/common/MoPub$BrowserAgent;

    sput-object v0, Lcom/mopub/common/MoPub;->a:Lcom/mopub/common/MoPub$BrowserAgent;

    const/4 v0, 0x0

    .line 82
    sput-boolean v0, Lcom/mopub/common/MoPub;->b:Z

    .line 83
    sput-boolean v0, Lcom/mopub/common/MoPub;->c:Z

    .line 85
    sput-boolean v0, Lcom/mopub/common/MoPub;->e:Z

    .line 86
    sput-boolean v0, Lcom/mopub/common/MoPub;->f:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/mopub/common/AdapterConfigurationManager;
    .locals 1

    .line 40
    sget-object v0, Lcom/mopub/common/MoPub;->g:Lcom/mopub/common/AdapterConfigurationManager;

    return-object v0
.end method

.method static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 283
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 285
    sget-object v0, Lcom/mopub/common/MoPub;->g:Lcom/mopub/common/AdapterConfigurationManager;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 288
    :cond_0
    invoke-virtual {v0, p0}, Lcom/mopub/common/AdapterConfigurationManager;->getTokensAsJsonString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/app/Activity;)V
    .locals 7

    const-string v0, "Error while attempting to access the update activity method - this should not have happened"

    .line 426
    sget-boolean v1, Lcom/mopub/common/MoPub;->c:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 427
    sput-boolean v3, Lcom/mopub/common/MoPub;->c:Z

    :try_start_0
    const-string v1, "com.mopub.mobileads.MoPubRewardedAdManager"

    .line 429
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v4, "updateActivity"

    new-array v5, v3, [Ljava/lang/Class;

    .line 431
    const-class v6, Landroid/app/Activity;

    aput-object v6, v5, v2

    invoke-static {v1, v4, v5}, Lcom/mopub/common/util/Reflection;->getDeclaredMethodWithTraversal(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/mopub/common/MoPub;->d:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 440
    :cond_0
    :goto_0
    sget-object v1, Lcom/mopub/common/MoPub;->d:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    const/4 v4, 0x0

    const/4 v5, 0x2

    :try_start_1
    new-array v6, v3, [Ljava/lang/Object;

    aput-object p0, v6, v2

    .line 442
    invoke-virtual {v1, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p0

    .line 447
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->ERROR_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v0, v4, v2

    aput-object p0, v4, v3

    invoke-static {v1, v4}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    goto :goto_1

    :catch_2
    move-exception p0

    .line 444
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->ERROR_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v0, v4, v2

    aput-object p0, v4, v3

    invoke-static {v1, v4}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :cond_1
    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/mopub/common/SdkInitializationListener;)V
    .locals 0

    .line 40
    invoke-static {p0}, Lcom/mopub/common/MoPub;->b(Lcom/mopub/common/SdkInitializationListener;)V

    return-void
.end method

.method private static b(Lcom/mopub/common/SdkInitializationListener;)V
    .locals 2

    const/4 v0, 0x0

    .line 393
    sput-boolean v0, Lcom/mopub/common/MoPub;->f:Z

    const/4 v0, 0x1

    .line 394
    sput-boolean v0, Lcom/mopub/common/MoPub;->e:Z

    .line 395
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/mopub/common/MoPub$1;

    invoke-direct {v1, p0}, Lcom/mopub/common/MoPub$1;-><init>(Lcom/mopub/common/SdkInitializationListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static canCollectPersonalInformation()Z
    .locals 1

    .line 257
    sget-object v0, Lcom/mopub/common/MoPub;->h:Lcom/mopub/common/privacy/PersonalInfoManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->canCollectPersonalInformation()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static disableViewability()V
    .locals 0

    .line 353
    invoke-static {}, Lcom/mopub/common/ViewabilityManager;->c()V

    return-void
.end method

.method public static disableViewability(Lcom/mopub/common/ExternalViewabilitySessionManager$ViewabilityVendor;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 361
    invoke-static {}, Lcom/mopub/common/ViewabilityManager;->c()V

    return-void
.end method

.method public static getAdapterConfigurationInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 366
    sget-object v0, Lcom/mopub/common/MoPub;->g:Lcom/mopub/common/AdapterConfigurationManager;

    if-eqz v0, :cond_0

    .line 368
    invoke-virtual {v0}, Lcom/mopub/common/AdapterConfigurationManager;->getAdapterConfigurationInfo()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getBrowserAgent()Lcom/mopub/common/MoPub$BrowserAgent;
    .locals 1

    .line 143
    sget-object v0, Lcom/mopub/common/MoPub;->a:Lcom/mopub/common/MoPub$BrowserAgent;

    invoke-static {v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 145
    sget-object v0, Lcom/mopub/common/MoPub;->a:Lcom/mopub/common/MoPub$BrowserAgent;

    return-object v0
.end method

.method public static getLocationAwareness()Lcom/mopub/common/MoPub$LocationAwareness;
    .locals 1

    .line 93
    invoke-static {}, Lcom/mopub/common/LocationService;->a()Lcom/mopub/common/LocationService;

    move-result-object v0

    .line 1117
    iget-object v0, v0, Lcom/mopub/common/LocationService;->c:Lcom/mopub/common/MoPub$LocationAwareness;

    return-object v0
.end method

.method public static getLocationPrecision()I
    .locals 1

    .line 103
    invoke-static {}, Lcom/mopub/common/LocationService;->a()Lcom/mopub/common/LocationService;

    move-result-object v0

    .line 1127
    iget v0, v0, Lcom/mopub/common/LocationService;->d:I

    return v0
.end method

.method public static getMinimumLocationRefreshTimeMillis()J
    .locals 2

    .line 120
    invoke-static {}, Lcom/mopub/common/LocationService;->a()Lcom/mopub/common/LocationService;

    move-result-object v0

    .line 1144
    iget-wide v0, v0, Lcom/mopub/common/LocationService;->e:J

    return-wide v0
.end method

.method public static getPersonalInformationManager()Lcom/mopub/common/privacy/PersonalInfoManager;
    .locals 1

    .line 298
    sget-object v0, Lcom/mopub/common/MoPub;->h:Lcom/mopub/common/privacy/PersonalInfoManager;

    return-object v0
.end method

.method public static getPublisherRevenue(Lcom/mopub/network/AdResponse;Ljava/util/Map;Landroid/os/Bundle;)D
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/network/AdResponse;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/os/Bundle;",
            ")D"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 511
    invoke-virtual {p0}, Lcom/mopub/network/AdResponse;->getImpressionData()Lcom/mopub/network/ImpressionData;

    move-result-object v0

    .line 512
    invoke-virtual {p0}, Lcom/mopub/network/AdResponse;->getImpressionTrackingUrls()Ljava/util/List;

    move-result-object v1

    .line 513
    invoke-virtual {p0}, Lcom/mopub/network/AdResponse;->getClickTrackingUrls()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    move-object v1, p0

    .line 516
    :goto_0
    invoke-static {v0, v1, p0, p1, p2}, Lcom/mopub/common/MoPub;->getPublisherRevenue(Lcom/mopub/network/ImpressionData;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Map;Landroid/os/Bundle;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static getPublisherRevenue(Lcom/mopub/network/ImpressionData;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Map;Landroid/os/Bundle;)D
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/network/ImpressionData;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/os/Bundle;",
            ")D"
        }
    .end annotation

    const-wide v0, 0x408f400000000000L    # 1000.0

    const-wide/16 v2, 0x0

    if-eqz p0, :cond_0

    .line 523
    invoke-virtual {p0}, Lcom/mopub/network/ImpressionData;->getPublisherRevenue()Ljava/lang/Double;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 525
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    mul-double v4, v4, v0

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    cmpg-double p0, v4, v2

    if-gtz p0, :cond_7

    const-string p0, "charge_price"

    if-eqz p1, :cond_3

    .line 531
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 532
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-wide v6, v2

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 533
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    if-eqz v8, :cond_1

    const-string v9, "rev"

    .line 535
    invoke-virtual {v8, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 536
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 538
    :try_start_0
    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    cmpl-double v9, v4, v2

    if-lez v9, :cond_2

    mul-double v4, v4, v0

    goto :goto_2

    :catch_0
    nop

    :cond_2
    cmpg-double v9, v6, v2

    if-gtz v9, :cond_1

    .line 548
    invoke-virtual {v8, p0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 549
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 551
    :try_start_1
    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    nop

    goto :goto_1

    :cond_3
    move-wide v6, v2

    :cond_4
    :goto_2
    cmpg-double p1, v4, v2

    if-gtz p1, :cond_6

    cmpg-double v0, v6, v2

    if-gtz v0, :cond_6

    if-eqz p2, :cond_6

    .line 561
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 562
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 563
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 565
    invoke-virtual {v0, p0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 566
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 568
    :try_start_2
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    cmpl-double v0, v6, v2

    if-lez v0, :cond_5

    goto :goto_4

    :catch_2
    nop

    goto :goto_3

    :cond_6
    :goto_4
    if-gtz p1, :cond_7

    const-wide/high16 p0, 0x3fe8000000000000L    # 0.75

    mul-double v4, v6, p0

    :cond_7
    const-string p0, "callapp_floor_price"

    cmpg-double p1, v4, v2

    if-gtz p1, :cond_8

    if-eqz p3, :cond_8

    .line 587
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 588
    instance-of p2, p1, Ljava/lang/Double;

    if-eqz p2, :cond_8

    .line 589
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    :cond_8
    cmpg-double p1, v4, v2

    if-gtz p1, :cond_9

    if-eqz p4, :cond_9

    .line 596
    invoke-virtual {p4, p0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    :cond_9
    return-wide v4
.end method

.method public static initializeSdk(Landroid/content/Context;Lcom/mopub/common/SdkConfiguration;Lcom/mopub/common/SdkInitializationListener;)V
    .locals 8

    const-string v0, "initializeRewardedAds was called without the fullscreen module"

    .line 185
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 186
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 188
    invoke-virtual {p1}, Lcom/mopub/common/SdkConfiguration;->getLogLevel()Lcom/mopub/common/logging/MoPubLog$LogLevel;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->setLogLevel(Lcom/mopub/common/logging/MoPubLog$LogLevel;)V

    .line 190
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->INIT_STARTED:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 191
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SDK initialize has been called with ad unit: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mopub/common/SdkConfiguration;->getAdUnitId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 192
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 194
    sget-object v4, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v5, v3, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " was built with target SDK version of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-static {v4, v5}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 198
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/common/ViewabilityManager;->activate(Landroid/content/Context;)V

    .line 200
    instance-of v1, p0, Landroid/app/Activity;

    const/4 v4, 0x2

    if-eqz v1, :cond_1

    .line 201
    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    .line 1374
    invoke-static {v1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 1375
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 1378
    :try_start_0
    new-instance v5, Lcom/mopub/common/util/Reflection$MethodBuilder;

    const/4 v6, 0x0

    const-string v7, "initializeRewardedAds"

    invoke-direct {v5, v6, v7}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "com.mopub.mobileads.MoPubRewardedAds"

    .line 1379
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mopub/common/util/Reflection$MethodBuilder;->setStatic(Ljava/lang/Class;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v5

    .line 1380
    invoke-virtual {v5}, Lcom/mopub/common/util/Reflection$MethodBuilder;->setAccessible()Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v5

    const-class v6, Landroid/app/Activity;

    .line 1381
    invoke-virtual {v5, v6, v1}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v1

    const-class v5, Lcom/mopub/common/SdkConfiguration;

    .line 1382
    invoke-virtual {v1, v5, p1}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1388
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->ERROR_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "Error while initializing rewarded ads"

    aput-object v6, v5, v2

    aput-object v0, v5, v3

    invoke-static {v1, v5}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1386
    :catch_1
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-static {v1, v5}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1384
    :catch_2
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-static {v1, v5}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 205
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/mopub/common/MoPub;->e:Z

    if-eqz v0, :cond_2

    .line 206
    sget-object p0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array p1, v3, [Ljava/lang/Object;

    const-string v0, "MoPub SDK is already initialized"

    aput-object v0, p1, v2

    invoke-static {p0, p1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 207
    invoke-static {p2}, Lcom/mopub/common/MoPub;->b(Lcom/mopub/common/SdkInitializationListener;)V

    return-void

    .line 210
    :cond_2
    sget-boolean v0, Lcom/mopub/common/MoPub;->f:Z

    if-eqz v0, :cond_3

    .line 211
    sget-object p0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array p1, v3, [Ljava/lang/Object;

    const-string p2, "MoPub SDK is currently initializing."

    aput-object p2, p1, v2

    invoke-static {p0, p1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 215
    :cond_3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_4

    .line 216
    sget-object p0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array p1, v3, [Ljava/lang/Object;

    const-string p2, "MoPub can only be initialized on the main thread."

    aput-object p2, p1, v2

    invoke-static {p0, p1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 220
    :cond_4
    sput-boolean v3, Lcom/mopub/common/MoPub;->f:Z

    .line 223
    invoke-static {p0}, Lcom/mopub/network/Networking;->getRequestQueue(Landroid/content/Context;)Lcom/mopub/network/MoPubRequestQueue;

    .line 225
    new-instance v0, Lcom/mopub/common/MoPub$a;

    invoke-direct {v0, p2}, Lcom/mopub/common/MoPub$a;-><init>(Lcom/mopub/common/SdkInitializationListener;)V

    .line 228
    new-instance p2, Lcom/mopub/common/b;

    invoke-direct {p2, v0, v4}, Lcom/mopub/common/b;-><init>(Lcom/mopub/common/SdkInitializationListener;I)V

    .line 231
    new-instance v0, Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-virtual {p1}, Lcom/mopub/common/SdkConfiguration;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lcom/mopub/common/privacy/PersonalInfoManager;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/common/SdkInitializationListener;)V

    .line 233
    sput-object v0, Lcom/mopub/common/MoPub;->h:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-virtual {p1}, Lcom/mopub/common/SdkConfiguration;->getLegitimateInterestAllowed()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mopub/common/privacy/PersonalInfoManager;->setAllowLegitimateInterest(Z)V

    .line 235
    invoke-static {p0}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    .line 237
    new-instance v0, Lcom/mopub/common/AdapterConfigurationManager;

    invoke-direct {v0, p2}, Lcom/mopub/common/AdapterConfigurationManager;-><init>(Lcom/mopub/common/SdkInitializationListener;)V

    .line 238
    sput-object v0, Lcom/mopub/common/MoPub;->g:Lcom/mopub/common/AdapterConfigurationManager;

    .line 239
    invoke-virtual {p1}, Lcom/mopub/common/SdkConfiguration;->getAdapterConfigurationClasses()Ljava/util/Set;

    move-result-object p2

    .line 240
    invoke-virtual {p1}, Lcom/mopub/common/SdkConfiguration;->getMediatedNetworkConfigurations()Ljava/util/Map;

    move-result-object v1

    .line 241
    invoke-virtual {p1}, Lcom/mopub/common/SdkConfiguration;->getMoPubRequestOptions()Ljava/util/Map;

    move-result-object p1

    .line 238
    invoke-virtual {v0, p0, p2, v1, p1}, Lcom/mopub/common/AdapterConfigurationManager;->initialize(Landroid/content/Context;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public static isSdkInitialized()Z
    .locals 1

    .line 248
    sget-boolean v0, Lcom/mopub/common/MoPub;->e:Z

    return v0
.end method

.method public static onBackPressed(Landroid/app/Activity;)V
    .locals 1

    .line 348
    invoke-static {p0}, Lcom/mopub/common/MoPubLifecycleManager;->getInstance(Landroid/app/Activity;)Lcom/mopub/common/MoPubLifecycleManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mopub/common/MoPubLifecycleManager;->onBackPressed(Landroid/app/Activity;)V

    return-void
.end method

.method public static onCreate(Landroid/app/Activity;)V
    .locals 1

    .line 316
    invoke-static {p0}, Lcom/mopub/common/MoPubLifecycleManager;->getInstance(Landroid/app/Activity;)Lcom/mopub/common/MoPubLifecycleManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mopub/common/MoPubLifecycleManager;->onCreate(Landroid/app/Activity;)V

    .line 317
    invoke-static {p0}, Lcom/mopub/common/MoPub;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public static onDestroy(Landroid/app/Activity;)V
    .locals 1

    .line 344
    invoke-static {p0}, Lcom/mopub/common/MoPubLifecycleManager;->getInstance(Landroid/app/Activity;)Lcom/mopub/common/MoPubLifecycleManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mopub/common/MoPubLifecycleManager;->onDestroy(Landroid/app/Activity;)V

    return-void
.end method

.method public static onPause(Landroid/app/Activity;)V
    .locals 1

    .line 326
    invoke-static {p0}, Lcom/mopub/common/MoPubLifecycleManager;->getInstance(Landroid/app/Activity;)Lcom/mopub/common/MoPubLifecycleManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mopub/common/MoPubLifecycleManager;->onPause(Landroid/app/Activity;)V

    return-void
.end method

.method public static onRestart(Landroid/app/Activity;)V
    .locals 1

    .line 335
    invoke-static {p0}, Lcom/mopub/common/MoPubLifecycleManager;->getInstance(Landroid/app/Activity;)Lcom/mopub/common/MoPubLifecycleManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mopub/common/MoPubLifecycleManager;->onRestart(Landroid/app/Activity;)V

    .line 336
    invoke-static {p0}, Lcom/mopub/common/MoPub;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public static onResume(Landroid/app/Activity;)V
    .locals 1

    .line 330
    invoke-static {p0}, Lcom/mopub/common/MoPubLifecycleManager;->getInstance(Landroid/app/Activity;)Lcom/mopub/common/MoPubLifecycleManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mopub/common/MoPubLifecycleManager;->onResume(Landroid/app/Activity;)V

    .line 331
    invoke-static {p0}, Lcom/mopub/common/MoPub;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public static onStart(Landroid/app/Activity;)V
    .locals 1

    .line 321
    invoke-static {p0}, Lcom/mopub/common/MoPubLifecycleManager;->getInstance(Landroid/app/Activity;)Lcom/mopub/common/MoPubLifecycleManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mopub/common/MoPubLifecycleManager;->onStart(Landroid/app/Activity;)V

    .line 322
    invoke-static {p0}, Lcom/mopub/common/MoPub;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public static onStop(Landroid/app/Activity;)V
    .locals 1

    .line 340
    invoke-static {p0}, Lcom/mopub/common/MoPubLifecycleManager;->getInstance(Landroid/app/Activity;)Lcom/mopub/common/MoPubLifecycleManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mopub/common/MoPubLifecycleManager;->onStop(Landroid/app/Activity;)V

    return-void
.end method

.method public static registerAdAnalyticsListener(Lcom/mopub/common/MoPub$AnalyticsEventsListener;)V
    .locals 0

    .line 503
    sput-object p0, Lcom/mopub/common/MoPub;->analyticsEventsListener:Lcom/mopub/common/MoPub$AnalyticsEventsListener;

    return-void
.end method

.method public static resetBrowserAgent()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 309
    sget-object v0, Lcom/mopub/common/MoPub$BrowserAgent;->IN_APP:Lcom/mopub/common/MoPub$BrowserAgent;

    sput-object v0, Lcom/mopub/common/MoPub;->a:Lcom/mopub/common/MoPub$BrowserAgent;

    const/4 v0, 0x0

    .line 310
    sput-boolean v0, Lcom/mopub/common/MoPub;->b:Z

    return-void
.end method

.method public static setAllowLegitimateInterest(Z)V
    .locals 1

    .line 267
    sget-object v0, Lcom/mopub/common/MoPub;->h:Lcom/mopub/common/privacy/PersonalInfoManager;

    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {v0, p0}, Lcom/mopub/common/privacy/PersonalInfoManager;->setAllowLegitimateInterest(Z)V

    :cond_0
    return-void
.end method

.method public static setBrowserAgent(Lcom/mopub/common/MoPub$BrowserAgent;)V
    .locals 0

    .line 124
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 126
    sput-object p0, Lcom/mopub/common/MoPub;->a:Lcom/mopub/common/MoPub$BrowserAgent;

    const/4 p0, 0x1

    .line 127
    sput-boolean p0, Lcom/mopub/common/MoPub;->b:Z

    return-void
.end method

.method public static setBrowserAgentFromAdServer(Lcom/mopub/common/MoPub$BrowserAgent;)V
    .locals 4

    .line 132
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 134
    sget-boolean v0, Lcom/mopub/common/MoPub;->b:Z

    if-eqz v0, :cond_0

    .line 135
    sget-object p0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Browser agent already overridden by client with value "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/mopub/common/MoPub;->a:Lcom/mopub/common/MoPub$BrowserAgent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 137
    :cond_0
    sput-object p0, Lcom/mopub/common/MoPub;->a:Lcom/mopub/common/MoPub$BrowserAgent;

    return-void
.end method

.method public static setEngineInformation(Lcom/mopub/common/AppEngineInfo;)V
    .locals 1

    .line 154
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 156
    iget-object v0, p0, Lcom/mopub/common/AppEngineInfo;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mopub/common/AppEngineInfo;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    invoke-static {p0}, Lcom/mopub/common/BaseUrlGenerator;->setAppEngineInfo(Lcom/mopub/common/AppEngineInfo;)V

    :cond_0
    return-void
.end method

.method public static setLocationAwareness(Lcom/mopub/common/MoPub$LocationAwareness;)V
    .locals 1

    .line 97
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 99
    invoke-static {}, Lcom/mopub/common/LocationService;->a()Lcom/mopub/common/LocationService;

    move-result-object v0

    .line 1121
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 1123
    iput-object p0, v0, Lcom/mopub/common/LocationService;->c:Lcom/mopub/common/MoPub$LocationAwareness;

    return-void
.end method

.method public static setLocationPrecision(I)V
    .locals 2

    .line 111
    invoke-static {}, Lcom/mopub/common/LocationService;->a()Lcom/mopub/common/LocationService;

    move-result-object v0

    const/4 v1, 0x0

    .line 1135
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 v1, 0x6

    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    iput p0, v0, Lcom/mopub/common/LocationService;->d:I

    return-void
.end method

.method public static setMinimumLocationRefreshTimeMillis(J)V
    .locals 1

    .line 116
    invoke-static {}, Lcom/mopub/common/LocationService;->a()Lcom/mopub/common/LocationService;

    move-result-object v0

    .line 1140
    iput-wide p0, v0, Lcom/mopub/common/LocationService;->e:J

    return-void
.end method

.method public static setWrapperVersion(Ljava/lang/String;)V
    .locals 0

    .line 167
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 169
    invoke-static {p0}, Lcom/mopub/common/BaseUrlGenerator;->setWrapperVersion(Ljava/lang/String;)V

    return-void
.end method

.method public static shouldAllowLegitimateInterest()Z
    .locals 1

    .line 278
    sget-object v0, Lcom/mopub/common/MoPub;->h:Lcom/mopub/common/privacy/PersonalInfoManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->shouldAllowLegitimateInterest()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
