.class Lcom/telguarder/features/userConsentHandling/PolicyWebView$1;
.super Landroid/webkit/WebViewClient;
.source "PolicyWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telguarder/features/userConsentHandling/PolicyWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/userConsentHandling/PolicyWebView;


# direct methods
.method constructor <init>(Lcom/telguarder/features/userConsentHandling/PolicyWebView;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/telguarder/features/userConsentHandling/PolicyWebView$1;->this$0:Lcom/telguarder/features/userConsentHandling/PolicyWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 115
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 117
    iget-object p1, p0, Lcom/telguarder/features/userConsentHandling/PolicyWebView$1;->this$0:Lcom/telguarder/features/userConsentHandling/PolicyWebView;

    invoke-static {p1}, Lcom/telguarder/features/userConsentHandling/PolicyWebView;->access$100(Lcom/telguarder/features/userConsentHandling/PolicyWebView;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 2

    .line 123
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    if-eqz p3, :cond_0

    .line 124
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ERR_CACHE_MISS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/telguarder/features/userConsentHandling/PolicyWebView$1;->this$0:Lcom/telguarder/features/userConsentHandling/PolicyWebView;

    sget-object v1, Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;->RESOURCE_ERROR:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

    iput-object v1, v0, Lcom/telguarder/features/userConsentHandling/PolicyWebView;->loadError:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

    .line 130
    iget-object v0, p0, Lcom/telguarder/features/userConsentHandling/PolicyWebView$1;->this$0:Lcom/telguarder/features/userConsentHandling/PolicyWebView;

    invoke-static {v0}, Lcom/telguarder/features/userConsentHandling/PolicyWebView;->access$100(Lcom/telguarder/features/userConsentHandling/PolicyWebView;)V

    .line 132
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 3

    .line 137
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    if-eqz p2, :cond_3

    .line 138
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "favicon.ico"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 139
    iget-object v0, p0, Lcom/telguarder/features/userConsentHandling/PolicyWebView$1;->this$0:Lcom/telguarder/features/userConsentHandling/PolicyWebView;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v1

    const/16 v2, 0x19a

    if-eq v1, v2, :cond_0

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v1

    const/16 v2, 0x194

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/telguarder/features/userConsentHandling/PolicyWebView$1;->this$0:Lcom/telguarder/features/userConsentHandling/PolicyWebView;

    sget-object v2, Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;->DATA_NOT_AVAILABLE:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

    iput-object v2, v1, Lcom/telguarder/features/userConsentHandling/PolicyWebView;->loadError:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;->RESPONSE_ERROR:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

    :goto_0
    iput-object v2, v0, Lcom/telguarder/features/userConsentHandling/PolicyWebView;->loadError:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

    .line 140
    iget-object v0, p0, Lcom/telguarder/features/userConsentHandling/PolicyWebView$1;->this$0:Lcom/telguarder/features/userConsentHandling/PolicyWebView;

    invoke-static {v0}, Lcom/telguarder/features/userConsentHandling/PolicyWebView;->access$100(Lcom/telguarder/features/userConsentHandling/PolicyWebView;)V

    goto :goto_1

    .line 143
    :cond_2
    iget-object v0, p0, Lcom/telguarder/features/userConsentHandling/PolicyWebView$1;->this$0:Lcom/telguarder/features/userConsentHandling/PolicyWebView;

    sget-object v1, Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;->RESPONSE_ERROR:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

    iput-object v1, v0, Lcom/telguarder/features/userConsentHandling/PolicyWebView;->loadError:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

    .line 144
    iget-object v0, p0, Lcom/telguarder/features/userConsentHandling/PolicyWebView$1;->this$0:Lcom/telguarder/features/userConsentHandling/PolicyWebView;

    invoke-static {v0}, Lcom/telguarder/features/userConsentHandling/PolicyWebView;->access$100(Lcom/telguarder/features/userConsentHandling/PolicyWebView;)V

    .line 146
    :cond_3
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/telguarder/features/userConsentHandling/PolicyWebView$1;->this$0:Lcom/telguarder/features/userConsentHandling/PolicyWebView;

    sget-object v1, Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;->SSL_ERROR:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

    iput-object v1, v0, Lcom/telguarder/features/userConsentHandling/PolicyWebView;->loadError:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

    .line 152
    iget-object v0, p0, Lcom/telguarder/features/userConsentHandling/PolicyWebView$1;->this$0:Lcom/telguarder/features/userConsentHandling/PolicyWebView;

    invoke-static {v0}, Lcom/telguarder/features/userConsentHandling/PolicyWebView;->access$100(Lcom/telguarder/features/userConsentHandling/PolicyWebView;)V

    .line 153
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/telguarder/features/userConsentHandling/PolicyWebView$1;->this$0:Lcom/telguarder/features/userConsentHandling/PolicyWebView;

    sget-object v1, Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;->RENDER_PROC_ERROR:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

    iput-object v1, v0, Lcom/telguarder/features/userConsentHandling/PolicyWebView;->loadError:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

    .line 159
    iget-object v0, p0, Lcom/telguarder/features/userConsentHandling/PolicyWebView$1;->this$0:Lcom/telguarder/features/userConsentHandling/PolicyWebView;

    invoke-static {v0}, Lcom/telguarder/features/userConsentHandling/PolicyWebView;->access$100(Lcom/telguarder/features/userConsentHandling/PolicyWebView;)V

    .line 160
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z

    move-result p1

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 1

    .line 102
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/telguarder/features/userConsentHandling/PolicyWebView$1;->this$0:Lcom/telguarder/features/userConsentHandling/PolicyWebView;

    invoke-static {v0}, Lcom/telguarder/features/userConsentHandling/PolicyWebView;->access$000(Lcom/telguarder/features/userConsentHandling/PolicyWebView;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x1

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/telguarder/features/userConsentHandling/PolicyWebView$1;->this$0:Lcom/telguarder/features/userConsentHandling/PolicyWebView;

    invoke-static {v0}, Lcom/telguarder/features/userConsentHandling/PolicyWebView;->access$000(Lcom/telguarder/features/userConsentHandling/PolicyWebView;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x1

    return p1
.end method
