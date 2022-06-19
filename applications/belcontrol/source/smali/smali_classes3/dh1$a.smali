.class public Ldh1$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/mopub/common/UrlHandler$MoPubSchemeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldh1;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ldh1;


# direct methods
.method public constructor <init>(Ldh1;)V
    .locals 0

    iput-object p1, p0, Ldh1$a;->a:Ldh1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 1

    iget-object v0, p0, Ldh1$a;->a:Ldh1;

    invoke-static {v0}, Ldh1;->b(Ldh1;)Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldh1$a;->a:Ldh1;

    invoke-static {v0}, Ldh1;->b(Ldh1;)Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;->onClose()V

    :cond_0
    return-void
.end method

.method public onCrash()V
    .locals 1

    iget-object v0, p0, Ldh1$a;->a:Ldh1;

    invoke-static {v0}, Ldh1;->b(Ldh1;)Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldh1$a;->a:Ldh1;

    invoke-static {v0}, Ldh1;->b(Ldh1;)Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;->onFailed()V

    :cond_0
    return-void
.end method

.method public onFailLoad()V
    .locals 2

    iget-object v0, p0, Ldh1$a;->a:Ldh1;

    invoke-static {v0}, Ldh1;->a(Ldh1;)Lcom/mopub/mobileads/BaseHtmlWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseHtmlWebView;->stopLoading()V

    iget-object v0, p0, Ldh1$a;->a:Ldh1;

    invoke-static {v0}, Ldh1;->b(Ldh1;)Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldh1$a;->a:Ldh1;

    invoke-static {v0}, Ldh1;->b(Ldh1;)Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->HTML_LOAD_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;->onFailedToLoad(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_0
    return-void
.end method

.method public onFinishLoad()V
    .locals 2

    iget-object v0, p0, Ldh1$a;->a:Ldh1;

    invoke-static {v0}, Ldh1;->a(Ldh1;)Lcom/mopub/mobileads/BaseHtmlWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseWebViewViewability;->setPageLoaded()V

    iget-object v0, p0, Ldh1$a;->a:Ldh1;

    invoke-static {v0}, Ldh1;->b(Ldh1;)Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldh1$a;->a:Ldh1;

    invoke-static {v0}, Ldh1;->b(Ldh1;)Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    move-result-object v0

    iget-object v1, p0, Ldh1$a;->a:Ldh1;

    invoke-static {v1}, Ldh1;->a(Ldh1;)Lcom/mopub/mobileads/BaseHtmlWebView;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;->onLoaded(Landroid/view/View;)V

    :cond_0
    return-void
.end method
