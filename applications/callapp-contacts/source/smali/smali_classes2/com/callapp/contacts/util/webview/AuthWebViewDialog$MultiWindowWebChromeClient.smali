.class Lcom/callapp/contacts/util/webview/AuthWebViewDialog$MultiWindowWebChromeClient;
.super Lcom/callapp/contacts/util/webview/BaseWebViewDialog$SingleWindowWebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/util/webview/AuthWebViewDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MultiWindowWebChromeClient"
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/util/webview/AuthWebViewDialog;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/util/webview/AuthWebViewDialog;Landroid/widget/ProgressBar;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/callapp/contacts/util/webview/AuthWebViewDialog$MultiWindowWebChromeClient;->a:Lcom/callapp/contacts/util/webview/AuthWebViewDialog;

    .line 46
    invoke-direct {p0, p2}, Lcom/callapp/contacts/util/webview/BaseWebViewDialog$SingleWindowWebChromeClient;-><init>(Landroid/widget/ProgressBar;)V

    return-void
.end method


# virtual methods
.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 2

    .line 65
    iget-object p1, p0, Lcom/callapp/contacts/util/webview/AuthWebViewDialog$MultiWindowWebChromeClient;->a:Lcom/callapp/contacts/util/webview/AuthWebViewDialog;

    invoke-virtual {p1}, Lcom/callapp/contacts/util/webview/AuthWebViewDialog;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f0a0ac4

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/callapp/contacts/util/webview/AuthWebViewDialog$MultiWindowWebChromeClient;->a:Lcom/callapp/contacts/util/webview/AuthWebViewDialog;

    invoke-virtual {v1}, Lcom/callapp/contacts/util/webview/AuthWebViewDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    return-void
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 1

    .line 51
    new-instance p1, Landroid/webkit/WebView;

    iget-object p2, p0, Lcom/callapp/contacts/util/webview/AuthWebViewDialog$MultiWindowWebChromeClient;->a:Lcom/callapp/contacts/util/webview/AuthWebViewDialog;

    invoke-static {p2}, Lcom/callapp/contacts/util/webview/AuthWebViewDialog;->a(Lcom/callapp/contacts/util/webview/AuthWebViewDialog;)Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 53
    invoke-virtual {p1, p0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 54
    iget-object p2, p0, Lcom/callapp/contacts/util/webview/AuthWebViewDialog$MultiWindowWebChromeClient;->a:Lcom/callapp/contacts/util/webview/AuthWebViewDialog;

    invoke-virtual {p2}, Lcom/callapp/contacts/util/webview/AuthWebViewDialog;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 55
    iget-object p2, p0, Lcom/callapp/contacts/util/webview/AuthWebViewDialog$MultiWindowWebChromeClient;->a:Lcom/callapp/contacts/util/webview/AuthWebViewDialog;

    invoke-virtual {p2}, Lcom/callapp/contacts/util/webview/AuthWebViewDialog;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const v0, 0x7f0a0ac4

    invoke-virtual {p2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 56
    iget-object p2, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p2, Landroid/webkit/WebView$WebViewTransport;

    .line 57
    invoke-virtual {p2, p1}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    .line 58
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    return p3
.end method
