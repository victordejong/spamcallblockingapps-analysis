.class final Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader$2;->a:Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClose()V
    .locals 5

    .line 255
    iget-object v0, p0, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader$2;->a:Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;

    iget-object v0, v0, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;->a:Lcom/mopub/mobileads/PangleAdInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/PangleAdInterstitial;->getAdNetworkId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->DID_DISAPPEAR:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/mopub/mobileads/PangleAdInterstitial;->c()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 257
    iget-object v0, p0, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader$2;->a:Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;

    iget-object v0, v0, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;->a:Lcom/mopub/mobileads/PangleAdInterstitial;

    iget-object v0, v0, Lcom/mopub/mobileads/PangleAdInterstitial;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader$2;->a:Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;

    iget-object v0, v0, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;->a:Lcom/mopub/mobileads/PangleAdInterstitial;

    iget-object v0, v0, Lcom/mopub/mobileads/PangleAdInterstitial;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdDismissed()V

    :cond_0
    return-void
.end method

.method public final onAdShow()V
    .locals 5

    .line 232
    iget-object v0, p0, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader$2;->a:Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;

    iget-object v0, v0, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;->a:Lcom/mopub/mobileads/PangleAdInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/PangleAdInterstitial;->getAdNetworkId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->SHOW_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/mopub/mobileads/PangleAdInterstitial;->c()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 234
    iget-object v0, p0, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader$2;->a:Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;

    iget-object v0, v0, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;->a:Lcom/mopub/mobileads/PangleAdInterstitial;

    iget-object v0, v0, Lcom/mopub/mobileads/PangleAdInterstitial;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader$2;->a:Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;

    iget-object v0, v0, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;->a:Lcom/mopub/mobileads/PangleAdInterstitial;

    iget-object v0, v0, Lcom/mopub/mobileads/PangleAdInterstitial;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdShown()V

    .line 236
    iget-object v0, p0, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader$2;->a:Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;

    iget-object v0, v0, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;->a:Lcom/mopub/mobileads/PangleAdInterstitial;

    iget-object v0, v0, Lcom/mopub/mobileads/PangleAdInterstitial;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdImpression()V

    :cond_0
    return-void
.end method

.method public final onAdVideoBarClick()V
    .locals 5

    .line 244
    iget-object v0, p0, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader$2;->a:Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;

    iget-object v0, v0, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;->a:Lcom/mopub/mobileads/PangleAdInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/PangleAdInterstitial;->getAdNetworkId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CLICKED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/mopub/mobileads/PangleAdInterstitial;->c()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 246
    iget-object v0, p0, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader$2;->a:Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;

    iget-object v0, v0, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;->a:Lcom/mopub/mobileads/PangleAdInterstitial;

    iget-object v0, v0, Lcom/mopub/mobileads/PangleAdInterstitial;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader$2;->a:Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;

    iget-object v0, v0, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;->a:Lcom/mopub/mobileads/PangleAdInterstitial;

    iget-object v0, v0, Lcom/mopub/mobileads/PangleAdInterstitial;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdClicked()V

    :cond_0
    return-void
.end method

.method public final onSkippedVideo()V
    .locals 5

    .line 269
    iget-object v0, p0, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader$2;->a:Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;

    iget-object v0, v0, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;->a:Lcom/mopub/mobileads/PangleAdInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/PangleAdInterstitial;->getAdNetworkId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/mopub/mobileads/PangleAdInterstitial;->c()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string v4, "Pangle FullScreenVideoAd onSkippedVideo."

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onVideoComplete()V
    .locals 5

    .line 264
    iget-object v0, p0, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader$2;->a:Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;

    iget-object v0, v0, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;->a:Lcom/mopub/mobileads/PangleAdInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/PangleAdInterstitial;->getAdNetworkId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/mopub/mobileads/PangleAdInterstitial;->c()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string v4, "Pangle FullScreenVideoAd onVideoComplete."

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method
