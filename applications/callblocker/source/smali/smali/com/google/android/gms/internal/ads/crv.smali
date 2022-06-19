.class public final Lcom/google/android/gms/internal/ads/crv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# direct methods
.method public static a(Ljava/util/concurrent/ExecutorService;)Lcom/google/android/gms/internal/ads/crs;
    .locals 1

    .prologue
    .line 2
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/crs;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lcom/google/android/gms/internal/ads/crs;

    .line 7
    :goto_0
    return-object p0

    .line 4
    :cond_0
    instance-of v0, p0, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/crz;

    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/crz;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    move-object p0, v0

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/crw;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/crw;-><init>(Ljava/util/concurrent/ExecutorService;)V

    move-object p0, v0

    .line 7
    goto :goto_0
.end method

.method public static a()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/cqz;->a:Lcom/google/android/gms/internal/ads/cqz;

    return-object v0
.end method

.method static a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/cqf;)Ljava/util/concurrent/Executor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/internal/ads/cqf",
            "<*>;)",
            "Ljava/util/concurrent/Executor;"
        }
    .end annotation

    .prologue
    .line 8
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/cor;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/cor;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/cqz;->a:Lcom/google/android/gms/internal/ads/cqz;

    .line 12
    if-ne p0, v0, :cond_0

    .line 14
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/cru;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/cru;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/cqf;)V

    move-object p0, v0

    goto :goto_0
.end method
