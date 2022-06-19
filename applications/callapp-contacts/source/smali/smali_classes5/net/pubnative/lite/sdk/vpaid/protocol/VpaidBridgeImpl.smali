.class public Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridge;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "VpaidBridgeImpl"


# instance fields
.field private final mBridge:Lnet/pubnative/lite/sdk/vpaid/protocol/BridgeEventHandler;

.field private final mCreativeParams:Lnet/pubnative/lite/sdk/vpaid/models/vpaid/CreativeParams;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lnet/pubnative/lite/sdk/vpaid/protocol/BridgeEventHandler;Lnet/pubnative/lite/sdk/vpaid/models/vpaid/CreativeParams;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->mBridge:Lnet/pubnative/lite/sdk/vpaid/protocol/BridgeEventHandler;

    .line 21
    iput-object p2, p0, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->mCreativeParams:Lnet/pubnative/lite/sdk/vpaid/models/vpaid/CreativeParams;

    return-void
.end method

.method static synthetic access$000(Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;)Lnet/pubnative/lite/sdk/vpaid/protocol/BridgeEventHandler;
    .locals 0

    .line 12
    iget-object p0, p0, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->mBridge:Lnet/pubnative/lite/sdk/vpaid/protocol/BridgeEventHandler;

    return-object p0
.end method

