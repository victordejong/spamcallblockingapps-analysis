.class public Ld2/h0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static e:Z = false

.field public static f:I = 0x3

.field public static g:I = 0x1


# instance fields
.field public a:Ld2/f4;

.field public b:Ljava/util/concurrent/ExecutorService;

.field public final c:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ld2/d2;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ld2/f4;

    invoke-direct {v0}, Ld2/f4;-><init>()V

    .line 3
    iput-object v0, p0, Ld2/h0;->a:Ld2/f4;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Ld2/h0;->b:Ljava/util/concurrent/ExecutorService;

    .line 5
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Ld2/h0;->c:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public a(Ld2/f4;I)Z
    .locals 1

    const-string v0, "send_level"

    .line 1
    invoke-static {p1, v0}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v0

    .line 2
    invoke-virtual {p1}, Ld2/f4;->e()I

    move-result p1

    if-nez p1, :cond_0

    .line 3
    sget v0, Ld2/h0;->g:I

    :cond_0
    if-lt v0, p2, :cond_1

    const/4 p1, 0x4

    if-eq v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public b(Ld2/f4;IZ)Z
    .locals 2

    const-string v0, "print_level"

    .line 1
    invoke-static {p1, v0}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v0

    const-string v1, "log_private"

    .line 2
    invoke-static {p1, v1}, Ld2/e4;->l(Ld2/f4;Ljava/lang/String;)Z

    move-result v1

    .line 3
    invoke-virtual {p1}, Ld2/f4;->e()I

    move-result p1

    if-nez p1, :cond_0

    .line 4
    sget v0, Ld2/h0;->f:I

    .line 5
    sget-boolean v1, Ld2/h0;->e:Z

    :cond_0
    const/4 p1, 0x0

    if-eqz p3, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    const/4 p3, 0x4

    if-ne v0, p3, :cond_3

    :cond_2
    return p1

    :cond_3
    if-lt v0, p2, :cond_4

    const/4 p1, 0x1

    :cond_4
    return p1
.end method

.method public final c(Ljava/lang/Runnable;)Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Ld2/h0;->b:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ld2/h0;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ld2/h0;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public d()V
    .locals 2

    .line 1
    new-instance v0, Ld2/h0$b;

    invoke-direct {v0, p0}, Ld2/h0$b;-><init>(Ld2/h0;)V

    const-string v1, "Log.set_log_level"

    invoke-static {v1, v0}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    .line 2
    new-instance v0, Ld2/h0$c;

    invoke-direct {v0, p0}, Ld2/h0$c;-><init>(Ld2/h0;)V

    const-string v1, "Log.public.trace"

    invoke-static {v1, v0}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    .line 3
    new-instance v0, Ld2/h0$d;

    invoke-direct {v0, p0}, Ld2/h0$d;-><init>(Ld2/h0;)V

    const-string v1, "Log.private.trace"

    invoke-static {v1, v0}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    .line 4
    new-instance v0, Ld2/h0$e;

    invoke-direct {v0, p0}, Ld2/h0$e;-><init>(Ld2/h0;)V

    const-string v1, "Log.public.info"

    invoke-static {v1, v0}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    .line 5
    new-instance v0, Ld2/h0$f;

    invoke-direct {v0, p0}, Ld2/h0$f;-><init>(Ld2/h0;)V

    const-string v1, "Log.private.info"

    invoke-static {v1, v0}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    .line 6
    new-instance v0, Ld2/h0$g;

    invoke-direct {v0, p0}, Ld2/h0$g;-><init>(Ld2/h0;)V

    const-string v1, "Log.public.warning"

    invoke-static {v1, v0}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    .line 7
    new-instance v0, Ld2/h0$h;

    invoke-direct {v0, p0}, Ld2/h0$h;-><init>(Ld2/h0;)V

    const-string v1, "Log.private.warning"

    invoke-static {v1, v0}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    .line 8
    new-instance v0, Ld2/h0$i;

    invoke-direct {v0, p0}, Ld2/h0$i;-><init>(Ld2/h0;)V

    const-string v1, "Log.public.error"

    invoke-static {v1, v0}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    .line 9
    new-instance v0, Ld2/h0$a;

    invoke-direct {v0, p0}, Ld2/h0$a;-><init>(Ld2/h0;)V

    const-string v1, "Log.private.error"

    invoke-static {v1, v0}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    return-void
.end method

.method public e(IILjava/lang/String;Z)V
    .locals 9

    .line 1
    new-instance v6, Ld2/i0;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p3

    move v4, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Ld2/i0;-><init>(Ld2/h0;ILjava/lang/String;IZ)V

    .line 2
    invoke-virtual {p0, v6}, Ld2/h0;->c(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Ld2/h0;->c:Ljava/util/Queue;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Ld2/h0;->c:Ljava/util/Queue;

    .line 5
    new-instance v8, Ld2/i0;

    move-object v2, v8

    move-object v3, p0

    move v4, p1

    move-object v5, p3

    move v6, p2

    move v7, p4

    invoke-direct/range {v2 .. v7}, Ld2/i0;-><init>(Ld2/h0;ILjava/lang/String;IZ)V

    .line 6
    invoke-interface {v1, v8}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 7
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Ld2/h0;->b:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ld2/h0;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Ld2/h0;->b:Ljava/util/concurrent/ExecutorService;

    .line 3
    :cond_1
    iget-object v0, p0, Ld2/h0;->c:Ljava/util/Queue;

    monitor-enter v0

    .line 4
    :goto_0
    :try_start_0
    iget-object v1, p0, Ld2/h0;->c:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5
    iget-object v1, p0, Ld2/h0;->c:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 6
    invoke-virtual {p0, v1}, Ld2/h0;->c(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 7
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
