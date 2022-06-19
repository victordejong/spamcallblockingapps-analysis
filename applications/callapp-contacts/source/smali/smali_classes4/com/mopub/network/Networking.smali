.class public final Lcom/mopub/network/Networking;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0019\u001a\u00020\u001aH\u0007J\u0010\u0010\u001b\u001a\u00020\u000c2\u0006\u0010\u001c\u001a\u00020\u001dH\u0007J\u0010\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u001dH\u0007J\u0008\u0010\u001e\u001a\u00020\u0017H\u0007J\u0010\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u001dH\u0007J\u0012\u0010 \u001a\u00020\u001a2\u0008\u0010!\u001a\u0004\u0018\u00010\u000cH\u0007J\u0012\u0010\"\u001a\u00020\u001a2\u0008\u0010#\u001a\u0004\u0018\u00010\u000eH\u0007J\u0012\u0010$\u001a\u00020\u001a2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0004H\u0007R\u0016\u0010\u0003\u001a\u00020\u00048\u0002X\u0083T\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0005\u0010\u0002R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u00020\u00048FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0008\u0010\u0002\u001a\u0004\u0008\t\u0010\nR\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R*\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006@BX\u0087\u000e\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0010\u0010\u0002\u001a\u0004\u0008\u0011\u0010\u0012R\u001c\u0010\u0013\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0014\u0010\u0002\u001a\u0004\u0008\u0015\u0010\nR\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lcom/mopub/network/Networking;",
        "",
        "()V",
        "CACHE_DIRECTORY_NAME",
        "",
        "CACHE_DIRECTORY_NAME$annotations",
        "DEFAULT_USER_AGENT",
        "cachedUserAgent",
        "cachedUserAgent$annotations",
        "getCachedUserAgent",
        "()Ljava/lang/String;",
        "maxWidthImageLoader",
        "Lcom/mopub/network/MaxWidthImageLoader;",
        "<set-?>",
        "Lcom/mopub/network/MoPubRequestQueue;",
        "requestQueue",
        "requestQueue$annotations",
        "getRequestQueue",
        "()Lcom/mopub/network/MoPubRequestQueue;",
        "scheme",
        "scheme$annotations",
        "getScheme",
        "urlRewriter",
        "Lcom/mopub/volley/toolbox/HurlStack$UrlRewriter;",
        "userAgent",
        "clearForTesting",
        "",
        "getImageLoader",
        "context",
        "Landroid/content/Context;",
        "getUrlRewriter",
        "getUserAgent",
        "setImageLoaderForTesting",
        "imageLoader",
        "setRequestQueueForTesting",
        "queue",
        "setUserAgentForTesting",
        "mopub-sdk-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/mopub/network/Networking;

.field private static final a:Ljava/lang/String;

.field private static volatile b:Lcom/mopub/network/MoPubRequestQueue; = null

.field private static volatile c:Ljava/lang/String; = null

.field private static volatile d:Lcom/mopub/network/MaxWidthImageLoader; = null

.field private static e:Lcom/mopub/volley/toolbox/HurlStack$UrlRewriter; = null

