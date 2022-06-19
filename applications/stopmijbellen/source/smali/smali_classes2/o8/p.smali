.class public Lo8/p;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field public a:Landroid/app/ProgressDialog;

.field public b:Z

.field public final synthetic c:Lo8/q;


# direct methods
.method public constructor <init>(Lo8/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo8/p;->c:Lo8/q;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lo8/p;->b:Z

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lo8/p;->b:Z

    if-nez p1, :cond_0

    .line 2
    :try_start_0
    iget-object p1, p0, Lo8/p;->a:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->cancel()V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lo8/p;->a:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    :try_start_0
    iget-boolean p1, p0, Lo8/p;->b:Z

    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, Lo8/p;->a:Landroid/app/ProgressDialog;

    if-nez p1, :cond_1

    .line 3
    new-instance p1, Landroid/app/ProgressDialog;

    iget-object p2, p0, Lo8/p;->c:Lo8/q;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/o;

    move-result-object p2

    .line 4
    iget-object p3, p0, Lo8/p;->c:Lo8/q;

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lf8/h;->H(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_0

    const p3, 0x7f12012e

    goto :goto_0

    :cond_0
    const p3, 0x7f12000a

    .line 5
    :goto_0
    invoke-direct {p1, p2, p3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lo8/p;->a:Landroid/app/ProgressDialog;

    .line 6
    iget-object p2, p0, Lo8/p;->c:Lo8/q;

    const p3, 0x7f1100ed

    invoke-virtual {p2, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p1, p0, Lo8/p;->a:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lo8/p;->b:Z

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 2
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lo8/p;->b:Z

    .line 4
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lo8/p;->b:Z

    .line 2
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return v0
.end method
