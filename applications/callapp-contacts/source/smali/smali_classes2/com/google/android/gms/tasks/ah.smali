.class final Lcom/google/android/gms/tasks/ah;
.super Lcom/google/android/gms/tasks/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/tasks/h<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Lcom/google/android/gms/tasks/ad;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/ad<",
            "TTResult;>;"
        }
    .end annotation
.end field

.field private c:Z

.field private volatile d:Z

.field private e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTResult;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/Exception;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/tasks/h;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tasks/ah;->a:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/tasks/ad;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/tasks/ad;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tasks/ah;->b:Lcom/google/android/gms/tasks/ad;

    return-void
.end method

.method private final g()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/tasks/ah;->c:Z

    const-string v1, "Task is not yet complete"

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/o;->a(ZLjava/lang/Object;)V

    return-void
.end method

.method private final h()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/tasks/ah;->c:Z

    if-nez v0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/tasks/DuplicateTaskCompletionException;->a(Lcom/google/android/gms/tasks/h;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method

.method private final i()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/tasks/ah;->d:Z

    if-nez v0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Task is already canceled."

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final j()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tasks/ah;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/tasks/ah;->c:Z

    if-nez v1, :cond_0

    .line 1
    monitor-exit v0

    return-void

    .line 2
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/tasks/ah;->b:Lcom/google/android/gms/tasks/ad;

    .line 3
    invoke-virtual {v0, p0}, Lcom/google/android/gms/tasks/ad;->a(Lcom/google/android/gms/tasks/h;)V

    return-void

    :catchall_0
    move-exception v1

    .line 2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/tasks/b;)Lcom/google/android/gms/tasks/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/b<",
            "TTResult;TTContinuationResult;>;)",
            "Lcom/google/android/gms/tasks/h<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/tasks/j;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/tasks/h;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/b;)Lcom/google/android/gms/tasks/h;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/google/android/gms/tasks/d;)Lcom/google/android/gms/tasks/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/d<",
            "TTResult;>;)",
            "Lcom/google/android/gms/tasks/h<",
            "TTResult;>;"
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/google/android/gms/tasks/j;->a:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/google/android/gms/tasks/ah;->b:Lcom/google/android/gms/tasks/ad;

    new-instance v2, Lcom/google/android/gms/tasks/v;

    .line 7
    invoke-direct {v2, v0, p1}, Lcom/google/android/gms/tasks/v;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/d;)V

    .line 8
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/ad;->a(Lcom/google/android/gms/tasks/ac;)V

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/tasks/ah;->j()V

    return-object p0
.end method

.method public final a(Lcom/google/android/gms/tasks/e;)Lcom/google/android/gms/tasks/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/e;",
            ")",
            "Lcom/google/android/gms/tasks/h<",
            "TTResult;>;"
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/google/android/gms/tasks/j;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/tasks/ah;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/e;)Lcom/google/android/gms/tasks/h;

    return-object p0
.end method

.method public final a(Lcom/google/android/gms/tasks/f;)Lcom/google/android/gms/tasks/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/f<",
            "-TTResult;>;)",
            "Lcom/google/android/gms/tasks/h<",
            "TTResult;>;"
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/google/android/gms/tasks/j;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/tasks/ah;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/f;)Lcom/google/android/gms/tasks/h;

    return-object p0
.end method

.method public final a(Lcom/google/android/gms/tasks/g;)Lcom/google/android/gms/tasks/h;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/g<",
            "TTResult;TTContinuationResult;>;)",
            "Lcom/google/android/gms/tasks/h<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/tasks/j;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/tasks/ah;

    .line 2
    invoke-direct {v1}, Lcom/google/android/gms/tasks/ah;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/tasks/ah;->b:Lcom/google/android/gms/tasks/ad;

    new-instance v3, Lcom/google/android/gms/tasks/ab;

    .line 3
    invoke-direct {v3, v0, p1, v1}, Lcom/google/android/gms/tasks/ab;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/g;Lcom/google/android/gms/tasks/ah;)V

    .line 4
    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/ad;->a(Lcom/google/android/gms/tasks/ac;)V

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/tasks/ah;->j()V

    return-object v1
.end method

