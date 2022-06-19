.class final Lcom/google/android/gms/internal/ads/zzdth;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-gass@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;


# instance fields
.field private final packageName:Ljava/lang/String;

.field private final zzegn:Landroid/os/HandlerThread;

.field private zzhsr:Lcom/google/android/gms/internal/ads/zzduh;

.field private final zzhss:Ljava/lang/String;

.field private final zzhst:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/google/android/gms/internal/ads/zzcf$zza;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdth;->packageName:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdth;->zzhss:Ljava/lang/String;

    .line 4
    new-instance p2, Landroid/os/HandlerThread;

    const-string p3, "GassClient"

    invoke-direct {p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdth;->zzegn:Landroid/os/HandlerThread;

    .line 5
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 6
    new-instance p3, Lcom/google/android/gms/internal/ads/zzduh;

    .line 7
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const v5, 0x8c6180

    move-object v0, p3

    move-object v1, p1

    move-object v3, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzduh;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;I)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdth;->zzhsr:Lcom/google/android/gms/internal/ads/zzduh;

    .line 8
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdth;->zzhst:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 10
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdth;->zzhsr:Lcom/google/android/gms/internal/ads/zzduh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzduh;->checkAvailabilityAndConnect()V

    return-void
.end method

.method private final zzarp()V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdth;->zzhsr:Lcom/google/android/gms/internal/ads/zzduh;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzduh;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdth;->zzhsr:Lcom/google/android/gms/internal/ads/zzduh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzduh;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdth;->zzhsr:Lcom/google/android/gms/internal/ads/zzduh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzduh;->disconnect()V

    :cond_1
    return-void
.end method

.method private final zzaxs()Lcom/google/android/gms/internal/ads/zzduo;
    .locals 1

    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdth;->zzhsr:Lcom/google/android/gms/internal/ads/zzduh;

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

.method private static zzaxt()Lcom/google/android/gms/internal/ads/zzcf$zza;
    .locals 3

    .line 51
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcf$zza;->zzap()Lcom/google/android/gms/internal/ads/zzcf$zza$zzb;

    move-result-object v0

    const-wide/32 v1, 0x8000

    .line 52
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcf$zza$zzb;->zzau(J)Lcom/google/android/gms/internal/ads/zzcf$zza$zzb;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zzbiw()Lcom/google/android/gms/internal/ads/zzemo;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzelb;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcf$zza;

    return-object v0
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 3

    .line 24
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdth;->zzaxs()Lcom/google/android/gms/internal/ads/zzduo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 26
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzduk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdth;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdth;->zzhss:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzduk;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzduo;->zza(Lcom/google/android/gms/internal/ads/zzduk;)Lcom/google/android/gms/internal/ads/zzdum;

    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdum;->zzayi()Lcom/google/android/gms/internal/ads/zzcf$zza;

    move-result-object p1

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdth;->zzhst:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdth;->zzarp()V

    .line 31
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdth;->zzegn:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    return-void

    .line 34
    :catchall_0
    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdth;->zzhst:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdth;->zzaxt()Lcom/google/android/gms/internal/ads/zzcf$zza;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 40
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdth;->zzarp()V

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdth;->zzegn:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 42
    throw p1

    .line 37
    :catch_0
    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdth;->zzarp()V

    .line 38
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdth;->zzegn:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    :cond_0
    return-void
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    .line 44
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdth;->zzhst:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdth;->zzaxt()Lcom/google/android/gms/internal/ads/zzcf$zza;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 1

    .line 20
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdth;->zzhst:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdth;->zzaxt()Lcom/google/android/gms/internal/ads/zzcf$zza;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final zzef(I)Lcom/google/android/gms/internal/ads/zzcf$zza;
    .locals 3

    .line 13
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdth;->zzhst:Ljava/util/concurrent/LinkedBlockingQueue;

    const-wide/16 v0, 0x1388

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcf$zza;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_0

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdth;->zzaxt()Lcom/google/android/gms/internal/ads/zzcf$zza;

    move-result-object p1

    :cond_0
    return-object p1
.end method
