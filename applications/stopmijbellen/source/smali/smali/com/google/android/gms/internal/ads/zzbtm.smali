.class public final Lcom/google/android/gms/internal/ads/zzbtm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzagl;


# instance fields
.field private volatile zza:Lcom/google/android/gms/internal/ads/zzbsz;

.field private final zzb:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtm;->zzb:Landroid/content/Context;

    return-void
.end method

.method public static bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzbtm;)Lcom/google/android/gms/internal/ads/zzbsz;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbtm;->zza:Lcom/google/android/gms/internal/ads/zzbsz;

    return-object p0
.end method

.method public static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzbtm;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtm;->zza:Lcom/google/android/gms/internal/ads/zzbsz;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbtm;->zza:Lcom/google/android/gms/internal/ads/zzbsz;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->disconnect()V

    .line 2
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzags;)Lcom/google/android/gms/internal/ads/zzago;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzags<",
            "*>;)",
            "Lcom/google/android/gms/internal/ads/zzago;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzahb;
        }
    .end annotation

    const-string v0, "ms"

    const-string v1, "Http assets remote cache took "

    .line 1
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbta;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzags;->zzl()Ljava/util/Map;

    move-result-object v2

    .line 3
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    .line 4
    new-array v4, v3, [Ljava/lang/String;

    .line 5
    new-array v3, v3, [Ljava/lang/String;

    .line 6
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v4, v6

    .line 8
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/ads/zzbta;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzags;->zzk()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v4, v3}, Lcom/google/android/gms/internal/ads/zzbta;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzA()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v3

    const/4 p1, 0x0

    const/16 v6, 0x34

    :try_start_0
    new-instance v7, Lcom/google/android/gms/internal/ads/zzcjr;

    .line 11
    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzcjr;-><init>()V

    .line 12
    new-instance v8, Lcom/google/android/gms/internal/ads/zzbtk;

    invoke-direct {v8, p0, v7}, Lcom/google/android/gms/internal/ads/zzbtk;-><init>(Lcom/google/android/gms/internal/ads/zzbtm;Lcom/google/android/gms/internal/ads/zzcjr;)V

    .line 13
    new-instance v9, Lcom/google/android/gms/internal/ads/zzbtl;

    invoke-direct {v9, p0, v7}, Lcom/google/android/gms/internal/ads/zzbtl;-><init>(Lcom/google/android/gms/internal/ads/zzbtm;Lcom/google/android/gms/internal/ads/zzcjr;)V

    .line 14
    new-instance v10, Lcom/google/android/gms/internal/ads/zzbsz;

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/zzbtm;->zzb:Landroid/content/Context;

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzt()Lcom/google/android/gms/ads/internal/util/zzbz;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/ads/internal/util/zzbz;->zzb()Landroid/os/Looper;

    move-result-object v12

    invoke-direct {v10, v11, v12, v8, v9}, Lcom/google/android/gms/internal/ads/zzbsz;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;)V

    iput-object v10, p0, Lcom/google/android/gms/internal/ads/zzbtm;->zza:Lcom/google/android/gms/internal/ads/zzbsz;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzbtm;->zza:Lcom/google/android/gms/internal/ads/zzbsz;

    .line 16
    invoke-virtual {v8}, Lcom/google/android/gms/common/internal/BaseGmsClient;->checkAvailabilityAndConnect()V

    new-instance v8, Lcom/google/android/gms/internal/ads/zzbti;

    invoke-direct {v8, p0, v2}, Lcom/google/android/gms/internal/ads/zzbti;-><init>(Lcom/google/android/gms/internal/ads/zzbtm;Lcom/google/android/gms/internal/ads/zzbta;)V

    .line 17
    sget-object v2, Lcom/google/android/gms/internal/ads/zzcjm;->zza:Lcom/google/android/gms/internal/ads/zzfxb;

    .line 18
    invoke-static {v7, v8, v2}, Lcom/google/android/gms/internal/ads/zzfwq;->zzn(Lcom/google/android/gms/internal/ads/zzfxa;Lcom/google/android/gms/internal/ads/zzfvx;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfxa;

    move-result-object v7

    .line 19
    sget-object v8, Lcom/google/android/gms/internal/ads/zzblj;->zzcZ:Lcom/google/android/gms/internal/ads/zzblb;

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbgq;->zzc()Lcom/google/android/gms/internal/ads/zzblh;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/zzblh;->zzb(Lcom/google/android/gms/internal/ads/zzblb;)Ljava/lang/Object;

    move-result-object v8

    .line 21
    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-long v8, v8

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v11, Lcom/google/android/gms/internal/ads/zzcjm;->zzd:Ljava/util/concurrent/ScheduledExecutorService;

    .line 22
    invoke-static {v7, v8, v9, v10, v11}, Lcom/google/android/gms/internal/ads/zzfwq;->zzo(Lcom/google/android/gms/internal/ads/zzfxa;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzfxa;

    move-result-object v7

    new-instance v8, Lcom/google/android/gms/internal/ads/zzbtj;

    invoke-direct {v8, p0}, Lcom/google/android/gms/internal/ads/zzbtj;-><init>(Lcom/google/android/gms/internal/ads/zzbtm;)V

    .line 23
    invoke-interface {v7, v8, v2}, Lcom/google/android/gms/internal/ads/zzfxa;->zzc(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 24
    invoke-interface {v7}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzA()Lcom/google/android/gms/common/util/Clock;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v7

    new-instance v9, Ljava/lang/StringBuilder;

    .line 26
    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v7, v3

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 27
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcdo;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzcdo;-><init>(Landroid/os/ParcelFileDescriptor;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbtc;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 28
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcdo;->zza(Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbtc;

    if-nez v0, :cond_1

    return-object p1

    :cond_1
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzbtc;->zza:Z

    if-nez v1, :cond_4

    .line 29
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbtc;->zze:[Ljava/lang/String;

    .line 30
    array-length v1, v1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzbtc;->zzf:[Ljava/lang/String;

    array-length v2, v2

    if-eq v1, v2, :cond_2

    goto :goto_2

    :cond_2
    new-instance v9, Ljava/util/HashMap;

    .line 31
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    :goto_1
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzbtc;->zze:[Ljava/lang/String;

    .line 32
    array-length v1, p1

    if-ge v5, v1, :cond_3

    .line 33
    aget-object p1, p1, v5

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbtc;->zzf:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-virtual {v9, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzago;

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzbtc;->zzc:I

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzbtc;->zzd:[B

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzbtc;->zzg:Z

    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzbtc;->zzh:J

    move-object v6, p1

    .line 34
    invoke-direct/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/zzago;-><init>(I[BLjava/util/Map;ZJ)V

    :goto_2
    return-object p1

    .line 35
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzahb;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbtc;->zzb:Ljava/lang/String;

    .line 36
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzahb;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 37
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzA()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v7

    new-instance v2, Ljava/lang/StringBuilder;

    .line 38
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v7, v3

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 39
    throw p1

    .line 40
    :catch_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzA()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v7

    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v7, v3

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    return-object p1
.end method
