.class public Lcom/mopub/mobileads/HtmlController;
.super Lcom/mopub/mobileads/MoPubWebViewController;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/HtmlController$a;
    }
.end annotation


# instance fields
.field public i:Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mopub/mobileads/MoPubWebViewController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p1, Lcom/mopub/mobileads/HtmlController$a;

    invoke-direct {p1, p0}, Lcom/mopub/mobileads/HtmlController$a;-><init>(Lcom/mopub/mobileads/HtmlController;)V

    iput-object p1, p0, Lcom/mopub/mobileads/HtmlController;->i:Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    iget-object p1, p0, Lcom/mopub/mobileads/MoPubWebViewController;->c:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/mopub/mobileads/HtmlController;->e()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-super {p0}, Lcom/mopub/mobileads/MoPubWebViewController;->a()V

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->f:Lcom/mopub/mobileads/BaseWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseWebView;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->f:Lcom/mopub/mobileads/BaseWebView;

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->f:Lcom/mopub/mobileads/BaseWebView;

    check-cast v0, Lcom/mopub/mobileads/HtmlWebView;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/BaseHtmlWebView;->k(Ljava/lang/String;)V

    return-void
.end method

.method public createWebView()Lcom/mopub/mobileads/BaseWebView;
    .locals 3

    new-instance v0, Lcom/mopub/mobileads/HtmlWebView;

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubWebViewController;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mopub/mobileads/HtmlWebView;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/mopub/mobileads/AdViewController;->setShouldHonorServerDimensions(Landroid/view/View;)V

    iget-object v1, p0, Lcom/mopub/mobileads/HtmlController;->i:Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    iget-object v2, p0, Lcom/mopub/mobileads/MoPubWebViewController;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/HtmlWebView;->init(Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;Ljava/lang/String;)V

    return-object v0
.end method

.method public e()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/16 v2, 0x11

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method public getAdContainer()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->f:Lcom/mopub/mobileads/BaseWebView;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->c:Landroid/view/ViewGroup;

    :goto_0
    return-object v0
.end method

.method public getWebView()Lcom/mopub/mobileads/BaseWebView;
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->f:Lcom/mopub/mobileads/BaseWebView;

    return-object v0
.end method

.method public setWebView(Lcom/mopub/mobileads/BaseWebView;)V
    .locals 0
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubWebViewController;->f:Lcom/mopub/mobileads/BaseWebView;

    return-void
.end method
