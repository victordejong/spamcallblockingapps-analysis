.class public Lcom/mopub/mobileads/HtmlWebView;
.super Lcom/mopub/mobileads/BaseHtmlWebView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/BaseHtmlWebView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public init(Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;Ljava/lang/String;)V
    .locals 1

    .line 16
    invoke-super {p0}, Lcom/mopub/mobileads/BaseHtmlWebView;->init()V

    .line 17
    new-instance v0, Lcom/mopub/mobileads/c;

    invoke-direct {v0, p0, p1, p2}, Lcom/mopub/mobileads/c;-><init>(Lcom/mopub/mobileads/BaseHtmlWebView;Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/HtmlWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method
