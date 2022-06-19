.class public final Lcom/google/android/gms/internal/ads/zzdzy;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static zza(Ljava/util/concurrent/ExecutorService;)Lcom/google/android/gms/internal/ads/zzdzv;
    .locals 1

    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzdzv;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzdzv;

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdzz;

    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdzz;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeaa;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzeaa;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-object v0
.end method

.method public static zza(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzdyk;)Ljava/util/concurrent/Executor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/internal/ads/zzdyk<",
            "*>;)",
            "Ljava/util/concurrent/Executor;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdwl;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdwl;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdzd;->zziaj:Lcom/google/android/gms/internal/ads/zzdzd;

    if-ne p0, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdzx;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzdzx;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzdyk;)V

    return-object v0
.end method

.method public static zzbaf()Ljava/util/concurrent/Executor;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdzd;->zziaj:Lcom/google/android/gms/internal/ads/zzdzd;

    return-object v0
.end method
