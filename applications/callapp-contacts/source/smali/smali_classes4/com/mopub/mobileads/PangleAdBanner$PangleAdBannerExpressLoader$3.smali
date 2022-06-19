.class final Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;


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

    .line 305
    iput-object p1, p0, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader$3;->a:Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked(Landroid/view/View;I)V
    .locals 3

    .line 308
    iget-object p1, p0, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader$3;->a:Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;

    iget-object p1, p1, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;->a:Lcom/mopub/mobileads/PangleAdBanner;

    invoke-virtual {p1}, Lcom/mopub/mobileads/PangleAdBanner;->getAdNetworkId()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CLICKED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Lcom/mopub/mobileads/PangleAdBanner;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1, p2, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 310
    iget-object p1, p0, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader$3;->a:Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;

    iget-object p1, p1, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;->a:Lcom/mopub/mobileads/PangleAdBanner;

    iget-object p1, p1, Lcom/mopub/mobileads/PangleAdBanner;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz p1, :cond_0

    .line 311
    iget-object p1, p0, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader$3;->a:Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;

    iget-object p1, p1, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;->a:Lcom/mopub/mobileads/PangleAdBanner;

    iget-object p1, p1, Lcom/mopub/mobileads/PangleAdBanner;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    invoke-interface {p1}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdClicked()V

    :cond_0
    return-void
.end method

.method public final onAdShow(Landroid/view/View;I)V
    .locals 3

    .line 319
    iget-object p1, p0, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader$3;->a:Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;

    iget-object p1, p1, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;->a:Lcom/mopub/mobileads/PangleAdBanner;

    invoke-virtual {p1}, Lcom/mopub/mobileads/PangleAdBanner;->getAdNetworkId()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->SHOW_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Lcom/mopub/mobileads/PangleAdBanner;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1, p2, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 321
    iget-object p1, p0, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader$3;->a:Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;

    iget-object p1, p1, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;->a:Lcom/mopub/mobileads/PangleAdBanner;

    iget-object p1, p1, Lcom/mopub/mobileads/PangleAdBanner;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz p1, :cond_0

    .line 322
    iget-object p1, p0, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader$3;->a:Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;

    iget-object p1, p1, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;->a:Lcom/mopub/mobileads/PangleAdBanner;

    iget-object p1, p1, Lcom/mopub/mobileads/PangleAdBanner;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    invoke-interface {p1}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdShown()V

    .line 323
    iget-object p1, p0, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader$3;->a:Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;

    iget-object p1, p1, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;->a:Lcom/mopub/mobileads/PangleAdBanner;

    iget-object p1, p1, Lcom/mopub/mobileads/PangleAdBanner;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    invoke-interface {p1}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdImpression()V

    :cond_0
    return-void
.end method

.method public final onRenderFail(Landroid/view/View;Ljava/lang/String;I)V
    .locals 5

    .line 331
    iget-object p1, p0, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader$3;->a:Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;

    iget-object p1, p1, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;->a:Lcom/mopub/mobileads/PangleAdBanner;

    invoke-virtual {p1}, Lcom/mopub/mobileads/PangleAdBanner;->getAdNetworkId()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/mopub/mobileads/PangleAdBanner;->c()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1, v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 332
    iget-object p1, p0, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader$3;->a:Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;

    iget-object p1, p1, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;->a:Lcom/mopub/mobileads/PangleAdBanner;

    invoke-virtual {p1}, Lcom/mopub/mobileads/PangleAdBanner;->getAdNetworkId()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/mopub/mobileads/PangleAdBanner;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Pangle banner ad failed to render with message: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", and code: "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v1

    invoke-static {p1, v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 336
    iget-object p1, p0, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader$3;->a:Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;

    iget-object p1, p1, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;->a:Lcom/mopub/mobileads/PangleAdBanner;

    iget-object p1, p1, Lcom/mopub/mobileads/PangleAdBanner;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    if-eqz p1, :cond_0

    .line 337
    iget-object p1, p0, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader$3;->a:Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;

    iget-object p1, p1, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;->a:Lcom/mopub/mobileads/PangleAdBanner;

    iget-object p1, p1, Lcom/mopub/mobileads/PangleAdBanner;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    sget-object p2, Lcom/mopub/mobileads/MoPubErrorCode;->INLINE_LOAD_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, p2}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_0
    return-void
.end method

.method public final onRenderSuccess(Landroid/view/View;FF)V
    .locals 3

    .line 343
    iget-object p2, p0, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader$3;->a:Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;

    iget-object p2, p2, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;->a:Lcom/mopub/mobileads/PangleAdBanner;

    invoke-static {p2, p1}, Lcom/mopub/mobileads/PangleAdBanner;->a(Lcom/mopub/mobileads/PangleAdBanner;Landroid/view/View;)Landroid/view/View;

    .line 345
    iget-object p1, p0, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader$3;->a:Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;

    iget-object p1, p1, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;->a:Lcom/mopub/mobileads/PangleAdBanner;

    invoke-virtual {p1}, Lcom/mopub/mobileads/PangleAdBanner;->getAdNetworkId()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 p3, 0x1

    new-array v0, p3, [Ljava/lang/Object;

    invoke-static {}, Lcom/mopub/mobileads/PangleAdBanner;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1, p2, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 346
    iget-object p1, p0, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader$3;->a:Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;

    iget-object p1, p1, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;->a:Lcom/mopub/mobileads/PangleAdBanner;

    invoke-virtual {p1}, Lcom/mopub/mobileads/PangleAdBanner;->getAdNetworkId()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->SHOW_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {}, Lcom/mopub/mobileads/PangleAdBanner;->c()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v2

    invoke-static {p1, p2, p3}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 348
    iget-object p1, p0, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader$3;->a:Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;

    iget-object p1, p1, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;->a:Lcom/mopub/mobileads/PangleAdBanner;

    iget-object p1, p1, Lcom/mopub/mobileads/PangleAdBanner;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    if-eqz p1, :cond_0

    .line 349
    iget-object p1, p0, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader$3;->a:Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;

    iget-object p1, p1, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;->a:Lcom/mopub/mobileads/PangleAdBanner;

    iget-object p1, p1, Lcom/mopub/mobileads/PangleAdBanner;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    invoke-interface {p1}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoaded()V

    :cond_0
    return-void
.end method
