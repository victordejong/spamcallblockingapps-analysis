.class public Lio/bidmachine/banner/BannerView;
.super Lio/bidmachine/AdView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/AdView<",
        "Lio/bidmachine/banner/BannerView;",
        "Lio/bidmachine/banner/a;",
        "Lio/bidmachine/banner/BannerRequest;",
        "Lio/bidmachine/ViewAdObject<",
        "Lio/bidmachine/banner/BannerRequest;",
        "Lio/bidmachine/unified/UnifiedBannerAd;",
        "Lio/bidmachine/unified/UnifiedBannerAdRequestParams;",
        ">;",
        "Lio/bidmachine/banner/BannerListener;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lio/bidmachine/AdView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lio/bidmachine/AdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/AdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createAd(Landroid/content/Context;)Lio/bidmachine/ViewAd;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lio/bidmachine/banner/BannerView;->createAd(Landroid/content/Context;)Lio/bidmachine/banner/a;

    move-result-object p1

    return-object p1
.end method

.method protected createAd(Landroid/content/Context;)Lio/bidmachine/banner/a;
    .locals 1

    .line 35
    new-instance v0, Lio/bidmachine/banner/a;

    invoke-direct {v0, p1}, Lio/bidmachine/banner/a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
