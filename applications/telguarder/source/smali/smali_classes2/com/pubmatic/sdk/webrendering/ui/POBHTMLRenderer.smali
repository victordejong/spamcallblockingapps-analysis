.class public Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/webrendering/ui/POBHTMLViewClient$HTMLViewClientListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer$c;
    }
.end annotation


# instance fields
.field private a:Lcom/pubmatic/sdk/common/ui/POBHtmlRendererListener;

.field private b:Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

.field private c:Z

.field private d:Ljava/util/Formatter;

.field private e:I

.field private f:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Lcom/pubmatic/sdk/webrendering/ui/POBWebView;Lcom/pubmatic/sdk/webrendering/ui/POBHTMLViewClient;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xf

    iput v0, p0, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;->e:I

    iput-object p1, p0, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;->b:Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object p1, p0, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;->b:Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

    new-instance v0, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer$c;

    invoke-direct {v0, p0}, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer$c;-><init>(Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p2, p0}, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLViewClient;->setHTMLClientListener(Lcom/pubmatic/sdk/webrendering/ui/POBHTMLViewClient$HTMLViewClientListener;)V

    new-instance p1, Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;)V

    iput-object p1, p0, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;->d:Ljava/util/Formatter;

    return-void
.end method

.method static synthetic a(Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;)I
    .locals 0

    iget p0, p0, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;->e:I

    return p0
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;->f:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;->f:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;)Lcom/pubmatic/sdk/webrendering/ui/POBWebView;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;->b:Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

    return-object p0
.end method

.method private b()V
    .locals 4

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;->f:Ljava/util/Timer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;->f:Ljava/util/Timer;

    new-instance v1, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer$a;

    invoke-direct {v1, p0}, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer$a;-><init>(Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;)V

    iget v2, p0, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;->e:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 4

    invoke-direct {p0}, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;->a()V

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;->b:Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

    new-instance v1, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer$b;

    invoke-direct {v1, p0}, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer$b;-><init>(Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public isUserInteracted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;->c:Z

    return v0
.end method

.method public loadHTML(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;->d:Ljava/util/Formatter;
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/FormatterClosedException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "<html><head><meta name=\"viewport\" content=\"user-scalable=0\"/><style>body{margin:0;padding:0;}</style></head><body><div align=\"center\">%s</div></body></html>"

    const/4 v2, 0x1

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    iget-object p1, p0, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;->d:Ljava/util/Formatter;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;->d:Ljava/util/Formatter;

    invoke-virtual {p1}, Ljava/util/Formatter;->close()V

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;->b:Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;->b()V
    :try_end_1
    .catch Ljava/util/IllegalFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/FormatterClosedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    new-instance p2, Lcom/pubmatic/sdk/common/POBError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to render creative, due to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x3f1

    invoke-direct {p2, v0, p1}, Lcom/pubmatic/sdk/common/POBError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;->notifyError(Lcom/pubmatic/sdk/common/POBError;)V

    :goto_1
    return-void
.end method

.method protected notifyError(Lcom/pubmatic/sdk/common/POBError;)V
    .locals 1

    invoke-direct {p0}, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;->a()V

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;->a:Lcom/pubmatic/sdk/common/ui/POBHtmlRendererListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/pubmatic/sdk/common/ui/POBHtmlRendererListener;->onViewRenderingFailed(Lcom/pubmatic/sdk/common/POBError;)V

    :cond_0
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;)V
    .locals 1

    invoke-direct {p0}, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;->a()V

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;->a:Lcom/pubmatic/sdk/common/ui/POBHtmlRendererListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/pubmatic/sdk/common/ui/POBHtmlRendererListener;->onViewRendered(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onReceivedError(Lcom/pubmatic/sdk/common/POBError;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;->notifyError(Lcom/pubmatic/sdk/common/POBError;)V

    return-void
.end method

.method public setRendererViewListener(Lcom/pubmatic/sdk/common/ui/POBHtmlRendererListener;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;->a:Lcom/pubmatic/sdk/common/ui/POBHtmlRendererListener;

    return-void
.end method

.method public setRenderingTimeout(I)V
    .locals 0

    iput p1, p0, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;->e:I

    return-void
.end method

.method public setUserInteracted(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;->c:Z

    return-void
.end method

.method public shouldOverrideUrlLoading(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;->a:Lcom/pubmatic/sdk/common/ui/POBHtmlRendererListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;->c:Z

    if-eqz v2, :cond_0

    iput-boolean v1, p0, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;->c:Z

    invoke-interface {v0, p1}, Lcom/pubmatic/sdk/common/ui/POBHtmlRendererListener;->onViewClicked(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method
