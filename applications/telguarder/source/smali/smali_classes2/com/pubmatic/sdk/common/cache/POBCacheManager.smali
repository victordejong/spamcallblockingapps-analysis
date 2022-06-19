.class public Lcom/pubmatic/sdk/common/cache/POBCacheManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubmatic/sdk/common/cache/POBCacheManager$POBPartnerConfigListener;,
        Lcom/pubmatic/sdk/common/cache/POBCacheManager$POBProfileConfigListener;
    }
.end annotation


# instance fields
.field private a:Z

.field private final b:Landroid/content/Context;

.field private final c:Lcom/pubmatic/sdk/common/network/POBNetworkHandler;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/pubmatic/sdk/common/models/POBProfileInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/pubmatic/sdk/common/network/POBNetworkHandler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pubmatic/sdk/common/cache/POBCacheManager;->a:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/pubmatic/sdk/common/cache/POBCacheManager;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/pubmatic/sdk/common/cache/POBCacheManager;->c:Lcom/pubmatic/sdk/common/network/POBNetworkHandler;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/pubmatic/sdk/common/cache/POBCacheManager;->d:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/pubmatic/sdk/common/cache/POBCacheManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/common/cache/POBCacheManager;->b:Landroid/content/Context;

    return-object p0
.end method

