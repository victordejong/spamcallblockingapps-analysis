.class public Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;
.super Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$InteractionListener;,
        Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$ResourceLoadedMessage;,
        Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;,
        Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$Factory;,
        Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesListener;
    }
.end annotation


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String; = "verizon/nativeAd-v1"

.field public static final ERROR_ABORTED:I = -0x7

.field public static final ERROR_ASSET_LOAD_IN_PROGRESS:I = -0x3

.field public static final ERROR_LOADING_ASSET:I = -0x1

.field public static final ERROR_LOAD_TIMED_OUT:I = -0x2

.field public static final ERROR_MISSING_REQUIRED_ASSET:I = -0x6

.field public static final ERROR_NOT_CREATED:I = -0x4

.field public static final ERROR_NO_SUCH_EXPERIENCE:I = -0x5

.field static final a:Lcom/verizon/ads/Logger;

.field private static final f:Ljava/lang/String; = "VerizonNativeAd"


# instance fields
.field b:Lcom/iab/omid/library/verizonmedia/adsession/a;

.field c:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$InteractionListener;

.field private final g:Ljava/util/concurrent/ExecutorService;

.field private final h:Landroid/os/Handler;

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/verizon/ads/PEXHandler;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lorg/json/JSONObject;

.field private k:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;

.field private l:Lcom/verizon/ads/support/FileStorageCache;

.field private m:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/iab/omid/library/verizonmedia/adsession/b;

.field private o:Lcom/iab/omid/library/verizonmedia/adsession/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    const-class v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->a:Lcom/verizon/ads/Logger;

    return-void
.end method

