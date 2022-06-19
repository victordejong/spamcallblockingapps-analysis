.class public Lcom/liulishuo/filedownloader/services/e;
.super Lc/d/a/g0/b$a;
.source "FDServiceSharedHandler.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/services/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/services/e$a;
    }
.end annotation


# instance fields
.field private final d:Lcom/liulishuo/filedownloader/services/g;

.field private final e:Ljava/lang/ref/WeakReference;
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
    .locals 0
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
    iput-object p1, p0, Lcom/liulishuo/filedownloader/services/e;->e:Ljava/lang/ref/WeakReference;

    .line 3
    iput-object p2, p0, Lcom/liulishuo/filedownloader/services/e;->d:Lcom/liulishuo/filedownloader/services/g;

    return-void
.end method


# virtual methods
.method public A0(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/e;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/e;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/services/FileDownloadService;

    invoke-virtual {v0, p1}, Landroid/app/Service;->stopForeground(Z)V

    :cond_0
    return-void
.end method

.method public H4()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/e;->d:Lcom/liulishuo/filedownloader/services/g;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/services/g;->j()Z

    move-result v0

    return v0
.end method

.method public J0(Landroid/content/Intent;II)V
    .locals 0

    .line 1
    invoke-static {}, Lc/d/a/m;->a()Lcom/liulishuo/filedownloader/services/e$a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/liulishuo/filedownloader/services/e$a;->a(Lcom/liulishuo/filedownloader/services/e;)V

    return-void
.end method

.method public X3(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/e;->d:Lcom/liulishuo/filedownloader/services/g;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/services/g;->g(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public Z5(ILandroid/app/Notification;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/e;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/e;->e:Ljava/lang/ref/WeakReference;

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
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/e;->d:Lcom/liulishuo/filedownloader/services/g;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/services/g;->e(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public c0(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public d2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/e;->d:Lcom/liulishuo/filedownloader/services/g;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/services/g;->c()V

    return-void
.end method

.method public e0(I)B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/e;->d:Lcom/liulishuo/filedownloader/services/g;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/services/g;->f(I)B

    move-result p1

    return p1
.end method

.method public f0(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/liulishuo/filedownloader/model/FileDownloadHeader;Z)V
    .locals 11

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lcom/liulishuo/filedownloader/services/e;->d:Lcom/liulishuo/filedownloader/services/g;

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
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/e;->d:Lcom/liulishuo/filedownloader/services/g;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/services/g;->k(I)Z

    move-result p1

    return p1
.end method

.method public n1(Lc/d/a/g0/a;)V
    .locals 0

    return-void
.end method

.method public t2(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/e;->d:Lcom/liulishuo/filedownloader/services/g;

    invoke-virtual {v0, p1, p2}, Lcom/liulishuo/filedownloader/services/g;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public t6()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/e;->d:Lcom/liulishuo/filedownloader/services/g;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/services/g;->l()V

    return-void
.end method

.method public y3(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/e;->d:Lcom/liulishuo/filedownloader/services/g;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/services/g;->d(I)Z

    move-result p1

    return p1
.end method

.method public z2(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/e;->d:Lcom/liulishuo/filedownloader/services/g;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/services/g;->m(I)Z

    move-result p1

    return p1
.end method

.method public z4(Lc/d/a/g0/a;)V
    .locals 0

    return-void
.end method
