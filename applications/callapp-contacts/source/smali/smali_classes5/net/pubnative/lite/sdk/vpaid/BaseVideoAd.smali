.class abstract Lnet/pubnative/lite/sdk/vpaid/BaseVideoAd;
.super Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "BaseVideoAd"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 13
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAd;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    .line 100
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAd;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnet/pubnative/lite/sdk/vpaid/utils/FileUtils;->clearCache(Landroid/content/Context;)V

    return-void
.end method

.method public destroy()V
    .locals 2

    .line 149
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAd;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Ad will be destroyed"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAd;->setReady()V

    .line 151
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAd;->stopExpirationTimer()V

    .line 152
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAd;->stopFetcherTimer()V

    const/16 v0, 0xc8

    .line 153
    invoke-virtual {p0, v0}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAd;->setAdState(I)V

    .line 154
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAd;->cancelFetcher()V

    .line 155
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAd;->releaseAdController()V

    .line 156
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAd;->getViewabilityAdSession()Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;

    move-result-object v0

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->stopAdSession()V

    return-void
.end method

.method public abstract dismiss()V
.end method

.method public isLoading()Z
    .locals 2

    .line 64
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAd;->getAdState()I

    move-result v0

    const/16 v1, 0xc9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isReady()Z
    .locals 1

    .line 42
    invoke-super {p0}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->isReady()Z

    move-result v0

    return v0
.end method

.method public isRewarded()Z
    .locals 1

    .line 22
    invoke-super {p0}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->isRewarded()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 2

    .line 53
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAd;->getAdState()I

    move-result v0

    const/16 v1, 0xca

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public load()V
    .locals 1

    .line 110
    new-instance v0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAd$1;

    invoke-direct {v0, p0}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAd$1;-><init>(Lnet/pubnative/lite/sdk/vpaid/BaseVideoAd;)V

    invoke-virtual {p0, v0}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAd;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setAdListener(Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;)V
    .locals 0

    .line 71
    invoke-super {p0, p1}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->setAdListener(Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;)V

    return-void
.end method

.method public setDebugMode(Z)V
    .locals 0

    .line 93
    invoke-static {p1}, Lnet/pubnative/lite/sdk/vpaid/utils/Utils;->setDebugMode(Z)V

    return-void
.end method

.method public setRewarded(Z)V
    .locals 0

    .line 26
    invoke-super {p0, p1}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->setRewarded(Z)V

    return-void
.end method

.method public useMobileNetworkForCaching(Z)V
    .locals 0

    .line 82
    invoke-static {p1}, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->setUseMobileNetworkForCaching(Z)V

    return-void
.end method
