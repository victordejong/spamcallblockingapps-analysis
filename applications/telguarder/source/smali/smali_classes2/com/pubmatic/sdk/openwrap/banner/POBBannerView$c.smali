.class Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/common/utility/POBLooper$LooperListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;


# direct methods
.method private constructor <init>(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$c;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$c;-><init>(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)V

    return-void
.end method


# virtual methods
.method public invoke()V
    .locals 3

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$c;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->f(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$c;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$c;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$c;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$c;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-static {v0}, Lcom/pubmatic/sdk/common/utility/POBUtils;->getVisiblePercent(Landroid/view/View;)F

    move-result v0

    const/high16 v1, 0x41f00000    # 30.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-static {}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "POBBannerView"

    const-string v2, "Banner is not visibile."

    invoke-static {v1, v2, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$c;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->i(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->a(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;I)V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$c$a;

    invoke-direct {v0, p0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$c$a;-><init>(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$c;)V

    invoke-static {v0}, Lcom/pubmatic/sdk/common/utility/POBUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method
