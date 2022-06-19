.class final Lcom/google/android/gms/internal/ads/zzdtj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-gass@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;


# instance fields
.field private final startTime:J

.field private final zzegn:Landroid/os/HandlerThread;

.field private zzhsr:Lcom/google/android/gms/internal/ads/zzduh;

.field private final zzhst:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/google/android/gms/internal/ads/zzduw;",
            ">;"
        }
    .end annotation
.end field

.field private final zzhsu:Ljava/lang/String;

.field private final zzhsv:Ljava/lang/String;

.field private final zzhsw:I

.field private final zzvs:Lcom/google/android/gms/internal/ads/zzdsy;

.field private final zzvu:Lcom/google/android/gms/internal/ads/zzgp;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/google/android/gms/internal/ads/zzgp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdsy;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdtj;->zzhsu:Ljava/lang/String;

    const/4 p2, 0x1

    .line 3
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzdtj;->zzhsw:I

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdtj;->zzvu:Lcom/google/android/gms/internal/ads/zzgp;

    .line 5
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdtj;->zzhsv:Ljava/lang/String;

    .line 6
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdtj;->zzvs:Lcom/google/android/gms/internal/ads/zzdsy;

    .line 7
    new-instance p2, Landroid/os/HandlerThread;

    const-string p3, "GassDGClient"

    invoke-direct {p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdtj;->zzegn:Landroid/os/HandlerThread;

    .line 8
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzdtj;->startTime:J

    .line 10
    new-instance p3, Lcom/google/android/gms/internal/ads/zzduh;

    .line 11
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const v5, 0x12b6488

    move-object v0, p3

    move-object v1, p1

    move-object v3, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzduh;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;I)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdtj;->zzhsr:Lcom/google/android/gms/internal/ads/zzduh;

    .line 12
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdtj;->zzhst:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 14
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdtj;->zzhsr:Lcom/google/android/gms/internal/ads/zzduh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzduh;->checkAvailabilityAndConnect()V

    return-void
.end method

.method private final zzarp()V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtj;->zzhsr:Lcom/google/android/gms/internal/ads/zzduh;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzduh;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtj;->zzhsr:Lcom/google/android/gms/internal/ads/zzduh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzduh;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtj;->zzhsr:Lcom/google/android/gms/internal/ads/zzduh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzduh;->disconnect()V

    :cond_1
    return-void
.end method

.method private final zzaxs()Lcom/google/android/gms/internal/ads/zzduo;
    .locals 1

    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtj;->zzhsr:Lcom/google/android/gms/internal/ads/zzduh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzduh;->zzayh()Lcom/google/android/gms/internal/ads/zzduo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static zzaxu()Lcom/google/android/gms/internal/ads/zzduw;
    .locals 3

    .line 66
    new-instance v0, Lcom/google/android/gms/internal/ads/zzduw;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzduw;-><init>([BI)V

    return-object v0
.end method

.method private final zzb(IJLjava/lang/Exception;)V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtj;->zzvs:Lcom/google/android/gms/internal/ads/zzdsy;

    if-eqz v0, :cond_0

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p2

    .line 70
    invoke-virtual {v0, p1, v1, v2, p4}, Lcom/google/android/gms/internal/ads/zzdsy;->zza(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    :cond_0
    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 5

    .line 37
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdtj;->zzaxs()Lcom/google/android/gms/internal/ads/zzduo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 39
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzduu;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdtj;->zzhsw:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdtj;->zzvu:Lcom/google/android/gms/internal/ads/zzgp;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdtj;->zzhsu:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdtj;->zzhsv:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzduu;-><init>(ILcom/google/android/gms/internal/ads/zzgp;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzduo;->zza(Lcom/google/android/gms/internal/ads/zzduu;)Lcom/google/android/gms/internal/ads/zzduw;

    move-result-object p1

    .line 41
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdtj;->startTime:J

    const/16 v2, 0x1393

    const/4 v3, 0x0

    .line 42
    invoke-direct {p0, v2, v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzdtj;->zzb(IJLjava/lang/Exception;)V

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtj;->zzhst:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdtj;->zzarp()V

    .line 45
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdtj;->zzegn:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    return-void

    :catchall_0
    move-exception p1

    .line 48
    :try_start_1
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const/16 p1, 0x7da

    .line 49
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzdtj;->startTime:J

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzdtj;->zzb(IJLjava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 50
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdtj;->zzarp()V

    .line 51
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdtj;->zzegn:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    return-void

    :catchall_1
    move-exception p1

    .line 53
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdtj;->zzarp()V

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtj;->zzegn:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 55
    throw p1

    :cond_0
    return-void
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    .line 57
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdtj;->startTime:J

    const/16 p1, 0xfac

    const/4 v2, 0x0

    .line 58
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdtj;->zzb(IJLjava/lang/Exception;)V

    .line 59
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdtj;->zzhst:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdtj;->zzaxu()Lcom/google/android/gms/internal/ads/zzduw;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 3

    .line 31
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdtj;->startTime:J

    const/16 p1, 0xfab

    const/4 v2, 0x0

    .line 32
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdtj;->zzb(IJLjava/lang/Exception;)V

    .line 33
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdtj;->zzhst:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdtj;->zzaxu()Lcom/google/android/gms/internal/ads/zzduw;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final zzeg(I)Lcom/google/android/gms/internal/ads/zzduw;
    .locals 4

    const/4 p1, 0x0

    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtj;->zzhst:Ljava/util/concurrent/LinkedBlockingQueue;

    const-wide/32 v1, 0xc350

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzduw;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v1, 0x7d9

    .line 20
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzdtj;->startTime:J

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzdtj;->zzb(IJLjava/lang/Exception;)V

    move-object v0, p1

    .line 21
    :goto_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzdtj;->startTime:J

    const/16 v3, 0xbbc

    .line 22
    invoke-direct {p0, v3, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzdtj;->zzb(IJLjava/lang/Exception;)V

    if-eqz v0, :cond_1

    .line 24
    iget p1, v0, Lcom/google/android/gms/internal/ads/zzduw;->status:I

    const/4 v1, 0x7

    if-ne p1, v1, :cond_0

    .line 25
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbw$zza$zzc;->zzer:Lcom/google/android/gms/internal/ads/zzbw$zza$zzc;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdsy;->zza(Lcom/google/android/gms/internal/ads/zzbw$zza$zzc;)V

    goto :goto_1

    .line 26
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbw$zza$zzc;->zzeq:Lcom/google/android/gms/internal/ads/zzbw$zza$zzc;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdsy;->zza(Lcom/google/android/gms/internal/ads/zzbw$zza$zzc;)V

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 27
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdtj;->zzaxu()Lcom/google/android/gms/internal/ads/zzduw;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0
.end method