.method private constructor <init>(Lcom/verizon/ads/AdSession;Lorg/json/JSONObject;)V
    .locals 2

    .line 213
    sget-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->f:Ljava/lang/String;

    const-string v1, "verizon/nativeAd-v1"

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle;-><init>(Lcom/verizon/ads/AdSession;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 215
    new-instance p1, Landroid/os/HandlerThread;

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 217
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    new-instance v1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$1;

    invoke-direct {v1, p0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$1;-><init>(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;)V

    invoke-direct {v0, p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->h:Landroid/os/Handler;

    .line 261
    new-instance p1, Lcom/verizon/ads/support/FileStorageCache;

    sget-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeControllerPlugin;->j:Lcom/verizon/ads/support/StorageCache;

    invoke-direct {p1, v0}, Lcom/verizon/ads/support/FileStorageCache;-><init>(Lcom/verizon/ads/support/StorageCache;)V

    iput-object p1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->l:Lcom/verizon/ads/support/FileStorageCache;

    const/4 p1, 0x3

    .line 263
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->g:Ljava/util/concurrent/ExecutorService;

    .line 264
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->i:Ljava/util/Map;

    .line 266
    iput-object p2, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->j:Lorg/json/JSONObject;

    return-void
.end method

.method synthetic constructor <init>(Lcom/verizon/ads/AdSession;Lorg/json/JSONObject;Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$1;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;-><init>(Lcom/verizon/ads/AdSession;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic a(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;)Lcom/verizon/ads/ErrorInfo;
    .locals 6

    .line 7480
    invoke-virtual {p0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->getRequiredComponentIds()Ljava/util/Set;

    move-result-object v0

    .line 7481
    invoke-virtual {p0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->getComponentIds()Ljava/util/Set;

    move-result-object p0

    const/4 v1, 0x3

    .line 7483
    invoke-static {v1}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 7484
    sget-object v1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->a:Lcom/verizon/ads/Logger;

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v0, v4, v2

    const-string v5, "Advertiser required component ids: %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    const/4 v4, -0x6

    if-nez v0, :cond_1

    .line 7489
    new-instance v1, Lcom/verizon/ads/ErrorInfo;

    sget-object p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->f:Ljava/lang/String;

    const-string v0, "Required components is missing"

    invoke-direct {v1, p0, v0, v4}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 7490
    :cond_1
    invoke-interface {p0, v0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 7492
    invoke-interface {v0, p0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 7493
    new-instance v1, Lcom/verizon/ads/ErrorInfo;

    sget-object p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->f:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    const-string v0, "Missing advertiser required components: %s"

    .line 7494
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0, v4}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_2
    :goto_0
    return-object v1
.end method

.method static synthetic a()Lcom/verizon/ads/Logger;
    .locals 1

    .line 55
    sget-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->a:Lcom/verizon/ads/Logger;

    return-object v0
.end method

.method private static a(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;)V
    .locals 4

    .line 704
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;->f:Lcom/verizon/ads/ErrorInfo;

    if-eqz v0, :cond_0

    .line 705
    sget-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->a:Lcom/verizon/ads/Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;->f:Lcom/verizon/ads/ErrorInfo;

    invoke-virtual {v3}, Lcom/verizon/ads/ErrorInfo;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Resource loading completed with error: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    .line 708
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;->c:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesListener;

    if-eqz v0, :cond_1

    .line 710
    iget-object p0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;->f:Lcom/verizon/ads/ErrorInfo;

    invoke-interface {v0, p0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesListener;->onComplete(Lcom/verizon/ads/ErrorInfo;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;)V
    .locals 9

    .line 7718
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->k:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 7719
    new-instance v0, Lcom/verizon/ads/ErrorInfo;

    sget-object v3, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->f:Ljava/lang/String;

    const/4 v4, -0x3

    const-string v5, "Only one active load request allowed at a time"

    invoke-direct {v0, v3, v5, v4}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;->f:Lcom/verizon/ads/ErrorInfo;

    .line 7722
    invoke-static {p1}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->a(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;)V

    const/4 v0, 0x0

    goto :goto_0

    .line 7727
    :cond_0
    iput-object p1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->k:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_7

    .line 7640
    sget-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeControllerPlugin;->j:Lcom/verizon/ads/support/StorageCache;

    const v3, 0x2932e00

    invoke-virtual {v0, v3}, Lcom/verizon/ads/support/StorageCache;->deleteExpiredCacheEntries(I)V

    .line 7642
    iget-boolean v0, p1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;->a:Z

    if-nez v0, :cond_1

    .line 7644
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->l:Lcom/verizon/ads/support/FileStorageCache;

    invoke-virtual {p0, v0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->queueFilesForDownload(Lcom/verizon/ads/support/FileStorageCache;)V

    .line 7648
    :cond_1
    invoke-direct {p0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->c()Ljava/util/Set;

    move-result-object v0

    .line 7650
    iget-object v3, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->l:Lcom/verizon/ads/support/FileStorageCache;

    invoke-virtual {v3}, Lcom/verizon/ads/support/FileStorageCache;->getNumQueuedFiles()I

    move-result v3

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;->d:I

    .line 7653
    iget v3, p1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;->d:I

    if-nez v3, :cond_2

    .line 7654
    sget-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->a:Lcom/verizon/ads/Logger;

    const-string v1, "No resources to load"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 7655
    iget-object p0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->h:Landroid/os/Handler;

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_2
    const/4 v3, 0x3

    .line 7660
    invoke-static {v3}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 7661
    sget-object v4, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->a:Lcom/verizon/ads/Logger;

    new-array v5, v2, [Ljava/lang/Object;

    iget v6, p1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;->d:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const-string v6, "Requesting load of %d resources"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 7665
    :cond_3
    iget v4, p1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;->b:I

    if-lez v4, :cond_4

    .line 7666
    iget-object v4, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->h:Landroid/os/Handler;

    invoke-virtual {v4, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    iget v6, p1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;->b:I

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 7670
    :cond_4
    iget-object v4, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->l:Lcom/verizon/ads/support/FileStorageCache;

    new-instance v5, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$2;

    invoke-direct {v5, p0, p1}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$2;-><init>(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;)V

    iget v6, p1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;->b:I

    invoke-virtual {v4, v5, v6}, Lcom/verizon/ads/support/FileStorageCache;->downloadQueuedFiles(Lcom/verizon/ads/support/FileStorageCache$FileStorageCacheListener;I)V

    .line 7684
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/verizon/ads/PostEventExperience;

    .line 7735
    iget-object v5, v4, Lcom/verizon/ads/PostEventExperience;->contentType:Ljava/lang/String;

    invoke-static {v5}, Lcom/verizon/ads/PEXRegistry;->getHandler(Ljava/lang/String;)Lcom/verizon/ads/PEXHandler;

    move-result-object v5

    if-nez v5, :cond_5

    .line 7738
    new-instance v5, Lcom/verizon/ads/ErrorInfo;

    sget-object v6, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->f:Ljava/lang/String;

    new-array v7, v2, [Ljava/lang/Object;

    iget-object v4, v4, Lcom/verizon/ads/PostEventExperience;->contentType:Ljava/lang/String;

    aput-object v4, v7, v1

    const-string v4, "No PEX registered for content type: <%s> registered."

    .line 7739
    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v7, -0x5

    invoke-direct {v5, v6, v4, v7}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7742
    iget-object v4, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->h:Landroid/os/Handler;

    const/4 v6, 0x2

    new-instance v7, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$ResourceLoadedMessage;

    invoke-direct {v7, p1, v5}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$ResourceLoadedMessage;-><init>(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;Lcom/verizon/ads/ErrorInfo;)V

    invoke-virtual {v4, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 7748
    :cond_5
    iget-object v6, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->i:Ljava/util/Map;

    iget-object v7, v4, Lcom/verizon/ads/PostEventExperience;->id:Ljava/lang/String;

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7752
    invoke-static {v3}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 7753
    sget-object v6, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->a:Lcom/verizon/ads/Logger;

    new-array v7, v2, [Ljava/lang/Object;

    iget-object v8, v4, Lcom/verizon/ads/PostEventExperience;->id:Ljava/lang/String;

    aput-object v8, v7, v1

    const-string v8, "Preparing post event experience id: %s"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 7756
    :cond_6
    new-instance v6, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$3;

    invoke-direct {v6, p0, v5, p1, v4}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$3;-><init>(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;Lcom/verizon/ads/PEXHandler;Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;Lcom/verizon/ads/PostEventExperience;)V

    .line 7775
    iget-object v4, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->g:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4, v6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_7
    return-void
.end method

.method static synthetic a(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$ResourceLoadedMessage;)V
    .locals 6

    .line 8594
    iget-object v0, p1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$ResourceLoadedMessage;->a:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;

    .line 8596
    iget v1, v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;->e:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;->e:I

    .line 8598
    iget-object v1, v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;->f:Lcom/verizon/ads/ErrorInfo;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 8599
    sget-object p1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->a:Lcom/verizon/ads/Logger;

    new-array v1, v2, [Ljava/lang/Object;

    iget v2, v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "Load resource response %d ignored after error"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 8601
    :cond_0
    iget-object v1, p1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$ResourceLoadedMessage;->b:Lcom/verizon/ads/ErrorInfo;

    const/4 v4, 0x3

    if-eqz v1, :cond_2

    .line 8602
    invoke-static {v4}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8603
    sget-object v1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->a:Lcom/verizon/ads/Logger;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;->e:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    iget-object v3, p1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$ResourceLoadedMessage;->b:Lcom/verizon/ads/ErrorInfo;

    .line 8604
    invoke-virtual {v3}, Lcom/verizon/ads/ErrorInfo;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    const-string v2, "Load resource response %d failed with error %s"

    .line 8603
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 8606
    :cond_1
    iget-object p1, p1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$ResourceLoadedMessage;->b:Lcom/verizon/ads/ErrorInfo;

    iput-object p1, v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;->f:Lcom/verizon/ads/ErrorInfo;

    goto :goto_0

    .line 8608
    :cond_2
    invoke-static {v4}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 8609
    sget-object p1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->a:Lcom/verizon/ads/Logger;

    new-array v1, v2, [Ljava/lang/Object;

    iget v2, v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "Load resource response %d succeeded"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 8613
    :cond_3
    :goto_0
    iget p1, v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;->e:I

    iget v1, v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;->d:I

    if-ne p1, v1, :cond_4

    .line 8614
    iget-object p0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->h:Landroid/os/Handler;

    const/4 p1, 0x4

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_4
    return-void
.end method

.method private a(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iab/omid/library/verizonmedia/adsession/j;",
            ">;)Z"
        }
    .end annotation

    .line 890
    invoke-static {}, Lcom/verizon/ads/omsdk/OMSDKPlugin;->getMeasurementService()Lcom/verizon/ads/omsdk/OpenMeasurementService;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 892
    sget-object p1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->a:Lcom/verizon/ads/Logger;

    const-string v0, "OMSDK is disabled"

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    return v1

    .line 898
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/verizon/ads/omsdk/OpenMeasurementService;->getPartner()Lcom/iab/omid/library/verizonmedia/adsession/i;

    move-result-object v2

    .line 899
    invoke-virtual {v0}, Lcom/verizon/ads/omsdk/OpenMeasurementService;->getOMSDKJS()Ljava/lang/String;

    move-result-object v0

    .line 898
    invoke-static {v2, v0, p1}, Lcom/iab/omid/library/verizonmedia/adsession/c;->a(Lcom/iab/omid/library/verizonmedia/adsession/i;Ljava/lang/String;Ljava/util/List;)Lcom/iab/omid/library/verizonmedia/adsession/c;

    move-result-object p1

    .line 902
    invoke-direct {p0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/iab/omid/library/verizonmedia/adsession/e;->VIDEO:Lcom/iab/omid/library/verizonmedia/adsession/e;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/iab/omid/library/verizonmedia/adsession/e;->NATIVE_DISPLAY:Lcom/iab/omid/library/verizonmedia/adsession/e;

    :goto_0
    sget-object v2, Lcom/iab/omid/library/verizonmedia/adsession/g;->OTHER:Lcom/iab/omid/library/verizonmedia/adsession/g;

    sget-object v3, Lcom/iab/omid/library/verizonmedia/adsession/h;->NATIVE:Lcom/iab/omid/library/verizonmedia/adsession/h;

    .line 903
    invoke-direct {p0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->g()Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/iab/omid/library/verizonmedia/adsession/h;->NATIVE:Lcom/iab/omid/library/verizonmedia/adsession/h;

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 902
    :goto_1
    invoke-static {v0, v2, v3, v4, v1}, Lcom/iab/omid/library/verizonmedia/adsession/AdSessionConfiguration;->createAdSessionConfiguration(Lcom/iab/omid/library/verizonmedia/adsession/e;Lcom/iab/omid/library/verizonmedia/adsession/g;Lcom/iab/omid/library/verizonmedia/adsession/h;Lcom/iab/omid/library/verizonmedia/adsession/h;Z)Lcom/iab/omid/library/verizonmedia/adsession/AdSessionConfiguration;

    move-result-object v0

    .line 906
    invoke-static {v0, p1}, Lcom/iab/omid/library/verizonmedia/adsession/b;->a(Lcom/iab/omid/library/verizonmedia/adsession/AdSessionConfiguration;Lcom/iab/omid/library/verizonmedia/adsession/c;)Lcom/iab/omid/library/verizonmedia/adsession/b;

    move-result-object p1

    iput-object p1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->n:Lcom/iab/omid/library/verizonmedia/adsession/b;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 916
    sget-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->a:Lcom/verizon/ads/Logger;

    const-string v2, "OMSDK is disabled - error initializing OMSDK Ad Session."

    invoke-virtual {v0, v2, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1

    :catch_0
    move-exception p1

    .line 911
    sget-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->a:Lcom/verizon/ads/Logger;

    const-string v2, "OMSDK is disabled - error occurred loading the OMSDK JS"

    invoke-virtual {v0, v2, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method private static b(Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 9

    .line 504
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 505
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    const/4 v3, 0x1

    .line 507
    :try_start_0
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "secret"

    .line 508
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x3

    .line 509
    invoke-static {v5}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 510
    sget-object v5, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->a:Lcom/verizon/ads/Logger;

    const-string v6, "Sanitized secret postEventExperience: %s"

    new-array v7, v3, [Ljava/lang/Object;

    const-string v8, "name"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v1

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 514
    :cond_0
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 517
    :catch_0
    sget-object v4, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->a:Lcom/verizon/ads/Logger;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v1

    const-string v5, "Invalid format for postEventExperience entry %d"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method static synthetic b(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->d()V

    return-void
.end method

.method static synthetic b(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;)V
    .locals 4

    .line 8543
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->k:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;

    if-eq v0, p1, :cond_0

    .line 8544
    sget-object p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->a:Lcom/verizon/ads/Logger;

    const-string p1, "Asset load request timed out but is no longer the active request"

    invoke-virtual {p0, p1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    return-void

    .line 8549
    :cond_0
    new-instance v0, Lcom/verizon/ads/ErrorInfo;

    sget-object v1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->f:Ljava/lang/String;

    const/4 v2, -0x2

    const-string v3, "Load resources timed out"

    invoke-direct {v0, v1, v3, v2}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;->f:Lcom/verizon/ads/ErrorInfo;

    const/4 v0, 0x0

    .line 8550
    iput-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->k:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;

    .line 8552
    invoke-static {p1}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->a(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;)V

    return-void
.end method

.method private c()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/verizon/ads/PostEventExperience;",
            ">;"
        }
    .end annotation

    .line 339
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 3379
    iget-object v1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->j:Lorg/json/JSONObject;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const-string v2, "postEventExperiences"

    .line 347
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 350
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 352
    :try_start_0
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 354
    new-instance v4, Lcom/verizon/ads/PostEventExperience;

    invoke-direct {v4}, Lcom/verizon/ads/PostEventExperience;-><init>()V

    const-string v5, "id"

    .line 355
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/verizon/ads/PostEventExperience;->id:Ljava/lang/String;

    const-string v5, "cacheable"

    .line 356
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/verizon/ads/PostEventExperience;->cacheable:Z

    const-string v5, "contentType"

    .line 357
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/verizon/ads/PostEventExperience;->contentType:Ljava/lang/String;

    const-string v5, "secret"

    .line 358
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/verizon/ads/PostEventExperience;->secret:Z

    const-string v5, "data"

    .line 359
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iput-object v3, v4, Lcom/verizon/ads/PostEventExperience;->data:Lorg/json/JSONObject;

    .line 361
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 363
    sget-object v4, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->a:Lcom/verizon/ads/Logger;

    const-string v5, "Error occurred processing Experience json."

    invoke-virtual {v4, v5, v3}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static synthetic c(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;)V
    .locals 2

    .line 9578
    sget-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Releasing native assets"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 9581
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->k:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;

    if-eqz v0, :cond_0

    .line 9582
    invoke-direct {p0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->d()V

    return-void

    .line 9925
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->n:Lcom/iab/omid/library/verizonmedia/adsession/b;

    if-eqz v0, :cond_1

    .line 9926
    new-instance v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$4;

    invoke-direct {v0, p0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$4;-><init>(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;)V

    .line 10722
    invoke-static {v0}, Lcom/verizon/ads/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 9585
    :cond_1
    invoke-direct {p0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->e()V

    .line 9586
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->l:Lcom/verizon/ads/support/FileStorageCache;

    invoke-virtual {v0}, Lcom/verizon/ads/support/FileStorageCache;->deleteCache()V

    .line 9587
    invoke-super {p0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle;->release()V

    return-void
.end method

.method static synthetic c(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;)V
    .locals 2

    .line 9558
    iget-object v0, p1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;->f:Lcom/verizon/ads/ErrorInfo;

    if-nez v0, :cond_0

    .line 9559
    sget-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Resource loading completed successfully"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 9561
    :cond_0
    invoke-direct {p0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->e()V

    .line 9562
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->l:Lcom/verizon/ads/support/FileStorageCache;

    invoke-virtual {v0}, Lcom/verizon/ads/support/FileStorageCache;->deleteCache()V

    .line 9567
    :goto_0
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->k:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;

    if-ne v0, p1, :cond_1

    .line 9568
    invoke-static {p1}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->a(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;)V

    :cond_1
    const/4 p1, 0x0

    .line 9571
    iput-object p1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->k:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;

    .line 9572
    iget-object p0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->h:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic d(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;)Landroid/os/Handler;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->h:Landroid/os/Handler;

    return-object p0
.end method

.method private d()V
    .locals 5

    .line 527
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->k:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;

    if-nez v0, :cond_0

    .line 528
    sget-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->a:Lcom/verizon/ads/Logger;

    const-string v1, "No active load to abort"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    return-void

    .line 533
    :cond_0
    new-instance v1, Lcom/verizon/ads/ErrorInfo;

    sget-object v2, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->f:Ljava/lang/String;

    const/4 v3, -0x7

    const-string v4, "Load resources aborted"

    invoke-direct {v1, v2, v4, v3}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;->f:Lcom/verizon/ads/ErrorInfo;

    const/4 v0, 0x0

    .line 534
    iput-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->k:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;

    .line 537
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->h:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method static synthetic e(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;)Lcom/iab/omid/library/verizonmedia/adsession/b;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->n:Lcom/iab/omid/library/verizonmedia/adsession/b;

    return-object p0
.end method

.method private e()V
    .locals 2

    .line 692
    sget-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Releasing loaded post event experiences."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 694
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 695
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/verizon/ads/PEXHandler;

    invoke-interface {v1}, Lcom/verizon/ads/PEXHandler;->release()V

    goto :goto_0

    .line 698
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method static synthetic f(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;)Lcom/iab/omid/library/verizonmedia/adsession/b;
    .locals 1

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->n:Lcom/iab/omid/library/verizonmedia/adsession/b;

    return-object v0
.end method

.method private f()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iab/omid/library/verizonmedia/adsession/j;",
            ">;"
        }
    .end annotation

    .line 943
    sget-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Preparing OMSDK verification script resources"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 945
    invoke-virtual {p0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->getOMVendors()Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_0

    .line 947
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 950
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 951
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 953
    :try_start_0
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "vendorKey"

    .line 955
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "javascriptResourceUrl"

    .line 956
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 957
    invoke-static {v5}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 958
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-string v5, "verificationParameters"

    .line 959
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 961
    invoke-static {v4}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v3}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 963
    invoke-static {v4, v6, v3}, Lcom/iab/omid/library/verizonmedia/adsession/j;->a(Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)Lcom/iab/omid/library/verizonmedia/adsession/j;

    move-result-object v3

    .line 962
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 967
    :cond_1
    invoke-static {v6}, Lcom/iab/omid/library/verizonmedia/adsession/j;->a(Ljava/net/URL;)Lcom/iab/omid/library/verizonmedia/adsession/j;

    move-result-object v3

    .line 966
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 973
    sget-object v4, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->a:Lcom/verizon/ads/Logger;

    const-string v5, "Error preparing verification script resource"

    invoke-virtual {v4, v5, v3}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method static synthetic g(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;)Lcom/iab/omid/library/verizonmedia/adsession/a;
    .locals 1

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->b:Lcom/iab/omid/library/verizonmedia/adsession/a;

    return-object v0
.end method

.method private g()Z
    .locals 2

    .line 1047
    invoke-direct {p0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "video"

    .line 1049
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private h()Ljava/lang/String;
    .locals 4

    .line 7379
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->j:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-string v2, "adInfo"

    .line 1062
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "omSessionType"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1065
    sget-object v2, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->a:Lcom/verizon/ads/Logger;

    const-string v3, "Error retrieving OM Session type"

    invoke-virtual {v2, v3, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private i()V
    .locals 3

    .line 1075
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/verizon/ads/Component;

    .line 1076
    instance-of v2, v1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;

    if-eqz v2, :cond_0

    .line 1077
    check-cast v1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;

    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->o:Lcom/iab/omid/library/verizonmedia/adsession/a/a;

    invoke-virtual {v1, v0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->setVideoEvents(Lcom/iab/omid/library/verizonmedia/adsession/a/a;)V

    .line 1078
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->b:Lcom/iab/omid/library/verizonmedia/adsession/a;

    invoke-virtual {v1, v0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->setAdEvents(Lcom/iab/omid/library/verizonmedia/adsession/a;)V

    :cond_1
    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;)Lcom/verizon/ads/PEXHandler;
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/verizon/ads/PEXHandler;

    return-object p1
.end method

.method public abortLoadAssets()V
    .locals 2

    .line 463
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->h:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public fireImpression(Landroid/content/Context;)V
    .locals 2

    const-string v0, "impression"

    const/4 v1, 0x0

    .line 1002
    invoke-virtual {p0, p1, v0, v1}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public getAdType()Ljava/lang/String;
    .locals 3

    .line 1379
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->j:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "adInfo"

    .line 290
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 293
    sget-object v1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->a:Lcom/verizon/ads/Logger;

    const-string v2, "Error retrieving ad type"

    invoke-virtual {v1, v2, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "unknown"

    return-object v0
.end method

.method public getComponentInfo()Lorg/json/JSONObject;
    .locals 5

    const/4 v0, 0x0

    .line 386
    invoke-virtual {p0, v0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->getComponentInfo(Z)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 394
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v0, "postEventExperiences"

    .line 403
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 405
    :try_start_1
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->b(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 408
    sget-object v3, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->a:Lcom/verizon/ads/Logger;

    const-string v4, "Invalid format for postEventExperiences"

    invoke-virtual {v3, v4, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 410
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-object v2

    :catch_1
    move-exception v0

    .line 397
    sget-object v2, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->a:Lcom/verizon/ads/Logger;

    const-string v3, "Error creating copy of JSON for bundle"

    invoke-virtual {v2, v3, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public getOMVendors()Lorg/json/JSONArray;
    .locals 5

    const-string v0, "omVendors"

    const-string v1, "adInfo"

    .line 6379
    iget-object v2, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->j:Lorg/json/JSONObject;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    .line 1021
    :cond_0
    :try_start_0
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1022
    sget-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->a:Lcom/verizon/ads/Logger;

    const-string v1, "\'adInfo\' is not included"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    return-object v3

    .line 1027
    :cond_1
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1029
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1030
    sget-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->a:Lcom/verizon/ads/Logger;

    const-string v1, "\'omVendors\' is not included"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    return-object v3

    .line 1035
    :cond_2
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1038
    :catch_0
    sget-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Invalid JSON structure for \'omVendors\'"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-object v3
.end method

.method public getRequiredComponentIds()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2379
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->j:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 310
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "requiredComponents"

    .line 315
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->a(Lorg/json/JSONArray;)Ljava/util/Set;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 318
    :catch_0
    sget-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Missing or invalid JSON structure for \'requiredComponents\'"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public invokeDefaultAction(Landroid/content/Context;)V
    .locals 4

    .line 4379
    :try_start_0
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->j:Lorg/json/JSONObject;

    const-string v1, "tap"

    const/4 v2, 0x0

    .line 421
    invoke-virtual {p0, v2, v0, v1}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->a(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_0

    .line 424
    sget-object p1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->a:Lcom/verizon/ads/Logger;

    const-string v0, "No default actions specified for event tap."

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 429
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 430
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p0, p1, v3, v2}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 434
    sget-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Could not determine the default action due to an exception."

    invoke-virtual {v0, v1, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public loadResources(ZILcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesListener;)V
    .locals 3

    if-nez p3, :cond_0

    .line 449
    sget-object p1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->a:Lcom/verizon/ads/Logger;

    const-string p2, "LoadResourcesListener cannot be null"

    invoke-virtual {p1, p2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->h:Landroid/os/Handler;

    const/4 v1, 0x0

    new-instance v2, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;

    invoke-direct {v2, p1, p2, p3}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;-><init>(ZILcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesListener;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public registerContainerView(Landroid/view/ViewGroup;)Z
    .locals 5

    .line 787
    sget-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Registering container view for layout"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 4728
    invoke-static {}, Lcom/verizon/ads/utils/ThreadUtils;->isUiThread()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p1, "Must be on the UI thread to register container view"

    .line 790
    invoke-virtual {v0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return v2

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "Container view cannot be null"

    .line 797
    invoke-virtual {v0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return v2

    .line 4833
    :cond_1
    iget-object v1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->m:Ljava/lang/ref/WeakReference;

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_4

    .line 804
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_3

    const-string p1, "A different container view has already been registered"

    .line 805
    invoke-virtual {v0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return v2

    :cond_3
    const-string p1, "The container view has already been registered"

    .line 810
    invoke-virtual {v0, p1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    return v3

    .line 815
    :cond_4
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->m:Ljava/lang/ref/WeakReference;

    .line 817
    invoke-virtual {p0, p1}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->b(Landroid/view/View;)V

    .line 820
    invoke-virtual {p0, p1}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->c(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 822
    invoke-virtual {p0, p1}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->d(Landroid/view/View;)V

    .line 4839
    :cond_5
    iget-object v1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->n:Lcom/iab/omid/library/verizonmedia/adsession/b;

    if-nez v1, :cond_8

    const-string v1, "Preparing OMSDK"

    .line 4843
    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 4846
    invoke-direct {p0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->f()Ljava/util/List;

    move-result-object v1

    .line 4847
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string p1, "OMSDK is disabled - verification script resources is empty"

    .line 4848
    invoke-virtual {v0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 4853
    :cond_6
    invoke-direct {p0, v1}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->a(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 4859
    :try_start_0
    iget-object v1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->n:Lcom/iab/omid/library/verizonmedia/adsession/b;

    invoke-static {v1}, Lcom/iab/omid/library/verizonmedia/adsession/a;->a(Lcom/iab/omid/library/verizonmedia/adsession/b;)Lcom/iab/omid/library/verizonmedia/adsession/a;

    move-result-object v1

    iput-object v1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->b:Lcom/iab/omid/library/verizonmedia/adsession/a;

    .line 4860
    invoke-direct {p0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->g()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4861
    iget-object v1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->n:Lcom/iab/omid/library/verizonmedia/adsession/b;

    invoke-static {v1}, Lcom/iab/omid/library/verizonmedia/adsession/a/a;->a(Lcom/iab/omid/library/verizonmedia/adsession/b;)Lcom/iab/omid/library/verizonmedia/adsession/a/a;

    move-result-object v1

    iput-object v1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->o:Lcom/iab/omid/library/verizonmedia/adsession/a/a;

    .line 4865
    :cond_7
    iget-object v1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->n:Lcom/iab/omid/library/verizonmedia/adsession/b;

    invoke-virtual {v1, p1}, Lcom/iab/omid/library/verizonmedia/adsession/b;->a(Landroid/view/View;)V

    const-string p1, "Starting the OMSDK Ad session."

    .line 4868
    invoke-virtual {v0, p1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 4869
    iget-object p1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->n:Lcom/iab/omid/library/verizonmedia/adsession/b;

    invoke-virtual {p1}, Lcom/iab/omid/library/verizonmedia/adsession/b;->a()V

    .line 4871
    invoke-direct {p0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->i()V

    .line 4874
    invoke-direct {p0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->g()Z

    move-result p1

    if-nez p1, :cond_8

    .line 5621
    iget-object p1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->b:Lcom/iab/omid/library/verizonmedia/adsession/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_8

    .line 5623
    :try_start_1
    invoke-virtual {p1}, Lcom/iab/omid/library/verizonmedia/adsession/a;->b()V

    const-string p1, "Fired OMSDK loaded event."

    .line 5624
    invoke-virtual {v0, p1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 5626
    :try_start_2
    sget-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Error occurred firing OMSDK loaded event."

    invoke-virtual {v0, v1, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 4879
    sget-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->a:Lcom/verizon/ads/Logger;

    const-string v1, "OMSDK is disabled - error initializing OMSDK Ad Session."

    invoke-virtual {v0, v1, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 4881
    iput-object p1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->n:Lcom/iab/omid/library/verizonmedia/adsession/b;

    .line 4882
    iput-object p1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->b:Lcom/iab/omid/library/verizonmedia/adsession/a;

    .line 4883
    iput-object p1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->o:Lcom/iab/omid/library/verizonmedia/adsession/a/a;

    :cond_8
    :goto_1
    return v3
.end method

.method public release()V
    .locals 2

    .line 472
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->h:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x0

    .line 473
    iput-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->m:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setInteractionListener(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$InteractionListener;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->c:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$InteractionListener;

    return-void
.end method
