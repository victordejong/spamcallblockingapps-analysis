.class public Lcom/liulishuo/filedownloader/services/d;
.super Le/e/a/f0/b$a;
.source ""

# interfaces
.implements Lcom/liulishuo/filedownloader/message/b$b;
.implements Lcom/liulishuo/filedownloader/services/j;


# instance fields
.field private final b:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Le/e/a/f0/a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/liulishuo/filedownloader/services/g;

.field private final d:Ljava/lang/ref/WeakReference;
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

    invoke-direct {p0}, Le/e/a/f0/b$a;-><init>()V

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->b:Landroid/os/RemoteCallbackList;

    iput-object p1, p0, Lcom/liulishuo/filedownloader/services/d;->d:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/liulishuo/filedownloader/services/d;->c:Lcom/liulishuo/filedownloader/services/g;

    invoke-static {}, Lcom/liulishuo/filedownloader/message/b;->a()Lcom/liulishuo/filedownloader/message/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/liulishuo/filedownloader/message/b;->c(Lcom/liulishuo/filedownloader/message/b$b;)V

    return-void
.end method

.method private declared-synchronized w4(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)I
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->b:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    :try_start_1
    iget-object v3, p0, Lcom/liulishuo/filedownloader/services/d;->b:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Le/e/a/f0/a;

    invoke-interface {v3, p1}, Le/e/a/f0/a;->j2(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
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

    invoke-static {p0, p1, v2, v1}, Le/e/a/h0/d;->c(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object p1, p0, Lcom/liulishuo/filedownloader/services/d;->b:Landroid/os/RemoteCallbackList;

    :goto_1
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_3

    :goto_2
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->b:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw p1

    :cond_0
    iget-object p1, p0, Lcom/liulishuo/filedownloader/services/d;->b:Landroid/os/RemoteCallbackList;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :goto_3
    monitor-exit p0

    return v0

    :catchall_1
    move-exception p1

    monitor-exit p0

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method


# virtual methods
.method public E3(I)J
    .locals 2

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->c:Lcom/liulishuo/filedownloader/services/g;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/services/g;->e(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public M1(Landroid/content/Intent;II)V
    .locals 0

    return-void
.end method

.method public N4(I)Z
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->c:Lcom/liulishuo/filedownloader/services/g;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/services/g;->m(I)Z

    move-result p1

    return p1
.end method

.method public O0(I)Z
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->c:Lcom/liulishuo/filedownloader/services/g;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/services/g;->d(I)Z

    move-result p1

    return p1
.end method

.method public P2(Le/e/a/f0/a;)V
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->b:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method public P3()V
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->c:Lcom/liulishuo/filedownloader/services/g;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/services/g;->c()V

    return-void
.end method

.method public U1(I)J
    .locals 2

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->c:Lcom/liulishuo/filedownloader/services/g;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/services/g;->g(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public W2()Z
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->c:Lcom/liulishuo/filedownloader/services/g;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/services/g;->j()Z

    move-result v0

    return v0
.end method

.method public f0(I)B
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->c:Lcom/liulishuo/filedownloader/services/g;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/services/g;->f(I)B

    move-result p1

    return p1
.end method

.method public f2(Le/e/a/f0/a;)V
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->b:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public f6()V
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->c:Lcom/liulishuo/filedownloader/services/g;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/services/g;->l()V

    return-void
.end method

.method public h0(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public i0(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/liulishuo/filedownloader/model/FileDownloadHeader;Z)V
    .locals 11

    move-object v0, p0

    iget-object v1, v0, Lcom/liulishuo/filedownloader/services/d;->c:Lcom/liulishuo/filedownloader/services/g;

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

.method public n0(Z)V
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/services/FileDownloadService;

    invoke-virtual {v0, p1}, Landroid/app/Service;->stopForeground(Z)V

    :cond_0
    return-void
.end method

.method public r1(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/services/d;->w4(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)I

    return-void
.end method

.method public t5(ILandroid/app/Notification;)V
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/services/FileDownloadService;

    invoke-virtual {v0, p1, p2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method

.method public v0(I)Z
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->c:Lcom/liulishuo/filedownloader/services/g;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/services/g;->k(I)Z

    move-result p1

    return p1
.end method

.method public x4(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->c:Lcom/liulishuo/filedownloader/services/g;

    invoke-virtual {v0, p1, p2}, Lcom/liulishuo/filedownloader/services/g;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
