.class final Lio/bidmachine/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BID_MACHINE_SHARED_PREF:Ljava/lang/String; = "BidMachinePref"

.field private static final DEF_AUCTION_URL:Ljava/lang/String; = "https://api.appodealx.com/openrtb3/auction"

.field static DEF_INIT_URL:Ljava/lang/String; = null

.field private static final MAX_INIT_REQUEST_DELAY_MS:J

.field private static final MIN_INIT_REQUEST_DELAY_MS:J

.field private static final PREF_IFV:Ljava/lang/String; = "bid_machine_ifv"

.field private static final PREF_INIT_DATA:Ljava/lang/String; = "initData"

.field private static volatile instance:Lio/bidmachine/d;


# instance fields
.field private final adRequestListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/AdRequest$AdRequestListener;",
            ">;"
        }
    .end annotation
.end field

.field appContext:Landroid/content/Context;

.field currentAuctionUrl:Ljava/lang/String;

.field currentInitRequest:Lio/bidmachine/ApiRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/ApiRequest<",
            "Lio/bidmachine/protobuf/InitRequest;",
            "Lio/bidmachine/protobuf/InitResponse;",
            ">;"
        }
    .end annotation
.end field

.field currentInitUrl:Ljava/lang/String;

.field private final deviceParams:Lio/bidmachine/DeviceParams;

.field private extraParams:Lio/bidmachine/ExtraParams;

.field private final iabSharedPreference:Lio/bidmachine/e;

.field ifv:Ljava/lang/String;

.field private final initNetworkConfigList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/NetworkConfig;",
            ">;"
        }
    .end annotation
.end field

.field private initRequestDelayMs:J

.field private isInitialized:Z

.field private isTestMode:Z

.field private priceFloorParams:Lio/bidmachine/PriceFloorParams;

.field private publisher:Lio/bidmachine/Publisher;

.field private final rescheduleInitRunnable:Ljava/lang/Runnable;

.field private sellerId:Ljava/lang/String;

.field private sessionTracker:Lio/bidmachine/i;

.field private targetingParams:Lio/bidmachine/TargetingParams;

.field private final trackingEventTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/bidmachine/TrackEventType;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final trackingObject:Lio/bidmachine/TrackingObject;

.field private userRestrictionParams:Lio/bidmachine/UserRestrictionParams;

