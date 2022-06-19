.class public Lcom/mopub/mobileads/HtmlController;
.super Lcom/mopub/mobileads/MoPubWebViewController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/HtmlController$a;
    }
.end annotation


# instance fields
.field private e:Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/mopub/mobileads/MoPubWebViewController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 20
    new-instance p1, Lcom/mopub/mobileads/HtmlController$a;

    invoke-direct {p1, p0}, Lcom/mopub/mobileads/HtmlController$a;-><init>(Lcom/mopub/mobileads/HtmlController;)V

    iput-object p1, p0, Lcom/mopub/mobileads/HtmlController;->e:Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    .line 26
    iget-object p1, p0, Lcom/mopub/mobileads/HtmlController;->mDefaultAdContainer:Landroid/view/ViewGroup;

    .line 1054
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    const/16 v1, 0x11

    invoke-direct {p2, v0, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 26
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected createWebView()Lcom/mopub/mobileads/BaseWebView;
    .locals 3

    .line 31
    new-instance v0, Lcom/mopub/mobileads/HtmlWebView;

    iget-object v1, p0, Lcom/mopub/mobileads/HtmlController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mopub/mobileads/HtmlWebView;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-static {v0}, Lcom/mopub/mobileads/AdViewController;->setShouldHonorServerDimensions(Landroid/view/View;)V

    .line 33
    iget-object v1, p0, Lcom/mopub/mobileads/HtmlController;->e:Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    iget-object v2, p0, Lcom/mopub/mobileads/HtmlController;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/HtmlWebView;->init(Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;Ljava/lang/String;)V

    return-object v0
.end method

.method protected final destroy()V
    .locals 1

    .line 44
    invoke-super {p0}, Lcom/mopub/mobileads/MoPubWebViewController;->destroy()V

    .line 46
    iget-object v0, p0, Lcom/mopub/mobileads/HtmlController;->mWebView:Lcom/mopub/mobileads/BaseWebView;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/mopub/mobileads/HtmlController;->mWebView:Lcom/mopub/mobileads/BaseWebView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseWebView;->destroy()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/mopub/mobileads/HtmlController;->mWebView:Lcom/mopub/mobileads/BaseWebView;

    :cond_0
    return-void
.end method

.method protected final doFillContent(Ljava/lang/String;)V
    .locals 7

    .line 39
    iget-object v0, p0, Lcom/mopub/mobileads/HtmlController;->mWebView:Lcom/mopub/mobileads/BaseWebView;

    move-object v1, v0

    check-cast v1, Lcom/mopub/mobileads/HtmlWebView;

    .line 1094
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mopub/network/Networking;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/mopub/common/Constants;->HOST:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "text/html"

    const-string v5, "utf-8"

    const/4 v6, 0x0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/mopub/mobileads/BaseHtmlWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getAdContainer()Landroid/view/View;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/mopub/mobileads/HtmlController;->mWebView:Lcom/mopub/mobileads/BaseWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/HtmlController;->mWebView:Lcom/mopub/mobileads/BaseWebView;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/HtmlController;->mDefaultAdContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getWebView()Lcom/mopub/mobileads/BaseWebView;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/mopub/mobileads/HtmlController;->mWebView:Lcom/mopub/mobileads/BaseWebView;

    return-object v0
.end method

.method public setWebView(Lcom/mopub/mobileads/BaseWebView;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/mopub/mobileads/HtmlController;->mWebView:Lcom/mopub/mobileads/BaseWebView;

    return-void
.end method
