.class Lcom/verizon/ads/webcontroller/WebController$WebControllerVASAdsMRAIDWebViewListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VASAdsMRAIDWebViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/webcontroller/WebController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WebControllerVASAdsMRAIDWebViewListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/webcontroller/WebController;


# direct methods
.method private constructor <init>(Lcom/verizon/ads/webcontroller/WebController;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/verizon/ads/webcontroller/WebController$WebControllerVASAdsMRAIDWebViewListener;->a:Lcom/verizon/ads/webcontroller/WebController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/verizon/ads/webcontroller/WebController;Lcom/verizon/ads/webcontroller/WebController$1;)V
    .locals 0

    .line 144
    invoke-direct {p0, p1}, Lcom/verizon/ads/webcontroller/WebController$WebControllerVASAdsMRAIDWebViewListener;-><init>(Lcom/verizon/ads/webcontroller/WebController;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/verizon/ads/webcontroller/WebController$WebControllerVASAdsMRAIDWebViewListener;->a:Lcom/verizon/ads/webcontroller/WebController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/verizon/ads/webcontroller/WebController;->a(Lcom/verizon/ads/webcontroller/WebController;Z)Z

    .line 150
    iget-object v0, p0, Lcom/verizon/ads/webcontroller/WebController$WebControllerVASAdsMRAIDWebViewListener;->a:Lcom/verizon/ads/webcontroller/WebController;

    invoke-static {v0, v1}, Lcom/verizon/ads/webcontroller/WebController;->b(Lcom/verizon/ads/webcontroller/WebController;Z)Z

    .line 151
    iget-object v0, p0, Lcom/verizon/ads/webcontroller/WebController$WebControllerVASAdsMRAIDWebViewListener;->a:Lcom/verizon/ads/webcontroller/WebController;

    invoke-static {v0}, Lcom/verizon/ads/webcontroller/WebController;->e(Lcom/verizon/ads/webcontroller/WebController;)Lcom/verizon/ads/webcontroller/WebController$WebControllerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/verizon/ads/webcontroller/WebController$WebControllerVASAdsMRAIDWebViewListener;->a:Lcom/verizon/ads/webcontroller/WebController;

    invoke-static {v0}, Lcom/verizon/ads/webcontroller/WebController;->e(Lcom/verizon/ads/webcontroller/WebController;)Lcom/verizon/ads/webcontroller/WebController$WebControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/verizon/ads/webcontroller/WebController$WebControllerListener;->close()V

    :cond_0
    return-void
.end method

.method public expand()V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/verizon/ads/webcontroller/WebController$WebControllerVASAdsMRAIDWebViewListener;->a:Lcom/verizon/ads/webcontroller/WebController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/verizon/ads/webcontroller/WebController;->a(Lcom/verizon/ads/webcontroller/WebController;Z)Z

    .line 161
    iget-object v0, p0, Lcom/verizon/ads/webcontroller/WebController$WebControllerVASAdsMRAIDWebViewListener;->a:Lcom/verizon/ads/webcontroller/WebController;

    invoke-static {v0}, Lcom/verizon/ads/webcontroller/WebController;->e(Lcom/verizon/ads/webcontroller/WebController;)Lcom/verizon/ads/webcontroller/WebController$WebControllerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/verizon/ads/webcontroller/WebController$WebControllerVASAdsMRAIDWebViewListener;->a:Lcom/verizon/ads/webcontroller/WebController;

    invoke-static {v0}, Lcom/verizon/ads/webcontroller/WebController;->e(Lcom/verizon/ads/webcontroller/WebController;)Lcom/verizon/ads/webcontroller/WebController$WebControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/verizon/ads/webcontroller/WebController$WebControllerListener;->expand()V

    :cond_0
    return-void
.end method

.method public onAdLeftApplication(Lcom/verizon/ads/webview/VASAdsWebView;)V
    .locals 0

    .line 198
    iget-object p1, p0, Lcom/verizon/ads/webcontroller/WebController$WebControllerVASAdsMRAIDWebViewListener;->a:Lcom/verizon/ads/webcontroller/WebController;

    invoke-static {p1}, Lcom/verizon/ads/webcontroller/WebController;->e(Lcom/verizon/ads/webcontroller/WebController;)Lcom/verizon/ads/webcontroller/WebController$WebControllerListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 199
    iget-object p1, p0, Lcom/verizon/ads/webcontroller/WebController$WebControllerVASAdsMRAIDWebViewListener;->a:Lcom/verizon/ads/webcontroller/WebController;

    invoke-static {p1}, Lcom/verizon/ads/webcontroller/WebController;->e(Lcom/verizon/ads/webcontroller/WebController;)Lcom/verizon/ads/webcontroller/WebController$WebControllerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/verizon/ads/webcontroller/WebController$WebControllerListener;->onAdLeftApplication()V

    :cond_0
    return-void
.end method

.method public onClicked(Lcom/verizon/ads/webview/VASAdsWebView;)V
    .locals 0

    .line 207
    iget-object p1, p0, Lcom/verizon/ads/webcontroller/WebController$WebControllerVASAdsMRAIDWebViewListener;->a:Lcom/verizon/ads/webcontroller/WebController;

    invoke-static {p1}, Lcom/verizon/ads/webcontroller/WebController;->e(Lcom/verizon/ads/webcontroller/WebController;)Lcom/verizon/ads/webcontroller/WebController$WebControllerListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 208
    iget-object p1, p0, Lcom/verizon/ads/webcontroller/WebController$WebControllerVASAdsMRAIDWebViewListener;->a:Lcom/verizon/ads/webcontroller/WebController;

    invoke-static {p1}, Lcom/verizon/ads/webcontroller/WebController;->e(Lcom/verizon/ads/webcontroller/WebController;)Lcom/verizon/ads/webcontroller/WebController$WebControllerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/verizon/ads/webcontroller/WebController$WebControllerListener;->onClicked()V

    :cond_0
    return-void
.end method

.method public onError(Lcom/verizon/ads/ErrorInfo;)V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/verizon/ads/webcontroller/WebController$WebControllerVASAdsMRAIDWebViewListener;->a:Lcom/verizon/ads/webcontroller/WebController;

    invoke-static {v0}, Lcom/verizon/ads/webcontroller/WebController;->e(Lcom/verizon/ads/webcontroller/WebController;)Lcom/verizon/ads/webcontroller/WebController$WebControllerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/verizon/ads/webcontroller/WebController$WebControllerVASAdsMRAIDWebViewListener;->a:Lcom/verizon/ads/webcontroller/WebController;

    invoke-static {v0}, Lcom/verizon/ads/webcontroller/WebController;->e(Lcom/verizon/ads/webcontroller/WebController;)Lcom/verizon/ads/webcontroller/WebController$WebControllerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/verizon/ads/webcontroller/WebController$WebControllerListener;->onError(Lcom/verizon/ads/ErrorInfo;)V

    :cond_0
    return-void
.end method

.method public resize()V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/verizon/ads/webcontroller/WebController$WebControllerVASAdsMRAIDWebViewListener;->a:Lcom/verizon/ads/webcontroller/WebController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/verizon/ads/webcontroller/WebController;->b(Lcom/verizon/ads/webcontroller/WebController;Z)Z

    .line 171
    iget-object v0, p0, Lcom/verizon/ads/webcontroller/WebController$WebControllerVASAdsMRAIDWebViewListener;->a:Lcom/verizon/ads/webcontroller/WebController;

    invoke-static {v0}, Lcom/verizon/ads/webcontroller/WebController;->e(Lcom/verizon/ads/webcontroller/WebController;)Lcom/verizon/ads/webcontroller/WebController$WebControllerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/verizon/ads/webcontroller/WebController$WebControllerVASAdsMRAIDWebViewListener;->a:Lcom/verizon/ads/webcontroller/WebController;

    invoke-static {v0}, Lcom/verizon/ads/webcontroller/WebController;->e(Lcom/verizon/ads/webcontroller/WebController;)Lcom/verizon/ads/webcontroller/WebController$WebControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/verizon/ads/webcontroller/WebController$WebControllerListener;->resize()V

    :cond_0
    return-void
.end method

.method public unload()V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/verizon/ads/webcontroller/WebController$WebControllerVASAdsMRAIDWebViewListener;->a:Lcom/verizon/ads/webcontroller/WebController;

    invoke-static {v0}, Lcom/verizon/ads/webcontroller/WebController;->e(Lcom/verizon/ads/webcontroller/WebController;)Lcom/verizon/ads/webcontroller/WebController$WebControllerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/verizon/ads/webcontroller/WebController$WebControllerVASAdsMRAIDWebViewListener;->a:Lcom/verizon/ads/webcontroller/WebController;

    invoke-static {v0}, Lcom/verizon/ads/webcontroller/WebController;->e(Lcom/verizon/ads/webcontroller/WebController;)Lcom/verizon/ads/webcontroller/WebController$WebControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/verizon/ads/webcontroller/WebController$WebControllerListener;->unload()V

    :cond_0
    return-void
.end method
