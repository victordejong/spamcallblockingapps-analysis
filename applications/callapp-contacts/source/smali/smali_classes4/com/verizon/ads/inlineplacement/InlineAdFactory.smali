.class public Lcom/verizon/ads/inlineplacement/InlineAdFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/ads/inlineplacement/InlineAdFactory$ProcessNextAdSessionMessage;,
        Lcom/verizon/ads/inlineplacement/InlineAdFactory$SendToDestinationMessage;,
        Lcom/verizon/ads/inlineplacement/InlineAdFactory$AdReceivedMessage;,
        Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;,
        Lcom/verizon/ads/inlineplacement/InlineAdFactory$RefreshAdRequest;,
        Lcom/verizon/ads/inlineplacement/InlineAdFactory$AdDestination;,
        Lcom/verizon/ads/inlineplacement/InlineAdFactory$CachedAd;,
        Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdFactoryListener;
    }
.end annotation


# static fields
.field public static final ERROR_AD_LOAD_IN_PROGRESS:I = -0x3

.field public static final ERROR_NO_WATERFALL_PROVIDER:I = -0x1

.field static final a:Lcom/verizon/ads/Logger;

.field private static final c:Landroid/os/HandlerThread;

.field private static final d:Ljava/util/concurrent/ExecutorService;


# instance fields
.field final b:Landroid/os/Handler;

.field private final e:Ljava/lang/String;

.field private final f:Landroid/content/Context;

.field private final g:Lcom/verizon/ads/support/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/verizon/ads/support/Cache<",
            "Lcom/verizon/ads/inlineplacement/InlineAdFactory$CachedAd;",
            ">;"
        }
    .end annotation
.end field

.field private volatile h:Z

.field private volatile i:Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;

.field private volatile j:I

.field private k:Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdFactoryListener;