# The value of this static final field might be set in the static constructor
.field private static final f:Ljava/lang/String; = "https"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, ""

    .line 27
    new-instance v1, Lcom/mopub/network/Networking;

    invoke-direct {v1}, Lcom/mopub/network/Networking;-><init>()V

    sput-object v1, Lcom/mopub/network/Networking;->INSTANCE:Lcom/mopub/network/Networking;

    :try_start_0
    const-string v1, "http.agent"

    .line 35
    invoke-static {v1, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 37
    :catch_0
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    check-cast v1, Lcom/mopub/common/logging/MoPubLog$MPLogEventType;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Unable to get system user agent."

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    move-object v1, v0

    :goto_0
    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    move-object v0, v1

    .line 39
    :goto_1
    sput-object v0, Lcom/mopub/network/Networking;->a:Ljava/lang/String;

    const-string v0, "https"

    .line 71
    sput-object v0, Lcom/mopub/network/Networking;->f:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getMaxWidthImageLoader$p(Lcom/mopub/network/Networking;)Lcom/mopub/network/MaxWidthImageLoader;
    .locals 0

    .line 27
    sget-object p0, Lcom/mopub/network/Networking;->d:Lcom/mopub/network/MaxWidthImageLoader;

    return-object p0
.end method

.method public static final synthetic access$getRequestQueue$p()Lcom/mopub/network/MoPubRequestQueue;
    .locals 1

    .line 27
    sget-object v0, Lcom/mopub/network/Networking;->b:Lcom/mopub/network/MoPubRequestQueue;

    return-object v0
.end method

.method public static final synthetic access$setMaxWidthImageLoader$p(Lcom/mopub/network/Networking;Lcom/mopub/network/MaxWidthImageLoader;)V
    .locals 0

    .line 27
    sput-object p1, Lcom/mopub/network/Networking;->d:Lcom/mopub/network/MaxWidthImageLoader;

    return-void
.end method

.method public static final synthetic access$setRequestQueue$p(Lcom/mopub/network/MoPubRequestQueue;)V
    .locals 0

    .line 27
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

    .line 168
    :try_start_0
    sput-object v1, Lcom/mopub/network/Networking;->b:Lcom/mopub/network/MoPubRequestQueue;

    .line 169
    sput-object v1, Lcom/mopub/network/Networking;->d:Lcom/mopub/network/MaxWidthImageLoader;

    .line 170
    sput-object v1, Lcom/mopub/network/Networking;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static final getCachedUserAgent()Ljava/lang/String;
    .locals 1

    .line 63
    sget-object v0, Lcom/mopub/network/Networking;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/mopub/network/Networking;->a:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public static final getImageLoader(Landroid/content/Context;)Lcom/mopub/network/MaxWidthImageLoader;
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    sget-object v0, Lcom/mopub/network/Networking;->d:Lcom/mopub/network/MaxWidthImageLoader;

    if-nez v0, :cond_1

    const-class v0, Lcom/mopub/network/Networking;

    invoke-static {v0}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v0

    monitor-enter v0

    .line 109
    :try_start_0
    sget-object v1, Lcom/mopub/network/Networking;->d:Lcom/mopub/network/MaxWidthImageLoader;

    if-nez v1, :cond_0

    new-instance v1, Lcom/mopub/network/Networking$a;

    invoke-direct {v1, p0}, Lcom/mopub/network/Networking$a;-><init>(Landroid/content/Context;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/mopub/network/MaxWidthImageLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_1
    return-object v0
.end method

.method public static final getRequestQueue()Lcom/mopub/network/MoPubRequestQueue;
    .locals 1

    .line 47
    sget-object v0, Lcom/mopub/network/Networking;->b:Lcom/mopub/network/MoPubRequestQueue;

    return-object v0
.end method

.method public static final getRequestQueue(Landroid/content/Context;)Lcom/mopub/network/MoPubRequestQueue;
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    sget-object v0, Lcom/mopub/network/Networking;->b:Lcom/mopub/network/MoPubRequestQueue;

    if-nez v0, :cond_1

    const-class v0, Lcom/mopub/network/Networking;

    invoke-static {v0}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v0

    monitor-enter v0

    .line 83
    :try_start_0
    sget-object v1, Lcom/mopub/network/Networking;->b:Lcom/mopub/network/MoPubRequestQueue;

    if-nez v1, :cond_0

    new-instance v1, Lcom/mopub/network/Networking$b;

    invoke-direct {v1, p0}, Lcom/mopub/network/Networking$b;-><init>(Landroid/content/Context;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/mopub/network/MoPubRequestQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_1
    return-object v0
.end method

.method public static final getScheme()Ljava/lang/String;
    .locals 1

    .line 71
    sget-object v0, Lcom/mopub/network/Networking;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static final getUrlRewriter()Lcom/mopub/volley/toolbox/HurlStack$UrlRewriter;
    .locals 1

    .line 75
    sget-object v0, Lcom/mopub/network/Networking;->e:Lcom/mopub/volley/toolbox/HurlStack$UrlRewriter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mopub/network/PlayServicesUrlRewriter;

    invoke-direct {v0}, Lcom/mopub/network/PlayServicesUrlRewriter;-><init>()V

    .line 76
    check-cast v0, Lcom/mopub/volley/toolbox/HurlStack$UrlRewriter;

    sput-object v0, Lcom/mopub/network/Networking;->e:Lcom/mopub/volley/toolbox/HurlStack$UrlRewriter;

    :cond_0
    return-object v0
.end method

.method public static final getUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    sget-object v0, Lcom/mopub/network/Networking;->c:Ljava/lang/String;

    .line 137
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_2

    return-object v0

    .line 143
    :cond_2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v3

    if-eqz v0, :cond_3

    .line 147
    sget-object p0, Lcom/mopub/network/Networking;->a:Ljava/lang/String;

    return-object p0

    .line 152
    :cond_3
    sget-object v0, Lcom/mopub/network/Networking;->a:Ljava/lang/String;

    .line 154
    :try_start_0
    invoke-static {p0}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "WebSettings.getDefaultUserAgent(context)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_2

    .line 156
    :catch_0
    sget-object p0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    check-cast p0, Lcom/mopub/common/logging/MoPubLog$MPLogEventType;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v3, "Failed to get a user agent. Defaulting to the system user agent."

    aput-object v3, v1, v2

    invoke-static {p0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 160
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

    .line 184
    :try_start_0
    sput-object p0, Lcom/mopub/network/Networking;->d:Lcom/mopub/network/MaxWidthImageLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
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

    .line 177
    :try_start_0
    sput-object p0, Lcom/mopub/network/Networking;->b:Lcom/mopub/network/MoPubRequestQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
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

    .line 191
    :try_start_0
    sput-object p0, Lcom/mopub/network/Networking;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
