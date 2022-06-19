.class public Lcom/mopub/network/AdLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/network/AdLoader$Listener;
    }
.end annotation


# instance fields
.field protected a:Lcom/mopub/network/MultiAdResponse;

.field protected b:Lcom/mopub/network/AdResponse;

.field private final c:Lcom/mopub/network/MultiAdRequest$Listener;

.field private final d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/mopub/network/AdLoader$Listener;

.field private f:Lcom/mopub/network/MultiAdRequest;

.field private final g:Ljava/lang/Object;

.field private h:Lcom/mopub/network/a;

.field private volatile i:Z

.field private volatile j:Z

.field private k:Z

.field private l:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/mopub/common/AdFormat;Ljava/lang/String;Landroid/content/Context;Lcom/mopub/network/AdLoader$Listener;)V
    .locals 6

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mopub/network/AdLoader;->g:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/mopub/network/AdLoader;->b:Lcom/mopub/network/AdResponse;

    .line 75
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/mopub/common/Preconditions;->checkArgument(Z)V

    .line 76
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 77
    invoke-static {p4}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 78
    invoke-static {p5}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 80
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mopub/network/AdLoader;->d:Ljava/lang/ref/WeakReference;

    .line 81
    iput-object p5, p0, Lcom/mopub/network/AdLoader;->e:Lcom/mopub/network/AdLoader$Listener;

    .line 83
    new-instance p5, Landroid/os/Handler;

    invoke-direct {p5}, Landroid/os/Handler;-><init>()V

    iput-object p5, p0, Lcom/mopub/network/AdLoader;->l:Landroid/os/Handler;

    .line 85
    new-instance v5, Lcom/mopub/network/AdLoader$1;

    invoke-direct {v5, p0}, Lcom/mopub/network/AdLoader$1;-><init>(Lcom/mopub/network/AdLoader;)V

    iput-object v5, p0, Lcom/mopub/network/AdLoader;->c:Lcom/mopub/network/MultiAdRequest$Listener;

    const/4 p5, 0x0

    .line 107
    iput-boolean p5, p0, Lcom/mopub/network/AdLoader;->i:Z

    .line 108
    iput-boolean p5, p0, Lcom/mopub/network/AdLoader;->j:Z

    .line 109
    new-instance p5, Lcom/mopub/network/MultiAdRequest;

    move-object v0, p5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/mopub/network/MultiAdRequest;-><init>(Ljava/lang/String;Lcom/mopub/common/AdFormat;Ljava/lang/String;Landroid/content/Context;Lcom/mopub/network/MultiAdRequest$Listener;)V

    iput-object p5, p0, Lcom/mopub/network/AdLoader;->f:Lcom/mopub/network/MultiAdRequest;

    return-void
.end method

