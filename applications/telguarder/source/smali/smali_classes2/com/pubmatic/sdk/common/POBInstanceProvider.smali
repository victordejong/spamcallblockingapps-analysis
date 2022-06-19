.class public Lcom/pubmatic/sdk/common/POBInstanceProvider;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile a:Lcom/pubmatic/sdk/common/models/POBDeviceInfo;

.field private static volatile b:Lcom/pubmatic/sdk/common/models/POBAppInfo;

.field private static volatile c:Lcom/pubmatic/sdk/common/utility/POBLocationDetector;

.field private static volatile d:Lcom/pubmatic/sdk/common/network/POBNetworkHandler;

.field private static volatile e:Lcom/pubmatic/sdk/common/POBSDKConfig;

.field private static volatile f:Lcom/pubmatic/sdk/common/cache/POBCacheManager;

.field private static g:Lcom/pubmatic/sdk/common/base/POBBiddingPartnerService;

.field private static volatile h:Lcom/pubmatic/sdk/common/network/POBTrackerHandler;

.field private static volatile i:Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;

.field private static volatile j:Lcom/pubmatic/sdk/common/cache/POBAdViewCacheService;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "POBInstanceProvider"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "com.pubmatic.sdk.monitor.POBMonitor"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "load"

    :try_start_1
    new-array v6, v3, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    :try_start_2
    const-string v4, "com.pubmatic.sdk.fanbidder.POBFANHelper"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string v5, "init"

    :try_start_3
    new-array v6, v3, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    :try_start_4
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    const-string v4, "currentApplication"

    :try_start_5
    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "DEBUG"

    invoke-static {v1, v2}, Lcom/pubmatic/sdk/common/utility/POBUtils;->getBuildConfigValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->a(Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_2
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getNetworkHandler(Landroid/content/Context;)Lcom/pubmatic/sdk/common/network/POBNetworkHandler;

    move-result-object p0

    new-instance v0, Lcom/pubmatic/sdk/common/network/POBHttpRequest;

    invoke-direct {v0}, Lcom/pubmatic/sdk/common/network/POBHttpRequest;-><init>()V

    const-string v1, "https://repo.pubmatic.com/artifactory/public-repos/apis/android/ow-sdk/release.json"

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->setUrl(Ljava/lang/String;)V

    new-instance v1, Lcom/pubmatic/sdk/common/POBInstanceProvider$a;

    invoke-direct {v1}, Lcom/pubmatic/sdk/common/POBInstanceProvider$a;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/pubmatic/sdk/common/network/POBNetworkHandler;->sendJSONRequest(Lcom/pubmatic/sdk/common/network/POBHttpRequest;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkListener;)V

    return-void
.end method

.method public static getAdViewCacheService()Lcom/pubmatic/sdk/common/cache/POBAdViewCacheService;
    .locals 2

    sget-object v0, Lcom/pubmatic/sdk/common/POBInstanceProvider;->j:Lcom/pubmatic/sdk/common/cache/POBAdViewCacheService;

    if-nez v0, :cond_1

    const-class v0, Lcom/pubmatic/sdk/common/cache/POBAdViewCacheService;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/pubmatic/sdk/common/POBInstanceProvider;->j:Lcom/pubmatic/sdk/common/cache/POBAdViewCacheService;

    if-nez v1, :cond_0

    new-instance v1, Lcom/pubmatic/sdk/common/cache/POBAdViewCacheService;

    invoke-direct {v1}, Lcom/pubmatic/sdk/common/cache/POBAdViewCacheService;-><init>()V

    sput-object v1, Lcom/pubmatic/sdk/common/POBInstanceProvider;->j:Lcom/pubmatic/sdk/common/cache/POBAdViewCacheService;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/pubmatic/sdk/common/POBInstanceProvider;->j:Lcom/pubmatic/sdk/common/cache/POBAdViewCacheService;

    return-object v0
.end method

.method public static getAppInfo(Landroid/content/Context;)Lcom/pubmatic/sdk/common/models/POBAppInfo;
    .locals 2

    sget-object v0, Lcom/pubmatic/sdk/common/POBInstanceProvider;->b:Lcom/pubmatic/sdk/common/models/POBAppInfo;

    if-nez v0, :cond_1

    const-class v0, Lcom/pubmatic/sdk/common/models/POBAppInfo;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/pubmatic/sdk/common/POBInstanceProvider;->b:Lcom/pubmatic/sdk/common/models/POBAppInfo;

    if-nez v1, :cond_0

    new-instance v1, Lcom/pubmatic/sdk/common/models/POBAppInfo;

    invoke-direct {v1, p0}, Lcom/pubmatic/sdk/common/models/POBAppInfo;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/pubmatic/sdk/common/POBInstanceProvider;->b:Lcom/pubmatic/sdk/common/models/POBAppInfo;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/pubmatic/sdk/common/POBInstanceProvider;->b:Lcom/pubmatic/sdk/common/models/POBAppInfo;

    return-object p0
.end method

.method public static getCacheManager(Landroid/content/Context;)Lcom/pubmatic/sdk/common/cache/POBCacheManager;
    .locals 3

    sget-object v0, Lcom/pubmatic/sdk/common/POBInstanceProvider;->f:Lcom/pubmatic/sdk/common/cache/POBCacheManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/pubmatic/sdk/common/cache/POBCacheManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/pubmatic/sdk/common/POBInstanceProvider;->f:Lcom/pubmatic/sdk/common/cache/POBCacheManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/pubmatic/sdk/common/cache/POBCacheManager;

    invoke-static {p0}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getNetworkHandler(Landroid/content/Context;)Lcom/pubmatic/sdk/common/network/POBNetworkHandler;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/pubmatic/sdk/common/cache/POBCacheManager;-><init>(Landroid/content/Context;Lcom/pubmatic/sdk/common/network/POBNetworkHandler;)V

    sput-object v1, Lcom/pubmatic/sdk/common/POBInstanceProvider;->f:Lcom/pubmatic/sdk/common/cache/POBCacheManager;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/pubmatic/sdk/common/POBInstanceProvider;->f:Lcom/pubmatic/sdk/common/cache/POBCacheManager;

    return-object p0
.end method

.method public static getDeviceInfo(Landroid/content/Context;)Lcom/pubmatic/sdk/common/models/POBDeviceInfo;
    .locals 2

    sget-object v0, Lcom/pubmatic/sdk/common/POBInstanceProvider;->a:Lcom/pubmatic/sdk/common/models/POBDeviceInfo;

    if-nez v0, :cond_1

    const-class v0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/pubmatic/sdk/common/POBInstanceProvider;->a:Lcom/pubmatic/sdk/common/models/POBDeviceInfo;

    if-nez v1, :cond_0

    new-instance v1, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;

    invoke-direct {v1, p0}, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/pubmatic/sdk/common/POBInstanceProvider;->a:Lcom/pubmatic/sdk/common/models/POBDeviceInfo;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/pubmatic/sdk/common/POBInstanceProvider;->a:Lcom/pubmatic/sdk/common/models/POBDeviceInfo;

    return-object p0
.end method

.method public static getLocationDetector(Landroid/content/Context;)Lcom/pubmatic/sdk/common/utility/POBLocationDetector;
    .locals 3

    sget-object v0, Lcom/pubmatic/sdk/common/POBInstanceProvider;->c:Lcom/pubmatic/sdk/common/utility/POBLocationDetector;

    if-nez v0, :cond_1

    const-class v0, Lcom/pubmatic/sdk/common/utility/POBLocationDetector;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/pubmatic/sdk/common/POBInstanceProvider;->c:Lcom/pubmatic/sdk/common/utility/POBLocationDetector;

    if-nez v1, :cond_0

    new-instance v1, Lcom/pubmatic/sdk/common/utility/POBLocationDetector;

    invoke-direct {v1, p0}, Lcom/pubmatic/sdk/common/utility/POBLocationDetector;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/pubmatic/sdk/common/POBInstanceProvider;->c:Lcom/pubmatic/sdk/common/utility/POBLocationDetector;

    sget-object p0, Lcom/pubmatic/sdk/common/POBInstanceProvider;->c:Lcom/pubmatic/sdk/common/utility/POBLocationDetector;

    invoke-static {}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getSdkConfig()Lcom/pubmatic/sdk/common/POBSDKConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/POBSDKConfig;->getLocationDetectionDurationInMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/pubmatic/sdk/common/utility/POBLocationDetector;->setLocationUpdateIntervalInMs(J)V

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/pubmatic/sdk/common/POBInstanceProvider;->c:Lcom/pubmatic/sdk/common/utility/POBLocationDetector;

    return-object p0
.end method

.method public static getNetworkHandler(Landroid/content/Context;)Lcom/pubmatic/sdk/common/network/POBNetworkHandler;
    .locals 2

    sget-object v0, Lcom/pubmatic/sdk/common/POBInstanceProvider;->d:Lcom/pubmatic/sdk/common/network/POBNetworkHandler;

    if-nez v0, :cond_1

    const-class v0, Lcom/pubmatic/sdk/common/network/POBNetworkHandler;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/pubmatic/sdk/common/POBInstanceProvider;->d:Lcom/pubmatic/sdk/common/network/POBNetworkHandler;

    if-nez v1, :cond_0

    new-instance v1, Lcom/pubmatic/sdk/common/network/POBNetworkHandler;

    invoke-direct {v1, p0}, Lcom/pubmatic/sdk/common/network/POBNetworkHandler;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/pubmatic/sdk/common/POBInstanceProvider;->d:Lcom/pubmatic/sdk/common/network/POBNetworkHandler;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/pubmatic/sdk/common/POBInstanceProvider;->d:Lcom/pubmatic/sdk/common/network/POBNetworkHandler;

    return-object p0
.end method

.method public static getNetworkMonitor(Landroid/content/Context;)Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;
    .locals 2

    sget-object v0, Lcom/pubmatic/sdk/common/POBInstanceProvider;->i:Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;

    if-nez v0, :cond_1

    const-class v0, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/pubmatic/sdk/common/POBInstanceProvider;->i:Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;

    if-nez v1, :cond_0

    new-instance v1, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;

    invoke-direct {v1, p0}, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/pubmatic/sdk/common/POBInstanceProvider;->i:Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/pubmatic/sdk/common/POBInstanceProvider;->i:Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;

    return-object p0
.end method

.method public static getPartnerServices()Lcom/pubmatic/sdk/common/base/POBBiddingPartnerService;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/pubmatic/sdk/common/base/POBAdDescriptor;",
            ">()",
            "Lcom/pubmatic/sdk/common/base/POBBiddingPartnerService<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/pubmatic/sdk/common/POBInstanceProvider;->g:Lcom/pubmatic/sdk/common/base/POBBiddingPartnerService;

    return-object v0
.end method

.method public static getSdkConfig()Lcom/pubmatic/sdk/common/POBSDKConfig;
    .locals 2

    sget-object v0, Lcom/pubmatic/sdk/common/POBInstanceProvider;->e:Lcom/pubmatic/sdk/common/POBSDKConfig;

    if-nez v0, :cond_1

    const-class v0, Lcom/pubmatic/sdk/common/network/POBNetworkHandler;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/pubmatic/sdk/common/POBInstanceProvider;->e:Lcom/pubmatic/sdk/common/POBSDKConfig;

    if-nez v1, :cond_0

    new-instance v1, Lcom/pubmatic/sdk/common/POBSDKConfig;

    invoke-direct {v1}, Lcom/pubmatic/sdk/common/POBSDKConfig;-><init>()V

    sput-object v1, Lcom/pubmatic/sdk/common/POBInstanceProvider;->e:Lcom/pubmatic/sdk/common/POBSDKConfig;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/pubmatic/sdk/common/POBInstanceProvider;->e:Lcom/pubmatic/sdk/common/POBSDKConfig;

    return-object v0
.end method

.method public static getTrackerHandler(Lcom/pubmatic/sdk/common/network/POBNetworkHandler;)Lcom/pubmatic/sdk/common/network/POBTrackerHandler;
    .locals 2

    sget-object v0, Lcom/pubmatic/sdk/common/POBInstanceProvider;->h:Lcom/pubmatic/sdk/common/network/POBTrackerHandler;

    if-nez v0, :cond_1

    const-class v0, Lcom/pubmatic/sdk/common/network/POBTrackerHandler;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/pubmatic/sdk/common/POBInstanceProvider;->h:Lcom/pubmatic/sdk/common/network/POBTrackerHandler;

    if-nez v1, :cond_0

    new-instance v1, Lcom/pubmatic/sdk/common/network/POBTrackerHandler;

    invoke-direct {v1, p0}, Lcom/pubmatic/sdk/common/network/POBTrackerHandler;-><init>(Lcom/pubmatic/sdk/common/network/POBNetworkHandler;)V

    sput-object v1, Lcom/pubmatic/sdk/common/POBInstanceProvider;->h:Lcom/pubmatic/sdk/common/network/POBTrackerHandler;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/pubmatic/sdk/common/POBInstanceProvider;->h:Lcom/pubmatic/sdk/common/network/POBTrackerHandler;

    return-object p0
.end method

.method public static setPartnerServices(Lcom/pubmatic/sdk/common/base/POBBiddingPartnerService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pubmatic/sdk/common/base/POBBiddingPartnerService<",
            "+",
            "Lcom/pubmatic/sdk/common/base/POBAdDescriptor;",
            ">;)V"
        }
    .end annotation

    sput-object p0, Lcom/pubmatic/sdk/common/POBInstanceProvider;->g:Lcom/pubmatic/sdk/common/base/POBBiddingPartnerService;

    return-void
.end method
