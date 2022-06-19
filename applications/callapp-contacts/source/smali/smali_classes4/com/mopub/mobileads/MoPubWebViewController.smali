.class public abstract Lcom/mopub/mobileads/MoPubWebViewController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter;,
        Lcom/mopub/mobileads/MoPubWebViewController$WebViewCacheListener;
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Lcom/mopub/mraid/WebViewDebugListener;

.field protected c:Ljava/lang/String;

.field protected d:Z

.field public mBaseWebViewListener:Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

.field public final mContext:Landroid/content/Context;

.field public final mDefaultAdContainer:Landroid/view/ViewGroup;

.field public mWebView:Lcom/mopub/mobileads/BaseWebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->d:Z

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->mContext:Landroid/content/Context;

    .line 59
    invoke-static {v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 60
    iput-object p2, p0, Lcom/mopub/mobileads/MoPubWebViewController;->c:Ljava/lang/String;

    .line 61
    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_0

    .line 62
    new-instance p2, Ljava/lang/ref/WeakReference;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/mopub/mobileads/MoPubWebViewController;->a:Ljava/lang/ref/WeakReference;

    goto :goto_0

    .line 66
    :cond_0
    new-instance p1, Ljava/lang/ref/WeakReference;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubWebViewController;->a:Ljava/lang/ref/WeakReference;

    .line 68
    :goto_0
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-direct {p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubWebViewController;->mDefaultAdContainer:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method protected abstract createWebView()Lcom/mopub/mobileads/BaseWebView;
.end method

.method public destroy()V
    .locals 1

    .line 139
    iget-boolean v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 140
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/MoPubWebViewController;->pause(Z)V

    :cond_0
    return-void
.end method

.method protected abstract doFillContent(Ljava/lang/String;)V
.end method

.method public final fillContent(Ljava/lang/String;Ljava/util/Set;Lcom/mopub/mobileads/MoPubWebViewController$WebViewCacheListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/mopub/common/ViewabilityVendor;",
            ">;",
            "Lcom/mopub/mobileads/MoPubWebViewController$WebViewCacheListener;",
            ")V"
        }
    .end annotation

    const-string v0, "htmlData cannot be null"

    .line 86
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubWebViewController;->createWebView()Lcom/mopub/mobileads/BaseWebView;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->mWebView:Lcom/mopub/mobileads/BaseWebView;

    if-eqz p3, :cond_0

    .line 91
    invoke-interface {p3, v0}, Lcom/mopub/mobileads/MoPubWebViewController$WebViewCacheListener;->onReady(Lcom/mopub/mobileads/BaseWebView;)V

    .line 95
    :cond_0
    sget-object p3, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {p3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/regex/Matcher;->matches()Z

    move-result p3

    if-nez p3, :cond_1

    .line 96
    invoke-static {p1, p2}, Lcom/mopub/common/ViewabilityManager;->injectVerificationUrlsIntoHtml(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    .line 97
    invoke-static {p1}, Lcom/mopub/common/ViewabilityManager;->injectScriptContentIntoHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 100
    :cond_1
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/MoPubWebViewController;->doFillContent(Ljava/lang/String;)V

    return-void
.end method

.method public getAdContainer()Landroid/view/View;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->mDefaultAdContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getBaseWebViewListener()Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->mBaseWebViewListener:Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public loadJavascript(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onShow(Landroid/app/Activity;)V
    .locals 1

    .line 115
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 116
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public pause(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 120
    iput-boolean v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->d:Z

    .line 123
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->mWebView:Lcom/mopub/mobileads/BaseWebView;

    if-eqz v0, :cond_0

    .line 124
    invoke-static {v0, p1}, Lcom/mopub/mobileads/util/WebViews;->onPause(Landroid/webkit/WebView;Z)V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    const/4 v0, 0x0

    .line 129
    iput-boolean v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->d:Z

    .line 132
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->mWebView:Lcom/mopub/mobileads/BaseWebView;

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseWebView;->onResume()V

    :cond_0
    return-void
.end method

.method public setDebugListener(Lcom/mopub/mraid/WebViewDebugListener;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubWebViewController;->b:Lcom/mopub/mraid/WebViewDebugListener;

    return-void
.end method

.method public setMoPubWebViewListener(Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubWebViewController;->mBaseWebViewListener:Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    return-void
.end method