.method private a(ILjava/lang/Integer;)Ljava/lang/String;
    .locals 1

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;ILjava/lang/Integer;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p3, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v0

    aput-object p3, v4, v2

    const-string p1, "https://ads.pubmatic.com/AdServer/js/pwt/%s/%d/%d/config.json"

    invoke-static {v3, p1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    const-string p1, "https://ads.pubmatic.com/AdServer/js/pwt/%s/%d/config.json"

    invoke-static {p3, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private a(Lcom/pubmatic/sdk/common/POBError;Ljava/lang/String;Lcom/pubmatic/sdk/common/cache/POBCacheManager$POBProfileConfigListener;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/POBError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "PMCacheManager"

    const-string v2, "Failed to fetch config with error: %s"

    invoke-static {v1, v2, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/POBError;->getErrorCode()I

    move-result v0

    const/16 v1, 0x3eb

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/common/cache/POBCacheManager;->d:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3, p1}, Lcom/pubmatic/sdk/common/cache/POBCacheManager$POBProfileConfigListener;->onError(Lcom/pubmatic/sdk/common/POBError;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/pubmatic/sdk/common/cache/POBCacheManager;Lcom/pubmatic/sdk/common/POBError;Ljava/lang/String;Lcom/pubmatic/sdk/common/cache/POBCacheManager$POBProfileConfigListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/pubmatic/sdk/common/cache/POBCacheManager;->a(Lcom/pubmatic/sdk/common/POBError;Ljava/lang/String;Lcom/pubmatic/sdk/common/cache/POBCacheManager$POBProfileConfigListener;)V

    return-void
.end method

.method static synthetic a(Lcom/pubmatic/sdk/common/cache/POBCacheManager;Ljava/lang/String;Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBScriptListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/pubmatic/sdk/common/cache/POBCacheManager;->a(Ljava/lang/String;Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBScriptListener;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBScriptListener;)V
    .locals 1

    new-instance v0, Lcom/pubmatic/sdk/common/cache/POBCacheManager$c;

    invoke-direct {v0, p0, p2, p1}, Lcom/pubmatic/sdk/common/cache/POBCacheManager$c;-><init>(Lcom/pubmatic/sdk/common/cache/POBCacheManager;Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBScriptListener;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/pubmatic/sdk/common/utility/POBUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcom/pubmatic/sdk/common/cache/POBCacheManager;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/common/cache/POBCacheManager;->d:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method a(Ljava/lang/String;ILjava/lang/Integer;Lcom/pubmatic/sdk/common/cache/POBCacheManager$POBProfileConfigListener;)V
    .locals 2

    invoke-direct {p0, p2, p3}, Lcom/pubmatic/sdk/common/cache/POBCacheManager;->a(ILjava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/common/cache/POBCacheManager;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/pubmatic/sdk/common/cache/POBCacheManager;->d:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pubmatic/sdk/common/models/POBProfileInfo;

    invoke-virtual {p4, p1}, Lcom/pubmatic/sdk/common/cache/POBCacheManager$POBProfileConfigListener;->onSuccess(Lcom/pubmatic/sdk/common/models/POBProfileInfo;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/pubmatic/sdk/common/cache/POBCacheManager;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance p1, Lcom/pubmatic/sdk/common/POBError;

    const/16 p2, 0x3eb

    const-string p3, "No network available"

    invoke-direct {p1, p2, p3}, Lcom/pubmatic/sdk/common/POBError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, p1, v0, p4}, Lcom/pubmatic/sdk/common/cache/POBCacheManager;->a(Lcom/pubmatic/sdk/common/POBError;Ljava/lang/String;Lcom/pubmatic/sdk/common/cache/POBCacheManager$POBProfileConfigListener;)V

    return-void

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/pubmatic/sdk/common/cache/POBCacheManager;->a(Ljava/lang/String;ILjava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/pubmatic/sdk/common/network/POBHttpRequest;

    invoke-direct {p2}, Lcom/pubmatic/sdk/common/network/POBHttpRequest;-><init>()V

    invoke-virtual {p2, p1}, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->setUrl(Ljava/lang/String;)V

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, p3, v1

    const-string p1, "PMCacheManager"

    const-string v1, "Requesting profile config with url - : %s"

    invoke-static {p1, v1, p3}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 p1, 0x3e8

    invoke-virtual {p2, p1}, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->setTimeout(I)V

    iget-object p1, p0, Lcom/pubmatic/sdk/common/cache/POBCacheManager;->c:Lcom/pubmatic/sdk/common/network/POBNetworkHandler;

    new-instance p3, Lcom/pubmatic/sdk/common/cache/POBCacheManager$e;

    invoke-direct {p3, p0, v0, p4}, Lcom/pubmatic/sdk/common/cache/POBCacheManager$e;-><init>(Lcom/pubmatic/sdk/common/cache/POBCacheManager;Ljava/lang/String;Lcom/pubmatic/sdk/common/cache/POBCacheManager$POBProfileConfigListener;)V

    invoke-virtual {p1, p2, p3}, Lcom/pubmatic/sdk/common/network/POBNetworkHandler;->sendRequest(Lcom/pubmatic/sdk/common/network/POBHttpRequest;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkListener;)V

    return-void
.end method

.method public requestPartnerConfiguration(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;[Lcom/pubmatic/sdk/common/POBAdSize;Lcom/pubmatic/sdk/common/cache/POBCacheManager$POBPartnerConfigListener;)V
    .locals 7

    new-instance v6, Lcom/pubmatic/sdk/common/cache/POBCacheManager$d;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/pubmatic/sdk/common/cache/POBCacheManager$d;-><init>(Lcom/pubmatic/sdk/common/cache/POBCacheManager;Ljava/lang/String;[Lcom/pubmatic/sdk/common/POBAdSize;Lcom/pubmatic/sdk/common/cache/POBCacheManager$POBPartnerConfigListener;I)V

    invoke-virtual {p0, p1, p2, p3, v6}, Lcom/pubmatic/sdk/common/cache/POBCacheManager;->a(Ljava/lang/String;ILjava/lang/Integer;Lcom/pubmatic/sdk/common/cache/POBCacheManager$POBProfileConfigListener;)V

    return-void
.end method

.method public declared-synchronized requestServiceScript(Ljava/lang/String;Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBScriptListener;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/pubmatic/sdk/common/cache/POBCacheManager;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pubmatic/sdk/common/cache/POBCacheManager;->a:Z

    new-instance v0, Lcom/pubmatic/sdk/common/network/POBHttpRequest;

    invoke-direct {v0}, Lcom/pubmatic/sdk/common/network/POBHttpRequest;-><init>()V

    invoke-virtual {v0, p1}, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->setUrl(Ljava/lang/String;)V

    const/16 p1, 0x3e8

    invoke-virtual {v0, p1}, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->setTimeout(I)V

    iget-object p1, p0, Lcom/pubmatic/sdk/common/cache/POBCacheManager;->c:Lcom/pubmatic/sdk/common/network/POBNetworkHandler;

    new-instance v1, Lcom/pubmatic/sdk/common/cache/POBCacheManager$a;

    invoke-direct {v1, p0, p2}, Lcom/pubmatic/sdk/common/cache/POBCacheManager$a;-><init>(Lcom/pubmatic/sdk/common/cache/POBCacheManager;Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBScriptListener;)V

    invoke-virtual {p1, v0, v1}, Lcom/pubmatic/sdk/common/network/POBNetworkHandler;->sendRequest(Lcom/pubmatic/sdk/common/network/POBHttpRequest;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkListener;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/pubmatic/sdk/common/cache/POBCacheManager$b;

    invoke-direct {p1, p0, p2}, Lcom/pubmatic/sdk/common/cache/POBCacheManager$b;-><init>(Lcom/pubmatic/sdk/common/cache/POBCacheManager;Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBScriptListener;)V

    invoke-static {p1}, Lcom/pubmatic/sdk/common/utility/POBUtils;->runOnBackgroundThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
