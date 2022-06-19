.class Lcom/verizon/ads/webview/VASAdsMRAIDWebView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;


# direct methods
.method constructor <init>(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;)V
    .locals 0

    .line 1646
    iput-object p1, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$4;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1650
    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$4;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-static {v0}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->i(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;)Lcom/verizon/ads/support/utils/ViewabilityWatcher;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$4;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-static {v0}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->i(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;)Lcom/verizon/ads/support/utils/ViewabilityWatcher;

    move-result-object v0

    iget-object v0, v0, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->mbr:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$4;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-static {v1}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->l(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$4;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    .line 1651
    invoke-static {v0}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->m(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;)F

    move-result v0

    iget-object v1, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$4;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-static {v1}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->i(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;)Lcom/verizon/ads/support/utils/ViewabilityWatcher;

    move-result-object v1

    iget v1, v1, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->exposedPercentage:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 1653
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$4;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-static {v0}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->i(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;)Lcom/verizon/ads/support/utils/ViewabilityWatcher;

    move-result-object v1

    iget v1, v1, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->exposedPercentage:F

    invoke-static {v0, v1}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->a(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;F)F

    .line 1654
    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$4;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-static {v0}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->i(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;)Lcom/verizon/ads/support/utils/ViewabilityWatcher;

    move-result-object v1

    iget-object v1, v1, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->mbr:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->b(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 1656
    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$4;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-static {v0}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->a(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;)Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    move-result-object v0

    iget-object v1, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$4;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-static {v1}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->m(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;)F

    move-result v1

    iget-object v2, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$4;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-static {v2}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->l(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->a(FLandroid/graphics/Rect;)V

    .line 1659
    :cond_1
    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$4;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-static {v0}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->n(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1660
    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$4;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 1662
    :cond_2
    invoke-static {}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->g()Lcom/verizon/ads/Logger;

    move-result-object v0

    const-string v1, "Stopping exposureChange notifications."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    return-void
.end method
