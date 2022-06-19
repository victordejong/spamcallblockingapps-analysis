.class public final Lcom/google/android/gms/internal/ads/zz1;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a()Ljava/util/concurrent/Executor;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzefc;->b:Lcom/google/android/gms/internal/ads/zzefc;

    return-object v0
.end method

.method public static b(Ljava/util/concurrent/ExecutorService;)Lcom/google/android/gms/internal/ads/sz1;
    .locals 1

    instance-of v0, p0, Lcom/google/android/gms/internal/ads/sz1;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/gms/internal/ads/sz1;

    goto :goto_1

    :cond_0
    instance-of v0, p0, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/yz1;

    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/yz1;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/uz1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/uz1;-><init>(Ljava/util/concurrent/ExecutorService;)V

    :goto_0
    move-object p0, v0

    :goto_1
    return-object p0
.end method

.method static c(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/wx1;)Ljava/util/concurrent/Executor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/internal/ads/wx1<",
            "*>;)",
            "Ljava/util/concurrent/Executor;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzefc;->b:Lcom/google/android/gms/internal/ads/zzefc;

    if-ne p0, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/tz1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/tz1;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/wx1;)V

    return-object v0
.end method
