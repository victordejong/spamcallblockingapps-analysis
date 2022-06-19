.class final Lcom/google/android/gms/tasks/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/ac;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        "TContinuationResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/ac<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/android/gms/tasks/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/b<",
            "TTResult;TTContinuationResult;>;"
        }
    .end annotation
.end field

.field final b:Lcom/google/android/gms/tasks/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/ah<",
            "TTContinuationResult;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/b;Lcom/google/android/gms/tasks/ah;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/b<",
            "TTResult;TTContinuationResult;>;",
            "Lcom/google/android/gms/tasks/ah<",
            "TTContinuationResult;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tasks/p;->c:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/gms/tasks/p;->a:Lcom/google/android/gms/tasks/b;

    iput-object p3, p0, Lcom/google/android/gms/tasks/p;->b:Lcom/google/android/gms/tasks/ah;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/tasks/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/h<",
            "TTResult;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tasks/p;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/tasks/o;

    .line 1
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/tasks/o;-><init>(Lcom/google/android/gms/tasks/p;Lcom/google/android/gms/tasks/h;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
