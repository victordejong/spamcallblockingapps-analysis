.class public Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$ProcessNextAdSessionMessage;,
        Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$SendToDestinationMessage;,
        Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;,
        Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$AdDestination;,
        Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$AdReceivedMessage;,
        Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$CachedAd;,
        Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdFactoryListener;
    }
.end annotation


# static fields
.field public static final ERROR_AD_LOAD_IN_PROGRESS:I = -0x2

.field public static final ERROR_NO_WATERFALL_PROVIDER:I = -0x1

.field private static final b:Lcom/verizon/ads/Logger;

.field private static final c:Landroid/os/HandlerThread;

.field private static final d:Ljava/util/concurrent/ExecutorService;


# instance fields
.field final a:Lcom/verizon/ads/support/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/verizon/ads/support/Cache<",
            "Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$CachedAd;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/String;

.field private final f:Landroid/content/Context;

.field private final g:Landroid/os/Handler;

.field private volatile h:Z

.field private volatile i:Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;

.field private volatile j:I

.field private k:Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdFactoryListener;

.field private l:Lcom/verizon/ads/RequestMetadata;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    const-class v0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v1

    sput-object v1, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->b:Lcom/verizon/ads/Logger;

    .line 99
    new-instance v1, Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 100
    sput-object v1, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    const/4 v0, 0x1

    .line 103
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->d:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdFactoryListener;)V
    .locals 3

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->h:Z

    const/4 v1, -0x1

    .line 85
    iput v1, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->j:I

    const/4 v1, 0x3

    .line 223
    invoke-static {v1}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    sget-object v1, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->b:Lcom/verizon/ads/Logger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v0

    const-string v0, "Creating interstitial ad factory for placement Id \'%s\'"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 227
    :cond_0
    iput-object p2, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->e:Ljava/lang/String;

    .line 228
    iput-object p1, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->f:Landroid/content/Context;

    .line 229
    iput-object p3, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->k:Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdFactoryListener;

    .line 230
    new-instance p1, Lcom/verizon/ads/support/SimpleCache;

    invoke-direct {p1}, Lcom/verizon/ads/support/SimpleCache;-><init>()V

    iput-object p1, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->a:Lcom/verizon/ads/support/Cache;

    .line 231
    new-instance p1, Landroid/os/Handler;

    sget-object p2, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->c:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    new-instance p3, Lcom/verizon/ads/interstitialplacement/-$$Lambda$InterstitialAdFactory$HPgKr7n18ll5vPXIgRNpveXg_k8;

    invoke-direct {p3, p0}, Lcom/verizon/ads/interstitialplacement/-$$Lambda$InterstitialAdFactory$HPgKr7n18ll5vPXIgRNpveXg_k8;-><init>(Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;)V

    invoke-direct {p1, p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->g:Landroid/os/Handler;

    return-void
.end method

.method private static a(II)I
    .locals 1

    if-ltz p0, :cond_1

    const/16 v0, 0x1e

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    return p0

    :cond_1
    :goto_0
    return p1
.end method

.method static a()J
    .locals 5

    const-string v0, "com.verizon.ads.interstitialplacement"

    const-string v1, "interstitialAdExpirationTimeout"

    const v2, 0x36ee80

    .line 920
    invoke-static {v0, v1, v2}, Lcom/verizon/ads/Configuration;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    .line 923
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    int-to-long v3, v0

    add-long/2addr v1, v3

    return-wide v1

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method static synthetic a(Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;)Landroid/os/Handler;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->g:Landroid/os/Handler;

    return-object p0
.end method

.method private static a(Lcom/verizon/ads/RequestMetadata;Ljava/lang/String;)Lcom/verizon/ads/RequestMetadata;
    .locals 3

    if-eqz p0, :cond_0

    goto :goto_0

    .line 936
    :cond_0
    invoke-static {}, Lcom/verizon/ads/VASAds;->getRequestMetadata()Lcom/verizon/ads/RequestMetadata;

    move-result-object p0

    :goto_0
    if-nez p1, :cond_1

    .line 939
    sget-object p1, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->b:Lcom/verizon/ads/Logger;

    const-string v0, "Placement id cannot be null"

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    return-object p0

    .line 945
    :cond_1
    new-instance v0, Lcom/verizon/ads/RequestMetadata$Builder;

    invoke-direct {v0, p0}, Lcom/verizon/ads/RequestMetadata$Builder;-><init>(Lcom/verizon/ads/RequestMetadata;)V

    .line 948
    invoke-virtual {v0}, Lcom/verizon/ads/RequestMetadata$Builder;->getPlacementData()Ljava/util/Map;

    move-result-object p0

    if-nez p0, :cond_2

    .line 951
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    :cond_2
    const-string v1, "type"

    const-string v2, "interstitial"

    .line 954
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "id"

    .line 955
    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 959
    invoke-virtual {v0, p0}, Lcom/verizon/ads/RequestMetadata$Builder;->setPlacementData(Ljava/util/Map;)Lcom/verizon/ads/RequestMetadata$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/verizon/ads/RequestMetadata$Builder;->build()Lcom/verizon/ads/RequestMetadata;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/verizon/ads/AdSession;Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;)V
    .locals 3

    if-nez p2, :cond_0

    .line 801
    sget-object p1, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->b:Lcom/verizon/ads/Logger;

    const-string p2, "InterstitialAdRequest cannot be null"

    invoke-virtual {p1, p2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 806
    :cond_0
    invoke-virtual {p1}, Lcom/verizon/ads/AdSession;->getAdAdapter()Lcom/verizon/ads/AdAdapter;

    const/4 v0, 0x3

    .line 808
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 809
    sget-object v0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->b:Lcom/verizon/ads/Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "Ad loaded: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 812
    :cond_1
    new-instance v0, Lcom/verizon/ads/interstitialplacement/InterstitialAd;

    iget-object v1, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->e:Ljava/lang/String;

    iget-object p2, p2, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;->g:Lcom/verizon/ads/interstitialplacement/InterstitialAd$InterstitialAdListener;

    invoke-direct {v0, v1, p1, p2}, Lcom/verizon/ads/interstitialplacement/InterstitialAd;-><init>(Ljava/lang/String;Lcom/verizon/ads/AdSession;Lcom/verizon/ads/interstitialplacement/InterstitialAd$InterstitialAdListener;)V

    .line 815
    iget-object p1, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->k:Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdFactoryListener;

    if-eqz p1, :cond_2

    .line 817
    sget-object p2, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$6;

    invoke-direct {v1, p0, p1, v0}, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$6;-><init>(Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdFactoryListener;Lcom/verizon/ads/interstitialplacement/InterstitialAd;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/verizon/ads/Bid;Lcom/verizon/ads/BidRequestListener;)V
    .locals 3

    const/4 v0, 0x3

    .line 4744
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4745
    sget-object v0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->b:Lcom/verizon/ads/Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string v2, "Bid received: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 4749
    sget-object v0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$4;

    invoke-direct {v1, p1, p0}, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$4;-><init>(Lcom/verizon/ads/BidRequestListener;Lcom/verizon/ads/Bid;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private a(Lcom/verizon/ads/ErrorInfo;)V
    .locals 4

    const/4 v0, 0x3

    .line 832
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 833
    sget-object v0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->b:Lcom/verizon/ads/Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->e:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "Error occurred loading ad for placementId: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 836
    :cond_0
    invoke-direct {p0, p1}, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->b(Lcom/verizon/ads/ErrorInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/verizon/ads/ErrorInfo;Lcom/verizon/ads/BidRequestListener;)V
    .locals 3

    const/4 v0, 0x3

    .line 3762
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3763
    sget-object v0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->b:Lcom/verizon/ads/Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string v2, "Error requesting bid: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 3767
    sget-object v0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$5;

    invoke-direct {v1, p1, p0}, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$5;-><init>(Lcom/verizon/ads/BidRequestListener;Lcom/verizon/ads/ErrorInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private a(Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;)V
    .locals 5

    .line 610
    invoke-direct {p0, p1}, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->c(Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->l:Lcom/verizon/ads/RequestMetadata;

    iget-object v1, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->a(Lcom/verizon/ads/RequestMetadata;Ljava/lang/String;)Lcom/verizon/ads/RequestMetadata;

    move-result-object v0

    .line 616
    iget-object v1, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->f:Landroid/content/Context;

    const-class v2, Lcom/verizon/ads/interstitialplacement/InterstitialAd;

    invoke-static {}, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->g()I

    move-result v3

    new-instance v4, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$2;

    invoke-direct {v4, p0, p1}, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$2;-><init>(Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;)V

    invoke-static {v1, v2, v0, v3, v4}, Lcom/verizon/ads/VASAds;->requestAds(Landroid/content/Context;Ljava/lang/Class;Lcom/verizon/ads/RequestMetadata;ILcom/verizon/ads/VASAds$AdRequestListener;)V

    return-void
.end method

.method private synthetic a(Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;Lcom/verizon/ads/AdSession;Lcom/verizon/ads/ErrorInfo;)V
    .locals 2

    .line 793
    iget-object v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->g:Landroid/os/Handler;

    new-instance v1, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$SendToDestinationMessage;

    invoke-direct {v1, p1, p2, p3}, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$SendToDestinationMessage;-><init>(Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;Lcom/verizon/ads/AdSession;Lcom/verizon/ads/ErrorInfo;)V

    const/4 p1, 0x5

    .line 794
    invoke-virtual {v0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 793
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private synthetic a(Landroid/os/Message;)Z
    .locals 6

    .line 233
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 259
    :pswitch_0
    sget-object v0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->b:Lcom/verizon/ads/Logger;

    new-array v3, v2, [Ljava/lang/Object;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    const-string p1, "Received unexpected message with what = %d"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 256
    :pswitch_1
    invoke-direct {p0}, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->d()V

    goto/16 :goto_4

    .line 253
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$ProcessNextAdSessionMessage;

    .line 3686
    iget-object p1, p1, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$ProcessNextAdSessionMessage;->a:Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;

    .line 3688
    iget-boolean v0, p1, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;->b:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->h:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3694
    :cond_0
    iget-object v0, p1, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3695
    sget-object v0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->b:Lcom/verizon/ads/Logger;

    const-string v1, "No Ad Sessions queued for processing."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3696
    iput-object v0, p1, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;->e:Lcom/verizon/ads/AdSession;

    .line 3699
    iget-boolean p1, p1, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;->a:Z

    if-eqz p1, :cond_11

    .line 3700
    invoke-direct {p0}, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->c()V

    goto/16 :goto_4

    .line 3706
    :cond_1
    iget-object v0, p1, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/verizon/ads/AdSession;

    iput-object v0, p1, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;->e:Lcom/verizon/ads/AdSession;

    .line 3708
    invoke-direct {p0, p1}, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->b(Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;)V

    goto/16 :goto_4

    .line 3689
    :cond_2
    :goto_0
    sget-object p1, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->b:Lcom/verizon/ads/Logger;

    const-string v0, "Ignoring process next ad session after abort or destroy."

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 250
    :pswitch_3
    invoke-direct {p0}, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->b()V

    goto/16 :goto_4

    .line 247
    :pswitch_4
    invoke-direct {p0}, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->f()V

    goto/16 :goto_4

    .line 244
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$SendToDestinationMessage;

    .line 3508
    iget-object v0, p1, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$SendToDestinationMessage;->a:Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;

    .line 3510
    iget-boolean v3, v0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;->b:Z

    if-nez v3, :cond_8

    iget-boolean v3, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->h:Z

    if-eqz v3, :cond_3

    goto :goto_2

    .line 3517
    :cond_3
    iget-object v3, p1, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$SendToDestinationMessage;->c:Lcom/verizon/ads/AdSession;

    .line 3519
    sget-object v4, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$AdDestination;->CACHE:Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$AdDestination;

    iget-object v5, v0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;->d:Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$AdDestination;

    invoke-virtual {v4, v5}, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$AdDestination;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v3, :cond_7

    const/4 p1, 0x3

    .line 3522
    invoke-static {p1}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 3523
    sget-object p1, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->b:Lcom/verizon/ads/Logger;

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v3, v4, v1

    const-string v1, "Caching ad session: %s"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 3526
    :cond_4
    iget-object p1, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->a:Lcom/verizon/ads/support/Cache;

    new-instance v1, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$CachedAd;

    invoke-static {}, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->a()J

    move-result-wide v4

    invoke-direct {v1, v3, v4, v5}, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$CachedAd;-><init>(Lcom/verizon/ads/AdSession;J)V

    invoke-interface {p1, v1}, Lcom/verizon/ads/support/Cache;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 3530
    :cond_5
    iget-object v1, p1, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$SendToDestinationMessage;->b:Lcom/verizon/ads/ErrorInfo;

    if-eqz v1, :cond_6

    .line 3533
    iget-boolean v1, v0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;->a:Z

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3534
    iget-object p1, p1, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$SendToDestinationMessage;->b:Lcom/verizon/ads/ErrorInfo;

    invoke-direct {p0, p1}, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->a(Lcom/verizon/ads/ErrorInfo;)V

    .line 3535
    invoke-direct {p0}, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->c()V

    goto/16 :goto_4

    .line 3541
    :cond_6
    sget-object p1, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$AdDestination;->CACHE:Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$AdDestination;

    iput-object p1, v0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;->d:Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$AdDestination;

    .line 3543
    invoke-direct {p0, v3, v0}, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->a(Lcom/verizon/ads/AdSession;Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;)V

    .line 3548
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->g:Landroid/os/Handler;

    const/16 v1, 0x8

    new-instance v3, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$ProcessNextAdSessionMessage;

    invoke-direct {v3, v0}, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$ProcessNextAdSessionMessage;-><init>(Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;)V

    invoke-virtual {p1, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_4

    .line 3511
    :cond_8
    :goto_2
    sget-object p1, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->b:Lcom/verizon/ads/Logger;

    const-string v0, "Ignoring send to destination notification after abort or destroy."

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 241
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$AdReceivedMessage;

    .line 3453
    iget-object v0, p1, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$AdReceivedMessage;->a:Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;

    .line 3455
    iget-boolean v1, v0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;->b:Z

    if-nez v1, :cond_d

    iget-boolean v1, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->h:Z

    if-eqz v1, :cond_9

    goto :goto_3

    .line 3462
    :cond_9
    iget-boolean v1, p1, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$AdReceivedMessage;->d:Z

    iput-boolean v1, v0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;->a:Z

    .line 3466
    iget-object v1, p1, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$AdReceivedMessage;->c:Lcom/verizon/ads/ErrorInfo;

    if-eqz v1, :cond_a

    .line 3468
    sget-object v1, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->b:Lcom/verizon/ads/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Server responded with an error when attempting to get interstitial ads: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$AdReceivedMessage;->c:Lcom/verizon/ads/ErrorInfo;

    invoke-virtual {v4}, Lcom/verizon/ads/ErrorInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    .line 3470
    invoke-direct {p0}, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->c()V

    .line 3472
    sget-object v1, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$AdDestination;->CALLBACK:Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$AdDestination;

    iget-object v0, v0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;->d:Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$AdDestination;

    invoke-virtual {v1, v0}, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$AdDestination;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3473
    iget-object p1, p1, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$AdReceivedMessage;->c:Lcom/verizon/ads/ErrorInfo;

    invoke-direct {p0, p1}, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->a(Lcom/verizon/ads/ErrorInfo;)V

    goto/16 :goto_4

    .line 3481
    :cond_a
    iget-boolean v1, v0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;->a:Z

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;->e:Lcom/verizon/ads/AdSession;

    if-nez v1, :cond_b

    iget-object v1, p1, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$AdReceivedMessage;->b:Lcom/verizon/ads/AdSession;

    if-nez v1, :cond_b

    .line 3484
    invoke-direct {p0}, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->c()V

    goto/16 :goto_4

    .line 3490
    :cond_b
    iget-object v1, v0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;->e:Lcom/verizon/ads/AdSession;

    if-eqz v1, :cond_c

    .line 3491
    iget-object v1, p1, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$AdReceivedMessage;->b:Lcom/verizon/ads/AdSession;

    if-eqz v1, :cond_11

    .line 3492
    iget-object v0, v0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;->f:Ljava/util/List;

    iget-object p1, p1, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$AdReceivedMessage;->b:Lcom/verizon/ads/AdSession;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 3498
    :cond_c
    iget-object v1, p1, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$AdReceivedMessage;->b:Lcom/verizon/ads/AdSession;

    if-eqz v1, :cond_11

    .line 3499
    iget-object p1, p1, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$AdReceivedMessage;->b:Lcom/verizon/ads/AdSession;

    iput-object p1, v0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;->e:Lcom/verizon/ads/AdSession;

    .line 3501
    invoke-direct {p0, v0}, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->b(Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;)V

    goto :goto_4

    .line 3456
    :cond_d
    :goto_3
    sget-object p1, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->b:Lcom/verizon/ads/Logger;

    const-string v0, "Ignoring ad received after abort or destroy."

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    goto :goto_4

    .line 238
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;

    .line 2658
    iget-boolean v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->h:Z

    if-eqz v0, :cond_e

    .line 2659
    sget-object p1, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->b:Lcom/verizon/ads/Logger;

    const-string v0, "Load Bid failed. Factory has been destroyed."

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    goto :goto_4

    .line 2665
    :cond_e
    invoke-direct {p0, p1}, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->c(Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2669
    sget-object v0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$AdDestination;->CALLBACK:Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$AdDestination;

    iput-object v0, p1, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;->d:Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$AdDestination;

    .line 2671
    iget-object v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->f:Landroid/content/Context;

    iget-object v1, p1, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;->c:Lcom/verizon/ads/Bid;

    const-class v3, Lcom/verizon/ads/interstitialplacement/InterstitialAd;

    invoke-static {}, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->g()I

    move-result v4

    new-instance v5, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$3;

    invoke-direct {v5, p0, p1}, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$3;-><init>(Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;)V

    invoke-static {v0, v1, v3, v4, v5}, Lcom/verizon/ads/VASAds;->requestAd(Landroid/content/Context;Lcom/verizon/ads/Bid;Ljava/lang/Class;ILcom/verizon/ads/VASAds$AdRequestListener;)V

    goto :goto_4

    .line 235
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;

    .line 2562
    iget-boolean v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->h:Z

    if-eqz v0, :cond_f

    .line 2563
    sget-object p1, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->b:Lcom/verizon/ads/Logger;

    const-string v0, "Load Ad failed. Factory has been destroyed."

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    goto :goto_4

    .line 2569
    :cond_f
    invoke-direct {p0}, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->e()Lcom/verizon/ads/AdSession;

    move-result-object v0

    .line 2571
    sget-object v1, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$AdDestination;->CALLBACK:Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$AdDestination;

    iput-object v1, p1, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;->d:Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$AdDestination;

    if-eqz v0, :cond_10

    .line 2574
    invoke-direct {p0, v0, p1}, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->a(Lcom/verizon/ads/AdSession;Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;)V

    .line 2576
    invoke-direct {p0}, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->d()V

    goto :goto_4

    .line 2582
    :cond_10
    invoke-direct {p0, p1}, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->a(Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;)V

    :cond_11
    :goto_4
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private b()V
    .locals 2

    .line 317
    iget-boolean v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->h:Z

    if-eqz v0, :cond_0

    .line 318
    sget-object v0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->b:Lcom/verizon/ads/Logger;

    const-string v1, "Factory has already been destroyed."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    return-void

    .line 324
    :cond_0
    invoke-direct {p0}, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->f()V

    .line 327
    iget-object v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->a:Lcom/verizon/ads/support/Cache;

    invoke-interface {v0}, Lcom/verizon/ads/support/Cache;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$CachedAd;

    :goto_0
    if-eqz v0, :cond_1

    .line 330
    iget-object v0, v0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$CachedAd;->a:Lcom/verizon/ads/AdSession;

    invoke-virtual {v0}, Lcom/verizon/ads/AdSession;->getAdAdapter()Lcom/verizon/ads/AdAdapter;

    move-result-object v0

    check-cast v0, Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter;

    .line 331
    invoke-interface {v0}, Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter;->release()V

    .line 334
    iget-object v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->a:Lcom/verizon/ads/support/Cache;

    invoke-interface {v0}, Lcom/verizon/ads/support/Cache;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$CachedAd;

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 338
    iput-boolean v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->h:Z

    return-void
.end method

.method private b(Lcom/verizon/ads/ErrorInfo;)V
    .locals 3

    .line 902
    sget-object v0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->b:Lcom/verizon/ads/Logger;

    invoke-virtual {p1}, Lcom/verizon/ads/ErrorInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    .line 904
    iget-object v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->k:Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdFactoryListener;

    if-eqz v0, :cond_0

    .line 906
    sget-object v1, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$7;

    invoke-direct {v2, p0, v0, p1}, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$7;-><init>(Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdFactoryListener;Lcom/verizon/ads/ErrorInfo;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private b(Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;)V
    .locals 5

    .line 780
    iget-object v0, p1, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;->e:Lcom/verizon/ads/AdSession;

    if-nez v0, :cond_0

    .line 783
    sget-object p1, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->b:Lcom/verizon/ads/Logger;

    const-string v0, "Unable to load view for null ad session."

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x3

    .line 788
    invoke-static {v1}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 789
    sget-object v1, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->b:Lcom/verizon/ads/Logger;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Loading view for ad session: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 792
    :cond_1
    invoke-virtual {v0}, Lcom/verizon/ads/AdSession;->getAdAdapter()Lcom/verizon/ads/AdAdapter;

    move-result-object v1

    check-cast v1, Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter;

    .line 793
    iget-object v2, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->f:Landroid/content/Context;

    invoke-static {}, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->g()I

    move-result v3

    new-instance v4, Lcom/verizon/ads/interstitialplacement/-$$Lambda$InterstitialAdFactory$zx76Tkn6pmFrkPEG38_xydp7MEw;

    invoke-direct {v4, p0, p1, v0}, Lcom/verizon/ads/interstitialplacement/-$$Lambda$InterstitialAdFactory$zx76Tkn6pmFrkPEG38_xydp7MEw;-><init>(Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;Lcom/verizon/ads/AdSession;)V

    invoke-interface {v1, v2, v3, v4}, Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter;->load(Landroid/content/Context;ILcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$LoadViewListener;)V

    return-void
.end method

.method private c()V
    .locals 2

    .line 554
    sget-object v0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->b:Lcom/verizon/ads/Logger;

    const-string v1, "Clearing the active ad request."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 556
    iput-object v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->i:Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;

    return-void
.end method

.method private c(Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;)Z
    .locals 3

    .line 885
    iget-object v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->i:Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;

    if-eqz v0, :cond_0

    .line 886
    new-instance p1, Lcom/verizon/ads/ErrorInfo;

    const-class v0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "Only one active load request allowed at a time"

    invoke-direct {p1, v0, v2, v1}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 889
    invoke-direct {p0, p1}, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->b(Lcom/verizon/ads/ErrorInfo;)V

    const/4 p1, 0x0

    return p1

    .line 894
    :cond_0
    iput-object p1, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->i:Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;

    const/4 p1, 0x1

    return p1
.end method

.method private d()V
    .locals 3

    .line 589
    iget-object v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->i:Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;

    if-eqz v0, :cond_0

    .line 590
    sget-object v0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->b:Lcom/verizon/ads/Logger;

    const-string v1, "Skipping cache replenishment as an ad request is already in progress."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    return-void

    .line 1643
    :cond_0
    iget v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->j:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->j:I

    goto :goto_0

    :cond_1
    const-string v0, "com.verizon.ads.interstitialplacement"

    const-string v1, "cacheReplenishmentThreshold"

    const/4 v2, 0x3

    .line 1644
    invoke-static {v0, v1, v2}, Lcom/verizon/ads/Configuration;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0, v2}, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->a(II)I

    move-result v0

    .line 597
    :goto_0
    iget-object v1, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->a:Lcom/verizon/ads/support/Cache;

    invoke-interface {v1}, Lcom/verizon/ads/support/Cache;->size()I

    move-result v1

    if-le v1, v0, :cond_2

    return-void

    .line 601
    :cond_2
    new-instance v0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;

    invoke-direct {v0}, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;-><init>()V

    .line 602
    sget-object v1, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$AdDestination;->CACHE:Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$AdDestination;

    iput-object v1, v0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;->d:Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$AdDestination;

    .line 604
    invoke-direct {p0, v0}, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->a(Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;)V

    return-void
.end method

.method private e()Lcom/verizon/ads/AdSession;
    .locals 6

    .line 717
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->a:Lcom/verizon/ads/support/Cache;

    invoke-interface {v0}, Lcom/verizon/ads/support/Cache;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$CachedAd;

    if-eqz v0, :cond_1

    .line 722
    iget-wide v1, v0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$CachedAd;->b:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$CachedAd;->b:J

    cmp-long v5, v1, v3

    if-ltz v5, :cond_1

    const/4 v0, 0x3

    .line 726
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 727
    sget-object v0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->b:Lcom/verizon/ads/Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->e:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "Ad in cache expired for placementId: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 733
    sget-object v0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->b:Lcom/verizon/ads/Logger;

    const-string v1, "No ads in cache."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->i(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 738
    :cond_2
    iget-object v0, v0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$CachedAd;->a:Lcom/verizon/ads/AdSession;

    return-object v0
.end method

.method private f()V
    .locals 5

    .line 842
    iget-boolean v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->h:Z

    if-eqz v0, :cond_0

    .line 843
    sget-object v0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->b:Lcom/verizon/ads/Logger;

    const-string v1, "Abort failed. Factory has been destroyed."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x3

    .line 848
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 849
    sget-object v0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->b:Lcom/verizon/ads/Logger;

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->e:Ljava/lang/String;

    aput-object v4, v2, v3

    const-string v3, "Aborting load request for placementId: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 852
    :cond_1
    iget-object v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->i:Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;

    if-nez v0, :cond_2

    .line 853
    sget-object v0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->b:Lcom/verizon/ads/Logger;

    const-string v1, "No active load to abort"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    return-void

    .line 858
    :cond_2
    iget-object v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->i:Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;

    iget-object v0, v0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;->e:Lcom/verizon/ads/AdSession;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->i:Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;

    iget-object v0, v0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;->e:Lcom/verizon/ads/AdSession;

    .line 859
    invoke-virtual {v0}, Lcom/verizon/ads/AdSession;->getAdAdapter()Lcom/verizon/ads/AdAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 861
    iget-object v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->i:Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;

    iget-object v0, v0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;->e:Lcom/verizon/ads/AdSession;

    .line 862
    invoke-virtual {v0}, Lcom/verizon/ads/AdSession;->getAdAdapter()Lcom/verizon/ads/AdAdapter;

    move-result-object v0

    check-cast v0, Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter;

    .line 864
    invoke-interface {v0}, Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter;->abortLoad()V

    .line 867
    :cond_3
    iget-object v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->i:Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;

    iget-object v0, v0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/verizon/ads/AdSession;

    if-eqz v2, :cond_4

    .line 869
    invoke-virtual {v2}, Lcom/verizon/ads/AdSession;->getAdAdapter()Lcom/verizon/ads/AdAdapter;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 870
    invoke-virtual {v2}, Lcom/verizon/ads/AdSession;->getAdAdapter()Lcom/verizon/ads/AdAdapter;

    move-result-object v2

    check-cast v2, Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter;

    .line 871
    invoke-interface {v2}, Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter;->abortLoad()V

    goto :goto_0

    .line 875
    :cond_5
    iget-object v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->i:Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;

    iput-boolean v1, v0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;->b:Z

    .line 878
    invoke-direct {p0}, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->c()V

    return-void
.end method

.method private static g()I
    .locals 3

    const-string v0, "com.verizon.ads.interstitialplacement"

    const-string v1, "interstitialAdRequestTimeout"

    const/16 v2, 0x7530

    .line 929
    invoke-static {v0, v1, v2}, Lcom/verizon/ads/Configuration;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static synthetic lambda$HPgKr7n18ll5vPXIgRNpveXg_k8(Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;Landroid/os/Message;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->a(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$zx76Tkn6pmFrkPEG38_xydp7MEw(Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;Lcom/verizon/ads/AdSession;Lcom/verizon/ads/ErrorInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->a(Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;Lcom/verizon/ads/AdSession;Lcom/verizon/ads/ErrorInfo;)V

    return-void
.end method

.method public static requestBid(Landroid/content/Context;Ljava/lang/String;Lcom/verizon/ads/RequestMetadata;Lcom/verizon/ads/BidRequestListener;)V
    .locals 1

    .line 280
    invoke-static {p2, p1}, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->a(Lcom/verizon/ads/RequestMetadata;Ljava/lang/String;)Lcom/verizon/ads/RequestMetadata;

    move-result-object p1

    invoke-static {}, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->g()I

    move-result p2

    new-instance v0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$1;

    invoke-direct {v0, p3}, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$1;-><init>(Lcom/verizon/ads/BidRequestListener;)V

    invoke-static {p0, p1, p2, v0}, Lcom/verizon/ads/VASAds;->requestBid(Landroid/content/Context;Lcom/verizon/ads/RequestMetadata;ILcom/verizon/ads/BidRequestListener;)V

    return-void
.end method


# virtual methods
.method public abortLoad()V
    .locals 2

    .line 447
    iget-object v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->g:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public destroy()V
    .locals 2

    .line 311
    iget-object v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->g:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public getPlacementId()Ljava/lang/String;
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestMetadata()Lcom/verizon/ads/RequestMetadata;
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->l:Lcom/verizon/ads/RequestMetadata;

    return-object v0
.end method

.method public load(Lcom/verizon/ads/Bid;Lcom/verizon/ads/interstitialplacement/InterstitialAd$InterstitialAdListener;)V
    .locals 2

    .line 438
    iget-object v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->g:Landroid/os/Handler;

    new-instance v1, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;

    invoke-direct {v1, p2, p1}, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;-><init>(Lcom/verizon/ads/interstitialplacement/InterstitialAd$InterstitialAdListener;Lcom/verizon/ads/Bid;)V

    const/4 p1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public load(Lcom/verizon/ads/interstitialplacement/InterstitialAd$InterstitialAdListener;)V
    .locals 2

    .line 425
    iget-object v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->g:Landroid/os/Handler;

    new-instance v1, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;

    invoke-direct {v1, p1}, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;-><init>(Lcom/verizon/ads/interstitialplacement/InterstitialAd$InterstitialAdListener;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public loadAdFromCache(Lcom/verizon/ads/interstitialplacement/InterstitialAd$InterstitialAdListener;)Lcom/verizon/ads/interstitialplacement/InterstitialAd;
    .locals 4

    .line 386
    invoke-direct {p0}, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->e()Lcom/verizon/ads/AdSession;

    move-result-object v0

    .line 389
    iget-object v1, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->g:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    if-nez v0, :cond_0

    .line 392
    sget-object p1, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->b:Lcom/verizon/ads/Logger;

    const-string v0, "No ads found in cache"

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 397
    :cond_0
    invoke-virtual {v0}, Lcom/verizon/ads/AdSession;->getAdAdapter()Lcom/verizon/ads/AdAdapter;

    const/4 v1, 0x3

    .line 399
    invoke-static {v1}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 400
    sget-object v1, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->b:Lcom/verizon/ads/Logger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v3, "Ad loaded from cache: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 403
    :cond_1
    new-instance v1, Lcom/verizon/ads/interstitialplacement/InterstitialAd;

    iget-object v2, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->e:Ljava/lang/String;

    invoke-direct {v1, v2, v0, p1}, Lcom/verizon/ads/interstitialplacement/InterstitialAd;-><init>(Ljava/lang/String;Lcom/verizon/ads/AdSession;Lcom/verizon/ads/interstitialplacement/InterstitialAd$InterstitialAdListener;)V

    return-object v1
.end method

.method public prefetch()V
    .locals 2

    .line 413
    iget-object v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->g:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setCacheReplenishmentThresholdOverride(I)V
    .locals 1

    const/4 v0, -0x1

    .line 637
    invoke-static {p1, v0}, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->a(II)I

    move-result p1

    iput p1, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->j:I

    return-void
.end method

.method public setListener(Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdFactoryListener;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->k:Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdFactoryListener;

    return-void
.end method

.method public setRequestMetaData(Lcom/verizon/ads/RequestMetadata;)V
    .locals 0

    .line 361
    iput-object p1, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;->l:Lcom/verizon/ads/RequestMetadata;

    return-void
.end method
