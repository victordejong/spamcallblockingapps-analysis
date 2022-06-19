.class final Lcom/mopub/mobileads/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/common/UrlHandler$MoPubSchemeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/c;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/c;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/c;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/mopub/mobileads/c$1;->a:Lcom/mopub/mobileads/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClose()V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/mopub/mobileads/c$1;->a:Lcom/mopub/mobileads/c;

    invoke-static {v0}, Lcom/mopub/mobileads/c;->b(Lcom/mopub/mobileads/c;)Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/mopub/mobileads/c$1;->a:Lcom/mopub/mobileads/c;

    invoke-static {v0}, Lcom/mopub/mobileads/c;->b(Lcom/mopub/mobileads/c;)Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;->onClose()V

    :cond_0
    return-void
.end method

.method public final onCrash()V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/mopub/mobileads/c$1;->a:Lcom/mopub/mobileads/c;

    invoke-static {v0}, Lcom/mopub/mobileads/c;->b(Lcom/mopub/mobileads/c;)Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/mopub/mobileads/c$1;->a:Lcom/mopub/mobileads/c;

    invoke-static {v0}, Lcom/mopub/mobileads/c;->b(Lcom/mopub/mobileads/c;)Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;->onFailed()V

    :cond_0
    return-void
.end method

.method public final onFailLoad()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/mopub/mobileads/c$1;->a:Lcom/mopub/mobileads/c;

    invoke-static {v0}, Lcom/mopub/mobileads/c;->a(Lcom/mopub/mobileads/c;)Lcom/mopub/mobileads/BaseHtmlWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseHtmlWebView;->stopLoading()V

    .line 88
    iget-object v0, p0, Lcom/mopub/mobileads/c$1;->a:Lcom/mopub/mobileads/c;

    invoke-static {v0}, Lcom/mopub/mobileads/c;->b(Lcom/mopub/mobileads/c;)Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/mopub/mobileads/c$1;->a:Lcom/mopub/mobileads/c;

    invoke-static {v0}, Lcom/mopub/mobileads/c;->b(Lcom/mopub/mobileads/c;)Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->HTML_LOAD_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;->onFailedToLoad(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_0
    return-void
.end method

.method public final onFinishLoad()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/mopub/mobileads/c$1;->a:Lcom/mopub/mobileads/c;

    invoke-static {v0}, Lcom/mopub/mobileads/c;->a(Lcom/mopub/mobileads/c;)Lcom/mopub/mobileads/BaseHtmlWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseHtmlWebView;->setPageLoaded()V

    .line 72
    iget-object v0, p0, Lcom/mopub/mobileads/c$1;->a:Lcom/mopub/mobileads/c;

    invoke-static {v0}, Lcom/mopub/mobileads/c;->b(Lcom/mopub/mobileads/c;)Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/mopub/mobileads/c$1;->a:Lcom/mopub/mobileads/c;

    invoke-static {v0}, Lcom/mopub/mobileads/c;->b(Lcom/mopub/mobileads/c;)Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/c$1;->a:Lcom/mopub/mobileads/c;

    invoke-static {v1}, Lcom/mopub/mobileads/c;->a(Lcom/mopub/mobileads/c;)Lcom/mopub/mobileads/BaseHtmlWebView;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;->onLoaded(Landroid/view/View;)V

    :cond_0
    return-void
.end method
