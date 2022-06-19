.class final Lcom/google/android/gms/tasks/q;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tasks@@17.2.1"

# interfaces
.implements Lcom/google/android/gms/tasks/e;
.implements Lcom/google/android/gms/tasks/d;
.implements Lcom/google/android/gms/tasks/b;
.implements Lcom/google/android/gms/tasks/b0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        "TContinuationResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/e<",
        "TTContinuationResult;>;",
        "Lcom/google/android/gms/tasks/d;",
        "Lcom/google/android/gms/tasks/b;",
        "Lcom/google/android/gms/tasks/b0;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Lcom/google/android/gms/tasks/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/a<",
            "TTResult;",
            "Lcom/google/android/gms/tasks/g<",
            "TTContinuationResult;>;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/tasks/f0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/f0<",
            "TTContinuationResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/a;Lcom/google/android/gms/tasks/f0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/a<",
            "TTResult;",
            "Lcom/google/android/gms/tasks/g<",
            "TTContinuationResult;>;>;",
            "Lcom/google/android/gms/tasks/f0<",
            "TTContinuationResult;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tasks/q;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/gms/tasks/q;->b:Lcom/google/android/gms/tasks/a;

    iput-object p3, p0, Lcom/google/android/gms/tasks/q;->c:Lcom/google/android/gms/tasks/f0;

    return-void
.end method

.method static synthetic d(Lcom/google/android/gms/tasks/q;)Lcom/google/android/gms/tasks/a;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/tasks/q;->b:Lcom/google/android/gms/tasks/a;

    return-object p0
.end method

.method static synthetic e(Lcom/google/android/gms/tasks/q;)Lcom/google/android/gms/tasks/f0;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/tasks/q;->c:Lcom/google/android/gms/tasks/f0;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tasks/q;->c:Lcom/google/android/gms/tasks/f0;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/f0;->v(Ljava/lang/Exception;)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/tasks/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/g<",
            "TTResult;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tasks/q;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/tasks/p;

    .line 1
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/tasks/p;-><init>(Lcom/google/android/gms/tasks/q;Lcom/google/android/gms/tasks/g;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tasks/q;->c:Lcom/google/android/gms/tasks/f0;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/f0;->x()Z

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTContinuationResult;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tasks/q;->c:Lcom/google/android/gms/tasks/f0;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/f0;->t(Ljava/lang/Object;)V

    return-void
.end method
