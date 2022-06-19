.class public Lcom/pubmatic/sdk/banner/ui/POBBannerRenderer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/common/ui/POBBannerRendering;
.implements Lcom/pubmatic/sdk/common/base/POBAdRendererListener;
.implements Lcom/pubmatic/sdk/video/renderer/POBVideoRenderingListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubmatic/sdk/banner/ui/POBBannerRenderer$RendererBuilder;
    }
.end annotation


# instance fields
.field private a:Lcom/pubmatic/sdk/common/ui/POBBannerRendering;

.field private b:Lcom/pubmatic/sdk/common/base/POBAdRendererListener;

.field private c:Lcom/pubmatic/sdk/banner/ui/POBBannerRenderer$RendererBuilder;


# direct methods
.method public constructor <init>(Lcom/pubmatic/sdk/banner/ui/POBBannerRenderer$RendererBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pubmatic/sdk/banner/ui/POBBannerRenderer;->c:Lcom/pubmatic/sdk/banner/ui/POBBannerRenderer$RendererBuilder;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/banner/ui/POBBannerRenderer;->a:Lcom/pubmatic/sdk/common/ui/POBBannerRendering;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/pubmatic/sdk/common/ui/POBBannerRendering;->destroy()V

    :cond_0
    return-void
.end method

.method public enableBackPress()V
    .locals 0

    return-void
.end method

.method public invalidateExpiration()V
    .locals 0

    return-void
.end method

.method public notifyAdEvent(Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;)V
    .locals 0

    return-void
.end method

.method public onAdExpired()V
    .locals 0

    return-void
.end method

.method public onAdInteractionStarted()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/banner/ui/POBBannerRenderer;->b:Lcom/pubmatic/sdk/common/base/POBAdRendererListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/pubmatic/sdk/common/base/POBAdRendererListener;->onAdInteractionStarted()V

    :cond_0
    return-void
.end method

.method public onAdInteractionStopped()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/banner/ui/POBBannerRenderer;->b:Lcom/pubmatic/sdk/common/base/POBAdRendererListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/pubmatic/sdk/common/base/POBAdRendererListener;->onAdInteractionStopped()V

    :cond_0
    return-void
.end method

.method public onAdReadyToRefresh(I)V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/banner/ui/POBBannerRenderer;->b:Lcom/pubmatic/sdk/common/base/POBAdRendererListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/pubmatic/sdk/common/base/POBAdRendererListener;->onAdReadyToRefresh(I)V

    :cond_0
    return-void
.end method

.method public onAdRender(Landroid/view/View;Lcom/pubmatic/sdk/common/base/POBAdDescriptor;)V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/banner/ui/POBBannerRenderer;->b:Lcom/pubmatic/sdk/common/base/POBAdRendererListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/pubmatic/sdk/common/base/POBAdRendererListener;->onAdRender(Landroid/view/View;Lcom/pubmatic/sdk/common/base/POBAdDescriptor;)V

    :cond_0
    return-void
.end method

.method public onAdRenderingFailed(Lcom/pubmatic/sdk/common/POBError;)V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/banner/ui/POBBannerRenderer;->b:Lcom/pubmatic/sdk/common/base/POBAdRendererListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/pubmatic/sdk/common/base/POBAdRendererListener;->onAdRenderingFailed(Lcom/pubmatic/sdk/common/POBError;)V

    :cond_0
    return-void
.end method

.method public onAdUnload()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/banner/ui/POBBannerRenderer;->b:Lcom/pubmatic/sdk/common/base/POBAdRendererListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/pubmatic/sdk/common/base/POBAdRendererListener;->onAdUnload()V

    :cond_0
    return-void
.end method

.method public onLeavingApplication()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/banner/ui/POBBannerRenderer;->b:Lcom/pubmatic/sdk/common/base/POBAdRendererListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/pubmatic/sdk/common/base/POBAdRendererListener;->onLeavingApplication()V

    :cond_0
    return-void
.end method

.method public onReadyToExecuteTrackers()V
    .locals 0

    return-void
.end method

.method public onRenderAdClick()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/banner/ui/POBBannerRenderer;->b:Lcom/pubmatic/sdk/common/base/POBAdRendererListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/pubmatic/sdk/common/base/POBAdRendererListener;->onRenderAdClick()V

    :cond_0
    return-void
.end method

.method public prepareToDetach()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/banner/ui/POBBannerRenderer;->a:Lcom/pubmatic/sdk/common/ui/POBBannerRendering;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/pubmatic/sdk/common/ui/POBBannerRendering;->prepareToDetach()V

    :cond_0
    return-void
.end method

.method public renderAd(Lcom/pubmatic/sdk/common/base/POBAdDescriptor;)V
    .locals 4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "POBBannerRenderer"

    const-string v2, "Rendering onStart in POBBannerRenderer"

    invoke-static {v1, v2, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/pubmatic/sdk/common/base/POBAdDescriptor;->getRenderableContent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/banner/ui/POBBannerRenderer;->c:Lcom/pubmatic/sdk/banner/ui/POBBannerRenderer$RendererBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/pubmatic/sdk/banner/ui/POBBannerRenderer$RendererBuilder;->build(Lcom/pubmatic/sdk/common/base/POBAdDescriptor;I)Lcom/pubmatic/sdk/common/ui/POBBannerRendering;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/ui/POBBannerRenderer;->a:Lcom/pubmatic/sdk/common/ui/POBBannerRendering;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/pubmatic/sdk/common/ui/POBBannerRendering;->setAdRendererListener(Lcom/pubmatic/sdk/common/base/POBAdRendererListener;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/banner/ui/POBBannerRenderer;->a:Lcom/pubmatic/sdk/common/ui/POBBannerRendering;

    invoke-interface {v0, p1}, Lcom/pubmatic/sdk/common/ui/POBBannerRendering;->renderAd(Lcom/pubmatic/sdk/common/base/POBAdDescriptor;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/ui/POBBannerRenderer;->b:Lcom/pubmatic/sdk/common/base/POBAdRendererListener;

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

    invoke-interface {v0, v1}, Lcom/pubmatic/sdk/common/base/POBAdRendererListener;->onAdRenderingFailed(Lcom/pubmatic/sdk/common/POBError;)V

    :cond_1
    return-void
.end method

.method public setAdRendererListener(Lcom/pubmatic/sdk/common/base/POBAdRendererListener;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/banner/ui/POBBannerRenderer;->b:Lcom/pubmatic/sdk/common/base/POBAdRendererListener;

    return-void
.end method
