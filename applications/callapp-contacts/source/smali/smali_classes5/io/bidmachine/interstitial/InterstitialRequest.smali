.class public final Lio/bidmachine/interstitial/InterstitialRequest;
.super Lio/bidmachine/FullScreenAdRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/interstitial/InterstitialRequest$AdRequestListener;,
        Lio/bidmachine/interstitial/InterstitialRequest$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/FullScreenAdRequest<",
        "Lio/bidmachine/interstitial/InterstitialRequest;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 13
    sget-object v0, Lio/bidmachine/AdsType;->Interstitial:Lio/bidmachine/AdsType;

    invoke-direct {p0, v0}, Lio/bidmachine/FullScreenAdRequest;-><init>(Lio/bidmachine/AdsType;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/interstitial/InterstitialRequest$1;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lio/bidmachine/interstitial/InterstitialRequest;-><init>()V

    return-void
.end method
