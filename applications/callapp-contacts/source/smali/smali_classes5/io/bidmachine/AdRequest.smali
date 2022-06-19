.class public abstract Lio/bidmachine/AdRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/AdRequest$BaseUnifiedAdRequestParams;,
        Lio/bidmachine/AdRequest$AdRequestBuilderImpl;,
        Lio/bidmachine/AdRequest$a;,
        Lio/bidmachine/AdRequest$b;,
        Lio/bidmachine/AdRequest$AdRequestListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SelfType:",
        "Lio/bidmachine/AdRequest;",
        "UnifiedAdRequestParamsType::",
        "Lio/bidmachine/unified/UnifiedAdRequestParams;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DEF_EXPIRATION_TIME:J


# instance fields
.field adRequestListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/AdRequest$AdRequestListener<",
            "TSelfType;>;>;"
        }
    .end annotation
.end field

.field adResult:Lcom/explorestack/protobuf/adcom/Ad;

.field private final adsType:Lio/bidmachine/AdsType;

.field auctionResult:Lio/bidmachine/models/AuctionResult;

.field bidResult:Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

.field private currentApiRequest:Lio/bidmachine/ApiRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/ApiRequest<",
            "Lcom/explorestack/protobuf/openrtb/Request;",
            "Lcom/explorestack/protobuf/openrtb/Response;",
            ">;"
        }
    .end annotation
.end field

.field private expirationTime:J

.field private final expiredRunnable:Ljava/lang/Runnable;

.field private extraParams:Lio/bidmachine/ExtraParams;

.field headerBiddingEnabled:Z

.field internalAdRequestListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/AdRequest$b<",
            "TSelfType;>;>;"
        }
    .end annotation
.end field

.field private isAdWasShown:Z

.field private final isApiRequestCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isApiRequestCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private isDestroyed:Z

.field private isExpireTrackerSubscribed:Z

.field private isExpired:Z

.field networkConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/NetworkConfig;",
            ">;"
        }
    .end annotation
.end field

.field priceFloorParams:Lio/bidmachine/PriceFloorParams;

.field seatBidResult:Lcom/explorestack/protobuf/openrtb/Response$Seatbid;

.field sessionAdParams:Lio/bidmachine/SessionAdParams;

.field targetingParams:Lio/bidmachine/TargetingParams;

.field timeOut:I

.field private final timeOutRunnable:Ljava/lang/Runnable;

.field trackUrls:Ljava/util/Map;
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

.field private final trackingId:Ljava/lang/String;

.field private final trackingObject:Lio/bidmachine/TrackingObject;

.field private unifiedAdRequestParams:Lio/bidmachine/unified/UnifiedAdRequestParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TUnifiedAdRequestParamsType;"
        }
    .end annotation
.end field

.field userRestrictionParams:Lio/bidmachine/UserRestrictionParams;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 50
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1d

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lio/bidmachine/AdRequest;->DEF_EXPIRATION_TIME:J

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/AdsType;)V
    .locals 2

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/AdRequest;->trackingId:Ljava/lang/String;

    const/4 v0, -0x1

    .line 61
    iput v0, p0, Lio/bidmachine/AdRequest;->timeOut:I

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lio/bidmachine/AdRequest;->headerBiddingEnabled:Z

    const-wide/16 v0, -0x1

    .line 92
    iput-wide v0, p0, Lio/bidmachine/AdRequest;->expirationTime:J

    .line 94
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/bidmachine/AdRequest;->isApiRequestCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 95
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/bidmachine/AdRequest;->isApiRequestCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 101
    new-instance v0, Lio/bidmachine/AdRequest$a;

    invoke-direct {v0, p0}, Lio/bidmachine/AdRequest$a;-><init>(Lio/bidmachine/AdRequest;)V

    iput-object v0, p0, Lio/bidmachine/AdRequest;->expiredRunnable:Ljava/lang/Runnable;

    .line 103
    new-instance v0, Lio/bidmachine/AdRequest$1;

    invoke-direct {v0, p0}, Lio/bidmachine/AdRequest$1;-><init>(Lio/bidmachine/AdRequest;)V

    iput-object v0, p0, Lio/bidmachine/AdRequest;->timeOutRunnable:Ljava/lang/Runnable;

    .line 113
    new-instance v0, Lio/bidmachine/AdRequest$2;

    invoke-direct {v0, p0}, Lio/bidmachine/AdRequest$2;-><init>(Lio/bidmachine/AdRequest;)V

    iput-object v0, p0, Lio/bidmachine/AdRequest;->trackingObject:Lio/bidmachine/TrackingObject;

    .line 129
    iput-object p1, p0, Lio/bidmachine/AdRequest;->adsType:Lio/bidmachine/AdsType;

    return-void
.end method

