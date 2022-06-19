.class public Ld2/y3;
.super Ld2/x3$j;
.source "SourceFile"


# instance fields
.field public final synthetic b:Ld2/x3;


# direct methods
.method public constructor <init>(Ld2/x3;)V
    .locals 1

    .line 1
    iput-object p1, p0, Ld2/y3;->b:Ld2/x3;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ld2/x3$j;-><init>(Ld2/x3;Ld2/y3;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2}, Ld2/x3$j;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Ld2/y3;->b:Ld2/x3;

    .line 3
    iget-object v0, p1, Ld2/x3;->O:Ld2/x3$k;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Ld2/x3$k;

    invoke-virtual {p1}, Landroid/webkit/WebView;->createWebMessageChannel()[Landroid/webkit/WebMessagePort;

    move-result-object v1

    invoke-direct {v0, v1}, Ld2/x3$k;-><init>([Landroid/webkit/WebMessagePort;)V

    iput-object v0, p1, Ld2/x3;->O:Ld2/x3$k;

    const/4 v0, 0x0

    .line 5
    aget-object v1, v1, v0

    .line 6
    new-instance v2, Ld2/a4;

    invoke-direct {v2, p1}, Ld2/a4;-><init>(Ld2/x3;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebMessagePort;->setWebMessageCallback(Landroid/webkit/WebMessagePort$WebMessageCallback;)V

    .line 7
    new-instance v1, Landroid/webkit/WebMessage;

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/webkit/WebMessagePort;

    iget-object v4, p1, Ld2/x3;->O:Ld2/x3$k;

    .line 8
    iget-object v4, v4, Ld2/x3$k;->a:[Ljava/lang/Object;

    aget-object v2, v4, v2

    check-cast v2, Landroid/webkit/WebMessagePort;

    aput-object v2, v3, v0

    const-string v0, ""

    .line 9
    invoke-direct {v1, v0, v3}, Landroid/webkit/WebMessage;-><init>(Ljava/lang/String;[Landroid/webkit/WebMessagePort;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/webkit/WebView;->postWebMessage(Landroid/webkit/WebMessage;Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ld2/y3;->b:Ld2/x3;

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v0

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p3, p2}, Ld2/x3;->k(Ld2/x3;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 3

    const-string p1, "UTF-8"

    .line 1
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "mraid.js"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 2
    :try_start_0
    new-instance p2, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Ld2/y3;->b:Ld2/x3;

    .line 3
    iget-object v1, v1, Ld2/x3;->f:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 5
    new-instance v1, Landroid/webkit/WebResourceResponse;

    const-string v2, "text/javascript"

    invoke-direct {v1, v2, p1, p2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    const-string p1, "UTF-8 not supported."

    .line 6
    invoke-static {p1}, Landroidx/recyclerview/widget/b;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v1, 0x0

    .line 7
    invoke-static {v1, v1, p1, p2}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    :cond_0
    return-object v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 3

    .line 1
    iget-object p1, p0, Ld2/y3;->b:Ld2/x3;

    .line 2
    iget-boolean p1, p1, Ld2/x3;->B:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 3
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Ld2/y3;->b:Ld2/x3;

    invoke-virtual {p1}, Ld2/x3;->x()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 5
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    const/4 p2, 0x1

    if-eqz p1, :cond_1

    .line 7
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {v0}, Ld2/i3;->g(Landroid/content/Intent;)Z

    .line 8
    new-instance v0, Ld2/f4;

    invoke-direct {v0}, Ld2/f4;-><init>()V

    .line 9
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "url"

    invoke-static {v0, v1, p1}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 10
    iget-object p1, p0, Ld2/y3;->b:Ld2/x3;

    .line 11
    iget-object p1, p1, Ld2/x3;->e:Ljava/lang/String;

    const-string v1, "ad_session_id"

    .line 12
    invoke-static {v0, v1, p1}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 13
    new-instance p1, Ld2/t0;

    iget-object v1, p0, Ld2/y3;->b:Ld2/x3;

    .line 14
    iget-object v1, v1, Ld2/x3;->L:Ld2/j0;

    .line 15
    iget v1, v1, Ld2/j0;->k:I

    const-string v2, "WebView.redirect_detected"

    .line 16
    invoke-direct {p1, v2, v1, v0}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    invoke-virtual {p1}, Ld2/t0;->b()V

    .line 17
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object p1

    invoke-virtual {p1}, Ld2/f1;->c()Ld2/e3;

    move-result-object p1

    .line 18
    iget-object v0, p0, Ld2/y3;->b:Ld2/x3;

    .line 19
    iget-object v0, v0, Ld2/x3;->e:Ljava/lang/String;

    .line 20
    invoke-virtual {p1, v0}, Ld2/e3;->b(Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Ld2/y3;->b:Ld2/x3;

    .line 22
    iget-object v0, v0, Ld2/x3;->e:Ljava/lang/String;

    .line 23
    invoke-virtual {p1, v0}, Ld2/e3;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 24
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shouldOverrideUrlLoading called with null request url, with ad id: "

    .line 25
    invoke-static {v1}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ld2/y3;->b:Ld2/x3;

    .line 26
    invoke-virtual {v2}, Ld2/x3;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 29
    invoke-static {v0, v0, p1, p2}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    :goto_1
    return p2

    :cond_2
    return v0
.end method