.method private a(Lcom/mopub/network/MultiAdRequest;Landroid/content/Context;)Lcom/mopub/volley/Request;
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

    .line 270
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 277
    :cond_0
    invoke-virtual {p1}, Lcom/mopub/network/MultiAdRequest;->getBody()[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 278
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/mopub/network/MultiAdRequest;->getBody()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :cond_1
    const-string v0, "<no body>"

    .line 280
    :goto_0
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->REQUESTED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/mopub/network/MultiAdRequest;->getUrl()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 282
    iput-boolean v3, p0, Lcom/mopub/network/AdLoader;->i:Z

    .line 283
    invoke-static {p2}, Lcom/mopub/network/Networking;->getRequestQueue(Landroid/content/Context;)Lcom/mopub/network/MoPubRequestQueue;

    move-result-object p2

    .line 284
    iput-object p1, p0, Lcom/mopub/network/AdLoader;->f:Lcom/mopub/network/MultiAdRequest;

    .line 285
    invoke-virtual {p2, p1}, Lcom/mopub/volley/RequestQueue;->add(Lcom/mopub/volley/Request;)Lcom/mopub/volley/Request;

    return-object p1
.end method

.method static synthetic a(Lcom/mopub/network/AdLoader;Lcom/mopub/network/AdResponse;)V
    .locals 4

    .line 5315
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 5317
    iget-object v0, p0, Lcom/mopub/network/AdLoader;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 5318
    new-instance v1, Lcom/mopub/network/a;

    invoke-direct {v1, p1}, Lcom/mopub/network/a;-><init>(Lcom/mopub/network/AdResponse;)V

    iput-object v1, p0, Lcom/mopub/network/AdLoader;->h:Lcom/mopub/network/a;

    if-eqz v0, :cond_0

    .line 6055
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/mopub/network/a;->a:Ljava/lang/Long;

    .line 6057
    iget-object v1, v1, Lcom/mopub/network/a;->b:Lcom/mopub/network/AdResponse;

    invoke-virtual {v1}, Lcom/mopub/network/AdResponse;->getBeforeLoadUrls()Ljava/util/List;

    move-result-object v1

    .line 6058
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6062
    invoke-static {v1, v0}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;)V

    .line 5321
    :cond_0
    iget-object v0, p0, Lcom/mopub/network/AdLoader;->e:Lcom/mopub/network/AdLoader$Listener;

    if-eqz v0, :cond_1

    .line 5322
    iput-object p1, p0, Lcom/mopub/network/AdLoader;->b:Lcom/mopub/network/AdResponse;

    .line 5323
    invoke-interface {v0, p1}, Lcom/mopub/network/AdLoader$Listener;->onSuccess(Lcom/mopub/network/AdResponse;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/mopub/network/AdLoader;Lcom/mopub/volley/VolleyError;)V
    .locals 3

    .line 5295
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 5297
    iput-object v0, p0, Lcom/mopub/network/AdLoader;->b:Lcom/mopub/network/AdResponse;

    .line 5298
    iget-object p0, p0, Lcom/mopub/network/AdLoader;->e:Lcom/mopub/network/AdLoader$Listener;

    if-eqz p0, :cond_1

    .line 5299
    instance-of v0, p1, Lcom/mopub/network/MoPubNetworkError;

    if-eqz v0, :cond_0

    .line 5300
    invoke-interface {p0, p1}, Lcom/mopub/network/AdLoader$Listener;->onErrorResponse(Lcom/mopub/volley/VolleyError;)V

    return-void

    .line 5302
    :cond_0
    new-instance v0, Lcom/mopub/network/MoPubNetworkError;

    invoke-virtual {p1}, Lcom/mopub/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 5303
    invoke-virtual {p1}, Lcom/mopub/volley/VolleyError;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    sget-object v2, Lcom/mopub/network/MoPubNetworkError$Reason;->UNSPECIFIED:Lcom/mopub/network/MoPubNetworkError$Reason;

    invoke-direct {v0, v1, p1, v2}, Lcom/mopub/network/MoPubNetworkError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/mopub/network/MoPubNetworkError$Reason;)V

    .line 5302
    invoke-interface {p0, v0}, Lcom/mopub/network/AdLoader$Listener;->onErrorResponse(Lcom/mopub/volley/VolleyError;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/mopub/network/AdLoader;)Z
    .locals 1

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/mopub/network/AdLoader;->j:Z

    return v0
.end method

.method static synthetic b(Lcom/mopub/network/AdLoader;)Z
    .locals 1

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/mopub/network/AdLoader;->i:Z

    return v0
.end method

