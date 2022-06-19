.class public Lcom/pubmatic/sdk/webrendering/ui/POBHTMLViewClient;
.super Landroid/webkit/WebViewClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubmatic/sdk/webrendering/ui/POBHTMLViewClient$HTMLViewClientListener;
    }
.end annotation


# instance fields
.field private a:Lcom/pubmatic/sdk/webrendering/ui/POBHTMLViewClient$HTMLViewClientListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "HTMLViewClient"

    invoke-static {v1, p1, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLViewClient;->a:Lcom/pubmatic/sdk/webrendering/ui/POBHTMLViewClient$HTMLViewClientListener;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/pubmatic/sdk/common/POBError;

    const/16 v2, 0x3f1

    invoke-direct {v1, v2, p1}, Lcom/pubmatic/sdk/common/POBError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLViewClient$HTMLViewClientListener;->onReceivedError(Lcom/pubmatic/sdk/common/POBError;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "HTMLViewClient"

    const-string v1, "WebView creative loading finished."

    invoke-static {v0, v1, p2}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLViewClient;->a:Lcom/pubmatic/sdk/webrendering/ui/POBHTMLViewClient$HTMLViewClientListener;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLViewClient$HTMLViewClientListener;->onPageFinished(Landroid/webkit/WebView;)V

    :cond_0
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-ge p1, p2, :cond_0

    const-string p1, "WebView received error while loading creative."

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLViewClient;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_1

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const-string p3, " Not defined"

    :goto_0
    aput-object p3, p1, p2

    const-string p2, "WebView received error on page loading. Error : %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLViewClient;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setHTMLClientListener(Lcom/pubmatic/sdk/webrendering/ui/POBHTMLViewClient$HTMLViewClientListener;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLViewClient;->a:Lcom/pubmatic/sdk/webrendering/ui/POBHTMLViewClient$HTMLViewClientListener;

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WebView shouldOverrideUrlLoading.. Request redirect = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isRedirect()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "HTMLViewClient"

    invoke-static {v2, v0, v1}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isRedirect()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLViewClient;->a:Lcom/pubmatic/sdk/webrendering/ui/POBHTMLViewClient$HTMLViewClientListener;

    invoke-interface {p2, p1}, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLViewClient$HTMLViewClientListener;->shouldOverrideUrlLoading(Ljava/lang/String;)Z

    move-result p1

    :cond_0
    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    iget-object p1, p0, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLViewClient;->a:Lcom/pubmatic/sdk/webrendering/ui/POBHTMLViewClient$HTMLViewClientListener;

    invoke-interface {p1, p2}, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLViewClient$HTMLViewClientListener;->shouldOverrideUrlLoading(Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "HTMLViewClient"

    const-string v1, "WebView should override url loading : url"

    invoke-static {v0, v1, p2}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return p1
.end method
