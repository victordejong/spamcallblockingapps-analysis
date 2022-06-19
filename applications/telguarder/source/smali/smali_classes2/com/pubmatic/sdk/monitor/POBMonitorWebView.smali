.class public Lcom/pubmatic/sdk/monitor/POBMonitorWebView;
.super Landroid/webkit/WebView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubmatic/sdk/monitor/POBMonitorWebView$c;,
        Lcom/pubmatic/sdk/monitor/POBMonitorWebView$d;,
        Lcom/pubmatic/sdk/monitor/POBMonitorWebView$e;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public isLoaded:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/pubmatic/sdk/monitor/POBMonitorWebView;->isLoaded:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/pubmatic/sdk/monitor/POBMonitorWebView;->a:Ljava/util/List;

    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "text/plain"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/pubmatic/sdk/monitor/POBMonitorWebView;->isLoaded:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/pubmatic/sdk/monitor/POBMonitorWebView$b;

    invoke-direct {v0, p0, p1}, Lcom/pubmatic/sdk/monitor/POBMonitorWebView$b;-><init>(Lcom/pubmatic/sdk/monitor/POBMonitorWebView;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public appendData(Lorg/json/JSONObject;)V
    .locals 1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/monitor/POBMonitorWebView;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/monitor/POBMonitorWebView;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/pubmatic/sdk/monitor/POBMonitorWebView;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/monitor/POBMonitorWebView;->a(Ljava/lang/String;)Z

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public initWebView(Lcom/pubmatic/sdk/monitor/POBMonitorWebView$e;)V
    .locals 2

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->clearHistory()V

    new-instance v0, Lcom/pubmatic/sdk/monitor/POBMonitorWebView$d;

    new-instance v1, Lcom/pubmatic/sdk/monitor/POBMonitorWebView$a;

    invoke-direct {v1, p0, p1}, Lcom/pubmatic/sdk/monitor/POBMonitorWebView$a;-><init>(Lcom/pubmatic/sdk/monitor/POBMonitorWebView;Lcom/pubmatic/sdk/monitor/POBMonitorWebView$e;)V

    const/4 p1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/pubmatic/sdk/monitor/POBMonitorWebView$d;-><init>(Lcom/pubmatic/sdk/monitor/POBMonitorWebView$e;Lcom/pubmatic/sdk/monitor/POBMonitorWebView$a;)V

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v0, Landroid/webkit/WebChromeClient;

    invoke-direct {v0}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    new-instance v0, Lcom/pubmatic/sdk/monitor/POBMonitorWebView$c;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/pubmatic/sdk/monitor/POBMonitorWebView$c;-><init>(Landroid/content/Context;Lcom/pubmatic/sdk/monitor/POBMonitorWebView$a;)V

    const-string p1, "nativeBridge"

    invoke-virtual {p0, v0, p1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
