.class abstract Lcom/google/android/gms/internal/ads/cqw;
.super Lcom/google/android/gms/internal/ads/crp;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/crp",
        "<TT;>;"
    }
.end annotation


# instance fields
.field a:Z

.field private final b:Ljava/util/concurrent/Executor;

.field private final synthetic c:Lcom/google/android/gms/internal/ads/cqu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cqu;Ljava/util/concurrent/Executor;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cqw;->c:Lcom/google/android/gms/internal/ads/cqu;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/crp;-><init>()V

    .line 2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/cqw;->a:Z

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/cor;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cqw;->b:Ljava/util/concurrent/Executor;

    .line 4
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
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cqw;->c:Lcom/google/android/gms/internal/ads/cqu;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/cqu;->a(Lcom/google/android/gms/internal/ads/cqu;Lcom/google/android/gms/internal/ads/cqw;)Lcom/google/android/gms/internal/ads/cqw;

    .line 13
    if-eqz p2, :cond_2

    .line 14
    instance-of v0, p2, Ljava/util/concurrent/ExecutionException;

    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cqw;->c:Lcom/google/android/gms/internal/ads/cqu;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cqf;->a(Ljava/lang/Throwable;)Z

    .line 20
    :goto_0
    return-void

    .line 16
    :cond_0
    instance-of v0, p2, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_1

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cqw;->c:Lcom/google/android/gms/internal/ads/cqu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cqf;->cancel(Z)Z

    goto :goto_0

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cqw;->c:Lcom/google/android/gms/internal/ads/cqu;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/cqf;->a(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 19
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/cqw;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method final a()Z
    .locals 1

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cqw;->c:Lcom/google/android/gms/internal/ads/cqu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cqf;->isDone()Z

    move-result v0

    return v0
.end method

.method final b()V
    .locals 2

    .prologue
    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cqw;->b:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    :cond_0
    :goto_0
    return-void

    .line 8
    :catch_0
    move-exception v0

    .line 9
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/cqw;->a:Z

    if-eqz v1, :cond_0

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cqw;->c:Lcom/google/android/gms/internal/ads/cqu;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/cqf;->a(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method
