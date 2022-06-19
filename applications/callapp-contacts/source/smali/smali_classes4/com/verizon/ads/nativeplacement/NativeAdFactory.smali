.class public Lcom/verizon/ads/nativeplacement/NativeAdFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/ads/nativeplacement/NativeAdFactory$ProcessNextAdSessionMessage;,
        Lcom/verizon/ads/nativeplacement/NativeAdFactory$SendToDestinationMessage;,
        Lcom/verizon/ads/nativeplacement/NativeAdFactory$AdReceivedMessage;,
        Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;,
        Lcom/verizon/ads/nativeplacement/NativeAdFactory$CachedAd;,
        Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdFactoryListener;,
        Lcom/verizon/ads/nativeplacement/NativeAdFactory$AdDestination;
    }
.end annotation


# static fields
.field public static final ERROR_AD_LOAD_IN_PROGRESS:I = -0x2

.field public static final ERROR_NO_WATERFALL_PROVIDER:I = -0x1

.field private static final b:Lcom/verizon/ads/Logger;

.field private static final c:Ljava/lang/String;

.field private static final d:Landroid/os/HandlerThread;

.field private static final e:Ljava/util/concurrent/ExecutorService;


# instance fields
.field final a:Lcom/verizon/ads/support/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/verizon/ads/support/Cache<",
            "Lcom/verizon/ads/nativeplacement/NativeAdFactory$CachedAd;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/content/Context;

.field private final g:Ljava/lang/String;

