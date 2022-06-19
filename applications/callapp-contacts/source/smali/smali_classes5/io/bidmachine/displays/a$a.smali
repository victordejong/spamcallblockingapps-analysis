.class final Lio/bidmachine/displays/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/HeaderBiddingAdRequestParams;
.implements Lio/bidmachine/HeaderBiddingCollectParamsCallback;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/displays/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<UnifiedAdRequestParamsType::",
        "Lio/bidmachine/unified/UnifiedAdRequestParams;",
        ">",
        "Ljava/lang/Object;",
        "Lio/bidmachine/HeaderBiddingAdRequestParams;",
        "Lio/bidmachine/HeaderBiddingCollectParamsCallback;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static executor:Ljava/util/concurrent/Executor;


# instance fields
.field private adContentType:Lio/bidmachine/AdContentType;

.field private adRequestParams:Lio/bidmachine/unified/UnifiedAdRequestParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TUnifiedAdRequestParamsType;"
        }
    .end annotation
.end field

.field private adUnit:Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit;

.field private adapter:Lio/bidmachine/HeaderBiddingAdapter;

.field private adsType:Lio/bidmachine/AdsType;

.field private contextProvider:Lio/bidmachine/ContextProvider;

.field private isFinished:Z

.field private mediationConfig:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private syncLock:Ljava/util/concurrent/CountDownLatch;