.field private weakTopActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "BidMachine"

    .line 53
    invoke-static {v0}, Lio/bidmachine/core/Logger;->setTag(Ljava/lang/String;)V

    .line 54
    new-instance v0, Lio/bidmachine/d$1;

    invoke-direct {v0}, Lio/bidmachine/d$1;-><init>()V

    invoke-static {v0}, Lio/bidmachine/core/Logger;->setMessageBuilder(Lio/bidmachine/core/Logger$LoggerMessageBuilder;)V

    const-string v0, "https://api.appodealx.com/init"

    .line 67
    sput-object v0, Lio/bidmachine/d;->DEF_INIT_URL:Ljava/lang/String;

    .line 111
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lio/bidmachine/d;->MIN_INIT_REQUEST_DELAY_MS:J

    .line 112
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x80

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lio/bidmachine/d;->MAX_INIT_REQUEST_DELAY_MS:J

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Lio/bidmachine/TargetingParams;

    invoke-direct {v0}, Lio/bidmachine/TargetingParams;-><init>()V

    iput-object v0, p0, Lio/bidmachine/d;->targetingParams:Lio/bidmachine/TargetingParams;

    .line 81
    new-instance v0, Lio/bidmachine/ExtraParams;

    invoke-direct {v0}, Lio/bidmachine/ExtraParams;-><init>()V

    iput-object v0, p0, Lio/bidmachine/d;->extraParams:Lio/bidmachine/ExtraParams;

    .line 83
    new-instance v0, Lio/bidmachine/UserRestrictionParams;

    invoke-direct {v0}, Lio/bidmachine/UserRestrictionParams;-><init>()V

    iput-object v0, p0, Lio/bidmachine/d;->userRestrictionParams:Lio/bidmachine/UserRestrictionParams;

    .line 85
    new-instance v0, Lio/bidmachine/PriceFloorParams;

    invoke-direct {v0}, Lio/bidmachine/PriceFloorParams;-><init>()V

    .line 88
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    invoke-virtual {v0, v1, v2, v3}, Lio/bidmachine/PriceFloorParams;->addPriceFloor(Ljava/lang/String;D)Lio/bidmachine/PriceFloorParams;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/d;->priceFloorParams:Lio/bidmachine/PriceFloorParams;

    .line 89
    new-instance v0, Lio/bidmachine/DeviceParams;

    invoke-direct {v0}, Lio/bidmachine/DeviceParams;-><init>()V

    iput-object v0, p0, Lio/bidmachine/d;->deviceParams:Lio/bidmachine/DeviceParams;

    .line 91
    new-instance v0, Lio/bidmachine/e;

    invoke-direct {v0}, Lio/bidmachine/e;-><init>()V

    iput-object v0, p0, Lio/bidmachine/d;->iabSharedPreference:Lio/bidmachine/e;

    .line 101
    sget-object v0, Lio/bidmachine/d;->DEF_INIT_URL:Ljava/lang/String;

    iput-object v0, p0, Lio/bidmachine/d;->currentInitUrl:Ljava/lang/String;

    const-string v0, "https://api.appodealx.com/openrtb3/auction"

    .line 103
    iput-object v0, p0, Lio/bidmachine/d;->currentAuctionUrl:Ljava/lang/String;

    .line 105
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lio/bidmachine/TrackEventType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lio/bidmachine/d;->trackingEventTypes:Ljava/util/Map;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/bidmachine/d;->initNetworkConfigList:Ljava/util/List;

    const-wide/16 v0, 0x0

    .line 110
    iput-wide v0, p0, Lio/bidmachine/d;->initRequestDelayMs:J

    .line 117
    new-instance v0, Lio/bidmachine/d$2;

    invoke-direct {v0, p0}, Lio/bidmachine/d$2;-><init>(Lio/bidmachine/d;)V

    iput-object v0, p0, Lio/bidmachine/d;->rescheduleInitRunnable:Ljava/lang/Runnable;

    .line 124
    new-instance v0, Lio/bidmachine/d$3;

    invoke-direct {v0, p0}, Lio/bidmachine/d$3;-><init>(Lio/bidmachine/d;)V

    iput-object v0, p0, Lio/bidmachine/d;->trackingObject:Lio/bidmachine/TrackingObject;

    .line 131
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/bidmachine/d;->adRequestListeners:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lio/bidmachine/d;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lio/bidmachine/d;->sellerId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lio/bidmachine/d;Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/InitializationCallback;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/d;->requestInitData(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/InitializationCallback;)V

    return-void
.end method

.method static synthetic access$1000()J
    .locals 2

    .line 36
    sget-wide v0, Lio/bidmachine/d;->MAX_INIT_REQUEST_DELAY_MS:J

    return-wide v0
.end method

.method static synthetic access$1100(Lio/bidmachine/d;Landroid/content/Context;)Lio/bidmachine/protobuf/InitResponse;
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lio/bidmachine/d;->getInitResponseFromPref(Landroid/content/Context;)Lio/bidmachine/protobuf/InitResponse;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lio/bidmachine/d;)Lio/bidmachine/TargetingParams;
    .locals 0

    .line 36
    iget-object p0, p0, Lio/bidmachine/d;->targetingParams:Lio/bidmachine/TargetingParams;

    return-object p0
.end method

.method static synthetic access$1300(Lio/bidmachine/d;)Lio/bidmachine/UserRestrictionParams;
    .locals 0

    .line 36
    iget-object p0, p0, Lio/bidmachine/d;->userRestrictionParams:Lio/bidmachine/UserRestrictionParams;

    return-object p0
.end method

