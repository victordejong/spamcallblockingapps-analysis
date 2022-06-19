.class Lcom/pubmatic/sdk/monitor/POBMonitor$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/monitor/POBMonitorWebView$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/monitor/POBMonitor;-><init>(Lcom/pubmatic/sdk/monitor/POBMonitor$f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pubmatic/sdk/monitor/POBMonitor;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/monitor/POBMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/monitor/POBMonitor$b;->a:Lcom/pubmatic/sdk/monitor/POBMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/monitor/POBMonitor$b;->a:Lcom/pubmatic/sdk/monitor/POBMonitor;

    invoke-static {v0}, Lcom/pubmatic/sdk/monitor/POBMonitor;->access$600(Lcom/pubmatic/sdk/monitor/POBMonitor;)Lcom/pubmatic/sdk/monitor/POBActivityLifeCycleMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pubmatic/sdk/monitor/POBActivityLifeCycleMonitor;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/monitor/POBMonitor$b;->a:Lcom/pubmatic/sdk/monitor/POBMonitor;

    invoke-static {v0}, Lcom/pubmatic/sdk/monitor/POBMonitor;->access$600(Lcom/pubmatic/sdk/monitor/POBMonitor;)Lcom/pubmatic/sdk/monitor/POBActivityLifeCycleMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pubmatic/sdk/monitor/POBActivityLifeCycleMonitor;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pubmatic/sdk/monitor/POBMonitor;->access$700(Lcom/pubmatic/sdk/monitor/POBMonitor;Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
