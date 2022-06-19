.class public Lio/bidmachine/displays/DisplayPlacementBuilder;
.super Lio/bidmachine/displays/PlacementBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<UnifiedAdRequestParamsType::",
        "Lio/bidmachine/unified/UnifiedAdRequestParams;",
        ">",
        "Lio/bidmachine/displays/PlacementBuilder<",
        "TUnifiedAdRequestParamsType;>;"
    }
.end annotation


# instance fields
.field private isFullscreen:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 1

    .line 36
    sget-object v0, Lio/bidmachine/AdContentType;->Static:Lio/bidmachine/AdContentType;

    invoke-direct {p0, v0, p2}, Lio/bidmachine/displays/PlacementBuilder;-><init>(Lio/bidmachine/AdContentType;Z)V

    .line 37
    iput-boolean p1, p0, Lio/bidmachine/displays/DisplayPlacementBuilder;->isFullscreen:Z

    return-void
.end method


# virtual methods
.method public createAdObjectParams(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdRequestParams;Lcom/explorestack/protobuf/openrtb/Response$Seatbid;Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/models/AdObjectParams;
    .locals 2
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

    .line 76
    invoke-virtual {p5}, Lcom/explorestack/protobuf/adcom/Ad;->hasDisplay()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 79
    :cond_0
    invoke-virtual/range {p0 .. p5}, Lio/bidmachine/displays/DisplayPlacementBuilder;->createHeaderBiddingAdObjectParams(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdRequestParams;Lcom/explorestack/protobuf/openrtb/Response$Seatbid;Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/models/AdObjectParams;

    move-result-object p1

    if-nez p1, :cond_2

    .line 81
    invoke-virtual {p5}, Lcom/explorestack/protobuf/adcom/Ad;->getDisplay()Lcom/explorestack/protobuf/adcom/Ad$Display;

    move-result-object p1

    .line 82
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getAdm()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object v1

    .line 85
    :cond_1
    new-instance p2, Lio/bidmachine/displays/DisplayAdObjectParams;

    invoke-direct {p2, p3, p4, p5}, Lio/bidmachine/displays/DisplayAdObjectParams;-><init>(Lcom/explorestack/protobuf/openrtb/Response$Seatbid;Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Lcom/explorestack/protobuf/adcom/Ad;)V

    .line 86
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getAdm()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lio/bidmachine/displays/DisplayAdObjectParams;->setCreativeAdm(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getW()I

    move-result p3

    invoke-virtual {p2, p3}, Lio/bidmachine/displays/DisplayAdObjectParams;->setWidth(I)V

    .line 88
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getH()I

    move-result p1

    invoke-virtual {p2, p1}, Lio/bidmachine/displays/DisplayAdObjectParams;->setHeight(I)V

    move-object p1, p2

    :cond_2
    return-object p1
.end method

.method public createPlacement(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/AdsType;Ljava/util/Collection;Lio/bidmachine/displays/PlacementBuilder$PlacementCreateCallback;)V
    .locals 3
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

    .line 46
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->newBuilder()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;

    move-result-object v0

    .line 47
    sget-object v1, Lcom/explorestack/protobuf/adcom/ApiFramework;->API_FRAMEWORK_MRAID_2_0:Lcom/explorestack/protobuf/adcom/ApiFramework;

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;->addApi(Lcom/explorestack/protobuf/adcom/ApiFramework;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;

    .line 48
    sget-object v1, Lcom/explorestack/protobuf/adcom/SizeUnit;->SIZE_UNIT_DIPS:Lcom/explorestack/protobuf/adcom/SizeUnit;

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;->setUnit(Lcom/explorestack/protobuf/adcom/SizeUnit;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;

    .line 49
    sget-object v1, Lio/bidmachine/Constants;->IMAGE_MIME_TYPES:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;->addAllMime(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;

    .line 50
    iget-boolean v1, p0, Lio/bidmachine/displays/DisplayPlacementBuilder;->isFullscreen:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 51
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;->setInstl(Z)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;

    .line 52
    sget-object v1, Lcom/explorestack/protobuf/adcom/PlacementPosition;->PLACEMENT_POSITION_FULLSCREEN:Lcom/explorestack/protobuf/adcom/PlacementPosition;

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;->setPos(Lcom/explorestack/protobuf/adcom/PlacementPosition;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;

    .line 54
    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/displays/DisplayPlacementBuilder;->getSize(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdRequestParams;)Landroid/graphics/Point;

    move-result-object v1

    .line 55
    iget v2, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v2}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;->setW(I)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;

    .line 56
    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;->setH(I)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;

    .line 58
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/bidmachine/displays/DisplayPlacementBuilder;->createHeaderBiddingPlacement(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/AdsType;Ljava/util/Collection;)Lcom/explorestack/protobuf/Message$Builder;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 60
    invoke-interface {p1}, Lcom/explorestack/protobuf/Message$Builder;->build()Lcom/explorestack/protobuf/Message;

    move-result-object p1

    invoke-static {p1}, Lcom/explorestack/protobuf/Any;->pack(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;->addExtProto(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;

    .line 62
    :cond_1
    invoke-interface {p5, v0}, Lio/bidmachine/displays/PlacementBuilder$PlacementCreateCallback;->onCreated(Lcom/explorestack/protobuf/Message$Builder;)V

    return-void
.end method

.method public getSize(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdRequestParams;)Landroid/graphics/Point;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/ContextProvider;",
            "TUnifiedAdRequestParamsType;)",
            "Landroid/graphics/Point;"
        }
    .end annotation

    .line 67
    invoke-interface {p1}, Lio/bidmachine/ContextProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/core/Utils;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p1

    return-object p1
.end method
