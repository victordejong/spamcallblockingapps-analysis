.class final Lcom/google/android/gms/tasks/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/y;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        "TContinuationResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/y",
        "<TTResult;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Lcom/google/android/gms/tasks/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/a",
            "<TTResult;TTContinuationResult;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/tasks/ab;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/ab",
            "<TTContinuationResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/a;Lcom/google/android/gms/tasks/ab;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/a",
            "<TTResult;TTContinuationResult;>;",
            "Lcom/google/android/gms/tasks/ab",
            "<TTContinuationResult;>;)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/tasks/k;->a:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/tasks/k;->b:Lcom/google/android/gms/tasks/a;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/tasks/k;->c:Lcom/google/android/gms/tasks/ab;

    .line 5
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/tasks/k;)Lcom/google/android/gms/tasks/ab;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/tasks/k;->c:Lcom/google/android/gms/tasks/ab;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/tasks/k;)Lcom/google/android/gms/tasks/a;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/tasks/k;->b:Lcom/google/android/gms/tasks/a;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/tasks/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/g",
            "<TTResult;>;)V"
        }
    .end annotation

    .prologue
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/tasks/k;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/tasks/l;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/tasks/l;-><init>(Lcom/google/android/gms/tasks/k;Lcom/google/android/gms/tasks/g;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 7
    return-void
.end method
