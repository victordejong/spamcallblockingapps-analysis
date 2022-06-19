.class public Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/common/ui/POBInterstitialRendering;
.implements Lcom/pubmatic/sdk/video/renderer/POBVideoRenderingListener;
.implements Lcom/pubmatic/sdk/common/base/POBAdRendererListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer$RendererBuilder;
    }
.end annotation


# instance fields
.field private a:Lcom/pubmatic/sdk/common/ui/POBBannerRendering;

.field private b:Lcom/pubmatic/sdk/common/ui/POBInterstitialRendererListener;

.field private c:Lcom/pubmatic/sdk/common/ui/POBVideoAdEventListener;

.field private d:I

.field private e:Lcom/pubmatic/sdk/common/base/POBAdDescriptor;

.field private f:Landroid/content/Context;

.field private g:Landroid/view/View;

.field private h:Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer$RendererBuilder;

.field private i:Lcom/pubmatic/sdk/common/ui/POBFullScreenActivityListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer$RendererBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer;->f:Landroid/content/Context;

    iput-object p2, p0, Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer;->h:Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer$RendererBuilder;

    return-void
.end method

.method static synthetic a(Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer;->f:Landroid/content/Context;

    return-object p0
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer;->a:Lcom/pubmatic/sdk/common/ui/POBBannerRendering;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/pubmatic/sdk/common/ui/POBBannerRendering;->invalidateExpiration()V

    :cond_0
    return-void
.end method

.method private a(I)V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "POBInterstitialRenderer"

    const-string v3, "showInterstitialAd"

    invoke-static {v2, v3, v1}, Lcom/pubmatic/sdk/common/log/PMLog;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer;->e:Lcom/pubmatic/sdk/common/base/POBAdDescriptor;

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer;->g:Landroid/view/View;

    if-eqz v3, :cond_2

    invoke-direct {p0, v1, v3}, Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer;->a(Lcom/pubmatic/sdk/common/base/POBAdDescriptor;Landroid/view/View;)V

    invoke-static {}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getAdViewCacheService()Lcom/pubmatic/sdk/common/cache/POBAdViewCacheService;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/common/cache/POBAdViewCacheService;->getStoredAdView(Ljava/lang/Integer;)Lcom/pubmatic/sdk/common/cache/POBAdViewCacheService$AdViewConfig;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer;->a:Lcom/pubmatic/sdk/common/ui/POBBannerRendering;

    instance-of v2, v1, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/cache/POBAdViewCacheService$AdViewConfig;->getAdView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pubmatic/sdk/webrendering/ui/POBMraidViewContainer;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/webrendering/ui/POBMraidViewContainer;->getCloseBtn()Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/pubmatic/sdk/webrendering/ui/POBMraidViewContainer;->getCloseBtn()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->onObstructionAdded(Landroid/view/View;)V

    :cond_0
    invoke-virtual {v1}, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->signalImpressionEvent()V

    :cond_1
    iget-object v0, p0, Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer;->e:Lcom/pubmatic/sdk/common/base/POBAdDescriptor;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v0, p1, v1, v2}, Lcom/pubmatic/sdk/webrendering/ui/POBFullScreenActivity;->startFullScreenActivity(Landroid/content/Context;ILcom/pubmatic/sdk/common/base/POBAdDescriptor;I)V

    invoke-virtual {p0}, Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer;->onAdInteractionStarted()V

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can not show interstitial for descriptor: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer;->e:Lcom/pubmatic/sdk/common/base/POBAdDescriptor;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, p1, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer;->b:Lcom/pubmatic/sdk/common/ui/POBInterstitialRendererListener;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/pubmatic/sdk/common/POBError;

    const/16 v2, 0x3f1

    invoke-direct {v1, v2, p1}, Lcom/pubmatic/sdk/common/POBError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/pubmatic/sdk/common/ui/POBInterstitialRendererListener;->onAdRenderingFailed(Lcom/pubmatic/sdk/common/POBError;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private a(Lcom/pubmatic/sdk/common/base/POBAdDescriptor;Landroid/view/View;)V
    .locals 2

    new-instance v0, Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer$a;

    invoke-direct {v0, p0, p2}, Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer$a;-><init>(Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer;Landroid/view/View;)V

    iput-object v0, p0, Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer;->i:Lcom/pubmatic/sdk/common/ui/POBFullScreenActivityListener;

    invoke-interface {p1}, Lcom/pubmatic/sdk/common/base/POBAdDescriptor;->isVideo()Z

    move-result p1

    if-eqz p1, :cond_0

    check-cast p2, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/pubmatic/sdk/webrendering/ui/POBMraidViewContainer;

    iget-object v0, p0, Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-direct {p1, v0, p2, v1}, Lcom/pubmatic/sdk/webrendering/ui/POBMraidViewContainer;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    move-object p2, p1

    :goto_0
    new-instance p1, Lcom/pubmatic/sdk/common/cache/POBAdViewCacheService$AdViewConfig;

    iget-object v0, p0, Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer;->i:Lcom/pubmatic/sdk/common/ui/POBFullScreenActivityListener;

    invoke-direct {p1, p2, v0}, Lcom/pubmatic/sdk/common/cache/POBAdViewCacheService$AdViewConfig;-><init>(Landroid/view/View;Lcom/pubmatic/sdk/common/ui/POBFullScreenActivityListener;)V

    invoke-static {}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getAdViewCacheService()Lcom/pubmatic/sdk/common/cache/POBAdViewCacheService;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/pubmatic/sdk/common/cache/POBAdViewCacheService;->storeAdView(Ljava/lang/Integer;Lcom/pubmatic/sdk/common/cache/POBAdViewCacheService$AdViewConfig;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    iget-object v0, p0, Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer;->a:Lcom/pubmatic/sdk/common/ui/POBBannerRendering;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/pubmatic/sdk/common/ui/POBBannerRendering;->destroy()V

    :cond_0
    invoke-static {}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getAdViewCacheService()Lcom/pubmatic/sdk/common/cache/POBAdViewCacheService;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/common/cache/POBAdViewCacheService;->popStoredAdView(Ljava/lang/Integer;)Lcom/pubmatic/sdk/common/cache/POBAdViewCacheService$AdViewConfig;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer;->i:Lcom/pubmatic/sdk/common/ui/POBFullScreenActivityListener;

    sget-object v0, Lcom/pubmatic/sdk/webrendering/ui/POBFullScreenActivity$ACTIONS;->POB_CLOSE:Lcom/pubmatic/sdk/webrendering/ui/POBFullScreenActivity$ACTIONS;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/webrendering/ui/POBFullScreenActivity$ACTIONS;->name()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const-string v2, "RendererIdentifier"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer;->f:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/pubmatic/sdk/webrendering/ui/POBFullScreenActivity;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public enableBackPress()V
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer;->f:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/pubmatic/sdk/webrendering/ui/POBFullScreenActivity;->enableBackPress(Landroid/content/Context;I)V

    return-void
.end method

.method public notifyAdEvent(Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;)V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer;->c:Lcom/pubmatic/sdk/common/ui/POBVideoAdEventListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/pubmatic/sdk/common/ui/POBVideoAdEventListener;->onVideoAdEvent(Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;)V

    :cond_0
    return-void
.end method

.method public onAdExpired()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer;->b:Lcom/pubmatic/sdk/common/ui/POBInterstitialRendererListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/pubmatic/sdk/common/ui/POBInterstitialRendererListener;->onAdExpired()V

    :cond_0
    return-void
.end method

.method public onAdInteractionStarted()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer;->b:Lcom/pubmatic/sdk/common/ui/POBInterstitialRendererListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer;->d:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer;->a()V

    iget-object v0, p0, Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer;->b:Lcom/pubmatic/sdk/common/ui/POBInterstitialRendererListener;

    invoke-interface {v0}, Lcom/pubmatic/sdk/common/ui/POBInterstitialRendererListener;->onAdInteractionStarted()V

    :cond_0
    iget v0, p0, Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer;->d:I

    return-void
.end method

.method public onAdInteractionStopped()V
    .locals 2

    iget v0, p0, Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer;->d:I

    iget-object v1, p0, Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer;->b:Lcom/pubmatic/sdk/common/ui/POBInterstitialRendererListener;

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer;->destroy()V

    iget-object v0, p0, Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer;->b:Lcom/pubmatic/sdk/common/ui/POBInterstitialRendererListener;

    invoke-interface {v0}, Lcom/pubmatic/sdk/common/ui/POBInterstitialRendererListener;->onAdInteractionStopped()V

    :cond_0
    return-void
.end method

.method public onAdReadyToRefresh(I)V
    .locals 0

    return-void
.end method

.method public onAdRender(Landroid/view/View;Lcom/pubmatic/sdk/common/base/POBAdDescriptor;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer;->g:Landroid/view/View;

    iget-object p1, p0, Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer;->b:Lcom/pubmatic/sdk/common/ui/POBInterstitialRendererListener;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/pubmatic/sdk/common/ui/POBInterstitialRendererListener;->onAdRender(Lcom/pubmatic/sdk/common/base/POBAdDescriptor;)V

    :cond_0
    return-void
.end method

.method public onAdRenderingFailed(Lcom/pubmatic/sdk/common/POBError;)V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer;->b:Lcom/pubmatic/sdk/common/ui/POBInterstitialRendererListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/pubmatic/sdk/common/ui/POBInterstitialRendererListener;->onAdRenderingFailed(Lcom/pubmatic/sdk/common/POBError;)V

    :cond_0
    return-void
.end method

.method public onAdUnload()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer;->b:Lcom/pubmatic/sdk/common/ui/POBInterstitialRendererListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/pubmatic/sdk/common/ui/POBInterstitialRendererListener;->onAdUnload()V

    :cond_0
    return-void
.end method

.method public onLeavingApplication()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer;->b:Lcom/pubmatic/sdk/common/ui/POBInterstitialRendererListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/pubmatic/sdk/common/ui/POBInterstitialRendererListener;->onLeavingApplication()V

    :cond_0
    return-void
.end method

.method public onReadyToExecuteTrackers()V
    .locals 0

    return-void
.end method

.method public onRenderAdClick()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer;->b:Lcom/pubmatic/sdk/common/ui/POBInterstitialRendererListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/pubmatic/sdk/common/ui/POBInterstitialRendererListener;->onAdClicked()V

    :cond_0
    return-void
.end method

.method public renderAd(Lcom/pubmatic/sdk/common/base/POBAdDescriptor;)V
    .locals 4

    iput-object p1, p0, Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer;->e:Lcom/pubmatic/sdk/common/base/POBAdDescriptor;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "POBInterstitialRenderer"

    const-string v2, "Rendering onStart"

    invoke-static {v1, v2, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/pubmatic/sdk/common/base/POBAdDescriptor;->getRenderableContent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer;->h:Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer$RendererBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer$RendererBuilder;->build(Lcom/pubmatic/sdk/common/base/POBAdDescriptor;I)Lcom/pubmatic/sdk/common/ui/POBBannerRendering;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer;->a:Lcom/pubmatic/sdk/common/ui/POBBannerRendering;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/pubmatic/sdk/common/ui/POBBannerRendering;->setAdRendererListener(Lcom/pubmatic/sdk/common/base/POBAdRendererListener;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer;->a:Lcom/pubmatic/sdk/common/ui/POBBannerRendering;

    invoke-interface {v0, p1}, Lcom/pubmatic/sdk/common/ui/POBBannerRendering;->renderAd(Lcom/pubmatic/sdk/common/base/POBAdDescriptor;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer;->b:Lcom/pubmatic/sdk/common/ui/POBInterstitialRendererListener;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/pubmatic/sdk/common/POBError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rendering failed for descriptor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x3f1

    invoke-direct {v1, v2, p1}, Lcom/pubmatic/sdk/common/POBError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/pubmatic/sdk/common/ui/POBInterstitialRendererListener;->onAdRenderingFailed(Lcom/pubmatic/sdk/common/POBError;)V

    :cond_1
    return-void
.end method

.method public setAdRendererListener(Lcom/pubmatic/sdk/common/ui/POBInterstitialRendererListener;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer;->b:Lcom/pubmatic/sdk/common/ui/POBInterstitialRendererListener;

    return-void
.end method

.method public setVideoAdEventListener(Lcom/pubmatic/sdk/common/ui/POBVideoAdEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer;->c:Lcom/pubmatic/sdk/common/ui/POBVideoAdEventListener;

    return-void
.end method

.method public show(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer;->a(I)V

    return-void
.end method