.method public final a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/b;)Lcom/google/android/gms/tasks/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/b<",
            "TTResult;TTContinuationResult;>;)",
            "Lcom/google/android/gms/tasks/h<",
            "TTContinuationResult;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/tasks/ah;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/tasks/ah;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/tasks/ah;->b:Lcom/google/android/gms/tasks/ad;

    new-instance v2, Lcom/google/android/gms/tasks/p;

    .line 3
    invoke-direct {v2, p1, p2, v0}, Lcom/google/android/gms/tasks/p;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/b;Lcom/google/android/gms/tasks/ah;)V

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/ad;->a(Lcom/google/android/gms/tasks/ac;)V

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/tasks/ah;->j()V

    return-object v0
.end method

.method public final a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/c;)Lcom/google/android/gms/tasks/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/c;",
            ")",
            "Lcom/google/android/gms/tasks/h<",
            "TTResult;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tasks/ah;->b:Lcom/google/android/gms/tasks/ad;

    new-instance v1, Lcom/google/android/gms/tasks/t;

    .line 7
    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/tasks/t;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/c;)V

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/ad;->a(Lcom/google/android/gms/tasks/ac;)V

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/tasks/ah;->j()V

    return-object p0
.end method

.method public final a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/d;)Lcom/google/android/gms/tasks/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/d<",
            "TTResult;>;)",
            "Lcom/google/android/gms/tasks/h<",
            "TTResult;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tasks/ah;->b:Lcom/google/android/gms/tasks/ad;

    new-instance v1, Lcom/google/android/gms/tasks/v;

    .line 10
    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/tasks/v;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/d;)V

    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/ad;->a(Lcom/google/android/gms/tasks/ac;)V

    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/tasks/ah;->j()V

    return-object p0
.end method

.method public final a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/e;)Lcom/google/android/gms/tasks/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/e;",
            ")",
            "Lcom/google/android/gms/tasks/h<",
            "TTResult;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tasks/ah;->b:Lcom/google/android/gms/tasks/ad;

    new-instance v1, Lcom/google/android/gms/tasks/x;

    .line 7
    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/tasks/x;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/e;)V

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/ad;->a(Lcom/google/android/gms/tasks/ac;)V

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/tasks/ah;->j()V

    return-object p0
.end method

.method public final a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/f;)Lcom/google/android/gms/tasks/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/f<",
            "-TTResult;>;)",
            "Lcom/google/android/gms/tasks/h<",
            "TTResult;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tasks/ah;->b:Lcom/google/android/gms/tasks/ad;

    new-instance v1, Lcom/google/android/gms/tasks/z;

    .line 7
    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/tasks/z;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/f;)V

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/ad;->a(Lcom/google/android/gms/tasks/ac;)V

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/tasks/ah;->j()V

    return-object p0
.end method

.method public final a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/g;)Lcom/google/android/gms/tasks/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/g<",
            "TTResult;TTContinuationResult;>;)",
            "Lcom/google/android/gms/tasks/h<",
            "TTContinuationResult;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/tasks/ah;

    .line 6
    invoke-direct {v0}, Lcom/google/android/gms/tasks/ah;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/tasks/ah;->b:Lcom/google/android/gms/tasks/ad;

    new-instance v2, Lcom/google/android/gms/tasks/ab;

    .line 7
    invoke-direct {v2, p1, p2, v0}, Lcom/google/android/gms/tasks/ab;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/g;Lcom/google/android/gms/tasks/ah;)V

    .line 8
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/ad;->a(Lcom/google/android/gms/tasks/ac;)V

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/tasks/ah;->j()V

    return-object v0
.end method

