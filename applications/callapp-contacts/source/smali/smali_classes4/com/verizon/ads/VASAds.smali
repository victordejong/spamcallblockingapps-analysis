.class public final Lcom/verizon/ads/VASAds;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/ads/VASAds$ApplicationLifeCycleObserver;,
        Lcom/verizon/ads/VASAds$RegisteredPlugin;,
        Lcom/verizon/ads/VASAds$AdRequestListener;
    }
.end annotation


# static fields
.field public static final ANONYMOUS_USER_KEY:Ljava/lang/String; = "anonymousUser"

.field public static final API_LEVEL:I = 0x1

.field public static final COLLECT:Ljava/lang/String; = "Collect"

.field public static final COLLECTION_MODE:Ljava/lang/String; = "collectionMode"

.field public static final DOMAIN:Ljava/lang/String; = "com.verizon.ads.core"

.field public static final DO_NOT_COLLECT:Ljava/lang/String; = "DoNotCollect"

.field public static final ERROR_AD_REQUEST_FAILED:I = -0x3

.field public static final ERROR_AD_REQUEST_FAILED_APP_IN_BACKGROUND:I = -0x4

.field public static final ERROR_AD_REQUEST_TIMED_OUT:I = -0x2

.field public static final ERROR_NO_FILL:I = -0x1

.field public static final IAB_CONSENT_KEY:Ljava/lang/String; = "iab"

.field public static final LOCATION_ENABLED_KEY:Ljava/lang/String; = "locationEnabled"

.field public static final LOCATION_REQUIRES_CONSENT_KEY:Ljava/lang/String; = "locationRequiresConsent"

.field public static final REQUEST_FACTORY_REF:Ljava/lang/String; = "request.factoryRef"

.field public static final REQUEST_PLACEMENT_REF:Ljava/lang/String; = "request.placementRef"

.field public static final REQUEST_REQUEST_METADATA:Ljava/lang/String; = "request.requestMetadata"

.field public static final RESPONSE_WATERFALL:Ljava/lang/String; = "response.waterfall"

.field public static final RESPONSE_WATERFALL_ITEM:Ljava/lang/String; = "response.waterfallItem"

.field public static final SDK_ENABLED_KEY:Ljava/lang/String; = "sdkEnabled"

.field public static final USER_PRIVACY_DATA_KEY:Ljava/lang/String; = "userPrivacyData"

.field static a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lcom/verizon/ads/Logger;

.field private static final c:Lcom/verizon/ads/ConfigurationProvider$UpdateListener;

.field private static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/verizon/ads/ConfigurationProviderRegistration;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/verizon/ads/VASAds$RegisteredPlugin;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/verizon/ads/AdAdapterRegistration;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Lcom/verizon/ads/SDKInfo;

.field private static final h:Landroid/os/HandlerThread;

.field private static final i:Lcom/verizon/ads/AdRequestHandler;

.field private static final j:Landroid/os/Handler;

.field private static final k:Landroid/os/Handler;

.field private static final l:Ljava/lang/String;

.field private static final m:Lcom/verizon/ads/VASAds$ApplicationLifeCycleObserver;

.field private static n:Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;

.field private static final o:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static volatile p:Lcom/verizon/ads/RequestMetadata;

.field private static q:Z

.field private static r:Ljava/lang/String;

.field private static s:Ljava/util/concurrent/ExecutorService;

.field private static t:Lcom/verizon/ads/ActivityStateManager;

