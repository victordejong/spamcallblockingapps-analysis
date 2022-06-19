.class public final Lcom/google/android/gms/internal/ads/zzcns;
.super Lcom/google/android/gms/internal/ads/zzcnl;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# instance fields
.field private zzgow:Ljava/lang/String;

.field private zzgox:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcnl;-><init>()V

    .line 2
    sget v0, Lcom/google/android/gms/internal/ads/zzcnt;->zzgoy:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcns;->zzgox:I

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlf()Lcom/google/android/gms/ads/internal/util/zzbl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/zzbl;->zzzp()Landroid/os/Looper;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/google/android/gms/internal/ads/zzasy;

    invoke-direct {v1, p1, v0, p0, p0}, Lcom/google/android/gms/internal/ads/zzasy;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcns;->zzgor:Lcom/google/android/gms/internal/ads/zzasy;

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 3

    .line 39
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcns;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 40
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcns;->zzgop:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcns;->zzgop:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 42
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcns;->zzgox:I

    sget v1, Lcom/google/android/gms/internal/ads/zzcnt;->zzgoz:I

    if-ne v0, v1, :cond_0

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcns;->zzgor:Lcom/google/android/gms/internal/ads/zzasy;

    .line 44
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzasy;->zzwi()Lcom/google/android/gms/internal/ads/zzath;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcns;->zzgoq:Lcom/google/android/gms/internal/ads/zzatq;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcno;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzcno;-><init>(Lcom/google/android/gms/internal/ads/zzcnl;)V

    .line 45
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzath;->zzc(Lcom/google/android/gms/internal/ads/zzatq;Lcom/google/android/gms/internal/ads/zzatk;)V

    goto :goto_0

    .line 46
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcns;->zzgox:I

    sget v1, Lcom/google/android/gms/internal/ads/zzcnt;->zzgpa:I

    if-ne v0, v1, :cond_1

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcns;->zzgor:Lcom/google/android/gms/internal/ads/zzasy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzasy;->zzwi()Lcom/google/android/gms/internal/ads/zzath;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcns;->zzgow:Ljava/lang/String;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcno;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzcno;-><init>(Lcom/google/android/gms/internal/ads/zzcnl;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzath;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzatk;)V

    goto :goto_0

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcns;->zzdlg:Lcom/google/android/gms/internal/ads/zzbaa;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcoc;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdom;->zzhlu:Lcom/google/android/gms/internal/ads/zzdom;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzcoc;-><init>(Lcom/google/android/gms/internal/ads/zzdom;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbaa;->setException(Ljava/lang/Throwable;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 54
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/internal/ads/zzayo;

    move-result-object v1

    const-string v2, "RemoteUrlAndCacheKeyClientTask.onConnected"

    .line 55
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzayo;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcns;->zzdlg:Lcom/google/android/gms/internal/ads/zzbaa;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcoc;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdom;->zzhlu:Lcom/google/android/gms/internal/ads/zzdom;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzcoc;-><init>(Lcom/google/android/gms/internal/ads/zzdom;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbaa;->setException(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 51
    :catch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcns;->zzdlg:Lcom/google/android/gms/internal/ads/zzbaa;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcoc;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdom;->zzhlu:Lcom/google/android/gms/internal/ads/zzdom;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzcoc;-><init>(Lcom/google/android/gms/internal/ads/zzdom;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbaa;->setException(Ljava/lang/Throwable;)Z

    .line 57
    :cond_2
    :goto_0
    monitor-exit p1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    const-string p1, "Cannot connect to remote service, fallback to local instance."

    .line 36
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzdy(Ljava/lang/String;)V

    .line 37
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcns;->zzdlg:Lcom/google/android/gms/internal/ads/zzbaa;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcoc;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdom;->zzhlu:Lcom/google/android/gms/internal/ads/zzdom;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzcoc;-><init>(Lcom/google/android/gms/internal/ads/zzdom;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbaa;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final zzgi(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcns;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 22
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcns;->zzgox:I

    sget v2, Lcom/google/android/gms/internal/ads/zzcnt;->zzgoy:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcns;->zzgox:I

    sget v2, Lcom/google/android/gms/internal/ads/zzcnt;->zzgpa:I

    if-eq v1, v2, :cond_0

    .line 23
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcoc;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdom;->zzhlv:Lcom/google/android/gms/internal/ads/zzdom;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzcoc;-><init>(Lcom/google/android/gms/internal/ads/zzdom;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdzk;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 24
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcns;->zzgoo:Z

    if-eqz v1, :cond_1

    .line 25
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcns;->zzdlg:Lcom/google/android/gms/internal/ads/zzbaa;

    monitor-exit v0

    return-object p1

    .line 26
    :cond_1
    sget v1, Lcom/google/android/gms/internal/ads/zzcnt;->zzgpa:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzcns;->zzgox:I

    const/4 v1, 0x1

    .line 27
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcns;->zzgoo:Z

    .line 28
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcns;->zzgow:Ljava/lang/String;

    .line 30
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnl;->zzgor:Lcom/google/android/gms/internal/ads/zzasy;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzasy;->checkAvailabilityAndConnect()V

    .line 31
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcns;->zzdlg:Lcom/google/android/gms/internal/ads/zzbaa;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcnu;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcnu;-><init>(Lcom/google/android/gms/internal/ads/zzcns;)V

    .line 32
    sget-object v2, Lcom/google/android/gms/internal/ads/zzazp;->zzeih:Lcom/google/android/gms/internal/ads/zzdzv;

    .line 33
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzbaa;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 34
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcns;->zzdlg:Lcom/google/android/gms/internal/ads/zzbaa;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 35
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzk(Lcom/google/android/gms/internal/ads/zzatq;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzatq;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcns;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcns;->zzgox:I

    sget v2, Lcom/google/android/gms/internal/ads/zzcnt;->zzgoy:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcns;->zzgox:I

    sget v2, Lcom/google/android/gms/internal/ads/zzcnt;->zzgoz:I

    if-eq v1, v2, :cond_0

    .line 8
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcoc;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdom;->zzhlv:Lcom/google/android/gms/internal/ads/zzdom;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzcoc;-><init>(Lcom/google/android/gms/internal/ads/zzdom;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdzk;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 9
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcns;->zzgoo:Z

    if-eqz v1, :cond_1

    .line 10
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcns;->zzdlg:Lcom/google/android/gms/internal/ads/zzbaa;

    monitor-exit v0

    return-object p1

    .line 11
    :cond_1
    sget v1, Lcom/google/android/gms/internal/ads/zzcnt;->zzgoz:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzcns;->zzgox:I

    const/4 v1, 0x1

    .line 12
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcns;->zzgoo:Z

    .line 13
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcns;->zzgoq:Lcom/google/android/gms/internal/ads/zzatq;

    .line 15
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnl;->zzgor:Lcom/google/android/gms/internal/ads/zzasy;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzasy;->checkAvailabilityAndConnect()V

    .line 16
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcns;->zzdlg:Lcom/google/android/gms/internal/ads/zzbaa;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcnr;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcnr;-><init>(Lcom/google/android/gms/internal/ads/zzcns;)V

    .line 17
    sget-object v2, Lcom/google/android/gms/internal/ads/zzazp;->zzeih:Lcom/google/android/gms/internal/ads/zzdzv;

    .line 18
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzbaa;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 19
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcns;->zzdlg:Lcom/google/android/gms/internal/ads/zzbaa;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
