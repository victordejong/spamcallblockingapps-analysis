.class final Lcom/explorestack/iab/mraid/h$b;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/iab/mraid/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/explorestack/iab/mraid/h;


# direct methods
.method private constructor <init>(Lcom/explorestack/iab/mraid/h;)V
    .locals 0

    .line 344
    iput-object p1, p0, Lcom/explorestack/iab/mraid/h$b;->a:Lcom/explorestack/iab/mraid/h;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/iab/mraid/h;Lcom/explorestack/iab/mraid/h$1;)V
    .locals 0

    .line 344
    invoke-direct {p0, p1}, Lcom/explorestack/iab/mraid/h$b;-><init>(Lcom/explorestack/iab/mraid/h;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 401
    sget-object v0, Lcom/explorestack/iab/mraid/h;->a:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p3, 0x2

    aput-object p1, v1, p3

    const-string p1, "onError: %s / %s / %d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/explorestack/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string p1, "ERR_INTERNET_DISCONNECTED"

    .line 402
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 403
    iget-object p1, p0, Lcom/explorestack/iab/mraid/h$b;->a:Lcom/explorestack/iab/mraid/h;

    invoke-static {p1}, Lcom/explorestack/iab/mraid/h;->d(Lcom/explorestack/iab/mraid/h;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 353
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 354
    sget-object p1, Lcom/explorestack/iab/mraid/h;->a:Ljava/lang/String;

    const-string v0, "onPageFinished"

    invoke-static {p1, v0}, Lcom/explorestack/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iget-object p1, p0, Lcom/explorestack/iab/mraid/h$b;->a:Lcom/explorestack/iab/mraid/h;

    invoke-static {p1}, Lcom/explorestack/iab/mraid/h;->a(Lcom/explorestack/iab/mraid/h;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 358
    :cond_0
    iget-object p1, p0, Lcom/explorestack/iab/mraid/h$b;->a:Lcom/explorestack/iab/mraid/h;

    invoke-static {p1}, Lcom/explorestack/iab/mraid/h;->c(Lcom/explorestack/iab/mraid/h;)Z

    .line 359
    iget-object p1, p0, Lcom/explorestack/iab/mraid/h$b;->a:Lcom/explorestack/iab/mraid/h;

    invoke-static {p1}, Lcom/explorestack/iab/mraid/h;->b(Lcom/explorestack/iab/mraid/h;)Lcom/explorestack/iab/mraid/h$a;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/explorestack/iab/mraid/h$a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 347
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 348
    sget-object p1, Lcom/explorestack/iab/mraid/h;->a:Ljava/lang/String;

    const-string p2, "onPageStarted"

    invoke-static {p1, p2}, Lcom/explorestack/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 385
    invoke-direct {p0, p4, p3, p2}, Lcom/explorestack/iab/mraid/h$b;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 386
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 3

    .line 374
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 375
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 376
    :goto_0
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/explorestack/iab/mraid/h$b;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 377
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    return-void
.end method

.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 0

    .line 364
    sget-object p1, Lcom/explorestack/iab/mraid/h;->a:Ljava/lang/String;

    const-string p2, "onRenderProcessGone"

    invoke-static {p1, p2}, Lcom/explorestack/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object p1, p0, Lcom/explorestack/iab/mraid/h$b;->a:Lcom/explorestack/iab/mraid/h;

    invoke-static {p1}, Lcom/explorestack/iab/mraid/h;->b(Lcom/explorestack/iab/mraid/h;)Lcom/explorestack/iab/mraid/h$a;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/explorestack/iab/mraid/h$a;->a(I)V

    return p2
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    const-string p1, "mraid://"

    .line 391
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 392
    iget-object p1, p0, Lcom/explorestack/iab/mraid/h$b;->a:Lcom/explorestack/iab/mraid/h;

    invoke-static {p1, p2}, Lcom/explorestack/iab/mraid/h;->a(Lcom/explorestack/iab/mraid/h;Ljava/lang/String;)V

    goto :goto_0

    .line 394
    :cond_0
    iget-object p1, p0, Lcom/explorestack/iab/mraid/h$b;->a:Lcom/explorestack/iab/mraid/h;

    invoke-static {p1, p2}, Lcom/explorestack/iab/mraid/h;->b(Lcom/explorestack/iab/mraid/h;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
