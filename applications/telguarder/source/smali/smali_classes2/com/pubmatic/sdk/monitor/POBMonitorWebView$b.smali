.class Lcom/pubmatic/sdk/monitor/POBMonitorWebView$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/monitor/POBMonitorWebView;->a(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/pubmatic/sdk/monitor/POBMonitorWebView;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/monitor/POBMonitorWebView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/monitor/POBMonitorWebView$b;->b:Lcom/pubmatic/sdk/monitor/POBMonitorWebView;

    iput-object p2, p0, Lcom/pubmatic/sdk/monitor/POBMonitorWebView$b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/pubmatic/sdk/monitor/POBMonitorWebView$b;->b:Lcom/pubmatic/sdk/monitor/POBMonitorWebView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/pubmatic/sdk/monitor/POBMonitorWebView$b;->a:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "pmMonitor.broadcast(\'%s\')"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/pubmatic/sdk/monitor/POBMonitorWebView$b$a;

    invoke-direct {v2, p0}, Lcom/pubmatic/sdk/monitor/POBMonitorWebView$b$a;-><init>(Lcom/pubmatic/sdk/monitor/POBMonitorWebView$b;)V

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method
