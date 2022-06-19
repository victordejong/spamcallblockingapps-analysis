.class final Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;


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

    .line 187
    iput-object p1, p0, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader$1;->a:Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(ILjava/lang/String;)V
    .locals 5

    .line 190
    iget-object v0, p0, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader$1;->a:Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;

    iget-object v0, v0, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;->a:Lcom/mopub/mobileads/PangleAdInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/PangleAdInterstitial;->getAdNetworkId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/mopub/mobileads/PangleAdInterstitial;->c()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Loading Full Video creative encountered an error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    invoke-static {p1}, Lcom/mopub/mobileads/PangleAdapterConfiguration;->mapErrorCode(I)Lcom/mopub/mobileads/MoPubErrorCode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mopub/mobileads/MoPubErrorCode;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", error message:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x1

    aput-object p2, v2, v3

    .line 190
    invoke-static {v0, v1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 195
    iget-object p2, p0, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader$1;->a:Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;

    iget-object p2, p2, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;->a:Lcom/mopub/mobileads/PangleAdInterstitial;

    iget-object p2, p2, Lcom/mopub/mobileads/PangleAdInterstitial;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    if-eqz p2, :cond_0

    .line 196
    iget-object p2, p0, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader$1;->a:Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;

    iget-object p2, p2, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;->a:Lcom/mopub/mobileads/PangleAdInterstitial;

    iget-object p2, p2, Lcom/mopub/mobileads/PangleAdInterstitial;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    invoke-static {p1}, Lcom/mopub/mobileads/PangleAdapterConfiguration;->mapErrorCode(I)Lcom/mopub/mobileads/MoPubErrorCode;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_0
    return-void
.end method

.method public final onFullScreenVideoAdLoad(Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 203
    iget-object v2, p0, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader$1;->a:Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;

    invoke-static {v2}, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;->a(Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;)Z

    .line 204
    iget-object v2, p0, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader$1;->a:Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;

    invoke-static {v2, p1}, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;->a(Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;)Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    .line 205
    iget-object p1, p0, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader$1;->a:Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;

    invoke-static {p1}, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;->c(Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;)Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    move-result-object p1

    iget-object v2, p0, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader$1;->a:Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;

    invoke-static {v2}, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;->b(Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;)Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;->setFullScreenVideoAdInteractionListener(Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;)V

    .line 207
    iget-object p1, p0, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader$1;->a:Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;

    iget-object p1, p1, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;->a:Lcom/mopub/mobileads/PangleAdInterstitial;

    invoke-virtual {p1}, Lcom/mopub/mobileads/PangleAdInterstitial;->getAdNetworkId()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/mopub/mobileads/PangleAdInterstitial;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {p1, v2, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 209
    iget-object p1, p0, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader$1;->a:Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;

    iget-object p1, p1, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;->a:Lcom/mopub/mobileads/PangleAdInterstitial;

    iget-object p1, p1, Lcom/mopub/mobileads/PangleAdInterstitial;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    if-eqz p1, :cond_1

    .line 210
    iget-object p1, p0, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader$1;->a:Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;

    iget-object p1, p1, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;->a:Lcom/mopub/mobileads/PangleAdInterstitial;

    iget-object p1, p1, Lcom/mopub/mobileads/PangleAdInterstitial;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    invoke-interface {p1}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoaded()V

    return-void

    .line 213
    :cond_0
    iget-object p1, p0, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader$1;->a:Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;

    iget-object p1, p1, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;->a:Lcom/mopub/mobileads/PangleAdInterstitial;

    invoke-virtual {p1}, Lcom/mopub/mobileads/PangleAdInterstitial;->getAdNetworkId()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/mopub/mobileads/PangleAdInterstitial;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {p1, v2, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 215
    iget-object p1, p0, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader$1;->a:Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;

    iget-object p1, p1, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;->a:Lcom/mopub/mobileads/PangleAdInterstitial;

    iget-object p1, p1, Lcom/mopub/mobileads/PangleAdInterstitial;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    if-eqz p1, :cond_1

    .line 216
    iget-object p1, p0, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader$1;->a:Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;

    iget-object p1, p1, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;->a:Lcom/mopub/mobileads/PangleAdInterstitial;

    iget-object p1, p1, Lcom/mopub/mobileads/PangleAdInterstitial;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, v0}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_1
    return-void
.end method

.method public final onFullScreenVideoCached()V
    .locals 5

    .line 223
    iget-object v0, p0, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader$1;->a:Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;

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

    const-string v4, "onFullScreenVideoCached: The full screen video is cached."

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method
