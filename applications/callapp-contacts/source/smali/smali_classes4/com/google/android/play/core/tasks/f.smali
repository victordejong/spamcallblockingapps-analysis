.class public final Lcom/google/android/play/core/tasks/f;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Exception;)Lcom/google/android/play/core/tasks/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Exception;",
            ")",
            "Lcom/google/android/play/core/tasks/d<",
            "TResultT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/play/core/tasks/s;

    invoke-direct {v0}, Lcom/google/android/play/core/tasks/s;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/play/core/tasks/s;->a(Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lcom/google/android/play/core/tasks/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultT:",
            "Ljava/lang/Object;",
            ">(TResultT;)",
            "Lcom/google/android/play/core/tasks/d<",
            "TResultT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/play/core/tasks/s;

    invoke-direct {v0}, Lcom/google/android/play/core/tasks/s;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/play/core/tasks/s;->a(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Lcom/google/android/play/core/tasks/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultT:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/play/core/tasks/d<",
            "TResultT;>;)TResultT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/play/core/tasks/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/play/core/tasks/d;->c()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    invoke-virtual {p0}, Lcom/google/android/play/core/tasks/d;->d()Ljava/lang/Exception;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
