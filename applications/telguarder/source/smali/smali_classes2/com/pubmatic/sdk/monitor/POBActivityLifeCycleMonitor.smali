.class public Lcom/pubmatic/sdk/monitor/POBActivityLifeCycleMonitor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubmatic/sdk/monitor/POBActivityLifeCycleMonitor$a;
    }
.end annotation


# instance fields
.field private a:Lcom/pubmatic/sdk/monitor/POBActivityLifeCycleMonitor$a;

.field private b:Landroid/app/Application;

.field private c:Z

.field public currentActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pubmatic/sdk/monitor/POBActivityLifeCycleMonitor;->c:Z

    iput-object p1, p0, Lcom/pubmatic/sdk/monitor/POBActivityLifeCycleMonitor;->b:Landroid/app/Application;

    return-void
.end method


# virtual methods
.method public getCurrentActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/monitor/POBActivityLifeCycleMonitor;->currentActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    iget-boolean v0, p0, Lcom/pubmatic/sdk/monitor/POBActivityLifeCycleMonitor;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/monitor/POBActivityLifeCycleMonitor;->a:Lcom/pubmatic/sdk/monitor/POBActivityLifeCycleMonitor$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/pubmatic/sdk/monitor/POBActivityLifeCycleMonitor$a;->a(Landroid/app/Activity;)V

    :cond_0
    iget-object p1, p0, Lcom/pubmatic/sdk/monitor/POBActivityLifeCycleMonitor;->currentActivity:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/pubmatic/sdk/monitor/POBActivityLifeCycleMonitor;->currentActivity:Ljava/lang/ref/WeakReference;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/pubmatic/sdk/monitor/POBActivityLifeCycleMonitor;->c:Z

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/monitor/POBActivityLifeCycleMonitor;->a:Lcom/pubmatic/sdk/monitor/POBActivityLifeCycleMonitor$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/pubmatic/sdk/monitor/POBActivityLifeCycleMonitor$a;->onActivityPaused(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pubmatic/sdk/monitor/POBActivityLifeCycleMonitor;->currentActivity:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/pubmatic/sdk/monitor/POBActivityLifeCycleMonitor;->a:Lcom/pubmatic/sdk/monitor/POBActivityLifeCycleMonitor$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/pubmatic/sdk/monitor/POBActivityLifeCycleMonitor$a;->onActivityResumed(Landroid/app/Activity;)V

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/pubmatic/sdk/monitor/POBActivityLifeCycleMonitor;->c:Z

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/monitor/POBActivityLifeCycleMonitor;->b:Landroid/app/Application;

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubmatic/sdk/monitor/POBActivityLifeCycleMonitor;->currentActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public start(Lcom/pubmatic/sdk/monitor/POBActivityLifeCycleMonitor$a;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/monitor/POBActivityLifeCycleMonitor;->a:Lcom/pubmatic/sdk/monitor/POBActivityLifeCycleMonitor$a;

    iget-object p1, p0, Lcom/pubmatic/sdk/monitor/POBActivityLifeCycleMonitor;->b:Landroid/app/Application;

    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method
