.class Lcom/pubmatic/sdk/monitor/POBMonitor$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/monitor/POBMonitorView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/monitor/POBMonitor;->addButton(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/pubmatic/sdk/monitor/POBMonitor;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/monitor/POBMonitor;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/monitor/POBMonitor$d;->b:Lcom/pubmatic/sdk/monitor/POBMonitor;

    iput-object p2, p0, Lcom/pubmatic/sdk/monitor/POBMonitor$d;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/monitor/POBMonitor$d;->b:Lcom/pubmatic/sdk/monitor/POBMonitor;

    iget-object v1, p0, Lcom/pubmatic/sdk/monitor/POBMonitor$d;->a:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/pubmatic/sdk/monitor/POBMonitor;->access$1100(Lcom/pubmatic/sdk/monitor/POBMonitor;Landroid/app/Activity;)V

    return-void
.end method
