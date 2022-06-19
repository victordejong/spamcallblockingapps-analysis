.class public Le/e/a/e0/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/e/a/e0/a;


# instance fields
.field private final a:Le/e/a/e0/b;

.field private final b:Le/e/a/e0/d;

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/e/a/e0/c;->e:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Le/e/a/e0/c;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Le/e/a/e0/b;

    invoke-direct {v0}, Le/e/a/e0/b;-><init>()V

    iput-object v0, p0, Le/e/a/e0/c;->a:Le/e/a/e0/b;

    new-instance v0, Le/e/a/e0/d;

    invoke-direct {v0}, Le/e/a/e0/d;-><init>()V

    iput-object v0, p0, Le/e/a/e0/c;->b:Le/e/a/e0/d;

    invoke-static {}, Le/e/a/h0/e;->a()Le/e/a/h0/e;

    move-result-object v0

    iget-wide v0, v0, Le/e/a/h0/e;->b:J

    iput-wide v0, p0, Le/e/a/e0/c;->d:J

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RemitHandoverToDB"

    invoke-static {v1}, Le/e/a/h0/f;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v2, Le/e/a/e0/c$a;

    invoke-direct {v2, p0}, Le/e/a/e0/c$a;-><init>(Le/e/a/e0/c;)V

    invoke-direct {v1, v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Le/e/a/e0/c;->c:Landroid/os/Handler;

    return-void
.end method

.method static synthetic r(Le/e/a/e0/c;)Ljava/lang/Thread;
    .locals 0

    iget-object p0, p0, Le/e/a/e0/c;->g:Ljava/lang/Thread;

    return-object p0
.end method

.method static synthetic s(Le/e/a/e0/c;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Le/e/a/e0/c;->g:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic t(Le/e/a/e0/c;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Le/e/a/e0/c;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic u(Le/e/a/e0/c;I)V
    .locals 0

    invoke-direct {p0, p1}, Le/e/a/e0/c;->y(I)V

    return-void
.end method

.method static synthetic v(Le/e/a/e0/c;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Le/e/a/e0/c;->e:Ljava/util/List;

    return-object p0
.end method

.method private w(I)V
    .locals 1

    iget-object v0, p0, Le/e/a/e0/c;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Le/e/a/e0/c;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, Le/e/a/e0/c;->g:Ljava/lang/Thread;

    iget-object p1, p0, Le/e/a/e0/c;->c:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-static {}, Ljava/util/concurrent/locks/LockSupport;->park()V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Le/e/a/e0/c;->y(I)V

    :goto_0
    return-void
.end method

.method private x(I)Z
    .locals 1

    iget-object v0, p0, Le/e/a/e0/c;->e:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private y(I)V
    .locals 3

    sget-boolean v0, Le/e/a/h0/d;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "sync cache to db %d"

    invoke-static {p0, v1, v0}, Le/e/a/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Le/e/a/e0/c;->b:Le/e/a/e0/d;

    iget-object v1, p0, Le/e/a/e0/c;->a:Le/e/a/e0/b;

    invoke-virtual {v1, p1}, Le/e/a/e0/b;->o(I)Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/e/a/e0/d;->h(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V

    iget-object v0, p0, Le/e/a/e0/c;->a:Le/e/a/e0/b;

    invoke-virtual {v0, p1}, Le/e/a/e0/b;->n(I)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Le/e/a/e0/c;->b:Le/e/a/e0/d;

    invoke-virtual {v1, p1}, Le/e/a/e0/d;->c(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/model/a;

    iget-object v1, p0, Le/e/a/e0/c;->b:Le/e/a/e0/d;

    invoke-virtual {v1, v0}, Le/e/a/e0/d;->b(Lcom/liulishuo/filedownloader/model/a;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Le/e/a/e0/c;->a:Le/e/a/e0/b;

    invoke-virtual {v0, p1}, Le/e/a/e0/b;->a(I)V

    invoke-direct {p0, p1}, Le/e/a/e0/c;->x(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Le/e/a/e0/c;->b:Le/e/a/e0/d;

    invoke-virtual {v0, p1}, Le/e/a/e0/d;->a(I)V

    return-void
.end method

.method public b(Lcom/liulishuo/filedownloader/model/a;)V
    .locals 1

    iget-object v0, p0, Le/e/a/e0/c;->a:Le/e/a/e0/b;

    invoke-virtual {v0, p1}, Le/e/a/e0/b;->b(Lcom/liulishuo/filedownloader/model/a;)V

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/a;->c()I

    move-result v0

    invoke-direct {p0, v0}, Le/e/a/e0/c;->x(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Le/e/a/e0/c;->b:Le/e/a/e0/d;

    invoke-virtual {v0, p1}, Le/e/a/e0/d;->b(Lcom/liulishuo/filedownloader/model/a;)V

    return-void
.end method

.method public c(I)V
    .locals 1

    iget-object v0, p0, Le/e/a/e0/c;->a:Le/e/a/e0/b;

    invoke-virtual {v0, p1}, Le/e/a/e0/b;->c(I)V

    invoke-direct {p0, p1}, Le/e/a/e0/c;->x(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Le/e/a/e0/c;->b:Le/e/a/e0/d;

    invoke-virtual {v0, p1}, Le/e/a/e0/d;->c(I)V

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Le/e/a/e0/c;->a:Le/e/a/e0/b;

    invoke-virtual {v0}, Le/e/a/e0/b;->clear()V

    iget-object v0, p0, Le/e/a/e0/c;->b:Le/e/a/e0/d;

    invoke-virtual {v0}, Le/e/a/e0/d;->clear()V

    return-void
.end method

.method public d()Le/e/a/e0/a$a;
    .locals 3

    iget-object v0, p0, Le/e/a/e0/c;->b:Le/e/a/e0/d;

    iget-object v1, p0, Le/e/a/e0/c;->a:Le/e/a/e0/b;

    iget-object v2, v1, Le/e/a/e0/b;->a:Landroid/util/SparseArray;

    iget-object v1, v1, Le/e/a/e0/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v2, v1}, Le/e/a/e0/d;->v(Landroid/util/SparseArray;Landroid/util/SparseArray;)Le/e/a/e0/a$a;

    move-result-object v0

    return-object v0
.end method

.method public e(ILjava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Le/e/a/e0/c;->a:Le/e/a/e0/b;

    invoke-virtual {v0, p1, p2}, Le/e/a/e0/b;->e(ILjava/lang/Throwable;)V

    invoke-direct {p0, p1}, Le/e/a/e0/c;->x(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Le/e/a/e0/c;->b:Le/e/a/e0/d;

    invoke-virtual {v0, p1, p2}, Le/e/a/e0/d;->e(ILjava/lang/Throwable;)V

    return-void
.end method

.method public f(I)V
    .locals 3

    iget-object v0, p0, Le/e/a/e0/c;->c:Landroid/os/Handler;

    iget-wide v1, p0, Le/e/a/e0/c;->d:J

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public g(IJ)V
    .locals 2

    iget-object v0, p0, Le/e/a/e0/c;->a:Le/e/a/e0/b;

    invoke-virtual {v0, p1, p2, p3}, Le/e/a/e0/b;->g(IJ)V

    invoke-direct {p0, p1}, Le/e/a/e0/c;->x(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/e/a/e0/c;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Le/e/a/e0/c;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, p1, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Le/e/a/e0/c;->g:Ljava/lang/Thread;

    iget-object v0, p0, Le/e/a/e0/c;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-static {}, Ljava/util/concurrent/locks/LockSupport;->park()V

    :cond_0
    iget-object v0, p0, Le/e/a/e0/c;->b:Le/e/a/e0/d;

    invoke-virtual {v0, p1, p2, p3}, Le/e/a/e0/d;->g(IJ)V

    :cond_1
    iget-object p2, p0, Le/e/a/e0/c;->e:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public h(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V
    .locals 1

    iget-object v0, p0, Le/e/a/e0/c;->a:Le/e/a/e0/b;

    invoke-virtual {v0, p1}, Le/e/a/e0/b;->h(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->e()I

    move-result v0

    invoke-direct {p0, v0}, Le/e/a/e0/c;->x(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Le/e/a/e0/c;->b:Le/e/a/e0/d;

    invoke-virtual {v0, p1}, Le/e/a/e0/d;->h(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V

    return-void
.end method

.method public i(ILjava/lang/Throwable;J)V
    .locals 1

    iget-object v0, p0, Le/e/a/e0/c;->a:Le/e/a/e0/b;

    invoke-virtual {v0, p1, p2, p3, p4}, Le/e/a/e0/b;->i(ILjava/lang/Throwable;J)V

    invoke-direct {p0, p1}, Le/e/a/e0/c;->x(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Le/e/a/e0/c;->w(I)V

    :cond_0
    iget-object v0, p0, Le/e/a/e0/c;->b:Le/e/a/e0/d;

    invoke-virtual {v0, p1, p2, p3, p4}, Le/e/a/e0/d;->i(ILjava/lang/Throwable;J)V

    iget-object p2, p0, Le/e/a/e0/c;->e:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public j(ILjava/lang/String;JJI)V
    .locals 10

    move-object v0, p0

    iget-object v1, v0, Le/e/a/e0/c;->a:Le/e/a/e0/b;

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Le/e/a/e0/b;->j(ILjava/lang/String;JJI)V

    invoke-direct {p0, p1}, Le/e/a/e0/c;->x(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v2, v0, Le/e/a/e0/c;->b:Le/e/a/e0/d;

    move v3, p1

    move-object v4, p2

    move-wide v5, p3

    move-wide v7, p5

    move/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Le/e/a/e0/d;->j(ILjava/lang/String;JJI)V

    return-void
.end method

.method public k(IIJ)V
    .locals 1

    iget-object v0, p0, Le/e/a/e0/c;->a:Le/e/a/e0/b;

    invoke-virtual {v0, p1, p2, p3, p4}, Le/e/a/e0/b;->k(IIJ)V

    invoke-direct {p0, p1}, Le/e/a/e0/c;->x(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Le/e/a/e0/c;->b:Le/e/a/e0/d;

    invoke-virtual {v0, p1, p2, p3, p4}, Le/e/a/e0/d;->k(IIJ)V

    return-void
.end method

.method public l(IJ)V
    .locals 1

    iget-object v0, p0, Le/e/a/e0/c;->a:Le/e/a/e0/b;

    invoke-virtual {v0, p1, p2, p3}, Le/e/a/e0/b;->l(IJ)V

    invoke-direct {p0, p1}, Le/e/a/e0/c;->x(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Le/e/a/e0/c;->b:Le/e/a/e0/d;

    invoke-virtual {v0, p1, p2, p3}, Le/e/a/e0/d;->l(IJ)V

    return-void
.end method

.method public m(IJLjava/lang/String;Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Le/e/a/e0/c;->a:Le/e/a/e0/b;

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Le/e/a/e0/b;->m(IJLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Le/e/a/e0/c;->x(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Le/e/a/e0/c;->b:Le/e/a/e0/d;

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Le/e/a/e0/d;->m(IJLjava/lang/String;Ljava/lang/String;)V

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

    iget-object v0, p0, Le/e/a/e0/c;->a:Le/e/a/e0/b;

    invoke-virtual {v0, p1}, Le/e/a/e0/b;->n(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public o(I)Lcom/liulishuo/filedownloader/model/FileDownloadModel;
    .locals 1

    iget-object v0, p0, Le/e/a/e0/c;->a:Le/e/a/e0/b;

    invoke-virtual {v0, p1}, Le/e/a/e0/b;->o(I)Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    move-result-object p1

    return-object p1
.end method

.method public p(II)V
    .locals 1

    iget-object v0, p0, Le/e/a/e0/c;->a:Le/e/a/e0/b;

    invoke-virtual {v0, p1, p2}, Le/e/a/e0/b;->p(II)V

    invoke-direct {p0, p1}, Le/e/a/e0/c;->x(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Le/e/a/e0/c;->b:Le/e/a/e0/d;

    invoke-virtual {v0, p1, p2}, Le/e/a/e0/d;->p(II)V

    return-void
.end method

.method public q(IJ)V
    .locals 1

    iget-object v0, p0, Le/e/a/e0/c;->a:Le/e/a/e0/b;

    invoke-virtual {v0, p1, p2, p3}, Le/e/a/e0/b;->q(IJ)V

    invoke-direct {p0, p1}, Le/e/a/e0/c;->x(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Le/e/a/e0/c;->w(I)V

    :cond_0
    iget-object v0, p0, Le/e/a/e0/c;->b:Le/e/a/e0/d;

    invoke-virtual {v0, p1, p2, p3}, Le/e/a/e0/d;->q(IJ)V

    iget-object p2, p0, Le/e/a/e0/c;->e:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public remove(I)Z
    .locals 1

    iget-object v0, p0, Le/e/a/e0/c;->b:Le/e/a/e0/d;

    invoke-virtual {v0, p1}, Le/e/a/e0/d;->remove(I)Z

    iget-object v0, p0, Le/e/a/e0/c;->a:Le/e/a/e0/b;

    invoke-virtual {v0, p1}, Le/e/a/e0/b;->remove(I)Z

    move-result p1

    return p1
.end method
