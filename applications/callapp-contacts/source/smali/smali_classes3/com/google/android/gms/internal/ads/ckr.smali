.class public final Lcom/google/android/gms/internal/ads/ckr;
.super Lcom/google/android/gms/internal/ads/ekv;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzp;
.implements Lcom/google/android/gms/internal/ads/efu;


# instance fields
.field final a:Lcom/google/android/gms/internal/ads/afq;

.field protected b:Lcom/google/android/gms/internal/ads/all;

.field private final c:Landroid/content/Context;

.field private d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final e:Ljava/lang/String;

.field private final f:Lcom/google/android/gms/internal/ads/ckp;

.field private final g:Lcom/google/android/gms/internal/ads/ckb;

.field private h:J

.field private i:Lcom/google/android/gms/internal/ads/akl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/afq;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ckp;Lcom/google/android/gms/internal/ads/ckb;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ekv;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ckr;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/ckr;->h:J

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ckr;->a:Lcom/google/android/gms/internal/ads/afq;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ckr;->c:Landroid/content/Context;

    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ckr;->e:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/ckr;->f:Lcom/google/android/gms/internal/ads/ckp;

    .line 8
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/ckr;->g:Lcom/google/android/gms/internal/ads/ckb;

    .line 1022
    iget-object p1, p5, Lcom/google/android/gms/internal/ads/ckb;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/ckr;)Lcom/google/android/gms/internal/ads/ckb;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ckr;->g:Lcom/google/android/gms/internal/ads/ckb;

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/ckr;Lcom/google/android/gms/internal/ads/all;)V
    .locals 1

    .line 3009
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/all;->a:Lcom/google/android/gms/internal/ads/adt;

    if-eqz v0, :cond_0

    .line 3010
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/all;->a:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/adt;->a(Lcom/google/android/gms/internal/ads/efu;)V

    :cond_0
    return-void
.end method


# virtual methods
.method final declared-synchronized a(I)V
    .locals 5

    monitor-enter p0

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ckr;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ckr;->g:Lcom/google/android/gms/internal/ads/ckb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ckb;->b()V

    .line 55
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ckr;->i:Lcom/google/android/gms/internal/ads/akl;

    if-eqz v0, :cond_0

    .line 57
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzky()Lcom/google/android/gms/internal/ads/eex;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/eex;->b(Lcom/google/android/gms/internal/ads/efc;)V

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ckr;->b:Lcom/google/android/gms/internal/ads/all;

    if-eqz v0, :cond_2

    .line 59
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/ckr;->h:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    goto :goto_0

    .line 61
    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lcom/google/android/gms/common/util/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/f;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/ckr;->h:J

    sub-long v2, v0, v2

    .line 62
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ckr;->b:Lcom/google/android/gms/internal/ads/all;

    invoke-virtual {v0, v2, v3, p1}, Lcom/google/android/gms/internal/ads/all;->a(JI)V

    .line 63
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ckr;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b()V
    .locals 1

    .line 41
    sget v0, Lcom/google/android/gms/internal/ads/aks;->c:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/ckr;->a(I)V

    return-void
.end method

