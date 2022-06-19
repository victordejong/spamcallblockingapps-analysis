.class final Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader$1;->a:Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(ILjava/lang/String;)V
    .locals 5

    .line 246
    iget-object v0, p0, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader$1;->a:Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;

    iget-object v0, v0, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;->a:Lcom/mopub/mobileads/PangleAdBanner;

    invoke-virtual {v0}, Lcom/mopub/mobileads/PangleAdBanner;->getAdNetworkId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/mopub/mobileads/PangleAdBanner;->c()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onAdLoadFailed() error code: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 249
    iget-object p2, p0, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader$1;->a:Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;

    iget-object p2, p2, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;->a:Lcom/mopub/mobileads/PangleAdBanner;

    iget-object p2, p2, Lcom/mopub/mobileads/PangleAdBanner;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    if-eqz p2, :cond_0

    .line 250
    iget-object p2, p0, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader$1;->a:Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;

    iget-object p2, p2, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;->a:Lcom/mopub/mobileads/PangleAdBanner;

    iget-object p2, p2, Lcom/mopub/mobileads/PangleAdBanner;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    invoke-static {p1}, Lcom/mopub/mobileads/PangleAdapterConfiguration;->mapErrorCode(I)Lcom/mopub/mobileads/MoPubErrorCode;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_0
    return-void
.end method

.method public final onNativeExpressAdLoad(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 256
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 267
    :cond_0
    iget-object v2, p0, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader$1;->a:Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;

    iget-object v2, v2, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;->a:Lcom/mopub/mobileads/PangleAdBanner;

    invoke-virtual {v2}, Lcom/mopub/mobileads/PangleAdBanner;->getAdNetworkId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Lcom/mopub/mobileads/PangleAdBanner;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-static {v2, v3, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 269
    iget-object v0, p0, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader$1;->a:Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    invoke-static {v0, p1}, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;->a(Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 270
    iget-object p1, p0, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader$1;->a:Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;

    invoke-static {p1}, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;->b(Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    move-result-object p1

    iget-object v0, p0, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader$1;->a:Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;

    invoke-static {v0}, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;->a(Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;)V

    .line 271
    iget-object p1, p0, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader$1;->a:Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;

    invoke-static {p1}, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;->b(Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;->b(Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;)V

    .line 273
    iget-object p1, p0, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader$1;->a:Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;

    invoke-static {p1}, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;->b(Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->render()V

    return-void

    .line 257
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader$1;->a:Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;

    iget-object p1, p1, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;->a:Lcom/mopub/mobileads/PangleAdBanner;

    invoke-virtual {p1}, Lcom/mopub/mobileads/PangleAdBanner;->getAdNetworkId()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/mopub/mobileads/PangleAdBanner;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 258
    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    aput-object v1, v3, v0

    .line 257
    invoke-static {p1, v2, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 261
    iget-object p1, p0, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader$1;->a:Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;

    iget-object p1, p1, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;->a:Lcom/mopub/mobileads/PangleAdBanner;

    iget-object p1, p1, Lcom/mopub/mobileads/PangleAdBanner;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    if-eqz p1, :cond_2

    .line 262
    iget-object p1, p0, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader$1;->a:Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;

    iget-object p1, p1, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;->a:Lcom/mopub/mobileads/PangleAdBanner;

    iget-object p1, p1, Lcom/mopub/mobileads/PangleAdBanner;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, v0}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_2
    return-void
.end method
