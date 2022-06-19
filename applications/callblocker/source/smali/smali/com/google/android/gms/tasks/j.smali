.class public final Lcom/google/android/gms/tasks/j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tasks/j$a;,
        Lcom/google/android/gms/tasks/j$b;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Exception;",
            ")",
            "Lcom/google/android/gms/tasks/g",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 4
    new-instance v0, Lcom/google/android/gms/tasks/ab;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/ab;-><init>()V

    .line 5
    invoke-virtual {v0, p0}, Lcom/google/android/gms/tasks/ab;->a(Ljava/lang/Exception;)V

    .line 6
    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lcom/google/android/gms/tasks/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(TTResult;)",
            "Lcom/google/android/gms/tasks/g",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 1
    new-instance v0, Lcom/google/android/gms/tasks/ab;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/ab;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/android/gms/tasks/ab;->a(Ljava/lang/Object;)V

    .line 3
    return-object v0
.end method

.method public static a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Callable",
            "<TTResult;>;)",
            "Lcom/google/android/gms/tasks/g",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 11
    const-string/jumbo v0, "Executor must not be null"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const-string/jumbo v0, "Callback must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance v0, Lcom/google/android/gms/tasks/ab;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/ab;-><init>()V

    .line 14
    new-instance v1, Lcom/google/android/gms/tasks/ac;

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/tasks/ac;-><init>(Lcom/google/android/gms/tasks/ab;Ljava/util/concurrent/Callable;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 15
    return-object v0
.end method

.method public static a(Lcom/google/android/gms/tasks/g;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/g",
            "<TTResult;>;)TTResult;"
        }
    .end annotation

    .prologue
    .line 16
    invoke-static {}, Lcom/google/android/gms/common/internal/s;->a()V

    .line 17
    const-string/jumbo v0, "Task must not be null"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    invoke-static {p0}, Lcom/google/android/gms/tasks/j;->b(Lcom/google/android/gms/tasks/g;)Ljava/lang/Object;

    move-result-object v0

    .line 23
    :goto_0
    return-object v0

    .line 20
    :cond_0
    new-instance v0, Lcom/google/android/gms/tasks/j$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/tasks/j$a;-><init>(Lcom/google/android/gms/tasks/ac;)V

    .line 21
    invoke-static {p0, v0}, Lcom/google/android/gms/tasks/j;->a(Lcom/google/android/gms/tasks/g;Lcom/google/android/gms/tasks/j$b;)V

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/j$a;->b()V

    .line 23
    invoke-static {p0}, Lcom/google/android/gms/tasks/j;->b(Lcom/google/android/gms/tasks/g;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lcom/google/android/gms/tasks/g;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/g",
            "<TTResult;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TTResult;"
        }
    .end annotation

    .prologue
    .line 24
    invoke-static {}, Lcom/google/android/gms/common/internal/s;->a()V

    .line 25
    const-string/jumbo v0, "Task must not be null"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-string/jumbo v0, "TimeUnit must not be null"

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-static {p0}, Lcom/google/android/gms/tasks/j;->b(Lcom/google/android/gms/tasks/g;)Ljava/lang/Object;

    move-result-object v0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    new-instance v0, Lcom/google/android/gms/tasks/j$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/tasks/j$a;-><init>(Lcom/google/android/gms/tasks/ac;)V

    .line 30
    invoke-static {p0, v0}, Lcom/google/android/gms/tasks/j;->a(Lcom/google/android/gms/tasks/g;Lcom/google/android/gms/tasks/j$b;)V

    .line 31
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/tasks/j$a;->a(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 32
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const-string/jumbo v1, "Timed out waiting for Task"

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/tasks/j;->b(Lcom/google/android/gms/tasks/g;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Lcom/google/android/gms/tasks/g;Lcom/google/android/gms/tasks/j$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/g",
            "<*>;",
            "Lcom/google/android/gms/tasks/j$b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 62
    sget-object v0, Lcom/google/android/gms/tasks/i;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/tasks/g;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/e;)Lcom/google/android/gms/tasks/g;

    .line 63
    sget-object v0, Lcom/google/android/gms/tasks/i;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/tasks/g;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/d;)Lcom/google/android/gms/tasks/g;

    .line 64
    sget-object v0, Lcom/google/android/gms/tasks/i;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/tasks/g;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/b;)Lcom/google/android/gms/tasks/g;

    .line 65
    return-void
.end method

.method private static b(Lcom/google/android/gms/tasks/g;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/g",
            "<TTResult;>;)TTResult;"
        }
    .end annotation

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/g;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/g;->d()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/g;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string/jumbo v1, "Task is already canceled"

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_1
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    invoke-virtual {p0}, Lcom/google/android/gms/tasks/g;->e()Ljava/lang/Exception;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
