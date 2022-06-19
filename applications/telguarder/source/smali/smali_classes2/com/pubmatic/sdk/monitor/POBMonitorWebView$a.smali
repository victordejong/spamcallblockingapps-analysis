.class Lcom/pubmatic/sdk/monitor/POBMonitorWebView$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/monitor/POBMonitorWebView$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/monitor/POBMonitorWebView;->initWebView(Lcom/pubmatic/sdk/monitor/POBMonitorWebView$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pubmatic/sdk/monitor/POBMonitorWebView$e;

.field final synthetic b:Lcom/pubmatic/sdk/monitor/POBMonitorWebView;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/monitor/POBMonitorWebView;Lcom/pubmatic/sdk/monitor/POBMonitorWebView$e;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/monitor/POBMonitorWebView$a;->b:Lcom/pubmatic/sdk/monitor/POBMonitorWebView;

    iput-object p2, p0, Lcom/pubmatic/sdk/monitor/POBMonitorWebView$a;->a:Lcom/pubmatic/sdk/monitor/POBMonitorWebView$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/monitor/POBMonitorWebView$a;->b:Lcom/pubmatic/sdk/monitor/POBMonitorWebView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/pubmatic/sdk/monitor/POBMonitorWebView;->isLoaded:Z

    iget-object v0, p0, Lcom/pubmatic/sdk/monitor/POBMonitorWebView$a;->a:Lcom/pubmatic/sdk/monitor/POBMonitorWebView$e;

    invoke-interface {v0}, Lcom/pubmatic/sdk/monitor/POBMonitorWebView$e;->a()V

    return-void
.end method
