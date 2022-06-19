.class final Lcom/google/android/gms/tasks/ab;
.super Lcom/google/android/gms/tasks/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tasks/ab$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/tasks/g",
        "<TTResult;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Lcom/google/android/gms/tasks/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/z",
            "<TTResult;>;"
        }
    .end annotation
.end field

.field private c:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private volatile d:Z

.field private e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTResult;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private f:Ljava/lang/Exception;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/tasks/g;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tasks/ab;->a:Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/google/android/gms/tasks/z;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/z;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tasks/ab;->b:Lcom/google/android/gms/tasks/z;

    return-void
.end method

.method private final g()V
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/google/android/gms/tasks/ab;->c:Z

    const-string/jumbo v1, "Task is not yet complete"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/s;->a(ZLjava/lang/Object;)V

    .line 122
    return-void
.end method

.method private final h()V
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/google/android/gms/tasks/ab;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "Task is already complete"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/s;->a(ZLjava/lang/Object;)V

    .line 124
    return-void

    .line 123
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final i()V
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/google/android/gms/tasks/ab;->d:Z

    if-eqz v0, :cond_0

    .line 126
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string/jumbo v1, "Task is already canceled."

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    return-void
.end method

.method private final j()V
    .locals 2

    .prologue
    .line 128
    iget-object v1, p0, Lcom/google/android/gms/tasks/ab;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 129
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/tasks/ab;->c:Z

    if-nez v0, :cond_0

    .line 130
    monitor-exit v1

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    iget-object v0, p0, Lcom/google/android/gms/tasks/ab;->b:Lcom/google/android/gms/tasks/z;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/tasks/z;->a(Lcom/google/android/gms/tasks/g;)V

    goto :goto_0

    .line 131
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Lcom/google/android/gms/tasks/e;)Lcom/google/android/gms/tasks/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/tasks/e",
            "<-TTResult;>;)",
            "Lcom/google/android/gms/tasks/g",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Lcom/google/android/gms/tasks/u;

    sget-object v1, Lcom/google/android/gms/tasks/i;->a:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/tasks/u;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/e;)V

    .line 35
    iget-object v1, p0, Lcom/google/android/gms/tasks/ab;->b:Lcom/google/android/gms/tasks/z;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/z;->a(Lcom/google/android/gms/tasks/y;)V

    .line 36
    invoke-static {p1}, Lcom/google/android/gms/tasks/ab$a;->b(Landroid/app/Activity;)Lcom/google/android/gms/tasks/ab$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/ab$a;->a(Lcom/google/android/gms/tasks/y;)V

    .line 37
    invoke-direct {p0}, Lcom/google/android/gms/tasks/ab;->j()V

    .line 38
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/tasks/c;)Lcom/google/android/gms/tasks/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/c",
            "<TTResult;>;)",
            "Lcom/google/android/gms/tasks/g",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 48
    sget-object v0, Lcom/google/android/gms/tasks/i;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/tasks/g;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/c;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/tasks/d;)Lcom/google/android/gms/tasks/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/d;",
            ")",
            "Lcom/google/android/gms/tasks/g",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 39
    sget-object v0, Lcom/google/android/gms/tasks/i;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/tasks/g;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/d;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/a;)Lcom/google/android/gms/tasks/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/a",
            "<TTResult;TTContinuationResult;>;)",
            "Lcom/google/android/gms/tasks/g",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 58
    new-instance v0, Lcom/google/android/gms/tasks/ab;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/ab;-><init>()V

    .line 59
    iget-object v1, p0, Lcom/google/android/gms/tasks/ab;->b:Lcom/google/android/gms/tasks/z;

    new-instance v2, Lcom/google/android/gms/tasks/k;

    invoke-direct {v2, p1, p2, v0}, Lcom/google/android/gms/tasks/k;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/a;Lcom/google/android/gms/tasks/ab;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/z;->a(Lcom/google/android/gms/tasks/y;)V

    .line 60
    invoke-direct {p0}, Lcom/google/android/gms/tasks/ab;->j()V

    .line 61
    return-object v0
.end method

.method public final a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/b;)Lcom/google/android/gms/tasks/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/b;",
            ")",
            "Lcom/google/android/gms/tasks/g",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/gms/tasks/ab;->b:Lcom/google/android/gms/tasks/z;

    new-instance v1, Lcom/google/android/gms/tasks/o;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/tasks/o;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/b;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/z;->a(Lcom/google/android/gms/tasks/y;)V

    .line 65
    invoke-direct {p0}, Lcom/google/android/gms/tasks/ab;->j()V

    .line 66
    return-object p0
.end method

