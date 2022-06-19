.class final Lio/bidmachine/banner/a;
.super Lio/bidmachine/ViewAd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/ViewAd<",
        "Lio/bidmachine/banner/a;",
        "Lio/bidmachine/banner/BannerRequest;",
        "Lio/bidmachine/ViewAdObject<",
        "Lio/bidmachine/banner/BannerRequest;",
        "Lio/bidmachine/unified/UnifiedBannerAd;",
        "Lio/bidmachine/unified/UnifiedBannerAdRequestParams;",
        ">;",
        "Lio/bidmachine/unified/UnifiedBannerAdRequestParams;",
        "Lio/bidmachine/AdListener<",
        "Lio/bidmachine/banner/a;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 29
    sget-object v0, Lio/bidmachine/AdsType;->Banner:Lio/bidmachine/AdsType;

    invoke-direct {p0, p1, v0}, Lio/bidmachine/ViewAd;-><init>(Landroid/content/Context;Lio/bidmachine/AdsType;)V

    return-void
.end method


# virtual methods
.method protected final createAdObject(Lio/bidmachine/ContextProvider;Lio/bidmachine/banner/BannerRequest;Lio/bidmachine/NetworkAdapter;Lio/bidmachine/models/AdObjectParams;Lio/bidmachine/AdProcessCallback;)Lio/bidmachine/ViewAdObject;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/ContextProvider;",
            "Lio/bidmachine/banner/BannerRequest;",
            "Lio/bidmachine/NetworkAdapter;",
            "Lio/bidmachine/models/AdObjectParams;",
            "Lio/bidmachine/AdProcessCallback;",
            ")",
            "Lio/bidmachine/ViewAdObject<",
            "Lio/bidmachine/banner/BannerRequest;",
            "Lio/bidmachine/unified/UnifiedBannerAd;",
            "Lio/bidmachine/unified/UnifiedBannerAdRequestParams;",
            ">;"
        }
    .end annotation

    .line 40
    invoke-virtual {p3}, Lio/bidmachine/NetworkAdapter;->createBanner()Lio/bidmachine/unified/UnifiedBannerAd;

    move-result-object v5

    if-nez v5, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 44
    :cond_0
    new-instance p3, Lio/bidmachine/ViewAdObject;

    move-object v0, p3

    move-object v1, p1

    move-object v2, p5

    move-object v3, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/ViewAdObject;-><init>(Lio/bidmachine/ContextProvider;Lio/bidmachine/AdProcessCallback;Lio/bidmachine/AdRequest;Lio/bidmachine/models/AdObjectParams;Lio/bidmachine/unified/UnifiedAd;)V

    .line 46
    invoke-virtual {p2}, Lio/bidmachine/banner/BannerRequest;->getSize()Lio/bidmachine/banner/BannerSize;

    move-result-object p1

    .line 47
    iget p2, p1, Lio/bidmachine/banner/BannerSize;->width:I

    invoke-virtual {p3, p2}, Lio/bidmachine/ViewAdObject;->setWidth(I)V

    .line 48
    iget p1, p1, Lio/bidmachine/banner/BannerSize;->height:I

    invoke-virtual {p3, p1}, Lio/bidmachine/ViewAdObject;->setHeight(I)V

    return-object p3
.end method

.method public final bridge synthetic createAdObject(Lio/bidmachine/ContextProvider;Lio/bidmachine/AdRequest;Lio/bidmachine/NetworkAdapter;Lio/bidmachine/models/AdObjectParams;Lio/bidmachine/AdProcessCallback;)Lio/bidmachine/models/AdObject;
    .locals 0

    .line 19
    check-cast p2, Lio/bidmachine/banner/BannerRequest;

    invoke-virtual/range {p0 .. p5}, Lio/bidmachine/banner/a;->createAdObject(Lio/bidmachine/ContextProvider;Lio/bidmachine/banner/BannerRequest;Lio/bidmachine/NetworkAdapter;Lio/bidmachine/models/AdObjectParams;Lio/bidmachine/AdProcessCallback;)Lio/bidmachine/ViewAdObject;

    move-result-object p1

    return-object p1
.end method
