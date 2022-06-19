.class final Lcom/mopub/mobileads/HtmlController$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/HtmlController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/HtmlController;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/HtmlController;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/mopub/mobileads/HtmlController$a;->a:Lcom/mopub/mobileads/HtmlController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClicked()V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/mopub/mobileads/HtmlController$a;->a:Lcom/mopub/mobileads/HtmlController;

    iget-object v0, v0, Lcom/mopub/mobileads/HtmlController;->mBaseWebViewListener:Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/mopub/mobileads/HtmlController$a;->a:Lcom/mopub/mobileads/HtmlController;

    iget-object v0, v0, Lcom/mopub/mobileads/HtmlController;->mBaseWebViewListener:Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;->onClicked()V

    :cond_0
    return-void
.end method

.method public final onClose()V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/mopub/mobileads/HtmlController$a;->a:Lcom/mopub/mobileads/HtmlController;

    iget-object v0, v0, Lcom/mopub/mobileads/HtmlController;->mBaseWebViewListener:Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/mopub/mobileads/HtmlController$a;->a:Lcom/mopub/mobileads/HtmlController;

    iget-object v0, v0, Lcom/mopub/mobileads/HtmlController;->mBaseWebViewListener:Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;->onClose()V

    :cond_0
    return-void
.end method

.method public final onExpand()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/mopub/mobileads/HtmlController$a;->a:Lcom/mopub/mobileads/HtmlController;

    iget-object v0, v0, Lcom/mopub/mobileads/HtmlController;->mBaseWebViewListener:Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/mopub/mobileads/HtmlController$a;->a:Lcom/mopub/mobileads/HtmlController;

    iget-object v0, v0, Lcom/mopub/mobileads/HtmlController;->mBaseWebViewListener:Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;->onExpand()V

    :cond_0
    return-void
.end method

.method public final onFailed()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/mopub/mobileads/HtmlController$a;->a:Lcom/mopub/mobileads/HtmlController;

    iget-object v0, v0, Lcom/mopub/mobileads/HtmlController;->mBaseWebViewListener:Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/mopub/mobileads/HtmlController$a;->a:Lcom/mopub/mobileads/HtmlController;

    iget-object v0, v0, Lcom/mopub/mobileads/HtmlController;->mBaseWebViewListener:Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;->onFailed()V

    :cond_0
    return-void
.end method

.method public final onFailedToLoad(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 1

    .line 77
    iget-object p1, p0, Lcom/mopub/mobileads/HtmlController$a;->a:Lcom/mopub/mobileads/HtmlController;

    iget-object p1, p1, Lcom/mopub/mobileads/HtmlController;->mBaseWebViewListener:Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    if-eqz p1, :cond_0

    .line 78
    iget-object p1, p0, Lcom/mopub/mobileads/HtmlController$a;->a:Lcom/mopub/mobileads/HtmlController;

    iget-object p1, p1, Lcom/mopub/mobileads/HtmlController;->mBaseWebViewListener:Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->HTML_LOAD_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, v0}, Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;->onFailedToLoad(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_0
    return-void
.end method

.method public final onLoaded(Landroid/view/View;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/mopub/mobileads/HtmlController$a;->a:Lcom/mopub/mobileads/HtmlController;

    iget-object v0, v0, Lcom/mopub/mobileads/HtmlController;->mBaseWebViewListener:Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/mopub/mobileads/HtmlController$a;->a:Lcom/mopub/mobileads/HtmlController;

    iget-object v0, v0, Lcom/mopub/mobileads/HtmlController;->mBaseWebViewListener:Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    invoke-interface {v0, p1}, Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;->onLoaded(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final onRenderProcessGone(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/mopub/mobileads/HtmlController$a;->a:Lcom/mopub/mobileads/HtmlController;

    iget-object v0, v0, Lcom/mopub/mobileads/HtmlController;->mBaseWebViewListener:Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/mopub/mobileads/HtmlController$a;->a:Lcom/mopub/mobileads/HtmlController;

    iget-object v0, v0, Lcom/mopub/mobileads/HtmlController;->mBaseWebViewListener:Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    invoke-interface {v0, p1}, Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;->onRenderProcessGone(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_0
    return-void
.end method

.method public final onResize(Z)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/mopub/mobileads/HtmlController$a;->a:Lcom/mopub/mobileads/HtmlController;

    iget-object v0, v0, Lcom/mopub/mobileads/HtmlController;->mBaseWebViewListener:Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/mopub/mobileads/HtmlController$a;->a:Lcom/mopub/mobileads/HtmlController;

    iget-object v0, v0, Lcom/mopub/mobileads/HtmlController;->mBaseWebViewListener:Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    invoke-interface {v0, p1}, Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;->onResize(Z)V

    :cond_0
    return-void
.end method