.method public final a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/c;)Lcom/google/android/gms/tasks/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/c",
            "<TTResult;>;)",
            "Lcom/google/android/gms/tasks/g",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/gms/tasks/ab;->b:Lcom/google/android/gms/tasks/z;

    new-instance v1, Lcom/google/android/gms/tasks/q;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/tasks/q;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/c;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/z;->a(Lcom/google/android/gms/tasks/y;)V

    .line 50
    invoke-direct {p0}, Lcom/google/android/gms/tasks/ab;->j()V

    .line 51
    return-object p0
.end method

.method public final a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/d;)Lcom/google/android/gms/tasks/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/d;",
            ")",
            "Lcom/google/android/gms/tasks/g",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/gms/tasks/ab;->b:Lcom/google/android/gms/tasks/z;

    new-instance v1, Lcom/google/android/gms/tasks/s;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/tasks/s;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/d;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/z;->a(Lcom/google/android/gms/tasks/y;)V

    .line 41
    invoke-direct {p0}, Lcom/google/android/gms/tasks/ab;->j()V

    .line 42
    return-object p0
.end method

.method public final a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/e;)Lcom/google/android/gms/tasks/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/e",
            "<-TTResult;>;)",
            "Lcom/google/android/gms/tasks/g",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/gms/tasks/ab;->b:Lcom/google/android/gms/tasks/z;

    new-instance v1, Lcom/google/android/gms/tasks/u;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/tasks/u;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/e;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/z;->a(Lcom/google/android/gms/tasks/y;)V

    .line 32
    invoke-direct {p0}, Lcom/google/android/gms/tasks/ab;->j()V

    .line 33
    return-object p0
.end method

.method public final a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/f;)Lcom/google/android/gms/tasks/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/f",
            "<TTResult;TTContinuationResult;>;)",
            "Lcom/google/android/gms/tasks/g",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 76
    new-instance v0, Lcom/google/android/gms/tasks/ab;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/ab;-><init>()V

    .line 77
    iget-object v1, p0, Lcom/google/android/gms/tasks/ab;->b:Lcom/google/android/gms/tasks/z;

    new-instance v2, Lcom/google/android/gms/tasks/w;

    invoke-direct {v2, p1, p2, v0}, Lcom/google/android/gms/tasks/w;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/f;Lcom/google/android/gms/tasks/ab;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/z;->a(Lcom/google/android/gms/tasks/y;)V

    .line 78
    invoke-direct {p0}, Lcom/google/android/gms/tasks/ab;->j()V

    .line 79
    return-object v0
.end method

