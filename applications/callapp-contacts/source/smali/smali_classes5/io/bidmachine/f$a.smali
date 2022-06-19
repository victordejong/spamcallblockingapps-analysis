.class final Lio/bidmachine/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/f$a$a;
    }
.end annotation


# static fields
.field private static final executor:Ljava/util/concurrent/Executor;


# instance fields
.field private final adRequestParams:Lio/bidmachine/unified/UnifiedAdRequestParams;

.field private callback:Lio/bidmachine/f$a$a;

.field private final contextProvider:Lio/bidmachine/ContextProvider;

.field private final networkConfig:Lio/bidmachine/NetworkConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 204
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    const/16 v1, 0x8

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 203
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lio/bidmachine/f$a;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/NetworkConfig;)V
    .locals 0

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput-object p1, p0, Lio/bidmachine/f$a;->contextProvider:Lio/bidmachine/ContextProvider;

    .line 220
    iput-object p2, p0, Lio/bidmachine/f$a;->adRequestParams:Lio/bidmachine/unified/UnifiedAdRequestParams;

    .line 221
    iput-object p3, p0, Lio/bidmachine/f$a;->networkConfig:Lio/bidmachine/NetworkConfig;

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/NetworkConfig;Lio/bidmachine/f$1;)V
    .locals 0

    .line 201
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/f$a;-><init>(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/NetworkConfig;)V

    return-void
.end method

.method static synthetic access$100(Lio/bidmachine/f$a;)Lio/bidmachine/NetworkConfig;
    .locals 0

    .line 201
    iget-object p0, p0, Lio/bidmachine/f$a;->networkConfig:Lio/bidmachine/NetworkConfig;

    return-object p0
.end method

