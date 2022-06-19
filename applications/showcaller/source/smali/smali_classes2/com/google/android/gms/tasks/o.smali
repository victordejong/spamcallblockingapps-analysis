.class final Lcom/google/android/gms/tasks/o;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tasks@@17.2.1"

# interfaces
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
        "Lcom/google/android/gms/tasks/b0<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Lcom/google/android/gms/tasks/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/a<",
            "TTResult;TTContinuationResult;>;"
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
            "TTResult;TTContinuationResult;>;",
            "Lcom/google/android/gms/tasks/f0<",
            "TTContinuationResult;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tasks/o;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/gms/tasks/o;->b:Lcom/google/android/gms/tasks/a;

    iput-object p3, p0, Lcom/google/android/gms/tasks/o;->c:Lcom/google/android/gms/tasks/f0;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/tasks/o;)Lcom/google/android/gms/tasks/f0;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/tasks/o;->c:Lcom/google/android/gms/tasks/f0;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/gms/tasks/o;)Lcom/google/android/gms/tasks/a;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/tasks/o;->b:Lcom/google/android/gms/tasks/a;

    return-object p0
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/tasks/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/g<",
            "TTResult;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tasks/o;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/tasks/n;

    .line 1
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/tasks/n;-><init>(Lcom/google/android/gms/tasks/o;Lcom/google/android/gms/tasks/g;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