.method static synthetic access$000(Lio/bidmachine/AdRequest;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 48
    iget-object p0, p0, Lio/bidmachine/AdRequest;->isApiRequestCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$100(Lio/bidmachine/AdRequest;Lio/bidmachine/utils/BMError;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lio/bidmachine/AdRequest;->processRequestFail(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method static synthetic access$200(Lio/bidmachine/AdRequest;)Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lio/bidmachine/AdRequest;->trackingId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lio/bidmachine/AdRequest;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lio/bidmachine/AdRequest;->processApiRequestCancel()V

    return-void
.end method

.method static synthetic access$400(Lio/bidmachine/AdRequest;Lcom/explorestack/protobuf/openrtb/Response;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lio/bidmachine/AdRequest;->processApiRequestSuccess(Lcom/explorestack/protobuf/openrtb/Response;)V

    return-void
.end method

.method static synthetic access$500(Lio/bidmachine/AdRequest;Lio/bidmachine/utils/BMError;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lio/bidmachine/AdRequest;->processApiRequestFail(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method static synthetic access$600(Lio/bidmachine/AdRequest;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 48
    iget-object p0, p0, Lio/bidmachine/AdRequest;->isApiRequestCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$702(Lio/bidmachine/AdRequest;Lio/bidmachine/ApiRequest;)Lio/bidmachine/ApiRequest;
    .locals 0

    .line 48
    iput-object p1, p0, Lio/bidmachine/AdRequest;->currentApiRequest:Lio/bidmachine/ApiRequest;

    return-object p1
.end method

.method private processApiRequestCancel()V
    .locals 4

    .line 714
    iget-object v0, p0, Lio/bidmachine/AdRequest;->isApiRequestCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 715
    iget-object v0, p0, Lio/bidmachine/AdRequest;->timeOutRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lio/bidmachine/core/Utils;->cancelBackgroundThreadTask(Ljava/lang/Runnable;)V

    .line 717
    iget-object v0, p0, Lio/bidmachine/AdRequest;->trackingObject:Lio/bidmachine/TrackingObject;

    sget-object v1, Lio/bidmachine/TrackEventType;->AuctionRequestCancel:Lio/bidmachine/TrackEventType;

    .line 720
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->getType()Lio/bidmachine/AdsType;

    move-result-object v2

    const/4 v3, 0x0

    .line 717
    invoke-static {v0, v1, v2, v3}, Lio/bidmachine/BidMachineEvents;->eventFinish(Lio/bidmachine/TrackingObject;Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lio/bidmachine/utils/BMError;)V

    .line 722
    iget-object v0, p0, Lio/bidmachine/AdRequest;->trackingObject:Lio/bidmachine/TrackingObject;

    sget-object v1, Lio/bidmachine/TrackEventType;->AuctionRequest:Lio/bidmachine/TrackEventType;

    invoke-static {v0, v1}, Lio/bidmachine/BidMachineEvents;->clearEvent(Lio/bidmachine/TrackingObject;Lio/bidmachine/TrackEventType;)V

    return-void
.end method

.method private processApiRequestFail(Lio/bidmachine/utils/BMError;)V
    .locals 4

    .line 679
    iget-object v0, p0, Lio/bidmachine/AdRequest;->isApiRequestCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 682
    :cond_0
    iget-object v0, p0, Lio/bidmachine/AdRequest;->isApiRequestCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    .line 683
    iput-object v0, p0, Lio/bidmachine/AdRequest;->currentApiRequest:Lio/bidmachine/ApiRequest;

    .line 684
    iget-object v2, p0, Lio/bidmachine/AdRequest;->timeOutRunnable:Ljava/lang/Runnable;

    invoke-static {v2}, Lio/bidmachine/core/Utils;->cancelBackgroundThreadTask(Ljava/lang/Runnable;)V

    .line 685
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": api request fail - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    if-nez p1, :cond_1

    .line 688
    invoke-static {v0}, Lio/bidmachine/utils/BMError;->noFillError(Lio/bidmachine/utils/BMError;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    goto :goto_0

    .line 691
    :cond_1
    sget-object v0, Lio/bidmachine/utils/BMError;->NoContent:Lio/bidmachine/utils/BMError;

    if-eq p1, v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1, v1}, Lio/bidmachine/utils/BMError;->setTrackError(Z)V

    .line 693
    invoke-direct {p0, p1}, Lio/bidmachine/AdRequest;->processRequestFail(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method private processApiRequestSuccess(Lcom/explorestack/protobuf/openrtb/Response;)V
    .locals 8

    .line 604
    iget-object v0, p0, Lio/bidmachine/AdRequest;->isApiRequestCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 607
    :cond_0
    iget-object v0, p0, Lio/bidmachine/AdRequest;->isApiRequestCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    .line 608
    iput-object v0, p0, Lio/bidmachine/AdRequest;->currentApiRequest:Lio/bidmachine/ApiRequest;

    .line 609
    iget-object v1, p0, Lio/bidmachine/AdRequest;->timeOutRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lio/bidmachine/core/Utils;->cancelBackgroundThreadTask(Ljava/lang/Runnable;)V

    .line 610
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": api request success"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_a

    .line 612
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response;->getSeatbidCount()I

    move-result v1

    if-lez v1, :cond_a

    const/4 v1, 0x0

    .line 613
    invoke-virtual {p1, v1}, Lcom/explorestack/protobuf/openrtb/Response;->getSeatbid(I)Lcom/explorestack/protobuf/openrtb/Response$Seatbid;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 614
    invoke-virtual {v4}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->getBidCount()I

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_3

    .line 619
    :cond_1
    invoke-virtual {v4, v1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->getBid(I)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    move-result-object p1

    if-nez p1, :cond_2

    .line 621
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": Bid not found or not valid"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    const-string p1, "Bid not found or not valid"

    .line 622
    invoke-static {p1}, Lio/bidmachine/utils/BMError;->requestError(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/bidmachine/AdRequest;->processRequestFail(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 625
    :cond_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getMedia()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 626
    const-class v2, Lcom/explorestack/protobuf/adcom/Ad;

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/Any;->is(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_2

    .line 632
    :cond_3
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getMedia()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    const-class v2, Lcom/explorestack/protobuf/adcom/Ad;

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/Any;->unpack(Ljava/lang/Class;)Lcom/explorestack/protobuf/Message;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/explorestack/protobuf/adcom/Ad;

    if-eqz v6, :cond_7

    .line 634
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->getType()Lio/bidmachine/AdsType;

    move-result-object v1

    invoke-virtual {v1, v6}, Lio/bidmachine/AdsType;->obtainNetworkConfig(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/NetworkConfig;

    move-result-object v7

    if-nez v7, :cond_4

    .line 636
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": NetworkConfig not found"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    const-string p1, "NetworkConfig not found"

    .line 637
    invoke-static {p1}, Lio/bidmachine/utils/BMError;->requestError(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/bidmachine/AdRequest;->processRequestFail(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 640
    :cond_4
    iput-object v6, p0, Lio/bidmachine/AdRequest;->adResult:Lcom/explorestack/protobuf/adcom/Ad;

    .line 641
    iput-object p1, p0, Lio/bidmachine/AdRequest;->bidResult:Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    .line 642
    iput-object v4, p0, Lio/bidmachine/AdRequest;->seatBidResult:Lcom/explorestack/protobuf/openrtb/Response$Seatbid;

    .line 643
    new-instance v1, Lio/bidmachine/AuctionResultImpl;

    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->getType()Lio/bidmachine/AdsType;

    move-result-object v3

    move-object v2, v1

    move-object v5, p1

    invoke-direct/range {v2 .. v7}, Lio/bidmachine/AuctionResultImpl;-><init>(Lio/bidmachine/AdsType;Lcom/explorestack/protobuf/openrtb/Response$Seatbid;Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Lcom/explorestack/protobuf/adcom/Ad;Lio/bidmachine/NetworkConfig;)V

    iput-object v1, p0, Lio/bidmachine/AdRequest;->auctionResult:Lio/bidmachine/models/AuctionResult;

    .line 644
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getExp()I

    move-result v1

    int-to-long v2, v1

    .line 645
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    move-result-object v1

    .line 646
    invoke-virtual {v1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getExp()I

    move-result v1

    int-to-long v4, v1

    sget-wide v6, Lio/bidmachine/AdRequest;->DEF_EXPIRATION_TIME:J

    .line 644
    invoke-static/range {v2 .. v7}, Lio/bidmachine/Utils;->getOrDefault(JJJ)J

    move-result-wide v1

    iput-wide v1, p0, Lio/bidmachine/AdRequest;->expirationTime:J

    .line 648
    invoke-virtual {p0, p1}, Lio/bidmachine/AdRequest;->extractTrackUrls(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)V

    .line 649
    invoke-direct {p0}, Lio/bidmachine/AdRequest;->subscribeExpireTracker()V

    .line 650
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": Request finished ("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/AdRequest;->auctionResult:Lio/bidmachine/models/AuctionResult;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    .line 651
    iget-object p1, p0, Lio/bidmachine/AdRequest;->adRequestListeners:Ljava/util/List;

    if-eqz p1, :cond_5

    .line 652
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/AdRequest$AdRequestListener;

    .line 653
    iget-object v2, p0, Lio/bidmachine/AdRequest;->auctionResult:Lio/bidmachine/models/AuctionResult;

    invoke-interface {v1, p0, v2}, Lio/bidmachine/AdRequest$AdRequestListener;->onRequestSuccess(Lio/bidmachine/AdRequest;Lio/bidmachine/models/AuctionResult;)V

    goto :goto_0

    .line 656
    :cond_5
    invoke-static {}, Lio/bidmachine/d;->get()Lio/bidmachine/d;

    move-result-object p1

    .line 657
    invoke-virtual {p1}, Lio/bidmachine/d;->getAdRequestListeners()Ljava/util/List;

    move-result-object p1

    .line 656
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/AdRequest$AdRequestListener;

    .line 658
    iget-object v2, p0, Lio/bidmachine/AdRequest;->auctionResult:Lio/bidmachine/models/AuctionResult;

    invoke-interface {v1, p0, v2}, Lio/bidmachine/AdRequest$AdRequestListener;->onRequestSuccess(Lio/bidmachine/AdRequest;Lio/bidmachine/models/AuctionResult;)V

    goto :goto_1

    .line 660
    :cond_6
    iget-object p1, p0, Lio/bidmachine/AdRequest;->trackingObject:Lio/bidmachine/TrackingObject;

    sget-object v1, Lio/bidmachine/TrackEventType;->AuctionRequest:Lio/bidmachine/TrackEventType;

    .line 663
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->getType()Lio/bidmachine/AdsType;

    move-result-object v2

    .line 660
    invoke-static {p1, v1, v2, v0}, Lio/bidmachine/BidMachineEvents;->eventFinish(Lio/bidmachine/TrackingObject;Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lio/bidmachine/utils/BMError;)V

    return-void

    .line 667
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": Ad not found or not valid"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 670
    invoke-static {p1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 627
    :cond_8
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": Media not found or not valid"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    const-string p1, "Media not found or not valid"

    .line 628
    invoke-static {p1}, Lio/bidmachine/utils/BMError;->requestError(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/bidmachine/AdRequest;->processRequestFail(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 615
    :cond_9
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": Seatbid not found or not valid"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    const-string p1, "Seatbid not found or not valid"

    .line 616
    invoke-static {p1}, Lio/bidmachine/utils/BMError;->requestError(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/bidmachine/AdRequest;->processRequestFail(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 673
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": Response not found or not valid"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    .line 675
    :goto_4
    sget-object p1, Lio/bidmachine/utils/BMError;->Internal:Lio/bidmachine/utils/BMError;

    invoke-direct {p0, p1}, Lio/bidmachine/AdRequest;->processRequestFail(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method private processRequestFail(Lio/bidmachine/utils/BMError;)V
    .locals 3

    .line 698
    iget-object v0, p0, Lio/bidmachine/AdRequest;->adRequestListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 699
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/AdRequest$AdRequestListener;

    .line 700
    invoke-interface {v1, p0, p1}, Lio/bidmachine/AdRequest$AdRequestListener;->onRequestFailed(Lio/bidmachine/AdRequest;Lio/bidmachine/utils/BMError;)V

    goto :goto_0

    .line 703
    :cond_0
    invoke-static {}, Lio/bidmachine/d;->get()Lio/bidmachine/d;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/d;->getAdRequestListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/AdRequest$AdRequestListener;

    .line 704
    invoke-interface {v1, p0, p1}, Lio/bidmachine/AdRequest$AdRequestListener;->onRequestFailed(Lio/bidmachine/AdRequest;Lio/bidmachine/utils/BMError;)V

    goto :goto_1

    .line 706
    :cond_1
    iget-object v0, p0, Lio/bidmachine/AdRequest;->trackingObject:Lio/bidmachine/TrackingObject;

    sget-object v1, Lio/bidmachine/TrackEventType;->AuctionRequest:Lio/bidmachine/TrackEventType;

    .line 709
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->getType()Lio/bidmachine/AdsType;

    move-result-object v2

    .line 706
    invoke-static {v0, v1, v2, p1}, Lio/bidmachine/BidMachineEvents;->eventFinish(Lio/bidmachine/TrackingObject;Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method private subscribeExpireTracker()V
    .locals 5

    .line 590
    iget-wide v0, p0, Lio/bidmachine/AdRequest;->expirationTime:J

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 591
    iget-boolean v2, p0, Lio/bidmachine/AdRequest;->isExpireTrackerSubscribed:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 592
    iput-boolean v2, p0, Lio/bidmachine/AdRequest;->isExpireTrackerSubscribed:Z

    .line 593
    iget-object v2, p0, Lio/bidmachine/AdRequest;->expiredRunnable:Ljava/lang/Runnable;

    invoke-static {v2, v0, v1}, Lio/bidmachine/core/Utils;->onBackgroundThread(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method private unsubscribeExpireTracker()V
    .locals 1

    const/4 v0, 0x0

    .line 598
    iput-boolean v0, p0, Lio/bidmachine/AdRequest;->isExpireTrackerSubscribed:Z

    .line 599
    iget-object v0, p0, Lio/bidmachine/AdRequest;->expiredRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lio/bidmachine/core/Utils;->cancelBackgroundThreadTask(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method addInternalListener(Lio/bidmachine/AdRequest$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/AdRequest$b<",
            "TSelfType;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 544
    iget-object v0, p0, Lio/bidmachine/AdRequest;->internalAdRequestListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 545
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/bidmachine/AdRequest;->internalAdRequestListeners:Ljava/util/List;

    .line 547
    :cond_0
    iget-object v0, p0, Lio/bidmachine/AdRequest;->internalAdRequestListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public addListener(Lio/bidmachine/AdRequest$AdRequestListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/AdRequest$AdRequestListener<",
            "TSelfType;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 528
    iget-object v0, p0, Lio/bidmachine/AdRequest;->adRequestListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 529
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/bidmachine/AdRequest;->adRequestListeners:Ljava/util/List;

    .line 531
    :cond_0
    iget-object v0, p0, Lio/bidmachine/AdRequest;->adRequestListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method build(Landroid/content/Context;Lio/bidmachine/AdsType;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    .line 136
    :try_start_0
    invoke-static {}, Lio/bidmachine/d;->get()Lio/bidmachine/d;

    move-result-object v1

    invoke-virtual {v1}, Lio/bidmachine/d;->getSellerId()Ljava/lang/String;

    move-result-object v8

    .line 137
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Seller Id not provided"

    .line 138
    invoke-static {v0}, Lio/bidmachine/utils/BMError;->paramError(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object v0

    return-object v0

    .line 142
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lio/bidmachine/AdRequest;->verifyRequest()Lio/bidmachine/utils/BMError;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    .line 147
    :cond_1
    invoke-static {}, Lio/bidmachine/d;->get()Lio/bidmachine/d;

    move-result-object v9

    .line 148
    invoke-static {}, Lio/bidmachine/SessionManager;->get()Lio/bidmachine/SessionManager;

    move-result-object v10

    .line 150
    invoke-static/range {p1 .. p1}, Lio/bidmachine/c;->syncUpdateInfo(Landroid/content/Context;)V

    .line 152
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request;->newBuilder()Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object v11

    .line 153
    iget-object v1, v7, Lio/bidmachine/AdRequest;->targetingParams:Lio/bidmachine/TargetingParams;

    .line 155
    invoke-virtual {v9}, Lio/bidmachine/d;->getTargetingParams()Lio/bidmachine/TargetingParams;

    move-result-object v2

    .line 154
    invoke-static {v1, v2}, Lio/bidmachine/models/RequestParams;->resolveParams(Lio/bidmachine/models/RequestParams;Lio/bidmachine/models/RequestParams;)Lio/bidmachine/models/RequestParams;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lio/bidmachine/TargetingParams;

    move-object/from16 v1, p2

    .line 156
    invoke-virtual {v10, v1}, Lio/bidmachine/SessionManager;->getSessionAdParams(Lio/bidmachine/AdsType;)Lio/bidmachine/SessionAdParams;

    move-result-object v2

    .line 157
    invoke-virtual {v10}, Lio/bidmachine/SessionManager;->getSessionDuration()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/bidmachine/SessionAdParams;->setSessionDuration(Ljava/lang/Integer;)Lio/bidmachine/SessionAdParams;

    move-result-object v13

    .line 158
    iget-object v2, v7, Lio/bidmachine/AdRequest;->sessionAdParams:Lio/bidmachine/SessionAdParams;

    .line 159
    invoke-static {v2, v13}, Lio/bidmachine/models/RequestParams;->resolveParams(Lio/bidmachine/models/RequestParams;Lio/bidmachine/models/RequestParams;)Lio/bidmachine/models/RequestParams;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lio/bidmachine/SessionAdParams;

    .line 161
    invoke-virtual {v12}, Lio/bidmachine/TargetingParams;->getBlockedParams()Lio/bidmachine/BlockedParams;

    move-result-object v15

    .line 162
    iget-object v2, v7, Lio/bidmachine/AdRequest;->userRestrictionParams:Lio/bidmachine/UserRestrictionParams;

    .line 164
    invoke-virtual {v9}, Lio/bidmachine/d;->getUserRestrictionParams()Lio/bidmachine/UserRestrictionParams;

    move-result-object v3

    .line 163
    invoke-static {v2, v3}, Lio/bidmachine/models/RequestParams;->resolveParams(Lio/bidmachine/models/RequestParams;Lio/bidmachine/models/RequestParams;)Lio/bidmachine/models/RequestParams;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lio/bidmachine/UserRestrictionParams;

    .line 165
    invoke-virtual {v7, v12, v6}, Lio/bidmachine/AdRequest;->createUnifiedAdRequestParams(Lio/bidmachine/TargetingParams;Lio/bidmachine/models/DataRestrictions;)Lio/bidmachine/unified/UnifiedAdRequestParams;

    move-result-object v2

    iput-object v2, v7, Lio/bidmachine/AdRequest;->unifiedAdRequestParams:Lio/bidmachine/unified/UnifiedAdRequestParams;

    .line 169
    iget-object v2, v7, Lio/bidmachine/AdRequest;->priceFloorParams:Lio/bidmachine/PriceFloorParams;

    .line 170
    invoke-virtual {v9}, Lio/bidmachine/d;->getPriceFloorParams()Lio/bidmachine/PriceFloorParams;

    move-result-object v3

    .line 169
    invoke-static {v2, v3}, Lio/bidmachine/core/Utils;->oneOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/PriceFloorParams;

    .line 172
    invoke-virtual {v2}, Lio/bidmachine/PriceFloorParams;->getPriceFloors()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 173
    invoke-virtual {v2}, Lio/bidmachine/PriceFloorParams;->getPriceFloors()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 175
    :cond_2
    invoke-virtual {v2}, Lio/bidmachine/PriceFloorParams;->getPriceFloors()Ljava/util/Map;

    move-result-object v2

    goto :goto_1

    .line 174
    :cond_3
    :goto_0
    invoke-virtual {v9}, Lio/bidmachine/d;->getPriceFloorParams()Lio/bidmachine/PriceFloorParams;

    move-result-object v2

    invoke-virtual {v2}, Lio/bidmachine/PriceFloorParams;->getPriceFloors()Ljava/util/Map;

    move-result-object v2

    :goto_1
    move-object/from16 v16, v2

    if-nez v16, :cond_4

    const-string v0, "PriceFloors not provided"

    .line 178
    invoke-static {v0}, Lio/bidmachine/utils/BMError;->paramError(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object v0

    return-object v0

    .line 181
    :cond_4
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 182
    new-instance v2, Lio/bidmachine/k;

    invoke-direct {v2, v0}, Lio/bidmachine/k;-><init>(Landroid/content/Context;)V

    iget-object v4, v7, Lio/bidmachine/AdRequest;->unifiedAdRequestParams:Lio/bidmachine/unified/UnifiedAdRequestParams;

    iget-object v5, v7, Lio/bidmachine/AdRequest;->networkConfigMap:Ljava/util/Map;

    move-object/from16 v1, p2

    move-object/from16 v3, p0

    move-object/from16 v18, v5

    move-object/from16 v5, v17

    move-object/from16 v19, v10

    move-object v10, v6

    move-object/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Lio/bidmachine/AdsType;->collectDisplayPlacements(Lio/bidmachine/ContextProvider;Lio/bidmachine/AdRequest;Lio/bidmachine/unified/UnifiedAdRequestParams;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 188
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item;->newBuilder()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object v1

    .line 189
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->setId(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    const/4 v2, 0x1

    .line 190
    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->setQty(I)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    .line 192
    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, "USD"

    if-eqz v4, :cond_5

    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 193
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->newBuilder()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object v5

    .line 194
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v2, v16

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->setId(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    .line 195
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    move-object v4, v3

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v5, v2, v3}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->setFlr(D)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    .line 196
    invoke-virtual {v5, v6}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->setFlrcur(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    .line 197
    invoke-virtual {v1, v5}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->addDeal(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-object v3, v4

    const/4 v2, 0x1

    goto :goto_2

    .line 200
    :cond_5
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement;->newBuilder()Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object v2

    const/4 v3, 0x0

    .line 201
    invoke-virtual {v2, v3}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->setSsai(I)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    const-string v4, "BidMachine"

    .line 202
    invoke-virtual {v2, v4}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->setSdk(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    const-string v4, "1.7.1"

    .line 203
    invoke-virtual {v2, v4}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->setSdkver(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    .line 204
    invoke-static {}, Lio/bidmachine/core/Utils;->canUseCleartextTraffic()Z

    move-result v4

    if-nez v4, :cond_6

    const/4 v3, 0x1

    :cond_6
    invoke-virtual {v2, v3}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->setSecure(Z)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    .line 205
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/Message$Builder;

    .line 206
    instance-of v5, v4, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;

    if-eqz v5, :cond_7

    .line 207
    check-cast v4, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;

    invoke-virtual {v2, v4}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->setDisplay(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    goto :goto_3

    .line 208
    :cond_7
    instance-of v5, v4, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    if-eqz v5, :cond_8

    .line 209
    check-cast v4, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    invoke-virtual {v2, v4}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->setVideo(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    goto :goto_3

    .line 211
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported display type: "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_9
    invoke-virtual {v7, v2}, Lio/bidmachine/AdRequest;->onBuildPlacement(Lcom/explorestack/protobuf/adcom/Placement$Builder;)V

    .line 216
    invoke-virtual {v2}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->build()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v2

    invoke-static {v2}, Lcom/explorestack/protobuf/Any;->pack(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Any;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->setSpec(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    .line 218
    invoke-virtual {v1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->addItem(Lcom/explorestack/protobuf/openrtb/Request$Item;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    .line 221
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context;->newBuilder()Lcom/explorestack/protobuf/adcom/Context$Builder;

    move-result-object v5

    .line 224
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$App;->newBuilder()Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    move-result-object v1

    .line 225
    invoke-virtual {v9}, Lio/bidmachine/d;->getPublisher()Lio/bidmachine/Publisher;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 227
    invoke-virtual {v2, v1}, Lio/bidmachine/Publisher;->build(Lcom/explorestack/protobuf/adcom/Context$App$Builder;)V

    .line 229
    :cond_a
    invoke-virtual {v12, v0, v1}, Lio/bidmachine/TargetingParams;->build(Landroid/content/Context;Lcom/explorestack/protobuf/adcom/Context$App$Builder;)V

    .line 232
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->newBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v2

    .line 233
    invoke-virtual {v12, v2}, Lio/bidmachine/TargetingParams;->fillAppExtension(Lcom/explorestack/protobuf/Struct$Builder;)V

    .line 234
    invoke-virtual {v2}, Lcom/explorestack/protobuf/Struct$Builder;->getFieldsCount()I

    move-result v3

    if-lez v3, :cond_b

    .line 235
    invoke-virtual {v2}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->setExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    .line 238
    :cond_b
    invoke-virtual {v5, v1}, Lcom/explorestack/protobuf/adcom/Context$Builder;->setApp(Lcom/explorestack/protobuf/adcom/Context$App$Builder;)Lcom/explorestack/protobuf/adcom/Context$Builder;

    if-eqz v15, :cond_c

    .line 242
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->newBuilder()Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    move-result-object v1

    .line 243
    invoke-virtual {v15, v1}, Lio/bidmachine/BlockedParams;->build(Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;)V

    .line 244
    invoke-virtual {v5, v1}, Lcom/explorestack/protobuf/adcom/Context$Builder;->setRestrictions(Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;)Lcom/explorestack/protobuf/adcom/Context$Builder;

    .line 248
    :cond_c
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$User;->newBuilder()Lcom/explorestack/protobuf/adcom/Context$User$Builder;

    move-result-object v1

    .line 249
    invoke-virtual {v10, v1}, Lio/bidmachine/UserRestrictionParams;->build(Lcom/explorestack/protobuf/adcom/Context$User$Builder;)V

    .line 250
    invoke-virtual {v10}, Lio/bidmachine/UserRestrictionParams;->canSendUserInfo()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 251
    invoke-virtual {v12, v1}, Lio/bidmachine/TargetingParams;->build(Lcom/explorestack/protobuf/adcom/Context$User$Builder;)V

    .line 255
    :cond_d
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->newBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v2

    .line 256
    invoke-virtual {v14, v2}, Lio/bidmachine/SessionAdParams;->fillUserExtension(Lcom/explorestack/protobuf/Struct$Builder;)V

    .line 257
    invoke-virtual {v2}, Lcom/explorestack/protobuf/Struct$Builder;->getFieldsCount()I

    move-result v3

    if-lez v3, :cond_e

    .line 258
    invoke-virtual {v2}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/adcom/Context$User$Builder;->setExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Context$User$Builder;

    .line 260
    :cond_e
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v13, v2}, Lio/bidmachine/SessionAdParams;->setIsUserClickedOnLastAd(Ljava/lang/Boolean;)Lio/bidmachine/SessionAdParams;

    .line 262
    invoke-virtual {v5, v1}, Lcom/explorestack/protobuf/adcom/Context$Builder;->setUser(Lcom/explorestack/protobuf/adcom/Context$User$Builder;)Lcom/explorestack/protobuf/adcom/Context$Builder;

    .line 265
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Regs;->newBuilder()Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    move-result-object v1

    .line 266
    invoke-virtual {v10, v1}, Lio/bidmachine/UserRestrictionParams;->build(Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;)V

    .line 267
    invoke-virtual {v5, v1}, Lcom/explorestack/protobuf/adcom/Context$Builder;->setRegs(Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;)Lcom/explorestack/protobuf/adcom/Context$Builder;

    .line 270
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Device;->newBuilder()Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    move-result-object v13

    .line 271
    invoke-virtual {v9}, Lio/bidmachine/d;->getDeviceParams()Lio/bidmachine/DeviceParams;

    move-result-object v1

    .line 274
    invoke-virtual {v9}, Lio/bidmachine/d;->getTargetingParams()Lio/bidmachine/TargetingParams;

    move-result-object v14

    move-object/from16 v2, p1

    move-object v3, v13

    move-object v4, v12

    move-object v12, v5

    move-object v5, v14

    move-object v14, v6

    move-object v6, v10

    .line 271
    invoke-virtual/range {v1 .. v6}, Lio/bidmachine/DeviceParams;->build(Landroid/content/Context;Lcom/explorestack/protobuf/adcom/Context$Device$Builder;Lio/bidmachine/TargetingParams;Lio/bidmachine/TargetingParams;Lio/bidmachine/models/DataRestrictions;)V

    .line 278
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->newBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v1

    .line 279
    invoke-virtual {v9}, Lio/bidmachine/d;->getDeviceParams()Lio/bidmachine/DeviceParams;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v10}, Lio/bidmachine/DeviceParams;->fillDeviceExtension(Landroid/content/Context;Lcom/explorestack/protobuf/Struct$Builder;Lio/bidmachine/UserRestrictionParams;)V

    .line 282
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Struct$Builder;->getFieldsCount()I

    move-result v2

    if-lez v2, :cond_f

    .line 283
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->setExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 286
    :cond_f
    invoke-virtual {v12, v13}, Lcom/explorestack/protobuf/adcom/Context$Builder;->setDevice(Lcom/explorestack/protobuf/adcom/Context$Device$Builder;)Lcom/explorestack/protobuf/adcom/Context$Builder;

    .line 288
    invoke-virtual {v12}, Lcom/explorestack/protobuf/adcom/Context$Builder;->build()Lcom/explorestack/protobuf/adcom/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/explorestack/protobuf/Any;->pack(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Any;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->setContext(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    .line 290
    invoke-virtual {v9}, Lio/bidmachine/d;->isTestMode()Z

    move-result v1

    invoke-virtual {v11, v1}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->setTest(Z)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    .line 291
    invoke-virtual {v11, v14}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->addCur(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    const/4 v1, 0x2

    .line 292
    invoke-virtual {v11, v1}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->setAt(I)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    const/16 v1, 0x2710

    .line 293
    invoke-virtual {v11, v1}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->setTmax(I)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    .line 296
    invoke-static {}, Lio/bidmachine/protobuf/RequestExtension;->newBuilder()Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object v1

    .line 297
    invoke-virtual {v1, v8}, Lio/bidmachine/protobuf/RequestExtension$Builder;->setSellerId(Ljava/lang/String;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    .line 298
    iget-boolean v2, v7, Lio/bidmachine/AdRequest;->headerBiddingEnabled:Z

    if-eqz v2, :cond_10

    sget-object v2, Lio/bidmachine/protobuf/HeaderBiddingType;->HEADER_BIDDING_TYPE_ENABLED:Lio/bidmachine/protobuf/HeaderBiddingType;

    goto :goto_4

    :cond_10
    sget-object v2, Lio/bidmachine/protobuf/HeaderBiddingType;->HEADER_BIDDING_TYPE_DISABLED:Lio/bidmachine/protobuf/HeaderBiddingType;

    :goto_4
    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/RequestExtension$Builder;->setHeaderBiddingType(Lio/bidmachine/protobuf/HeaderBiddingType;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    .line 302
    invoke-virtual {v9, v0}, Lio/bidmachine/d;->obtainIFV(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->setBmIfv(Ljava/lang/String;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    .line 303
    invoke-virtual/range {v19 .. v19}, Lio/bidmachine/SessionManager;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->setSessionId(Ljava/lang/String;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    .line 305
    invoke-virtual {v1}, Lio/bidmachine/protobuf/RequestExtension$Builder;->build()Lio/bidmachine/protobuf/RequestExtension;

    move-result-object v0

    invoke-static {v0}, Lcom/explorestack/protobuf/Any;->pack(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Any;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->addExtProto(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    .line 307
    invoke-virtual {v11}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 309
    invoke-static {v0}, Lio/bidmachine/core/Logger;->log(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method cancel()V
    .locals 1

    .line 486
    iget-object v0, p0, Lio/bidmachine/AdRequest;->isApiRequestCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lio/bidmachine/AdRequest;->isApiRequestCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 489
    :cond_0
    iget-object v0, p0, Lio/bidmachine/AdRequest;->currentApiRequest:Lio/bidmachine/ApiRequest;

    if-eqz v0, :cond_1

    .line 490
    invoke-virtual {v0}, Lio/bidmachine/ApiRequest;->cancel()V

    const/4 v0, 0x0

    .line 491
    iput-object v0, p0, Lio/bidmachine/AdRequest;->currentApiRequest:Lio/bidmachine/ApiRequest;

    return-void

    .line 493
    :cond_1
    invoke-direct {p0}, Lio/bidmachine/AdRequest;->processApiRequestCancel()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected abstract createUnifiedAdRequestParams(Lio/bidmachine/TargetingParams;Lio/bidmachine/models/DataRestrictions;)Lio/bidmachine/unified/UnifiedAdRequestParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/TargetingParams;",
            "Lio/bidmachine/models/DataRestrictions;",
            ")TUnifiedAdRequestParamsType;"
        }
    .end annotation
.end method

.method public destroy()V
    .locals 4

    .line 451
    iget-boolean v0, p0, Lio/bidmachine/AdRequest;->isDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 454
    iput-boolean v0, p0, Lio/bidmachine/AdRequest;->isDestroyed:Z

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": destroy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    .line 458
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->cancel()V

    .line 459
    invoke-direct {p0}, Lio/bidmachine/AdRequest;->unsubscribeExpireTracker()V

    .line 460
    iget-object v0, p0, Lio/bidmachine/AdRequest;->trackingObject:Lio/bidmachine/TrackingObject;

    invoke-static {v0}, Lio/bidmachine/BidMachineEvents;->clear(Lio/bidmachine/TrackingObject;)V

    .line 461
    invoke-static {p0}, Lio/bidmachine/BidMachineFetcher;->release(Lio/bidmachine/AdRequest;)Lio/bidmachine/AdRequest;

    .line 462
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->notifyRequestDestroyed()V

    const/4 v0, 0x0

    .line 464
    iput-object v0, p0, Lio/bidmachine/AdRequest;->priceFloorParams:Lio/bidmachine/PriceFloorParams;

    .line 465
    iput-object v0, p0, Lio/bidmachine/AdRequest;->targetingParams:Lio/bidmachine/TargetingParams;

    .line 466
    iput-object v0, p0, Lio/bidmachine/AdRequest;->sessionAdParams:Lio/bidmachine/SessionAdParams;

    .line 467
    iput-object v0, p0, Lio/bidmachine/AdRequest;->networkConfigMap:Ljava/util/Map;

    .line 468
    iput-object v0, p0, Lio/bidmachine/AdRequest;->userRestrictionParams:Lio/bidmachine/UserRestrictionParams;

    .line 469
    iput-object v0, p0, Lio/bidmachine/AdRequest;->extraParams:Lio/bidmachine/ExtraParams;

    .line 471
    iput-object v0, p0, Lio/bidmachine/AdRequest;->adResult:Lcom/explorestack/protobuf/adcom/Ad;

    .line 472
    iput-object v0, p0, Lio/bidmachine/AdRequest;->seatBidResult:Lcom/explorestack/protobuf/openrtb/Response$Seatbid;

    .line 473
    iput-object v0, p0, Lio/bidmachine/AdRequest;->bidResult:Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    .line 474
    iput-object v0, p0, Lio/bidmachine/AdRequest;->auctionResult:Lio/bidmachine/models/AuctionResult;

    .line 476
    iput-object v0, p0, Lio/bidmachine/AdRequest;->unifiedAdRequestParams:Lio/bidmachine/unified/UnifiedAdRequestParams;

    .line 478
    iget-object v1, p0, Lio/bidmachine/AdRequest;->trackingObject:Lio/bidmachine/TrackingObject;

    sget-object v2, Lio/bidmachine/TrackEventType;->AuctionRequestDestroy:Lio/bidmachine/TrackEventType;

    .line 481
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->getType()Lio/bidmachine/AdsType;

    move-result-object v3

    .line 478
    invoke-static {v1, v2, v3, v0}, Lio/bidmachine/BidMachineEvents;->eventFinish(Lio/bidmachine/TrackingObject;Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method extractTrackUrls(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 584
    :cond_0
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lio/bidmachine/TrackEventType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lio/bidmachine/AdRequest;->trackUrls:Ljava/util/Map;

    .line 585
    sget-object v1, Lio/bidmachine/TrackEventType;->MediationWin:Lio/bidmachine/TrackEventType;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getPurl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/bidmachine/g;->addEvent(Ljava/util/Map;Lio/bidmachine/TrackEventType;Ljava/lang/String;)V

    .line 586
    iget-object v0, p0, Lio/bidmachine/AdRequest;->trackUrls:Ljava/util/Map;

    sget-object v1, Lio/bidmachine/TrackEventType;->MediationLoss:Lio/bidmachine/TrackEventType;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getLurl()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lio/bidmachine/g;->addEvent(Ljava/util/Map;Lio/bidmachine/TrackEventType;Ljava/lang/String;)V

    return-void
.end method

.method public getAuctionResult()Lio/bidmachine/models/AuctionResult;
    .locals 1

    .line 337
    iget-object v0, p0, Lio/bidmachine/AdRequest;->auctionResult:Lio/bidmachine/models/AuctionResult;

    return-object v0
.end method

.method protected final getType()Lio/bidmachine/AdsType;
    .locals 1

    .line 323
    iget-object v0, p0, Lio/bidmachine/AdRequest;->adsType:Lio/bidmachine/AdsType;

    return-object v0
.end method

.method final getUnifiedRequestParams()Lio/bidmachine/unified/UnifiedAdRequestParams;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TUnifiedAdRequestParamsType;"
        }
    .end annotation

    .line 731
    iget-object v0, p0, Lio/bidmachine/AdRequest;->unifiedAdRequestParams:Lio/bidmachine/unified/UnifiedAdRequestParams;

    return-object v0
.end method

.method protected isAdWasShown()Z
    .locals 1

    .line 572
    iget-boolean v0, p0, Lio/bidmachine/AdRequest;->isAdWasShown:Z

    return v0
.end method

.method public isDestroyed()Z
    .locals 1

    .line 447
    iget-boolean v0, p0, Lio/bidmachine/AdRequest;->isDestroyed:Z

    return v0
.end method

.method public isExpired()Z
    .locals 1

    .line 522
    iget-boolean v0, p0, Lio/bidmachine/AdRequest;->isExpired:Z

    return v0
.end method

.method isPlacementBuilderMatch(Lio/bidmachine/displays/PlacementBuilder;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method isValid()Z
    .locals 1

    .line 327
    invoke-static {}, Lio/bidmachine/d;->get()Lio/bidmachine/d;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/d;->getSellerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public notifyMediationLoss()V
    .locals 4

    .line 426
    iget-object v0, p0, Lio/bidmachine/AdRequest;->isApiRequestCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 430
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": notifyMediationLoss"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    .line 433
    iget-boolean v0, p0, Lio/bidmachine/AdRequest;->isDestroyed:Z

    if-eqz v0, :cond_1

    .line 434
    sget-object v0, Lio/bidmachine/utils/BMError;->RequestDestroyed:Lio/bidmachine/utils/BMError;

    goto :goto_0

    .line 435
    :cond_1
    iget-boolean v0, p0, Lio/bidmachine/AdRequest;->isExpired:Z

    if-eqz v0, :cond_2

    .line 436
    sget-object v0, Lio/bidmachine/utils/BMError;->RequestExpired:Lio/bidmachine/utils/BMError;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 440
    :goto_0
    iget-object v1, p0, Lio/bidmachine/AdRequest;->trackingObject:Lio/bidmachine/TrackingObject;

    sget-object v2, Lio/bidmachine/TrackEventType;->MediationLoss:Lio/bidmachine/TrackEventType;

    .line 442
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->getType()Lio/bidmachine/AdsType;

    move-result-object v3

    .line 440
    invoke-static {v1, v2, v3, v0}, Lio/bidmachine/BidMachineEvents;->eventFinish(Lio/bidmachine/TrackingObject;Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public notifyMediationWin()V
    .locals 4

    .line 405
    iget-object v0, p0, Lio/bidmachine/AdRequest;->isApiRequestCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 409
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": notifyMediationWin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    .line 412
    iget-boolean v0, p0, Lio/bidmachine/AdRequest;->isDestroyed:Z

    if-eqz v0, :cond_1

    .line 413
    sget-object v0, Lio/bidmachine/utils/BMError;->RequestDestroyed:Lio/bidmachine/utils/BMError;

    goto :goto_0

    .line 414
    :cond_1
    iget-boolean v0, p0, Lio/bidmachine/AdRequest;->isExpired:Z

    if-eqz v0, :cond_2

    .line 415
    sget-object v0, Lio/bidmachine/utils/BMError;->RequestExpired:Lio/bidmachine/utils/BMError;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 419
    :goto_0
    iget-object v1, p0, Lio/bidmachine/AdRequest;->trackingObject:Lio/bidmachine/TrackingObject;

    sget-object v2, Lio/bidmachine/TrackEventType;->MediationWin:Lio/bidmachine/TrackEventType;

    .line 421
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->getType()Lio/bidmachine/AdsType;

    move-result-object v3

    .line 419
    invoke-static {v1, v2, v3, v0}, Lio/bidmachine/BidMachineEvents;->eventFinish(Lio/bidmachine/TrackingObject;Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method notifyRequestDestroyed()V
    .locals 2

    .line 559
    iget-object v0, p0, Lio/bidmachine/AdRequest;->internalAdRequestListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 560
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/AdRequest$b;

    .line 561
    invoke-interface {v1, p0}, Lio/bidmachine/AdRequest$b;->onRequestDestroyed(Lio/bidmachine/AdRequest;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onBuildPlacement(Lcom/explorestack/protobuf/adcom/Placement$Builder;)V
    .locals 0

    return-void
.end method

.method onExpired()V
    .locals 0

    .line 576
    invoke-direct {p0}, Lio/bidmachine/AdRequest;->unsubscribeExpireTracker()V

    return-void
.end method

.method onShown()V
    .locals 1

    const/4 v0, 0x1

    .line 567
    iput-boolean v0, p0, Lio/bidmachine/AdRequest;->isAdWasShown:Z

    .line 568
    invoke-direct {p0}, Lio/bidmachine/AdRequest;->unsubscribeExpireTracker()V

    return-void
.end method

.method processExpired()V
    .locals 4

    const/4 v0, 0x1

    .line 500
    iput-boolean v0, p0, Lio/bidmachine/AdRequest;->isExpired:Z

    .line 501
    invoke-direct {p0}, Lio/bidmachine/AdRequest;->unsubscribeExpireTracker()V

    .line 502
    iget-object v0, p0, Lio/bidmachine/AdRequest;->adRequestListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 503
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/AdRequest$AdRequestListener;

    .line 504
    invoke-interface {v1, p0}, Lio/bidmachine/AdRequest$AdRequestListener;->onRequestExpired(Lio/bidmachine/AdRequest;)V

    goto :goto_0

    .line 507
    :cond_0
    invoke-static {}, Lio/bidmachine/d;->get()Lio/bidmachine/d;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/d;->getAdRequestListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/AdRequest$AdRequestListener;

    .line 508
    invoke-interface {v1, p0}, Lio/bidmachine/AdRequest$AdRequestListener;->onRequestExpired(Lio/bidmachine/AdRequest;)V

    goto :goto_1

    .line 510
    :cond_1
    iget-object v0, p0, Lio/bidmachine/AdRequest;->trackingObject:Lio/bidmachine/TrackingObject;

    sget-object v1, Lio/bidmachine/TrackEventType;->AuctionRequestExpired:Lio/bidmachine/TrackEventType;

    .line 513
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->getType()Lio/bidmachine/AdsType;

    move-result-object v2

    const/4 v3, 0x0

    .line 510
    invoke-static {v0, v1, v2, v3}, Lio/bidmachine/BidMachineEvents;->eventFinish(Lio/bidmachine/TrackingObject;Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method removeInternalListener(Lio/bidmachine/AdRequest$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/AdRequest$b<",
            "TSelfType;>;)V"
        }
    .end annotation

    .line 552
    iget-object v0, p0, Lio/bidmachine/AdRequest;->internalAdRequestListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 553
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeListener(Lio/bidmachine/AdRequest$AdRequestListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/AdRequest$AdRequestListener<",
            "TSelfType;>;)V"
        }
    .end annotation

    .line 537
    iget-object v0, p0, Lio/bidmachine/AdRequest;->adRequestListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 538
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public request(Landroid/content/Context;)V
    .locals 3

    .line 341
    invoke-static {}, Lio/bidmachine/d;->get()Lio/bidmachine/d;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/d;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    sget-object p1, Lio/bidmachine/utils/BMError;->NotInitialized:Lio/bidmachine/utils/BMError;

    invoke-direct {p0, p1}, Lio/bidmachine/AdRequest;->processRequestFail(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 345
    :cond_0
    iget-boolean v0, p0, Lio/bidmachine/AdRequest;->isDestroyed:Z

    if-eqz v0, :cond_1

    .line 346
    sget-object p1, Lio/bidmachine/utils/BMError;->RequestDestroyed:Lio/bidmachine/utils/BMError;

    invoke-direct {p0, p1}, Lio/bidmachine/AdRequest;->processRequestFail(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 349
    :cond_1
    iget-object v0, p0, Lio/bidmachine/AdRequest;->trackingObject:Lio/bidmachine/TrackingObject;

    sget-object v1, Lio/bidmachine/TrackEventType;->AuctionRequest:Lio/bidmachine/TrackEventType;

    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->getType()Lio/bidmachine/AdsType;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/bidmachine/BidMachineEvents;->eventStart(Lio/bidmachine/TrackingObject;Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;)V

    const/4 v0, 0x0

    .line 351
    :try_start_0
    iput-boolean v0, p0, Lio/bidmachine/AdRequest;->isAdWasShown:Z

    .line 352
    invoke-direct {p0}, Lio/bidmachine/AdRequest;->unsubscribeExpireTracker()V

    .line 353
    iget-object v0, p0, Lio/bidmachine/AdRequest;->currentApiRequest:Lio/bidmachine/ApiRequest;

    if-eqz v0, :cond_2

    .line 354
    invoke-virtual {v0}, Lio/bidmachine/ApiRequest;->cancel()V

    .line 356
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": api request start"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    .line 357
    invoke-static {}, Lio/bidmachine/b;->get()Lio/bidmachine/b;

    move-result-object v0

    new-instance v1, Lio/bidmachine/AdRequest$3;

    invoke-direct {v1, p0, p1}, Lio/bidmachine/AdRequest$3;-><init>(Lio/bidmachine/AdRequest;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lio/bidmachine/b;->execute(Ljava/lang/Runnable;)V

    .line 395
    iget p1, p0, Lio/bidmachine/AdRequest;->timeOut:I

    if-lez p1, :cond_3

    .line 396
    iget-object v0, p0, Lio/bidmachine/AdRequest;->timeOutRunnable:Ljava/lang/Runnable;

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lio/bidmachine/core/Utils;->onBackgroundThread(Ljava/lang/Runnable;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception p1

    .line 399
    invoke-static {p1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/Throwable;)V

    .line 400
    sget-object p1, Lio/bidmachine/utils/BMError;->Internal:Lio/bidmachine/utils/BMError;

    invoke-direct {p0, p1}, Lio/bidmachine/AdRequest;->processRequestFail(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 737
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verifyRequest()Lio/bidmachine/utils/BMError;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