.method public final a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TX;>;)TTResult;^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tasks/ah;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/tasks/ah;->g()V

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/tasks/ah;->i()V

    iget-object v1, p0, Lcom/google/android/gms/tasks/ah;->f:Ljava/lang/Exception;

    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/tasks/ah;->f:Ljava/lang/Exception;

    if-nez p1, :cond_0

    .line 10
    iget-object p1, p0, Lcom/google/android/gms/tasks/ah;->e:Ljava/lang/Object;

    .line 11
    monitor-exit v0

    return-object p1

    .line 9
    :cond_0
    new-instance v1, Lcom/google/android/gms/tasks/RuntimeExecutionException;

    .line 10
    invoke-direct {v1, p1}, Lcom/google/android/gms/tasks/RuntimeExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/tasks/ah;->f:Ljava/lang/Exception;

    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "Exception must not be null"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/tasks/ah;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/tasks/ah;->h()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/tasks/ah;->c:Z

    iput-object p1, p0, Lcom/google/android/gms/tasks/ah;->f:Ljava/lang/Exception;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/tasks/ah;->b:Lcom/google/android/gms/tasks/ad;

    .line 4
    invoke-virtual {p1, p0}, Lcom/google/android/gms/tasks/ad;->a(Lcom/google/android/gms/tasks/h;)V

    return-void

    :catchall_0
    move-exception p1

    .line 3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tasks/ah;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/tasks/ah;->h()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/tasks/ah;->c:Z

    iput-object p1, p0, Lcom/google/android/gms/tasks/ah;->e:Ljava/lang/Object;

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/tasks/ah;->b:Lcom/google/android/gms/tasks/ad;

    .line 3
    invoke-virtual {p1, p0}, Lcom/google/android/gms/tasks/ad;->a(Lcom/google/android/gms/tasks/h;)V

    return-void

    :catchall_0
    move-exception p1

    .line 2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tasks/ah;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/tasks/ah;->c:Z

    .line 1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final b(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/b;)Lcom/google/android/gms/tasks/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/b<",
            "TTResult;",
            "Lcom/google/android/gms/tasks/h<",
            "TTContinuationResult;>;>;)",
            "Lcom/google/android/gms/tasks/h<",
            "TTContinuationResult;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/tasks/ah;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/tasks/ah;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/tasks/ah;->b:Lcom/google/android/gms/tasks/ad;

    new-instance v2, Lcom/google/android/gms/tasks/r;

    .line 3
    invoke-direct {v2, p1, p2, v0}, Lcom/google/android/gms/tasks/r;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/b;Lcom/google/android/gms/tasks/ah;)V

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/ad;->a(Lcom/google/android/gms/tasks/ac;)V

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/tasks/ah;->j()V

    return-object v0
.end method

.method public final b()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/tasks/ah;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/tasks/ah;->c:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/tasks/ah;->d:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/tasks/ah;->f:Ljava/lang/Exception;

    if-nez v1, :cond_0

    const/4 v2, 0x1

    .line 1
    :cond_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final b(Ljava/lang/Exception;)Z
    .locals 2

    const-string v0, "Exception must not be null"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/tasks/ah;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/tasks/ah;->c:Z

    if-eqz v1, :cond_0

    .line 2
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/tasks/ah;->c:Z

    iput-object p1, p0, Lcom/google/android/gms/tasks/ah;->f:Ljava/lang/Exception;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/tasks/ah;->b:Lcom/google/android/gms/tasks/ad;

    .line 4
    invoke-virtual {p1, p0}, Lcom/google/android/gms/tasks/ad;->a(Lcom/google/android/gms/tasks/h;)V

    return v1

    :catchall_0
    move-exception p1

    .line 3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tasks/ah;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/tasks/ah;->c:Z

    if-eqz v1, :cond_0

    .line 1
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/tasks/ah;->c:Z

    iput-object p1, p0, Lcom/google/android/gms/tasks/ah;->e:Ljava/lang/Object;

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/tasks/ah;->b:Lcom/google/android/gms/tasks/ad;

    .line 3
    invoke-virtual {p1, p0}, Lcom/google/android/gms/tasks/ad;->a(Lcom/google/android/gms/tasks/h;)V

    return v1

    :catchall_0
    move-exception p1

    .line 2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/tasks/ah;->d:Z

    return v0
.end method

.method public final d()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tasks/ah;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/tasks/ah;->g()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/tasks/ah;->i()V

    iget-object v1, p0, Lcom/google/android/gms/tasks/ah;->f:Ljava/lang/Exception;

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/tasks/ah;->e:Ljava/lang/Object;

    .line 4
    monitor-exit v0

    return-object v1

    .line 2
    :cond_0
    new-instance v2, Lcom/google/android/gms/tasks/RuntimeExecutionException;

    .line 3
    invoke-direct {v2, v1}, Lcom/google/android/gms/tasks/RuntimeExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final e()Ljava/lang/Exception;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tasks/ah;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/tasks/ah;->f:Ljava/lang/Exception;

    .line 1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final f()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tasks/ah;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/tasks/ah;->c:Z

    if-eqz v1, :cond_0

    .line 1
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/tasks/ah;->c:Z

    iput-boolean v1, p0, Lcom/google/android/gms/tasks/ah;->d:Z

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/tasks/ah;->b:Lcom/google/android/gms/tasks/ad;

    .line 3
    invoke-virtual {v0, p0}, Lcom/google/android/gms/tasks/ad;->a(Lcom/google/android/gms/tasks/h;)V

    return v1

    :catchall_0
    move-exception v1

    .line 2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