.field private l:Lcom/verizon/ads/RequestMetadata;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/verizon/ads/inlineplacement/AdSize;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    const-class v0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v1

    sput-object v1, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->a:Lcom/verizon/ads/Logger;

    .line 107
    new-instance v1, Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 108
    sput-object v1, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    const/4 v0, 0x1

    .line 111
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->d:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdFactoryListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/verizon/ads/inlineplacement/AdSize;",
            ">;",
            "Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdFactoryListener;",
            ")V"
        }
    .end annotation

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->h:Z

    const/4 v1, -0x1

    .line 85
    iput v1, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->j:I

    const/4 v1, 0x3

    .line 128
    invoke-static {v1}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    sget-object v1, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->a:Lcom/verizon/ads/Logger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v0

    const-string v0, "Creating inline ad factory for placement Id \'%s\'"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 132
    :cond_0
    iput-object p2, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->e:Ljava/lang/String;

    .line 133
    iput-object p1, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->f:Landroid/content/Context;

    .line 134
    iput-object p4, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->k:Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdFactoryListener;

    .line 135
    iput-object p3, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->m:Ljava/util/List;

    .line 136
    new-instance p1, Lcom/verizon/ads/support/SimpleCache;

    invoke-direct {p1}, Lcom/verizon/ads/support/SimpleCache;-><init>()V

    iput-object p1, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->g:Lcom/verizon/ads/support/Cache;

    .line 138
    new-instance p1, Landroid/os/Handler;

    sget-object p2, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->c:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    new-instance p3, Lcom/verizon/ads/inlineplacement/-$$Lambda$InlineAdFactory$RANw6cQmuBJPmf3RsmQ4M19kGnI;

    invoke-direct {p3, p0}, Lcom/verizon/ads/inlineplacement/-$$Lambda$InlineAdFactory$RANw6cQmuBJPmf3RsmQ4M19kGnI;-><init>(Lcom/verizon/ads/inlineplacement/InlineAdFactory;)V

    invoke-direct {p1, p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->b:Landroid/os/Handler;

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

.method static synthetic a(Lcom/verizon/ads/inlineplacement/InlineAdFactory;)Landroid/content/Context;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->f:Landroid/content/Context;

    return-object p0
.end method

.method private static a(Lcom/verizon/ads/RequestMetadata;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;)Lcom/verizon/ads/RequestMetadata;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/verizon/ads/RequestMetadata;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/verizon/ads/inlineplacement/AdSize;",
            ">;",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/verizon/ads/RequestMetadata;"
        }
    .end annotation

    if-eqz p0, :cond_0

    goto :goto_0

    .line 218
    :cond_0
    invoke-static {}, Lcom/verizon/ads/VASAds;->getRequestMetadata()Lcom/verizon/ads/RequestMetadata;

    move-result-object p0

    :goto_0
    if-eqz p2, :cond_8

    .line 220
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_3

    :cond_1
    if-nez p1, :cond_2

    .line 227
    sget-object p1, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->a:Lcom/verizon/ads/Logger;

    const-string p2, "Placement id cannot be null"

    invoke-virtual {p1, p2}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    return-object p0

    .line 232
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 234
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/verizon/ads/inlineplacement/AdSize;

    .line 235
    iget v2, v1, Lcom/verizon/ads/inlineplacement/AdSize;->b:I

    if-lez v2, :cond_4

    iget v2, v1, Lcom/verizon/ads/inlineplacement/AdSize;->a:I

    if-gtz v2, :cond_3

    goto :goto_2

    .line 241
    :cond_3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 236
    :cond_4
    :goto_2
    sget-object v2, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->a:Lcom/verizon/ads/Logger;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Ad size dimensions must be greater than zero.  Not using AdSize: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    goto :goto_1

    .line 245
    :cond_5
    new-instance p2, Lcom/verizon/ads/RequestMetadata$Builder;

    invoke-direct {p2, p0}, Lcom/verizon/ads/RequestMetadata$Builder;-><init>(Lcom/verizon/ads/RequestMetadata;)V

    .line 248
    invoke-virtual {p2}, Lcom/verizon/ads/RequestMetadata$Builder;->getPlacementData()Ljava/util/Map;

    move-result-object p0

    if-nez p0, :cond_6

    .line 251
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    :cond_6
    const-string v1, "type"

    const-string v2, "inline"

    .line 254
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "id"

    .line 255
    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    invoke-static {v0}, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    const-string v0, "adSizes"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_7

    const-string p1, "refreshRate"

    .line 260
    invoke-interface {p0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    :cond_7
    invoke-virtual {p2, p0}, Lcom/verizon/ads/RequestMetadata$Builder;->setPlacementData(Ljava/util/Map;)Lcom/verizon/ads/RequestMetadata$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/verizon/ads/RequestMetadata$Builder;->build()Lcom/verizon/ads/RequestMetadata;

    move-result-object p0

    return-object p0

    .line 221
    :cond_8
    :goto_3
    sget-object p1, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->a:Lcom/verizon/ads/Logger;

    const-string p2, "AdSizes cannot be null or empty"

    invoke-virtual {p1, p2}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    return-object p0
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/verizon/ads/inlineplacement/AdSize;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 270
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 271
    sget-object p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->a:Lcom/verizon/ads/Logger;

    const-string v0, "AdSizes array cannot be null or empty"

    invoke-virtual {p0, v0}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    return-object v1

    .line 276
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 278
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/verizon/ads/inlineplacement/AdSize;

    if-nez v2, :cond_1

    .line 1289
    sget-object v2, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->a:Lcom/verizon/ads/Logger;

    const-string v3, "AdSize cannot be null"

    invoke-virtual {v2, v3}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    move-object v3, v1

    goto :goto_1

    .line 1294
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1295
    iget v4, v2, Lcom/verizon/ads/inlineplacement/AdSize;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "h"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1296
    iget v2, v2, Lcom/verizon/ads/inlineplacement/AdSize;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "w"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    :goto_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method static synthetic a()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 43
    sget-object v0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->d:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method private a(Lcom/verizon/ads/AdSession;Lcom/verizon/ads/inlineplacement/InlineAdView$InlineAdListener;Lcom/verizon/ads/inlineplacement/InlineAdView;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eqz p3, :cond_1

    .line 887
    invoke-static {v2}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 888
    sget-object p2, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->a:Lcom/verizon/ads/Logger;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string v0, "Ad refreshed: %s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 2506
    :cond_0
    sget-object p2, Lcom/verizon/ads/inlineplacement/InlineAdView;->b:Landroid/os/Handler;

    new-instance v0, Lcom/verizon/ads/inlineplacement/InlineAdView$2;

    invoke-direct {v0, p3, p1}, Lcom/verizon/ads/inlineplacement/InlineAdView$2;-><init>(Lcom/verizon/ads/inlineplacement/InlineAdView;Lcom/verizon/ads/AdSession;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 896
    :cond_1
    invoke-static {v2}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 897
    sget-object p3, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->a:Lcom/verizon/ads/Logger;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string v0, "Ad loaded: %s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 900
    :cond_2
    new-instance p3, Lcom/verizon/ads/inlineplacement/InlineAdFactory$3;

    invoke-direct {p3, p0, p1, p2}, Lcom/verizon/ads/inlineplacement/InlineAdFactory$3;-><init>(Lcom/verizon/ads/inlineplacement/InlineAdFactory;Lcom/verizon/ads/AdSession;Lcom/verizon/ads/inlineplacement/InlineAdView$InlineAdListener;)V

    invoke-static {p3}, Lcom/verizon/ads/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic a(Lcom/verizon/ads/BidRequestListener;Lcom/verizon/ads/Bid;Lcom/verizon/ads/ErrorInfo;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eqz p2, :cond_2

    .line 3322
    invoke-static {v2}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3323
    sget-object p1, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->a:Lcom/verizon/ads/Logger;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    const-string v0, "Error requesting bid: %s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    :cond_0
    if-eqz p0, :cond_1

    .line 3327
    sget-object p1, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$2;

    invoke-direct {v0, p0, p2}, Lcom/verizon/ads/inlineplacement/InlineAdFactory$2;-><init>(Lcom/verizon/ads/BidRequestListener;Lcom/verizon/ads/ErrorInfo;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void

    .line 4304
    :cond_2
    invoke-static {v2}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 4305
    sget-object p2, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->a:Lcom/verizon/ads/Logger;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string v0, "Bid received: %s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    :cond_3
    if-eqz p0, :cond_4

    .line 4309
    sget-object p2, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$1;

    invoke-direct {v0, p0, p1}, Lcom/verizon/ads/inlineplacement/InlineAdFactory$1;-><init>(Lcom/verizon/ads/BidRequestListener;Lcom/verizon/ads/Bid;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method

.method private a(Lcom/verizon/ads/ErrorInfo;)V
    .locals 4

    const/4 v0, 0x3

    .line 925
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 926
    sget-object v0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->a:Lcom/verizon/ads/Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->e:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "Error occurred loading ad for placementId: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 929
    :cond_0
    invoke-direct {p0, p1}, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->b(Lcom/verizon/ads/ErrorInfo;)V

    return-void
.end method

.method private a(Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;)V
    .locals 5

    .line 667
    invoke-direct {p0, p1}, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->c(Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 673
    instance-of v1, p1, Lcom/verizon/ads/inlineplacement/InlineAdFactory$RefreshAdRequest;

    if-eqz v1, :cond_1

    .line 674
    move-object v0, p1

    check-cast v0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$RefreshAdRequest;

    .line 675
    iget-object v0, v0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$RefreshAdRequest;->h:Lcom/verizon/ads/inlineplacement/InlineAdView;

    iget-object v0, v0, Lcom/verizon/ads/inlineplacement/InlineAdView;->f:Ljava/lang/Integer;

    .line 678
    :cond_1
    iget-object v1, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->l:Lcom/verizon/ads/RequestMetadata;

    iget-object v2, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->m:Ljava/util/List;

    invoke-static {v1, v2, v3, v0}, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->a(Lcom/verizon/ads/RequestMetadata;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;)Lcom/verizon/ads/RequestMetadata;

    move-result-object v0

    .line 680
    iget-object v1, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->f:Landroid/content/Context;

    const-class v2, Lcom/verizon/ads/inlineplacement/InlineAdView;

    invoke-static {}, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->b()I

    move-result v3

    new-instance v4, Lcom/verizon/ads/inlineplacement/-$$Lambda$InlineAdFactory$VMK9U7D14tCQcKYx3BW-EE0p3yY;

    invoke-direct {v4, p0, p1}, Lcom/verizon/ads/inlineplacement/-$$Lambda$InlineAdFactory$VMK9U7D14tCQcKYx3BW-EE0p3yY;-><init>(Lcom/verizon/ads/inlineplacement/InlineAdFactory;Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;)V

    invoke-static {v1, v2, v0, v3, v4}, Lcom/verizon/ads/VASAds;->requestAds(Landroid/content/Context;Ljava/lang/Class;Lcom/verizon/ads/RequestMetadata;ILcom/verizon/ads/VASAds$AdRequestListener;)V

    return-void
.end method

.method private synthetic a(Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;Lcom/verizon/ads/AdSession;Lcom/verizon/ads/ErrorInfo;)V
    .locals 2

    .line 766
    iget-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->b:Landroid/os/Handler;

    new-instance v1, Lcom/verizon/ads/inlineplacement/InlineAdFactory$SendToDestinationMessage;

    invoke-direct {v1, p1, p2, p3}, Lcom/verizon/ads/inlineplacement/InlineAdFactory$SendToDestinationMessage;-><init>(Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;Lcom/verizon/ads/AdSession;Lcom/verizon/ads/ErrorInfo;)V

    const/4 p1, 0x6

    .line 767
    invoke-virtual {v0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 766
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private synthetic a(Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;Lcom/verizon/ads/AdSession;Lcom/verizon/ads/ErrorInfo;Z)V
    .locals 2

    .line 681
    iget-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->b:Landroid/os/Handler;

    new-instance v1, Lcom/verizon/ads/inlineplacement/InlineAdFactory$AdReceivedMessage;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/verizon/ads/inlineplacement/InlineAdFactory$AdReceivedMessage;-><init>(Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;Lcom/verizon/ads/AdSession;Lcom/verizon/ads/ErrorInfo;Z)V

    const/4 p1, 0x4

    .line 682
    invoke-virtual {v0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 681
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private synthetic a(Landroid/os/Message;)Z
    .locals 9

    .line 140
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    .line 169
    :pswitch_0
    sget-object v0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->a:Lcom/verizon/ads/Logger;

    new-array v3, v2, [Ljava/lang/Object;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    const-string p1, "Received unexpected message with what = %d"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 166
    :pswitch_1
    invoke-direct {p0}, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->d()V

    goto/16 :goto_5

    .line 163
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/verizon/ads/inlineplacement/InlineAdFactory$ProcessNextAdSessionMessage;

    .line 5827
    iget-object p1, p1, Lcom/verizon/ads/inlineplacement/InlineAdFactory$ProcessNextAdSessionMessage;->a:Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;

    .line 5829
    iget-boolean v0, p1, Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;->b:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->h:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5835
    :cond_0
    iget-object v0, p1, Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5836
    sget-object v0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->a:Lcom/verizon/ads/Logger;

    const-string v1, "No Ad Sessions queued for processing."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 5837
    iput-object v3, p1, Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;->e:Lcom/verizon/ads/AdSession;

    .line 5839
    iget-boolean p1, p1, Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;->a:Z

    if-eqz p1, :cond_17

    .line 5840
    invoke-direct {p0}, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->e()V

    goto/16 :goto_5

    .line 5846
    :cond_1
    iget-object v0, p1, Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/verizon/ads/AdSession;

    iput-object v0, p1, Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;->e:Lcom/verizon/ads/AdSession;

    .line 5848
    invoke-direct {p0, p1}, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->b(Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;)V

    goto/16 :goto_5

    .line 5830
    :cond_2
    :goto_0
    sget-object p1, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->a:Lcom/verizon/ads/Logger;

    const-string v0, "Ignoring process next ad session after abort or destroy."

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 160
    :pswitch_3
    invoke-direct {p0}, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->c()V

    goto/16 :goto_5

    .line 157
    :pswitch_4
    invoke-direct {p0}, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->g()V

    goto/16 :goto_5

    .line 154
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/verizon/ads/inlineplacement/InlineAdFactory$SendToDestinationMessage;

    .line 4773
    iget-object v0, p1, Lcom/verizon/ads/inlineplacement/InlineAdFactory$SendToDestinationMessage;->a:Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;

    .line 4775
    iget-boolean v4, v0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;->b:Z

    if-nez v4, :cond_b

    iget-boolean v4, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->h:Z

    if-eqz v4, :cond_3

    goto/16 :goto_3

    .line 4782
    :cond_3
    iget-boolean v4, v0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;->a:Z

    if-eqz v4, :cond_4

    .line 4783
    invoke-direct {p0}, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->e()V

    .line 4787
    :cond_4
    iget-object v4, p1, Lcom/verizon/ads/inlineplacement/InlineAdFactory$SendToDestinationMessage;->c:Lcom/verizon/ads/AdSession;

    .line 4789
    sget-object v5, Lcom/verizon/ads/inlineplacement/InlineAdFactory$AdDestination;->CACHE:Lcom/verizon/ads/inlineplacement/InlineAdFactory$AdDestination;

    iget-object v6, v0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;->d:Lcom/verizon/ads/inlineplacement/InlineAdFactory$AdDestination;

    invoke-virtual {v5, v6}, Lcom/verizon/ads/inlineplacement/InlineAdFactory$AdDestination;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    if-eqz v4, :cond_a

    const/4 p1, 0x3

    .line 4792
    invoke-static {p1}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 4793
    sget-object p1, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->a:Lcom/verizon/ads/Logger;

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v4, v3, v1

    const-string v1, "Caching ad session: %s"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 4796
    :cond_5
    iget-object p1, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->g:Lcom/verizon/ads/support/Cache;

    new-instance v1, Lcom/verizon/ads/inlineplacement/InlineAdFactory$CachedAd;

    const v3, 0x36ee80

    const-string v5, "com.verizon.ads.inlineplacement"

    const-string v6, "inlineAdExpirationTimeout"

    .line 5341
    invoke-static {v5, v6, v3}, Lcom/verizon/ads/Configuration;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_6

    .line 5344
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    int-to-long v7, v3

    add-long/2addr v5, v7

    goto :goto_1

    :cond_6
    const-wide/16 v5, 0x0

    .line 4796
    :goto_1
    invoke-direct {v1, v4, v5, v6}, Lcom/verizon/ads/inlineplacement/InlineAdFactory$CachedAd;-><init>(Lcom/verizon/ads/AdSession;J)V

    invoke-interface {p1, v1}, Lcom/verizon/ads/support/Cache;->add(Ljava/lang/Object;)V

    goto :goto_2

    .line 4799
    :cond_7
    iget-object v1, p1, Lcom/verizon/ads/inlineplacement/InlineAdFactory$SendToDestinationMessage;->b:Lcom/verizon/ads/ErrorInfo;

    if-eqz v1, :cond_8

    .line 4800
    iget-boolean v1, v0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;->a:Z

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 4801
    iget-object p1, p1, Lcom/verizon/ads/inlineplacement/InlineAdFactory$SendToDestinationMessage;->b:Lcom/verizon/ads/ErrorInfo;

    invoke-direct {p0, p1}, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->a(Lcom/verizon/ads/ErrorInfo;)V

    .line 4802
    invoke-direct {p0}, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->e()V

    goto/16 :goto_5

    .line 4808
    :cond_8
    sget-object p1, Lcom/verizon/ads/inlineplacement/InlineAdFactory$AdDestination;->CACHE:Lcom/verizon/ads/inlineplacement/InlineAdFactory$AdDestination;

    iput-object p1, v0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;->d:Lcom/verizon/ads/inlineplacement/InlineAdFactory$AdDestination;

    .line 4812
    instance-of p1, v0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$RefreshAdRequest;

    if-eqz p1, :cond_9

    .line 4813
    move-object p1, v0

    check-cast p1, Lcom/verizon/ads/inlineplacement/InlineAdFactory$RefreshAdRequest;

    iget-object v3, p1, Lcom/verizon/ads/inlineplacement/InlineAdFactory$RefreshAdRequest;->h:Lcom/verizon/ads/inlineplacement/InlineAdView;

    .line 4816
    :cond_9
    iget-object p1, v0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;->g:Lcom/verizon/ads/inlineplacement/InlineAdView$InlineAdListener;

    invoke-direct {p0, v4, p1, v3}, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->a(Lcom/verizon/ads/AdSession;Lcom/verizon/ads/inlineplacement/InlineAdView$InlineAdListener;Lcom/verizon/ads/inlineplacement/InlineAdView;)V

    .line 4821
    :cond_a
    :goto_2
    iget-object p1, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->b:Landroid/os/Handler;

    const/16 v1, 0x9

    new-instance v3, Lcom/verizon/ads/inlineplacement/InlineAdFactory$ProcessNextAdSessionMessage;

    invoke-direct {v3, v0}, Lcom/verizon/ads/inlineplacement/InlineAdFactory$ProcessNextAdSessionMessage;-><init>(Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;)V

    invoke-virtual {p1, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    .line 4776
    :cond_b
    :goto_3
    sget-object p1, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->a:Lcom/verizon/ads/Logger;

    const-string v0, "Ignoring send ad to destination after abort or destroy."

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 151
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/verizon/ads/inlineplacement/InlineAdFactory$AdReceivedMessage;

    .line 4688
    iget-object v0, p1, Lcom/verizon/ads/inlineplacement/InlineAdFactory$AdReceivedMessage;->a:Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;

    .line 4690
    iget-boolean v1, v0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;->b:Z

    if-nez v1, :cond_11

    iget-boolean v1, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->h:Z

    if-eqz v1, :cond_c

    goto/16 :goto_4

    .line 4697
    :cond_c
    iget-boolean v1, p1, Lcom/verizon/ads/inlineplacement/InlineAdFactory$AdReceivedMessage;->d:Z

    iput-boolean v1, v0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;->a:Z

    .line 4701
    iget-object v1, p1, Lcom/verizon/ads/inlineplacement/InlineAdFactory$AdReceivedMessage;->c:Lcom/verizon/ads/ErrorInfo;

    if-eqz v1, :cond_d

    .line 4703
    sget-object v1, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->a:Lcom/verizon/ads/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Server responded with an error when attempting to get inline ads: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/verizon/ads/inlineplacement/InlineAdFactory$AdReceivedMessage;->c:Lcom/verizon/ads/ErrorInfo;

    invoke-virtual {v4}, Lcom/verizon/ads/ErrorInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    .line 4705
    invoke-direct {p0}, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->e()V

    .line 4707
    sget-object v1, Lcom/verizon/ads/inlineplacement/InlineAdFactory$AdDestination;->VIEW:Lcom/verizon/ads/inlineplacement/InlineAdFactory$AdDestination;

    iget-object v0, v0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;->d:Lcom/verizon/ads/inlineplacement/InlineAdFactory$AdDestination;

    invoke-virtual {v1, v0}, Lcom/verizon/ads/inlineplacement/InlineAdFactory$AdDestination;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 4708
    iget-object p1, p1, Lcom/verizon/ads/inlineplacement/InlineAdFactory$AdReceivedMessage;->c:Lcom/verizon/ads/ErrorInfo;

    invoke-direct {p0, p1}, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->a(Lcom/verizon/ads/ErrorInfo;)V

    goto/16 :goto_5

    .line 4716
    :cond_d
    iget-boolean v1, v0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;->a:Z

    if-eqz v1, :cond_e

    iget-object v1, v0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, v0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;->e:Lcom/verizon/ads/AdSession;

    if-nez v1, :cond_e

    iget-object v1, p1, Lcom/verizon/ads/inlineplacement/InlineAdFactory$AdReceivedMessage;->b:Lcom/verizon/ads/AdSession;

    if-nez v1, :cond_e

    .line 4719
    invoke-direct {p0}, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->e()V

    goto/16 :goto_5

    .line 4724
    :cond_e
    iget-object v1, p1, Lcom/verizon/ads/inlineplacement/InlineAdFactory$AdReceivedMessage;->b:Lcom/verizon/ads/AdSession;

    if-nez v1, :cond_f

    .line 4725
    sget-object p1, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->a:Lcom/verizon/ads/Logger;

    const-string v0, "Cannot process Ad Session. The ad adapter is null."

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 4731
    :cond_f
    iget-object v1, v0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;->e:Lcom/verizon/ads/AdSession;

    if-eqz v1, :cond_10

    .line 4732
    iget-object v0, v0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;->f:Ljava/util/List;

    iget-object p1, p1, Lcom/verizon/ads/inlineplacement/InlineAdFactory$AdReceivedMessage;->b:Lcom/verizon/ads/AdSession;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 4737
    :cond_10
    iget-object p1, p1, Lcom/verizon/ads/inlineplacement/InlineAdFactory$AdReceivedMessage;->b:Lcom/verizon/ads/AdSession;

    iput-object p1, v0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;->e:Lcom/verizon/ads/AdSession;

    .line 4738
    invoke-direct {p0, v0}, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->b(Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;)V

    goto/16 :goto_5

    .line 4691
    :cond_11
    :goto_4
    sget-object p1, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->a:Lcom/verizon/ads/Logger;

    const-string v0, "Ignoring ad received after abort or destroy."

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 148
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/verizon/ads/inlineplacement/InlineAdFactory$RefreshAdRequest;

    .line 4615
    iget-boolean v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->h:Z

    if-eqz v0, :cond_12

    .line 4616
    sget-object p1, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->a:Lcom/verizon/ads/Logger;

    const-string v0, "Refresh Ad failed. Factory has been destroyed."

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    goto :goto_5

    .line 4622
    :cond_12
    invoke-direct {p0}, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->f()Lcom/verizon/ads/AdSession;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 4626
    iget-object p1, p1, Lcom/verizon/ads/inlineplacement/InlineAdFactory$RefreshAdRequest;->h:Lcom/verizon/ads/inlineplacement/InlineAdView;

    invoke-direct {p0, v0, v3, p1}, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->a(Lcom/verizon/ads/AdSession;Lcom/verizon/ads/inlineplacement/InlineAdView$InlineAdListener;Lcom/verizon/ads/inlineplacement/InlineAdView;)V

    .line 4627
    invoke-direct {p0}, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->d()V

    goto :goto_5

    .line 4633
    :cond_13
    invoke-direct {p0, p1}, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->a(Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;)V

    goto :goto_5

    .line 145
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;

    .line 4592
    iget-boolean v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->h:Z

    if-eqz v0, :cond_14

    .line 4593
    sget-object p1, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->a:Lcom/verizon/ads/Logger;

    const-string v0, "Load Bid failed. Factory has been destroyed."

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    goto :goto_5

    .line 4599
    :cond_14
    invoke-direct {p0, p1}, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->c(Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 4603
    iget-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->f:Landroid/content/Context;

    iget-object v1, p1, Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;->c:Lcom/verizon/ads/Bid;

    const-class v3, Lcom/verizon/ads/inlineplacement/InlineAdView;

    invoke-static {}, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->b()I

    move-result v4

    new-instance v5, Lcom/verizon/ads/inlineplacement/-$$Lambda$InlineAdFactory$8d3cAUK8beQvf59eI-CDRhJcNWQ;

    invoke-direct {v5, p0, p1}, Lcom/verizon/ads/inlineplacement/-$$Lambda$InlineAdFactory$8d3cAUK8beQvf59eI-CDRhJcNWQ;-><init>(Lcom/verizon/ads/inlineplacement/InlineAdFactory;Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;)V

    invoke-static {v0, v1, v3, v4, v5}, Lcom/verizon/ads/VASAds;->requestAd(Landroid/content/Context;Lcom/verizon/ads/Bid;Ljava/lang/Class;ILcom/verizon/ads/VASAds$AdRequestListener;)V

    goto :goto_5

    .line 142
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/verizon/ads/inlineplacement/InlineAdView$InlineAdListener;

    .line 4565
    iget-boolean v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->h:Z

    if-eqz v0, :cond_15

    .line 4566
    sget-object p1, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->a:Lcom/verizon/ads/Logger;

    const-string v0, "Load Ad failed. Factory has been destroyed."

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    goto :goto_5

    .line 4572
    :cond_15
    invoke-direct {p0}, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->f()Lcom/verizon/ads/AdSession;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 4575
    invoke-direct {p0, v0, p1, v3}, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->a(Lcom/verizon/ads/AdSession;Lcom/verizon/ads/inlineplacement/InlineAdView$InlineAdListener;Lcom/verizon/ads/inlineplacement/InlineAdView;)V

    .line 4576
    invoke-direct {p0}, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->d()V

    goto :goto_5

    .line 4581
    :cond_16
    new-instance v0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;

    invoke-direct {v0}, Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;-><init>()V

    .line 4582
    iput-object p1, v0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;->g:Lcom/verizon/ads/inlineplacement/InlineAdView$InlineAdListener;

    .line 4583
    sget-object p1, Lcom/verizon/ads/inlineplacement/InlineAdFactory$AdDestination;->VIEW:Lcom/verizon/ads/inlineplacement/InlineAdFactory$AdDestination;

    iput-object p1, v0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;->d:Lcom/verizon/ads/inlineplacement/InlineAdFactory$AdDestination;

    .line 4586
    invoke-direct {p0, v0}, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->a(Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;)V

    :cond_17
    :goto_5
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
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

.method private static b()I
    .locals 3

    const-string v0, "com.verizon.ads.inlineplacement"

    const-string v1, "inlineAdRequestTimeout"

    const/16 v2, 0x2710

    .line 350
    invoke-static {v0, v1, v2}, Lcom/verizon/ads/Configuration;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/verizon/ads/inlineplacement/InlineAdFactory;)Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->e:Ljava/lang/String;

    return-object p0
.end method

.method private b(Lcom/verizon/ads/ErrorInfo;)V
    .locals 3

    .line 978
    sget-object v0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->a:Lcom/verizon/ads/Logger;

    invoke-virtual {p1}, Lcom/verizon/ads/ErrorInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    .line 980
    iget-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->k:Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdFactoryListener;

    if-eqz v0, :cond_0

    .line 982
    sget-object v1, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/verizon/ads/inlineplacement/InlineAdFactory$4;

    invoke-direct {v2, p0, v0, p1}, Lcom/verizon/ads/inlineplacement/InlineAdFactory$4;-><init>(Lcom/verizon/ads/inlineplacement/InlineAdFactory;Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdFactoryListener;Lcom/verizon/ads/ErrorInfo;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private b(Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;)V
    .locals 6

    .line 753
    iget-object v0, p1, Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;->e:Lcom/verizon/ads/AdSession;

    const/4 v1, 0x3

    .line 755
    invoke-static {v1}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 756
    sget-object v1, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->a:Lcom/verizon/ads/Logger;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Loading view for ad session: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 759
    :cond_0
    invoke-virtual {v0}, Lcom/verizon/ads/AdSession;->getAdAdapter()Lcom/verizon/ads/AdAdapter;

    move-result-object v1

    if-nez v1, :cond_1

    .line 760
    sget-object p1, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->a:Lcom/verizon/ads/Logger;

    const-string v0, "Cannot load the ad view for a null adapter."

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 765
    :cond_1
    invoke-virtual {v0}, Lcom/verizon/ads/AdSession;->getAdAdapter()Lcom/verizon/ads/AdAdapter;

    move-result-object v1

    check-cast v1, Lcom/verizon/ads/inlineplacement/InlineAdAdapter;

    .line 766
    iget-object v2, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->f:Landroid/content/Context;

    const/16 v3, 0x1388

    const-string v4, "com.verizon.ads.inlineplacement"

    const-string v5, "inlineAdViewTimeout"

    .line 2356
    invoke-static {v4, v5, v3}, Lcom/verizon/ads/Configuration;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 766
    new-instance v4, Lcom/verizon/ads/inlineplacement/-$$Lambda$InlineAdFactory$oQFUNOPkuiN7pFfpr6wIxmgoqoU;

    invoke-direct {v4, p0, p1, v0}, Lcom/verizon/ads/inlineplacement/-$$Lambda$InlineAdFactory$oQFUNOPkuiN7pFfpr6wIxmgoqoU;-><init>(Lcom/verizon/ads/inlineplacement/InlineAdFactory;Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;Lcom/verizon/ads/AdSession;)V

    invoke-interface {v1, v2, v3, v4}, Lcom/verizon/ads/inlineplacement/InlineAdAdapter;->loadView(Landroid/content/Context;ILcom/verizon/ads/inlineplacement/InlineAdAdapter$LoadViewListener;)V

    return-void
.end method

.method private synthetic b(Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;Lcom/verizon/ads/AdSession;Lcom/verizon/ads/ErrorInfo;Z)V
    .locals 2

    .line 605
    iput-boolean p4, p1, Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;->a:Z

    .line 607
    iget-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->b:Landroid/os/Handler;

    new-instance v1, Lcom/verizon/ads/inlineplacement/InlineAdFactory$AdReceivedMessage;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/verizon/ads/inlineplacement/InlineAdFactory$AdReceivedMessage;-><init>(Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;Lcom/verizon/ads/AdSession;Lcom/verizon/ads/ErrorInfo;Z)V

    const/4 p1, 0x4

    .line 608
    invoke-virtual {v0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 607
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic c(Lcom/verizon/ads/inlineplacement/InlineAdFactory;)Ljava/util/List;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->m:Ljava/util/List;

    return-object p0
.end method

.method private c()V
    .locals 2

    .line 523
    iget-boolean v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->h:Z

    if-eqz v0, :cond_0

    .line 524
    sget-object v0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Factory has already been destroyed."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    return-void

    .line 530
    :cond_0
    invoke-direct {p0}, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->g()V

    .line 533
    iget-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->g:Lcom/verizon/ads/support/Cache;

    invoke-interface {v0}, Lcom/verizon/ads/support/Cache;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$CachedAd;

    :goto_0
    if-eqz v0, :cond_1

    .line 536
    iget-object v0, v0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$CachedAd;->a:Lcom/verizon/ads/AdSession;

    invoke-virtual {v0}, Lcom/verizon/ads/AdSession;->getAdAdapter()Lcom/verizon/ads/AdAdapter;

    move-result-object v0

    check-cast v0, Lcom/verizon/ads/inlineplacement/InlineAdAdapter;

    .line 537
    invoke-interface {v0}, Lcom/verizon/ads/inlineplacement/InlineAdAdapter;->release()V

    .line 540
    iget-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->g:Lcom/verizon/ads/support/Cache;

    invoke-interface {v0}, Lcom/verizon/ads/support/Cache;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$CachedAd;

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 544
    iput-boolean v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->h:Z

    return-void
.end method

.method private c(Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;)Z
    .locals 3

    .line 961
    iget-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->i:Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;

    if-eqz v0, :cond_0

    .line 962
    new-instance p1, Lcom/verizon/ads/ErrorInfo;

    const-class v0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x3

    const-string v2, "Only one active load request allowed at a time"

    invoke-direct {p1, v0, v2, v1}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 965
    invoke-direct {p0, p1}, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->b(Lcom/verizon/ads/ErrorInfo;)V

    const/4 p1, 0x0

    return p1

    .line 970
    :cond_0
    iput-object p1, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->i:Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;

    const/4 p1, 0x1

    return p1
.end method

.method static synthetic d(Lcom/verizon/ads/inlineplacement/InlineAdFactory;)Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdFactoryListener;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->k:Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdFactoryListener;

    return-object p0
.end method

.method private d()V
    .locals 3

    .line 640
    iget-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->i:Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;

    if-eqz v0, :cond_0

    .line 641
    sget-object v0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Skipping cache replenishment as an ad request is already in progress."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    return-void

    .line 1550
    :cond_0
    iget v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->j:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->j:I

    goto :goto_0

    :cond_1
    const-string v0, "com.verizon.ads.inlineplacement"

    const-string v1, "cacheReplenishmentThreshold"

    const/4 v2, 0x3

    .line 1551
    invoke-static {v0, v1, v2}, Lcom/verizon/ads/Configuration;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0, v2}, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->a(II)I

    move-result v0

    .line 648
    :goto_0
    iget-object v1, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->g:Lcom/verizon/ads/support/Cache;

    invoke-interface {v1}, Lcom/verizon/ads/support/Cache;->size()I

    move-result v1

    if-le v1, v0, :cond_2

    return-void

    .line 1658
    :cond_2
    new-instance v0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;

    invoke-direct {v0}, Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;-><init>()V

    .line 1659
    sget-object v1, Lcom/verizon/ads/inlineplacement/InlineAdFactory$AdDestination;->CACHE:Lcom/verizon/ads/inlineplacement/InlineAdFactory$AdDestination;

    iput-object v1, v0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;->d:Lcom/verizon/ads/inlineplacement/InlineAdFactory$AdDestination;

    .line 1661
    invoke-direct {p0, v0}, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->a(Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;)V

    return-void
.end method

.method private e()V
    .locals 2

    .line 745
    sget-object v0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Clearing the active ad request."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 747
    iput-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->i:Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;

    return-void
.end method

.method private f()Lcom/verizon/ads/AdSession;
    .locals 6

    .line 857
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->g:Lcom/verizon/ads/support/Cache;

    invoke-interface {v0}, Lcom/verizon/ads/support/Cache;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$CachedAd;

    if-eqz v0, :cond_1

    .line 862
    iget-wide v1, v0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$CachedAd;->b:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$CachedAd;->b:J

    cmp-long v5, v1, v3

    if-ltz v5, :cond_1

    const/4 v0, 0x3

    .line 866
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 867
    sget-object v0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->a:Lcom/verizon/ads/Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->e:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "Ad in cache expired for placementId: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 873
    sget-object v0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->a:Lcom/verizon/ads/Logger;

    const-string v1, "No ads in cache."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->i(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 878
    :cond_2
    iget-object v0, v0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$CachedAd;->a:Lcom/verizon/ads/AdSession;

    return-object v0
.end method

.method private g()V
    .locals 4

    .line 935
    iget-boolean v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->h:Z

    if-eqz v0, :cond_0

    .line 936
    sget-object v0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Abort failed. Factory has been destroyed."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x3

    .line 941
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 942
    sget-object v0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->a:Lcom/verizon/ads/Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->e:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "Aborting load request for placementId: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 945
    :cond_1
    iget-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->i:Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;

    if-nez v0, :cond_2

    .line 946
    sget-object v0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->a:Lcom/verizon/ads/Logger;

    const-string v1, "No active load to abort"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    return-void

    .line 951
    :cond_2
    iget-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->i:Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;

    invoke-virtual {v0}, Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;->a()V

    .line 954
    invoke-direct {p0}, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->e()V

    return-void
.end method

.method public static synthetic lambda$8d3cAUK8beQvf59eI-CDRhJcNWQ(Lcom/verizon/ads/inlineplacement/InlineAdFactory;Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;Lcom/verizon/ads/AdSession;Lcom/verizon/ads/ErrorInfo;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->b(Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;Lcom/verizon/ads/AdSession;Lcom/verizon/ads/ErrorInfo;Z)V

    return-void
.end method

.method public static synthetic lambda$RANw6cQmuBJPmf3RsmQ4M19kGnI(Lcom/verizon/ads/inlineplacement/InlineAdFactory;Landroid/os/Message;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->a(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$VMK9U7D14tCQcKYx3BW-EE0p3yY(Lcom/verizon/ads/inlineplacement/InlineAdFactory;Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;Lcom/verizon/ads/AdSession;Lcom/verizon/ads/ErrorInfo;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->a(Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;Lcom/verizon/ads/AdSession;Lcom/verizon/ads/ErrorInfo;Z)V

    return-void
.end method

.method public static synthetic lambda$ekdGBlnbW5yMdriLHFDJ20E6M-Y(Lcom/verizon/ads/BidRequestListener;Lcom/verizon/ads/Bid;Lcom/verizon/ads/ErrorInfo;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->a(Lcom/verizon/ads/BidRequestListener;Lcom/verizon/ads/Bid;Lcom/verizon/ads/ErrorInfo;)V

    return-void
.end method

.method public static synthetic lambda$oQFUNOPkuiN7pFfpr6wIxmgoqoU(Lcom/verizon/ads/inlineplacement/InlineAdFactory;Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;Lcom/verizon/ads/AdSession;Lcom/verizon/ads/ErrorInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->a(Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;Lcom/verizon/ads/AdSession;Lcom/verizon/ads/ErrorInfo;)V

    return-void
.end method

.method public static requestBid(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/verizon/ads/RequestMetadata;Lcom/verizon/ads/BidRequestListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/verizon/ads/inlineplacement/AdSize;",
            ">;",
            "Lcom/verizon/ads/RequestMetadata;",
            "Lcom/verizon/ads/BidRequestListener;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 202
    invoke-static {p3, p1, p2, v0}, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->a(Lcom/verizon/ads/RequestMetadata;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;)Lcom/verizon/ads/RequestMetadata;

    move-result-object p1

    .line 204
    invoke-static {}, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->b()I

    move-result p2

    new-instance p3, Lcom/verizon/ads/inlineplacement/-$$Lambda$InlineAdFactory$ekdGBlnbW5yMdriLHFDJ20E6M-Y;

    invoke-direct {p3, p4}, Lcom/verizon/ads/inlineplacement/-$$Lambda$InlineAdFactory$ekdGBlnbW5yMdriLHFDJ20E6M-Y;-><init>(Lcom/verizon/ads/BidRequestListener;)V

    invoke-static {p0, p1, p2, p3}, Lcom/verizon/ads/VASAds;->requestBid(Landroid/content/Context;Lcom/verizon/ads/RequestMetadata;ILcom/verizon/ads/BidRequestListener;)V

    return-void
.end method


# virtual methods
.method public abortLoad()V
    .locals 2

    .line 486
    iget-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->b:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public destroy()V
    .locals 2

    .line 517
    iget-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->b:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public getAdSizes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/verizon/ads/inlineplacement/AdSize;",
            ">;"
        }
    .end annotation

    .line 389
    iget-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->m:Ljava/util/List;

    return-object v0
.end method

.method public getPlacementId()Ljava/lang/String;
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestMetadata()Lcom/verizon/ads/RequestMetadata;
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->l:Lcom/verizon/ads/RequestMetadata;

    return-object v0
.end method

.method public load(Lcom/verizon/ads/Bid;Lcom/verizon/ads/inlineplacement/InlineAdView$InlineAdListener;)V
    .locals 2

    .line 445
    iget-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->b:Landroid/os/Handler;

    new-instance v1, Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;

    invoke-direct {v1, p1, p2}, Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;-><init>(Lcom/verizon/ads/Bid;Lcom/verizon/ads/inlineplacement/InlineAdView$InlineAdListener;)V

    const/4 p1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public load(Lcom/verizon/ads/inlineplacement/InlineAdView$InlineAdListener;)V
    .locals 2

    .line 433
    iget-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->b:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public loadAdFromCache(Lcom/verizon/ads/inlineplacement/InlineAdView$InlineAdListener;)Lcom/verizon/ads/inlineplacement/InlineAdView;
    .locals 10

    .line 459
    invoke-direct {p0}, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->f()Lcom/verizon/ads/AdSession;

    move-result-object v5

    .line 462
    iget-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->b:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    if-nez v5, :cond_0

    .line 465
    sget-object p1, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->a:Lcom/verizon/ads/Logger;

    const-string v0, "No ads found in cache"

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 470
    :cond_0
    invoke-virtual {v5}, Lcom/verizon/ads/AdSession;->getAdAdapter()Lcom/verizon/ads/AdAdapter;

    move-result-object v0

    check-cast v0, Lcom/verizon/ads/inlineplacement/InlineAdAdapter;

    const/4 v1, 0x3

    .line 472
    invoke-static {v1}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 473
    sget-object v1, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->a:Lcom/verizon/ads/Logger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v5, v2, v3

    const-string v3, "Ad loaded from cache: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 476
    :cond_1
    new-instance v9, Lcom/verizon/ads/inlineplacement/InlineAdView;

    iget-object v1, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->e:Ljava/lang/String;

    invoke-interface {v0}, Lcom/verizon/ads/inlineplacement/InlineAdAdapter;->getView()Landroid/view/View;

    move-result-object v3

    .line 477
    invoke-interface {v0}, Lcom/verizon/ads/inlineplacement/InlineAdAdapter;->getAdSize()Lcom/verizon/ads/inlineplacement/AdSize;

    move-result-object v4

    iget-object v6, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->m:Ljava/util/List;

    new-instance v8, Lcom/verizon/ads/inlineplacement/InlineAdViewRefresher;

    invoke-direct {v8, p0}, Lcom/verizon/ads/inlineplacement/InlineAdViewRefresher;-><init>(Lcom/verizon/ads/inlineplacement/InlineAdFactory;)V

    move-object v0, v9

    move-object v7, p1

    invoke-direct/range {v0 .. v8}, Lcom/verizon/ads/inlineplacement/InlineAdView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Lcom/verizon/ads/inlineplacement/AdSize;Lcom/verizon/ads/AdSession;Ljava/util/List;Lcom/verizon/ads/inlineplacement/InlineAdView$InlineAdListener;Lcom/verizon/ads/inlineplacement/InlineAdViewRefresher;)V

    return-object v9
.end method

.method public prefetch()V
    .locals 2

    .line 496
    iget-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->b:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setAdSizes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/verizon/ads/inlineplacement/AdSize;",
            ">;)V"
        }
    .end annotation

    .line 400
    iput-object p1, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->m:Ljava/util/List;

    return-void
.end method

.method public setCacheReplenishmentThresholdOverride(I)V
    .locals 1

    const/4 v0, -0x1

    .line 508
    invoke-static {p1, v0}, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->a(II)I

    move-result p1

    iput p1, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->j:I

    return-void
.end method

.method public setListener(Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdFactoryListener;)V
    .locals 0

    .line 378
    iput-object p1, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->k:Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdFactoryListener;

    return-void
.end method

.method public setRequestMetaData(Lcom/verizon/ads/RequestMetadata;)V
    .locals 0

    .line 411
    iput-object p1, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->l:Lcom/verizon/ads/RequestMetadata;

    return-void
.end method
