.class public Lcom/google/android/gms/internal/ads/fp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/rz1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/rz1<",
        "TT;>;"
    }
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/a02;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/a02<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/a02;->E()Lcom/google/android/gms/internal/ads/a02;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/fp;->b:Lcom/google/android/gms/internal/ads/a02;

    return-void
.end method

.method private static final b(Z)Z
    .locals 3

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->h()Lcom/google/android/gms/internal/ads/zn;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Provided SettableFuture with multiple values."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string v2, "SettableFuture"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zn;->h(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    return p0
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fp;->b:Lcom/google/android/gms/internal/ads/a02;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/a02;->m(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/fp;->b(Z)Z

    return p1
.end method

.method public cancel(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fp;->b:Lcom/google/android/gms/internal/ads/a02;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/wx1;->cancel(Z)Z

    move-result p1

    return p1
.end method

.method public final d(Ljava/lang/Throwable;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fp;->b:Lcom/google/android/gms/internal/ads/a02;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/a02;->n(Ljava/lang/Throwable;)Z

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/fp;->b(Z)Z

    return p1
.end method

.method public final e(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fp;->b:Lcom/google/android/gms/internal/ads/a02;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/wx1;->e(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fp;->b:Lcom/google/android/gms/internal/ads/a02;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/wx1;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fp;->b:Lcom/google/android/gms/internal/ads/a02;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/wx1;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final isCancelled()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fp;->b:Lcom/google/android/gms/internal/ads/a02;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/wx1;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public final isDone()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fp;->b:Lcom/google/android/gms/internal/ads/a02;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/wx1;->isDone()Z

    move-result v0

    return v0
.end method
