.class Lcom/pubmatic/sdk/monitor/POBMonitorWebView$d;
.super Landroid/webkit/WebViewClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/monitor/POBMonitorWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field a:Lcom/pubmatic/sdk/monitor/POBMonitorWebView$e;


# direct methods
.method private constructor <init>(Lcom/pubmatic/sdk/monitor/POBMonitorWebView$e;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    iput-object p1, p0, Lcom/pubmatic/sdk/monitor/POBMonitorWebView$d;->a:Lcom/pubmatic/sdk/monitor/POBMonitorWebView$e;

    return-void
.end method

.method synthetic constructor <init>(Lcom/pubmatic/sdk/monitor/POBMonitorWebView$e;Lcom/pubmatic/sdk/monitor/POBMonitorWebView$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/monitor/POBMonitorWebView$d;-><init>(Lcom/pubmatic/sdk/monitor/POBMonitorWebView$e;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/pubmatic/sdk/monitor/POBMonitorWebView$d;->a:Lcom/pubmatic/sdk/monitor/POBMonitorWebView$e;

    invoke-interface {p1}, Lcom/pubmatic/sdk/monitor/POBMonitorWebView$e;->a()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result p1

    return p1
.end method
