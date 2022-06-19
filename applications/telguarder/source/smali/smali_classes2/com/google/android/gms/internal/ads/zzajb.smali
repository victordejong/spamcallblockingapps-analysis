.class public final Lcom/google/android/gms/internal/ads/zzajb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzu;


# instance fields
.field private final context:Landroid/content/Context;

.field private volatile zzdir:Lcom/google/android/gms/internal/ads/zzaiq;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajb;->context:Landroid/content/Context;

    return-void
.end method

.method private final disconnect()V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajb;->zzdir:Lcom/google/android/gms/internal/ads/zzaiq;

    if-nez v0, :cond_0

    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajb;->zzdir:Lcom/google/android/gms/internal/ads/zzaiq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaiq;->disconnect()V

    .line 59
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzajb;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzajb;->disconnect()V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzajb;)Lcom/google/android/gms/internal/ads/zzaiq;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzajb;->zzdir:Lcom/google/android/gms/internal/ads/zzaiq;

    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzab;)Lcom/google/android/gms/internal/ads/zzz;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzab<",
            "*>;)",
            "Lcom/google/android/gms/internal/ads/zzz;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzap;
        }
    .end annotation

    const-string v0, "ms"

    const-string v1, "Http assets remote cache took "

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzait;->zzh(Lcom/google/android/gms/internal/ads/zzab;)Lcom/google/android/gms/internal/ads/zzait;

    move-result-object p1

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v4, 0x0

    const/16 v5, 0x34

    .line 9
    :try_start_0
    new-instance v6, Lcom/google/android/gms/internal/ads/zzbaa;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzbaa;-><init>()V

    .line 10
    new-instance v7, Lcom/google/android/gms/internal/ads/zzajf;

    invoke-direct {v7, p0, v6}, Lcom/google/android/gms/internal/ads/zzajf;-><init>(Lcom/google/android/gms/internal/ads/zzajb;Lcom/google/android/gms/internal/ads/zzbaa;)V

    .line 11
    new-instance v8, Lcom/google/android/gms/internal/ads/zzaje;

    invoke-direct {v8, p0, v6}, Lcom/google/android/gms/internal/ads/zzaje;-><init>(Lcom/google/android/gms/internal/ads/zzajb;Lcom/google/android/gms/internal/ads/zzbaa;)V

    .line 13
    new-instance v9, Lcom/google/android/gms/internal/ads/zzaiq;

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzajb;->context:Landroid/content/Context;

    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlf()Lcom/google/android/gms/ads/internal/util/zzbl;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/ads/internal/util/zzbl;->zzzp()Landroid/os/Looper;

    move-result-object v11

    invoke-direct {v9, v10, v11, v7, v8}, Lcom/google/android/gms/internal/ads/zzaiq;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;)V

    .line 15
    iput-object v9, p0, Lcom/google/android/gms/internal/ads/zzajb;->zzdir:Lcom/google/android/gms/internal/ads/zzaiq;

    .line 16
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzajb;->zzdir:Lcom/google/android/gms/internal/ads/zzaiq;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzaiq;->checkAvailabilityAndConnect()V

    .line 18
    new-instance v7, Lcom/google/android/gms/internal/ads/zzaja;

    invoke-direct {v7, p0, p1}, Lcom/google/android/gms/internal/ads/zzaja;-><init>(Lcom/google/android/gms/internal/ads/zzajb;Lcom/google/android/gms/internal/ads/zzait;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzazp;->zzeic:Lcom/google/android/gms/internal/ads/zzdzv;

    .line 19
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/ads/zzdzk;->zzb(Lcom/google/android/gms/internal/ads/zzdzw;Lcom/google/android/gms/internal/ads/zzdyu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    .line 20
    sget-object v6, Lcom/google/android/gms/internal/ads/zzabp;->zzcuo:Lcom/google/android/gms/internal/ads/zzaba;

    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v6

    .line 23
    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v6, v6

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v9, Lcom/google/android/gms/internal/ads/zzazp;->zzeif:Ljava/util/concurrent/ScheduledExecutorService;

    .line 24
    invoke-static {p1, v6, v7, v8, v9}, Lcom/google/android/gms/internal/ads/zzdzk;->zza(Lcom/google/android/gms/internal/ads/zzdzw;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    .line 25
    new-instance v6, Lcom/google/android/gms/internal/ads/zzajc;

    invoke-direct {v6, p0}, Lcom/google/android/gms/internal/ads/zzajc;-><init>(Lcom/google/android/gms/internal/ads/zzajb;)V

    sget-object v7, Lcom/google/android/gms/internal/ads/zzazp;->zzeic:Lcom/google/android/gms/internal/ads/zzdzv;

    invoke-interface {p1, v6, v7}, Lcom/google/android/gms/internal/ads/zzdzw;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 27
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdzw;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v2

    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzeb(Ljava/lang/String;)V

    .line 41
    new-instance v0, Lcom/google/android/gms/internal/ads/zzatp;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzatp;-><init>(Landroid/os/ParcelFileDescriptor;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzaiv;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 42
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzatp;->zza(Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaiv;

    if-nez p1, :cond_0

    return-object v4

    .line 46
    :cond_0
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzaiv;->zzdip:Z

    if-nez v0, :cond_3

    .line 48
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzaiv;->zzdin:[Ljava/lang/String;

    array-length v0, v0

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzaiv;->zzdio:[Ljava/lang/String;

    array-length v1, v1

    if-eq v0, v1, :cond_1

    return-object v4

    .line 50
    :cond_1
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    .line 51
    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzaiv;->zzdin:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 52
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzaiv;->zzdin:[Ljava/lang/String;

    aget-object v1, v1, v0

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzaiv;->zzdio:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v8, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzz;

    iget v6, p1, Lcom/google/android/gms/internal/ads/zzaiv;->statusCode:I

    iget-object v7, p1, Lcom/google/android/gms/internal/ads/zzaiv;->data:[B

    iget-boolean v9, p1, Lcom/google/android/gms/internal/ads/zzaiv;->zzak:Z

    iget-wide v10, p1, Lcom/google/android/gms/internal/ads/zzaiv;->zzal:J

    move-object v5, v0

    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzz;-><init>(I[BLjava/util/Map;ZJ)V

    return-object v0

    .line 47
    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzap;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzaiv;->zzchg:Ljava/lang/String;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzap;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception p1

    .line 37
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v2

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzeb(Ljava/lang/String;)V

    .line 40
    throw p1

    .line 33
    :catch_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v2

    .line 35
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzeb(Ljava/lang/String;)V

    return-object v4
.end method