.method private process()V
    .locals 12

    .line 238
    iget-object v0, p0, Lio/bidmachine/f$a;->networkConfig:Lio/bidmachine/NetworkConfig;

    invoke-virtual {v0}, Lio/bidmachine/NetworkConfig;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 239
    new-instance v1, Lio/bidmachine/f$a$1;

    invoke-direct {v1, p0}, Lio/bidmachine/f$a$1;-><init>(Lio/bidmachine/f$a;)V

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v5, "Load network from config start: %s"

    .line 245
    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 247
    :try_start_0
    sget-object v5, Lio/bidmachine/TrackEventType;->HeaderBiddingNetworkInitialize:Lio/bidmachine/TrackEventType;

    new-instance v6, Lio/bidmachine/TrackEventInfo;

    invoke-direct {v6}, Lio/bidmachine/TrackEventInfo;-><init>()V

    const-string v7, "HB_NETWORK"

    .line 251
    invoke-virtual {v6, v7, v0}, Lio/bidmachine/TrackEventInfo;->withParameter(Ljava/lang/String;Ljava/lang/Object;)Lio/bidmachine/TrackEventInfo;

    move-result-object v6

    .line 247
    invoke-static {v1, v5, v6, v3}, Lio/bidmachine/BidMachineEvents;->eventStart(Lio/bidmachine/TrackingObject;Lio/bidmachine/TrackEventType;Lio/bidmachine/TrackEventInfo;Lio/bidmachine/AdsType;)V

    .line 253
    iget-object v5, p0, Lio/bidmachine/f$a;->networkConfig:Lio/bidmachine/NetworkConfig;

    invoke-virtual {v5}, Lio/bidmachine/NetworkConfig;->obtainNetworkAdapter()Lio/bidmachine/NetworkAdapter;

    move-result-object v5

    .line 254
    invoke-static {}, Lio/bidmachine/core/Logger;->isLoggingEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Lio/bidmachine/NetworkAdapter;->setLogging(Z)V

    .line 255
    iget-object v6, p0, Lio/bidmachine/f$a;->contextProvider:Lio/bidmachine/ContextProvider;

    iget-object v7, p0, Lio/bidmachine/f$a;->adRequestParams:Lio/bidmachine/unified/UnifiedAdRequestParams;

    iget-object v8, p0, Lio/bidmachine/f$a;->networkConfig:Lio/bidmachine/NetworkConfig;

    .line 257
    invoke-virtual {v8}, Lio/bidmachine/NetworkConfig;->getNetworkConfigParams()Lio/bidmachine/NetworkConfigParams;

    move-result-object v8

    .line 255
    invoke-virtual {v5, v6, v7, v8}, Lio/bidmachine/NetworkAdapter;->initialize(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/NetworkConfigParams;)V

    .line 259
    iget-object v6, p0, Lio/bidmachine/f$a;->networkConfig:Lio/bidmachine/NetworkConfig;

    invoke-virtual {v6}, Lio/bidmachine/NetworkConfig;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 260
    sget-object v7, Lio/bidmachine/f;->cache:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 261
    sget-object v7, Lio/bidmachine/f;->cache:Ljava/util/Map;

    iget-object v8, p0, Lio/bidmachine/f$a;->networkConfig:Lio/bidmachine/NetworkConfig;

    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v7, Lio/bidmachine/f;->pendingNetworks:Ljava/util/Set;

    iget-object v8, p0, Lio/bidmachine/f$a;->networkConfig:Lio/bidmachine/NetworkConfig;

    invoke-interface {v7, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 264
    :cond_0
    iget-object v7, p0, Lio/bidmachine/f$a;->networkConfig:Lio/bidmachine/NetworkConfig;

    invoke-virtual {v7}, Lio/bidmachine/NetworkConfig;->getSupportedAdsTypes()[Lio/bidmachine/AdsType;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_1

    aget-object v10, v7, v9

    .line 265
    iget-object v11, p0, Lio/bidmachine/f$a;->networkConfig:Lio/bidmachine/NetworkConfig;

    invoke-virtual {v10, v6, v11}, Lio/bidmachine/AdsType;->addNetworkConfig(Ljava/lang/String;Lio/bidmachine/NetworkConfig;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    const-string v6, "Load network from config finish: %s, %s, %s. Register source - %s"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v4

    .line 270
    invoke-virtual {v5}, Lio/bidmachine/NetworkAdapter;->getVersion()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    const/4 v8, 0x2

    .line 271
    invoke-virtual {v5}, Lio/bidmachine/NetworkAdapter;->getAdapterVersion()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget-object v9, p0, Lio/bidmachine/f$a;->networkConfig:Lio/bidmachine/NetworkConfig;

    .line 272
    invoke-virtual {v9}, Lio/bidmachine/NetworkConfig;->getRegisterSource()Lio/bidmachine/h;

    move-result-object v9

    aput-object v9, v7, v8

    .line 268
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 267
    invoke-static {v6}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    .line 273
    instance-of v5, v5, Lio/bidmachine/HeaderBiddingAdapter;

    if-eqz v5, :cond_2

    .line 274
    sget-object v5, Lio/bidmachine/TrackEventType;->HeaderBiddingNetworkInitialize:Lio/bidmachine/TrackEventType;

    invoke-static {v1, v5, v3, v3}, Lio/bidmachine/BidMachineEvents;->eventFinish(Lio/bidmachine/TrackingObject;Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lio/bidmachine/utils/BMError;)V

    return-void

    .line 279
    :cond_2
    sget-object v5, Lio/bidmachine/TrackEventType;->HeaderBiddingNetworkInitialize:Lio/bidmachine/TrackEventType;

    invoke-static {v1, v5}, Lio/bidmachine/BidMachineEvents;->clearEvent(Lio/bidmachine/TrackingObject;Lio/bidmachine/TrackEventType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    const-string v0, "Network (%s) load fail!"

    .line 283
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    .line 284
    invoke-static {v5}, Lio/bidmachine/core/Logger;->log(Ljava/lang/Throwable;)V

    .line 285
    sget-object v0, Lio/bidmachine/TrackEventType;->HeaderBiddingNetworkInitialize:Lio/bidmachine/TrackEventType;

    sget-object v2, Lio/bidmachine/utils/BMError;->Internal:Lio/bidmachine/utils/BMError;

    invoke-static {v1, v0, v3, v2}, Lio/bidmachine/BidMachineEvents;->eventFinish(Lio/bidmachine/TrackingObject;Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lio/bidmachine/utils/BMError;)V

    return-void
.end method


# virtual methods
.method final execute()V
    .locals 1

    .line 293
    sget-object v0, Lio/bidmachine/f$a;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final run()V
    .locals 1

    .line 231
    invoke-direct {p0}, Lio/bidmachine/f$a;->process()V

    .line 232
    iget-object v0, p0, Lio/bidmachine/f$a;->callback:Lio/bidmachine/f$a$a;

    if-eqz v0, :cond_0

    .line 233
    invoke-interface {v0}, Lio/bidmachine/f$a$a;->onNetworkLoadingFinished()V

    :cond_0
    return-void
.end method

.method final withCallback(Lio/bidmachine/f$a$a;)Lio/bidmachine/f$a;
    .locals 0

    .line 225
    iput-object p1, p0, Lio/bidmachine/f$a;->callback:Lio/bidmachine/f$a$a;

    return-object p0
.end method
