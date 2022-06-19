.class final Lcom/google/android/gms/internal/ads/iz1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final b:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation
.end field

.field final c:Lcom/google/android/gms/internal/ads/gz1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/gz1<",
            "-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Future;Lcom/google/android/gms/internal/ads/gz1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "TV;>;",
            "Lcom/google/android/gms/internal/ads/gz1<",
            "-TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/iz1;->b:Ljava/util/concurrent/Future;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/iz1;->c:Lcom/google/android/gms/internal/ads/gz1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/iz1;->b:Ljava/util/concurrent/Future;

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/g02;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/ads/g02;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/h02;->a(Lcom/google/android/gms/internal/ads/g02;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/iz1;->c:Lcom/google/android/gms/internal/ads/gz1;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/gz1;->a(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/iz1;->b:Ljava/util/concurrent/Future;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/kz1;->p(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/iz1;->c:Lcom/google/android/gms/internal/ads/gz1;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/gz1;->b(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/iz1;->c:Lcom/google/android/gms/internal/ads/gz1;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/gz1;->a(Ljava/lang/Throwable;)V

    return-void

    :catch_2
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/iz1;->c:Lcom/google/android/gms/internal/ads/gz1;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/gz1;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/kw1;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/jw1;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/iz1;->c:Lcom/google/android/gms/internal/ads/gz1;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/jw1;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/jw1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jw1;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
