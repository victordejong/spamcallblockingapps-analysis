.class Lcom/pubmatic/sdk/monitor/POBMonitor$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/webrendering/ui/POBFullScreenDialog$OnDialogCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/monitor/POBMonitor;->showDialog(Landroid/app/Activity;)V
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

    iput-object p1, p0, Lcom/pubmatic/sdk/monitor/POBMonitor$e;->a:Lcom/pubmatic/sdk/monitor/POBMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/monitor/POBMonitor$e;->a:Lcom/pubmatic/sdk/monitor/POBMonitor;

    invoke-static {v0}, Lcom/pubmatic/sdk/monitor/POBMonitor;->access$500(Lcom/pubmatic/sdk/monitor/POBMonitor;)Lcom/pubmatic/sdk/monitor/POBMonitorWebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/pubmatic/sdk/monitor/POBMonitor$e;->a:Lcom/pubmatic/sdk/monitor/POBMonitor;

    invoke-static {v1}, Lcom/pubmatic/sdk/monitor/POBMonitor;->access$500(Lcom/pubmatic/sdk/monitor/POBMonitor;)Lcom/pubmatic/sdk/monitor/POBMonitorWebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/monitor/POBMonitor$e;->a:Lcom/pubmatic/sdk/monitor/POBMonitor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pubmatic/sdk/monitor/POBMonitor;->access$1202(Lcom/pubmatic/sdk/monitor/POBMonitor;Lcom/pubmatic/sdk/webrendering/ui/POBFullScreenDialog;)Lcom/pubmatic/sdk/webrendering/ui/POBFullScreenDialog;

    return-void
.end method
