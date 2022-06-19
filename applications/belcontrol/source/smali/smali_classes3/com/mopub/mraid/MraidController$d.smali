.class public Lcom/mopub/mraid/MraidController$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mraid/MraidController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mopub/mraid/MraidController;


# direct methods
.method public constructor <init>(Lcom/mopub/mraid/MraidController;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/mraid/MraidController$d;->a:Lcom/mopub/mraid/MraidController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 1

    iget-object v0, p0, Lcom/mopub/mraid/MraidController$d;->a:Lcom/mopub/mraid/MraidController;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidController;->J()V

    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 1

    iget-object v0, p0, Lcom/mopub/mraid/MraidController$d;->a:Lcom/mopub/mraid/MraidController;

    invoke-virtual {v0, p1}, Lcom/mopub/mraid/MraidController;->K(Landroid/webkit/ConsoleMessage;)Z

    move-result p1

    return p1
.end method

.method public onExpand(Ljava/net/URI;Z)V
    .locals 1

    iget-object v0, p0, Lcom/mopub/mraid/MraidController$d;->a:Lcom/mopub/mraid/MraidController;

    invoke-virtual {v0, p1, p2}, Lcom/mopub/mraid/MraidController;->M(Ljava/net/URI;Z)V

    return-void
.end method

.method public onJsAlert(Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    iget-object v0, p0, Lcom/mopub/mraid/MraidController$d;->a:Lcom/mopub/mraid/MraidController;

    invoke-virtual {v0, p1, p2}, Lcom/mopub/mraid/MraidController;->N(Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1
.end method

.method public onOpen(Ljava/net/URI;)V
    .locals 1

    iget-object v0, p0, Lcom/mopub/mraid/MraidController$d;->a:Lcom/mopub/mraid/MraidController;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mopub/mraid/MraidController;->O(Ljava/lang/String;)V

    return-void
.end method

.method public onPageFailedToLoad()V
    .locals 2

    iget-object v0, p0, Lcom/mopub/mraid/MraidController$d;->a:Lcom/mopub/mraid/MraidController;

    invoke-static {v0}, Lcom/mopub/mraid/MraidController;->w(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mraid/MraidController$d;->a:Lcom/mopub/mraid/MraidController;

    invoke-static {v0}, Lcom/mopub/mraid/MraidController;->x(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->MRAID_LOAD_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;->onFailedToLoad(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_0
    return-void
.end method

.method public onPageLoaded()V
    .locals 2

    iget-object v0, p0, Lcom/mopub/mraid/MraidController$d;->a:Lcom/mopub/mraid/MraidController;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidController;->Q()V

    iget-object v0, p0, Lcom/mopub/mraid/MraidController$d;->a:Lcom/mopub/mraid/MraidController;

    invoke-static {v0}, Lcom/mopub/mraid/MraidController;->q(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mraid/MraidController$d;->a:Lcom/mopub/mraid/MraidController;

    invoke-static {v0}, Lcom/mopub/mraid/MraidController;->v(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mraid/MraidController$d;->a:Lcom/mopub/mraid/MraidController;

    invoke-static {v1}, Lcom/mopub/mraid/MraidController;->u(Lcom/mopub/mraid/MraidController;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;->onLoaded(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onPlayVideo(Ljava/net/URI;)V
    .locals 1

    iget-object v0, p0, Lcom/mopub/mraid/MraidController$d;->a:Lcom/mopub/mraid/MraidController;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mopub/mraid/MraidController;->U(Ljava/lang/String;)V

    return-void
.end method

.method public onRenderProcessGone(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 1

    iget-object v0, p0, Lcom/mopub/mraid/MraidController$d;->a:Lcom/mopub/mraid/MraidController;

    invoke-virtual {v0, p1}, Lcom/mopub/mraid/MraidController;->R(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method public onResize(IIIILcom/mopub/common/CloseableLayout$ClosePosition;Z)V
    .locals 7

    iget-object v0, p0, Lcom/mopub/mraid/MraidController$d;->a:Lcom/mopub/mraid/MraidController;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/mopub/mraid/MraidController;->S(IIIILcom/mopub/common/CloseableLayout$ClosePosition;Z)V

    return-void
.end method

.method public onSetOrientationProperties(ZLsh1;)V
    .locals 1

    iget-object v0, p0, Lcom/mopub/mraid/MraidController$d;->a:Lcom/mopub/mraid/MraidController;

    invoke-virtual {v0, p1, p2}, Lcom/mopub/mraid/MraidController;->T(ZLsh1;)V

    return-void
.end method

.method public onUseCustomClose(Z)V
    .locals 1

    iget-object v0, p0, Lcom/mopub/mraid/MraidController$d;->a:Lcom/mopub/mraid/MraidController;

    invoke-virtual {v0, p1}, Lcom/mopub/mraid/MraidController;->L(Z)V

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/mopub/mraid/MraidController$d;->a:Lcom/mopub/mraid/MraidController;

    invoke-static {v0}, Lcom/mopub/mraid/MraidController;->y(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge;->m()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mraid/MraidController$d;->a:Lcom/mopub/mraid/MraidController;

    invoke-static {v0}, Lcom/mopub/mraid/MraidController;->z(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidBridge;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mopub/mraid/MraidBridge;->u(Z)V

    :cond_0
    return-void
.end method
