.class public final Lio/bidmachine/interstitial/InterstitialRequest$Builder;
.super Lio/bidmachine/FullScreenAdRequest$FullScreenRequestBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/interstitial/InterstitialRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/FullScreenAdRequest$FullScreenRequestBuilder<",
        "Lio/bidmachine/interstitial/InterstitialRequest$Builder;",
        "Lio/bidmachine/interstitial/InterstitialRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lio/bidmachine/FullScreenAdRequest$FullScreenRequestBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic createRequest()Lio/bidmachine/AdRequest;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lio/bidmachine/interstitial/InterstitialRequest$Builder;->createRequest()Lio/bidmachine/interstitial/InterstitialRequest;

    move-result-object v0

    return-object v0
.end method

.method protected final createRequest()Lio/bidmachine/interstitial/InterstitialRequest;
    .locals 2

    .line 19
    new-instance v0, Lio/bidmachine/interstitial/InterstitialRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/interstitial/InterstitialRequest;-><init>(Lio/bidmachine/interstitial/InterstitialRequest$1;)V

    return-object v0
.end method

.method public final setAdContentType(Lio/bidmachine/AdContentType;)Lio/bidmachine/interstitial/InterstitialRequest$Builder;
    .locals 0

    .line 24
    invoke-super {p0, p1}, Lio/bidmachine/FullScreenAdRequest$FullScreenRequestBuilder;->setAdContentType(Lio/bidmachine/AdContentType;)Lio/bidmachine/models/RequestBuilder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/interstitial/InterstitialRequest$Builder;

    return-object p1
.end method

.method public final bridge synthetic setAdContentType(Lio/bidmachine/AdContentType;)Lio/bidmachine/models/RequestBuilder;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lio/bidmachine/interstitial/InterstitialRequest$Builder;->setAdContentType(Lio/bidmachine/AdContentType;)Lio/bidmachine/interstitial/InterstitialRequest$Builder;

    move-result-object p1

    return-object p1
.end method
