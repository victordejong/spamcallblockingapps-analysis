.class final Lio/bidmachine/AdsFormat$5;
.super Lio/bidmachine/AdsFormat$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/AdsFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/AdsFormat$a<",
        "Lio/bidmachine/unified/UnifiedBannerAdRequestParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lio/bidmachine/AdsType;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lio/bidmachine/AdsFormat$a;-><init>(Lio/bidmachine/AdsType;)V

    return-void
.end method


# virtual methods
.method final bridge synthetic isMatch(Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/AdContentType;)Z
    .locals 0

    .line 32
    check-cast p1, Lio/bidmachine/unified/UnifiedBannerAdRequestParams;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/AdsFormat$5;->isMatch(Lio/bidmachine/unified/UnifiedBannerAdRequestParams;Lio/bidmachine/AdContentType;)Z

    move-result p1

    return p1
.end method

.method final isMatch(Lio/bidmachine/unified/UnifiedBannerAdRequestParams;Lio/bidmachine/AdContentType;)Z
    .locals 0

    .line 36
    invoke-interface {p1}, Lio/bidmachine/unified/UnifiedBannerAdRequestParams;->getBannerSize()Lio/bidmachine/banner/BannerSize;

    move-result-object p1

    sget-object p2, Lio/bidmachine/banner/BannerSize;->Size_300x250:Lio/bidmachine/banner/BannerSize;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
