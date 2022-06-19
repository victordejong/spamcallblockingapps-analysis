.class final Lio/bidmachine/displays/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/displays/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<UnifiedAdRequestParamsType::",
        "Lio/bidmachine/unified/UnifiedAdRequestParams;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final HEADER_BIDDING_PREPARE_TIMEOUT_SEC:J = 0xaL


# direct methods
.method constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private obtainHeaderBiddingAd(Ljava/util/List;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Any;",
            ">;)",
            "Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;"
        }
    .end annotation

    .line 155
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Any;

    .line 156
    const-class v1, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/Any;->is(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    :try_start_0
    const-class v1, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/Any;->unpack(Ljava/lang/Class;)Lcom/explorestack/protobuf/Message;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 160
    invoke-virtual {v0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->printStackTrace()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method final createAdObjectParams(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdRequestParams;Lcom/explorestack/protobuf/openrtb/Response$Seatbid;Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/models/AdObjectParams;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/ContextProvider;",
            "TUnifiedAdRequestParamsType;",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid;",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;",
            "Lcom/explorestack/protobuf/adcom/Ad;",
            ")",
            "Lio/bidmachine/models/AdObjectParams;"
        }
    .end annotation

    .line 129
    invoke-virtual {p0, p5}, Lio/bidmachine/displays/a;->obtainHeaderBiddingAd(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 130
    new-instance p2, Lio/bidmachine/displays/HeaderBiddingAdObjectParams;

    invoke-direct {p2, p3, p4, p5, p1}, Lio/bidmachine/displays/HeaderBiddingAdObjectParams;-><init>(Lcom/explorestack/protobuf/openrtb/Response$Seatbid;Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Lcom/explorestack/protobuf/adcom/Ad;Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method final createPlacement(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/AdsType;Lio/bidmachine/AdContentType;Ljava/util/Collection;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/ContextProvider;",
            "TUnifiedAdRequestParamsType;",
            "Lio/bidmachine/AdsType;",
            "Lio/bidmachine/AdContentType;",
            "Ljava/util/Collection<",
            "Lio/bidmachine/NetworkConfig;",
            ">;)",
            "Lcom/explorestack/protobuf/Message$Builder;"
        }
    .end annotation

    move-object/from16 v8, p3

    .line 52
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 53
    invoke-interface/range {p5 .. p5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/NetworkConfig;

    .line 54
    invoke-virtual {v1}, Lio/bidmachine/NetworkConfig;->obtainNetworkAdapter()Lio/bidmachine/NetworkAdapter;

    move-result-object v10

    .line 55
    instance-of v2, v10, Lio/bidmachine/HeaderBiddingAdapter;

    move-object/from16 v11, p2

    move-object/from16 v12, p4

    if-eqz v2, :cond_0

    .line 57
    invoke-virtual {v1, v8, v11, v12}, Lio/bidmachine/NetworkConfig;->peekMediationConfig(Lio/bidmachine/AdsType;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/AdContentType;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 59
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/util/Map;

    .line 60
    new-instance v14, Lio/bidmachine/displays/a$a;

    move-object v3, v10

    check-cast v3, Lio/bidmachine/HeaderBiddingAdapter;

    move-object v1, v14

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v7}, Lio/bidmachine/displays/a$a;-><init>(Lio/bidmachine/ContextProvider;Lio/bidmachine/HeaderBiddingAdapter;Lio/bidmachine/AdsType;Lio/bidmachine/AdContentType;Lio/bidmachine/unified/UnifiedAdRequestParams;Ljava/util/Map;)V

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 72
    :cond_1
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 73
    new-instance v2, Lio/bidmachine/displays/a$1;

    move-object v3, p0

    invoke-direct {v2, p0}, Lio/bidmachine/displays/a$1;-><init>(Lio/bidmachine/displays/a;)V

    .line 81
    sget-object v0, Lio/bidmachine/TrackEventType;->HeaderBiddingNetworksPrepare:Lio/bidmachine/TrackEventType;

    invoke-static {v2, v0, v8}, Lio/bidmachine/BidMachineEvents;->eventStart(Lio/bidmachine/TrackingObject;Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;)V

    .line 86
    :try_start_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 87
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/bidmachine/displays/a$a;

    .line 88
    invoke-virtual {v5, v0}, Lio/bidmachine/displays/a$a;->execute(Ljava/util/concurrent/CountDownLatch;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    const-wide/16 v4, 0xa

    .line 91
    :try_start_1
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 93
    :try_start_2
    invoke-static {v0}, Lio/bidmachine/core/Logger;->log(Ljava/lang/Throwable;)V

    .line 96
    :goto_2
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v4, v1

    :cond_3
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/bidmachine/displays/a$a;

    .line 97
    invoke-virtual {v5}, Lio/bidmachine/displays/a$a;->getAdUnit()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit;

    move-result-object v6

    if-eqz v6, :cond_5

    if-nez v4, :cond_4

    .line 100
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 102
    :cond_4
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 103
    :cond_5
    invoke-virtual {v5}, Lio/bidmachine/displays/a$a;->isFinished()Z

    move-result v6

    if-nez v6, :cond_3

    .line 105
    invoke-virtual {v5}, Lio/bidmachine/displays/a$a;->cancel()V

    goto :goto_3

    :cond_6
    if-eqz v4, :cond_7

    .line 108
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 109
    invoke-static {}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;->newBuilder()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;

    move-result-object v0

    .line 110
    invoke-virtual {v0, v4}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->addAllAdUnits(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    sget-object v4, Lio/bidmachine/TrackEventType;->HeaderBiddingNetworksPrepare:Lio/bidmachine/TrackEventType;

    invoke-static {v2, v4, v8, v1}, Lio/bidmachine/BidMachineEvents;->eventFinish(Lio/bidmachine/TrackingObject;Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lio/bidmachine/utils/BMError;)V

    return-object v0

    :cond_7
    sget-object v0, Lio/bidmachine/TrackEventType;->HeaderBiddingNetworksPrepare:Lio/bidmachine/TrackEventType;

    invoke-static {v2, v0, v8, v1}, Lio/bidmachine/BidMachineEvents;->eventFinish(Lio/bidmachine/TrackingObject;Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lio/bidmachine/utils/BMError;)V

    goto :goto_4

    :catchall_0
    move-exception v0

    sget-object v4, Lio/bidmachine/TrackEventType;->HeaderBiddingNetworksPrepare:Lio/bidmachine/TrackEventType;

    invoke-static {v2, v4, v8, v1}, Lio/bidmachine/BidMachineEvents;->eventFinish(Lio/bidmachine/TrackingObject;Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lio/bidmachine/utils/BMError;)V

    .line 119
    throw v0

    :cond_8
    move-object v3, p0

    :goto_4
    return-object v1
.end method

.method final obtainHeaderBiddingAd(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;
    .locals 3

    .line 138
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->hasDisplay()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 139
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->getDisplay()Lcom/explorestack/protobuf/adcom/Ad$Display;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->hasBanner()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getBanner()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->getExtProtoList()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lio/bidmachine/displays/a;->obtainHeaderBiddingAd(Ljava/util/List;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    .line 143
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->hasNative()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 144
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getNative()Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->getExtProtoList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/bidmachine/displays/a;->obtainHeaderBiddingAd(Ljava/util/List;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    .line 147
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->hasVideo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->getVideo()Lcom/explorestack/protobuf/adcom/Ad$Video;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getExtProtoList()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/bidmachine/displays/a;->obtainHeaderBiddingAd(Ljava/util/List;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    move-result-object v1

    :cond_2
    return-object v1
.end method