.method private callJsMethod(Ljava/lang/String;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->mBridge:Lnet/pubnative/lite/sdk/vpaid/protocol/BridgeEventHandler;

    invoke-interface {v0, p1}, Lnet/pubnative/lite/sdk/vpaid/protocol/BridgeEventHandler;->callJsMethod(Ljava/lang/String;)V

    return-void
.end method

.method private callWrapper(Ljava/lang/String;)V
    .locals 1

    .line 72
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "vapidWrapperInstance."

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->callJsMethod(Ljava/lang/String;)V

    return-void
.end method

.method private initAd()V
    .locals 4

    .line 83
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "JS: call initAd()"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->mCreativeParams:Lnet/pubnative/lite/sdk/vpaid/models/vpaid/CreativeParams;

    .line 92
    invoke-virtual {v2}, Lnet/pubnative/lite/sdk/vpaid/models/vpaid/CreativeParams;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->mCreativeParams:Lnet/pubnative/lite/sdk/vpaid/models/vpaid/CreativeParams;

    .line 93
    invoke-virtual {v2}, Lnet/pubnative/lite/sdk/vpaid/models/vpaid/CreativeParams;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->mCreativeParams:Lnet/pubnative/lite/sdk/vpaid/models/vpaid/CreativeParams;

    .line 94
    invoke-virtual {v2}, Lnet/pubnative/lite/sdk/vpaid/models/vpaid/CreativeParams;->getViewMode()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->mCreativeParams:Lnet/pubnative/lite/sdk/vpaid/models/vpaid/CreativeParams;

    .line 95
    invoke-virtual {v2}, Lnet/pubnative/lite/sdk/vpaid/models/vpaid/CreativeParams;->getDesiredBitrate()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->mCreativeParams:Lnet/pubnative/lite/sdk/vpaid/models/vpaid/CreativeParams;

    .line 96
    invoke-virtual {v2}, Lnet/pubnative/lite/sdk/vpaid/models/vpaid/CreativeParams;->getCreativeData()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget-object v2, p0, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->mCreativeParams:Lnet/pubnative/lite/sdk/vpaid/models/vpaid/CreativeParams;

    .line 97
    invoke-virtual {v2}, Lnet/pubnative/lite/sdk/vpaid/models/vpaid/CreativeParams;->getEnvironmentVars()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string v2, "initAd(%1$d,%2$d,%3$s,%4$s,%5$s,%6$s)"

    .line 91
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-direct {p0, v0}, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->callWrapper(Ljava/lang/String;)V

    return-void
.end method

.method private runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->mBridge:Lnet/pubnative/lite/sdk/vpaid/protocol/BridgeEventHandler;

    invoke-interface {v0, p1}, Lnet/pubnative/lite/sdk/vpaid/protocol/BridgeEventHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getAdDurationResult(I)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 254
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->LOG_TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "JS: getAdDurationResult: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getAdExpandedResult(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 162
    sget-object p1, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->LOG_TAG:Ljava/lang/String;

    const-string v0, "JS: getAdExpandedResult"

    invoke-static {p1, v0}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getAdLinearResult(Z)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 259
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->LOG_TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "getAdLinearResult: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getAdRemainingTimeResult(I)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 244
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->LOG_TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "JS: getAdRemainingTimeResult: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 246
    iget-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->mBridge:Lnet/pubnative/lite/sdk/vpaid/protocol/BridgeEventHandler;

    const-string v0, "complete"

    invoke-interface {p1, v0}, Lnet/pubnative/lite/sdk/vpaid/protocol/BridgeEventHandler;->postEvent(Ljava/lang/String;)V

    return-void

    .line 248
    :cond_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->mBridge:Lnet/pubnative/lite/sdk/vpaid/protocol/BridgeEventHandler;

    const-string v1, "progress"

    invoke-interface {v0, v1, p1}, Lnet/pubnative/lite/sdk/vpaid/protocol/BridgeEventHandler;->postEvent(Ljava/lang/String;I)V

    return-void
.end method

.method public getAdSkippableState()V
    .locals 2

    .line 57
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "call getAdSkippableState()"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "getAdSkippableState()"

    .line 58
    invoke-direct {p0, v0}, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->callWrapper(Ljava/lang/String;)V

    return-void
.end method

.method public getAdSkippableStateResult(Z)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 238
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->LOG_TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "JS: SkippableState: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->mBridge:Lnet/pubnative/lite/sdk/vpaid/protocol/BridgeEventHandler;

    invoke-interface {v0, p1}, Lnet/pubnative/lite/sdk/vpaid/protocol/BridgeEventHandler;->setSkippableState(Z)V

    return-void
.end method

.method public getAdVolumeResult()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 303
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "JS: getAdVolumeResult"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public handshakeVersionResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 104
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "JS: handshakeVersion()"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public initAdResult()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 121
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "JS: Init ad done"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public pauseAd()V
    .locals 2

    .line 45
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "call pauseAd()"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pauseAd()"

    .line 46
    invoke-direct {p0, v0}, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->callWrapper(Ljava/lang/String;)V

    return-void
.end method

.method public prepare()V
    .locals 2

    .line 27
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "call initVpaidWrapper()"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "initVpaidWrapper()"

    .line 28
    invoke-direct {p0, v0}, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->callJsMethod(Ljava/lang/String;)V

    return-void
.end method

.method public resumeAd()V
    .locals 2

    .line 51
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "call resumeAd()"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "resumeAd()"

    .line 52
    invoke-direct {p0, v0}, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->callWrapper(Ljava/lang/String;)V

    return-void
.end method

.method public startAd()V
    .locals 2

    .line 33
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "call startAd()"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "startAd()"

    .line 34
    invoke-direct {p0, v0}, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->callWrapper(Ljava/lang/String;)V

    return-void
.end method

.method public stopAd()V
    .locals 2

    .line 39
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "call stopAd()"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "stopAd()"

    .line 40
    invoke-direct {p0, v0}, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->callWrapper(Ljava/lang/String;)V

    return-void
.end method

.method public vpaidAdClickThruIdPlayerHandles(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    if-eqz p3, :cond_0

    .line 210
    iget-object p2, p0, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->mBridge:Lnet/pubnative/lite/sdk/vpaid/protocol/BridgeEventHandler;

    invoke-interface {p2, p1}, Lnet/pubnative/lite/sdk/vpaid/protocol/BridgeEventHandler;->openUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public vpaidAdDurationChange()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 172
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "JS: vpaidAdDurationChange"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "getAdDurationResult"

    .line 173
    invoke-direct {p0, v0}, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->callWrapper(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->mBridge:Lnet/pubnative/lite/sdk/vpaid/protocol/BridgeEventHandler;

    invoke-interface {v0}, Lnet/pubnative/lite/sdk/vpaid/protocol/BridgeEventHandler;->onDurationChanged()V

    return-void
.end method

.method public vpaidAdError(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 126
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->LOG_TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "JS: vpaidAdError"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->mBridge:Lnet/pubnative/lite/sdk/vpaid/protocol/BridgeEventHandler;

    invoke-interface {v0, p1}, Lnet/pubnative/lite/sdk/vpaid/protocol/BridgeEventHandler;->trackError(Ljava/lang/String;)V

    return-void
.end method

.method public vpaidAdExpandedChange()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 157
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "JS: vpaidAdExpandedChange"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public vpaidAdImpression()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 286
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "JS: vpaidAdImpression"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->mBridge:Lnet/pubnative/lite/sdk/vpaid/protocol/BridgeEventHandler;

    invoke-interface {v0}, Lnet/pubnative/lite/sdk/vpaid/protocol/BridgeEventHandler;->onAdImpression()V

    return-void
.end method

.method public vpaidAdInteraction()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 292
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "JS: vpaidAdInteraction"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public vpaidAdLinearChange()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 185
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "JS: vpaidAdLinearChange"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->mBridge:Lnet/pubnative/lite/sdk/vpaid/protocol/BridgeEventHandler;

    invoke-interface {v0}, Lnet/pubnative/lite/sdk/vpaid/protocol/BridgeEventHandler;->onAdLinearChange()V

    return-void
.end method

.method public vpaidAdLoaded()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 110
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "JS: vpaidAdLoaded"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->mBridge:Lnet/pubnative/lite/sdk/vpaid/protocol/BridgeEventHandler;

    invoke-interface {v0}, Lnet/pubnative/lite/sdk/vpaid/protocol/BridgeEventHandler;->onPrepared()V

    return-void
.end method

.method public vpaidAdLog(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 132
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->LOG_TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "JS: vpaidAdLog "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public vpaidAdPaused()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 191
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "JS: vpaidAdPaused"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->mBridge:Lnet/pubnative/lite/sdk/vpaid/protocol/BridgeEventHandler;

    const-string v1, "pause"

    invoke-interface {v0, v1}, Lnet/pubnative/lite/sdk/vpaid/protocol/BridgeEventHandler;->postEvent(Ljava/lang/String;)V

    return-void
.end method

.method public vpaidAdPlaying()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 203
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "JS: vpaidAdPlaying"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->mBridge:Lnet/pubnative/lite/sdk/vpaid/protocol/BridgeEventHandler;

    const-string v1, "resume"

    invoke-interface {v0, v1}, Lnet/pubnative/lite/sdk/vpaid/protocol/BridgeEventHandler;->postEvent(Ljava/lang/String;)V

    return-void
.end method

.method public vpaidAdRemainingTimeChange()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 179
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "JS: vpaidAdRemainingTimeChange"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "getAdRemainingTime()"

    .line 180
    invoke-direct {p0, v0}, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->callWrapper(Ljava/lang/String;)V

    return-void
.end method

.method public vpaidAdSizeChange()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 167
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "JS: vpaidAdSizeChange"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public vpaidAdSkippableStateChange()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 152
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "JS: vpaidAdSkippableStateChange"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public vpaidAdSkipped()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 264
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "JS: vpaidAdSkipped"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    new-instance v0, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl$1;

    invoke-direct {v0, p0}, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl$1;-><init>(Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;)V

    invoke-direct {p0, v0}, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public vpaidAdStarted()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 116
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "JS: vpaidAdStarted"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public vpaidAdStopped()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 275
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "JS: vpaidAdStopped"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    new-instance v0, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl$2;

    invoke-direct {v0, p0}, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl$2;-><init>(Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;)V

    invoke-direct {p0, v0}, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public vpaidAdUserAcceptInvitation()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 137
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "JS: vpaidAdUserAcceptInvitation"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public vpaidAdUserClose()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 147
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "JS: vpaidAdUserClose"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public vpaidAdUserMinimize()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 142
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "JS: vpaidAdUserMinimize"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public vpaidAdVideoComplete()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 233
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "JS: vpaidAdVideoComplete"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public vpaidAdVideoFirstQuartile()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 216
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->mBridge:Lnet/pubnative/lite/sdk/vpaid/protocol/BridgeEventHandler;

    const-string v1, "firstQuartile"

    invoke-interface {v0, v1}, Lnet/pubnative/lite/sdk/vpaid/protocol/BridgeEventHandler;->postEvent(Ljava/lang/String;)V

    return-void
.end method

.method public vpaidAdVideoMidpoint()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 221
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "JS: vpaidAdVideoMidpoint"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->mBridge:Lnet/pubnative/lite/sdk/vpaid/protocol/BridgeEventHandler;

    const-string v1, "midpoint"

    invoke-interface {v0, v1}, Lnet/pubnative/lite/sdk/vpaid/protocol/BridgeEventHandler;->postEvent(Ljava/lang/String;)V

    return-void
.end method

.method public vpaidAdVideoStart()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 197
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "JS: vpaidAdVideoStart"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->mBridge:Lnet/pubnative/lite/sdk/vpaid/protocol/BridgeEventHandler;

    const-string v1, "start"

    invoke-interface {v0, v1}, Lnet/pubnative/lite/sdk/vpaid/protocol/BridgeEventHandler;->postEvent(Ljava/lang/String;)V

    return-void
.end method

.method public vpaidAdVideoThirdQuartile()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 227
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "JS: vpaidAdVideoThirdQuartile"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->mBridge:Lnet/pubnative/lite/sdk/vpaid/protocol/BridgeEventHandler;

    const-string v1, "thirdQuartile"

    invoke-interface {v0, v1}, Lnet/pubnative/lite/sdk/vpaid/protocol/BridgeEventHandler;->postEvent(Ljava/lang/String;)V

    return-void
.end method

.method public vpaidAdVolumeChanged()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 297
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "JS: vpaidAdVolumeChanged"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->mBridge:Lnet/pubnative/lite/sdk/vpaid/protocol/BridgeEventHandler;

    invoke-interface {v0}, Lnet/pubnative/lite/sdk/vpaid/protocol/BridgeEventHandler;->onAdVolumeChange()V

    return-void
.end method

.method public wrapperReady()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 79
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl;->initAd()V

    return-void
.end method