.method public final a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class",
            "<TX;>;)TTResult;^TX;"
        }
    .end annotation

    .prologue
    .line 18
    iget-object v1, p0, Lcom/google/android/gms/tasks/ab;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 19
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/tasks/ab;->g()V

    .line 20
    invoke-direct {p0}, Lcom/google/android/gms/tasks/ab;->i()V

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/tasks/ab;->f:Ljava/lang/Exception;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/tasks/ab;->f:Ljava/lang/Exception;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 23
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tasks/ab;->f:Ljava/lang/Exception;

    if-eqz v0, :cond_1

    .line 24
    new-instance v0, Lcom/google/android/gms/tasks/RuntimeExecutionException;

    iget-object v2, p0, Lcom/google/android/gms/tasks/ab;->f:Ljava/lang/Exception;

    invoke-direct {v0, v2}, Lcom/google/android/gms/tasks/RuntimeExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/tasks/ab;->e:Ljava/lang/Object;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 96
    const-string/jumbo v0, "Exception must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v1, p0, Lcom/google/android/gms/tasks/ab;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 98
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/tasks/ab;->h()V

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/tasks/ab;->c:Z

    .line 100
    iput-object p1, p0, Lcom/google/android/gms/tasks/ab;->f:Ljava/lang/Exception;

    .line 101
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    iget-object v0, p0, Lcom/google/android/gms/tasks/ab;->b:Lcom/google/android/gms/tasks/z;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/tasks/z;->a(Lcom/google/android/gms/tasks/g;)V

    .line 103
    return-void

    .line 101
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v1, p0, Lcom/google/android/gms/tasks/ab;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 82
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/tasks/ab;->h()V

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/tasks/ab;->c:Z

    .line 84
    iput-object p1, p0, Lcom/google/android/gms/tasks/ab;->e:Ljava/lang/Object;

    .line 85
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    iget-object v0, p0, Lcom/google/android/gms/tasks/ab;->b:Lcom/google/android/gms/tasks/z;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/tasks/z;->a(Lcom/google/android/gms/tasks/g;)V

    .line 87
    return-void

    .line 85
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final a()Z
    .locals 2

    .prologue
    .line 4
    iget-object v1, p0, Lcom/google/android/gms/tasks/ab;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 5
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/tasks/ab;->c:Z

    monitor-exit v1

    return v0

    .line 6
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/a;)Lcom/google/android/gms/tasks/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/a",
            "<TTResult;",
            "Lcom/google/android/gms/tasks/g",
            "<TTContinuationResult;>;>;)",
            "Lcom/google/android/gms/tasks/g",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Lcom/google/android/gms/tasks/ab;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/ab;-><init>()V

    .line 73
    iget-object v1, p0, Lcom/google/android/gms/tasks/ab;->b:Lcom/google/android/gms/tasks/z;

    new-instance v2, Lcom/google/android/gms/tasks/m;

    invoke-direct {v2, p1, p2, v0}, Lcom/google/android/gms/tasks/m;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/a;Lcom/google/android/gms/tasks/ab;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/z;->a(Lcom/google/android/gms/tasks/y;)V

    .line 74
    invoke-direct {p0}, Lcom/google/android/gms/tasks/ab;->j()V

    .line 75
    return-object v0
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 8
    iget-object v1, p0, Lcom/google/android/gms/tasks/ab;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 9
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/tasks/ab;->c:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/tasks/ab;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tasks/ab;->f:Ljava/lang/Exception;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 10
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b(Ljava/lang/Exception;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 104
    const-string/jumbo v1, "Exception must not be null"

    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v1, p0, Lcom/google/android/gms/tasks/ab;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 106
    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/gms/tasks/ab;->c:Z

    if-eqz v2, :cond_0

    .line 107
    const/4 v0, 0x0

    monitor-exit v1

    .line 112
    :goto_0
    return v0

    .line 108
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/tasks/ab;->c:Z

    .line 109
    iput-object p1, p0, Lcom/google/android/gms/tasks/ab;->f:Ljava/lang/Exception;

    .line 110
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    iget-object v1, p0, Lcom/google/android/gms/tasks/ab;->b:Lcom/google/android/gms/tasks/z;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/tasks/z;->a(Lcom/google/android/gms/tasks/g;)V

    goto :goto_0

    .line 110
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 88
    iget-object v1, p0, Lcom/google/android/gms/tasks/ab;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 89
    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/gms/tasks/ab;->c:Z

    if-eqz v2, :cond_0

    .line 90
    const/4 v0, 0x0

    monitor-exit v1

    .line 95
    :goto_0
    return v0

    .line 91
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/tasks/ab;->c:Z

    .line 92
    iput-object p1, p0, Lcom/google/android/gms/tasks/ab;->e:Ljava/lang/Object;

    .line 93
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    iget-object v1, p0, Lcom/google/android/gms/tasks/ab;->b:Lcom/google/android/gms/tasks/z;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/tasks/z;->a(Lcom/google/android/gms/tasks/g;)V

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 7
    iget-boolean v0, p0, Lcom/google/android/gms/tasks/ab;->d:Z

    return v0
.end method

.method public final d()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation

    .prologue
    .line 11
    iget-object v1, p0, Lcom/google/android/gms/tasks/ab;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 12
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/tasks/ab;->g()V

    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/tasks/ab;->i()V

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/tasks/ab;->f:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    .line 15
    new-instance v0, Lcom/google/android/gms/tasks/RuntimeExecutionException;

    iget-object v2, p0, Lcom/google/android/gms/tasks/ab;->f:Ljava/lang/Exception;

    invoke-direct {v0, v2}, Lcom/google/android/gms/tasks/RuntimeExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 17
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 16
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tasks/ab;->e:Ljava/lang/Object;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public final e()Ljava/lang/Exception;
    .locals 2

    .prologue
    .line 27
    iget-object v1, p0, Lcom/google/android/gms/tasks/ab;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tasks/ab;->f:Ljava/lang/Exception;

    monitor-exit v1

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final f()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 113
    iget-object v1, p0, Lcom/google/android/gms/tasks/ab;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 114
    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/gms/tasks/ab;->c:Z

    if-eqz v2, :cond_0

    .line 115
    const/4 v0, 0x0

    monitor-exit v1

    .line 120
    :goto_0
    return v0

    .line 116
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/tasks/ab;->c:Z

    .line 117
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/tasks/ab;->d:Z

    .line 118
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    iget-object v1, p0, Lcom/google/android/gms/tasks/ab;->b:Lcom/google/android/gms/tasks/z;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/tasks/z;->a(Lcom/google/android/gms/tasks/g;)V

    goto :goto_0

    .line 118
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
