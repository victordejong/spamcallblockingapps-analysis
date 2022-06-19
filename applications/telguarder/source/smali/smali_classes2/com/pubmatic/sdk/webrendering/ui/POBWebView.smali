.class public Lcom/pubmatic/sdk/webrendering/ui/POBWebView;
.super Landroid/webkit/WebView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubmatic/sdk/webrendering/ui/POBWebView$OnFocusChangedListener;,
        Lcom/pubmatic/sdk/webrendering/ui/POBWebView$WebViewBackPress;
    }
.end annotation


# instance fields
.field private a:Lcom/pubmatic/sdk/webrendering/ui/POBWebView$WebViewBackPress;

.field private b:Lcom/pubmatic/sdk/webrendering/ui/POBWebView$OnFocusChangedListener;

.field private c:Landroid/content/MutableContextWrapper;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    return-void
.end method

.method public static createInstance(Landroid/content/Context;)Lcom/pubmatic/sdk/webrendering/ui/POBWebView;
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/MutableContextWrapper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    new-instance p0, Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/webrendering/ui/POBWebView;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iput-object v0, p0, Lcom/pubmatic/sdk/webrendering/ui/POBWebView;->c:Landroid/content/MutableContextWrapper;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :catch_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "PMWebView"

    const-string v2, "Unable to instantiate Web View"

    invoke-static {v1, v2, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-object p0
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "default case, keyCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "PMWebView"

    invoke-static {v2, v0, v1}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/ui/POBWebView;->a:Lcom/pubmatic/sdk/webrendering/ui/POBWebView$WebViewBackPress;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/pubmatic/sdk/webrendering/ui/POBWebView$WebViewBackPress;->onBackPress()V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/webkit/WebView;->onWindowFocusChanged(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hasWindowFocus :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "PMWebView"

    invoke-static {v2, v0, v1}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/ui/POBWebView;->b:Lcom/pubmatic/sdk/webrendering/ui/POBWebView$OnFocusChangedListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/pubmatic/sdk/webrendering/ui/POBWebView$OnFocusChangedListener;->onFocusChanged(Z)V

    :cond_0
    return-void
.end method

.method public setBaseContext(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/ui/POBWebView;->c:Landroid/content/MutableContextWrapper;

    invoke-virtual {v0, p1}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public setOnfocusChangedListener(Lcom/pubmatic/sdk/webrendering/ui/POBWebView$OnFocusChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/webrendering/ui/POBWebView;->b:Lcom/pubmatic/sdk/webrendering/ui/POBWebView$OnFocusChangedListener;

    return-void
.end method

.method public setWebViewBackPress(Lcom/pubmatic/sdk/webrendering/ui/POBWebView$WebViewBackPress;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/webrendering/ui/POBWebView;->a:Lcom/pubmatic/sdk/webrendering/ui/POBWebView$WebViewBackPress;

    return-void
.end method