.method public final declared-synchronized destroy()V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "destroy must be called on the main UI thread."

    .line 65
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->b(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ckr;->b:Lcom/google/android/gms/internal/ads/all;

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/anp;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getAdMetadata()Landroid/os/Bundle;
    .locals 1

    .line 96
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final declared-synchronized getAdUnitId()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ckr;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getMediationAdapterClassName()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 82
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized getVideoController()Lcom/google/android/gms/internal/ads/emk;
    .locals 1

    monitor-enter p0

    .line 92
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized isLoading()Z
    .locals 1

    monitor-enter p0

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ckr;->f:Lcom/google/android/gms/internal/ads/ckp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cju;->a()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final isReady()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onPause()V
    .locals 0

    return-void
.end method

.method public final onResume()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized onUserLeaveHint()V
    .locals 5

    monitor-enter p0

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ckr;->b:Lcom/google/android/gms/internal/ads/all;

    if-eqz v0, :cond_0

    .line 38
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lcom/google/android/gms/common/util/f;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/f;->b()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/ckr;->h:J

    sub-long/2addr v1, v3

    sget v3, Lcom/google/android/gms/internal/ads/aks;->a:I

    .line 39
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/all;->a(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized pause()V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "pause must be called on the main UI thread."

    .line 69
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized resume()V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "resume must be called on the main UI thread."

    .line 71
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setImmersiveMode(Z)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized setManualImpressionsEnabled(Z)V
    .locals 0

    monitor-enter p0

    .line 91
    monitor-exit p0

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized showInterstitial()V
    .locals 0

    monitor-enter p0

    .line 81
    monitor-exit p0

    return-void
.end method

.method public final stopLoading()V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/ads/internal/overlay/zzl;)V
    .locals 1

    .line 27
    sget-object v0, Lcom/google/android/gms/internal/ads/ckz;->a:[I

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/overlay/zzl;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    sget p1, Lcom/google/android/gms/internal/ads/aks;->f:I

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ckr;->a(I)V

    :goto_0
    return-void

    .line 32
    :cond_1
    sget p1, Lcom/google/android/gms/internal/ads/aks;->d:I

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ckr;->a(I)V

    return-void

    .line 30
    :cond_2
    sget p1, Lcom/google/android/gms/internal/ads/aks;->b:I

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ckr;->a(I)V

    return-void

    .line 28
    :cond_3
    sget p1, Lcom/google/android/gms/internal/ads/aks;->c:I

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ckr;->a(I)V

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/bn;)V
    .locals 0

    monitor-enter p0

    .line 94
    monitor-exit p0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/egc;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ckr;->g:Lcom/google/android/gms/internal/ads/ckb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ckb;->a(Lcom/google/android/gms/internal/ads/egc;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/ekc;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/eki;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/ekz;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/ele;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/elk;)V
    .locals 0

    monitor-enter p0

    .line 90
    monitor-exit p0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/elm;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/emd;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/ri;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/rn;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/tz;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzaaz;)V
    .locals 0

    monitor-enter p0

    .line 93
    monitor-exit p0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzvq;Lcom/google/android/gms/internal/ads/ekj;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzvt;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    const-string p1, "setAdSize must be called on the main UI thread."

    .line 75
    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzwc;)V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ckr;->f:Lcom/google/android/gms/internal/ads/ckp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/cju;->a(Lcom/google/android/gms/internal/ads/zzwc;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzzj;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzvq;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "loadAd must be called on the main UI thread."

    .line 13
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->b(Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ckr;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzbc(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzvq;->zzcip:Lcom/google/android/gms/internal/ads/zzvf;

    if-nez v0, :cond_0

    const-string p1, "Failed to load the ad because app ID is missing."

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzex(Ljava/lang/String;)V

    .line 16
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ckr;->g:Lcom/google/android/gms/internal/ads/ckb;

    sget-object v0, Lcom/google/android/gms/internal/ads/cqj;->zzhoy:Lcom/google/android/gms/internal/ads/cqj;

    const/4 v2, 0x0

    .line 17
    invoke-static {v0, v2, v2}, Lcom/google/android/gms/internal/ads/cqh;->a(Lcom/google/android/gms/internal/ads/cqj;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvh;)Lcom/google/android/gms/internal/ads/zzvh;

    move-result-object v0

    .line 18
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/ckb;->a(Lcom/google/android/gms/internal/ads/zzvh;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    monitor-exit p0

    return v1

    .line 20
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ckr;->isLoading()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 21
    monitor-exit p0

    return v1

    .line 22
    :cond_1
    :try_start_2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ckr;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    new-instance v0, Lcom/google/android/gms/internal/ads/ckw;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/ckw;-><init>(Lcom/google/android/gms/internal/ads/ckr;)V

    .line 24
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ckr;->f:Lcom/google/android/gms/internal/ads/ckp;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ckr;->e:Ljava/lang/String;

    new-instance v3, Lcom/google/android/gms/internal/ads/ckv;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/ckv;-><init>(Lcom/google/android/gms/internal/ads/ckr;)V

    invoke-virtual {v1, p1, v2, v0, v3}, Lcom/google/android/gms/internal/ads/cju;->a(Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Lcom/google/android/gms/internal/ads/cai;Lcom/google/android/gms/internal/ads/cal;)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzbl(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final zze(Lcom/google/android/gms/dynamic/b;)V
    .locals 0

    return-void
.end method

.method public final zzki()Lcom/google/android/gms/dynamic/b;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized zzkj()V
    .locals 0

    monitor-enter p0

    .line 89
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized zzkk()Lcom/google/android/gms/internal/ads/zzvt;
    .locals 1

    monitor-enter p0

    .line 80
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized zzkl()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 83
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized zzkm()Lcom/google/android/gms/internal/ads/emj;
    .locals 1

    monitor-enter p0

    .line 79
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzkn()Lcom/google/android/gms/internal/ads/ele;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzko()Lcom/google/android/gms/internal/ads/eki;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized zzvz()V
    .locals 4

    monitor-enter p0

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ckr;->b:Lcom/google/android/gms/internal/ads/all;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 44
    monitor-exit p0

    return-void

    .line 45
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lcom/google/android/gms/common/util/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/f;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/ckr;->h:J

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ckr;->b:Lcom/google/android/gms/internal/ads/all;

    .line 1040
    iget v0, v0, Lcom/google/android/gms/internal/ads/all;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gtz v0, :cond_1

    .line 48
    monitor-exit p0

    return-void

    .line 49
    :cond_1
    :try_start_2
    new-instance v1, Lcom/google/android/gms/internal/ads/akl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ckr;->a:Lcom/google/android/gms/internal/ads/afq;

    .line 50
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/afq;->c()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lcom/google/android/gms/common/util/f;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/akl;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/common/util/f;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/ckr;->i:Lcom/google/android/gms/internal/ads/akl;

    .line 51
    new-instance v2, Lcom/google/android/gms/internal/ads/ckt;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/ckt;-><init>(Lcom/google/android/gms/internal/ads/ckr;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/akl;->a(ILjava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
