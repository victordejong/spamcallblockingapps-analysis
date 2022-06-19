.class public Lcom/bytedance/sdk/openadsdk/g/a/y;
.super Lcom/bytedance/sdk/openadsdk/g/a/a;
.source "SourceFile"


# static fields
.field static final synthetic h:Z = true


# instance fields
.field private i:Ljava/lang/String;

.field private j:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/g/a/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/g/a/y;)Landroid/webkit/WebView;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/g/a/y;->j:Landroid/webkit/WebView;

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 86
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/g/a/y;->f:Z

    if-eqz p1, :cond_0

    return-void

    .line 89
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 95
    :cond_1
    new-instance p1, Lcom/bytedance/sdk/openadsdk/g/a/y$1;

    invoke-direct {p1, p0, p2}, Lcom/bytedance/sdk/openadsdk/g/a/y$1;-><init>(Lcom/bytedance/sdk/openadsdk/g/a/y;Ljava/lang/String;)V

    .line 110
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 111
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Received call on sub-thread, posting to main thread: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/g/a/i;->a(Ljava/lang/String;)V

    .line 112
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/g/a/y;->d:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 114
    :cond_2
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/bytedance/sdk/openadsdk/g/a/j;)Landroid/content/Context;
    .locals 1

    .line 28
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/g/a/j;->e:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 29
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/g/a/j;->e:Landroid/content/Context;

    return-object p1

    .line 30
    :cond_0
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/g/a/j;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 31
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/g/a/j;->a:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    return-object p1

    .line 33
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "WebView cannot be null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/y;->j:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/g/a/y;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "._handleMessageFromToutiao("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/g/a/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/p;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 66
    iget-object v0, p2, Lcom/bytedance/sdk/openadsdk/g/a/p;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/g/a/p;->h:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const-string p2, "javascript:(function(){   const iframe = document.querySelector(\'iframe[src=\"%s\"\');   if (iframe && iframe.contentWindow) {        iframe.contentWindow.postMessage(%s, \'%s\');   }})()"

    .line 68
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/g/a/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 75
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/g/a/a;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/p;)V

    return-void
.end method

.method protected b(Lcom/bytedance/sdk/openadsdk/g/a/j;)V
    .locals 2

    .line 44
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/g/a/j;->a:Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/y;->j:Landroid/webkit/WebView;

    .line 45
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/g/a/j;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/y;->i:Ljava/lang/String;

    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_2

    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/g/a/j;->n:Z

    if-nez p1, :cond_2

    .line 47
    sget-boolean p1, Lcom/bytedance/sdk/openadsdk/g/a/y;->h:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/g/a/y;->j:Landroid/webkit/WebView;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 48
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/g/a/y;->j:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/y;->i:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public invokeMethod(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 55
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/g/a/a;->invokeMethod(Ljava/lang/String;)V

    return-void
.end method
