.class final Lcom/google/android/play/core/tasks/p;
.super Lcom/google/android/play/core/tasks/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/play/core/tasks/c<",
        "TResultT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Lcom/google/android/play/core/tasks/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/tasks/l<",
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

    invoke-direct {p0}, Lcom/google/android/play/core/tasks/c;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/play/core/tasks/p;->a:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/play/core/tasks/l;

    invoke-direct {v0}, Lcom/google/android/play/core/tasks/l;-><init>()V

    iput-object v0, p0, Lcom/google/android/play/core/tasks/p;->b:Lcom/google/android/play/core/tasks/l;

    return-void
.end method

.method private final k()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/play/core/tasks/p;->c:Z

    const-string v1, "Task is not yet complete"

    invoke-static {v0, v1}, Lcom/google/android/play/core/internal/t;->c(ZLjava/lang/Object;)V

    return-void
.end method

.method private final l()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/play/core/tasks/p;->c:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Task is already complete"

    invoke-static {v0, v1}, Lcom/google/android/play/core/internal/t;->c(ZLjava/lang/Object;)V

    return-void
.end method

.method private final m()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/tasks/p;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/play/core/tasks/p;->c:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/play/core/tasks/p;->b:Lcom/google/android/play/core/tasks/l;

    invoke-virtual {v0, p0}, Lcom/google/android/play/core/tasks/l;->b(Lcom/google/android/play/core/tasks/c;)V

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
.method public final a(Ljava/util/concurrent/Executor;Lcom/google/android/play/core/tasks/a;)Lcom/google/android/play/core/tasks/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/play/core/tasks/a;",
            ")",
            "Lcom/google/android/play/core/tasks/c<",
            "TResultT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/play/core/tasks/p;->b:Lcom/google/android/play/core/tasks/l;

    new-instance v1, Lcom/google/android/play/core/tasks/g;

    invoke-direct {v1, p1, p2}, Lcom/google/android/play/core/tasks/g;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/play/core/tasks/a;)V

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/tasks/l;->a(Lcom/google/android/play/core/tasks/k;)V

    invoke-direct {p0}, Lcom/google/android/play/core/tasks/p;->m()V

    return-object p0
.end method

.method public final b(Ljava/util/concurrent/Executor;Lcom/google/android/play/core/tasks/b;)Lcom/google/android/play/core/tasks/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/play/core/tasks/b<",
            "-TResultT;>;)",
            "Lcom/google/android/play/core/tasks/c<",
            "TResultT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/play/core/tasks/p;->b:Lcom/google/android/play/core/tasks/l;

    new-instance v1, Lcom/google/android/play/core/tasks/i;

    invoke-direct {v1, p1, p2}, Lcom/google/android/play/core/tasks/i;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/play/core/tasks/b;)V

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/tasks/l;->a(Lcom/google/android/play/core/tasks/k;)V

    invoke-direct {p0}, Lcom/google/android/play/core/tasks/p;->m()V

    return-object p0
.end method

.method public final c()Ljava/lang/Exception;
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/tasks/p;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/play/core/tasks/p;->e:Ljava/lang/Exception;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final d()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResultT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/play/core/tasks/p;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/play/core/tasks/p;->k()V

    iget-object v1, p0, Lcom/google/android/play/core/tasks/p;->e:Ljava/lang/Exception;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/play/core/tasks/p;->d:Ljava/lang/Object;

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

.method public final e()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/tasks/p;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/play/core/tasks/p;->c:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final f()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/play/core/tasks/p;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/play/core/tasks/p;->c:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/play/core/tasks/p;->e:Ljava/lang/Exception;

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

.method public final g(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/play/core/tasks/p;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/play/core/tasks/p;->l()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/play/core/tasks/p;->c:Z

    iput-object p1, p0, Lcom/google/android/play/core/tasks/p;->d:Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/play/core/tasks/p;->b:Lcom/google/android/play/core/tasks/l;

    invoke-virtual {p1, p0}, Lcom/google/android/play/core/tasks/l;->b(Lcom/google/android/play/core/tasks/c;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final h(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/play/core/tasks/p;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/play/core/tasks/p;->c:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/play/core/tasks/p;->c:Z

    iput-object p1, p0, Lcom/google/android/play/core/tasks/p;->d:Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/play/core/tasks/p;->b:Lcom/google/android/play/core/tasks/l;

    invoke-virtual {p1, p0}, Lcom/google/android/play/core/tasks/l;->b(Lcom/google/android/play/core/tasks/c;)V

    return v1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final i(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/tasks/p;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/play/core/tasks/p;->l()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/play/core/tasks/p;->c:Z

    iput-object p1, p0, Lcom/google/android/play/core/tasks/p;->e:Ljava/lang/Exception;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/play/core/tasks/p;->b:Lcom/google/android/play/core/tasks/l;

    invoke-virtual {p1, p0}, Lcom/google/android/play/core/tasks/l;->b(Lcom/google/android/play/core/tasks/c;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final j(Ljava/lang/Exception;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/tasks/p;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/play/core/tasks/p;->c:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/play/core/tasks/p;->c:Z

    iput-object p1, p0, Lcom/google/android/play/core/tasks/p;->e:Ljava/lang/Exception;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/play/core/tasks/p;->b:Lcom/google/android/play/core/tasks/l;

    invoke-virtual {p1, p0}, Lcom/google/android/play/core/tasks/l;->b(Lcom/google/android/play/core/tasks/c;)V

    return v1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
