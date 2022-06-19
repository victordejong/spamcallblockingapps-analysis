.class public Lnet/pubnative/lite/sdk/request/HyBidNativeAdRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/lite/sdk/api/RequestManager$RequestListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/lite/sdk/request/HyBidNativeAdRequest$RequestListener;
    }
.end annotation


# static fields
.field private static mScreenIabCategory:Ljava/lang/String;

.field private static mScreenKeywords:Ljava/lang/String;

.field private static mUserIntent:Ljava/lang/String;


# instance fields
.field private mListener:Lnet/pubnative/lite/sdk/request/HyBidNativeAdRequest$RequestListener;

.field private mRequestManager:Lnet/pubnative/lite/sdk/api/RequestManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lnet/pubnative/lite/sdk/request/NativeRequestManager;

    invoke-direct {v0}, Lnet/pubnative/lite/sdk/request/NativeRequestManager;-><init>()V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/request/HyBidNativeAdRequest;->mRequestManager:Lnet/pubnative/lite/sdk/api/RequestManager;

    .line 47
    sget-object v1, Lnet/pubnative/lite/sdk/models/IntegrationType;->STANDALONE:Lnet/pubnative/lite/sdk/models/IntegrationType;

    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/api/RequestManager;->setIntegrationType(Lnet/pubnative/lite/sdk/models/IntegrationType;)V

    .line 48
    iget-object v0, p0, Lnet/pubnative/lite/sdk/request/HyBidNativeAdRequest;->mRequestManager:Lnet/pubnative/lite/sdk/api/RequestManager;

    invoke-virtual {v0, p0}, Lnet/pubnative/lite/sdk/api/RequestManager;->setRequestListener(Lnet/pubnative/lite/sdk/api/RequestManager$RequestListener;)V

    return-void
.end method

.method private createNativeAd(Lnet/pubnative/lite/sdk/models/Ad;)V
    .locals 2

    .line 70
    iget-object v0, p0, Lnet/pubnative/lite/sdk/request/HyBidNativeAdRequest;->mListener:Lnet/pubnative/lite/sdk/request/HyBidNativeAdRequest$RequestListener;

    if-eqz v0, :cond_0

    .line 71
    new-instance v1, Lnet/pubnative/lite/sdk/models/NativeAd;

    invoke-direct {v1, p1}, Lnet/pubnative/lite/sdk/models/NativeAd;-><init>(Lnet/pubnative/lite/sdk/models/Ad;)V

    invoke-interface {v0, v1}, Lnet/pubnative/lite/sdk/request/HyBidNativeAdRequest$RequestListener;->onRequestSuccess(Lnet/pubnative/lite/sdk/models/NativeAd;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public load(Ljava/lang/String;Lnet/pubnative/lite/sdk/request/HyBidNativeAdRequest$RequestListener;)V
    .locals 0

    .line 52
    iput-object p2, p0, Lnet/pubnative/lite/sdk/request/HyBidNativeAdRequest;->mListener:Lnet/pubnative/lite/sdk/request/HyBidNativeAdRequest$RequestListener;

    .line 53
    iget-object p2, p0, Lnet/pubnative/lite/sdk/request/HyBidNativeAdRequest;->mRequestManager:Lnet/pubnative/lite/sdk/api/RequestManager;

    invoke-virtual {p2, p1}, Lnet/pubnative/lite/sdk/api/RequestManager;->setZoneId(Ljava/lang/String;)V

    .line 54
    iget-object p1, p0, Lnet/pubnative/lite/sdk/request/HyBidNativeAdRequest;->mRequestManager:Lnet/pubnative/lite/sdk/api/RequestManager;

    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/api/RequestManager;->requestAd()V

    return-void
.end method

.method public onRequestFail(Ljava/lang/Throwable;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lnet/pubnative/lite/sdk/request/HyBidNativeAdRequest;->mListener:Lnet/pubnative/lite/sdk/request/HyBidNativeAdRequest$RequestListener;

    if-eqz v0, :cond_0

    .line 65
    invoke-interface {v0, p1}, Lnet/pubnative/lite/sdk/request/HyBidNativeAdRequest$RequestListener;->onRequestFail(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public onRequestSuccess(Lnet/pubnative/lite/sdk/models/Ad;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lnet/pubnative/lite/sdk/request/HyBidNativeAdRequest;->createNativeAd(Lnet/pubnative/lite/sdk/models/Ad;)V

    return-void
.end method

.method public setMediation(Z)V
    .locals 1

    .line 76
    iget-object v0, p0, Lnet/pubnative/lite/sdk/request/HyBidNativeAdRequest;->mRequestManager:Lnet/pubnative/lite/sdk/api/RequestManager;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 77
    sget-object p1, Lnet/pubnative/lite/sdk/models/IntegrationType;->MEDIATION:Lnet/pubnative/lite/sdk/models/IntegrationType;

    goto :goto_0

    :cond_0
    sget-object p1, Lnet/pubnative/lite/sdk/models/IntegrationType;->STANDALONE:Lnet/pubnative/lite/sdk/models/IntegrationType;

    :goto_0
    invoke-virtual {v0, p1}, Lnet/pubnative/lite/sdk/api/RequestManager;->setIntegrationType(Lnet/pubnative/lite/sdk/models/IntegrationType;)V

    :cond_1
    return-void
.end method

.method public setScreenIabCategory(Ljava/lang/String;)V
    .locals 0

    .line 82
    sput-object p1, Lnet/pubnative/lite/sdk/request/HyBidNativeAdRequest;->mScreenIabCategory:Ljava/lang/String;

    return-void
.end method

.method public setScreenKeywords(Ljava/lang/String;)V
    .locals 0

    .line 86
    sput-object p1, Lnet/pubnative/lite/sdk/request/HyBidNativeAdRequest;->mScreenKeywords:Ljava/lang/String;

    return-void
.end method

.method public setUserIntent(Ljava/lang/String;)V
    .locals 0

    .line 90
    sput-object p1, Lnet/pubnative/lite/sdk/request/HyBidNativeAdRequest;->mUserIntent:Ljava/lang/String;

    return-void
.end method
