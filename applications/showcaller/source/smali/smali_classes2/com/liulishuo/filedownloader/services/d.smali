.class public Lcom/liulishuo/filedownloader/services/d;
.super Lc/d/a/g0/b$a;
.source "FDServiceSeparateHandler.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/message/b$b;
.implements Lcom/liulishuo/filedownloader/services/j;


# instance fields
.field private final d:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lc/d/a/g0/a;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/liulishuo/filedownloader/services/g;

.field private final f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/liulishuo/filedownloader/services/FileDownloadService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;Lcom/liulishuo/filedownloader/services/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/liulishuo/filedownloader/services/FileDownloadService;",
            ">;",
            "Lcom/liulishuo/filedownloader/services/g;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lc/d/a/g0/b$a;-><init>()V

    .line 2
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->d:Landroid/os/RemoteCallbackList;

    .line 3
    iput-object p1, p0, Lcom/liulishuo/filedownloader/services/d;->f:Ljava/lang/ref/WeakReference;

    .line 4
    iput-object p2, p0, Lcom/liulishuo/filedownloader/services/d;->e:Lcom/liulishuo/filedownloader/services/g;

    .line 5
    invoke-static {}, Lcom/liulishuo/filedownloader/message/b;->a()Lcom/liulishuo/filedownloader/message/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/liulishuo/filedownloader/message/b;->c(Lcom/liulishuo/filedownloader/message/b$b;)V

    return-void
.end method

.method private declared-synchronized a3(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)I
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->d:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 2
    :try_start_1
    iget-object v3, p0, Lcom/liulishuo/filedownloader/services/d;->d:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lc/d/a/g0/a;

    invoke-interface {v3, p1}, Lc/d/a/g0/a;->g4(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_2
    const-string v2, "callback error"

    new-array v1, v1, [Ljava/lang/Object;

    .line 3
    invoke-static {p0, p1, v2, v1}, Lc/d/a/i0/d;->c(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4
    :try_start_3
    iget-object p1, p0, Lcom/liulishuo/filedownloader/services/d;->d:Landroid/os/RemoteCallbackList;

    :goto_1
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_3

    :goto_2
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->d:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 5
    throw p1

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/liulishuo/filedownloader/services/d;->d:Landroid/os/RemoteCallbackList;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 7
    :goto_3
    monitor-exit p0

    return v0

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public A0(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->f:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/services/FileDownloadService;

    invoke-virtual {v0, p1}, Landroid/app/Service;->stopForeground(Z)V

    :cond_0
    return-void
.end method

.method public D0(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/services/d;->a3(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)I

    return-void
.end method

.method public H4()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->e:Lcom/liulishuo/filedownloader/services/g;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/services/g;->j()Z

    move-result v0

    return v0
.end method

.method public J0(Landroid/content/Intent;II)V
    .locals 0

    return-void
.end method

.method public X3(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->e:Lcom/liulishuo/filedownloader/services/g;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/services/g;->g(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public Z5(ILandroid/app/Notification;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->f:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/services/FileDownloadService;

    invoke-virtual {v0, p1, p2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method

.method public a5(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->e:Lcom/liulishuo/filedownloader/services/g;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/services/g;->e(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public c0(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public d2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->e:Lcom/liulishuo/filedownloader/services/g;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/services/g;->c()V

    return-void
.end method

.method public e0(I)B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->e:Lcom/liulishuo/filedownloader/services/g;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/services/g;->f(I)B

    move-result p1

    return p1
.end method

.method public f0(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/liulishuo/filedownloader/model/FileDownloadHeader;Z)V
    .locals 11

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lcom/liulishuo/filedownloader/services/d;->e:Lcom/liulishuo/filedownloader/services/g;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Lcom/liulishuo/filedownloader/services/g;->n(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/liulishuo/filedownloader/model/FileDownloadHeader;Z)V

    return-void
.end method

.method public l0(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->e:Lcom/liulishuo/filedownloader/services/g;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/services/g;->k(I)Z

    move-result p1

    return p1
.end method

.method public n1(Lc/d/a/g0/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->d:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public t2(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->e:Lcom/liulishuo/filedownloader/services/g;

    invoke-virtual {v0, p1, p2}, Lcom/liulishuo/filedownloader/services/g;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public t6()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->e:Lcom/liulishuo/filedownloader/services/g;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/services/g;->l()V

    return-void
.end method

.method public y3(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->e:Lcom/liulishuo/filedownloader/services/g;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/services/g;->d(I)Z

    move-result p1

    return p1
.end method

.method public z2(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->e:Lcom/liulishuo/filedownloader/services/g;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/services/g;->m(I)Z

    move-result p1

    return p1
.end method

.method public z4(Lc/d/a/g0/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->d:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method