.field private final trackingObject:Lio/bidmachine/TrackingObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 171
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 170
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lio/bidmachine/displays/a$a;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method constructor <init>(Lio/bidmachine/ContextProvider;Lio/bidmachine/HeaderBiddingAdapter;Lio/bidmachine/AdsType;Lio/bidmachine/AdContentType;Lio/bidmachine/unified/UnifiedAdRequestParams;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/ContextProvider;",
            "Lio/bidmachine/HeaderBiddingAdapter;",
            "Lio/bidmachine/AdsType;",
            "Lio/bidmachine/AdContentType;",
            "TUnifiedAdRequestParamsType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 189
    iput-boolean v0, p0, Lio/bidmachine/displays/a$a;->isFinished:Z

    .line 191
    new-instance v0, Lio/bidmachine/displays/a$a$1;

    invoke-direct {v0, p0}, Lio/bidmachine/displays/a$a$1;-><init>(Lio/bidmachine/displays/a$a;)V

    iput-object v0, p0, Lio/bidmachine/displays/a$a;->trackingObject:Lio/bidmachine/TrackingObject;

    .line 206
    iput-object p1, p0, Lio/bidmachine/displays/a$a;->contextProvider:Lio/bidmachine/ContextProvider;

    .line 207
    iput-object p2, p0, Lio/bidmachine/displays/a$a;->adapter:Lio/bidmachine/HeaderBiddingAdapter;

    .line 208
    iput-object p3, p0, Lio/bidmachine/displays/a$a;->adsType:Lio/bidmachine/AdsType;

    .line 209
    iput-object p4, p0, Lio/bidmachine/displays/a$a;->adContentType:Lio/bidmachine/AdContentType;

    .line 210
    iput-object p5, p0, Lio/bidmachine/displays/a$a;->adRequestParams:Lio/bidmachine/unified/UnifiedAdRequestParams;

    .line 211
    iput-object p6, p0, Lio/bidmachine/displays/a$a;->mediationConfig:Ljava/util/Map;

    return-void
.end method

.method private finish()V
    .locals 1

    const/4 v0, 0x1

    .line 317
    iput-boolean v0, p0, Lio/bidmachine/displays/a$a;->isFinished:Z

    .line 318
    iget-object v0, p0, Lio/bidmachine/displays/a$a;->syncLock:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method


# virtual methods
.method final cancel()V
    .locals 3

    .line 301
    iget-boolean v0, p0, Lio/bidmachine/displays/a$a;->isFinished:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 304
    iget-object v2, p0, Lio/bidmachine/displays/a$a;->adapter:Lio/bidmachine/HeaderBiddingAdapter;

    invoke-interface {v2}, Lio/bidmachine/HeaderBiddingAdapter;->getKey()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "%s: Header bidding collect fail: timeout"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    .line 305
    invoke-direct {p0}, Lio/bidmachine/displays/a$a;->finish()V

    return-void
.end method

.method final execute(Ljava/util/concurrent/CountDownLatch;)V
    .locals 5

    .line 289
    iget-object v0, p0, Lio/bidmachine/displays/a$a;->trackingObject:Lio/bidmachine/TrackingObject;

    sget-object v1, Lio/bidmachine/TrackEventType;->HeaderBiddingNetworkPrepare:Lio/bidmachine/TrackEventType;

    new-instance v2, Lio/bidmachine/TrackEventInfo;

    invoke-direct {v2}, Lio/bidmachine/TrackEventInfo;-><init>()V

    iget-object v3, p0, Lio/bidmachine/displays/a$a;->adapter:Lio/bidmachine/HeaderBiddingAdapter;

    .line 293
    invoke-interface {v3}, Lio/bidmachine/HeaderBiddingAdapter;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "HB_NETWORK"

    invoke-virtual {v2, v4, v3}, Lio/bidmachine/TrackEventInfo;->withParameter(Ljava/lang/String;Ljava/lang/Object;)Lio/bidmachine/TrackEventInfo;

    move-result-object v2

    iget-object v3, p0, Lio/bidmachine/displays/a$a;->adsType:Lio/bidmachine/AdsType;

    .line 294
    invoke-virtual {v3}, Lio/bidmachine/AdsType;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BM_AD_TYPE"

    invoke-virtual {v2, v4, v3}, Lio/bidmachine/TrackEventInfo;->withParameter(Ljava/lang/String;Ljava/lang/Object;)Lio/bidmachine/TrackEventInfo;

    move-result-object v2

    iget-object v3, p0, Lio/bidmachine/displays/a$a;->adsType:Lio/bidmachine/AdsType;

    .line 289
    invoke-static {v0, v1, v2, v3}, Lio/bidmachine/BidMachineEvents;->eventStart(Lio/bidmachine/TrackingObject;Lio/bidmachine/TrackEventType;Lio/bidmachine/TrackEventInfo;Lio/bidmachine/AdsType;)V

    .line 296
    iput-object p1, p0, Lio/bidmachine/displays/a$a;->syncLock:Ljava/util/concurrent/CountDownLatch;

    .line 297
    sget-object p1, Lio/bidmachine/displays/a$a;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getAdContentType()Lio/bidmachine/AdContentType;
    .locals 1

    .line 223
    iget-object v0, p0, Lio/bidmachine/displays/a$a;->adContentType:Lio/bidmachine/AdContentType;

    return-object v0
.end method

.method final getAdUnit()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit;
    .locals 1

    .line 309
    iget-object v0, p0, Lio/bidmachine/displays/a$a;->adUnit:Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit;

    return-object v0
.end method

.method public final getAdsType()Lio/bidmachine/AdsType;
    .locals 1

    .line 217
    iget-object v0, p0, Lio/bidmachine/displays/a$a;->adsType:Lio/bidmachine/AdsType;

    return-object v0
.end method

.method final isFinished()Z
    .locals 1

    .line 313
    iget-boolean v0, p0, Lio/bidmachine/displays/a$a;->isFinished:Z

    return v0
.end method

.method public final onCollectFail(Lio/bidmachine/utils/BMError;)V
    .locals 3

    .line 272
    iget-boolean v0, p0, Lio/bidmachine/displays/a$a;->isFinished:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 276
    iget-object v2, p0, Lio/bidmachine/displays/a$a;->adapter:Lio/bidmachine/HeaderBiddingAdapter;

    .line 277
    invoke-interface {v2}, Lio/bidmachine/HeaderBiddingAdapter;->getKey()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 278
    invoke-virtual {p1}, Lio/bidmachine/utils/BMError;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "%s: Header bidding collect fail: %s"

    .line 276
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    .line 280
    :cond_1
    invoke-direct {p0}, Lio/bidmachine/displays/a$a;->finish()V

    .line 281
    iget-object v0, p0, Lio/bidmachine/displays/a$a;->trackingObject:Lio/bidmachine/TrackingObject;

    sget-object v1, Lio/bidmachine/TrackEventType;->HeaderBiddingNetworkPrepare:Lio/bidmachine/TrackEventType;

    iget-object v2, p0, Lio/bidmachine/displays/a$a;->adsType:Lio/bidmachine/AdsType;

    invoke-static {v0, v1, v2, p1}, Lio/bidmachine/BidMachineEvents;->eventFinish(Lio/bidmachine/TrackingObject;Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public final onCollectFinished(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 242
    iget-boolean v0, p0, Lio/bidmachine/displays/a$a;->isFinished:Z

    if-eqz v0, :cond_0

    return-void

    .line 245
    :cond_0
    invoke-static {}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit;->newBuilder()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit$Builder;

    move-result-object v0

    .line 246
    iget-object v1, p0, Lio/bidmachine/displays/a$a;->adapter:Lio/bidmachine/HeaderBiddingAdapter;

    invoke-interface {v1}, Lio/bidmachine/HeaderBiddingAdapter;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit$Builder;->setBidder(Ljava/lang/String;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit$Builder;

    .line 247
    iget-object v1, p0, Lio/bidmachine/displays/a$a;->adapter:Lio/bidmachine/HeaderBiddingAdapter;

    invoke-interface {v1}, Lio/bidmachine/HeaderBiddingAdapter;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit$Builder;->setBidderSdkver(Ljava/lang/String;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit$Builder;

    .line 248
    iget-object v1, p0, Lio/bidmachine/displays/a$a;->mediationConfig:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 249
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 250
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 251
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 252
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lio/bidmachine/NetworkConfig;->PRIVATE_FIELDS:Ljava/util/List;

    .line 253
    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 254
    invoke-virtual {v0, v3, v2}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit$Builder;->putClientParams(Ljava/lang/String;Ljava/lang/String;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit$Builder;

    goto :goto_0

    .line 257
    :cond_2
    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit$Builder;->putAllClientParams(Ljava/util/Map;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit$Builder;

    .line 258
    invoke-virtual {v0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit$Builder;->build()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/displays/a$a;->adUnit:Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit;

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 259
    iget-object v1, p0, Lio/bidmachine/displays/a$a;->adapter:Lio/bidmachine/HeaderBiddingAdapter;

    .line 260
    invoke-interface {v1}, Lio/bidmachine/HeaderBiddingAdapter;->getKey()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    const/4 v0, 0x1

    iget-object v1, p0, Lio/bidmachine/displays/a$a;->adsType:Lio/bidmachine/AdsType;

    aput-object v1, p1, v0

    const-string v0, "%s: %s: Header bidding collect finished"

    .line 259
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    .line 262
    invoke-direct {p0}, Lio/bidmachine/displays/a$a;->finish()V

    .line 263
    iget-object p1, p0, Lio/bidmachine/displays/a$a;->trackingObject:Lio/bidmachine/TrackingObject;

    sget-object v0, Lio/bidmachine/TrackEventType;->HeaderBiddingNetworkPrepare:Lio/bidmachine/TrackEventType;

    iget-object v1, p0, Lio/bidmachine/displays/a$a;->adsType:Lio/bidmachine/AdsType;

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lio/bidmachine/BidMachineEvents;->eventFinish(Lio/bidmachine/TrackingObject;Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public final run()V
    .locals 6

    .line 229
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/displays/a$a;->adapter:Lio/bidmachine/HeaderBiddingAdapter;

    iget-object v1, p0, Lio/bidmachine/displays/a$a;->contextProvider:Lio/bidmachine/ContextProvider;

    iget-object v2, p0, Lio/bidmachine/displays/a$a;->adRequestParams:Lio/bidmachine/unified/UnifiedAdRequestParams;

    iget-object v5, p0, Lio/bidmachine/displays/a$a;->mediationConfig:Ljava/util/Map;

    move-object v3, p0

    move-object v4, p0

    invoke-interface/range {v0 .. v5}, Lio/bidmachine/HeaderBiddingAdapter;->collectHeaderBiddingParams(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/HeaderBiddingAdRequestParams;Lio/bidmachine/HeaderBiddingCollectParamsCallback;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 235
    invoke-static {v0}, Lio/bidmachine/core/Logger;->log(Ljava/lang/Throwable;)V

    .line 236
    sget-object v0, Lio/bidmachine/utils/BMError;->Internal:Lio/bidmachine/utils/BMError;

    invoke-virtual {p0, v0}, Lio/bidmachine/displays/a$a;->onCollectFail(Lio/bidmachine/utils/BMError;)V

    return-void
.end method