.method static synthetic c(Lcom/mopub/network/AdLoader;)Ljava/lang/Object;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/mopub/network/AdLoader;->g:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public creativeDownloadSuccess()V
    .locals 4

    const/4 v0, 0x1

    .line 225
    iput-boolean v0, p0, Lcom/mopub/network/AdLoader;->k:Z

    .line 227
    iget-object v1, p0, Lcom/mopub/network/AdLoader;->h:Lcom/mopub/network/a;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 228
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "Response analytics should not be null here"

    aput-object v3, v0, v2

    invoke-static {v1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 232
    :cond_0
    iget-object v1, p0, Lcom/mopub/network/AdLoader;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-eqz v1, :cond_4

    .line 233
    iget-object v3, p0, Lcom/mopub/network/AdLoader;->b:Lcom/mopub/network/AdResponse;

    if-nez v3, :cond_1

    goto :goto_1

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/mopub/network/AdLoader;->h:Lcom/mopub/network/a;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mopub/network/a;->a(Landroid/content/Context;Lcom/mopub/mobileads/MoPubError;)V

    .line 239
    iget-object v0, p0, Lcom/mopub/network/AdLoader;->h:Lcom/mopub/network/a;

    if-eqz v1, :cond_3

    .line 5077
    iget-object v2, v0, Lcom/mopub/network/a;->a:Ljava/lang/Long;

    if-nez v2, :cond_2

    goto :goto_0

    .line 5081
    :cond_2
    iget-object v2, v0, Lcom/mopub/network/a;->b:Lcom/mopub/network/AdResponse;

    invoke-virtual {v2}, Lcom/mopub/network/AdResponse;->getAfterLoadSuccessUrls()Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/mopub/network/a$a;->AD_LOADED:Lcom/mopub/network/a$a;

    invoke-static {v3}, Lcom/mopub/network/a$a;->access$000(Lcom/mopub/network/a$a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/mopub/network/a;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 5083
    invoke-static {v0, v1}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;)V

    :cond_3
    :goto_0
    return-void

    .line 234
    :cond_4
    :goto_1
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "Cannot send \'x-after-load-url\' analytics."

    aput-object v3, v0, v2

    invoke-static {v1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method

.method public hasMoreAds()Z
    .locals 3

    .line 121
    iget-boolean v0, p0, Lcom/mopub/network/AdLoader;->j:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 125
    :cond_0
    iget-boolean v0, p0, Lcom/mopub/network/AdLoader;->k:Z

    if-eqz v0, :cond_1

    return v1

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/mopub/network/AdLoader;->a:Lcom/mopub/network/MultiAdResponse;

    if-eqz v0, :cond_3

    .line 130
    invoke-virtual {v0}, Lcom/mopub/network/MultiAdResponse;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1204
    iget-object v0, v0, Lcom/mopub/network/MultiAdResponse;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isFailed()Z
    .locals 1

    .line 332
    iget-boolean v0, p0, Lcom/mopub/network/AdLoader;->j:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 328
    iget-boolean v0, p0, Lcom/mopub/network/AdLoader;->i:Z

    return v0
.end method

.method public loadNextAd(Lcom/mopub/mobileads/MoPubError;)Lcom/mopub/volley/Request;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/mobileads/MoPubError;",
            ")",
            "Lcom/mopub/volley/Request<",
            "*>;"
        }
    .end annotation

    .line 144
    iget-boolean v0, p0, Lcom/mopub/network/AdLoader;->i:Z

    if-eqz v0, :cond_0

    .line 145
    iget-object p1, p0, Lcom/mopub/network/AdLoader;->f:Lcom/mopub/network/MultiAdRequest;

    return-object p1

    .line 148
    :cond_0
    iget-boolean v0, p0, Lcom/mopub/network/AdLoader;->j:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 150
    iget-object p1, p0, Lcom/mopub/network/AdLoader;->l:Landroid/os/Handler;

    new-instance v0, Lcom/mopub/network/AdLoader$2;

    invoke-direct {v0, p0}, Lcom/mopub/network/AdLoader$2;-><init>(Lcom/mopub/network/AdLoader;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v1

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/mopub/network/AdLoader;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 162
    :try_start_0
    iget-object v2, p0, Lcom/mopub/network/AdLoader;->a:Lcom/mopub/network/MultiAdResponse;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_5

    .line 163
    invoke-static {}, Lcom/mopub/network/RequestRateTracker;->getInstance()Lcom/mopub/network/RequestRateTracker;

    move-result-object p1

    iget-object v2, p0, Lcom/mopub/network/AdLoader;->f:Lcom/mopub/network/MultiAdRequest;

    iget-object v2, v2, Lcom/mopub/network/MultiAdRequest;->b:Ljava/lang/String;

    .line 2079
    iget-object p1, p1, Lcom/mopub/network/RequestRateTracker;->a:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mopub/network/RequestRateTracker$TimeRecord;

    const-wide/16 v5, 0x0

    if-nez p1, :cond_2

    move-wide v7, v5

    goto :goto_0

    .line 3036
    :cond_2
    iget-wide v7, p1, Lcom/mopub/network/RequestRateTracker$TimeRecord;->a:J

    iget p1, p1, Lcom/mopub/network/RequestRateTracker$TimeRecord;->mBlockIntervalMs:I

    int-to-long v9, p1

    add-long/2addr v7, v9

    .line 2084
    invoke-static {}, Lcom/mopub/network/RequestRateTracker;->a()J

    move-result-wide v9

    sub-long/2addr v7, v9

    :goto_0
    cmp-long p1, v7, v5

    if-lez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_4

    .line 165
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v2, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/mopub/network/AdLoader;->f:Lcom/mopub/network/MultiAdRequest;

    iget-object v6, v6, Lcom/mopub/network/MultiAdRequest;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is blocked by request rate limiting."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {p1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 166
    iput-boolean v4, p0, Lcom/mopub/network/AdLoader;->j:Z

    .line 167
    iget-object p1, p0, Lcom/mopub/network/AdLoader;->l:Landroid/os/Handler;

    new-instance v2, Lcom/mopub/network/AdLoader$3;

    invoke-direct {v2, p0}, Lcom/mopub/network/AdLoader$3;-><init>(Lcom/mopub/network/AdLoader;)V

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 173
    monitor-exit v0

    return-object v1

    .line 175
    :cond_4
    iget-object p1, p0, Lcom/mopub/network/AdLoader;->f:Lcom/mopub/network/MultiAdRequest;

    iget-object v1, p0, Lcom/mopub/network/AdLoader;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {p0, p1, v1}, Lcom/mopub/network/AdLoader;->a(Lcom/mopub/network/MultiAdRequest;Landroid/content/Context;)Lcom/mopub/volley/Request;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_5
    if-eqz p1, :cond_a

    if-nez p1, :cond_6

    .line 3244
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array v2, v4, [Ljava/lang/Object;

    const-string v4, "Must provide error code to report creative download error"

    aput-object v4, v2, v3

    invoke-static {p1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    goto :goto_3

    .line 3248
    :cond_6
    iget-object v2, p0, Lcom/mopub/network/AdLoader;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    if-eqz v2, :cond_9

    .line 3249
    iget-object v5, p0, Lcom/mopub/network/AdLoader;->b:Lcom/mopub/network/AdResponse;

    if-nez v5, :cond_7

    goto :goto_2

    .line 3254
    :cond_7
    iget-object v3, p0, Lcom/mopub/network/AdLoader;->h:Lcom/mopub/network/a;

    if-eqz v3, :cond_a

    .line 3255
    invoke-virtual {v3, v2, p1}, Lcom/mopub/network/a;->a(Landroid/content/Context;Lcom/mopub/mobileads/MoPubError;)V

    .line 3256
    iget-object v3, p0, Lcom/mopub/network/AdLoader;->h:Lcom/mopub/network/a;

    if-eqz v2, :cond_a

    .line 4087
    iget-object v4, v3, Lcom/mopub/network/a;->a:Ljava/lang/Long;

    if-nez v4, :cond_8

    goto :goto_3

    .line 4091
    :cond_8
    invoke-static {p1}, Lcom/mopub/network/a;->a(Lcom/mopub/mobileads/MoPubError;)Lcom/mopub/network/a$a;

    move-result-object p1

    .line 4092
    iget-object v4, v3, Lcom/mopub/network/a;->b:Lcom/mopub/network/AdResponse;

    invoke-virtual {v4}, Lcom/mopub/network/AdResponse;->getAfterLoadFailUrls()Ljava/util/List;

    move-result-object v4

    invoke-static {p1}, Lcom/mopub/network/a$a;->access$000(Lcom/mopub/network/a$a;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v4, p1}, Lcom/mopub/network/a;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 4094
    invoke-static {p1, v2}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;)V

    goto :goto_3

    .line 3250
    :cond_9
    :goto_2
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array v2, v4, [Ljava/lang/Object;

    const-string v4, "Cannot send creative mFailed analytics."

    aput-object v4, v2, v3

    invoke-static {p1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 185
    :cond_a
    :goto_3
    iget-object p1, p0, Lcom/mopub/network/AdLoader;->a:Lcom/mopub/network/MultiAdResponse;

    invoke-virtual {p1}, Lcom/mopub/network/MultiAdResponse;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 187
    iget-object p1, p0, Lcom/mopub/network/AdLoader;->a:Lcom/mopub/network/MultiAdResponse;

    invoke-virtual {p1}, Lcom/mopub/network/MultiAdResponse;->next()Lcom/mopub/network/AdResponse;

    move-result-object p1

    .line 188
    iget-object v1, p0, Lcom/mopub/network/AdLoader;->l:Landroid/os/Handler;

    new-instance v2, Lcom/mopub/network/AdLoader$4;

    invoke-direct {v2, p0, p1}, Lcom/mopub/network/AdLoader$4;-><init>(Lcom/mopub/network/AdLoader;Lcom/mopub/network/AdResponse;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 194
    iget-object p1, p0, Lcom/mopub/network/AdLoader;->f:Lcom/mopub/network/MultiAdRequest;

    monitor-exit v0

    return-object p1

    .line 198
    :cond_b
    iget-object p1, p0, Lcom/mopub/network/AdLoader;->a:Lcom/mopub/network/MultiAdResponse;

    .line 4204
    iget-object p1, p1, Lcom/mopub/network/MultiAdResponse;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 200
    new-instance p1, Lcom/mopub/network/MultiAdRequest;

    iget-object v1, p0, Lcom/mopub/network/AdLoader;->a:Lcom/mopub/network/MultiAdResponse;

    invoke-virtual {v1}, Lcom/mopub/network/MultiAdResponse;->getFailURL()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/mopub/network/AdLoader;->f:Lcom/mopub/network/MultiAdRequest;

    iget-object v4, v1, Lcom/mopub/network/MultiAdRequest;->a:Lcom/mopub/common/AdFormat;

    iget-object v1, p0, Lcom/mopub/network/AdLoader;->f:Lcom/mopub/network/MultiAdRequest;

    iget-object v5, v1, Lcom/mopub/network/MultiAdRequest;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/mopub/network/AdLoader;->d:Ljava/lang/ref/WeakReference;

    .line 203
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/content/Context;

    iget-object v7, p0, Lcom/mopub/network/AdLoader;->c:Lcom/mopub/network/MultiAdRequest$Listener;

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/mopub/network/MultiAdRequest;-><init>(Ljava/lang/String;Lcom/mopub/common/AdFormat;Ljava/lang/String;Landroid/content/Context;Lcom/mopub/network/MultiAdRequest$Listener;)V

    iput-object p1, p0, Lcom/mopub/network/AdLoader;->f:Lcom/mopub/network/MultiAdRequest;

    .line 206
    iget-object v1, p0, Lcom/mopub/network/AdLoader;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {p0, p1, v1}, Lcom/mopub/network/AdLoader;->a(Lcom/mopub/network/MultiAdRequest;Landroid/content/Context;)Lcom/mopub/volley/Request;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 208
    :cond_c
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    iget-object p1, p0, Lcom/mopub/network/AdLoader;->l:Landroid/os/Handler;

    new-instance v0, Lcom/mopub/network/AdLoader$5;

    invoke-direct {v0, p0}, Lcom/mopub/network/AdLoader$5;-><init>(Lcom/mopub/network/AdLoader;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v1

    :catchall_0
    move-exception p1

    .line 208
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
