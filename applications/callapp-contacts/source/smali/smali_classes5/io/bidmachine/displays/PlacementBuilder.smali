.class public abstract Lio/bidmachine/displays/PlacementBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/displays/PlacementBuilder$PlacementCreateCallback;
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


# instance fields
.field private contentType:Lio/bidmachine/AdContentType;

.field private headerBiddingPlacementBuilder:Lio/bidmachine/displays/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/displays/a<",
            "TUnifiedAdRequestParamsType;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/bidmachine/AdContentType;Z)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lio/bidmachine/displays/PlacementBuilder;->contentType:Lio/bidmachine/AdContentType;

    if-eqz p2, :cond_0

    .line 29
    new-instance p1, Lio/bidmachine/displays/a;

    invoke-direct {p1}, Lio/bidmachine/displays/a;-><init>()V

    iput-object p1, p0, Lio/bidmachine/displays/PlacementBuilder;->headerBiddingPlacementBuilder:Lio/bidmachine/displays/a;

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract createAdObjectParams(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdRequestParams;Lcom/explorestack/protobuf/openrtb/Response$Seatbid;Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/models/AdObjectParams;
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
.end method

.method createHeaderBiddingAdObjectParams(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdRequestParams;Lcom/explorestack/protobuf/openrtb/Response$Seatbid;Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/models/AdObjectParams;
    .locals 6
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

    .line 67
    iget-object v0, p0, Lio/bidmachine/displays/PlacementBuilder;->headerBiddingPlacementBuilder:Lio/bidmachine/displays/a;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 68
    invoke-virtual/range {v0 .. v5}, Lio/bidmachine/displays/a;->createAdObjectParams(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdRequestParams;Lcom/explorestack/protobuf/openrtb/Response$Seatbid;Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/models/AdObjectParams;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method createHeaderBiddingPlacement(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/AdsType;Ljava/util/Collection;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/ContextProvider;",
            "TUnifiedAdRequestParamsType;",
            "Lio/bidmachine/AdsType;",
            "Ljava/util/Collection<",
            "Lio/bidmachine/NetworkConfig;",
            ">;)",
            "Lcom/explorestack/protobuf/Message$Builder;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lio/bidmachine/displays/PlacementBuilder;->headerBiddingPlacementBuilder:Lio/bidmachine/displays/a;

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lio/bidmachine/displays/PlacementBuilder;->getAdContentType()Lio/bidmachine/AdContentType;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 54
    invoke-virtual/range {v0 .. v5}, Lio/bidmachine/displays/a;->createPlacement(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/AdsType;Lio/bidmachine/AdContentType;Ljava/util/Collection;)Lcom/explorestack/protobuf/Message$Builder;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract createPlacement(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/AdsType;Ljava/util/Collection;Lio/bidmachine/displays/PlacementBuilder$PlacementCreateCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/ContextProvider;",
            "TUnifiedAdRequestParamsType;",
            "Lio/bidmachine/AdsType;",
            "Ljava/util/Collection<",
            "Lio/bidmachine/NetworkConfig;",
            ">;",
            "Lio/bidmachine/displays/PlacementBuilder$PlacementCreateCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public getAdContentType()Lio/bidmachine/AdContentType;
    .locals 1

    .line 34
    iget-object v0, p0, Lio/bidmachine/displays/PlacementBuilder;->contentType:Lio/bidmachine/AdContentType;

    return-object v0
.end method

.method public obtainHeaderBiddingAd(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;
    .locals 1

    .line 73
    iget-object v0, p0, Lio/bidmachine/displays/PlacementBuilder;->headerBiddingPlacementBuilder:Lio/bidmachine/displays/a;

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0, p1}, Lio/bidmachine/displays/a;->obtainHeaderBiddingAd(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
