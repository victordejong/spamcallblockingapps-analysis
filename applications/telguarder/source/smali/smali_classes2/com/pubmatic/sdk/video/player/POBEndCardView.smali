.class public Lcom/pubmatic/sdk/video/player/POBEndCardView;
.super Lcom/pubmatic/sdk/video/player/POBVastHTMLView;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/common/ui/POBHtmlRendererListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubmatic/sdk/video/player/POBEndCardView$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pubmatic/sdk/video/player/POBVastHTMLView<",
        "Lcom/pubmatic/sdk/common/base/POBAdDescriptor;",
        ">;",
        "Lcom/pubmatic/sdk/common/ui/POBHtmlRendererListener;"
    }
.end annotation


# instance fields
.field private b:Lcom/pubmatic/sdk/video/player/POBEndCardView$b;

.field private c:Ljava/lang/String;

.field private d:Lcom/pubmatic/sdk/common/base/POBAdDescriptor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/video/player/POBVastHTMLView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x106000c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void
.end method

.method static synthetic a(Lcom/pubmatic/sdk/video/player/POBEndCardView;)Lcom/pubmatic/sdk/video/player/POBEndCardView$b;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/video/player/POBEndCardView;->b:Lcom/pubmatic/sdk/video/player/POBEndCardView$b;

    return-object p0
.end method

.method private a(Lcom/pubmatic/sdk/video/POBVastError;)V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBEndCardView;->b:Lcom/pubmatic/sdk/video/player/POBEndCardView$b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/pubmatic/sdk/video/player/POBVastHTMLView$b;->a(Lcom/pubmatic/sdk/video/POBVastError;)V

    :cond_0
    iget-object p1, p0, Lcom/pubmatic/sdk/video/player/POBEndCardView;->c:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/video/player/POBEndCardView;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "POBEndCardView"

    const-string v2, "Rendering Learn More button on end-card."

    invoke-static {v1, v2, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/pubmatic/sdk/video/R$id;->learn_more_btn:I

    sget v3, Lcom/pubmatic/sdk/video/R$color;->pob_controls_background_color:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-static {v1, v2, p1, v3}, Lcom/pubmatic/sdk/video/player/a;->a(Landroid/content/Context;ILjava/lang/String;I)Landroid/widget/TextView;

    move-result-object p1

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    sget v2, Lcom/pubmatic/sdk/video/R$dimen;->pob_control_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    const/4 v3, -0x2

    invoke-direct {v1, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x51

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    sget v2, Lcom/pubmatic/sdk/video/R$dimen;->pob_end_card_learn_more__bottom_margin:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/pubmatic/sdk/video/player/POBEndCardView$a;

    invoke-direct {v0, p0}, Lcom/pubmatic/sdk/video/player/POBEndCardView$a;-><init>(Lcom/pubmatic/sdk/video/player/POBEndCardView;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method a(Lcom/pubmatic/sdk/common/base/POBAdDescriptor;)V
    .locals 3

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/pubmatic/sdk/video/player/POBEndCardView;->c:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/video/player/POBEndCardView;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "POBEndCardView"

    const-string v2, "Suitable end-card found."

    invoke-static {v1, v2, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/pubmatic/sdk/video/player/POBEndCardView;->d:Lcom/pubmatic/sdk/common/base/POBAdDescriptor;

    invoke-virtual {p0, p1}, Lcom/pubmatic/sdk/video/player/POBVastHTMLView;->renderVastHTMLView(Lcom/pubmatic/sdk/common/base/POBAdDescriptor;)Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Lcom/pubmatic/sdk/video/POBVastError;

    const/16 v0, 0x25c

    const-string v1, "No supported resource found for end-card."

    invoke-direct {p1, v0, v1}, Lcom/pubmatic/sdk/video/POBVastError;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/pubmatic/sdk/video/POBVastError;

    const/16 v0, 0x25a

    const-string v1, "End-card failed to render due to network connectivity."

    invoke-direct {p1, v0, v1}, Lcom/pubmatic/sdk/video/POBVastError;-><init>(ILjava/lang/String;)V

    :goto_0
    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/video/player/POBEndCardView;->a(Lcom/pubmatic/sdk/video/POBVastError;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onViewClicked(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBEndCardView;->b:Lcom/pubmatic/sdk/video/player/POBEndCardView$b;

    if-eqz v0, :cond_1

    const-string v0, "https://obplaceholder.click.com/"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/pubmatic/sdk/video/player/POBEndCardView;->b:Lcom/pubmatic/sdk/video/player/POBEndCardView$b;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/pubmatic/sdk/video/player/POBVastHTMLView$b;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBEndCardView;->b:Lcom/pubmatic/sdk/video/player/POBEndCardView$b;

    invoke-interface {v0, p1}, Lcom/pubmatic/sdk/video/player/POBVastHTMLView$b;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onViewRendered(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBEndCardView;->d:Lcom/pubmatic/sdk/common/base/POBAdDescriptor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBEndCardView;->b:Lcom/pubmatic/sdk/video/player/POBEndCardView$b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/pubmatic/sdk/video/player/POBVastHTMLView$b;->b()V

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBEndCardView;->d:Lcom/pubmatic/sdk/common/base/POBAdDescriptor;

    invoke-interface {v0}, Lcom/pubmatic/sdk/common/base/POBAdDescriptor;->getContentWidth()I

    move-result v0

    invoke-static {v0}, Lcom/pubmatic/sdk/common/utility/POBUtils;->convertDpToPixel(I)I

    move-result v0

    iget-object v1, p0, Lcom/pubmatic/sdk/video/player/POBEndCardView;->d:Lcom/pubmatic/sdk/common/base/POBAdDescriptor;

    invoke-interface {v1}, Lcom/pubmatic/sdk/common/base/POBAdDescriptor;->getContentHeight()I

    move-result v1

    invoke-static {v1}, Lcom/pubmatic/sdk/common/utility/POBUtils;->convertDpToPixel(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    if-le v0, v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    :cond_2
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x11

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p0, p1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method

.method public onViewRenderingFailed(Lcom/pubmatic/sdk/common/POBError;)V
    .locals 2

    new-instance p1, Lcom/pubmatic/sdk/video/POBVastError;

    const/16 v0, 0x25a

    const-string v1, "End-card failed to render."

    invoke-direct {p1, v0, v1}, Lcom/pubmatic/sdk/video/POBVastError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/video/player/POBEndCardView;->a(Lcom/pubmatic/sdk/video/POBVastError;)V

    return-void
.end method

.method public setLearnMoreTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/video/player/POBEndCardView;->c:Ljava/lang/String;

    return-void
.end method

.method setListener(Lcom/pubmatic/sdk/video/player/POBEndCardView$b;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/video/player/POBEndCardView;->b:Lcom/pubmatic/sdk/video/player/POBEndCardView$b;

    return-void
.end method
