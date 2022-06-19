.class public final enum Lio/bidmachine/AdsType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/AdsType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/bidmachine/AdsType;

.field public static final enum Banner:Lio/bidmachine/AdsType;

.field public static final enum Interstitial:Lio/bidmachine/AdsType;

.field public static final enum Native:Lio/bidmachine/AdsType;

.field public static final enum Rewarded:Lio/bidmachine/AdsType;


# instance fields
.field private final binder:Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;

.field private final name:Ljava/lang/String;

.field private final networkConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/NetworkConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final placementBuilders:[Lio/bidmachine/displays/PlacementBuilder;

.field private final placementCreateExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 32
    new-instance v6, Lio/bidmachine/AdsType;

    new-instance v4, Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;

    invoke-direct {v4}, Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;-><init>()V

    const/4 v7, 0x1

    new-array v5, v7, [Lio/bidmachine/displays/PlacementBuilder;

    new-instance v0, Lio/bidmachine/AdsType$1;

    const/4 v8, 0x0

    invoke-direct {v0, v8, v7}, Lio/bidmachine/AdsType$1;-><init>(ZZ)V

    aput-object v0, v5, v8

    const-string v1, "Banner"

    const/4 v2, 0x0

    const-string v3, "banner"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/AdsType;-><init>(Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;[Lio/bidmachine/displays/PlacementBuilder;)V

    sput-object v6, Lio/bidmachine/AdsType;->Banner:Lio/bidmachine/AdsType;

    .line 43
    new-instance v0, Lio/bidmachine/AdsType;

    new-instance v13, Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;

    invoke-direct {v13}, Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;-><init>()V

    const/4 v1, 0x2

    new-array v14, v1, [Lio/bidmachine/displays/PlacementBuilder;

    new-instance v2, Lio/bidmachine/displays/DisplayPlacementBuilder;

    invoke-direct {v2, v7, v7}, Lio/bidmachine/displays/DisplayPlacementBuilder;-><init>(ZZ)V

    aput-object v2, v14, v8

    new-instance v2, Lio/bidmachine/displays/VideoPlacementBuilder;

    invoke-direct {v2, v7, v7}, Lio/bidmachine/displays/VideoPlacementBuilder;-><init>(ZZ)V

    aput-object v2, v14, v7

    const-string v10, "Interstitial"

    const/4 v11, 0x1

    const-string v12, "interstitial"

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Lio/bidmachine/AdsType;-><init>(Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;[Lio/bidmachine/displays/PlacementBuilder;)V

    sput-object v0, Lio/bidmachine/AdsType;->Interstitial:Lio/bidmachine/AdsType;

    .line 48
    new-instance v2, Lio/bidmachine/AdsType;

    new-instance v19, Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;

    invoke-direct/range {v19 .. v19}, Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;-><init>()V

    new-array v3, v1, [Lio/bidmachine/displays/PlacementBuilder;

    new-instance v4, Lio/bidmachine/displays/DisplayPlacementBuilder;

    invoke-direct {v4, v7, v7}, Lio/bidmachine/displays/DisplayPlacementBuilder;-><init>(ZZ)V

    aput-object v4, v3, v8

    new-instance v4, Lio/bidmachine/displays/VideoPlacementBuilder;

    invoke-direct {v4, v8, v7}, Lio/bidmachine/displays/VideoPlacementBuilder;-><init>(ZZ)V

    aput-object v4, v3, v7

    const-string v16, "Rewarded"

    const/16 v17, 0x2

    const-string v18, "rewarded"

    move-object v15, v2

    move-object/from16 v20, v3

    invoke-direct/range {v15 .. v20}, Lio/bidmachine/AdsType;-><init>(Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;[Lio/bidmachine/displays/PlacementBuilder;)V

    sput-object v2, Lio/bidmachine/AdsType;->Rewarded:Lio/bidmachine/AdsType;

    .line 53
    new-instance v3, Lio/bidmachine/AdsType;

    new-instance v13, Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;

    invoke-direct {v13}, Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;-><init>()V

    new-array v14, v7, [Lio/bidmachine/displays/PlacementBuilder;

    new-instance v4, Lio/bidmachine/displays/NativePlacementBuilder;

    invoke-direct {v4, v8}, Lio/bidmachine/displays/NativePlacementBuilder;-><init>(Z)V

    aput-object v4, v14, v8

    const-string v10, "Native"

    const/4 v11, 0x3

    const-string v12, "native"

    move-object v9, v3

    invoke-direct/range {v9 .. v14}, Lio/bidmachine/AdsType;-><init>(Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;[Lio/bidmachine/displays/PlacementBuilder;)V

    sput-object v3, Lio/bidmachine/AdsType;->Native:Lio/bidmachine/AdsType;

    const/4 v4, 0x4

    new-array v4, v4, [Lio/bidmachine/AdsType;

    aput-object v6, v4, v8

    aput-object v0, v4, v7

    aput-object v2, v4, v1

    const/4 v0, 0x3

    aput-object v3, v4, v0

    .line 30
    sput-object v4, Lio/bidmachine/AdsType;->$VALUES:[Lio/bidmachine/AdsType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;[Lio/bidmachine/displays/PlacementBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;",
            "[",
            "Lio/bidmachine/displays/PlacementBuilder;",
            ")V"
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 61
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/bidmachine/AdsType;->networkConfigs:Ljava/util/Map;

    .line 63
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    const/16 p2, 0x8

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 62
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/AdsType;->placementCreateExecutor:Ljava/util/concurrent/Executor;

    .line 68
    iput-object p3, p0, Lio/bidmachine/AdsType;->name:Ljava/lang/String;

    .line 69
    iput-object p4, p0, Lio/bidmachine/AdsType;->binder:Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;

    .line 70
    iput-object p5, p0, Lio/bidmachine/AdsType;->placementBuilders:[Lio/bidmachine/displays/PlacementBuilder;

    return-void
.end method

.method static synthetic access$000(Lio/bidmachine/AdsType;)Ljava/util/Map;
    .locals 0

    .line 30
    iget-object p0, p0, Lio/bidmachine/AdsType;->networkConfigs:Ljava/util/Map;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/AdsType;
    .locals 1

    .line 30
    const-class v0, Lio/bidmachine/AdsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/AdsType;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/AdsType;
    .locals 1

    .line 30
    sget-object v0, Lio/bidmachine/AdsType;->$VALUES:[Lio/bidmachine/AdsType;

    invoke-virtual {v0}, [Lio/bidmachine/AdsType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/AdsType;

    return-object v0
.end method


# virtual methods
.method final addNetworkConfig(Ljava/lang/String;Lio/bidmachine/NetworkConfig;)V
    .locals 1

    .line 173
    iget-object v0, p0, Lio/bidmachine/AdsType;->networkConfigs:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method final collectDisplayPlacements(Lio/bidmachine/ContextProvider;Lio/bidmachine/AdRequest;Lio/bidmachine/unified/UnifiedAdRequestParams;Ljava/util/ArrayList;Ljava/util/Map;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/ContextProvider;",
            "Lio/bidmachine/AdRequest;",
            "Lio/bidmachine/unified/UnifiedAdRequestParams;",
            "Ljava/util/ArrayList<",
            "Lcom/explorestack/protobuf/Message$Builder;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/NetworkConfig;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v9, p0

    .line 130
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    iget-object v1, v9, Lio/bidmachine/AdsType;->placementBuilders:[Lio/bidmachine/displays/PlacementBuilder;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 131
    iget-object v10, v9, Lio/bidmachine/AdsType;->placementBuilders:[Lio/bidmachine/displays/PlacementBuilder;

    array-length v11, v10

    const/4 v1, 0x0

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v11, :cond_1

    aget-object v3, v10, v12

    move-object/from16 v13, p2

    .line 132
    invoke-virtual {v13, v3}, Lio/bidmachine/AdRequest;->isPlacementBuilderMatch(Lio/bidmachine/displays/PlacementBuilder;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    iget-object v14, v9, Lio/bidmachine/AdsType;->placementCreateExecutor:Ljava/util/concurrent/Executor;

    new-instance v15, Lio/bidmachine/AdsType$2;

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p4

    move-object v8, v0

    invoke-direct/range {v1 .. v8}, Lio/bidmachine/AdsType$2;-><init>(Lio/bidmachine/AdsType;Lio/bidmachine/displays/PlacementBuilder;Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdRequestParams;Ljava/util/Map;Ljava/util/ArrayList;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v14, v15}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 162
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 166
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 168
    invoke-static {v1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/Throwable;)V

    return-void
.end method

.method final createAdObjectParams(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdRequestParams;Lcom/explorestack/protobuf/openrtb/Response$Seatbid;Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/models/AdObjectParams;
    .locals 9

    .line 104
    iget-object v0, p0, Lio/bidmachine/AdsType;->placementBuilders:[Lio/bidmachine/displays/PlacementBuilder;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    .line 105
    invoke-virtual/range {v3 .. v8}, Lio/bidmachine/displays/PlacementBuilder;->createAdObjectParams(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdRequestParams;Lcom/explorestack/protobuf/openrtb/Response$Seatbid;Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/models/AdObjectParams;

    move-result-object v3

    if-eqz v3, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method final getBinder()Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;
    .locals 1

    .line 95
    iget-object v0, p0, Lio/bidmachine/AdsType;->binder:Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lio/bidmachine/AdsType;->name:Ljava/lang/String;

    return-object v0
.end method

.method final obtainHeaderBiddingAd(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;
    .locals 4

    .line 115
    iget-object v0, p0, Lio/bidmachine/AdsType;->placementBuilders:[Lio/bidmachine/displays/PlacementBuilder;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 116
    invoke-virtual {v3, p1}, Lio/bidmachine/displays/PlacementBuilder;->obtainHeaderBiddingAd(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    move-result-object v3

    if-eqz v3, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method final obtainNetworkConfig(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/NetworkConfig;
    .locals 2

    .line 78
    invoke-virtual {p0, p1}, Lio/bidmachine/AdsType;->obtainHeaderBiddingAd(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->getBidder()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/f;->getConfig(Ljava/lang/String;)Lio/bidmachine/NetworkConfig;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 83
    sget-object v1, Lio/bidmachine/AdsType;->Native:Lio/bidmachine/AdsType;

    if-ne p0, v1, :cond_1

    const-string p1, "nast"

    .line 84
    invoke-static {p1}, Lio/bidmachine/f;->getConfig(Ljava/lang/String;)Lio/bidmachine/NetworkConfig;

    move-result-object v0

    goto :goto_1

    .line 85
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->hasDisplay()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "mraid"

    .line 86
    invoke-static {p1}, Lio/bidmachine/f;->getConfig(Ljava/lang/String;)Lio/bidmachine/NetworkConfig;

    move-result-object v0

    goto :goto_1

    .line 87
    :cond_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->hasVideo()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string/jumbo p1, "vast"

    .line 88
    invoke-static {p1}, Lio/bidmachine/f;->getConfig(Ljava/lang/String;)Lio/bidmachine/NetworkConfig;

    move-result-object v0

    :cond_3
    :goto_1
    return-object v0
.end method
