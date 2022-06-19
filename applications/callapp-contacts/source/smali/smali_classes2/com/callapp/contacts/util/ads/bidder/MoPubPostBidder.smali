.class public Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/util/ads/bidder/PostBidder;


# instance fields
.field private final allTasksCompletedLock:Ljava/lang/Object;

.field private appBidderResult:Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

.field private final appBidderResultLock:Ljava/lang/Object;

.field private externalAdEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

.field private handler:Landroid/os/Handler;

.field private handlerThread:Landroid/os/HandlerThread;

.field private isDestroyed:Z

.field private jsonPostBidder:Lcom/callapp/contacts/util/ads/JSONPostBidder;

.field private moPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

.field private moPubView:Lcom/mopub/mobileads/MoPubView;

.field private nativeAd:Lcom/mopub/nativeads/NativeAd;

.field private priceToBeat:D

.field private remainingRunningTasks:Ljava/util/concurrent/atomic/AtomicInteger;

.field private requestId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->allTasksCompletedLock:Ljava/lang/Object;

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->appBidderResultLock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;Landroid/content/Context;Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;Lcom/mopub/mobileads/MoPubView$MoPubAdSize;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->loadBanner(Landroid/content/Context;Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;Lcom/mopub/mobileads/MoPubView$MoPubAdSize;)V

    return-void
.end method

.method static synthetic access$100(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;Lcom/callapp/contacts/util/ads/NativeAdParamGetter;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->loadNative(Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;Lcom/callapp/contacts/util/ads/NativeAdParamGetter;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;)Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->externalAdEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;)Lcom/mopub/mobileads/MoPubView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->moPubView:Lcom/mopub/mobileads/MoPubView;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;Lcom/mopub/mobileads/MoPubView;)Lcom/mopub/mobileads/MoPubView;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->moPubView:Lcom/mopub/mobileads/MoPubView;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;)Lcom/mopub/nativeads/NativeAd;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->nativeAd:Lcom/mopub/nativeads/NativeAd;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;Lcom/mopub/nativeads/NativeAd;)Lcom/mopub/nativeads/NativeAd;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->nativeAd:Lcom/mopub/nativeads/NativeAd;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;)Lcom/mopub/mobileads/MoPubInterstitial;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->moPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/MoPubInterstitial;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->moPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    return-object p1
.end method

.method static synthetic access$200(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;Landroid/content/Context;Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->loadInterstitial(Landroid/content/Context;Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;)V

    return-void
.end method

.method static synthetic access$300(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->isDestroyed:Z

    return p0
.end method

.method static synthetic access$400(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;)Ljava/lang/Object;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->appBidderResultLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$500(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;)Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->appBidderResult:Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

    return-object p0
.end method

.method static synthetic access$502(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;)Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->appBidderResult:Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

    return-object p1
.end method

.method static synthetic access$600(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;)Lcom/callapp/contacts/util/ads/JSONPostBidder;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->jsonPostBidder:Lcom/callapp/contacts/util/ads/JSONPostBidder;

    return-object p0
.end method

.method static synthetic access$700(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->notifyDone()V

    return-void
.end method

.method static synthetic access$800(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;)Ljava/util/Map;
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->getLocalExtras()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;)D
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->priceToBeat:D

    return-wide v0
.end method

.method private getLocalExtras()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 295
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 296
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->requestId:Ljava/lang/String;

    const-string v2, "app_bidder_request_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private loadBanner(Landroid/content/Context;Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;Lcom/mopub/mobileads/MoPubView$MoPubAdSize;)V
    .locals 8

    .line 205
    invoke-virtual {p2}, Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$3;

    invoke-direct {v3, p0}, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$3;-><init>(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;)V

    .line 237
    invoke-direct {p0}, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->getLocalExtras()Ljava/util/Map;

    move-result-object v5

    iget-wide v6, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->priceToBeat:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const/4 v4, 0x0

    move-object v0, p1

    move-object v2, p3

    .line 205
    invoke-static/range {v0 .. v6}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/mobileads/MoPubView$MoPubAdSize;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;ZLjava/util/Map;Ljava/lang/Double;)V

    return-void
.end method

.method private loadInterstitial(Landroid/content/Context;Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;)V
    .locals 3

    .line 241
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p2}, Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;->getAdUnitId()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$4;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$4;-><init>(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;)V

    iget-wide v1, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->priceToBeat:D

    .line 291
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    .line 241
    invoke-static {p1, p2, v0, v2, v1}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;ZLjava/lang/Double;)V

    return-void
