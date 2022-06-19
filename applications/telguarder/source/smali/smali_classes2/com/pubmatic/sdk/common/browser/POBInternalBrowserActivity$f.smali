.class Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity$f;
.super Landroid/webkit/WebViewClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;


# direct methods
.method private constructor <init>(Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity$f;->a:Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity$f;-><init>(Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity$f;->a:Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;

    invoke-static {p1}, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->d(Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity$f;->a:Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;

    invoke-static {p1}, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->d(Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity$f;->a:Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;

    invoke-static {p1}, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->b(Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;)Landroid/webkit/WebView;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity$f;->a:Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;

    invoke-static {p1}, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->e(Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity$f;->a:Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;

    invoke-static {p1}, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->e(Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;)Landroid/widget/ImageView;

    move-result-object p2

    iget-object v0, p0, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity$f;->a:Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;

    invoke-static {v0}, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->b(Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->a(Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;Landroid/widget/ImageView;Z)V

    :cond_1
    iget-object p1, p0, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity$f;->a:Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;

    invoke-static {p1}, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->f(Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity$f;->a:Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;

    invoke-static {p1}, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->f(Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;)Landroid/widget/ImageView;

    move-result-object p2

    iget-object v0, p0, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity$f;->a:Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;

    invoke-static {v0}, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->b(Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->a(Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;Landroid/widget/ImageView;Z)V

    :cond_2
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity$f;->a:Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;

    invoke-static {v0}, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->d(Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity$f;->a:Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;

    invoke-static {v0}, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->d(Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity$f;->a:Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;

    invoke-static {v0}, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->d(Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity$f;->a:Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;

    invoke-static {v0}, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->d(Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity$f;->a:Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;

    invoke-static {v0}, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->d(Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity$f;->a:Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;

    invoke-static {v0}, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->d(Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 3

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, p1, v0

    const-string v1, "POBInternalBrowserActivity"

    const-string v2, "SSL error: %s"

    invoke-static {v1, v2, p1}, Lcom/pubmatic/sdk/common/log/PMLog;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity$f;->a:Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;

    invoke-static {p1}, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->d(Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity$f;->a:Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;

    invoke-static {p1}, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->d(Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection to this site is not secure: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity$f;->a:Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;

    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result p3

    invoke-static {v2, p3}, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->a(Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity$f;->a:Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;

    invoke-virtual {p3}, Landroid/app/Activity;->isFinishing()Z

    move-result p3

    if-nez p3, :cond_2

    iget-object p3, p0, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity$f;->a:Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;

    invoke-static {p3}, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->g(Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;)Landroid/app/AlertDialog;

    move-result-object p3

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity$f;->a:Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;

    new-instance v2, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity$f$a;

    invoke-direct {v2, p0, p2}, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity$f$a;-><init>(Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity$f;Landroid/webkit/SslErrorHandler;)V

    const-string p2, "Warning!"

    invoke-static {p3, p2, p1, v2}, Lcom/pubmatic/sdk/common/utility/POBAlertDialog;->build(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/pubmatic/sdk/common/utility/POBAlertDialog$POBDialogListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    :try_start_0
    iget-object p2, p0, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity$f;->a:Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->a(Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    iget-object p1, p0, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity$f;->a:Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;

    invoke-static {p1}, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->g(Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "Error showing ssl error dialog."

    invoke-static {v1, p2, p1}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity$f;->a:Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;

    invoke-static {p2}, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->g(Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;)Landroid/app/AlertDialog;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity$f;->a:Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;

    invoke-static {p2}, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->g(Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;)Landroid/app/AlertDialog;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity$f;->a:Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;

    invoke-static {p1}, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->g(Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_2
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "Error showing ssl error dialog as activity is finishing!"

    invoke-static {v1, p2, p1}, Lcom/pubmatic/sdk/common/log/PMLog;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity$f;->a:Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/pubmatic/sdk/common/utility/POBDeepLinkUtil;->validateAndRedirect(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-ge p1, v0, :cond_0

    iget-object p1, p0, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity$f;->a:Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;

    invoke-static {p1, p2}, Lcom/pubmatic/sdk/common/utility/POBDeepLinkUtil;->validateAndRedirect(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
