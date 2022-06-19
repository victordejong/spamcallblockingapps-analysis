.class Lcom/verizon/ads/inlineplacement/InlineAdView$2;
.super Lcom/verizon/ads/support/SafeRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/inlineplacement/InlineAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/AdSession;

.field final synthetic b:Lcom/verizon/ads/inlineplacement/InlineAdView;


# direct methods
.method constructor <init>(Lcom/verizon/ads/inlineplacement/InlineAdView;Lcom/verizon/ads/AdSession;)V
    .locals 0

    .line 506
    iput-object p1, p0, Lcom/verizon/ads/inlineplacement/InlineAdView$2;->b:Lcom/verizon/ads/inlineplacement/InlineAdView;

    iput-object p2, p0, Lcom/verizon/ads/inlineplacement/InlineAdView$2;->a:Lcom/verizon/ads/AdSession;

    invoke-direct {p0}, Lcom/verizon/ads/support/SafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 7

    .line 510
    iget-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdView$2;->b:Lcom/verizon/ads/inlineplacement/InlineAdView;

    invoke-virtual {v0}, Lcom/verizon/ads/inlineplacement/InlineAdView;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    invoke-static {}, Lcom/verizon/ads/inlineplacement/InlineAdView;->e()Lcom/verizon/ads/Logger;

    move-result-object v0

    const-string v1, "Inline ad destroyed before being refreshed"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    return-void

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdView$2;->b:Lcom/verizon/ads/inlineplacement/InlineAdView;

    invoke-static {v0}, Lcom/verizon/ads/inlineplacement/InlineAdView;->b(Lcom/verizon/ads/inlineplacement/InlineAdView;)Lcom/verizon/ads/AdSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/verizon/ads/AdSession;->getAdAdapter()Lcom/verizon/ads/AdAdapter;

    move-result-object v0

    check-cast v0, Lcom/verizon/ads/inlineplacement/InlineAdAdapter;

    if-eqz v0, :cond_3

    .line 520
    invoke-interface {v0}, Lcom/verizon/ads/inlineplacement/InlineAdAdapter;->isResized()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Lcom/verizon/ads/inlineplacement/InlineAdAdapter;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 527
    invoke-interface {v0, v1}, Lcom/verizon/ads/inlineplacement/InlineAdAdapter;->setListener(Lcom/verizon/ads/inlineplacement/InlineAdAdapter$InlineAdAdapterListener;)V

    .line 529
    invoke-interface {v0}, Lcom/verizon/ads/inlineplacement/InlineAdAdapter;->release()V

    goto :goto_1

    .line 521
    :cond_2
    :goto_0
    invoke-static {}, Lcom/verizon/ads/inlineplacement/InlineAdView;->e()Lcom/verizon/ads/Logger;

    move-result-object v0

    const-string v1, "Inline ad expanded or resized. Stopping refresh."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    return-void

    .line 533
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdView$2;->b:Lcom/verizon/ads/inlineplacement/InlineAdView;

    invoke-static {v0}, Lcom/verizon/ads/inlineplacement/InlineAdView;->b(Lcom/verizon/ads/inlineplacement/InlineAdView;)Lcom/verizon/ads/AdSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/verizon/ads/AdSession;->release()V

    .line 536
    iget-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdView$2;->b:Lcom/verizon/ads/inlineplacement/InlineAdView;

    iget-object v1, p0, Lcom/verizon/ads/inlineplacement/InlineAdView$2;->a:Lcom/verizon/ads/AdSession;

    invoke-static {v0, v1}, Lcom/verizon/ads/inlineplacement/InlineAdView;->a(Lcom/verizon/ads/inlineplacement/InlineAdView;Lcom/verizon/ads/AdSession;)Lcom/verizon/ads/AdSession;

    .line 537
    iget-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdView$2;->a:Lcom/verizon/ads/AdSession;

    invoke-virtual {v0}, Lcom/verizon/ads/AdSession;->getAdAdapter()Lcom/verizon/ads/AdAdapter;

    move-result-object v0

    check-cast v0, Lcom/verizon/ads/inlineplacement/InlineAdAdapter;

    .line 538
    iget-object v1, p0, Lcom/verizon/ads/inlineplacement/InlineAdView$2;->b:Lcom/verizon/ads/inlineplacement/InlineAdView;

    invoke-interface {v0}, Lcom/verizon/ads/inlineplacement/InlineAdAdapter;->getAdSize()Lcom/verizon/ads/inlineplacement/AdSize;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/verizon/ads/inlineplacement/InlineAdView;->a(Lcom/verizon/ads/inlineplacement/InlineAdView;Lcom/verizon/ads/inlineplacement/AdSize;)Lcom/verizon/ads/inlineplacement/AdSize;

    .line 541
    iget-object v1, p0, Lcom/verizon/ads/inlineplacement/InlineAdView$2;->b:Lcom/verizon/ads/inlineplacement/InlineAdView;

    iget-object v1, v1, Lcom/verizon/ads/inlineplacement/InlineAdView;->l:Lcom/verizon/ads/inlineplacement/InlineAdAdapter$InlineAdAdapterListener;

    invoke-interface {v0, v1}, Lcom/verizon/ads/inlineplacement/InlineAdAdapter;->setListener(Lcom/verizon/ads/inlineplacement/InlineAdAdapter$InlineAdAdapterListener;)V

    .line 542
    iget-object v1, p0, Lcom/verizon/ads/inlineplacement/InlineAdView$2;->b:Lcom/verizon/ads/inlineplacement/InlineAdView;

    invoke-interface {v0}, Lcom/verizon/ads/inlineplacement/InlineAdAdapter;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/verizon/ads/inlineplacement/InlineAdView;->a(Landroid/view/View;)V

    .line 545
    iget-object v1, p0, Lcom/verizon/ads/inlineplacement/InlineAdView$2;->b:Lcom/verizon/ads/inlineplacement/InlineAdView;

    invoke-virtual {v1}, Lcom/verizon/ads/inlineplacement/InlineAdView;->removeAllViews()V

    .line 548
    iget-object v1, p0, Lcom/verizon/ads/inlineplacement/InlineAdView$2;->b:Lcom/verizon/ads/inlineplacement/InlineAdView;

    invoke-interface {v0}, Lcom/verizon/ads/inlineplacement/InlineAdAdapter;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    iget-object v4, p0, Lcom/verizon/ads/inlineplacement/InlineAdView$2;->b:Lcom/verizon/ads/inlineplacement/InlineAdView;

    .line 549
    invoke-static {v4}, Lcom/verizon/ads/inlineplacement/InlineAdView;->c(Lcom/verizon/ads/inlineplacement/InlineAdView;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/verizon/ads/inlineplacement/InlineAdView$2;->b:Lcom/verizon/ads/inlineplacement/InlineAdView;

    invoke-static {v5}, Lcom/verizon/ads/inlineplacement/InlineAdView;->d(Lcom/verizon/ads/inlineplacement/InlineAdView;)Lcom/verizon/ads/inlineplacement/AdSize;

    move-result-object v5

    invoke-virtual {v5}, Lcom/verizon/ads/inlineplacement/AdSize;->getWidth()I

    move-result v5

    invoke-static {v4, v5}, Lcom/verizon/ads/support/utils/ViewUtils;->convertDipsToPixels(Landroid/content/Context;I)I

    move-result v4

    iget-object v5, p0, Lcom/verizon/ads/inlineplacement/InlineAdView$2;->b:Lcom/verizon/ads/inlineplacement/InlineAdView;

    .line 550
    invoke-static {v5}, Lcom/verizon/ads/inlineplacement/InlineAdView;->c(Lcom/verizon/ads/inlineplacement/InlineAdView;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/verizon/ads/inlineplacement/InlineAdView$2;->b:Lcom/verizon/ads/inlineplacement/InlineAdView;

    invoke-static {v6}, Lcom/verizon/ads/inlineplacement/InlineAdView;->d(Lcom/verizon/ads/inlineplacement/InlineAdView;)Lcom/verizon/ads/inlineplacement/AdSize;

    move-result-object v6

    invoke-virtual {v6}, Lcom/verizon/ads/inlineplacement/AdSize;->getHeight()I

    move-result v6

    invoke-static {v5, v6}, Lcom/verizon/ads/support/utils/ViewUtils;->convertDipsToPixels(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-direct {v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 548
    invoke-virtual {v1, v0, v2}, Lcom/verizon/ads/inlineplacement/InlineAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 552
    iget-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdView$2;->b:Lcom/verizon/ads/inlineplacement/InlineAdView;

    iget-object v0, v0, Lcom/verizon/ads/inlineplacement/InlineAdView;->e:Lcom/verizon/ads/inlineplacement/InlineAdView$InlineAdListener;

    if-eqz v0, :cond_4

    .line 554
    iget-object v1, p0, Lcom/verizon/ads/inlineplacement/InlineAdView$2;->b:Lcom/verizon/ads/inlineplacement/InlineAdView;

    invoke-interface {v0, v1}, Lcom/verizon/ads/inlineplacement/InlineAdView$InlineAdListener;->onAdRefreshed(Lcom/verizon/ads/inlineplacement/InlineAdView;)V

    :cond_4
    return-void
.end method
