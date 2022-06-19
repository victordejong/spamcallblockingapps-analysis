.class Lcom/callapp/contacts/CallAppApplication$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/CallAppApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/callapp/contacts/CallAppApplication;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/CallAppApplication;Ljava/lang/Runnable;)V
    .locals 0

    .line 557
    iput-object p1, p0, Lcom/callapp/contacts/CallAppApplication$14;->b:Lcom/callapp/contacts/CallAppApplication;

    iput-object p2, p0, Lcom/callapp/contacts/CallAppApplication$14;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 560
    instance-of p1, p2, Lcom/callapp/contacts/service/CallAppService$LocalCallAppServiceBinder;

    if-eqz p1, :cond_0

    .line 561
    iget-object p1, p0, Lcom/callapp/contacts/CallAppApplication$14;->b:Lcom/callapp/contacts/CallAppApplication;

    check-cast p2, Lcom/callapp/contacts/service/CallAppService$LocalCallAppServiceBinder;

    invoke-virtual {p2}, Lcom/callapp/contacts/service/CallAppService$LocalCallAppServiceBinder;->getService()Lcom/callapp/contacts/service/CallAppService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/callapp/contacts/CallAppApplication;->a(Lcom/callapp/contacts/CallAppApplication;Landroid/app/Service;)Landroid/app/Service;

    .line 562
    iget-object p1, p0, Lcom/callapp/contacts/CallAppApplication$14;->a:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 563
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 570
    iget-object p1, p0, Lcom/callapp/contacts/CallAppApplication$14;->b:Lcom/callapp/contacts/CallAppApplication;

    invoke-static {p1}, Lcom/callapp/contacts/CallAppApplication;->e(Lcom/callapp/contacts/CallAppApplication;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 571
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/CallAppApplication$14;->b:Lcom/callapp/contacts/CallAppApplication;

    invoke-static {v0}, Lcom/callapp/contacts/CallAppApplication;->f(Lcom/callapp/contacts/CallAppApplication;)Landroid/app/Service;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/callapp/contacts/CallAppApplication$14;->b:Lcom/callapp/contacts/CallAppApplication;

    invoke-static {v0}, Lcom/callapp/contacts/CallAppApplication;->f(Lcom/callapp/contacts/CallAppApplication;)Landroid/app/Service;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Service;->stopForeground(Z)V

    .line 573
    iget-object v0, p0, Lcom/callapp/contacts/CallAppApplication$14;->b:Lcom/callapp/contacts/CallAppApplication;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->a(Lcom/callapp/contacts/CallAppApplication;Landroid/app/Service;)Landroid/app/Service;

    .line 574
    iget-object v0, p0, Lcom/callapp/contacts/CallAppApplication$14;->b:Lcom/callapp/contacts/CallAppApplication;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->a(Lcom/callapp/contacts/CallAppApplication;Z)Z

    .line 576
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
