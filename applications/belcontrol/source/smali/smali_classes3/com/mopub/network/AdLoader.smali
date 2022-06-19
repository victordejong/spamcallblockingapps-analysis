.class public Lcom/mopub/network/AdLoader;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/network/AdLoader$Listener;
    }
.end annotation


# instance fields
.field public final a:Lcom/mopub/network/MultiAdRequest$Listener;

.field public final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/mopub/network/AdLoader$Listener;

.field public d:Lcom/mopub/network/MultiAdRequest;

.field public e:Lcom/mopub/network/MultiAdResponse;

.field public final f:Ljava/lang/Object;

.field public g:Lcom/mopub/network/AdResponse;

.field public h:Lfi1;

.field public volatile i:Z

.field public volatile j:Z

.field public k:Z

.field public l:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/mopub/common/AdFormat;Ljava/lang/String;Landroid/content/Context;Lcom/mopub/network/AdLoader$Listener;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mopub/network/AdLoader;->f:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/network/AdLoader;->g:Lcom/mopub/network/AdResponse;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/mopub/common/Preconditions;->checkArgument(Z)V

    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p4}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p5}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mopub/network/AdLoader;->b:Ljava/lang/ref/WeakReference;

    iput-object p5, p0, Lcom/mopub/network/AdLoader;->c:Lcom/mopub/network/AdLoader$Listener;

    new-instance p5, Landroid/os/Handler;

    invoke-direct {p5}, Landroid/os/Handler;-><init>()V

    iput-object p5, p0, Lcom/mopub/network/AdLoader;->l:Landroid/os/Handler;

    new-instance v5, Lcom/mopub/network/AdLoader$a;

    invoke-direct {v5, p0}, Lcom/mopub/network/AdLoader$a;-><init>(Lcom/mopub/network/AdLoader;)V

    iput-object v5, p0, Lcom/mopub/network/AdLoader;->a:Lcom/mopub/network/MultiAdRequest$Listener;

    const/4 p5, 0x0

    iput-boolean p5, p0, Lcom/mopub/network/AdLoader;->i:Z

    iput-boolean p5, p0, Lcom/mopub/network/AdLoader;->j:Z

    new-instance p5, Lcom/mopub/network/MultiAdRequest;

    move-object v0, p5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/mopub/network/MultiAdRequest;-><init>(Ljava/lang/String;Lcom/mopub/common/AdFormat;Ljava/lang/String;Landroid/content/Context;Lcom/mopub/network/MultiAdRequest$Listener;)V

    iput-object p5, p0, Lcom/mopub/network/AdLoader;->d:Lcom/mopub/network/MultiAdRequest;

    return-void
.end method

