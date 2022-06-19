.class Lc/d/a/o;
.super Lcom/liulishuo/filedownloader/services/a;
.source "FileDownloadServiceUIGuard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d/a/o$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/liulishuo/filedownloader/services/a<",
        "Lc/d/a/o$a;",
        "Lc/d/a/g0/b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    const-class v0, Lcom/liulishuo/filedownloader/services/FileDownloadService$SeparateProcessService;

    invoke-direct {p0, v0}, Lcom/liulishuo/filedownloader/services/a;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public A0(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/services/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Lc/d/a/i0/a;->e(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/services/a;->e()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lc/d/a/g0/b;

    invoke-interface {v1, p1}, Lc/d/a/g0/b;->A0(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 4
    :try_start_1
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :goto_0
    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/services/a;->d:Z

    return-void

    :goto_1
    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/services/a;->d:Z

    .line 6
    throw p1
.end method

.method protected bridge synthetic a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/d/a/o;->i(Landroid/os/IBinder;)Lc/d/a/g0/b;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic d()Landroid/os/Binder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/d/a/o;->j()Lc/d/a/o$a;

    move-result-object v0

    return-object v0
.end method

.method public e0(I)B
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/services/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Lc/d/a/i0/a;->a(I)B

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/services/a;->e()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lc/d/a/g0/b;

    invoke-interface {v1, p1}, Lc/d/a/g0/b;->e0(I)B

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return v0
.end method

.method protected bridge synthetic f(Landroid/os/IInterface;Landroid/os/Binder;)V
    .locals 0

    .line 1
    check-cast p1, Lc/d/a/g0/b;

    check-cast p2, Lc/d/a/o$a;

    invoke-virtual {p0, p1, p2}, Lc/d/a/o;->k(Lc/d/a/g0/b;Lc/d/a/o$a;)V

    return-void
.end method

.method public f0(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/liulishuo/filedownloader/model/FileDownloadHeader;Z)Z
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/services/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1, p2, p3}, Lc/d/a/i0/a;->d(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/services/a;->e()Landroid/os/IInterface;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lc/d/a/g0/b;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Lc/d/a/g0/b;->f0(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/liulishuo/filedownloader/model/FileDownloadHeader;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic h(Landroid/os/IInterface;Landroid/os/Binder;)V
    .locals 0

    .line 1
    check-cast p1, Lc/d/a/g0/b;

    check-cast p2, Lc/d/a/o$a;

    invoke-virtual {p0, p1, p2}, Lc/d/a/o;->l(Lc/d/a/g0/b;Lc/d/a/o$a;)V

    return-void
.end method

.method protected i(Landroid/os/IBinder;)Lc/d/a/g0/b;
    .locals 0

    .line 1
    invoke-static {p1}, Lc/d/a/g0/b$a;->m2(Landroid/os/IBinder;)Lc/d/a/g0/b;

    move-result-object p1

    return-object p1
.end method

.method protected j()Lc/d/a/o$a;
    .locals 1

    .line 1
    new-instance v0, Lc/d/a/o$a;

    invoke-direct {v0}, Lc/d/a/o$a;-><init>()V

    return-object v0
.end method

.method protected k(Lc/d/a/g0/b;Lc/d/a/o$a;)V
    .locals 0

    .line 1
    invoke-interface {p1, p2}, Lc/d/a/g0/b;->n1(Lc/d/a/g0/a;)V

    return-void
.end method

.method protected l(Lc/d/a/g0/b;Lc/d/a/o$a;)V
    .locals 0

    .line 1
    invoke-interface {p1, p2}, Lc/d/a/g0/b;->z4(Lc/d/a/g0/a;)V

    return-void
.end method

.method public l0(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/services/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Lc/d/a/i0/a;->c(I)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/services/a;->e()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lc/d/a/g0/b;

    invoke-interface {v0, p1}, Lc/d/a/g0/b;->l0(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method