.method static synthetic access$200(Lio/bidmachine/d;Landroid/content/Context;Lio/bidmachine/protobuf/InitResponse;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lio/bidmachine/d;->handleInitResponse(Landroid/content/Context;Lio/bidmachine/protobuf/InitResponse;)V

    return-void
.end method

.method static synthetic access$300(Lio/bidmachine/d;Landroid/content/Context;Lio/bidmachine/protobuf/InitResponse;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lio/bidmachine/d;->storeInitResponse(Landroid/content/Context;Lio/bidmachine/protobuf/InitResponse;)V

    return-void
.end method

.method static synthetic access$400(Lio/bidmachine/d;Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lio/bidmachine/d;->initializeNetworks(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$500(Lio/bidmachine/d;)J
    .locals 2

    .line 36
    iget-wide v0, p0, Lio/bidmachine/d;->initRequestDelayMs:J

    return-wide v0
.end method

.method static synthetic access$502(Lio/bidmachine/d;J)J
    .locals 0

    .line 36
    iput-wide p1, p0, Lio/bidmachine/d;->initRequestDelayMs:J

    return-wide p1
.end method

.method static synthetic access$600(Lio/bidmachine/d;)Ljava/lang/Runnable;
    .locals 0

    .line 36
    iget-object p0, p0, Lio/bidmachine/d;->rescheduleInitRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$700(Lio/bidmachine/d;Lio/bidmachine/InitializationCallback;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lio/bidmachine/d;->notifyInitializationFinished(Lio/bidmachine/InitializationCallback;)V

    return-void
.end method

.method static synthetic access$800(Lio/bidmachine/d;)Lio/bidmachine/TrackingObject;
    .locals 0

    .line 36
    iget-object p0, p0, Lio/bidmachine/d;->trackingObject:Lio/bidmachine/TrackingObject;

    return-object p0
.end method

.method static synthetic access$900()J
    .locals 2

    .line 36
    sget-wide v0, Lio/bidmachine/d;->MIN_INIT_REQUEST_DELAY_MS:J

    return-wide v0
.end method

.method static get()Lio/bidmachine/d;
    .locals 2

    .line 42
    sget-object v0, Lio/bidmachine/d;->instance:Lio/bidmachine/d;

    if-nez v0, :cond_1

    .line 43
    const-class v0, Lio/bidmachine/d;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lio/bidmachine/d;->instance:Lio/bidmachine/d;

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Lio/bidmachine/d;

    invoke-direct {v1}, Lio/bidmachine/d;-><init>()V

    sput-object v1, Lio/bidmachine/d;->instance:Lio/bidmachine/d;

    .line 47
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 49
    :cond_1
    :goto_0
    sget-object v0, Lio/bidmachine/d;->instance:Lio/bidmachine/d;

    return-object v0
.end method

.method private getInitResponseFromPref(Landroid/content/Context;)Lio/bidmachine/protobuf/InitResponse;
    .locals 4

    const-string v0, "BidMachinePref"

    const/4 v1, 0x0

    .line 346
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "initData"

    .line 348
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 350
    :try_start_0
    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 351
    invoke-static {v2, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-static {v1}, Lio/bidmachine/protobuf/InitResponse;->parseFrom([B)Lio/bidmachine/protobuf/InitResponse;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 353
    :catch_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-object v3
.end method

.method private handleInitResponse(Landroid/content/Context;Lio/bidmachine/protobuf/InitResponse;)V
    .locals 2

    .line 276
    invoke-virtual {p2}, Lio/bidmachine/protobuf/InitResponse;->getEndpoint()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 277
    invoke-virtual {p2}, Lio/bidmachine/protobuf/InitResponse;->getEndpoint()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/d;->currentAuctionUrl:Ljava/lang/String;

    .line 279
    :cond_0
    iget-object p1, p0, Lio/bidmachine/d;->trackingEventTypes:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 280
    iget-object p1, p0, Lio/bidmachine/d;->trackingEventTypes:Ljava/util/Map;

    invoke-virtual {p2}, Lio/bidmachine/protobuf/InitResponse;->getEventList()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lio/bidmachine/g;->prepareEvents(Ljava/util/Map;Ljava/util/List;)V

    .line 281
    invoke-static {}, Lio/bidmachine/SessionManager;->get()Lio/bidmachine/SessionManager;

    move-result-object p1

    invoke-virtual {p2}, Lio/bidmachine/protobuf/InitResponse;->getSessionResetAfter()I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Lio/bidmachine/SessionManager;->setSessionResetAfter(J)V

    return-void
.end method

.method private initializeNetworks(Landroid/content/Context;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/AdNetwork;",
            ">;)V"
        }
    .end annotation

    .line 286
    invoke-static {}, Lio/bidmachine/f;->isNetworksInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 289
    :cond_0
    invoke-virtual {p0}, Lio/bidmachine/d;->getTargetingParams()Lio/bidmachine/TargetingParams;

    move-result-object v0

    .line 290
    invoke-virtual {p0}, Lio/bidmachine/d;->getUserRestrictionParams()Lio/bidmachine/UserRestrictionParams;

    move-result-object v1

    if-eqz p2, :cond_4

    .line 292
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/protobuf/AdNetwork;

    .line 293
    invoke-virtual {v2}, Lio/bidmachine/protobuf/AdNetwork;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/bidmachine/f;->isNetworkRegistered(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 297
    invoke-virtual {v2}, Lio/bidmachine/protobuf/AdNetwork;->getName()Ljava/lang/String;

    move-result-object v3

    .line 298
    invoke-virtual {v2}, Lio/bidmachine/protobuf/AdNetwork;->getCustomParamsMap()Ljava/util/Map;

    move-result-object v4

    .line 296
    invoke-static {p1, v3, v4}, Lio/bidmachine/NetworkConfig;->create(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Lio/bidmachine/NetworkConfig;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 300
    invoke-virtual {v2}, Lio/bidmachine/protobuf/AdNetwork;->getAdUnitsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    .line 301
    invoke-virtual {v4}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->getAdFormat()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lio/bidmachine/AdsFormat;->byRemoteName(Ljava/lang/String;)Lio/bidmachine/AdsFormat;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 304
    invoke-virtual {v4}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->getCustomParamsMap()Ljava/util/Map;

    move-result-object v4

    .line 303
    invoke-virtual {v3, v5, v4}, Lio/bidmachine/NetworkConfig;->withMediationConfig(Lio/bidmachine/AdsFormat;Ljava/util/Map;)Lio/bidmachine/NetworkConfig;

    goto :goto_1

    .line 307
    :cond_3
    sget-object v2, Lio/bidmachine/h;->Init:Lio/bidmachine/h;

    invoke-virtual {v3, v2}, Lio/bidmachine/NetworkConfig;->setRegisterSource(Lio/bidmachine/h;)V

    .line 309
    invoke-static {v3}, Lio/bidmachine/f;->registerNetwork(Lio/bidmachine/NetworkConfig;)V

    .line 310
    iget-object v2, p0, Lio/bidmachine/d;->initNetworkConfigList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 314
    :cond_4
    new-instance p2, Lio/bidmachine/k;

    invoke-direct {p2, p1}, Lio/bidmachine/k;-><init>(Landroid/content/Context;)V

    new-instance p1, Lio/bidmachine/l;

    invoke-direct {p1, v0, v1}, Lio/bidmachine/l;-><init>(Lio/bidmachine/TargetingParams;Lio/bidmachine/models/DataRestrictions;)V

    new-instance v0, Lio/bidmachine/d$7;

    invoke-direct {v0, p0}, Lio/bidmachine/d$7;-><init>(Lio/bidmachine/d;)V

    invoke-static {p2, p1, v0}, Lio/bidmachine/f;->initializeNetworks(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/f$b;)V

    return-void
.end method

.method private loadStoredInitResponse(Landroid/content/Context;)V
    .locals 1

    .line 338
    invoke-direct {p0, p1}, Lio/bidmachine/d;->getInitResponseFromPref(Landroid/content/Context;)Lio/bidmachine/protobuf/InitResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 340
    invoke-direct {p0, p1, v0}, Lio/bidmachine/d;->handleInitResponse(Landroid/content/Context;Lio/bidmachine/protobuf/InitResponse;)V

    :cond_0
    return-void
.end method

.method private notifyInitializationFinished(Lio/bidmachine/InitializationCallback;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 266
    new-instance v0, Lio/bidmachine/d$6;

    invoke-direct {v0, p0, p1}, Lio/bidmachine/d$6;-><init>(Lio/bidmachine/d;Lio/bidmachine/InitializationCallback;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private requestInitData(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/InitializationCallback;)V
    .locals 3

    .line 198
    iget-object v0, p0, Lio/bidmachine/d;->currentInitRequest:Lio/bidmachine/ApiRequest;

    if-eqz v0, :cond_0

    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lio/bidmachine/d;->trackingObject:Lio/bidmachine/TrackingObject;

    sget-object v1, Lio/bidmachine/TrackEventType;->InitLoading:Lio/bidmachine/TrackEventType;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lio/bidmachine/BidMachineEvents;->eventStart(Lio/bidmachine/TrackingObject;Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;)V

    .line 200
    new-instance v0, Lio/bidmachine/d$5;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/bidmachine/d$5;-><init>(Lio/bidmachine/d;Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/InitializationCallback;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onBackgroundThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private storeInitResponse(Landroid/content/Context;Lio/bidmachine/protobuf/InitResponse;)V
    .locals 2

    const-string v0, "BidMachinePref"

    const/4 v1, 0x0

    .line 326
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 329
    :try_start_0
    invoke-virtual {p2}, Lio/bidmachine/protobuf/InitResponse;->toByteArray()[B

    move-result-object p2

    invoke-static {p2, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    .line 330
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "initData"

    .line 331
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 332
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method final getAdRequestListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/AdRequest$AdRequestListener;",
            ">;"
        }
    .end annotation

    .line 482
    iget-object v0, p0, Lio/bidmachine/d;->adRequestListeners:Ljava/util/List;

    return-object v0
.end method

.method final getAppContext()Landroid/content/Context;
    .locals 1

    .line 174
    iget-object v0, p0, Lio/bidmachine/d;->appContext:Landroid/content/Context;

    return-object v0
.end method

.method final getAuctionUrl()Ljava/lang/String;
    .locals 1

    .line 452
    iget-object v0, p0, Lio/bidmachine/d;->currentAuctionUrl:Ljava/lang/String;

    return-object v0
.end method

.method final getDeviceParams()Lio/bidmachine/DeviceParams;
    .locals 1

    .line 430
    iget-object v0, p0, Lio/bidmachine/d;->deviceParams:Lio/bidmachine/DeviceParams;

    return-object v0
.end method

.method final getExtraParams()Lio/bidmachine/ExtraParams;
    .locals 1

    .line 415
    iget-object v0, p0, Lio/bidmachine/d;->extraParams:Lio/bidmachine/ExtraParams;

    return-object v0
.end method

.method final getIabSharedPreference()Lio/bidmachine/e;
    .locals 1

    .line 435
    iget-object v0, p0, Lio/bidmachine/d;->iabSharedPreference:Lio/bidmachine/e;

    return-object v0
.end method

.method final getInitNetworkConfigList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/NetworkConfig;",
            ">;"
        }
    .end annotation

    .line 366
    iget-object v0, p0, Lio/bidmachine/d;->initNetworkConfigList:Ljava/util/List;

    return-object v0
.end method

.method final getPriceFloorParams()Lio/bidmachine/PriceFloorParams;
    .locals 1

    .line 425
    iget-object v0, p0, Lio/bidmachine/d;->priceFloorParams:Lio/bidmachine/PriceFloorParams;

    return-object v0
.end method

.method final getPublisher()Lio/bidmachine/Publisher;
    .locals 1

    .line 402
    iget-object v0, p0, Lio/bidmachine/d;->publisher:Lio/bidmachine/Publisher;

    return-object v0
.end method

.method final getSellerId()Ljava/lang/String;
    .locals 1

    .line 388
    iget-object v0, p0, Lio/bidmachine/d;->sellerId:Ljava/lang/String;

    return-object v0
.end method

.method final getSessionTracker()Lio/bidmachine/i;
    .locals 1

    .line 383
    iget-object v0, p0, Lio/bidmachine/d;->sessionTracker:Lio/bidmachine/i;

    return-object v0
.end method

.method final getTargetingParams()Lio/bidmachine/TargetingParams;
    .locals 1

    .line 397
    iget-object v0, p0, Lio/bidmachine/d;->targetingParams:Lio/bidmachine/TargetingParams;

    return-object v0
.end method

.method final getTopActivity()Landroid/app/Activity;
    .locals 1

    .line 457
    iget-object v0, p0, Lio/bidmachine/d;->weakTopActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method final getTrackingUrls(Lio/bidmachine/TrackEventType;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/TrackEventType;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 361
    iget-object v0, p0, Lio/bidmachine/d;->trackingEventTypes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method final getUserRestrictionParams()Lio/bidmachine/UserRestrictionParams;
    .locals 1

    .line 420
    iget-object v0, p0, Lio/bidmachine/d;->userRestrictionParams:Lio/bidmachine/UserRestrictionParams;

    return-object v0
.end method

.method final declared-synchronized initialize(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/InitializationCallback;)V
    .locals 1

    monitor-enter p0

    .line 139
    :try_start_0
    iget-boolean v0, p0, Lio/bidmachine/d;->isInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 140
    monitor-exit p0

    return-void

    :cond_0
    if-nez p1, :cond_1

    :try_start_1
    const-string p1, "Initialization fail: Context is not provided"

    .line 143
    invoke-static {p1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    monitor-exit p0

    return-void

    .line 146
    :cond_1
    :try_start_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "Initialization fail: Seller id is not provided"

    .line 147
    invoke-static {p1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 148
    monitor-exit p0

    return-void

    .line 150
    :cond_2
    :try_start_3
    iput-object p2, p0, Lio/bidmachine/d;->sellerId:Ljava/lang/String;

    .line 151
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/d;->appContext:Landroid/content/Context;

    .line 152
    new-instance v0, Lio/bidmachine/j;

    invoke-direct {v0}, Lio/bidmachine/j;-><init>()V

    iput-object v0, p0, Lio/bidmachine/d;->sessionTracker:Lio/bidmachine/i;

    .line 153
    invoke-direct {p0, p1}, Lio/bidmachine/d;->loadStoredInitResponse(Landroid/content/Context;)V

    .line 154
    iget-object v0, p0, Lio/bidmachine/d;->iabSharedPreference:Lio/bidmachine/e;

    invoke-virtual {v0, p1}, Lio/bidmachine/e;->initialize(Landroid/content/Context;)V

    .line 155
    new-instance v0, Lio/bidmachine/d$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/bidmachine/d$4;-><init>(Lio/bidmachine/d;Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/InitializationCallback;)V

    invoke-static {p1, v0}, Lio/bidmachine/core/AdvertisingIdClientInfo;->executeTask(Landroid/content/Context;Lio/bidmachine/core/AdvertisingIdClientInfo$Closure;)V

    .line 164
    invoke-static {}, Lio/bidmachine/utils/ActivityHelper;->getTopActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p0, p2}, Lio/bidmachine/d;->setTopActivity(Landroid/app/Activity;)V

    .line 165
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Landroid/app/Application;

    new-instance p3, Lio/bidmachine/a;

    invoke-direct {p3}, Lio/bidmachine/a;-><init>()V

    .line 166
    invoke-virtual {p2, p3}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 167
    invoke-static {}, Lio/bidmachine/SessionManager;->get()Lio/bidmachine/SessionManager;

    move-result-object p2

    invoke-virtual {p2}, Lio/bidmachine/SessionManager;->resume()V

    .line 168
    invoke-static {p1}, Lio/bidmachine/utils/BluetoothUtils;->register(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 169
    iput-boolean p1, p0, Lio/bidmachine/d;->isInitialized:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 170
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final isInitialized()Z
    .locals 1

    .line 370
    iget-boolean v0, p0, Lio/bidmachine/d;->isInitialized:Z

    return v0
.end method

.method final isTestMode()Z
    .locals 1

    .line 378
    iget-boolean v0, p0, Lio/bidmachine/d;->isTestMode:Z

    return v0
.end method

.method final obtainIFV(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 179
    iget-object v0, p0, Lio/bidmachine/d;->ifv:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    iget-object p1, p0, Lio/bidmachine/d;->ifv:Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 v0, 0x0

    const-string v1, "BidMachinePref"

    .line 182
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "bid_machine_ifv"

    .line 184
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/d;->ifv:Ljava/lang/String;

    .line 185
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 186
    iget-object p1, p0, Lio/bidmachine/d;->ifv:Ljava/lang/String;

    return-object p1

    .line 188
    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/d;->ifv:Ljava/lang/String;

    .line 189
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Lio/bidmachine/d;->ifv:Ljava/lang/String;

    .line 190
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 191
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 192
    iget-object p1, p0, Lio/bidmachine/d;->ifv:Ljava/lang/String;

    return-object p1
.end method

.method final registerAdRequestListener(Lio/bidmachine/AdRequest$AdRequestListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 470
    :cond_0
    iget-object v0, p0, Lio/bidmachine/d;->adRequestListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final setEndpoint(Ljava/lang/String;)V
    .locals 2

    .line 439
    iget-boolean v0, p0, Lio/bidmachine/d;->isInitialized:Z

    if-eqz v0, :cond_0

    const-string p1, "Can\'t change endpoint url after initialization"

    .line 440
    invoke-static {p1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    return-void

    .line 443
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "Endpoint is empty or null, skipping setting new endpoint..."

    .line 444
    invoke-static {p1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    return-void

    .line 447
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/init"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/d;->currentInitUrl:Ljava/lang/String;

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/openrtb3/auction"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/d;->currentAuctionUrl:Ljava/lang/String;

    return-void
.end method

.method final setExtraParams(Lio/bidmachine/ExtraParams;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 410
    :cond_0
    new-instance p1, Lio/bidmachine/ExtraParams;

    invoke-direct {p1}, Lio/bidmachine/ExtraParams;-><init>()V

    :goto_0
    iput-object p1, p0, Lio/bidmachine/d;->extraParams:Lio/bidmachine/ExtraParams;

    return-void
.end method

.method final setPublisher(Lio/bidmachine/Publisher;)V
    .locals 0

    .line 406
    iput-object p1, p0, Lio/bidmachine/d;->publisher:Lio/bidmachine/Publisher;

    return-void
.end method

.method final setTargetingParams(Lio/bidmachine/TargetingParams;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 392
    :cond_0
    new-instance p1, Lio/bidmachine/TargetingParams;

    invoke-direct {p1}, Lio/bidmachine/TargetingParams;-><init>()V

    :goto_0
    iput-object p1, p0, Lio/bidmachine/d;->targetingParams:Lio/bidmachine/TargetingParams;

    return-void
.end method

.method final setTestMode(Z)V
    .locals 0

    .line 374
    iput-boolean p1, p0, Lio/bidmachine/d;->isTestMode:Z

    return-void
.end method

.method final setTopActivity(Landroid/app/Activity;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 462
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/bidmachine/d;->weakTopActivity:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method final unregisterAdRequestListener(Lio/bidmachine/AdRequest$AdRequestListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 477
    :cond_0
    iget-object v0, p0, Lio/bidmachine/d;->adRequestListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