.field private static u:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 105
    const-class v0, Lcom/verizon/ads/VASAds;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v1

    sput-object v1, Lcom/verizon/ads/VASAds;->b:Lcom/verizon/ads/Logger;

    .line 106
    new-instance v1, Lcom/verizon/ads/VASAds$1;

    invoke-direct {v1}, Lcom/verizon/ads/VASAds$1;-><init>()V

    sput-object v1, Lcom/verizon/ads/VASAds;->c:Lcom/verizon/ads/ConfigurationProvider$UpdateListener;

    .line 135
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/VASAds;->l:Ljava/lang/String;

    .line 136
    new-instance v0, Lcom/verizon/ads/VASAds$ApplicationLifeCycleObserver;

    invoke-direct {v0}, Lcom/verizon/ads/VASAds$ApplicationLifeCycleObserver;-><init>()V

    sput-object v0, Lcom/verizon/ads/VASAds;->m:Lcom/verizon/ads/VASAds$ApplicationLifeCycleObserver;

    .line 687
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/verizon/ads/VASAds;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 693
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/VASAds;->s:Ljava/util/concurrent/ExecutorService;

    .line 698
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/verizon/ads/VASAds;->d:Ljava/util/List;

    .line 699
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/verizon/ads/VASAds;->f:Ljava/util/List;

    .line 700
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/verizon/ads/VASAds;->e:Ljava/util/Map;

    .line 702
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "VASAdsCoreHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 703
    sput-object v0, Lcom/verizon/ads/VASAds;->h:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 705
    new-instance v1, Lcom/verizon/ads/AdRequestHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/verizon/ads/AdRequestHandler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/verizon/ads/VASAds;->i:Lcom/verizon/ads/AdRequestHandler;

    .line 706
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/verizon/ads/VASAds;->j:Landroid/os/Handler;

    .line 707
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/verizon/ads/VASAds;->k:Landroid/os/Handler;

    .line 708
    new-instance v0, Lcom/verizon/ads/SDKInfo;

    const-string v3, "2.5.0"

    const-string v4, "e03840f"

    const-string v5, "release"

    const-string v6, "1"

    const-string v7, "2021-01-28T18:16:27Z"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/verizon/ads/SDKInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/verizon/ads/VASAds;->g:Lcom/verizon/ads/SDKInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()I
    .locals 5

    const-string v0, "com.verizon.ads.core"

    const-string v1, "locationRequiresConsentTtl"

    const v2, 0x5265c00

    .line 829
    invoke-static {v0, v1, v2}, Lcom/verizon/ads/Configuration;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    .line 832
    invoke-static {v1}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 833
    sget-object v1, Lcom/verizon/ads/VASAds;->b:Lcom/verizon/ads/Logger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Configuration location requires consent ttl: %d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method static a(Ljava/lang/Class;Lcom/verizon/ads/AdContent;)Lcom/verizon/ads/AdAdapter;
    .locals 6

    .line 1094
    sget-object v0, Lcom/verizon/ads/VASAds;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/verizon/ads/AdAdapterRegistration;

    .line 4029
    iget-object v5, v1, Lcom/verizon/ads/AdAdapterRegistration;->a:Ljava/lang/String;

    invoke-static {v5}, Lcom/verizon/ads/VASAds;->isPluginEnabled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    iget-object v5, v1, Lcom/verizon/ads/AdAdapterRegistration;->c:Lcom/verizon/ads/ContentFilter;

    if-eqz v5, :cond_1

    iget-object v5, v1, Lcom/verizon/ads/AdAdapterRegistration;->b:Ljava/lang/Class;

    if-ne p0, v5, :cond_1

    iget-object v5, v1, Lcom/verizon/ads/AdAdapterRegistration;->c:Lcom/verizon/ads/ContentFilter;

    .line 4030
    invoke-interface {v5, p1}, Lcom/verizon/ads/ContentFilter;->accepts(Lcom/verizon/ads/AdContent;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_0

    .line 1097
    iget-object p0, v1, Lcom/verizon/ads/AdAdapterRegistration;->d:Ljava/lang/Class;

    goto :goto_1

    :cond_2
    move-object p0, v4

    :goto_1
    if-eqz p0, :cond_3

    .line 1104
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/verizon/ads/AdAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1106
    sget-object v0, Lcom/verizon/ads/VASAds;->b:Lcom/verizon/ads/Logger;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v3

    const-string p0, "Unable to instantiate AdAdapter class: %s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    return-object v4
.end method

.method private static a(Landroid/content/Context;Lcom/verizon/ads/RequestMetadata;)Lcom/verizon/ads/WaterfallProvider;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1350
    sget-object p0, Lcom/verizon/ads/VASAds;->b:Lcom/verizon/ads/Logger;

    const-string p1, "context cannot be null."

    invoke-virtual {p0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    .line 1357
    invoke-virtual {p1}, Lcom/verizon/ads/RequestMetadata;->getPlacementData()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1358
    invoke-virtual {p1}, Lcom/verizon/ads/RequestMetadata;->getPlacementData()Ljava/util/Map;

    move-result-object p1

    const-string v1, "overrideWaterfallProvider"

    .line 1360
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1363
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0, v0, v0}, Lcom/verizon/ads/ComponentRegistry;->getComponent(Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONObject;[Ljava/lang/Object;)Lcom/verizon/ads/Component;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    .line 1367
    :goto_0
    instance-of v1, p1, Lcom/verizon/ads/WaterfallProvider;

    if-nez v1, :cond_3

    const-string v1, "com.verizon.ads.core"

    const-string v2, "defaultWaterfallProvider"

    .line 1368
    invoke-static {v1, v2, v0}, Lcom/verizon/ads/Configuration;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1371
    invoke-static {v1, p0, v0, v0}, Lcom/verizon/ads/ComponentRegistry;->getComponent(Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONObject;[Ljava/lang/Object;)Lcom/verizon/ads/Component;

    move-result-object p1

    goto :goto_1

    .line 1373
    :cond_2
    sget-object p0, Lcom/verizon/ads/VASAds;->b:Lcom/verizon/ads/Logger;

    const-string v1, "No default waterfall provider registered in Configuration."

    invoke-virtual {p0, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    .line 1377
    :cond_3
    :goto_1
    instance-of p0, p1, Lcom/verizon/ads/WaterfallProvider;

    if-eqz p0, :cond_4

    check-cast p1, Lcom/verizon/ads/WaterfallProvider;

    return-object p1

    :cond_4
    return-object v0
.end method

.method static a(IZ)V
    .locals 3

    .line 810
    sget-object v0, Lcom/verizon/ads/VASAds;->k:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_0

    .line 813
    new-instance p1, Lcom/verizon/ads/VASAds$5;

    invoke-direct {p1}, Lcom/verizon/ads/VASAds$5;-><init>()V

    int-to-long v1, p0

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 821
    invoke-static {p0}, Lcom/verizon/ads/VASAds;->a(Z)V

    return-void
.end method

.method static a(Lcom/verizon/ads/Configuration$ConfigurationChangeEvent;)V
    .locals 2

    .line 1240
    iget-object v0, p0, Lcom/verizon/ads/Configuration$ConfigurationChangeEvent;->domain:Ljava/lang/String;

    const-string v1, "com.verizon.ads.core"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1241
    iget-object v0, p0, Lcom/verizon/ads/Configuration$ConfigurationChangeEvent;->key:Ljava/lang/String;

    const-string v1, "geoIpCheckUrl"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/verizon/ads/Configuration$ConfigurationChangeEvent;->key:Ljava/lang/String;

    const-string v0, "locationRequiresConsentTtl"

    .line 1242
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/16 p0, 0x1388

    const/4 v0, 0x1

    .line 1243
    invoke-static {p0, v0}, Lcom/verizon/ads/VASAds;->a(IZ)V

    :cond_1
    return-void
.end method

.method private static a(Ljava/lang/Class;Lcom/verizon/ads/WaterfallProvider;Lcom/verizon/ads/Bid;Lcom/verizon/ads/RequestMetadata;ILcom/verizon/ads/VASAds$AdRequestListener;)V
    .locals 7

    if-nez p5, :cond_0

    .line 1118
    sget-object p0, Lcom/verizon/ads/VASAds;->b:Lcom/verizon/ads/Logger;

    const-string p1, "adRequestListener cannot be null."

    invoke-virtual {p0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x3

    if-nez p0, :cond_1

    .line 1124
    new-instance p0, Lcom/verizon/ads/ErrorInfo;

    sget-object p1, Lcom/verizon/ads/VASAds;->l:Ljava/lang/String;

    const-string p2, "adRequesterClass cannot be null"

    invoke-direct {p0, p1, p2, v2}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1125
    sget-object p1, Lcom/verizon/ads/VASAds;->b:Lcom/verizon/ads/Logger;

    invoke-virtual {p0}, Lcom/verizon/ads/ErrorInfo;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    .line 1127
    invoke-interface {p5, v1, p0, v0}, Lcom/verizon/ads/VASAds$AdRequestListener;->onAdReceived(Lcom/verizon/ads/AdSession;Lcom/verizon/ads/ErrorInfo;Z)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    .line 1133
    new-instance p0, Lcom/verizon/ads/ErrorInfo;

    sget-object p1, Lcom/verizon/ads/VASAds;->l:Ljava/lang/String;

    const-string p2, "waterfallProvider cannot be null"

    invoke-direct {p0, p1, p2, v2}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1134
    sget-object p1, Lcom/verizon/ads/VASAds;->b:Lcom/verizon/ads/Logger;

    invoke-virtual {p0}, Lcom/verizon/ads/ErrorInfo;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    .line 1136
    invoke-interface {p5, v1, p0, v0}, Lcom/verizon/ads/VASAds$AdRequestListener;->onAdReceived(Lcom/verizon/ads/AdSession;Lcom/verizon/ads/ErrorInfo;Z)V

    return-void

    :cond_2
    if-gtz p4, :cond_3

    .line 1142
    new-instance p0, Lcom/verizon/ads/ErrorInfo;

    sget-object p1, Lcom/verizon/ads/VASAds;->l:Ljava/lang/String;

    const-string p2, "timeout must be greater than zero"

    invoke-direct {p0, p1, p2, v2}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1143
    sget-object p1, Lcom/verizon/ads/VASAds;->b:Lcom/verizon/ads/Logger;

    invoke-virtual {p0}, Lcom/verizon/ads/ErrorInfo;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    .line 1145
    invoke-interface {p5, v1, p0, v0}, Lcom/verizon/ads/VASAds$AdRequestListener;->onAdReceived(Lcom/verizon/ads/AdSession;Lcom/verizon/ads/ErrorInfo;Z)V

    return-void

    :cond_3
    if-eqz p3, :cond_4

    goto :goto_0

    .line 1150
    :cond_4
    invoke-static {}, Lcom/verizon/ads/VASAds;->getRequestMetadata()Lcom/verizon/ads/RequestMetadata;

    move-result-object p3

    :goto_0
    move-object v3, p3

    .line 1152
    new-instance p3, Lcom/verizon/ads/AdRequest;

    move-object v0, p3

    move-object v1, p1

    move-object v2, p2

    move-object v4, p0

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/verizon/ads/AdRequest;-><init>(Lcom/verizon/ads/WaterfallProvider;Lcom/verizon/ads/Bid;Lcom/verizon/ads/RequestMetadata;Ljava/lang/Class;ILcom/verizon/ads/VASAds$AdRequestListener;)V

    .line 1154
    sget-object p0, Lcom/verizon/ads/VASAds;->i:Lcom/verizon/ads/AdRequestHandler;

    invoke-virtual {p0, p3}, Lcom/verizon/ads/AdRequestHandler;->a(Lcom/verizon/ads/AdRequest;)V

    return-void
.end method

.method static a(Ljava/lang/Runnable;)V
    .locals 4

    .line 803
    sget-object v0, Lcom/verizon/ads/VASAds;->j:Landroid/os/Handler;

    const-string v1, "com.verizon.ads.core"

    const-string v2, "configurationProviderRefreshInterval"

    const v3, 0x5265c00

    invoke-static {v1, v2, v3}, Lcom/verizon/ads/Configuration;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/verizon/ads/ContentFilter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/verizon/ads/AdAdapter;",
            ">;",
            "Lcom/verizon/ads/ContentFilter;",
            ")V"
        }
    .end annotation

    .line 452
    invoke-static {p0}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    sget-object p0, Lcom/verizon/ads/VASAds;->b:Lcom/verizon/ads/Logger;

    const-string p1, "The pluginId parameter cannot be null or empty."

    invoke-virtual {p0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 459
    sget-object p0, Lcom/verizon/ads/VASAds;->b:Lcom/verizon/ads/Logger;

    const-string p1, "The adRequesterClass parameter cannot be null."

    invoke-virtual {p0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez p2, :cond_2

    .line 465
    sget-object p0, Lcom/verizon/ads/VASAds;->b:Lcom/verizon/ads/Logger;

    const-string p1, "The adAdapter parameter cannot be null."

    invoke-virtual {p0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    :cond_2
    if-nez p3, :cond_3

    .line 471
    sget-object p0, Lcom/verizon/ads/VASAds;->b:Lcom/verizon/ads/Logger;

    const-string p1, "The contentFilter parameter cannot be null."

    invoke-virtual {p0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 476
    :cond_3
    sget-object v0, Lcom/verizon/ads/VASAds;->f:Ljava/util/List;

    const/4 v1, 0x0

    new-instance v2, Lcom/verizon/ads/AdAdapterRegistration;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/verizon/ads/AdAdapterRegistration;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/verizon/ads/ContentFilter;)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method static a(Z)V
    .locals 1

    .line 1161
    new-instance v0, Lcom/verizon/ads/VASAds$6;

    invoke-direct {v0, p0}, Lcom/verizon/ads/VASAds$6;-><init>(Z)V

    if-eqz p0, :cond_0

    .line 1200
    sget-object p0, Lcom/verizon/ads/VASAds;->s:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 1202
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static b()Landroid/content/Context;
    .locals 1

    .line 842
    sget-object v0, Lcom/verizon/ads/VASAds;->u:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static c()V
    .locals 6

    const-string v0, "com.verizon.ads.core"

    const-string v1, "userPrivacyData"

    const/4 v2, 0x0

    .line 1252
    invoke-static {v0, v1, v2}, Lcom/verizon/ads/Configuration;->getMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 1253
    new-instance v2, Lcom/verizon/ads/PrivacyDataHelper;

    invoke-direct {v2, v1}, Lcom/verizon/ads/PrivacyDataHelper;-><init>(Ljava/util/Map;)V

    .line 1255
    invoke-virtual {v2}, Lcom/verizon/ads/PrivacyDataHelper;->getCollectionMode()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Collect"

    .line 1257
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "vas-core-key"

    const-string v5, "anonymousUser"

    if-eqz v3, :cond_0

    .line 1258
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, v0, v5, v4}, Lcom/verizon/ads/Configuration;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v3, "DoNotCollect"

    .line 1261
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1262
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v0, v5, v4}, Lcom/verizon/ads/Configuration;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v1, "locationRequiresConsent"

    const/4 v3, 0x1

    .line 1267
    invoke-static {v0, v1, v3}, Lcom/verizon/ads/Configuration;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1271
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, v0, v5, v4}, Lcom/verizon/ads/Configuration;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1280
    :cond_2
    invoke-virtual {v2}, Lcom/verizon/ads/PrivacyDataHelper;->getGDPRConsentMap()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1281
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    xor-int/2addr v1, v3

    .line 1285
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1, v0, v5, v4}, Lcom/verizon/ads/Configuration;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static d()V
    .locals 3

    .line 1291
    sget-object v0, Lcom/verizon/ads/VASAds;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/verizon/ads/ConfigurationProviderRegistration;

    .line 1293
    sget-object v2, Lcom/verizon/ads/VASAds;->c:Lcom/verizon/ads/ConfigurationProvider$UpdateListener;

    invoke-virtual {v1, v2}, Lcom/verizon/ads/ConfigurationProviderRegistration;->update(Lcom/verizon/ads/ConfigurationProvider$UpdateListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static disablePlugin(Ljava/lang/String;)V
    .locals 4

    .line 619
    invoke-static {p0}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    sget-object p0, Lcom/verizon/ads/VASAds;->b:Lcom/verizon/ads/Logger;

    const-string v0, "id cannot be null or empty."

    invoke-virtual {p0, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 625
    :cond_0
    sget-object v0, Lcom/verizon/ads/VASAds;->e:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/verizon/ads/VASAds$RegisteredPlugin;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 628
    sget-object v0, Lcom/verizon/ads/VASAds;->b:Lcom/verizon/ads/Logger;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    const-string p0, "No registered plugin exists with id = %s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 633
    :cond_1
    iget-boolean v3, v0, Lcom/verizon/ads/VASAds$RegisteredPlugin;->b:Z

    if-nez v3, :cond_2

    .line 634
    sget-object v0, Lcom/verizon/ads/VASAds;->b:Lcom/verizon/ads/Logger;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    const-string p0, "Plugin with id = %s is already disabled"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/verizon/ads/Logger;->i(Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 p0, 0x3

    .line 639
    invoke-static {p0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 640
    sget-object p0, Lcom/verizon/ads/VASAds;->b:Lcom/verizon/ads/Logger;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/verizon/ads/VASAds$RegisteredPlugin;->a:Lcom/verizon/ads/Plugin;

    aput-object v3, v1, v2

    const-string v3, "Disabling plugin %s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 643
    :cond_3
    iput-boolean v2, v0, Lcom/verizon/ads/VASAds$RegisteredPlugin;->b:Z

    .line 645
    iget-object p0, v0, Lcom/verizon/ads/VASAds$RegisteredPlugin;->a:Lcom/verizon/ads/Plugin;

    invoke-virtual {p0}, Lcom/verizon/ads/Plugin;->onPluginDisabled()V

    return-void
.end method

.method static synthetic e()Lcom/verizon/ads/Logger;
    .locals 1

    .line 62
    sget-object v0, Lcom/verizon/ads/VASAds;->b:Lcom/verizon/ads/Logger;

    return-object v0
.end method

.method public static enablePlugin(Ljava/lang/String;)V
    .locals 5

    .line 582
    invoke-static {p0}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    sget-object p0, Lcom/verizon/ads/VASAds;->b:Lcom/verizon/ads/Logger;

    const-string v0, "id cannot be null or empty."

    invoke-virtual {p0, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 588
    :cond_0
    sget-object v0, Lcom/verizon/ads/VASAds;->e:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/verizon/ads/VASAds$RegisteredPlugin;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 591
    sget-object v0, Lcom/verizon/ads/VASAds;->b:Lcom/verizon/ads/Logger;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    const-string p0, "No registered plugin exists with id = %s"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 596
    :cond_1
    iget-boolean v3, v0, Lcom/verizon/ads/VASAds$RegisteredPlugin;->b:Z

    if-eqz v3, :cond_2

    .line 597
    sget-object v0, Lcom/verizon/ads/VASAds;->b:Lcom/verizon/ads/Logger;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    const-string p0, "Plugin with id = %s is already enabled"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/verizon/ads/Logger;->i(Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 p0, 0x3

    .line 602
    invoke-static {p0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 603
    sget-object p0, Lcom/verizon/ads/VASAds;->b:Lcom/verizon/ads/Logger;

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, v0, Lcom/verizon/ads/VASAds$RegisteredPlugin;->a:Lcom/verizon/ads/Plugin;

    aput-object v4, v3, v1

    const-string v1, "Enabling plugin %s"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 606
    :cond_3
    iput-boolean v2, v0, Lcom/verizon/ads/VASAds$RegisteredPlugin;->b:Z

    .line 608
    iget-object p0, v0, Lcom/verizon/ads/VASAds$RegisteredPlugin;->a:Lcom/verizon/ads/Plugin;

    invoke-virtual {p0}, Lcom/verizon/ads/Plugin;->onPluginEnabled()V

    return-void
.end method

.method static synthetic f()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 62
    sget-object v0, Lcom/verizon/ads/VASAds;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic g()Ljava/lang/String;
    .locals 1

    .line 62
    invoke-static {}, Lcom/verizon/ads/VASAds;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getActivityStateManager()Lcom/verizon/ads/ActivityStateManager;
    .locals 1

    .line 487
    sget-object v0, Lcom/verizon/ads/VASAds;->t:Lcom/verizon/ads/ActivityStateManager;

    return-object v0
.end method

.method public static getBiddingToken(Landroid/content/Context;Lcom/verizon/ads/RequestMetadata;)Ljava/lang/String;
    .locals 0

    .line 1064
    invoke-static {p0, p1}, Lcom/verizon/ads/VASAds;->a(Landroid/content/Context;Lcom/verizon/ads/RequestMetadata;)Lcom/verizon/ads/WaterfallProvider;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1071
    :cond_0
    invoke-virtual {p0, p1}, Lcom/verizon/ads/WaterfallProvider;->getBiddingToken(Lcom/verizon/ads/RequestMetadata;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCoppa()Ljava/lang/Boolean;
    .locals 4

    .line 1006
    const-class v0, Ljava/lang/Boolean;

    const-string v1, "com.verizon.ads.core"

    const-string v2, "coppa"

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/verizon/ads/Configuration;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public static getLogLevel()I
    .locals 1

    .line 934
    invoke-static {}, Lcom/verizon/ads/Logger;->getLogLevel()I

    move-result v0

    return v0
.end method

.method public static getRegisteredPlugins()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/verizon/ads/Plugin;",
            ">;"
        }
    .end annotation

    .line 563
    sget-object v0, Lcom/verizon/ads/VASAds;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 565
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 567
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/verizon/ads/VASAds$RegisteredPlugin;

    .line 568
    iget-object v2, v2, Lcom/verizon/ads/VASAds$RegisteredPlugin;->a:Lcom/verizon/ads/Plugin;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 571
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static getRequestMetadata()Lcom/verizon/ads/RequestMetadata;
    .locals 1

    .line 957
    sget-object v0, Lcom/verizon/ads/VASAds;->p:Lcom/verizon/ads/RequestMetadata;

    return-object v0
.end method

.method public static getSDKInfo()Lcom/verizon/ads/SDKInfo;
    .locals 1

    .line 876
    sget-object v0, Lcom/verizon/ads/VASAds;->g:Lcom/verizon/ads/SDKInfo;

    return-object v0
.end method

.method public static getSiteId()Ljava/lang/String;
    .locals 1

    .line 889
    sget-object v0, Lcom/verizon/ads/VASAds;->r:Ljava/lang/String;

    return-object v0
.end method

.method private static h()Ljava/lang/String;
    .locals 8

    const-string v0, "com.verizon.ads.core"

    const-string v1, "geoIpCheckUrl"

    const-string v2, "https://service.cmp.oath.com/cmp/v0/location/eu"

    .line 1301
    invoke-static {v0, v1, v2}, Lcom/verizon/ads/Configuration;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 1307
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1308
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1310
    :try_start_1
    instance-of v2, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v2, :cond_0

    .line 1311
    sget-object v2, Lcom/verizon/ads/VASAds;->b:Lcom/verizon/ads/Logger;

    const-string v3, "HttpsURLConnection created. Setting custom SSLSocketFactory."

    invoke-virtual {v2, v3}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 1313
    invoke-static {}, Lcom/verizon/ads/utils/VASAdsSSLSocketFactory;->getInstance()Lcom/verizon/ads/utils/VASAdsSSLSocketFactory;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1315
    move-object v3, v0

    check-cast v3, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v3, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_0
    const/16 v2, 0x2710

    .line 1319
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1320
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1322
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_2

    .line 1325
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1327
    :try_start_2
    invoke-static {v2, v1}, Lcom/verizon/ads/utils/IOUtils;->read(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1335
    invoke-static {v2}, Lcom/verizon/ads/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

    if-eqz v0, :cond_1

    .line 1338
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    return-object v1

    :catchall_0
    move-exception v1

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_2

    :catch_0
    move-exception v3

    move-object v7, v3

    move-object v3, v2

    move-object v2, v7

    goto :goto_0

    .line 1329
    :cond_2
    :try_start_3
    sget-object v3, Lcom/verizon/ads/VASAds;->b:Lcom/verizon/ads/Logger;

    const-string v4, "An HTTP error occurred with status code = %d when attempting to determine if the user is in a privacy restricted zone."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 1330
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    .line 1329
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1335
    invoke-static {v1}, Lcom/verizon/ads/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

    if-eqz v0, :cond_4

    goto :goto_1

    :catchall_1
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v2

    move-object v3, v1

    goto :goto_0

    :catchall_2
    move-exception v2

    move-object v0, v1

    goto :goto_2

    :catch_2
    move-exception v2

    move-object v0, v1

    move-object v3, v0

    .line 1333
    :goto_0
    :try_start_4
    sget-object v4, Lcom/verizon/ads/VASAds;->b:Lcom/verizon/ads/Logger;

    const-string v5, "An exception occurred connecting to privacy server."

    invoke-virtual {v4, v5, v2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1335
    invoke-static {v3}, Lcom/verizon/ads/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

    if-eqz v0, :cond_4

    .line 1338
    :goto_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_3

    :catchall_3
    move-exception v2

    move-object v1, v3

    .line 1335
    :goto_2
    invoke-static {v1}, Lcom/verizon/ads/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

    if-eqz v0, :cond_3

    .line 1338
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1340
    :cond_3
    throw v2

    :cond_4
    :goto_3
    return-object v1
.end method

.method public static declared-synchronized initialize(Landroid/app/Application;Ljava/lang/String;)Z
    .locals 6

    const-class v0, Lcom/verizon/ads/VASAds;

    monitor-enter v0

    .line 725
    :try_start_0
    sget-boolean v1, Lcom/verizon/ads/VASAds;->q:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 726
    sget-object p0, Lcom/verizon/ads/VASAds;->r:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 727
    sget-object p0, Lcom/verizon/ads/VASAds;->b:Lcom/verizon/ads/Logger;

    const-string p1, "Verizon Ads SDK already initialized"

    invoke-virtual {p0, p1}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 729
    monitor-exit v0

    return v2

    .line 732
    :cond_0
    :try_start_1
    sget-object p0, Lcom/verizon/ads/VASAds;->b:Lcom/verizon/ads/Logger;

    const-string p1, "Attempt to reinitialize the Verizon Ads SDK with a new site ID."

    invoke-virtual {p0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 734
    monitor-exit v0

    return v3

    :cond_1
    if-nez p1, :cond_2

    .line 739
    :try_start_2
    sget-object p0, Lcom/verizon/ads/VASAds;->b:Lcom/verizon/ads/Logger;

    const-string p1, "The site ID cannot be null"

    invoke-virtual {p0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 741
    monitor-exit v0

    return v3

    .line 744
    :cond_2
    :try_start_3
    sget-object v1, Lcom/verizon/ads/VASAds;->b:Lcom/verizon/ads/Logger;

    const-string v4, "Initializing Verizon Ads SDK"

    invoke-virtual {v1, v4}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    const-string v4, "com.verizon.ads.core"

    const-string v5, "vas-core-key"

    .line 747
    invoke-static {v4, v5}, Lcom/verizon/ads/Configuration;->protectDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 748
    sput-boolean v2, Lcom/verizon/ads/VASAds;->q:Z

    .line 749
    sput-object p1, Lcom/verizon/ads/VASAds;->r:Ljava/lang/String;

    .line 750
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p1, Lcom/verizon/ads/VASAds;->u:Ljava/lang/ref/WeakReference;

    .line 751
    new-instance p1, Lcom/verizon/ads/ActivityStateManager;

    invoke-direct {p1, p0}, Lcom/verizon/ads/ActivityStateManager;-><init>(Landroid/app/Application;)V

    sput-object p1, Lcom/verizon/ads/VASAds;->t:Lcom/verizon/ads/ActivityStateManager;

    .line 752
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p1, Lcom/verizon/ads/VASAds;->a:Ljava/lang/ref/WeakReference;

    const-string p1, "waterfallprovider/sideloading"

    .line 2221
    new-instance v1, Lcom/verizon/ads/sideloadingwaterfallprovider/SideloadingWaterfallProvider$Factory;

    invoke-direct {v1}, Lcom/verizon/ads/sideloadingwaterfallprovider/SideloadingWaterfallProvider$Factory;-><init>()V

    invoke-static {p1, v1}, Lcom/verizon/ads/ComponentRegistry;->registerComponent(Ljava/lang/String;Lcom/verizon/ads/ComponentFactory;)V

    const-string p1, "waterfallprovider/verizonssp"

    .line 2222
    new-instance v1, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$Factory;

    invoke-direct {v1}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$Factory;-><init>()V

    invoke-static {p1, v1}, Lcom/verizon/ads/ComponentRegistry;->registerComponent(Ljava/lang/String;Lcom/verizon/ads/ComponentFactory;)V

    .line 2228
    new-instance p1, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProviderPlugin;

    invoke-direct {p1, p0}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProviderPlugin;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->isConfigProviderEnabled()Z

    move-result v1

    invoke-static {p1, v1}, Lcom/verizon/ads/VASAds;->registerPlugin(Lcom/verizon/ads/Plugin;Z)Z

    .line 2234
    new-instance p1, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;

    invoke-direct {p1, p0}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;-><init>(Landroid/content/Context;)V

    sput-object p1, Lcom/verizon/ads/VASAds;->n:Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;

    .line 3209
    new-instance p1, Lcom/verizon/ads/VASAds$7;

    invoke-direct {p1}, Lcom/verizon/ads/VASAds$7;-><init>()V

    const-string v1, "com.verizon.ads.configuration.change"

    invoke-static {p1, v1}, Lcom/verizon/ads/events/Events;->subscribe(Lcom/verizon/ads/events/EventReceiver;Ljava/lang/String;)V

    .line 758
    invoke-static {v3, v2}, Lcom/verizon/ads/VASAds;->a(IZ)V

    .line 760
    sget-object p1, Lcom/verizon/ads/VASAds;->j:Landroid/os/Handler;

    new-instance v1, Lcom/verizon/ads/VASAds$3;

    invoke-direct {v1, p0}, Lcom/verizon/ads/VASAds$3;-><init>(Landroid/app/Application;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 769
    new-instance p0, Lcom/verizon/ads/VASAds$4;

    invoke-direct {p0}, Lcom/verizon/ads/VASAds$4;-><init>()V

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 780
    :try_start_5
    invoke-static {}, Landroidx/lifecycle/w;->a()Landroidx/lifecycle/p;

    move-result-object p0

    invoke-interface {p0}, Landroidx/lifecycle/p;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object p0

    sget-object p1, Lcom/verizon/ads/VASAds;->m:Lcom/verizon/ads/VASAds$ApplicationLifeCycleObserver;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/j;->addObserver(Landroidx/lifecycle/o;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 784
    :catchall_0
    :try_start_6
    sget-object p0, Lcom/verizon/ads/VASAds;->b:Lcom/verizon/ads/Logger;

    const-string p1, "An error occurred while attempting to add the application life cycle observer."

    invoke-virtual {p0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 787
    :goto_0
    monitor-exit v0

    return v2

    :cond_3
    :try_start_7
    const-string p0, "An error occurred while attempting to protect the core domain."

    .line 789
    invoke-virtual {v1, p0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 791
    monitor-exit v0

    return v3

    :catch_0
    move-exception p0

    .line 794
    :try_start_8
    sget-object p1, Lcom/verizon/ads/VASAds;->b:Lcom/verizon/ads/Logger;

    const-string v1, "An exception occurred while attempting to protect the core domain."

    invoke-virtual {p1, v1, p0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 796
    monitor-exit v0

    return v3

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static isAnonymous()Z
    .locals 3

    const-string v0, "com.verizon.ads.core"

    const-string v1, "anonymousUser"

    const/4 v2, 0x1

    .line 983
    invoke-static {v0, v1, v2}, Lcom/verizon/ads/Configuration;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isApplicationInBackground()Z
    .locals 1

    .line 863
    sget-object v0, Lcom/verizon/ads/VASAds;->m:Lcom/verizon/ads/VASAds$ApplicationLifeCycleObserver;

    iget-boolean v0, v0, Lcom/verizon/ads/VASAds$ApplicationLifeCycleObserver;->a:Z

    return v0
.end method

.method public static isInitialized()Z
    .locals 1

    .line 853
    sget-boolean v0, Lcom/verizon/ads/VASAds;->q:Z

    return v0
.end method

.method public static isLocationEnabled()Z
    .locals 3

    const-string v0, "com.verizon.ads.core"

    const-string v1, "locationEnabled"

    const/4 v2, 0x1

    .line 912
    invoke-static {v0, v1, v2}, Lcom/verizon/ads/Configuration;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isPluginEnabled(Ljava/lang/String;)Z
    .locals 3

    .line 657
    invoke-static {p0}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 658
    sget-object p0, Lcom/verizon/ads/VASAds;->b:Lcom/verizon/ads/Logger;

    const-string v0, "id cannot be null or empty."

    invoke-virtual {p0, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return v1

    .line 663
    :cond_0
    sget-object v0, Lcom/verizon/ads/VASAds;->e:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/verizon/ads/VASAds$RegisteredPlugin;

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 666
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 667
    sget-object v0, Lcom/verizon/ads/VASAds;->b:Lcom/verizon/ads/Logger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    const-string p0, "No registered plugin with id = %s"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    :cond_1
    return v1

    .line 673
    :cond_2
    iget-boolean p0, v0, Lcom/verizon/ads/VASAds$RegisteredPlugin;->b:Z

    return p0
.end method

.method public static isShareAdvertiserIdEnabled()Z
    .locals 3

    const-string v0, "com.verizon.ads.core"

    const-string v1, "shareAdvertiserId"

    const/4 v2, 0x0

    .line 1017
    invoke-static {v0, v1, v2}, Lcom/verizon/ads/Configuration;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isShareApplicationIdEnabled()Z
    .locals 3

    const-string v0, "com.verizon.ads.core"

    const-string v1, "shareApplicationId"

    const/4 v2, 0x0

    .line 1039
    invoke-static {v0, v1, v2}, Lcom/verizon/ads/Configuration;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static registerConfigurationProvider(Ljava/lang/String;Lcom/verizon/ads/ConfigurationProvider;)V
    .locals 3

    .line 409
    invoke-static {p0}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    sget-object p0, Lcom/verizon/ads/VASAds;->b:Lcom/verizon/ads/Logger;

    const-string p1, "The pluginId parameter cannot be null or empty."

    invoke-virtual {p0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 416
    sget-object p0, Lcom/verizon/ads/VASAds;->b:Lcom/verizon/ads/Logger;

    const-string p1, "The configurationProvider parameter cannot be null"

    invoke-virtual {p0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 421
    :cond_1
    new-instance v0, Lcom/verizon/ads/ConfigurationProviderRegistration;

    invoke-direct {v0, p0, p1}, Lcom/verizon/ads/ConfigurationProviderRegistration;-><init>(Ljava/lang/String;Lcom/verizon/ads/ConfigurationProvider;)V

    .line 424
    sget-object p0, Lcom/verizon/ads/VASAds;->d:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x3

    .line 426
    invoke-static {p0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 427
    sget-object p0, Lcom/verizon/ads/VASAds;->b:Lcom/verizon/ads/Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p1}, Lcom/verizon/ads/ConfigurationProvider;->getId()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Registered configuration provider <%s>"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 431
    :cond_2
    invoke-static {}, Lcom/verizon/ads/VASAds;->isInitialized()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 432
    sget-object p0, Lcom/verizon/ads/VASAds;->c:Lcom/verizon/ads/ConfigurationProvider$UpdateListener;

    invoke-virtual {v0, p0}, Lcom/verizon/ads/ConfigurationProviderRegistration;->update(Lcom/verizon/ads/ConfigurationProvider$UpdateListener;)V

    :cond_3
    return-void
.end method

.method public static registerPlugin(Lcom/verizon/ads/Plugin;Z)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 505
    sget-object p0, Lcom/verizon/ads/VASAds;->b:Lcom/verizon/ads/Logger;

    const-string p1, "plugin cannot be null."

    invoke-virtual {p0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return v0

    .line 2080
    :cond_0
    iget-object v1, p0, Lcom/verizon/ads/Plugin;->h:Landroid/content/Context;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 2081
    sget-object v1, Lcom/verizon/ads/Plugin;->a:Lcom/verizon/ads/Logger;

    const-string v3, "applicationContext cannot be null."

    invoke-virtual {v1, v3}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x0

    goto :goto_1

    .line 2086
    :cond_1
    iget-object v1, p0, Lcom/verizon/ads/Plugin;->id:Ljava/lang/String;

    invoke-static {v1}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2087
    sget-object v1, Lcom/verizon/ads/Plugin;->a:Lcom/verizon/ads/Logger;

    const-string v3, "id cannot be null or empty."

    invoke-virtual {v1, v3}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 2092
    :cond_2
    iget-object v1, p0, Lcom/verizon/ads/Plugin;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2093
    sget-object v1, Lcom/verizon/ads/Plugin;->a:Lcom/verizon/ads/Logger;

    const-string v3, "name cannot be null or empty."

    invoke-virtual {v1, v3}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 2098
    :cond_3
    iget-object v1, p0, Lcom/verizon/ads/Plugin;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2099
    sget-object v1, Lcom/verizon/ads/Plugin;->a:Lcom/verizon/ads/Logger;

    const-string v3, "version cannot be null or empty."

    invoke-virtual {v1, v3}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 2104
    :cond_4
    iget-object v1, p0, Lcom/verizon/ads/Plugin;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2105
    sget-object v1, Lcom/verizon/ads/Plugin;->a:Lcom/verizon/ads/Logger;

    const-string v3, "author cannot be null or empty."

    invoke-virtual {v1, v3}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 2110
    :cond_5
    iget v1, p0, Lcom/verizon/ads/Plugin;->g:I

    if-gtz v1, :cond_6

    .line 2111
    sget-object v1, Lcom/verizon/ads/Plugin;->a:Lcom/verizon/ads/Logger;

    const-string v3, "minApiLevel must be greater than zero."

    invoke-virtual {v1, v3}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_7

    .line 511
    sget-object p1, Lcom/verizon/ads/VASAds;->b:Lcom/verizon/ads/Logger;

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p0, v1, v0

    const-string p0, "Plugin %s is invalid. Additional details can be found in the log."

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return v0

    .line 516
    :cond_7
    iget v1, p0, Lcom/verizon/ads/Plugin;->g:I

    const/4 v3, 0x3

    if-ge v2, v1, :cond_8

    .line 517
    sget-object p1, Lcom/verizon/ads/VASAds;->b:Lcom/verizon/ads/Logger;

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/verizon/ads/Plugin;->b:Ljava/lang/String;

    aput-object v3, v1, v0

    iget p0, p0, Lcom/verizon/ads/Plugin;->g:I

    .line 518
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    const/4 p0, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p0

    const-string p0, "Plugin[%s] requires core min api level = %d, actual core api level = %d"

    .line 517
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return v0

    .line 523
    :cond_8
    sget-object v1, Lcom/verizon/ads/VASAds;->e:Ljava/util/Map;

    iget-object v4, p0, Lcom/verizon/ads/Plugin;->id:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 524
    sget-object p1, Lcom/verizon/ads/VASAds;->b:Lcom/verizon/ads/Logger;

    new-array v1, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/verizon/ads/Plugin;->id:Ljava/lang/String;

    aput-object p0, v1, v0

    const-string p0, "A plugin with id = %s is already registered."

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return v0

    .line 533
    :cond_9
    :try_start_0
    invoke-virtual {p0}, Lcom/verizon/ads/Plugin;->prepare()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 535
    sget-object v4, Lcom/verizon/ads/VASAds;->b:Lcom/verizon/ads/Logger;

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p0, v5, v0

    const-string v6, "An error occurred preparing plugin %s"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_b

    .line 539
    sget-object v4, Lcom/verizon/ads/VASAds;->e:Ljava/util/Map;

    iget-object v5, p0, Lcom/verizon/ads/Plugin;->id:Ljava/lang/String;

    new-instance v6, Lcom/verizon/ads/VASAds$RegisteredPlugin;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/verizon/ads/VASAds$RegisteredPlugin;-><init>(Lcom/verizon/ads/Plugin;Lcom/verizon/ads/VASAds$1;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    invoke-static {v3}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 542
    sget-object v3, Lcom/verizon/ads/VASAds;->b:Lcom/verizon/ads/Logger;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v0

    const-string v0, "Registered %s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    :cond_a
    if-eqz p1, :cond_c

    .line 546
    iget-object p0, p0, Lcom/verizon/ads/Plugin;->id:Ljava/lang/String;

    invoke-static {p0}, Lcom/verizon/ads/VASAds;->enablePlugin(Ljava/lang/String;)V

    goto :goto_3

    .line 549
    :cond_b
    sget-object p1, Lcom/verizon/ads/VASAds;->b:Lcom/verizon/ads/Logger;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v0

    const-string p0, "Prepare plugin %s failed"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    :cond_c
    :goto_3
    return v1
.end method

.method public static requestAd(Landroid/content/Context;Lcom/verizon/ads/Bid;Ljava/lang/Class;ILcom/verizon/ads/VASAds$AdRequestListener;)V
    .locals 10

    if-nez p0, :cond_0

    .line 347
    sget-object p0, Lcom/verizon/ads/VASAds;->b:Lcom/verizon/ads/Logger;

    const-string p1, "context cannot be null."

    invoke-virtual {p0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p4, :cond_1

    .line 353
    sget-object p0, Lcom/verizon/ads/VASAds;->b:Lcom/verizon/ads/Logger;

    const-string p1, "adRequestListener cannot be null."

    invoke-virtual {p0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 358
    :cond_1
    invoke-static {}, Lcom/verizon/ads/VASAds;->isInitialized()Z

    move-result v0

    const/4 v1, -0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 359
    new-instance p0, Lcom/verizon/ads/ErrorInfo;

    sget-object p1, Lcom/verizon/ads/VASAds;->l:Ljava/lang/String;

    const-string p2, "Verizon Ads SDK must be initialized before requesting ads."

    invoke-direct {p0, p1, p2, v1}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 361
    sget-object p1, Lcom/verizon/ads/VASAds;->b:Lcom/verizon/ads/Logger;

    invoke-virtual {p0}, Lcom/verizon/ads/ErrorInfo;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    .line 363
    invoke-interface {p4, v3, p0, v2}, Lcom/verizon/ads/VASAds$AdRequestListener;->onAdReceived(Lcom/verizon/ads/AdSession;Lcom/verizon/ads/ErrorInfo;Z)V

    return-void

    :cond_2
    const-string v0, "com.verizon.ads.core"

    const-string v4, "sdkEnabled"

    .line 368
    invoke-static {v0, v4, v2}, Lcom/verizon/ads/Configuration;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 370
    new-instance p0, Lcom/verizon/ads/ErrorInfo;

    sget-object p1, Lcom/verizon/ads/VASAds;->l:Ljava/lang/String;

    const-string p2, "Verizon Ads SDK is disabled."

    invoke-direct {p0, p1, p2, v1}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 371
    sget-object p1, Lcom/verizon/ads/VASAds;->b:Lcom/verizon/ads/Logger;

    invoke-virtual {p0}, Lcom/verizon/ads/ErrorInfo;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    .line 373
    invoke-interface {p4, v3, p0, v2}, Lcom/verizon/ads/VASAds$AdRequestListener;->onAdReceived(Lcom/verizon/ads/AdSession;Lcom/verizon/ads/ErrorInfo;Z)V

    return-void

    :cond_3
    if-nez p1, :cond_4

    .line 379
    new-instance p0, Lcom/verizon/ads/ErrorInfo;

    sget-object p1, Lcom/verizon/ads/VASAds;->l:Ljava/lang/String;

    const-string p2, "bid cannot be null"

    invoke-direct {p0, p1, p2, v1}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 380
    sget-object p1, Lcom/verizon/ads/VASAds;->b:Lcom/verizon/ads/Logger;

    invoke-virtual {p0}, Lcom/verizon/ads/ErrorInfo;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    .line 382
    invoke-interface {p4, v3, p0, v2}, Lcom/verizon/ads/VASAds$AdRequestListener;->onAdReceived(Lcom/verizon/ads/AdSession;Lcom/verizon/ads/ErrorInfo;Z)V

    return-void

    .line 387
    :cond_4
    iget-object v0, p1, Lcom/verizon/ads/Bid;->a:Ljava/lang/String;

    invoke-static {v0, p0, v3, v3}, Lcom/verizon/ads/ComponentRegistry;->getComponent(Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONObject;[Ljava/lang/Object;)Lcom/verizon/ads/Component;

    move-result-object p0

    .line 389
    instance-of v0, p0, Lcom/verizon/ads/WaterfallProvider;

    if-eqz v0, :cond_5

    .line 390
    move-object v5, p0

    check-cast v5, Lcom/verizon/ads/WaterfallProvider;

    const/4 v7, 0x0

    move-object v4, p2

    move-object v6, p1

    move v8, p3

    move-object v9, p4

    invoke-static/range {v4 .. v9}, Lcom/verizon/ads/VASAds;->a(Ljava/lang/Class;Lcom/verizon/ads/WaterfallProvider;Lcom/verizon/ads/Bid;Lcom/verizon/ads/RequestMetadata;ILcom/verizon/ads/VASAds$AdRequestListener;)V

    return-void

    .line 393
    :cond_5
    new-instance p0, Lcom/verizon/ads/ErrorInfo;

    sget-object p1, Lcom/verizon/ads/VASAds;->l:Ljava/lang/String;

    const/4 p2, -0x1

    const-string p3, "The waterfall provider factory is either not registered or did not provide a valid waterfall provider instance."

    invoke-direct {p0, p1, p3, p2}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p4, v3, p0, v2}, Lcom/verizon/ads/VASAds$AdRequestListener;->onAdReceived(Lcom/verizon/ads/AdSession;Lcom/verizon/ads/ErrorInfo;Z)V

    return-void
.end method

.method public static requestAds(Landroid/content/Context;Ljava/lang/Class;Lcom/verizon/ads/RequestMetadata;IILcom/verizon/ads/VASAds$AdRequestListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 235
    invoke-static {p0, p1, p2, p4, p5}, Lcom/verizon/ads/VASAds;->requestAds(Landroid/content/Context;Ljava/lang/Class;Lcom/verizon/ads/RequestMetadata;ILcom/verizon/ads/VASAds$AdRequestListener;)V

    return-void
.end method

.method public static requestAds(Landroid/content/Context;Ljava/lang/Class;Lcom/verizon/ads/RequestMetadata;ILcom/verizon/ads/VASAds$AdRequestListener;)V
    .locals 10

    if-nez p0, :cond_0

    .line 163
    sget-object p0, Lcom/verizon/ads/VASAds;->b:Lcom/verizon/ads/Logger;

    const-string p1, "context cannot be null."

    invoke-virtual {p0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p4, :cond_1

    .line 169
    sget-object p0, Lcom/verizon/ads/VASAds;->b:Lcom/verizon/ads/Logger;

    const-string p1, "adRequestListener cannot be null."

    invoke-virtual {p0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 174
    :cond_1
    invoke-static {}, Lcom/verizon/ads/VASAds;->isInitialized()Z

    move-result v0

    const/4 v1, -0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_2

    .line 175
    new-instance p0, Lcom/verizon/ads/ErrorInfo;

    sget-object p1, Lcom/verizon/ads/VASAds;->l:Ljava/lang/String;

    const-string p2, "Verizon Ads SDK must be initialized before requesting ads."

    invoke-direct {p0, p1, p2, v1}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 178
    sget-object p1, Lcom/verizon/ads/VASAds;->b:Lcom/verizon/ads/Logger;

    invoke-virtual {p0}, Lcom/verizon/ads/ErrorInfo;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    .line 180
    invoke-interface {p4, v2, p0, v3}, Lcom/verizon/ads/VASAds$AdRequestListener;->onAdReceived(Lcom/verizon/ads/AdSession;Lcom/verizon/ads/ErrorInfo;Z)V

    return-void

    :cond_2
    const-string v0, "com.verizon.ads.core"

    const-string v4, "sdkEnabled"

    .line 185
    invoke-static {v0, v4, v3}, Lcom/verizon/ads/Configuration;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_3

    .line 187
    new-instance p0, Lcom/verizon/ads/ErrorInfo;

    sget-object p1, Lcom/verizon/ads/VASAds;->l:Ljava/lang/String;

    const-string p2, "Verizon Ads SDK is disabled."

    invoke-direct {p0, p1, p2, v1}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 188
    sget-object p1, Lcom/verizon/ads/VASAds;->b:Lcom/verizon/ads/Logger;

    invoke-virtual {p0}, Lcom/verizon/ads/ErrorInfo;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    .line 190
    invoke-interface {p4, v2, p0, v3}, Lcom/verizon/ads/VASAds$AdRequestListener;->onAdReceived(Lcom/verizon/ads/AdSession;Lcom/verizon/ads/ErrorInfo;Z)V

    return-void

    :cond_3
    const/4 v1, 0x0

    const-string v4, "enableBackgroundAdRequest"

    .line 195
    invoke-static {v0, v4, v1}, Lcom/verizon/ads/Configuration;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 196
    invoke-static {}, Lcom/verizon/ads/VASAds;->isApplicationInBackground()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 197
    new-instance p0, Lcom/verizon/ads/ErrorInfo;

    sget-object p1, Lcom/verizon/ads/VASAds;->l:Ljava/lang/String;

    const/4 p2, -0x4

    const-string p3, "Verizon Ads SDK cannot make an ad request when app is in background."

    invoke-direct {p0, p1, p3, p2}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 198
    sget-object p1, Lcom/verizon/ads/VASAds;->b:Lcom/verizon/ads/Logger;

    invoke-virtual {p0}, Lcom/verizon/ads/ErrorInfo;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    .line 200
    invoke-interface {p4, v2, p0, v3}, Lcom/verizon/ads/VASAds$AdRequestListener;->onAdReceived(Lcom/verizon/ads/AdSession;Lcom/verizon/ads/ErrorInfo;Z)V

    return-void

    .line 205
    :cond_4
    invoke-static {p0, p2}, Lcom/verizon/ads/VASAds;->a(Landroid/content/Context;Lcom/verizon/ads/RequestMetadata;)Lcom/verizon/ads/WaterfallProvider;

    move-result-object v5

    if-eqz v5, :cond_5

    const/4 v6, 0x0

    move-object v4, p1

    move-object v7, p2

    move v8, p3

    move-object v9, p4

    .line 208
    invoke-static/range {v4 .. v9}, Lcom/verizon/ads/VASAds;->a(Ljava/lang/Class;Lcom/verizon/ads/WaterfallProvider;Lcom/verizon/ads/Bid;Lcom/verizon/ads/RequestMetadata;ILcom/verizon/ads/VASAds$AdRequestListener;)V

    return-void

    .line 211
    :cond_5
    new-instance p0, Lcom/verizon/ads/ErrorInfo;

    sget-object p1, Lcom/verizon/ads/VASAds;->l:Ljava/lang/String;

    const/4 p2, -0x1

    const-string p3, "The default waterfall provider factory is either not registered or did not provide a valid waterfall provider instance."

    invoke-direct {p0, p1, p3, p2}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p4, v2, p0, v3}, Lcom/verizon/ads/VASAds$AdRequestListener;->onAdReceived(Lcom/verizon/ads/AdSession;Lcom/verizon/ads/ErrorInfo;Z)V

    return-void
.end method

.method public static requestBid(Landroid/content/Context;Lcom/verizon/ads/RequestMetadata;ILcom/verizon/ads/BidRequestListener;)V
    .locals 5

    if-nez p0, :cond_0

    .line 252
    sget-object p0, Lcom/verizon/ads/VASAds;->b:Lcom/verizon/ads/Logger;

    const-string p1, "context cannot be null."

    invoke-virtual {p0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p3, :cond_1

    .line 258
    sget-object p0, Lcom/verizon/ads/VASAds;->b:Lcom/verizon/ads/Logger;

    const-string p1, "bidRequestListener cannot be null."

    invoke-virtual {p0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 263
    :cond_1
    invoke-static {}, Lcom/verizon/ads/VASAds;->isInitialized()Z

    move-result v0

    const/4 v1, -0x3

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 264
    new-instance p0, Lcom/verizon/ads/ErrorInfo;

    sget-object p1, Lcom/verizon/ads/VASAds;->l:Ljava/lang/String;

    const-string p2, "Verizon Ads SDK must be initialized before requesting bids."

    invoke-direct {p0, p1, p2, v1}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 267
    sget-object p1, Lcom/verizon/ads/VASAds;->b:Lcom/verizon/ads/Logger;

    invoke-virtual {p0}, Lcom/verizon/ads/ErrorInfo;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    .line 269
    invoke-interface {p3, v2, p0}, Lcom/verizon/ads/BidRequestListener;->onComplete(Lcom/verizon/ads/Bid;Lcom/verizon/ads/ErrorInfo;)V

    return-void

    :cond_2
    const/4 v0, 0x1

    const-string v3, "com.verizon.ads.core"

    const-string v4, "sdkEnabled"

    .line 274
    invoke-static {v3, v4, v0}, Lcom/verizon/ads/Configuration;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 276
    new-instance p0, Lcom/verizon/ads/ErrorInfo;

    sget-object p1, Lcom/verizon/ads/VASAds;->l:Ljava/lang/String;

    const-string p2, "Verizon Ads SDK is disabled."

    invoke-direct {p0, p1, p2, v1}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 277
    sget-object p1, Lcom/verizon/ads/VASAds;->b:Lcom/verizon/ads/Logger;

    invoke-virtual {p0}, Lcom/verizon/ads/ErrorInfo;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    .line 279
    invoke-interface {p3, v2, p0}, Lcom/verizon/ads/BidRequestListener;->onComplete(Lcom/verizon/ads/Bid;Lcom/verizon/ads/ErrorInfo;)V

    return-void

    :cond_3
    if-eqz p1, :cond_4

    .line 287
    invoke-virtual {p1}, Lcom/verizon/ads/RequestMetadata;->getPlacementData()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 288
    invoke-virtual {p1}, Lcom/verizon/ads/RequestMetadata;->getPlacementData()Ljava/util/Map;

    move-result-object v0

    const-string v1, "overrideWaterfallProvider"

    .line 290
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 293
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 294
    invoke-static {v0, p0, v2, v2}, Lcom/verizon/ads/ComponentRegistry;->getComponent(Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONObject;[Ljava/lang/Object;)Lcom/verizon/ads/Component;

    move-result-object v1

    goto :goto_0

    :cond_4
    move-object v0, v2

    move-object v1, v0

    .line 298
    :goto_0
    instance-of v4, v1, Lcom/verizon/ads/WaterfallProvider;

    if-nez v4, :cond_6

    const-string v0, "defaultWaterfallProvider"

    .line 299
    invoke-static {v3, v0, v2}, Lcom/verizon/ads/Configuration;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 302
    invoke-static {v0, p0, v2, v2}, Lcom/verizon/ads/ComponentRegistry;->getComponent(Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONObject;[Ljava/lang/Object;)Lcom/verizon/ads/Component;

    move-result-object v1

    goto :goto_1

    .line 304
    :cond_5
    sget-object p0, Lcom/verizon/ads/VASAds;->b:Lcom/verizon/ads/Logger;

    const-string v0, "No default waterfall provider registered in Configuration."

    invoke-virtual {p0, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    move-object v0, v2

    .line 309
    :cond_6
    :goto_1
    instance-of p0, v1, Lcom/verizon/ads/WaterfallProvider;

    if-eqz p0, :cond_7

    .line 312
    check-cast v1, Lcom/verizon/ads/WaterfallProvider;

    new-instance p0, Lcom/verizon/ads/VASAds$2;

    invoke-direct {p0, v0, p3}, Lcom/verizon/ads/VASAds$2;-><init>(Ljava/lang/String;Lcom/verizon/ads/BidRequestListener;)V

    invoke-virtual {v1, p1, p2, p0}, Lcom/verizon/ads/WaterfallProvider;->requestBid(Lcom/verizon/ads/RequestMetadata;ILcom/verizon/ads/BidRequestListener;)V

    return-void

    .line 326
    :cond_7
    new-instance p0, Lcom/verizon/ads/ErrorInfo;

    sget-object p1, Lcom/verizon/ads/VASAds;->l:Ljava/lang/String;

    const/4 p2, -0x1

    const-string v0, "The default waterfall provider factory is either not registered or did not provide a valid waterfall provider instance."

    invoke-direct {p0, p1, v0, p2}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p3, v2, p0}, Lcom/verizon/ads/BidRequestListener;->onComplete(Lcom/verizon/ads/Bid;Lcom/verizon/ads/ErrorInfo;)V

    return-void
.end method

.method public static setCoppa(Z)V
    .locals 3

    const-string v0, "com.verizon.ads.core"

    const-string v1, "coppa"

    const-string v2, "vas-core-key"

    .line 995
    invoke-static {p0, v0, v1, v2}, Lcom/verizon/ads/Configuration;->setBoolean(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setLocationEnabled(Z)V
    .locals 3

    const-string v0, "com.verizon.ads.core"

    const-string v1, "locationEnabled"

    const-string v2, "vas-core-key"

    .line 901
    invoke-static {p0, v0, v1, v2}, Lcom/verizon/ads/Configuration;->setBoolean(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setLogLevel(I)V
    .locals 0

    .line 923
    invoke-static {p0}, Lcom/verizon/ads/Logger;->a(I)V

    return-void
.end method

.method public static setPrivacyData(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "com.verizon.ads.core"

    const-string v1, "userPrivacyData"

    const-string v2, "vas-core-key"

    .line 969
    invoke-static {p0, v0, v1, v2}, Lcom/verizon/ads/Configuration;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    invoke-static {}, Lcom/verizon/ads/VASAds;->c()V

    return-void
.end method

.method public static setRequestMetadata(Lcom/verizon/ads/RequestMetadata;)V
    .locals 0

    .line 946
    sput-object p0, Lcom/verizon/ads/VASAds;->p:Lcom/verizon/ads/RequestMetadata;

    return-void
.end method

.method public static setShareAdvertiserIdEnabled(Z)V
    .locals 3

    const-string v0, "com.verizon.ads.core"

    const-string v1, "shareAdvertiserId"

    const-string v2, "vas-core-key"

    .line 1028
    invoke-static {p0, v0, v1, v2}, Lcom/verizon/ads/Configuration;->setBoolean(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setShareApplicationIdEnabled(Z)V
    .locals 3

    const-string v0, "com.verizon.ads.core"

    const-string v1, "shareApplicationId"

    const-string v2, "vas-core-key"

    .line 1050
    invoke-static {p0, v0, v1, v2}, Lcom/verizon/ads/Configuration;->setBoolean(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
