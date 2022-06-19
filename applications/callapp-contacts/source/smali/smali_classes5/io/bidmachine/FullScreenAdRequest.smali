.class public abstract Lio/bidmachine/FullScreenAdRequest;
.super Lio/bidmachine/AdRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/FullScreenAdRequest$a;,
        Lio/bidmachine/FullScreenAdRequest$FullScreenRequestBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SelfType:",
        "Lio/bidmachine/FullScreenAdRequest;",
        ">",
        "Lio/bidmachine/AdRequest<",
        "TSelfType;",
        "Lio/bidmachine/unified/UnifiedFullscreenAdRequestParams;",
        ">;"
    }
.end annotation


# instance fields
.field adContentType:Lio/bidmachine/AdContentType;


# direct methods
.method public constructor <init>(Lio/bidmachine/AdsType;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lio/bidmachine/AdRequest;-><init>(Lio/bidmachine/AdsType;)V

    .line 13
    sget-object p1, Lio/bidmachine/AdContentType;->All:Lio/bidmachine/AdContentType;

    iput-object p1, p0, Lio/bidmachine/FullScreenAdRequest;->adContentType:Lio/bidmachine/AdContentType;

    return-void
.end method


# virtual methods
.method protected bridge synthetic createUnifiedAdRequestParams(Lio/bidmachine/TargetingParams;Lio/bidmachine/models/DataRestrictions;)Lio/bidmachine/unified/UnifiedAdRequestParams;
    .locals 0

    .line 10
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/FullScreenAdRequest;->createUnifiedAdRequestParams(Lio/bidmachine/TargetingParams;Lio/bidmachine/models/DataRestrictions;)Lio/bidmachine/unified/UnifiedFullscreenAdRequestParams;

    move-result-object p1

    return-object p1
.end method

.method protected createUnifiedAdRequestParams(Lio/bidmachine/TargetingParams;Lio/bidmachine/models/DataRestrictions;)Lio/bidmachine/unified/UnifiedFullscreenAdRequestParams;
    .locals 1

    .line 29
    new-instance v0, Lio/bidmachine/FullScreenAdRequest$a;

    invoke-direct {v0, p0, p1, p2}, Lio/bidmachine/FullScreenAdRequest$a;-><init>(Lio/bidmachine/FullScreenAdRequest;Lio/bidmachine/TargetingParams;Lio/bidmachine/models/DataRestrictions;)V

    return-object v0
.end method

.method isPlacementBuilderMatch(Lio/bidmachine/displays/PlacementBuilder;)Z
    .locals 2

    .line 21
    iget-object v0, p0, Lio/bidmachine/FullScreenAdRequest;->adContentType:Lio/bidmachine/AdContentType;

    sget-object v1, Lio/bidmachine/AdContentType;->All:Lio/bidmachine/AdContentType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lio/bidmachine/FullScreenAdRequest;->adContentType:Lio/bidmachine/AdContentType;

    invoke-virtual {p1}, Lio/bidmachine/displays/PlacementBuilder;->getAdContentType()Lio/bidmachine/AdContentType;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 22
    :cond_0
    invoke-super {p0, p1}, Lio/bidmachine/AdRequest;->isPlacementBuilderMatch(Lio/bidmachine/displays/PlacementBuilder;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