.end method

.method private loadNative(Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;Lcom/callapp/contacts/util/ads/NativeAdParamGetter;)V
    .locals 2

    .line 148
    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->handlerThread:Landroid/os/HandlerThread;

    .line 149
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 150
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/os/Looper;)V

    .line 151
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->handler:Landroid/os/Handler;

    .line 153
    new-instance v1, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$2;-><init>(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;Lcom/callapp/contacts/util/ads/NativeAdParamGetter;Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private notifyDone()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->remainingRunningTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->allTasksCompletedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 142
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->allTasksCompletedLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 143
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    const/4 v0, 0x1

    .line 336
    iput-boolean v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->isDestroyed:Z

    .line 337
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 338
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 339
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 342
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$5;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$5;-><init>(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getAdHeight()I
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->moPubView:Lcom/mopub/mobileads/MoPubView;

    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->getAdHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getBid(Landroid/content/Context;Lcom/callapp/contacts/util/ads/JSONPostBidder;Lcom/callapp/contacts/util/ads/AppBidder$BidListener;Lcom/callapp/contacts/util/ads/NativeAdParamGetter;DLjava/lang/String;F)V
    .locals 5

    .line 64
    iput-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->jsonPostBidder:Lcom/callapp/contacts/util/ads/JSONPostBidder;

    .line 65
    iput-object p7, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->requestId:Ljava/lang/String;

    .line 67
    iget-wide p7, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->priceToBeat:D

    mul-double v0, p7, p5

    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    mul-double p7, p7, p5

    .line 68
    iput-wide p7, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->priceToBeat:D

    .line 71
    :cond_0
    iget-wide p5, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->priceToBeat:D

    cmpl-double p7, p5, v2

    if-ltz p7, :cond_1

    .line 72
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->CANCELLED:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubErrorCode;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/callapp/contacts/util/ads/AppBidder$BidListener;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    const-wide/high16 p7, 0x4024000000000000L    # 10.0

    cmpl-double v0, p5, p7

    if-lez v0, :cond_2

    mul-double p5, p5, p7

    .line 75
    invoke-static {p5, p6}, Ljava/lang/Math;->round(D)J

    move-result-wide p5

    long-to-double p5, p5

    div-double/2addr p5, p7

    const-wide p7, 0x3fb999999999999aL    # 0.1

    add-double/2addr p5, p7

    iput-wide p5, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->priceToBeat:D

    .line 78
    :cond_2
    invoke-virtual {p2}, Lcom/callapp/contacts/util/ads/JSONPostBidder;->getAdUnits()Ljava/util/List;

    move-result-object p5

    .line 79
    invoke-static {p5}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result p6

    if-eqz p6, :cond_3

    .line 80
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubErrorCode;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/callapp/contacts/util/ads/AppBidder$BidListener;->a(Ljava/lang/String;)V

    return-void

    .line 84
    :cond_3
    new-instance p6, Lcom/callapp/contacts/framework/util/MultiTaskRunner;

    invoke-direct {p6}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;-><init>()V

    .line 85
    new-instance p7, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p8

    invoke-direct {p7, p8}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p7, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->remainingRunningTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 87
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result p7

    if-eqz p7, :cond_4

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;

    .line 88
    new-instance p8, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$1;

    invoke-direct {p8, p0, p7, p1, p4}, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$1;-><init>(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;Landroid/content/Context;Lcom/callapp/contacts/util/ads/NativeAdParamGetter;)V

    invoke-virtual {p6, p8}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    goto :goto_0

    .line 112
    :cond_4
    invoke-virtual {p6}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->c()V

    .line 114
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->allTasksCompletedLock:Ljava/lang/Object;

    monitor-enter p1

    .line 116
    :try_start_0
    iget-object p4, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->allTasksCompletedLock:Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/callapp/contacts/util/ads/JSONPostBidder;->getAdUnitTimeout()J

    move-result-wide p5

    invoke-virtual {p4, p5, p6}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_4

    .line 119
    :catch_0
    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    iget-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->appBidderResultLock:Ljava/lang/Object;

    monitor-enter p2

    .line 122
    :try_start_2
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->appBidderResult:Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

    if-eqz p1, :cond_8

    .line 123
    iget-object p1, p1, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->nativeAd:Lcom/mopub/nativeads/NativeAd;

    if-eqz p1, :cond_5

    .line 124
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->appBidderResult:Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->nativeAd:Lcom/mopub/nativeads/NativeAd;

    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->nativeAd:Lcom/mopub/nativeads/NativeAd;

    goto :goto_2

    .line 125
    :cond_5
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->appBidderResult:Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->moPubView:Lcom/mopub/mobileads/MoPubView;

    if-eqz p1, :cond_6

    .line 126
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->appBidderResult:Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->moPubView:Lcom/mopub/mobileads/MoPubView;

    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->moPubView:Lcom/mopub/mobileads/MoPubView;

    goto :goto_2

    .line 127
    :cond_6
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->appBidderResult:Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->moPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    if-eqz p1, :cond_7

    .line 128
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->appBidderResult:Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->moPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->moPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    .line 131
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->appBidderResult:Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

    iget-wide p4, p1, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->price:D

    invoke-interface {p3, p4, p5}, Lcom/callapp/contacts/util/ads/AppBidder$BidListener;->a(D)V

    goto :goto_3

    .line 133
    :cond_8
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubErrorCode;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/callapp/contacts/util/ads/AppBidder$BidListener;->a(Ljava/lang/String;)V

    .line 135
    :goto_3
    monitor-exit p2

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 119
    :goto_4
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p2
.end method

.method public loadAd(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V
    .locals 2

    .line 303
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->appBidderResult:Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->moPubView:Lcom/mopub/mobileads/MoPubView;

    if-eqz v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->moPubView:Lcom/mopub/mobileads/MoPubView;

    if-eqz v0, :cond_0

    .line 305
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->appBidderResult:Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

    iget-boolean v1, v1, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->disableRefresh:Z

    invoke-interface {p1, v0, v1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onBannerAdLoaded(Lcom/mopub/mobileads/MoPubView;Z)V

    return-void

    .line 307
    :cond_0
    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, v0, v1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onBannerAdFailed(Lcom/mopub/mobileads/MoPubView;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->appBidderResult:Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->nativeAd:Lcom/mopub/nativeads/NativeAd;

    if-eqz v0, :cond_3

    .line 310
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->nativeAd:Lcom/mopub/nativeads/NativeAd;

    if-eqz v0, :cond_2

    .line 311
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->appBidderResult:Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

    iget-boolean v1, v1, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->disableRefresh:Z

    invoke-interface {p1, v0, v1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onNativeAdLoaded(Lcom/mopub/nativeads/NativeAd;Z)V

    return-void

    .line 313
    :cond_2
    sget-object v0, Lcom/mopub/nativeads/NativeErrorCode;->UNSPECIFIED:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p1, v0}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    return-void

    .line 315
    :cond_3
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->appBidderResult:Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->moPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    if-eqz v0, :cond_5

    .line 316
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->externalAdEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    .line 317
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->moPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    if-eqz v0, :cond_4

    .line 318
    invoke-interface {p1, v0}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onInterstitialLoaded(Lcom/mopub/mobileads/MoPubInterstitial;)V

    return-void

    .line 320
    :cond_4
    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, v0, v1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_5
    return-void
.end method

.method public synthetic notifyLoss()V
    .locals 0

    invoke-static {p0}, Lcom/callapp/contacts/util/ads/bidder/Bidder$-CC;->$default$notifyLoss(Lcom/callapp/contacts/util/ads/bidder/Bidder;)V

    return-void
.end method

.method public setPriceToBeat(D)V
    .locals 0

    .line 59
    iput-wide p1, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->priceToBeat:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MoPubPostBidder{nativeAd="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->nativeAd:Lcom/mopub/nativeads/NativeAd;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 366
    invoke-virtual {v1}, Lcom/mopub/nativeads/NativeAd;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", moPubView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->moPubView:Lcom/mopub/mobileads/MoPubView;

    if-eqz v1, :cond_1

    .line 367
    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubView;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", moPubInterstitial="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->moPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    if-eqz v1, :cond_2

    .line 368
    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubInterstitial;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
