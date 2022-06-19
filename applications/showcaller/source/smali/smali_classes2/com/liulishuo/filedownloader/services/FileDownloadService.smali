.class public Lcom/liulishuo/filedownloader/services/FileDownloadService;
.super Landroid/app/Service;
.source "FileDownloadService.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Registered"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/services/FileDownloadService$SeparateProcessService;,
        Lcom/liulishuo/filedownloader/services/FileDownloadService$SharedMainProcessService;
    }
.end annotation


# instance fields
.field private d:Lcom/liulishuo/filedownloader/services/j;

.field private e:Lc/d/a/b0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "is_foreground"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2
    invoke-static {}, Lcom/liulishuo/filedownloader/download/c;->j()Lcom/liulishuo/filedownloader/download/c;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/download/c;->h()Lcom/liulishuo/filedownloader/services/i;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/services/i;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_2

    .line 5
    new-instance v0, Landroid/app/NotificationChannel;

    .line 6
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/services/i;->c()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/services/i;->d()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v0, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string v2, "notification"

    .line 8
    invoke-virtual {p0, v2}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    if-nez v2, :cond_1

    return-void

    .line 9
    :cond_1
    invoke-virtual {v2, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 10
    :cond_2
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/services/i;->e()I

    move-result v0

    invoke-virtual {p1, p0}, Lcom/liulishuo/filedownloader/services/i;->b(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 11
    sget-boolean v0, Lc/d/a/i0/d;->a:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "run service foreground with config: %s"

    .line 12
    invoke-static {p0, p1, v0}, Lc/d/a/i0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FileDownloadService;->d:Lcom/liulishuo/filedownloader/services/j;

    invoke-interface {v0, p1}, Lcom/liulishuo/filedownloader/services/j;->c0(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    invoke-static {p0}, Lc/d/a/i0/c;->b(Landroid/content/Context;)V

    .line 3
    :try_start_0
    invoke-static {}, Lc/d/a/i0/e;->a()Lc/d/a/i0/e;

    move-result-object v0

    iget v0, v0, Lc/d/a/i0/e;->a:I

    .line 4
    invoke-static {v0}, Lc/d/a/i0/f;->T(I)V

    .line 5
    invoke-static {}, Lc/d/a/i0/e;->a()Lc/d/a/i0/e;

    move-result-object v0

    iget-wide v0, v0, Lc/d/a/i0/e;->b:J

    .line 6
    invoke-static {v0, v1}, Lc/d/a/i0/f;->U(J)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 8
    :goto_0
    new-instance v0, Lcom/liulishuo/filedownloader/services/g;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/services/g;-><init>()V

    .line 9
    invoke-static {}, Lc/d/a/i0/e;->a()Lc/d/a/i0/e;

    move-result-object v1

    iget-boolean v1, v1, Lc/d/a/i0/e;->d:Z

    if-eqz v1, :cond_0

    .line 10
    new-instance v1, Lcom/liulishuo/filedownloader/services/e;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v2, v0}, Lcom/liulishuo/filedownloader/services/e;-><init>(Ljava/lang/ref/WeakReference;Lcom/liulishuo/filedownloader/services/g;)V

    iput-object v1, p0, Lcom/liulishuo/filedownloader/services/FileDownloadService;->d:Lcom/liulishuo/filedownloader/services/j;

    goto :goto_1

    .line 11
    :cond_0
    new-instance v1, Lcom/liulishuo/filedownloader/services/d;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v2, v0}, Lcom/liulishuo/filedownloader/services/d;-><init>(Ljava/lang/ref/WeakReference;Lcom/liulishuo/filedownloader/services/g;)V

    iput-object v1, p0, Lcom/liulishuo/filedownloader/services/FileDownloadService;->d:Lcom/liulishuo/filedownloader/services/j;

    .line 12
    :goto_1
    invoke-static {}, Lc/d/a/b0;->a()V

    .line 13
    new-instance v0, Lc/d/a/b0;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/FileDownloadService;->d:Lcom/liulishuo/filedownloader/services/j;

    check-cast v1, Lc/d/a/g0/b;

    invoke-direct {v0, v1}, Lc/d/a/b0;-><init>(Lc/d/a/g0/b;)V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/services/FileDownloadService;->e:Lc/d/a/b0;

    .line 14
    invoke-virtual {v0}, Lc/d/a/b0;->d()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FileDownloadService;->e:Lc/d/a/b0;

    invoke-virtual {v0}, Lc/d/a/b0;->e()V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    .line 3
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FileDownloadService;->d:Lcom/liulishuo/filedownloader/services/j;

    invoke-interface {v0, p1, p2, p3}, Lcom/liulishuo/filedownloader/services/j;->J0(Landroid/content/Intent;II)V

    .line 2
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/services/FileDownloadService;->a(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method
