.class final Lio/bidmachine/AdsType$1;
.super Lio/bidmachine/displays/DisplayPlacementBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/AdsType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/displays/DisplayPlacementBuilder<",
        "Lio/bidmachine/unified/UnifiedBannerAdRequestParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(ZZ)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lio/bidmachine/displays/DisplayPlacementBuilder;-><init>(ZZ)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic getSize(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdRequestParams;)Landroid/graphics/Point;
    .locals 0

    .line 35
    check-cast p2, Lio/bidmachine/unified/UnifiedBannerAdRequestParams;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/AdsType$1;->getSize(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedBannerAdRequestParams;)Landroid/graphics/Point;

    move-result-object p1

    return-object p1
.end method

.method public final getSize(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedBannerAdRequestParams;)Landroid/graphics/Point;
    .locals 1

    .line 39
    invoke-interface {p2}, Lio/bidmachine/unified/UnifiedBannerAdRequestParams;->getBannerSize()Lio/bidmachine/banner/BannerSize;

    move-result-object p1

    .line 40
    new-instance p2, Landroid/graphics/Point;

    iget v0, p1, Lio/bidmachine/banner/BannerSize;->width:I

    iget p1, p1, Lio/bidmachine/banner/BannerSize;->height:I

    invoke-direct {p2, v0, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object p2
.end method
