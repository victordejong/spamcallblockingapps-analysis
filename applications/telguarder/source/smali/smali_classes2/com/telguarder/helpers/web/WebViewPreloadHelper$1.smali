.class Lcom/telguarder/helpers/web/WebViewPreloadHelper$1;
.super Landroid/webkit/WebViewClient;
.source "WebViewPreloadHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telguarder/helpers/web/WebViewPreloadHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/helpers/web/WebViewPreloadHelper;


# direct methods
.method constructor <init>(Lcom/telguarder/helpers/web/WebViewPreloadHelper;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/telguarder/helpers/web/WebViewPreloadHelper$1;->this$0:Lcom/telguarder/helpers/web/WebViewPreloadHelper;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 81
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 82
    iget-object p1, p0, Lcom/telguarder/helpers/web/WebViewPreloadHelper$1;->this$0:Lcom/telguarder/helpers/web/WebViewPreloadHelper;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->access$100(Lcom/telguarder/helpers/web/WebViewPreloadHelper;Z)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/telguarder/helpers/web/WebViewPreloadHelper$1;->this$0:Lcom/telguarder/helpers/web/WebViewPreloadHelper;

    sget-object v1, Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;->RESOURCE_ERROR:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

    iput-object v1, v0, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->loadError:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

    .line 88
    iget-object v0, p0, Lcom/telguarder/helpers/web/WebViewPreloadHelper$1;->this$0:Lcom/telguarder/helpers/web/WebViewPreloadHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->access$100(Lcom/telguarder/helpers/web/WebViewPreloadHelper;Z)V

    .line 89
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 4

    .line 94
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-lt v0, v2, :cond_2

    if-eqz p2, :cond_3

    .line 95
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "favicon.ico"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 96
    iget-object v0, p0, Lcom/telguarder/helpers/web/WebViewPreloadHelper$1;->this$0:Lcom/telguarder/helpers/web/WebViewPreloadHelper;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v2

    const/16 v3, 0x19a

    if-eq v2, v3, :cond_0

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v2

    const/16 v3, 0x194

    if-ne v2, v3, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/telguarder/helpers/web/WebViewPreloadHelper$1;->this$0:Lcom/telguarder/helpers/web/WebViewPreloadHelper;

    sget-object v3, Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;->DATA_NOT_AVAILABLE:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

    iput-object v3, v2, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->loadError:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;->RESPONSE_ERROR:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

    :goto_0
    iput-object v3, v0, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->loadError:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

    .line 97
    iget-object v0, p0, Lcom/telguarder/helpers/web/WebViewPreloadHelper$1;->this$0:Lcom/telguarder/helpers/web/WebViewPreloadHelper;

    invoke-static {v0, v1}, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->access$100(Lcom/telguarder/helpers/web/WebViewPreloadHelper;Z)V

    goto :goto_1

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/telguarder/helpers/web/WebViewPreloadHelper$1;->this$0:Lcom/telguarder/helpers/web/WebViewPreloadHelper;

    sget-object v2, Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;->RESPONSE_ERROR:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

    iput-object v2, v0, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->loadError:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

    .line 101
    iget-object v0, p0, Lcom/telguarder/helpers/web/WebViewPreloadHelper$1;->this$0:Lcom/telguarder/helpers/web/WebViewPreloadHelper;

    invoke-static {v0, v1}, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->access$100(Lcom/telguarder/helpers/web/WebViewPreloadHelper;Z)V

    .line 103
    :cond_3
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/telguarder/helpers/web/WebViewPreloadHelper$1;->this$0:Lcom/telguarder/helpers/web/WebViewPreloadHelper;

    sget-object v1, Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;->SSL_ERROR:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

    iput-object v1, v0, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->loadError:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

    .line 109
    iget-object v0, p0, Lcom/telguarder/helpers/web/WebViewPreloadHelper$1;->this$0:Lcom/telguarder/helpers/web/WebViewPreloadHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->access$100(Lcom/telguarder/helpers/web/WebViewPreloadHelper;Z)V

    .line 110
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/telguarder/helpers/web/WebViewPreloadHelper$1;->this$0:Lcom/telguarder/helpers/web/WebViewPreloadHelper;

    sget-object v1, Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;->RENDER_PROC_ERROR:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

    iput-object v1, v0, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->loadError:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

    .line 116
    iget-object v0, p0, Lcom/telguarder/helpers/web/WebViewPreloadHelper$1;->this$0:Lcom/telguarder/helpers/web/WebViewPreloadHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->access$100(Lcom/telguarder/helpers/web/WebViewPreloadHelper;Z)V

    .line 117
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z

    move-result p1

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 2

    .line 68
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/telguarder/helpers/web/WebViewPreloadHelper$1;->this$0:Lcom/telguarder/helpers/web/WebViewPreloadHelper;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->access$000(Lcom/telguarder/helpers/web/WebViewPreloadHelper;Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x1

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/telguarder/helpers/web/WebViewPreloadHelper$1;->this$0:Lcom/telguarder/helpers/web/WebViewPreloadHelper;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->access$000(Lcom/telguarder/helpers/web/WebViewPreloadHelper;Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x1

    return p1
.end method
