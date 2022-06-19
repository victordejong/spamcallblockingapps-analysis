.class Lcom/pubmatic/sdk/monitor/POBMonitor$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/monitor/POBActivityLifeCycleMonitor$a;


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

    iput-object p1, p0, Lcom/pubmatic/sdk/monitor/POBMonitor$c;->a:Lcom/pubmatic/sdk/monitor/POBMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lcom/pubmatic/sdk/monitor/POBMonitor$c;->a:Lcom/pubmatic/sdk/monitor/POBMonitor;

    invoke-static {v0}, Lcom/pubmatic/sdk/monitor/POBMonitor;->access$900(Lcom/pubmatic/sdk/monitor/POBMonitor;)Lcom/pubmatic/sdk/monitor/POBMonitorView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/monitor/POBMonitor$c;->a:Lcom/pubmatic/sdk/monitor/POBMonitor;

    invoke-static {v0}, Lcom/pubmatic/sdk/monitor/POBMonitor;->access$900(Lcom/pubmatic/sdk/monitor/POBMonitor;)Lcom/pubmatic/sdk/monitor/POBMonitorView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/monitor/POBMonitor$c;->a:Lcom/pubmatic/sdk/monitor/POBMonitor;

    invoke-static {v0}, Lcom/pubmatic/sdk/monitor/POBMonitor;->access$900(Lcom/pubmatic/sdk/monitor/POBMonitor;)Lcom/pubmatic/sdk/monitor/POBMonitorView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pubmatic/sdk/monitor/POBMonitorView;->getTouchPointLocation()Landroid/graphics/Point;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pubmatic/sdk/monitor/POBMonitor;->access$1002(Lcom/pubmatic/sdk/monitor/POBMonitor;Landroid/graphics/Point;)Landroid/graphics/Point;

    iget-object v0, p0, Lcom/pubmatic/sdk/monitor/POBMonitor$c;->a:Lcom/pubmatic/sdk/monitor/POBMonitor;

    invoke-static {v0}, Lcom/pubmatic/sdk/monitor/POBMonitor;->access$900(Lcom/pubmatic/sdk/monitor/POBMonitor;)Lcom/pubmatic/sdk/monitor/POBMonitorView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/pubmatic/sdk/monitor/POBMonitor$c;->a:Lcom/pubmatic/sdk/monitor/POBMonitor;

    invoke-static {v1}, Lcom/pubmatic/sdk/monitor/POBMonitor;->access$900(Lcom/pubmatic/sdk/monitor/POBMonitor;)Lcom/pubmatic/sdk/monitor/POBMonitorView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/monitor/POBMonitor$c;->a:Lcom/pubmatic/sdk/monitor/POBMonitor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pubmatic/sdk/monitor/POBMonitor;->access$902(Lcom/pubmatic/sdk/monitor/POBMonitor;Lcom/pubmatic/sdk/monitor/POBMonitorView;)Lcom/pubmatic/sdk/monitor/POBMonitorView;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/monitor/POBMonitor$c;->a:Lcom/pubmatic/sdk/monitor/POBMonitor;

    new-instance v1, Landroid/graphics/Point;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {v0, v1}, Lcom/pubmatic/sdk/monitor/POBMonitor;->access$1002(Lcom/pubmatic/sdk/monitor/POBMonitor;Landroid/graphics/Point;)Landroid/graphics/Point;

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Lcom/pubmatic/sdk/monitor/POBMonitor$c;->a()V

    iget-object p1, p0, Lcom/pubmatic/sdk/monitor/POBMonitor$c;->a:Lcom/pubmatic/sdk/monitor/POBMonitor;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/pubmatic/sdk/monitor/POBMonitor;->access$802(Lcom/pubmatic/sdk/monitor/POBMonitor;Lcom/pubmatic/sdk/monitor/POBMonitorView;)Lcom/pubmatic/sdk/monitor/POBMonitorView;

    iget-object p1, p0, Lcom/pubmatic/sdk/monitor/POBMonitor$c;->a:Lcom/pubmatic/sdk/monitor/POBMonitor;

    invoke-static {p1}, Lcom/pubmatic/sdk/monitor/POBMonitor;->access$600(Lcom/pubmatic/sdk/monitor/POBMonitor;)Lcom/pubmatic/sdk/monitor/POBActivityLifeCycleMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pubmatic/sdk/monitor/POBActivityLifeCycleMonitor;->reset()V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Lcom/pubmatic/sdk/monitor/POBMonitor$c;->a()V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/monitor/POBMonitor$c;->a:Lcom/pubmatic/sdk/monitor/POBMonitor;

    invoke-static {v0, p1}, Lcom/pubmatic/sdk/monitor/POBMonitor;->access$700(Lcom/pubmatic/sdk/monitor/POBMonitor;Landroid/app/Activity;)V

    return-void
.end method
