.class public Lc/d/a/f0/c;
.super Ljava/lang/Object;
.source "RemitDatabase.java"

# interfaces
.implements Lc/d/a/f0/a;


# instance fields
.field private final a:Lc/d/a/f0/b;

.field private final b:Lc/d/a/f0/d;

.field private c:Landroid/os/Handler;

.field private final d:J

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile g:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/d/a/f0/c;->e:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lc/d/a/f0/c;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    new-instance v0, Lc/d/a/f0/b;

    invoke-direct {v0}, Lc/d/a/f0/b;-><init>()V

    iput-object v0, p0, Lc/d/a/f0/c;->a:Lc/d/a/f0/b;

    .line 5
    new-instance v0, Lc/d/a/f0/d;

    invoke-direct {v0}, Lc/d/a/f0/d;-><init>()V

    iput-object v0, p0, Lc/d/a/f0/c;->b:Lc/d/a/f0/d;

    .line 6
    invoke-static {}, Lc/d/a/i0/e;->a()Lc/d/a/i0/e;

    move-result-object v0

    iget-wide v0, v0, Lc/d/a/i0/e;->b:J

    iput-wide v0, p0, Lc/d/a/f0/c;->d:J

    .line 7
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RemitHandoverToDB"

    .line 8
    invoke-static {v1}, Lc/d/a/i0/f;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 10
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v2, Lc/d/a/f0/c$a;

    invoke-direct {v2, p0}, Lc/d/a/f0/c$a;-><init>(Lc/d/a/f0/c;)V

    invoke-direct {v1, v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lc/d/a/f0/c;->c:Landroid/os/Handler;

    return-void
.end method

.method static synthetic r(Lc/d/a/f0/c;)Ljava/lang/Thread;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/d/a/f0/c;->g:Ljava/lang/Thread;

    return-object p0
.end method

.method static synthetic s(Lc/d/a/f0/c;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .line 1
    iput-object p1, p0, Lc/d/a/f0/c;->g:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic t(Lc/d/a/f0/c;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/d/a/f0/c;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic u(Lc/d/a/f0/c;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lc/d/a/f0/c;->y(I)V

    return-void
.end method

.method static synthetic v(Lc/d/a/f0/c;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/d/a/f0/c;->e:Ljava/util/List;

    return-object p0
.end method

.method private w(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/f0/c;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    iget-object v0, p0, Lc/d/a/f0/c;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, Lc/d/a/f0/c;->g:Ljava/lang/Thread;

    .line 4
    iget-object p1, p0, Lc/d/a/f0/c;->c:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5
    invoke-static {}, Ljava/util/concurrent/locks/LockSupport;->park()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Lc/d/a/f0/c;->y(I)V

    :goto_0
    return-void
.end method

.method private x(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/f0/c;->e:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private y(I)V
    .locals 3

    .line 1
    sget-boolean v0, Lc/d/a/i0/d;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "sync cache to db %d"

    invoke-static {p0, v1, v0}, Lc/d/a/i0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lc/d/a/f0/c;->b:Lc/d/a/f0/d;

    iget-object v1, p0, Lc/d/a/f0/c;->a:Lc/d/a/f0/b;

    invoke-virtual {v1, p1}, Lc/d/a/f0/b;->o(I)Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/d/a/f0/d;->j(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V

    .line 4
    iget-object v0, p0, Lc/d/a/f0/c;->a:Lc/d/a/f0/b;

    invoke-virtual {v0, p1}, Lc/d/a/f0/b;->n(I)Ljava/util/List;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lc/d/a/f0/c;->b:Lc/d/a/f0/d;

    invoke-virtual {v1, p1}, Lc/d/a/f0/d;->h(I)V

    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/model/a;

    .line 7
    iget-object v1, p0, Lc/d/a/f0/c;->b:Lc/d/a/f0/d;

    invoke-virtual {v1, v0}, Lc/d/a/f0/d;->g(Lcom/liulishuo/filedownloader/model/a;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/f0/c;->a:Lc/d/a/f0/b;

    invoke-virtual {v0, p1}, Lc/d/a/f0/b;->a(I)V

    .line 2
    invoke-direct {p0, p1}, Lc/d/a/f0/c;->x(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lc/d/a/f0/c;->b:Lc/d/a/f0/d;

    invoke-virtual {v0, p1}, Lc/d/a/f0/d;->a(I)V

    return-void
.end method

.method public b()Lc/d/a/f0/a$a;
    .locals 3

    .line 1
    iget-object v0, p0, Lc/d/a/f0/c;->b:Lc/d/a/f0/d;

    iget-object v1, p0, Lc/d/a/f0/c;->a:Lc/d/a/f0/b;

    iget-object v2, v1, Lc/d/a/f0/b;->a:Landroid/util/SparseArray;

    iget-object v1, v1, Lc/d/a/f0/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v2, v1}, Lc/d/a/f0/d;->v(Landroid/util/SparseArray;Landroid/util/SparseArray;)Lc/d/a/f0/a$a;

    move-result-object v0

    return-object v0
.end method

.method public c(ILjava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/f0/c;->a:Lc/d/a/f0/b;

    invoke-virtual {v0, p1, p2}, Lc/d/a/f0/b;->c(ILjava/lang/Throwable;)V

    .line 2
    invoke-direct {p0, p1}, Lc/d/a/f0/c;->x(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lc/d/a/f0/c;->b:Lc/d/a/f0/d;

    invoke-virtual {v0, p1, p2}, Lc/d/a/f0/d;->c(ILjava/lang/Throwable;)V

    return-void
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/f0/c;->a:Lc/d/a/f0/b;

    invoke-virtual {v0}, Lc/d/a/f0/b;->clear()V

    .line 2
    iget-object v0, p0, Lc/d/a/f0/c;->b:Lc/d/a/f0/d;

    invoke-virtual {v0}, Lc/d/a/f0/d;->clear()V

    return-void
.end method

.method public d(IJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/d/a/f0/c;->a:Lc/d/a/f0/b;

    invoke-virtual {v0, p1, p2, p3}, Lc/d/a/f0/b;->d(IJ)V

    .line 2
    invoke-direct {p0, p1}, Lc/d/a/f0/c;->x(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lc/d/a/f0/c;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4
    iget-object v0, p0, Lc/d/a/f0/c;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/f0/c;->g:Ljava/lang/Thread;

    .line 6
    iget-object v0, p0, Lc/d/a/f0/c;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 7
    invoke-static {}, Ljava/util/concurrent/locks/LockSupport;->park()V

    .line 8
    iget-object v0, p0, Lc/d/a/f0/c;->b:Lc/d/a/f0/d;

    invoke-virtual {v0, p1, p2, p3}, Lc/d/a/f0/d;->d(IJ)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lc/d/a/f0/c;->b:Lc/d/a/f0/d;

    invoke-virtual {v0, p1, p2, p3}, Lc/d/a/f0/d;->d(IJ)V

    .line 10
    :cond_1
    :goto_0
    iget-object p2, p0, Lc/d/a/f0/c;->e:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public e(ILjava/lang/String;JJI)V
    .locals 10

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lc/d/a/f0/c;->a:Lc/d/a/f0/b;

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lc/d/a/f0/b;->e(ILjava/lang/String;JJI)V

    .line 2
    invoke-direct {p0, p1}, Lc/d/a/f0/c;->x(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v2, v0, Lc/d/a/f0/c;->b:Lc/d/a/f0/d;

    move v3, p1

    move-object v4, p2

    move-wide v5, p3

    move-wide v7, p5

    move/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lc/d/a/f0/d;->e(ILjava/lang/String;JJI)V

    return-void
.end method

.method public f(IIJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/f0/c;->a:Lc/d/a/f0/b;

    invoke-virtual {v0, p1, p2, p3, p4}, Lc/d/a/f0/b;->f(IIJ)V

    .line 2
    invoke-direct {p0, p1}, Lc/d/a/f0/c;->x(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lc/d/a/f0/c;->b:Lc/d/a/f0/d;

    invoke-virtual {v0, p1, p2, p3, p4}, Lc/d/a/f0/d;->f(IIJ)V

    return-void
.end method

.method public g(Lcom/liulishuo/filedownloader/model/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/f0/c;->a:Lc/d/a/f0/b;

    invoke-virtual {v0, p1}, Lc/d/a/f0/b;->g(Lcom/liulishuo/filedownloader/model/a;)V

    .line 2
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/a;->c()I

    move-result v0

    .line 3
    invoke-direct {p0, v0}, Lc/d/a/f0/c;->x(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lc/d/a/f0/c;->b:Lc/d/a/f0/d;

    invoke-virtual {v0, p1}, Lc/d/a/f0/d;->g(Lcom/liulishuo/filedownloader/model/a;)V

    return-void
.end method

.method public h(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/f0/c;->a:Lc/d/a/f0/b;

    invoke-virtual {v0, p1}, Lc/d/a/f0/b;->h(I)V

    .line 2
    invoke-direct {p0, p1}, Lc/d/a/f0/c;->x(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lc/d/a/f0/c;->b:Lc/d/a/f0/d;

    invoke-virtual {v0, p1}, Lc/d/a/f0/d;->h(I)V

    return-void
.end method

.method public i(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/d/a/f0/c;->c:Landroid/os/Handler;

    iget-wide v1, p0, Lc/d/a/f0/c;->d:J

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public j(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/f0/c;->a:Lc/d/a/f0/b;

    invoke-virtual {v0, p1}, Lc/d/a/f0/b;->j(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V

    .line 2
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->e()I

    move-result v0

    invoke-direct {p0, v0}, Lc/d/a/f0/c;->x(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lc/d/a/f0/c;->b:Lc/d/a/f0/d;

    invoke-virtual {v0, p1}, Lc/d/a/f0/d;->j(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V

    return-void
.end method

.method public k(ILjava/lang/Throwable;J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/f0/c;->a:Lc/d/a/f0/b;

    invoke-virtual {v0, p1, p2, p3, p4}, Lc/d/a/f0/b;->k(ILjava/lang/Throwable;J)V

    .line 2
    invoke-direct {p0, p1}, Lc/d/a/f0/c;->x(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lc/d/a/f0/c;->w(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lc/d/a/f0/c;->b:Lc/d/a/f0/d;

    invoke-virtual {v0, p1, p2, p3, p4}, Lc/d/a/f0/d;->k(ILjava/lang/Throwable;J)V

    .line 5
    iget-object p2, p0, Lc/d/a/f0/c;->e:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public l(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/f0/c;->a:Lc/d/a/f0/b;

    invoke-virtual {v0, p1, p2, p3}, Lc/d/a/f0/b;->l(IJ)V

    .line 2
    invoke-direct {p0, p1}, Lc/d/a/f0/c;->x(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lc/d/a/f0/c;->b:Lc/d/a/f0/d;

    invoke-virtual {v0, p1, p2, p3}, Lc/d/a/f0/d;->l(IJ)V

    return-void
.end method

.method public m(IJLjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lc/d/a/f0/c;->a:Lc/d/a/f0/b;

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lc/d/a/f0/b;->m(IJLjava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lc/d/a/f0/c;->x(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lc/d/a/f0/c;->b:Lc/d/a/f0/d;

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lc/d/a/f0/d;->m(IJLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public n(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/liulishuo/filedownloader/model/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/d/a/f0/c;->a:Lc/d/a/f0/b;

    invoke-virtual {v0, p1}, Lc/d/a/f0/b;->n(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public o(I)Lcom/liulishuo/filedownloader/model/FileDownloadModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/f0/c;->a:Lc/d/a/f0/b;

    invoke-virtual {v0, p1}, Lc/d/a/f0/b;->o(I)Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    move-result-object p1

    return-object p1
.end method

.method public p(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/f0/c;->a:Lc/d/a/f0/b;

    invoke-virtual {v0, p1, p2}, Lc/d/a/f0/b;->p(II)V

    .line 2
    invoke-direct {p0, p1}, Lc/d/a/f0/c;->x(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lc/d/a/f0/c;->b:Lc/d/a/f0/d;

    invoke-virtual {v0, p1, p2}, Lc/d/a/f0/d;->p(II)V

    return-void
.end method

.method public q(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/f0/c;->a:Lc/d/a/f0/b;

    invoke-virtual {v0, p1, p2, p3}, Lc/d/a/f0/b;->q(IJ)V

    .line 2
    invoke-direct {p0, p1}, Lc/d/a/f0/c;->x(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lc/d/a/f0/c;->w(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lc/d/a/f0/c;->b:Lc/d/a/f0/d;

    invoke-virtual {v0, p1, p2, p3}, Lc/d/a/f0/d;->q(IJ)V

    .line 5
    iget-object p2, p0, Lc/d/a/f0/c;->e:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public remove(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/f0/c;->b:Lc/d/a/f0/d;

    invoke-virtual {v0, p1}, Lc/d/a/f0/d;->remove(I)Z

    .line 2
    iget-object v0, p0, Lc/d/a/f0/c;->a:Lc/d/a/f0/b;

    invoke-virtual {v0, p1}, Lc/d/a/f0/b;->remove(I)Z

    move-result p1

    return p1
.end method
