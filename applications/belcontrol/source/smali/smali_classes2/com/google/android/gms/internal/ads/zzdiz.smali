.class public final Lcom/google/android/gms/internal/ads/zzdiz;
.super Lcom/google/android/gms/internal/ads/zzxo;
.source ""

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzq;
.implements Lcom/google/android/gms/internal/ads/zzsh;


# instance fields
.field private final zzbut:Ljava/lang/String;

.field private final zzguy:Lcom/google/android/gms/internal/ads/zzbgc;

.field private final zzgxt:Landroid/content/Context;

.field private zzhfb:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final zzhfd:Lcom/google/android/gms/internal/ads/zzdil;

.field private zzhff:Lcom/google/android/gms/internal/ads/zzbkq;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final zzhgb:Lcom/google/android/gms/internal/ads/zzdix;

.field private zzhgc:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field public zzhgd:Lcom/google/android/gms/internal/ads/zzblq;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbgc;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdix;Lcom/google/android/gms/internal/ads/zzdil;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzxo;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdiz;->zzhfb:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdiz;->zzhgc:J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdiz;->zzguy:Lcom/google/android/gms/internal/ads/zzbgc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdiz;->zzgxt:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdiz;->zzbut:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdiz;->zzhgb:Lcom/google/android/gms/internal/ads/zzdix;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdiz;->zzhfd:Lcom/google/android/gms/internal/ads/zzdil;

    invoke-virtual {p5, p0}, Lcom/google/android/gms/internal/ads/zzdil;->zza(Lcom/google/android/gms/ads/internal/overlay/zzq;)V

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzdiz;)Lcom/google/android/gms/internal/ads/zzdil;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdiz;->zzhfd:Lcom/google/android/gms/internal/ads/zzdil;

    return-object p0
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzblq;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzblq;->zza(Lcom/google/android/gms/internal/ads/zzsh;)V

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzdiz;Lcom/google/android/gms/internal/ads/zzblq;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdiz;->zza(Lcom/google/android/gms/internal/ads/zzblq;)V

    return-void
.end method

