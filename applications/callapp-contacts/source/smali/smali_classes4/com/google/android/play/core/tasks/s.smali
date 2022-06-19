.class public final Lcom/google/android/play/core/tasks/s;
.super Lcom/google/android/play/core/tasks/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/play/core/tasks/d<",
        "TResultT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Lcom/google/android/play/core/tasks/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/tasks/o<",
            "TResultT;>;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TResultT;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/Exception;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/play/core/tasks/d;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/play/core/tasks/s;->a:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/play/core/tasks/o;

    invoke-direct {v0}, Lcom/google/android/play/core/tasks/o;-><init>()V

    iput-object v0, p0, Lcom/google/android/play/core/tasks/s;->b:Lcom/google/android/play/core/tasks/o;

    return-void
.end method

.method private final e()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/play/core/tasks/s;->c:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Task is already complete"

    invoke-static {v0, v1}, Lcom/google/android/play/core/internal/x;->a(ZLjava/lang/Object;)V

    return-void
.end method

.method private final f()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/tasks/s;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/play/core/tasks/s;->c:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/play/core/tasks/s;->b:Lcom/google/android/play/core/tasks/o;

    invoke-virtual {v0, p0}, Lcom/google/android/play/core/tasks/o;->a(Lcom/google/android/play/core/tasks/d;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public final a(Lcom/google/android/play/core/tasks/a;)Lcom/google/android/play/core/tasks/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/tasks/a<",
            "TResultT;>;)",
            "Lcom/google/android/play/core/tasks/d<",
            "TResultT;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/play/core/tasks/e;->a:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/google/android/play/core/tasks/s;->b:Lcom/google/android/play/core/tasks/o;

    new-instance v2, Lcom/google/android/play/core/tasks/h;

    invoke-direct {v2, v0, p1}, Lcom/google/android/play/core/tasks/h;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/play/core/tasks/a;)V

    invoke-virtual {v1, v2}, Lcom/google/android/play/core/tasks/o;->a(Lcom/google/android/play/core/tasks/n;)V

    invoke-direct {p0}, Lcom/google/android/play/core/tasks/s;->f()V

    return-object p0
.end method

.method public final a(Lcom/google/android/play/core/tasks/b;)Lcom/google/android/play/core/tasks/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/tasks/b;",
            ")",
            "Lcom/google/android/play/core/tasks/d<",
            "TResultT;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/play/core/tasks/e;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/play/core/tasks/s;->a(Ljava/util/concurrent/Executor;Lcom/google/android/play/core/tasks/b;)Lcom/google/android/play/core/tasks/d;

    return-object p0
.end method

.method public final a(Lcom/google/android/play/core/tasks/c;)Lcom/google/android/play/core/tasks/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/tasks/c<",
            "-TResultT;>;)",
            "Lcom/google/android/play/core/tasks/d<",
            "TResultT;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/play/core/tasks/e;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/play/core/tasks/s;->a(Ljava/util/concurrent/Executor;Lcom/google/android/play/core/tasks/c;)Lcom/google/android/play/core/tasks/d;

    return-object p0
.end method

.method public final a(Ljava/util/concurrent/Executor;Lcom/google/android/play/core/tasks/b;)Lcom/google/android/play/core/tasks/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/play/core/tasks/b;",
            ")",
            "Lcom/google/android/play/core/tasks/d<",
            "TResultT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/play/core/tasks/s;->b:Lcom/google/android/play/core/tasks/o;

    new-instance v1, Lcom/google/android/play/core/tasks/k;

    invoke-direct {v1, p1, p2}, Lcom/google/android/play/core/tasks/k;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/play/core/tasks/b;)V

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/tasks/o;->a(Lcom/google/android/play/core/tasks/n;)V

    invoke-direct {p0}, Lcom/google/android/play/core/tasks/s;->f()V

    return-object p0
.end method

.method public final a(Ljava/util/concurrent/Executor;Lcom/google/android/play/core/tasks/c;)Lcom/google/android/play/core/tasks/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/play/core/tasks/c<",
            "-TResultT;>;)",
            "Lcom/google/android/play/core/tasks/d<",
            "TResultT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/play/core/tasks/s;->b:Lcom/google/android/play/core/tasks/o;

    new-instance v1, Lcom/google/android/play/core/tasks/m;

    invoke-direct {v1, p1, p2}, Lcom/google/android/play/core/tasks/m;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/play/core/tasks/c;)V

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/tasks/o;->a(Lcom/google/android/play/core/tasks/n;)V

    invoke-direct {p0}, Lcom/google/android/play/core/tasks/s;->f()V

    return-object p0
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/tasks/s;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/play/core/tasks/s;->e()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/play/core/tasks/s;->c:Z

    iput-object p1, p0, Lcom/google/android/play/core/tasks/s;->e:Ljava/lang/Exception;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/play/core/tasks/s;->b:Lcom/google/android/play/core/tasks/o;

    invoke-virtual {p1, p0}, Lcom/google/android/play/core/tasks/o;->a(Lcom/google/android/play/core/tasks/d;)V

    return-void

    :catchall_0
    move-exception p1

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
            "(TResultT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/play/core/tasks/s;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/play/core/tasks/s;->e()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/play/core/tasks/s;->c:Z

    iput-object p1, p0, Lcom/google/android/play/core/tasks/s;->d:Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/play/core/tasks/s;->b:Lcom/google/android/play/core/tasks/o;

    invoke-virtual {p1, p0}, Lcom/google/android/play/core/tasks/o;->a(Lcom/google/android/play/core/tasks/d;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/tasks/s;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/play/core/tasks/s;->c:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final b()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/play/core/tasks/s;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/play/core/tasks/s;->c:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/play/core/tasks/s;->e:Ljava/lang/Exception;

    if-nez v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final b(Ljava/lang/Exception;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/tasks/s;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/play/core/tasks/s;->c:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/play/core/tasks/s;->c:Z

    iput-object p1, p0, Lcom/google/android/play/core/tasks/s;->e:Ljava/lang/Exception;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/play/core/tasks/s;->b:Lcom/google/android/play/core/tasks/o;

    invoke-virtual {p1, p0}, Lcom/google/android/play/core/tasks/o;->a(Lcom/google/android/play/core/tasks/d;)V

    return v1

    :catchall_0
    move-exception p1

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
            "(TResultT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/play/core/tasks/s;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/play/core/tasks/s;->c:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/play/core/tasks/s;->c:Z

    iput-object p1, p0, Lcom/google/android/play/core/tasks/s;->d:Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/play/core/tasks/s;->b:Lcom/google/android/play/core/tasks/o;

    invoke-virtual {p1, p0}, Lcom/google/android/play/core/tasks/o;->a(Lcom/google/android/play/core/tasks/d;)V

    return v1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final c()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResultT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/play/core/tasks/s;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 1000
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/play/core/tasks/s;->c:Z

    const-string v2, "Task is not yet complete"

    invoke-static {v1, v2}, Lcom/google/android/play/core/internal/x;->a(ZLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/play/core/tasks/s;->e:Ljava/lang/Exception;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/play/core/tasks/s;->d:Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :cond_0
    new-instance v2, Lcom/google/android/play/core/tasks/RuntimeExecutionException;

    invoke-direct {v2, v1}, Lcom/google/android/play/core/tasks/RuntimeExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final d()Ljava/lang/Exception;
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/tasks/s;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/play/core/tasks/s;->e:Ljava/lang/Exception;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
