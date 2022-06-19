.class public abstract Lcom/google/android/play/core/tasks/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/google/android/play/core/tasks/a;)Lcom/google/android/play/core/tasks/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/tasks/a<",
            "TResultT;>;)",
            "Lcom/google/android/play/core/tasks/d<",
            "TResultT;>;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/google/android/play/core/tasks/b;)Lcom/google/android/play/core/tasks/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/tasks/b;",
            ")",
            "Lcom/google/android/play/core/tasks/d<",
            "TResultT;>;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/google/android/play/core/tasks/c;)Lcom/google/android/play/core/tasks/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/tasks/c<",
            "-TResultT;>;)",
            "Lcom/google/android/play/core/tasks/d<",
            "TResultT;>;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/util/concurrent/Executor;Lcom/google/android/play/core/tasks/b;)Lcom/google/android/play/core/tasks/d;
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
.end method

.method public abstract a(Ljava/util/concurrent/Executor;Lcom/google/android/play/core/tasks/c;)Lcom/google/android/play/core/tasks/d;
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
.end method

.method public abstract a()Z
.end method

.method public abstract b()Z
.end method

.method public abstract c()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResultT;"
        }
    .end annotation
.end method

.method public abstract d()Ljava/lang/Exception;
.end method
