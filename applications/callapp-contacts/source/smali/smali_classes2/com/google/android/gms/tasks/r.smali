.class final Lcom/google/android/gms/tasks/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/ac;
.implements Lcom/google/android/gms/tasks/c;
.implements Lcom/google/android/gms/tasks/e;
.implements Lcom/google/android/gms/tasks/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        "TContinuationResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/ac;",
        "Lcom/google/android/gms/tasks/c;",
        "Lcom/google/android/gms/tasks/e;",
        "Lcom/google/android/gms/tasks/f<",
        "TTContinuationResult;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Lcom/google/android/gms/tasks/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/b<",
            "TTResult;",
            "Lcom/google/android/gms/tasks/h<",
            "TTContinuationResult;>;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/tasks/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/ah<",
            "TTContinuationResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/b;Lcom/google/android/gms/tasks/ah;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/b<",
            "TTResult;",
            "Lcom/google/android/gms/tasks/h<",
            "TTContinuationResult;>;>;",
            "Lcom/google/android/gms/tasks/ah<",
            "TTContinuationResult;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tasks/r;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/gms/tasks/r;->b:Lcom/google/android/gms/tasks/b;

    iput-object p3, p0, Lcom/google/android/gms/tasks/r;->c:Lcom/google/android/gms/tasks/ah;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/tasks/r;)Lcom/google/android/gms/tasks/b;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/tasks/r;->b:Lcom/google/android/gms/tasks/b;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/tasks/r;)Lcom/google/android/gms/tasks/ah;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/tasks/r;->c:Lcom/google/android/gms/tasks/ah;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tasks/r;->c:Lcom/google/android/gms/tasks/ah;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/ah;->f()Z

    return-void
.end method

.method public final a(Lcom/google/android/gms/tasks/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/h<",
            "TTResult;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tasks/r;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/tasks/q;

    .line 1
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/tasks/q;-><init>(Lcom/google/android/gms/tasks/r;Lcom/google/android/gms/tasks/h;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onFailure(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tasks/r;->c:Lcom/google/android/gms/tasks/ah;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/ah;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTContinuationResult;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tasks/r;->c:Lcom/google/android/gms/tasks/ah;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/ah;->a(Ljava/lang/Object;)V

    return-void
.end method