.method private final declared-synchronized zzeb(I)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdiz;->zzhfb:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdiz;->zzhfd:Lcom/google/android/gms/internal/ads/zzdil;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdil;->onAdClosed()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdiz;->zzhff:Lcom/google/android/gms/internal/ads/zzbkq;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzku()Lcom/google/android/gms/internal/ads/zzrl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzrl;->zzb(Lcom/google/android/gms/internal/ads/zzrm;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdiz;->zzhgd:Lcom/google/android/gms/internal/ads/zzblq;

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdiz;->zzhgc:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzdiz;->zzhgc:J

    sub-long v2, v0, v2

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdiz;->zzhgd:Lcom/google/android/gms/internal/ads/zzblq;

    invoke-virtual {v0, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzblq;->zzb(JI)V

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdiz;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized destroy()V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "destroy must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdiz;->zzhgd:Lcom/google/android/gms/internal/ads/zzblq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbnt;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final declared-synchronized getAdUnitId()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdiz;->zzbut:Ljava/lang/String;
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

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized getVideoController()Lcom/google/android/gms/internal/ads/zzzc;
    .locals 1

    monitor-enter p0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized isLoading()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdiz;->zzhgb:Lcom/google/android/gms/internal/ads/zzdix;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdif;->isLoading()Z

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

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdiz;->zzhgd:Lcom/google/android/gms/internal/ads/zzblq;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzdiz;->zzhgc:J

    sub-long/2addr v1, v3

    sget v3, Lcom/google/android/gms/internal/ads/zzbkw;->zzfts:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzblq;->zzb(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

    monitor-exit p0

    return-void
.end method

.method public final stopLoading()V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/ads/internal/overlay/zzn;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdjc;->zzhge:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

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

    :cond_0
    sget p1, Lcom/google/android/gms/internal/ads/zzbkw;->zzftx:I

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdiz;->zzeb(I)V

    :goto_0
    return-void

    :cond_1
    sget p1, Lcom/google/android/gms/internal/ads/zzbkw;->zzftv:I

    :goto_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdiz;->zzeb(I)V

    return-void

    :cond_2
    sget p1, Lcom/google/android/gms/internal/ads/zzbkw;->zzftt:I

    goto :goto_1

    :cond_3
    sget p1, Lcom/google/android/gms/internal/ads/zzbkw;->zzftu:I

    goto :goto_1
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzaau;)V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzacl;)V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzary;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzase;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzauu;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzsp;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdiz;->zzhfd:Lcom/google/android/gms/internal/ads/zzdil;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdil;->zzb(Lcom/google/android/gms/internal/ads/zzsp;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzvl;Lcom/google/android/gms/internal/ads/zzxc;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzvs;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    const-string p1, "setAdSize must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzvx;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdiz;->zzhgb:Lcom/google/android/gms/internal/ads/zzdix;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdif;->zza(Lcom/google/android/gms/internal/ads/zzvx;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzww;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzwx;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzxs;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzxt;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzxz;)V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzyb;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzyw;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzzi;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzvl;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "loadAd must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkr()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdiz;->zzgxt:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzaz(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzvl;->zzcia:Lcom/google/android/gms/internal/ads/zzve;

    if-nez v0, :cond_0

    const-string p1, "Failed to load the ad because app ID is missing."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzev(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdiz;->zzhfd:Lcom/google/android/gms/internal/ads/zzdil;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdom;->zzhlx:Lcom/google/android/gms/internal/ads/zzdom;

    const/4 v2, 0x0

    invoke-static {v0, v2, v2}, Lcom/google/android/gms/internal/ads/zzdok;->zza(Lcom/google/android/gms/internal/ads/zzdom;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvg;)Lcom/google/android/gms/internal/ads/zzvg;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdil;->zzc(Lcom/google/android/gms/internal/ads/zzvg;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdiz;->isLoading()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    :try_start_2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdiz;->zzhfb:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdja;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdja;-><init>(Lcom/google/android/gms/internal/ads/zzdiz;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdiz;->zzhgb:Lcom/google/android/gms/internal/ads/zzdix;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdiz;->zzbut:Ljava/lang/String;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzdjd;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzdjd;-><init>(Lcom/google/android/gms/internal/ads/zzdiz;)V

    invoke-virtual {v1, p1, v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzdif;->zza(Lcom/google/android/gms/internal/ads/zzvl;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzczb;Lcom/google/android/gms/internal/ads/zzcze;)Z

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

.method public final synthetic zzaug()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdiz;->zzguy:Lcom/google/android/gms/internal/ads/zzbgc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbgc;->zzafa()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdiy;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdiy;-><init>(Lcom/google/android/gms/internal/ads/zzdiz;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic zzauh()V
    .locals 1

    sget v0, Lcom/google/android/gms/internal/ads/zzbkw;->zzftw:I

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdiz;->zzeb(I)V

    return-void
.end method

.method public final zzbl(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final zze(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    return-void
.end method

.method public final zzke()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized zzkf()V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized zzkg()Lcom/google/android/gms/internal/ads/zzvs;
    .locals 1

    monitor-enter p0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized zzkh()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized zzki()Lcom/google/android/gms/internal/ads/zzyx;
    .locals 1

    monitor-enter p0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzkj()Lcom/google/android/gms/internal/ads/zzxt;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzkk()Lcom/google/android/gms/internal/ads/zzwx;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzmt()V
    .locals 1

    sget v0, Lcom/google/android/gms/internal/ads/zzbkw;->zzftu:I

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdiz;->zzeb(I)V

    return-void
.end method

.method public final declared-synchronized zzvo()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdiz;->zzhgd:Lcom/google/android/gms/internal/ads/zzblq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdiz;->zzhgc:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdiz;->zzhgd:Lcom/google/android/gms/internal/ads/zzblq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzblq;->zzajh()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gtz v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbkq;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdiz;->zzguy:Lcom/google/android/gms/internal/ads/zzbgc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbgc;->zzafb()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbkq;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/common/util/Clock;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdiz;->zzhff:Lcom/google/android/gms/internal/ads/zzbkq;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdjb;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzdjb;-><init>(Lcom/google/android/gms/internal/ads/zzdiz;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbkq;->zza(ILjava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