.method public static synthetic a(Lcom/mopub/network/AdLoader;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mopub/network/AdLoader;->j:Z

    return p1
.end method

.method public static synthetic b(Lcom/mopub/network/AdLoader;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mopub/network/AdLoader;->i:Z

    return p1
.end method

.method public static synthetic c(Lcom/mopub/network/AdLoader;Lcom/mopub/volley/VolleyError;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/mopub/network/AdLoader;->g(Lcom/mopub/volley/VolleyError;)V

    return-void
.end method

.method public static synthetic d(Lcom/mopub/network/AdLoader;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/mopub/network/AdLoader;->f:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic e(Lcom/mopub/network/AdLoader;Lcom/mopub/network/AdResponse;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/mopub/network/AdLoader;->h(Lcom/mopub/network/AdResponse;)V

    return-void
.end method


# virtual methods
.method public creativeDownloadSuccess()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/network/AdLoader;->k:Z

    iget-object v1, p0, Lcom/mopub/network/AdLoader;->h:Lfi1;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "Response analytics should not be null here"

    aput-object v3, v0, v2

    invoke-static {v1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/mopub/network/AdLoader;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/mopub/network/AdLoader;->g:Lcom/mopub/network/AdResponse;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mopub/network/AdLoader;->h:Lfi1;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lfi1;->c(Landroid/content/Context;Lcom/mopub/mobileads/MoPubError;)V

    iget-object v0, p0, Lcom/mopub/network/AdLoader;->h:Lfi1;

    invoke-virtual {v0, v1}, Lfi1;->e(Landroid/content/Context;)V

    return-void

    :cond_2
    :goto_0
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "Cannot send \'x-after-load-url\' analytics."

    aput-object v3, v0, v2

    invoke-static {v1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method

.method public final f(Lcom/mopub/mobileads/MoPubError;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Must provide error code to report creative download error"

    aput-object v2, v1, v0

    invoke-static {p1, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/mopub/network/AdLoader;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/mopub/network/AdLoader;->g:Lcom/mopub/network/AdResponse;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mopub/network/AdLoader;->h:Lfi1;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2, p1}, Lfi1;->c(Landroid/content/Context;Lcom/mopub/mobileads/MoPubError;)V

    iget-object v0, p0, Lcom/mopub/network/AdLoader;->h:Lfi1;

    invoke-virtual {v0, v2, p1}, Lfi1;->d(Landroid/content/Context;Lcom/mopub/mobileads/MoPubError;)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Cannot send creative mFailed analytics."

    aput-object v2, v1, v0

    invoke-static {p1, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method

.method public final g(Lcom/mopub/volley/VolleyError;)V
    .locals 4

    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/network/AdLoader;->g:Lcom/mopub/network/AdResponse;

    iget-object v0, p0, Lcom/mopub/network/AdLoader;->c:Lcom/mopub/network/AdLoader$Listener;

    if-eqz v0, :cond_1

    instance-of v1, p1, Lcom/mopub/network/MoPubNetworkError;

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Lcom/mopub/network/AdLoader$Listener;->onErrorResponse(Lcom/mopub/volley/VolleyError;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/mopub/network/MoPubNetworkError;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    sget-object v3, Lcom/mopub/network/MoPubNetworkError$Reason;->UNSPECIFIED:Lcom/mopub/network/MoPubNetworkError$Reason;

    invoke-direct {v1, v2, p1, v3}, Lcom/mopub/network/MoPubNetworkError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/mopub/network/MoPubNetworkError$Reason;)V

    invoke-interface {v0, v1}, Lcom/mopub/network/AdLoader$Listener;->onErrorResponse(Lcom/mopub/volley/VolleyError;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final h(Lcom/mopub/network/AdResponse;)V
    .locals 2

    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/mopub/network/AdLoader;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    new-instance v1, Lfi1;

    invoke-direct {v1, p1}, Lfi1;-><init>(Lcom/mopub/network/AdResponse;)V

    iput-object v1, p0, Lcom/mopub/network/AdLoader;->h:Lfi1;

    invoke-virtual {v1, v0}, Lfi1;->f(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/mopub/network/AdLoader;->c:Lcom/mopub/network/AdLoader$Listener;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/mopub/network/AdLoader;->g:Lcom/mopub/network/AdResponse;

    invoke-interface {v0, p1}, Lcom/mopub/network/AdLoader$Listener;->onSuccess(Lcom/mopub/network/AdResponse;)V

    :cond_0
    return-void
.end method

.method public hasMoreAds()Z
    .locals 3

    iget-boolean v0, p0, Lcom/mopub/network/AdLoader;->j:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/mopub/network/AdLoader;->k:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/mopub/network/AdLoader;->e:Lcom/mopub/network/MultiAdResponse;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/mopub/network/MultiAdResponse;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/mopub/network/MultiAdResponse;->d()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public final i(Lcom/mopub/network/MultiAdRequest;Landroid/content/Context;)Lcom/mopub/volley/Request;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/network/MultiAdRequest;",
            "Landroid/content/Context;",
            ")",
            "Lcom/mopub/volley/Request<",
            "*>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/mopub/network/MoPubRequest;->getBody()[B

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/mopub/network/MoPubRequest;->getBody()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :cond_1
    const-string v0, "<no body>"

    :goto_0
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->REQUESTED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/mopub/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    iput-boolean v3, p0, Lcom/mopub/network/AdLoader;->i:Z

    invoke-static {p2}, Lcom/mopub/network/Networking;->getRequestQueue(Landroid/content/Context;)Lcom/mopub/network/MoPubRequestQueue;

    move-result-object p2

    iput-object p1, p0, Lcom/mopub/network/AdLoader;->d:Lcom/mopub/network/MultiAdRequest;

    invoke-virtual {p2, p1}, Lcom/mopub/volley/RequestQueue;->add(Lcom/mopub/volley/Request;)Lcom/mopub/volley/Request;

    return-object p1
.end method

.method public isFailed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mopub/network/AdLoader;->j:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mopub/network/AdLoader;->i:Z

    return v0
.end method

.method public loadNextAd(Lcom/mopub/mobileads/MoPubError;)Lcom/mopub/volley/Request;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/mobileads/MoPubError;",
            ")",
            "Lcom/mopub/volley/Request<",
            "*>;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/mopub/network/AdLoader;->i:Z

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/mopub/network/AdLoader;->d:Lcom/mopub/network/MultiAdRequest;

    return-object p1

    :cond_0
    iget-boolean v0, p0, Lcom/mopub/network/AdLoader;->j:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/mopub/network/AdLoader;->l:Landroid/os/Handler;

    new-instance v0, Lcom/mopub/network/AdLoader$b;

    invoke-direct {v0, p0}, Lcom/mopub/network/AdLoader$b;-><init>(Lcom/mopub/network/AdLoader;)V

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/mopub/network/AdLoader;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/mopub/network/AdLoader;->e:Lcom/mopub/network/MultiAdResponse;

    if-nez v2, :cond_3

    invoke-static {}, Lcom/mopub/network/RequestRateTracker;->getInstance()Lcom/mopub/network/RequestRateTracker;

    move-result-object p1

    iget-object v2, p0, Lcom/mopub/network/AdLoader;->d:Lcom/mopub/network/MultiAdRequest;

    iget-object v2, v2, Lcom/mopub/network/MultiAdRequest;->v:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/mopub/network/RequestRateTracker;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/mopub/network/AdLoader;->d:Lcom/mopub/network/MultiAdRequest;

    iget-object v6, v6, Lcom/mopub/network/MultiAdRequest;->v:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is blocked by request rate limiting."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p1, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    iput-boolean v2, p0, Lcom/mopub/network/AdLoader;->j:Z

    iget-object p1, p0, Lcom/mopub/network/AdLoader;->l:Landroid/os/Handler;

    new-instance v2, Lcom/mopub/network/AdLoader$c;

    invoke-direct {v2, p0}, Lcom/mopub/network/AdLoader$c;-><init>(Lcom/mopub/network/AdLoader;)V

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v0

    return-object v1

    :cond_2
    iget-object p1, p0, Lcom/mopub/network/AdLoader;->d:Lcom/mopub/network/MultiAdRequest;

    iget-object v1, p0, Lcom/mopub/network/AdLoader;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {p0, p1, v1}, Lcom/mopub/network/AdLoader;->i(Lcom/mopub/network/MultiAdRequest;Landroid/content/Context;)Lcom/mopub/volley/Request;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p0, p1}, Lcom/mopub/network/AdLoader;->f(Lcom/mopub/mobileads/MoPubError;)V

    :cond_4
    iget-object p1, p0, Lcom/mopub/network/AdLoader;->e:Lcom/mopub/network/MultiAdResponse;

    invoke-virtual {p1}, Lcom/mopub/network/MultiAdResponse;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/mopub/network/AdLoader;->e:Lcom/mopub/network/MultiAdResponse;

    invoke-virtual {p1}, Lcom/mopub/network/MultiAdResponse;->next()Lcom/mopub/network/AdResponse;

    move-result-object p1

    iget-object v1, p0, Lcom/mopub/network/AdLoader;->l:Landroid/os/Handler;

    new-instance v2, Lcom/mopub/network/AdLoader$d;

    invoke-direct {v2, p0, p1}, Lcom/mopub/network/AdLoader$d;-><init>(Lcom/mopub/network/AdLoader;Lcom/mopub/network/AdResponse;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/mopub/network/AdLoader;->d:Lcom/mopub/network/MultiAdRequest;

    monitor-exit v0

    return-object p1

    :cond_5
    iget-object p1, p0, Lcom/mopub/network/AdLoader;->e:Lcom/mopub/network/MultiAdResponse;

    invoke-virtual {p1}, Lcom/mopub/network/MultiAdResponse;->d()Z

    move-result p1

    if-nez p1, :cond_6

    new-instance p1, Lcom/mopub/network/MultiAdRequest;

    iget-object v1, p0, Lcom/mopub/network/AdLoader;->e:Lcom/mopub/network/MultiAdResponse;

    invoke-virtual {v1}, Lcom/mopub/network/MultiAdResponse;->getFailURL()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/mopub/network/AdLoader;->d:Lcom/mopub/network/MultiAdRequest;

    iget-object v4, v1, Lcom/mopub/network/MultiAdRequest;->u:Lcom/mopub/common/AdFormat;

    iget-object v5, v1, Lcom/mopub/network/MultiAdRequest;->v:Ljava/lang/String;

    iget-object v1, p0, Lcom/mopub/network/AdLoader;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/content/Context;

    iget-object v7, p0, Lcom/mopub/network/AdLoader;->a:Lcom/mopub/network/MultiAdRequest$Listener;

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/mopub/network/MultiAdRequest;-><init>(Ljava/lang/String;Lcom/mopub/common/AdFormat;Ljava/lang/String;Landroid/content/Context;Lcom/mopub/network/MultiAdRequest$Listener;)V

    iput-object p1, p0, Lcom/mopub/network/AdLoader;->d:Lcom/mopub/network/MultiAdRequest;

    iget-object v1, p0, Lcom/mopub/network/AdLoader;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {p0, p1, v1}, Lcom/mopub/network/AdLoader;->i(Lcom/mopub/network/MultiAdRequest;Landroid/content/Context;)Lcom/mopub/volley/Request;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/mopub/network/AdLoader;->l:Landroid/os/Handler;

    new-instance v0, Lcom/mopub/network/AdLoader$e;

    invoke-direct {v0, p0}, Lcom/mopub/network/AdLoader$e;-><init>(Lcom/mopub/network/AdLoader;)V

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
