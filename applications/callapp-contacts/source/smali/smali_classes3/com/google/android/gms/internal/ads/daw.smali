.class abstract Lcom/google/android/gms/internal/ads/daw;
.super Lcom/google/android/gms/internal/ads/dbp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/dbp<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/dau;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/dau;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/daw;->b:Lcom/google/android/gms/internal/ads/dau;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dbp;-><init>()V

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/cyg;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/daw;->a:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method final a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/daw;->b:Lcom/google/android/gms/internal/ads/dau;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dau;->a(Lcom/google/android/gms/internal/ads/dau;)Lcom/google/android/gms/internal/ads/daw;

    if-eqz p2, :cond_2

    .line 12
    instance-of p1, p2, Ljava/util/concurrent/ExecutionException;

    if-eqz p1, :cond_0

    .line 13
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/daw;->b:Lcom/google/android/gms/internal/ads/dau;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/dag;->a(Ljava/lang/Throwable;)Z

    return-void

    .line 14
    :cond_0
    instance-of p1, p2, Ljava/util/concurrent/CancellationException;

    if-eqz p1, :cond_1

    .line 15
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/daw;->b:Lcom/google/android/gms/internal/ads/dau;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/dag;->cancel(Z)Z

    return-void

    .line 16
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/daw;->b:Lcom/google/android/gms/internal/ads/dau;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/dag;->a(Ljava/lang/Throwable;)Z

    return-void

    .line 17
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/daw;->a(Ljava/lang/Object;)V

    return-void
.end method

.method final a()Z
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/daw;->b:Lcom/google/android/gms/internal/ads/dau;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dag;->isDone()Z

    move-result v0

    return v0
.end method

.method final b()V
    .locals 2

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/daw;->a:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/daw;->b:Lcom/google/android/gms/internal/ads/dau;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/dag;->a(Ljava/lang/Throwable;)Z

    return-void
.end method
