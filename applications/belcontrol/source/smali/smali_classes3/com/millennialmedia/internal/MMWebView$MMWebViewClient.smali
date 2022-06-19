.class public Lcom/millennialmedia/internal/MMWebView$MMWebViewClient;
.super Landroid/webkit/WebViewClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/MMWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MMWebViewClient"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    instance-of p2, p1, Lcom/millennialmedia/internal/MMWebView;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/millennialmedia/internal/MMWebView;

    iget-object p1, p1, Lcom/millennialmedia/internal/MMWebView;->webViewListener:Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;

    invoke-interface {p1}, Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;->onFailed()V

    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    instance-of v0, p1, Lcom/millennialmedia/internal/MMWebView;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/millennialmedia/internal/MMWebView;

    invoke-static {p1, p2}, Lcom/millennialmedia/internal/MMWebView;->access$000(Lcom/millennialmedia/internal/MMWebView;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p1, Lcom/millennialmedia/internal/MMWebView;->jsBridge:Lcom/millennialmedia/internal/JSBridge;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/JSBridge;->areApiCallsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/millennialmedia/internal/utils/Utils;->startActivityFromUrl(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p1, Lcom/millennialmedia/internal/MMWebView;->webViewListener:Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;

    invoke-interface {p1}, Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;->onAdLeftApplication()V

    :cond_1
    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
