.class Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->expand(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$ExpandParams;

.field final synthetic b:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;


# direct methods
.method constructor <init>(Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;Lcom/verizon/ads/webview/VASAdsMRAIDWebView$ExpandParams;)V
    .locals 0

    .line 529
    iput-object p1, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$3;->b:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iput-object p2, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$3;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$ExpandParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 533
    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$3;->b:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v0, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->c:Ljava/lang/String;

    const-string v1, "expanded"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "expand"

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$3;->b:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v0, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->c:Ljava/lang/String;

    const-string v2, "hidden"

    .line 534
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$3;->b:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v0, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->c:Ljava/lang/String;

    const-string v2, "loading"

    .line 535
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 542
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$3;->b:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v2, v2, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-virtual {v2}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/verizon/ads/webview/MRAIDExpandedActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 544
    invoke-static {}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->h()Lcom/verizon/ads/support/TimedMemoryCache;

    move-result-object v2

    iget-object v3, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$3;->b:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v3, v3, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    const-wide/16 v4, 0x1388

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/verizon/ads/support/TimedMemoryCache;->add(Ljava/lang/Object;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "webview_cached_id"

    .line 545
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 546
    iget-object v2, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$3;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$ExpandParams;

    iget v2, v2, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$ExpandParams;->a:I

    const-string v3, "expand_width"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 547
    iget-object v2, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$3;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$ExpandParams;

    iget v2, v2, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$ExpandParams;->b:I

    const-string v3, "expand_height"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 548
    iget-object v2, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$3;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$ExpandParams;

    iget v2, v2, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$ExpandParams;->c:I

    const-string v3, "orientation"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 549
    iget-object v2, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$3;->b:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v2, v2, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-static {v2}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->g(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;)Z

    move-result v2

    const-string v3, "immersive"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 551
    iget-object v2, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$3;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$ExpandParams;

    iget-object v2, v2, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$ExpandParams;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 554
    iget-object v2, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$3;->b:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v2, v2, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->c:Ljava/lang/String;

    const-string v3, "resized"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 555
    iget-object v1, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$3;->b:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    invoke-static {v1}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->a(Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;)V

    .line 557
    iget-object v1, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$3;->b:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v1, v1, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-static {v1}, Lcom/verizon/ads/support/utils/ViewUtils;->removeFromParent(Landroid/view/View;)V

    .line 561
    iget-object v1, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$3;->b:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v1, v1, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->setTranslationX(F)V

    .line 562
    iget-object v1, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$3;->b:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v1, v1, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-virtual {v1, v2}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->setTranslationY(F)V

    goto :goto_0

    .line 564
    :cond_1
    iget-object v2, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$3;->b:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v2, v2, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-virtual {v2}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 565
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 566
    iget-object v1, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$3;->b:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v1, v1, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v1, v2}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->a(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 567
    iget-object v1, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$3;->b:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v1, v1, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    iget-object v2, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$3;->b:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v2, v2, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-virtual {v2}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->a(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    .line 569
    iget-object v1, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$3;->b:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v1, v1, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-static {v1}, Lcom/verizon/ads/support/utils/ViewUtils;->removeFromParent(Landroid/view/View;)V

    goto :goto_0

    .line 571
    :cond_2
    invoke-static {}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->g()Lcom/verizon/ads/Logger;

    move-result-object v0

    const-string v2, "WebView parent is not a ViewGroup. Expansion cannot proceed."

    invoke-virtual {v0, v2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    .line 573
    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$3;->b:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    const-string v2, "Unable to expand"

    invoke-virtual {v0, v2, v1}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 579
    :cond_3
    iget-object v1, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$3;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$ExpandParams;

    iget-object v1, v1, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$ExpandParams;->d:Ljava/lang/String;

    const-string v2, "url"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 582
    :goto_0
    iget-object v1, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$3;->b:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v1, v1, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-virtual {v1}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 537
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$3;->b:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    const-string v3, "Cannot expand in current state<%s>"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
