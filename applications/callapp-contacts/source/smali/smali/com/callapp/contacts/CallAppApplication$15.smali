.class Lcom/callapp/contacts/CallAppApplication$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/CallAppApplication;->a(ZLandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Lcom/callapp/contacts/CallAppApplication;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/CallAppApplication;ZLandroid/content/Intent;)V
    .locals 0

    .line 584
    iput-object p1, p0, Lcom/callapp/contacts/CallAppApplication$15;->c:Lcom/callapp/contacts/CallAppApplication;

    iput-boolean p2, p0, Lcom/callapp/contacts/CallAppApplication$15;->a:Z

    iput-object p3, p0, Lcom/callapp/contacts/CallAppApplication$15;->b:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 588
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/CallAppApplication$15;->c:Lcom/callapp/contacts/CallAppApplication;

    invoke-static {v0}, Lcom/callapp/contacts/CallAppApplication;->e(Lcom/callapp/contacts/CallAppApplication;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 589
    :try_start_1
    iget-object v1, p0, Lcom/callapp/contacts/CallAppApplication$15;->c:Lcom/callapp/contacts/CallAppApplication;

    invoke-static {v1}, Lcom/callapp/contacts/CallAppApplication;->g(Lcom/callapp/contacts/CallAppApplication;)Z

    move-result v1

    iget-boolean v2, p0, Lcom/callapp/contacts/CallAppApplication$15;->a:Z

    const/4 v3, 0x1

    if-eq v1, v2, :cond_2

    .line 590
    iget-object v1, p0, Lcom/callapp/contacts/CallAppApplication$15;->c:Lcom/callapp/contacts/CallAppApplication;

    invoke-static {v1, v2}, Lcom/callapp/contacts/CallAppApplication;->a(Lcom/callapp/contacts/CallAppApplication;Z)Z

    .line 591
    iget-boolean v1, p0, Lcom/callapp/contacts/CallAppApplication$15;->a:Z

    if-eqz v1, :cond_1

    .line 592
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager;->get()Lcom/callapp/contacts/manager/NotificationManager;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/NotificationManager;->b(I)Ljava/lang/String;

    .line 594
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v1, v4, :cond_0

    .line 595
    iget-object v1, p0, Lcom/callapp/contacts/CallAppApplication$15;->c:Lcom/callapp/contacts/CallAppApplication;

    invoke-static {v1}, Lcom/callapp/contacts/CallAppApplication;->f(Lcom/callapp/contacts/CallAppApplication;)Landroid/app/Service;

    move-result-object v1

    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager;->get()Lcom/callapp/contacts/manager/NotificationManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/manager/NotificationManager;->getCurrentCallAppInCallNotificationBuilder()Landroidx/core/app/g$e;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/core/app/g$e;->b()Landroid/app/Notification;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v1, v2, v4, v5}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;I)V

    goto :goto_0

    .line 597
    :cond_0
    iget-object v1, p0, Lcom/callapp/contacts/CallAppApplication$15;->c:Lcom/callapp/contacts/CallAppApplication;

    invoke-static {v1}, Lcom/callapp/contacts/CallAppApplication;->f(Lcom/callapp/contacts/CallAppApplication;)Landroid/app/Service;

    move-result-object v1

    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager;->get()Lcom/callapp/contacts/manager/NotificationManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/manager/NotificationManager;->getCurrentCallAppInCallNotificationBuilder()Landroidx/core/app/g$e;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/core/app/g$e;->b()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    goto :goto_0

    .line 600
    :cond_1
    iget-object v1, p0, Lcom/callapp/contacts/CallAppApplication$15;->c:Lcom/callapp/contacts/CallAppApplication;

    invoke-static {v1}, Lcom/callapp/contacts/CallAppApplication;->f(Lcom/callapp/contacts/CallAppApplication;)Landroid/app/Service;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/Service;->stopForeground(Z)V

    .line 604
    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/callapp/contacts/CallAppApplication$15;->a:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/callapp/contacts/CallAppApplication$15;->b:Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    .line 606
    :try_start_2
    iget-object v1, p0, Lcom/callapp/contacts/CallAppApplication$15;->c:Lcom/callapp/contacts/CallAppApplication;

    invoke-static {v1}, Lcom/callapp/contacts/CallAppApplication;->f(Lcom/callapp/contacts/CallAppApplication;)Landroid/app/Service;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/CallAppApplication$15;->b:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/app/Service;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 609
    :catch_0
    :try_start_3
    iget-object v1, p0, Lcom/callapp/contacts/CallAppApplication$15;->b:Landroid/content/Intent;

    const-string v2, "start_foreground"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 610
    iget-object v1, p0, Lcom/callapp/contacts/CallAppApplication$15;->c:Lcom/callapp/contacts/CallAppApplication;

    iget-object v2, p0, Lcom/callapp/contacts/CallAppApplication$15;->b:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/CallAppApplication;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 613
    :cond_3
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    .line 615
    const-class v1, Lcom/callapp/contacts/CallAppApplication;

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    return-void
.end method
