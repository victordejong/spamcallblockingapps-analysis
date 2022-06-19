.class Lcom/verizon/ads/webview/MRAIDExpandedActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/webview/MRAIDExpandedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/webview/MRAIDExpandedActivity;


# direct methods
.method constructor <init>(Lcom/verizon/ads/webview/MRAIDExpandedActivity;)V
    .locals 0

    .line 361
    iput-object p1, p0, Lcom/verizon/ads/webview/MRAIDExpandedActivity$4;->a:Lcom/verizon/ads/webview/MRAIDExpandedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 365
    iget-object v0, p0, Lcom/verizon/ads/webview/MRAIDExpandedActivity$4;->a:Lcom/verizon/ads/webview/MRAIDExpandedActivity;

    invoke-static {v0}, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->e(Lcom/verizon/ads/webview/MRAIDExpandedActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/webview/MRAIDExpandedActivity$4;->a:Lcom/verizon/ads/webview/MRAIDExpandedActivity;

    new-instance v1, Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/verizon/ads/webview/MRAIDExpandedActivity$4;->a:Lcom/verizon/ads/webview/MRAIDExpandedActivity;

    invoke-direct {v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->a(Lcom/verizon/ads/webview/MRAIDExpandedActivity;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    .line 370
    iget-object v0, p0, Lcom/verizon/ads/webview/MRAIDExpandedActivity$4;->a:Lcom/verizon/ads/webview/MRAIDExpandedActivity;

    invoke-static {v0}, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->e(Lcom/verizon/ads/webview/MRAIDExpandedActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const-string v1, "TWO_PART_LOADING_SPINNER"

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setTag(Ljava/lang/Object;)V

    .line 371
    iget-object v0, p0, Lcom/verizon/ads/webview/MRAIDExpandedActivity$4;->a:Lcom/verizon/ads/webview/MRAIDExpandedActivity;

    invoke-static {v0}, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->e(Lcom/verizon/ads/webview/MRAIDExpandedActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 373
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    .line 377
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 378
    iget-object v1, p0, Lcom/verizon/ads/webview/MRAIDExpandedActivity$4;->a:Lcom/verizon/ads/webview/MRAIDExpandedActivity;

    invoke-static {v1}, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->e(Lcom/verizon/ads/webview/MRAIDExpandedActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 380
    iget-object v1, p0, Lcom/verizon/ads/webview/MRAIDExpandedActivity$4;->a:Lcom/verizon/ads/webview/MRAIDExpandedActivity;

    invoke-static {v1}, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->f(Lcom/verizon/ads/webview/MRAIDExpandedActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/verizon/ads/webview/MRAIDExpandedActivity$4;->a:Lcom/verizon/ads/webview/MRAIDExpandedActivity;

    invoke-static {v2}, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->e(Lcom/verizon/ads/webview/MRAIDExpandedActivity;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 382
    iget-object v0, p0, Lcom/verizon/ads/webview/MRAIDExpandedActivity$4;->a:Lcom/verizon/ads/webview/MRAIDExpandedActivity;

    invoke-static {v0}, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->e(Lcom/verizon/ads/webview/MRAIDExpandedActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 383
    iget-object v0, p0, Lcom/verizon/ads/webview/MRAIDExpandedActivity$4;->a:Lcom/verizon/ads/webview/MRAIDExpandedActivity;

    invoke-static {v0}, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->e(Lcom/verizon/ads/webview/MRAIDExpandedActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->bringToFront()V

    return-void
.end method