.field private final h:[Ljava/lang/String;

.field private final i:Landroid/os/Handler;

.field private volatile j:Z

.field private volatile k:Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;

.field private volatile l:I

.field private m:Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdFactoryListener;

.field private n:Lcom/verizon/ads/RequestMetadata;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    const-class v0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v1

    sput-object v1, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->b:Lcom/verizon/ads/Logger;

    .line 45
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->c:Ljava/lang/String;

    .line 103
    new-instance v1, Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 104
    sput-object v1, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->d:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    const/4 v0, 0x1

    .line 107
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->e:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdFactoryListener;)V
    .locals 3

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->j:Z

    const/4 v1, -0x1

    .line 86
    iput v1, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->l:I

    const/4 v1, 0x3

    .line 252
    invoke-static {v1}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    sget-object v1, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->b:Lcom/verizon/ads/Logger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v0

    const-string v0, "Creating native ad factory for placement Id \'%s\'"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 256
    :cond_0
    iput-object p2, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->g:Ljava/lang/String;

    .line 257
    iput-object p1, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->f:Landroid/content/Context;

    if-eqz p3, :cond_1

    .line 258
    invoke-virtual {p3}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->h:[Ljava/lang/String;

    .line 259
    iput-object p4, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->m:Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdFactoryListener;

    .line 260
    new-instance p1, Lcom/verizon/ads/support/SimpleCache;

    invoke-direct {p1}, Lcom/verizon/ads/support/SimpleCache;-><init>()V

    iput-object p1, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->a:Lcom/verizon/ads/support/Cache;

    .line 261
    new-instance p1, Landroid/os/Handler;

    sget-object p2, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->d:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    new-instance p3, Lcom/verizon/ads/nativeplacement/-$$Lambda$NativeAdFactory$aGs_6ZhxsCh7R42kCzKCInWHr2I;

    invoke-direct {p3, p0}, Lcom/verizon/ads/nativeplacement/-$$Lambda$NativeAdFactory$aGs_6ZhxsCh7R42kCzKCInWHr2I;-><init>(Lcom/verizon/ads/nativeplacement/NativeAdFactory;)V

    invoke-direct {p1, p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->i:Landroid/os/Handler;

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

    const-string v0, "com.verizon.ads.nativeplacement"

    const-string v1, "nativeAdExpirationTimeout"

    const v2, 0x36ee80

    .line 955
    invoke-static {v0, v1, v2}, Lcom/verizon/ads/Configuration;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    .line 958
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    int-to-long v3, v0

    add-long/2addr v1, v3

    return-wide v1

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static a(Lcom/verizon/ads/RequestMetadata;Ljava/lang/String;[Ljava/lang/String;)Lcom/verizon/ads/RequestMetadata;
    .locals 3

    if-eqz p0, :cond_0

    goto :goto_0

    .line 978
    :cond_0
    invoke-static {}, Lcom/verizon/ads/VASAds;->getRequestMetadata()Lcom/verizon/ads/RequestMetadata;

    move-result-object p0

    :goto_0
    if-nez p2, :cond_1

    .line 982
    sget-object p1, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->b:Lcom/verizon/ads/Logger;

    const-string p2, "Requested native adTypes cannot be null"

    invoke-virtual {p1, p2}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    return-object p0

    :cond_1
    if-nez p1, :cond_2

    .line 988
    sget-object p1, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->b:Lcom/verizon/ads/Logger;

    const-string p2, "Placement id cannot be null"

    invoke-virtual {p1, p2}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    return-object p0

    .line 994
    :cond_2
    new-instance v0, Lcom/verizon/ads/RequestMetadata$Builder;

    invoke-direct {v0, p0}, Lcom/verizon/ads/RequestMetadata$Builder;-><init>(Lcom/verizon/ads/RequestMetadata;)V

    .line 997
    invoke-virtual {v0}, Lcom/verizon/ads/RequestMetadata$Builder;->getPlacementData()Ljava/util/Map;

    move-result-object p0

    if-nez p0, :cond_3

    .line 1000
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    :cond_3
    const-string v1, "type"

    const-string v2, "native"

    .line 1002
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "id"

    .line 1003
    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p2, "nativeTypes"

    .line 1007
    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1010
    invoke-virtual {v0, p0}, Lcom/verizon/ads/RequestMetadata$Builder;->setPlacementData(Ljava/util/Map;)Lcom/verizon/ads/RequestMetadata$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/verizon/ads/RequestMetadata$Builder;->build()Lcom/verizon/ads/RequestMetadata;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/verizon/ads/AdSession;Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;)V
    .locals 3

    if-nez p2, :cond_0

    .line 830
    sget-object p1, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->b:Lcom/verizon/ads/Logger;

    const-string p2, "NativeAdRequest cannot be null"

    invoke-virtual {p1, p2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 835
    :cond_0
    invoke-virtual {p1}, Lcom/verizon/ads/AdSession;->getAdAdapter()Lcom/verizon/ads/AdAdapter;

    const/4 v0, 0x3

    .line 837
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 838
    sget-object v0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->b:Lcom/verizon/ads/Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "Ad loaded: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 841
    :cond_1
    new-instance v0, Lcom/verizon/ads/nativeplacement/NativeAd;

    iget-object v1, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->g:Ljava/lang/String;

    iget-object p2, p2, Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;->a:Lcom/verizon/ads/nativeplacement/NativeAd$NativeAdListener;

    invoke-direct {v0, v1, p1, p2}, Lcom/verizon/ads/nativeplacement/NativeAd;-><init>(Ljava/lang/String;Lcom/verizon/ads/AdSession;Lcom/verizon/ads/nativeplacement/NativeAd$NativeAdListener;)V

    .line 844
    iget-object p1, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->m:Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdFactoryListener;

    if-eqz p1, :cond_2

    .line 846
    sget-object p2, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/verizon/ads/nativeplacement/NativeAdFactory$3;

    invoke-direct {v1, p0, p1, v0}, Lcom/verizon/ads/nativeplacement/NativeAdFactory$3;-><init>(Lcom/verizon/ads/nativeplacement/NativeAdFactory;Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdFactoryListener;Lcom/verizon/ads/nativeplacement/NativeAd;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method private static synthetic a(Lcom/verizon/ads/BidRequestListener;Lcom/verizon/ads/Bid;Lcom/verizon/ads/ErrorInfo;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eqz p2, :cond_2

    .line 2693
    invoke-static {v2}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2694
    sget-object p1, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->b:Lcom/verizon/ads/Logger;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    const-string v0, "Error requesting bid: %s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    :cond_0
    if-eqz p0, :cond_1

    .line 2698
    sget-object p1, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/verizon/ads/nativeplacement/NativeAdFactory$2;

    invoke-direct {v0, p0, p2}, Lcom/verizon/ads/nativeplacement/NativeAdFactory$2;-><init>(Lcom/verizon/ads/BidRequestListener;Lcom/verizon/ads/ErrorInfo;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void

    .line 3636
    :cond_2
    invoke-static {v2}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 3637
    sget-object p2, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->b:Lcom/verizon/ads/Logger;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string v0, "Bid received: %s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    :cond_3
    if-eqz p0, :cond_4

    .line 3641
    sget-object p2, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/verizon/ads/nativeplacement/NativeAdFactory$1;

    invoke-direct {v0, p0, p1}, Lcom/verizon/ads/nativeplacement/NativeAdFactory$1;-><init>(Lcom/verizon/ads/BidRequestListener;Lcom/verizon/ads/Bid;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method

.method private a(Lcom/verizon/ads/ErrorInfo;)V
    .locals 4

    const/4 v0, 0x3

    .line 860
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 861
    sget-object v0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->b:Lcom/verizon/ads/Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->g:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "Error occurred loading ad for placementId: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 864
    :cond_0
    invoke-direct {p0, p1}, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->b(Lcom/verizon/ads/ErrorInfo;)V

    return-void
.end method

.method private a(Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;)V
    .locals 5

    .line 527
    invoke-direct {p0, p1}, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->b(Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->n:Lcom/verizon/ads/RequestMetadata;

    iget-object v1, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->h:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->a(Lcom/verizon/ads/RequestMetadata;Ljava/lang/String;[Ljava/lang/String;)Lcom/verizon/ads/RequestMetadata;

    move-result-object v0

    .line 533
    iget-object v1, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->f:Landroid/content/Context;

    const-class v2, Lcom/verizon/ads/nativeplacement/NativeAd;

    invoke-static {}, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->f()I

    move-result v3

    new-instance v4, Lcom/verizon/ads/nativeplacement/-$$Lambda$NativeAdFactory$QUBC6N01R2Ny2F-NYu8IreLvDos;

    invoke-direct {v4, p0, p1}, Lcom/verizon/ads/nativeplacement/-$$Lambda$NativeAdFactory$QUBC6N01R2Ny2F-NYu8IreLvDos;-><init>(Lcom/verizon/ads/nativeplacement/NativeAdFactory;Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;)V

    invoke-static {v1, v2, v0, v3, v4}, Lcom/verizon/ads/VASAds;->requestAds(Landroid/content/Context;Ljava/lang/Class;Lcom/verizon/ads/RequestMetadata;ILcom/verizon/ads/VASAds$AdRequestListener;)V

    return-void
.end method

.method private a(Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;Lcom/verizon/ads/AdSession;)V
    .locals 5

    if-nez p2, :cond_0

    .line 767
    sget-object p1, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->b:Lcom/verizon/ads/Logger;

    const-string p2, "Unable to load components for null ad session."

    invoke-virtual {p1, p2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x3

    .line 772
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 773
    sget-object v0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->b:Lcom/verizon/ads/Logger;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Loading components for ad session: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 776
    :cond_1
    invoke-virtual {p2}, Lcom/verizon/ads/AdSession;->getAdAdapter()Lcom/verizon/ads/AdAdapter;

    move-result-object v0

    check-cast v0, Lcom/verizon/ads/nativeplacement/NativeAdAdapter;

    .line 777
    iget-boolean v1, p1, Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;->d:Z

    const/16 v2, 0x4e20

    const-string v3, "com.verizon.ads.nativeplacement"

    const-string v4, "nativeAdComponentsTimeout"

    .line 1970
    invoke-static {v3, v4, v2}, Lcom/verizon/ads/Configuration;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 777
    new-instance v3, Lcom/verizon/ads/nativeplacement/-$$Lambda$NativeAdFactory$Wv6njovS7blPaH5ONiPglDesNHk;

    invoke-direct {v3, p0, p1, p2}, Lcom/verizon/ads/nativeplacement/-$$Lambda$NativeAdFactory$Wv6njovS7blPaH5ONiPglDesNHk;-><init>(Lcom/verizon/ads/nativeplacement/NativeAdFactory;Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;Lcom/verizon/ads/AdSession;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/verizon/ads/nativeplacement/NativeAdAdapter;->loadComponents(ZILcom/verizon/ads/nativeplacement/NativeAdAdapter$LoadComponentsListener;)V

    return-void
.end method

.method private synthetic a(Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;Lcom/verizon/ads/AdSession;Lcom/verizon/ads/ErrorInfo;)V
    .locals 2

    .line 777
    iget-object v0, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->i:Landroid/os/Handler;

    new-instance v1, Lcom/verizon/ads/nativeplacement/NativeAdFactory$SendToDestinationMessage;

    invoke-direct {v1, p1, p2, p3}, Lcom/verizon/ads/nativeplacement/NativeAdFactory$SendToDestinationMessage;-><init>(Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;Lcom/verizon/ads/AdSession;Lcom/verizon/ads/ErrorInfo;)V

    const/4 p1, 0x5

    .line 778
    invoke-virtual {v0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 777
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private synthetic a(Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;Lcom/verizon/ads/AdSession;Lcom/verizon/ads/ErrorInfo;Z)V
    .locals 2

    .line 684
    iput-boolean p4, p1, Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;->b:Z

    .line 685
    iget-object v0, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->i:Landroid/os/Handler;

    new-instance v1, Lcom/verizon/ads/nativeplacement/NativeAdFactory$AdReceivedMessage;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/verizon/ads/nativeplacement/NativeAdFactory$AdReceivedMessage;-><init>(Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;Lcom/verizon/ads/AdSession;Lcom/verizon/ads/ErrorInfo;Z)V

    const/4 p1, 0x3

    .line 686
    invoke-virtual {v0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 685
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private a(Z)V
    .locals 3

    .line 603
    iget-object v0, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->k:Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;

    if-eqz v0, :cond_0

    .line 604
    sget-object p1, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->b:Lcom/verizon/ads/Logger;

    const-string v0, "Skipping cache replenishment as an ad request is already in progress."

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    return-void

    .line 1654
    :cond_0
    iget v0, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->l:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->l:I

    goto :goto_0

    :cond_1
    const-string v0, "com.verizon.ads.nativeplacement"

    const-string v1, "cacheReplenishmentThreshold"

    const/4 v2, 0x3

    .line 1655
    invoke-static {v0, v1, v2}, Lcom/verizon/ads/Configuration;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0, v2}, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->a(II)I

    move-result v0

    .line 611
    :goto_0
    iget-object v1, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->a:Lcom/verizon/ads/support/Cache;

    invoke-interface {v1}, Lcom/verizon/ads/support/Cache;->size()I

    move-result v1

    if-le v1, v0, :cond_2

    return-void

    .line 615
    :cond_2
    new-instance v0, Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;

    invoke-direct {v0, p1}, Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;-><init>(Z)V

    .line 616
    sget-object p1, Lcom/verizon/ads/nativeplacement/NativeAdFactory$AdDestination;->CACHE:Lcom/verizon/ads/nativeplacement/NativeAdFactory$AdDestination;

    iput-object p1, v0, Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;->f:Lcom/verizon/ads/nativeplacement/NativeAdFactory$AdDestination;

    .line 618
    invoke-direct {p0, v0}, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->a(Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;)V

    return-void
.end method

.method private synthetic a(Landroid/os/Message;)Z
    .locals 6

    .line 263
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 289
    sget-object v0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->b:Lcom/verizon/ads/Logger;

    new-array v3, v1, [Ljava/lang/Object;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    const-string p1, "Received unexpected message with what = %d"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 286
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->a(Z)V

    goto/16 :goto_4

    .line 283
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/verizon/ads/nativeplacement/NativeAdFactory$ProcessNextAdSessionMessage;

    .line 5544
    iget-object p1, p1, Lcom/verizon/ads/nativeplacement/NativeAdFactory$ProcessNextAdSessionMessage;->a:Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;

    .line 5546
    iget-boolean v0, p1, Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;->c:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->j:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5552
    :cond_0
    iget-object v0, p1, Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5553
    sget-object v0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->b:Lcom/verizon/ads/Logger;

    const-string v2, "No Ad Sessions queued for processing."

    invoke-virtual {v0, v2}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 5554
    iput-object v0, p1, Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;->g:Lcom/verizon/ads/AdSession;

    .line 5557
    iget-boolean p1, p1, Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;->b:Z

    if-eqz p1, :cond_11

    .line 5558
    invoke-direct {p0}, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->e()V

    goto/16 :goto_4

    .line 5564
    :cond_1
    iget-object v0, p1, Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;->h:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/verizon/ads/AdSession;

    iput-object v0, p1, Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;->g:Lcom/verizon/ads/AdSession;

    .line 5566
    iget-object v0, p1, Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;->g:Lcom/verizon/ads/AdSession;

    invoke-direct {p0, p1, v0}, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->a(Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;Lcom/verizon/ads/AdSession;)V

    goto/16 :goto_4

    .line 5547
    :cond_2
    :goto_0
    sget-object p1, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->b:Lcom/verizon/ads/Logger;

    const-string v0, "Ignoring process next ad session after abort or destroy."

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 280
    :pswitch_2
    invoke-direct {p0}, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->b()V

    goto/16 :goto_4

    .line 274
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/verizon/ads/nativeplacement/NativeAdFactory$SendToDestinationMessage;

    .line 4784
    iget-object v0, p1, Lcom/verizon/ads/nativeplacement/NativeAdFactory$SendToDestinationMessage;->a:Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;

    .line 4786
    iget-boolean v3, v0, Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;->c:Z

    if-nez v3, :cond_8

    iget-boolean v3, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->j:Z

    if-eqz v3, :cond_3

    goto :goto_2

    .line 4793
    :cond_3
    iget-object v3, p1, Lcom/verizon/ads/nativeplacement/NativeAdFactory$SendToDestinationMessage;->b:Lcom/verizon/ads/AdSession;

    .line 4795
    sget-object v4, Lcom/verizon/ads/nativeplacement/NativeAdFactory$AdDestination;->CACHE:Lcom/verizon/ads/nativeplacement/NativeAdFactory$AdDestination;

    iget-object v5, v0, Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;->f:Lcom/verizon/ads/nativeplacement/NativeAdFactory$AdDestination;

    invoke-virtual {v4, v5}, Lcom/verizon/ads/nativeplacement/NativeAdFactory$AdDestination;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v3, :cond_7

    const/4 p1, 0x3

    .line 4798
    invoke-static {p1}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 4799
    sget-object p1, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->b:Lcom/verizon/ads/Logger;

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v3, v4, v2

    const-string v2, "Caching ad session: %s"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 4802
    :cond_4
    iget-object p1, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->a:Lcom/verizon/ads/support/Cache;

    new-instance v2, Lcom/verizon/ads/nativeplacement/NativeAdFactory$CachedAd;

    invoke-static {}, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->a()J

    move-result-wide v4

    invoke-direct {v2, v3, v4, v5}, Lcom/verizon/ads/nativeplacement/NativeAdFactory$CachedAd;-><init>(Lcom/verizon/ads/AdSession;J)V

    invoke-interface {p1, v2}, Lcom/verizon/ads/support/Cache;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 4805
    :cond_5
    iget-object v2, p1, Lcom/verizon/ads/nativeplacement/NativeAdFactory$SendToDestinationMessage;->c:Lcom/verizon/ads/ErrorInfo;

    if-eqz v2, :cond_6

    .line 4808
    iget-boolean v2, v0, Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;->b:Z

    if-eqz v2, :cond_7

    iget-object v2, v0, Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4809
    iget-object p1, p1, Lcom/verizon/ads/nativeplacement/NativeAdFactory$SendToDestinationMessage;->c:Lcom/verizon/ads/ErrorInfo;

    invoke-direct {p0, p1}, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->a(Lcom/verizon/ads/ErrorInfo;)V

    .line 4810
    invoke-direct {p0}, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->e()V

    goto/16 :goto_4

    .line 4816
    :cond_6
    sget-object p1, Lcom/verizon/ads/nativeplacement/NativeAdFactory$AdDestination;->CACHE:Lcom/verizon/ads/nativeplacement/NativeAdFactory$AdDestination;

    iput-object p1, v0, Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;->f:Lcom/verizon/ads/nativeplacement/NativeAdFactory$AdDestination;

    .line 4818
    invoke-direct {p0, v3, v0}, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->a(Lcom/verizon/ads/AdSession;Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;)V

    .line 4823
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->i:Landroid/os/Handler;

    const/4 v2, 0x7

    new-instance v3, Lcom/verizon/ads/nativeplacement/NativeAdFactory$ProcessNextAdSessionMessage;

    invoke-direct {v3, v0}, Lcom/verizon/ads/nativeplacement/NativeAdFactory$ProcessNextAdSessionMessage;-><init>(Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;)V

    invoke-virtual {p1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_4

    .line 4787
    :cond_8
    :goto_2
    sget-object p1, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->b:Lcom/verizon/ads/Logger;

    const-string v0, "Ignoring send to destination notification after abort or destroy."

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 277
    :pswitch_4
    invoke-direct {p0}, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->d()V

    goto/16 :goto_4

    .line 271
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/verizon/ads/nativeplacement/NativeAdFactory$AdReceivedMessage;

    .line 4711
    iget-object v0, p1, Lcom/verizon/ads/nativeplacement/NativeAdFactory$AdReceivedMessage;->a:Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;

    .line 4713
    iget-boolean v2, v0, Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;->c:Z

    if-nez v2, :cond_d

    iget-boolean v2, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->j:Z

    if-eqz v2, :cond_9

    goto :goto_3

    .line 4720
    :cond_9
    iget-boolean v2, p1, Lcom/verizon/ads/nativeplacement/NativeAdFactory$AdReceivedMessage;->d:Z

    iput-boolean v2, v0, Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;->b:Z

    .line 4724
    iget-object v2, p1, Lcom/verizon/ads/nativeplacement/NativeAdFactory$AdReceivedMessage;->c:Lcom/verizon/ads/ErrorInfo;

    if-eqz v2, :cond_a

    .line 4726
    sget-object v2, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->b:Lcom/verizon/ads/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Server responded with an error when attempting to get native ads: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/verizon/ads/nativeplacement/NativeAdFactory$AdReceivedMessage;->c:Lcom/verizon/ads/ErrorInfo;

    invoke-virtual {v4}, Lcom/verizon/ads/ErrorInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    .line 4728
    invoke-direct {p0}, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->e()V

    .line 4730
    sget-object v2, Lcom/verizon/ads/nativeplacement/NativeAdFactory$AdDestination;->CALLBACK:Lcom/verizon/ads/nativeplacement/NativeAdFactory$AdDestination;

    iget-object v0, v0, Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;->f:Lcom/verizon/ads/nativeplacement/NativeAdFactory$AdDestination;

    invoke-virtual {v2, v0}, Lcom/verizon/ads/nativeplacement/NativeAdFactory$AdDestination;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4731
    iget-object p1, p1, Lcom/verizon/ads/nativeplacement/NativeAdFactory$AdReceivedMessage;->c:Lcom/verizon/ads/ErrorInfo;

    invoke-direct {p0, p1}, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->a(Lcom/verizon/ads/ErrorInfo;)V

    goto/16 :goto_4

    .line 4739
    :cond_a
    iget-boolean v2, v0, Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;->b:Z

    if-eqz v2, :cond_b

    iget-object v2, v0, Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, v0, Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;->g:Lcom/verizon/ads/AdSession;

    if-nez v2, :cond_b

    iget-object v2, p1, Lcom/verizon/ads/nativeplacement/NativeAdFactory$AdReceivedMessage;->b:Lcom/verizon/ads/AdSession;

    if-nez v2, :cond_b

    .line 4742
    invoke-direct {p0}, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->e()V

    goto/16 :goto_4

    .line 4748
    :cond_b
    iget-object v2, v0, Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;->g:Lcom/verizon/ads/AdSession;

    if-eqz v2, :cond_c

    .line 4749
    iget-object v2, p1, Lcom/verizon/ads/nativeplacement/NativeAdFactory$AdReceivedMessage;->b:Lcom/verizon/ads/AdSession;

    if-eqz v2, :cond_11

    .line 4750
    iget-object v0, v0, Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;->h:Ljava/util/List;

    iget-object p1, p1, Lcom/verizon/ads/nativeplacement/NativeAdFactory$AdReceivedMessage;->b:Lcom/verizon/ads/AdSession;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 4756
    :cond_c
    iget-object v2, p1, Lcom/verizon/ads/nativeplacement/NativeAdFactory$AdReceivedMessage;->b:Lcom/verizon/ads/AdSession;

    if-eqz v2, :cond_11

    .line 4757
    iget-object p1, p1, Lcom/verizon/ads/nativeplacement/NativeAdFactory$AdReceivedMessage;->b:Lcom/verizon/ads/AdSession;

    iput-object p1, v0, Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;->g:Lcom/verizon/ads/AdSession;

    .line 4759
    iget-object p1, v0, Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;->g:Lcom/verizon/ads/AdSession;

    invoke-direct {p0, v0, p1}, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->a(Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;Lcom/verizon/ads/AdSession;)V

    goto :goto_4

    .line 4714
    :cond_d
    :goto_3
    sget-object p1, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->b:Lcom/verizon/ads/Logger;

    const-string v0, "Ignoring ad received after abort or destroy."

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    goto :goto_4

    .line 268
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;

    .line 4669
    iget-boolean v0, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->j:Z

    if-eqz v0, :cond_e

    .line 4670
    sget-object p1, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->b:Lcom/verizon/ads/Logger;

    const-string v0, "Load Bid failed. Factory has been destroyed."

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    goto :goto_4

    .line 4676
    :cond_e
    invoke-direct {p0, p1}, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->b(Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4680
    sget-object v0, Lcom/verizon/ads/nativeplacement/NativeAdFactory$AdDestination;->CALLBACK:Lcom/verizon/ads/nativeplacement/NativeAdFactory$AdDestination;

    iput-object v0, p1, Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;->f:Lcom/verizon/ads/nativeplacement/NativeAdFactory$AdDestination;

    .line 4682
    iget-object v0, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->f:Landroid/content/Context;

    iget-object v2, p1, Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;->e:Lcom/verizon/ads/Bid;

    const-class v3, Lcom/verizon/ads/nativeplacement/NativeAd;

    invoke-static {}, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->f()I

    move-result v4

    new-instance v5, Lcom/verizon/ads/nativeplacement/-$$Lambda$NativeAdFactory$FLwOKkd-bpjb8bQikM8Nnu7dGZ8;

    invoke-direct {v5, p0, p1}, Lcom/verizon/ads/nativeplacement/-$$Lambda$NativeAdFactory$FLwOKkd-bpjb8bQikM8Nnu7dGZ8;-><init>(Lcom/verizon/ads/nativeplacement/NativeAdFactory;Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;)V

    invoke-static {v0, v2, v3, v4, v5}, Lcom/verizon/ads/VASAds;->requestAd(Landroid/content/Context;Lcom/verizon/ads/Bid;Ljava/lang/Class;ILcom/verizon/ads/VASAds$AdRequestListener;)V

    goto :goto_4

    .line 265
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;

    .line 4500
    iget-boolean v0, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->j:Z

    if-eqz v0, :cond_f

    .line 4501
    sget-object p1, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->b:Lcom/verizon/ads/Logger;

    const-string v0, "Load Ad failed. Factory has been destroyed."

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    goto :goto_4

    .line 4507
    :cond_f
    invoke-direct {p0}, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->c()Lcom/verizon/ads/AdSession;

    move-result-object v0

    .line 4509
    sget-object v2, Lcom/verizon/ads/nativeplacement/NativeAdFactory$AdDestination;->CALLBACK:Lcom/verizon/ads/nativeplacement/NativeAdFactory$AdDestination;

    iput-object v2, p1, Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;->f:Lcom/verizon/ads/nativeplacement/NativeAdFactory$AdDestination;

    if-eqz v0, :cond_10

    .line 4512
    invoke-direct {p0, v0, p1}, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->a(Lcom/verizon/ads/AdSession;Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;)V

    .line 4514
    iget-boolean p1, p1, Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;->d:Z

    invoke-direct {p0, p1}, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->a(Z)V

    goto :goto_4

    .line 4520
    :cond_10
    invoke-direct {p0, p1}, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->a(Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;)V

    :cond_11
    :goto_4
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b()V
    .locals 2

    .line 345
    iget-boolean v0, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->j:Z

    if-eqz v0, :cond_0

    .line 346
    sget-object v0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->b:Lcom/verizon/ads/Logger;

    const-string v1, "Factory has already been destroyed."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    return-void

    .line 352
    :cond_0
    invoke-direct {p0}, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->d()V

    .line 355
    iget-object v0, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->a:Lcom/verizon/ads/support/Cache;

    invoke-interface {v0}, Lcom/verizon/ads/support/Cache;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/verizon/ads/nativeplacement/NativeAdFactory$CachedAd;

    :goto_0
    if-eqz v0, :cond_1

    .line 358
    iget-object v0, v0, Lcom/verizon/ads/nativeplacement/NativeAdFactory$CachedAd;->a:Lcom/verizon/ads/AdSession;

    invoke-virtual {v0}, Lcom/verizon/ads/AdSession;->getAdAdapter()Lcom/verizon/ads/AdAdapter;

    move-result-object v0

    check-cast v0, Lcom/verizon/ads/nativeplacement/NativeAdAdapter;

    .line 359
    invoke-interface {v0}, Lcom/verizon/ads/nativeplacement/NativeAdAdapter;->release()V

    .line 362
    iget-object v0, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->a:Lcom/verizon/ads/support/Cache;

    invoke-interface {v0}, Lcom/verizon/ads/support/Cache;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/verizon/ads/nativeplacement/NativeAdFactory$CachedAd;

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 366
    iput-boolean v0, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->j:Z

    return-void
.end method

.method private b(Lcom/verizon/ads/ErrorInfo;)V
    .locals 3

    .line 937
    sget-object v0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->b:Lcom/verizon/ads/Logger;

    invoke-virtual {p1}, Lcom/verizon/ads/ErrorInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    .line 939
    iget-object v0, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->m:Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdFactoryListener;

    if-eqz v0, :cond_0

    .line 941
    sget-object v1, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/verizon/ads/nativeplacement/NativeAdFactory$4;

    invoke-direct {v2, p0, v0, p1}, Lcom/verizon/ads/nativeplacement/NativeAdFactory$4;-><init>(Lcom/verizon/ads/nativeplacement/NativeAdFactory;Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdFactoryListener;Lcom/verizon/ads/ErrorInfo;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic b(Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;Lcom/verizon/ads/AdSession;Lcom/verizon/ads/ErrorInfo;Z)V
    .locals 2

    .line 535
    iput-boolean p4, p1, Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;->b:Z

    .line 536
    iget-object v0, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->i:Landroid/os/Handler;

    new-instance v1, Lcom/verizon/ads/nativeplacement/NativeAdFactory$AdReceivedMessage;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/verizon/ads/nativeplacement/NativeAdFactory$AdReceivedMessage;-><init>(Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;Lcom/verizon/ads/AdSession;Lcom/verizon/ads/ErrorInfo;Z)V

    const/4 p1, 0x3

    .line 537
    invoke-virtual {v0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 536
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private b(Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;)Z
    .locals 3

    .line 921
    iget-object v0, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->k:Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;

    if-eqz v0, :cond_0

    .line 922
    new-instance p1, Lcom/verizon/ads/ErrorInfo;

    sget-object v0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->c:Ljava/lang/String;

    const/4 v1, -0x2

    const-string v2, "Only one active load request allowed at a time"

    invoke-direct {p1, v0, v2, v1}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 924
    invoke-direct {p0, p1}, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->b(Lcom/verizon/ads/ErrorInfo;)V

    const/4 p1, 0x0

    return p1

    .line 929
    :cond_0
    iput-object p1, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->k:Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;

    const/4 p1, 0x1

    return p1
.end method

.method private c()Lcom/verizon/ads/AdSession;
    .locals 6

    .line 575
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->a:Lcom/verizon/ads/support/Cache;

    invoke-interface {v0}, Lcom/verizon/ads/support/Cache;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/verizon/ads/nativeplacement/NativeAdFactory$CachedAd;

    if-eqz v0, :cond_1

    .line 580
    iget-wide v1, v0, Lcom/verizon/ads/nativeplacement/NativeAdFactory$CachedAd;->b:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/verizon/ads/nativeplacement/NativeAdFactory$CachedAd;->b:J

    cmp-long v5, v1, v3

    if-ltz v5, :cond_1

    const/4 v0, 0x3

    .line 584
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    sget-object v0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->b:Lcom/verizon/ads/Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->g:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "Ad in cache expired for placementId: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 591
    sget-object v0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->b:Lcom/verizon/ads/Logger;

    const-string v1, "No ads in cache."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->i(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 596
    :cond_2
    iget-object v0, v0, Lcom/verizon/ads/nativeplacement/NativeAdFactory$CachedAd;->a:Lcom/verizon/ads/AdSession;

    return-object v0
.end method

.method private d()V
    .locals 5

    .line 870
    iget-boolean v0, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->j:Z

    if-eqz v0, :cond_0

    .line 871
    sget-object v0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->b:Lcom/verizon/ads/Logger;

    const-string v1, "Abort failed. Factory has been destroyed."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x3

    .line 876
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 877
    sget-object v0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->b:Lcom/verizon/ads/Logger;

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->g:Ljava/lang/String;

    aput-object v4, v2, v3

    const-string v3, "Aborting load request for placementId: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 880
    :cond_1
    iget-object v0, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->k:Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;

    if-nez v0, :cond_2

    .line 881
    sget-object v0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->b:Lcom/verizon/ads/Logger;

    const-string v1, "No active load to abort"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    return-void

    .line 886
    :cond_2
    iget-object v0, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->k:Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;

    iget-object v0, v0, Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;->g:Lcom/verizon/ads/AdSession;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->k:Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;

    iget-object v0, v0, Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;->g:Lcom/verizon/ads/AdSession;

    .line 887
    invoke-virtual {v0}, Lcom/verizon/ads/AdSession;->getAdAdapter()Lcom/verizon/ads/AdAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 889
    iget-object v0, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->k:Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;

    iget-object v0, v0, Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;->g:Lcom/verizon/ads/AdSession;

    .line 890
    invoke-virtual {v0}, Lcom/verizon/ads/AdSession;->getAdAdapter()Lcom/verizon/ads/AdAdapter;

    move-result-object v0

    check-cast v0, Lcom/verizon/ads/nativeplacement/NativeAdAdapter;

    .line 892
    invoke-interface {v0}, Lcom/verizon/ads/nativeplacement/NativeAdAdapter;->abortLoadComponents()V

    .line 895
    :cond_3
    iget-object v0, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->k:Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;

    iget-object v0, v0, Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;->h:Ljava/util/List;

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

    .line 897
    invoke-virtual {v2}, Lcom/verizon/ads/AdSession;->getAdAdapter()Lcom/verizon/ads/AdAdapter;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 898
    invoke-virtual {v2}, Lcom/verizon/ads/AdSession;->getAdAdapter()Lcom/verizon/ads/AdAdapter;

    move-result-object v2

    check-cast v2, Lcom/verizon/ads/nativeplacement/NativeAdAdapter;

    .line 899
    invoke-interface {v2}, Lcom/verizon/ads/nativeplacement/NativeAdAdapter;->abortLoadComponents()V

    goto :goto_0

    .line 903
    :cond_5
    iget-object v0, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->k:Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;

    iput-boolean v1, v0, Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;->c:Z

    .line 906
    invoke-direct {p0}, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->e()V

    return-void
.end method

.method private e()V
    .locals 2

    .line 912
    sget-object v0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->b:Lcom/verizon/ads/Logger;

    const-string v1, "Clearing the active ad request."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 914
    iput-object v0, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->k:Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;

    return-void
.end method

.method private static f()I
    .locals 3

    const-string v0, "com.verizon.ads.nativeplacement"

    const-string v1, "nativeAdRequestTimeout"

    const/16 v2, 0x7530

    .line 964
    invoke-static {v0, v1, v2}, Lcom/verizon/ads/Configuration;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static synthetic lambda$FLwOKkd-bpjb8bQikM8Nnu7dGZ8(Lcom/verizon/ads/nativeplacement/NativeAdFactory;Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;Lcom/verizon/ads/AdSession;Lcom/verizon/ads/ErrorInfo;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->a(Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;Lcom/verizon/ads/AdSession;Lcom/verizon/ads/ErrorInfo;Z)V

    return-void
.end method

.method public static synthetic lambda$HhylDZqh2bmyc4jXhDA6hj7C3FY(Lcom/verizon/ads/BidRequestListener;Lcom/verizon/ads/Bid;Lcom/verizon/ads/ErrorInfo;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->a(Lcom/verizon/ads/BidRequestListener;Lcom/verizon/ads/Bid;Lcom/verizon/ads/ErrorInfo;)V

    return-void
.end method

.method public static synthetic lambda$QUBC6N01R2Ny2F-NYu8IreLvDos(Lcom/verizon/ads/nativeplacement/NativeAdFactory;Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;Lcom/verizon/ads/AdSession;Lcom/verizon/ads/ErrorInfo;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->b(Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;Lcom/verizon/ads/AdSession;Lcom/verizon/ads/ErrorInfo;Z)V

    return-void
.end method

.method public static synthetic lambda$Wv6njovS7blPaH5ONiPglDesNHk(Lcom/verizon/ads/nativeplacement/NativeAdFactory;Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;Lcom/verizon/ads/AdSession;Lcom/verizon/ads/ErrorInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->a(Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;Lcom/verizon/ads/AdSession;Lcom/verizon/ads/ErrorInfo;)V

    return-void
.end method

.method public static synthetic lambda$aGs_6ZhxsCh7R42kCzKCInWHr2I(Lcom/verizon/ads/nativeplacement/NativeAdFactory;Landroid/os/Message;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->a(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static requestBid(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcom/verizon/ads/RequestMetadata;Lcom/verizon/ads/BidRequestListener;)V
    .locals 0

    .line 311
    invoke-static {p3, p1, p2}, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->a(Lcom/verizon/ads/RequestMetadata;Ljava/lang/String;[Ljava/lang/String;)Lcom/verizon/ads/RequestMetadata;

    move-result-object p1

    invoke-static {}, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->f()I

    move-result p2

    new-instance p3, Lcom/verizon/ads/nativeplacement/-$$Lambda$NativeAdFactory$HhylDZqh2bmyc4jXhDA6hj7C3FY;

    invoke-direct {p3, p4}, Lcom/verizon/ads/nativeplacement/-$$Lambda$NativeAdFactory$HhylDZqh2bmyc4jXhDA6hj7C3FY;-><init>(Lcom/verizon/ads/BidRequestListener;)V

    invoke-static {p0, p1, p2, p3}, Lcom/verizon/ads/VASAds;->requestBid(Landroid/content/Context;Lcom/verizon/ads/RequestMetadata;ILcom/verizon/ads/BidRequestListener;)V

    return-void
.end method


# virtual methods
.method public abortLoad()V
    .locals 2

    .line 494
    iget-object v0, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->i:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public destroy()V
    .locals 2

    .line 339
    iget-object v0, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->i:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public getPlacementId()Ljava/lang/String;
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestMetadata()Lcom/verizon/ads/RequestMetadata;
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->n:Lcom/verizon/ads/RequestMetadata;

    return-object v0
.end method

.method public load(Lcom/verizon/ads/Bid;Lcom/verizon/ads/nativeplacement/NativeAd$NativeAdListener;)V
    .locals 3

    .line 462
    iget-object v0, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->i:Landroid/os/Handler;

    new-instance v1, Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, p2}, Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;-><init>(Lcom/verizon/ads/Bid;ZLcom/verizon/ads/nativeplacement/NativeAd$NativeAdListener;)V

    const/4 p1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public load(Lcom/verizon/ads/nativeplacement/NativeAd$NativeAdListener;)V
    .locals 3

    .line 410
    iget-object v0, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->i:Landroid/os/Handler;

    new-instance v1, Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;-><init>(ZLcom/verizon/ads/nativeplacement/NativeAd$NativeAdListener;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public loadAdFromCache(Lcom/verizon/ads/nativeplacement/NativeAd$NativeAdListener;)Lcom/verizon/ads/nativeplacement/NativeAd;
    .locals 4

    .line 423
    invoke-direct {p0}, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->c()Lcom/verizon/ads/AdSession;

    move-result-object v0

    .line 426
    iget-object v1, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->i:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    if-nez v0, :cond_0

    .line 429
    sget-object p1, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->b:Lcom/verizon/ads/Logger;

    const-string v0, "No ads found in cache"

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 434
    :cond_0
    invoke-virtual {v0}, Lcom/verizon/ads/AdSession;->getAdAdapter()Lcom/verizon/ads/AdAdapter;

    const/4 v1, 0x3

    .line 436
    invoke-static {v1}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 437
    sget-object v1, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->b:Lcom/verizon/ads/Logger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v3, "Ad loaded from cache: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 440
    :cond_1
    new-instance v1, Lcom/verizon/ads/nativeplacement/NativeAd;

    iget-object v2, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->g:Ljava/lang/String;

    invoke-direct {v1, v2, v0, p1}, Lcom/verizon/ads/nativeplacement/NativeAd;-><init>(Ljava/lang/String;Lcom/verizon/ads/AdSession;Lcom/verizon/ads/nativeplacement/NativeAd$NativeAdListener;)V

    return-object v1
.end method

.method public loadWithoutAssets(Lcom/verizon/ads/Bid;Lcom/verizon/ads/nativeplacement/NativeAd$NativeAdListener;)V
    .locals 3

    .line 485
    iget-object v0, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->i:Landroid/os/Handler;

    new-instance v1, Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2, p2}, Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;-><init>(Lcom/verizon/ads/Bid;ZLcom/verizon/ads/nativeplacement/NativeAd$NativeAdListener;)V

    const/4 p1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public loadWithoutAssets(Lcom/verizon/ads/nativeplacement/NativeAd$NativeAdListener;)V
    .locals 3

    .line 473
    iget-object v0, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->i:Landroid/os/Handler;

    new-instance v1, Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;-><init>(ZLcom/verizon/ads/nativeplacement/NativeAd$NativeAdListener;)V

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public prefetch()V
    .locals 2

    .line 450
    iget-object v0, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->i:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setCacheReplenishmentThresholdOverride(I)V
    .locals 1

    const/4 v0, -0x1

    .line 630
    invoke-static {p1, v0}, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->a(II)I

    move-result p1

    iput p1, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->l:I

    return-void
.end method

.method public setListener(Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdFactoryListener;)V
    .locals 0

    .line 377
    iput-object p1, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->m:Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdFactoryListener;

    return-void
.end method

.method public setRequestMetaData(Lcom/verizon/ads/RequestMetadata;)V
    .locals 0

    .line 388
    iput-object p1, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->n:Lcom/verizon/ads/RequestMetadata;

    return-void
.end method
