.class public Lcom/verizon/ads/webview/VASAdsWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "VASAdsWebViewClient"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 30
    instance-of v0, p1, Lcom/verizon/ads/webview/VASAdsWebView;

    if-eqz v0, :cond_0

    .line 31
    check-cast p1, Lcom/verizon/ads/webview/VASAdsWebView;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 33
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p2, 0x2

    aput-object p4, v0, p2

    const-string p2, "WebView error code: %d, description: %s, failing url: %s"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 36
    iget-object p1, p1, Lcom/verizon/ads/webview/VASAdsWebView;->b:Lcom/verizon/ads/webview/VASAdsWebView$VASAdsWebViewListener;

    new-instance p3, Lcom/verizon/ads/ErrorInfo;

    sget-object p4, Lcom/verizon/ads/webview/VASAdsWebViewClient;->a:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-direct {p3, p4, p2, v0}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p1, p3}, Lcom/verizon/ads/webview/VASAdsWebView$VASAdsWebViewListener;->onError(Lcom/verizon/ads/ErrorInfo;)V

    :cond_0
    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 1

    .line 65
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z

    if-eqz p1, :cond_0

    .line 67
    invoke-virtual {p1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    .line 68
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 69
    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 70
    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    .line 44
    instance-of v0, p1, Lcom/verizon/ads/webview/VASAdsWebView;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 45
    move-object v0, p1

    check-cast v0, Lcom/verizon/ads/webview/VASAdsWebView;

    .line 1701
    iget-object v2, v0, Lcom/verizon/ads/webview/VASAdsWebView;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/verizon/ads/webview/VASAdsWebView;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1702
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/verizon/ads/webview/VASAdsWebView;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "#"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    return v3

    .line 51
    :cond_2
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/verizon/ads/support/utils/ActivityUtils;->startActivityFromUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 52
    iget-object p1, v0, Lcom/verizon/ads/webview/VASAdsWebView;->b:Lcom/verizon/ads/webview/VASAdsWebView$VASAdsWebViewListener;

    invoke-interface {p1, v0}, Lcom/verizon/ads/webview/VASAdsWebView$VASAdsWebViewListener;->onAdLeftApplication(Lcom/verizon/ads/webview/VASAdsWebView;)V

    :cond_3
    return v3

    :cond_4
    return v1
.end method
