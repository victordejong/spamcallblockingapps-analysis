.class public final Lcom/mopub/network/Networking;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/mopub/network/Networking;

.field public static final a:Ljava/lang/String;

.field public static volatile b:Lcom/mopub/network/MoPubRequestQueue; = null

.field public static volatile c:Ljava/lang/String; = null

.field public static volatile d:Lcom/mopub/network/MaxWidthImageLoader; = null

.field public static e:Lcom/mopub/volley/toolbox/HurlStack$UrlRewriter; = null

# The value of this static final field might be set in the static constructor
.field public static final f:Ljava/lang/String; = "https"


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const-string v0, ""

    new-instance v1, Lcom/mopub/network/Networking;

    invoke-direct {v1}, Lcom/mopub/network/Networking;-><init>()V

    sput-object v1, Lcom/mopub/network/Networking;->INSTANCE:Lcom/mopub/network/Networking;

    :try_start_0
    const-string v1, "http.agent"

    invoke-static {v1, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Unable to get system user agent."

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_0

    move-object v0, v1

    :cond_0
    sput-object v0, Lcom/mopub/network/Networking;->a:Ljava/lang/String;

    const-string v0, "https"

    sput-object v0, Lcom/mopub/network/Networking;->f:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getMaxWidthImageLoader$p(Lcom/mopub/network/Networking;)Lcom/mopub/network/MaxWidthImageLoader;
    .locals 0

    sget-object p0, Lcom/mopub/network/Networking;->d:Lcom/mopub/network/MaxWidthImageLoader;

    return-object p0
.end method

.method public static final synthetic access$getRequestQueue$p()Lcom/mopub/network/MoPubRequestQueue;
    .locals 1

    sget-object v0, Lcom/mopub/network/Networking;->b:Lcom/mopub/network/MoPubRequestQueue;

    return-object v0
.end method

.method public static final synthetic access$setMaxWidthImageLoader$p(Lcom/mopub/network/Networking;Lcom/mopub/network/MaxWidthImageLoader;)V
    .locals 0

    sput-object p1, Lcom/mopub/network/Networking;->d:Lcom/mopub/network/MaxWidthImageLoader;

    return-void
.end method

.method public static final synthetic access$setRequestQueue$p(Lcom/mopub/network/MoPubRequestQueue;)V
    .locals 0

    sput-object p0, Lcom/mopub/network/Networking;->b:Lcom/mopub/network/MoPubRequestQueue;

    return-void
.end method

.method public static synthetic cachedUserAgent$annotations()V
    .locals 0

    return-void
.end method

.method public static final declared-synchronized clearForTesting()V
    .locals 2
    .annotation runtime Lcom/mopub/common/VisibleForTesting;
    .end annotation

    const-class v0, Lcom/mopub/network/Networking;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/mopub/network/Networking;->b:Lcom/mopub/network/MoPubRequestQueue;

    sput-object v1, Lcom/mopub/network/Networking;->d:Lcom/mopub/network/MaxWidthImageLoader;

    sput-object v1, Lcom/mopub/network/Networking;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static final getCachedUserAgent()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/mopub/network/Networking;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/mopub/network/Networking;->a:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public static final getImageLoader(Landroid/content/Context;)Lcom/mopub/network/MaxWidthImageLoader;
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lqk1;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/mopub/network/Networking;->d:Lcom/mopub/network/MaxWidthImageLoader;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-class v0, Lcom/mopub/network/Networking;

    invoke-static {v0}, Lsk1;->a(Ljava/lang/Class;)Lal1;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/mopub/network/Networking;->d:Lcom/mopub/network/MaxWidthImageLoader;

    if-eqz v1, :cond_1

    move-object p0, v1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/mopub/network/Networking$getImageLoader$$inlined$synchronized$lambda$1;

    invoke-direct {v1, p0}, Lcom/mopub/network/Networking$getImageLoader$$inlined$synchronized$lambda$1;-><init>(Landroid/content/Context;)V

    invoke-interface {v1}, Lik1;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mopub/network/MaxWidthImageLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    move-object v0, p0

    :goto_1
    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final getRequestQueue()Lcom/mopub/network/MoPubRequestQueue;
    .locals 1

    sget-object v0, Lcom/mopub/network/Networking;->b:Lcom/mopub/network/MoPubRequestQueue;

    return-object v0
.end method

.method public static final getRequestQueue(Landroid/content/Context;)Lcom/mopub/network/MoPubRequestQueue;
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lqk1;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/mopub/network/Networking;->b:Lcom/mopub/network/MoPubRequestQueue;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-class v0, Lcom/mopub/network/Networking;

    invoke-static {v0}, Lsk1;->a(Ljava/lang/Class;)Lal1;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/mopub/network/Networking;->b:Lcom/mopub/network/MoPubRequestQueue;

    if-eqz v1, :cond_1

    move-object p0, v1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/mopub/network/Networking$a;

    invoke-direct {v1, p0}, Lcom/mopub/network/Networking$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v1}, Lik1;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mopub/network/MoPubRequestQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    move-object v0, p0

    :goto_1
    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final getScheme()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/mopub/network/Networking;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static final getUrlRewriter()Lcom/mopub/volley/toolbox/HurlStack$UrlRewriter;
    .locals 1

    sget-object v0, Lcom/mopub/network/Networking;->e:Lcom/mopub/volley/toolbox/HurlStack$UrlRewriter;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/mopub/network/PlayServicesUrlRewriter;

    invoke-direct {v0}, Lcom/mopub/network/PlayServicesUrlRewriter;-><init>()V

    sput-object v0, Lcom/mopub/network/Networking;->e:Lcom/mopub/volley/toolbox/HurlStack$UrlRewriter;

    :goto_0
    return-object v0
.end method

.method public static final getUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, "context"

    invoke-static {p0, v0}, Lqk1;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/mopub/network/Networking;->c:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-nez v3, :cond_2

    return-object v0

    :cond_2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {v0, v3}, Lqk1;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_3

    sget-object p0, Lcom/mopub/network/Networking;->a:Ljava/lang/String;

    return-object p0

    :cond_3
    sget-object v0, Lcom/mopub/network/Networking;->a:Ljava/lang/String;

    :try_start_0
    invoke-static {p0}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "WebSettings.getDefaultUserAgent(context)"

    invoke-static {p0, v3}, Lqk1;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_2

    :catch_0
    sget-object p0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Failed to get a user agent. Defaulting to the system user agent."

    aput-object v3, v2, v1

    invoke-static {p0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :goto_2
    sput-object v0, Lcom/mopub/network/Networking;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic requestQueue$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic scheme$annotations()V
    .locals 0

    return-void
.end method

.method public static final declared-synchronized setImageLoaderForTesting(Lcom/mopub/network/MaxWidthImageLoader;)V
    .locals 1
    .annotation runtime Lcom/mopub/common/VisibleForTesting;
    .end annotation

    const-class v0, Lcom/mopub/network/Networking;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/mopub/network/Networking;->d:Lcom/mopub/network/MaxWidthImageLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final declared-synchronized setRequestQueueForTesting(Lcom/mopub/network/MoPubRequestQueue;)V
    .locals 1
    .annotation runtime Lcom/mopub/common/VisibleForTesting;
    .end annotation

    const-class v0, Lcom/mopub/network/Networking;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/mopub/network/Networking;->b:Lcom/mopub/network/MoPubRequestQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final declared-synchronized setUserAgentForTesting(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/mopub/common/VisibleForTesting;
    .end annotation

    const-class v0, Lcom/mopub/network/Networking;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/mopub/network/Networking;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
