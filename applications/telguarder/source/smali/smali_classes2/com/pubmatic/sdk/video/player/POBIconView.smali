.class public Lcom/pubmatic/sdk/video/player/POBIconView;
.super Lcom/pubmatic/sdk/video/player/POBVastHTMLView;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/common/ui/POBHtmlRendererListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pubmatic/sdk/video/player/POBVastHTMLView<",
        "Lcom/pubmatic/sdk/video/vastmodels/POBIcon;",
        ">;",
        "Lcom/pubmatic/sdk/common/ui/POBHtmlRendererListener;"
    }
.end annotation


# instance fields
.field private b:Lcom/pubmatic/sdk/video/player/POBVastHTMLView$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/video/player/POBVastHTMLView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method a(Lcom/pubmatic/sdk/video/vastmodels/POBIcon;)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/pubmatic/sdk/video/player/POBVastHTMLView;->renderVastHTMLView(Lcom/pubmatic/sdk/common/base/POBAdDescriptor;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/pubmatic/sdk/video/player/POBIconView;->b:Lcom/pubmatic/sdk/video/player/POBVastHTMLView$b;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/pubmatic/sdk/video/POBVastError;

    const/16 v1, 0x384

    const-string v2, "Unable to render Icon due to invalid details."

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/video/POBVastError;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/pubmatic/sdk/video/player/POBVastHTMLView$b;->a(Lcom/pubmatic/sdk/video/POBVastError;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "POBIconView"

    const-string v1, "Failed to render icon due to network connectivity issue."

    invoke-static {v0, v1, p1}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onViewClicked(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBIconView;->b:Lcom/pubmatic/sdk/video/player/POBVastHTMLView$b;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const-string v0, "https://obplaceholder.click.com/"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/pubmatic/sdk/video/player/POBIconView;->b:Lcom/pubmatic/sdk/video/player/POBVastHTMLView$b;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/pubmatic/sdk/video/player/POBVastHTMLView$b;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBIconView;->b:Lcom/pubmatic/sdk/video/player/POBVastHTMLView$b;

    invoke-interface {v0, p1}, Lcom/pubmatic/sdk/video/player/POBVastHTMLView$b;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onViewRendered(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBIconView;->b:Lcom/pubmatic/sdk/video/player/POBVastHTMLView$b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/pubmatic/sdk/video/player/POBVastHTMLView$b;->b()V

    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public onViewRenderingFailed(Lcom/pubmatic/sdk/common/POBError;)V
    .locals 3

    iget-object p1, p0, Lcom/pubmatic/sdk/video/player/POBIconView;->b:Lcom/pubmatic/sdk/video/player/POBVastHTMLView$b;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/pubmatic/sdk/video/POBVastError;

    const/16 v1, 0x384

    const-string v2, "Failed to render icon."

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/video/POBVastError;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/pubmatic/sdk/video/player/POBVastHTMLView$b;->a(Lcom/pubmatic/sdk/video/POBVastError;)V

    :cond_0
    return-void
.end method

.method setListener(Lcom/pubmatic/sdk/video/player/POBVastHTMLView$b;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/video/player/POBIconView;->b:Lcom/pubmatic/sdk/video/player/POBVastHTMLView$b;

    return-void
.end method
