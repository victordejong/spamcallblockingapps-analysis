.class public final Lcom/google/android/play/core/tasks/e;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Ljava/lang/Object;)Lcom/google/android/play/core/tasks/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultT:",
            "Ljava/lang/Object;",
            ">(TResultT;)",
            "Lcom/google/android/play/core/tasks/c<",
            "TResultT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/play/core/tasks/p;

    invoke-direct {v0}, Lcom/google/android/play/core/tasks/p;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/play/core/tasks/p;->g(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static b(Lcom/google/android/play/core/tasks/c;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultT:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/play/core/tasks/c<",
            "TResultT;>;)TResultT;"
        }
    .end annotation

    const-string v0, "Task must not be null"

    invoke-static {p0, v0}, Lcom/google/android/play/core/internal/t;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/play/core/tasks/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/android/play/core/tasks/e;->d(Lcom/google/android/play/core/tasks/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/play/core/tasks/q;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/play/core/tasks/q;-><init>([B)V

    invoke-static {p0, v0}, Lcom/google/android/play/core/tasks/e;->e(Lcom/google/android/play/core/tasks/c;Lcom/google/android/play/core/tasks/q;)V

    invoke-virtual {v0}, Lcom/google/android/play/core/tasks/q;->c()V

    invoke-static {p0}, Lcom/google/android/play/core/tasks/e;->d(Lcom/google/android/play/core/tasks/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/Exception;)Lcom/google/android/play/core/tasks/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Exception;",
            ")",
            "Lcom/google/android/play/core/tasks/c<",
            "TResultT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/play/core/tasks/p;

    invoke-direct {v0}, Lcom/google/android/play/core/tasks/p;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/play/core/tasks/p;->i(Ljava/lang/Exception;)V

    return-object v0
.end method

.method private static d(Lcom/google/android/play/core/tasks/c;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultT:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/play/core/tasks/c<",
            "TResultT;>;)TResultT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/play/core/tasks/c;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/play/core/tasks/c;->d()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    invoke-virtual {p0}, Lcom/google/android/play/core/tasks/c;->c()Ljava/lang/Exception;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static e(Lcom/google/android/play/core/tasks/c;Lcom/google/android/play/core/tasks/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/tasks/c<",
            "*>;",
            "Lcom/google/android/play/core/tasks/q;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/google/android/play/core/tasks/d;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/play/core/tasks/c;->b(Ljava/util/concurrent/Executor;Lcom/google/android/play/core/tasks/b;)Lcom/google/android/play/core/tasks/c;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/play/core/tasks/c;->a(Ljava/util/concurrent/Executor;Lcom/google/android/play/core/tasks/a;)Lcom/google/android/play/core/tasks/c;

    return-void
.end method
