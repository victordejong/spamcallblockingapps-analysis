.class public final Lcom/google/android/gms/internal/ads/zzbjz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzq;
.implements Lcom/google/android/gms/internal/ads/zzbse;
.implements Lcom/google/android/gms/internal/ads/zzbsh;
.implements Lcom/google/android/gms/internal/ads/zzqw;


# instance fields
.field private final zzbqg:Lcom/google/android/gms/common/util/Clock;

.field private final zzfsf:Lcom/google/android/gms/internal/ads/zzbju;

.field private final zzfsg:Lcom/google/android/gms/internal/ads/zzbjx;

.field private final zzfsh:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzbeb;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfsi:Lcom/google/android/gms/internal/ads/zzamv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzamv<",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfsj:Ljava/util/concurrent/Executor;

.field private final zzfsk:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final zzfsl:Lcom/google/android/gms/internal/ads/zzbkb;

.field private zzfsm:Z

.field private zzfsn:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzamo;Lcom/google/android/gms/internal/ads/zzbjx;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzbju;Lcom/google/android/gms/common/util/Clock;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbjz;->zzfsh:Ljava/util/Set;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbjz;->zzfsk:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbkb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbkb;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbjz;->zzfsl:Lcom/google/android/gms/internal/ads/zzbkb;

    .line 5
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbjz;->zzfsm:Z

    .line 6
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbjz;->zzfsn:Ljava/lang/ref/WeakReference;

    .line 7
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbjz;->zzfsf:Lcom/google/android/gms/internal/ads/zzbju;

    .line 8
    sget-object p4, Lcom/google/android/gms/internal/ads/zzame;->zzdks:Lcom/google/android/gms/internal/ads/zzamf;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzame;->zzdks:Lcom/google/android/gms/internal/ads/zzamf;

    const-string v1, "google.afma.activeView.handleUpdate"

    .line 9
    invoke-virtual {p1, v1, p4, v0}, Lcom/google/android/gms/internal/ads/zzamo;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzamc;Lcom/google/android/gms/internal/ads/zzamd;)Lcom/google/android/gms/internal/ads/zzamv;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbjz;->zzfsi:Lcom/google/android/gms/internal/ads/zzamv;

    .line 10
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbjz;->zzfsg:Lcom/google/android/gms/internal/ads/zzbjx;

    .line 11
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbjz;->zzfsj:Ljava/util/concurrent/Executor;

    .line 12
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbjz;->zzbqg:Lcom/google/android/gms/common/util/Clock;

    return-void
.end method

.method private final zzaiz()V
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbjz;->zzfsh:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbeb;

    .line 32
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbjz;->zzfsf:Lcom/google/android/gms/internal/ads/zzbju;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbju;->zzb(Lcom/google/android/gms/internal/ads/zzbeb;)V

    goto :goto_0

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbjz;->zzfsf:Lcom/google/android/gms/internal/ads/zzbju;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbju;->zzaix()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized onAdImpression()V
    .locals 3

    monitor-enter p0

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbjz;->zzfsk:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbjz;->zzfsf:Lcom/google/android/gms/internal/ads/zzbju;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzbju;->zza(Lcom/google/android/gms/internal/ads/zzbjz;)V

    .line 70
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbjz;->zzaiy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onPause()V
    .locals 2

    monitor-enter p0

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbjz;->zzfsl:Lcom/google/android/gms/internal/ads/zzbkb;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzbkb;->zzfsp:Z

    .line 61
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbjz;->zzaiy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onResume()V
    .locals 2

    monitor-enter p0

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbjz;->zzfsl:Lcom/google/android/gms/internal/ads/zzbkb;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzbkb;->zzfsp:Z

    .line 64
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbjz;->zzaiy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onUserLeaveHint()V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/ads/internal/overlay/zzn;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzqx;)V
    .locals 2

    monitor-enter p0

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbjz;->zzfsl:Lcom/google/android/gms/internal/ads/zzbkb;

    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/zzqx;->zzbrj:Z

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzbkb;->zzbrj:Z

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbjz;->zzfsl:Lcom/google/android/gms/internal/ads/zzbkb;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzbkb;->zzfss:Lcom/google/android/gms/internal/ads/zzqx;

    .line 46
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbjz;->zzaiy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzaiy()V
    .locals 5

    monitor-enter p0

    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbjz;->zzfsn:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbjz;->zzaja()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit p0

    return-void

    .line 19
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbjz;->zzfsm:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbjz;->zzfsk:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 20
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbjz;->zzfsl:Lcom/google/android/gms/internal/ads/zzbkb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbjz;->zzbqg:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzbkb;->timestamp:J

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbjz;->zzfsg:Lcom/google/android/gms/internal/ads/zzbjx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbjz;->zzfsl:Lcom/google/android/gms/internal/ads/zzbkb;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbjx;->zza(Lcom/google/android/gms/internal/ads/zzbkb;)Lorg/json/JSONObject;

    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbjz;->zzfsh:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzbeb;

    .line 23
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbjz;->zzfsj:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzbkc;

    invoke-direct {v4, v2, v0}, Lcom/google/android/gms/internal/ads/zzbkc;-><init>(Lcom/google/android/gms/internal/ads/zzbeb;Lorg/json/JSONObject;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 25
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbjz;->zzfsi:Lcom/google/android/gms/internal/ads/zzamv;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzamv;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v0

    const-string v1, "ActiveViewListener.callActiveViewJs"

    .line 26
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzazw;->zzb(Lcom/google/android/gms/internal/ads/zzdzw;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "Failed to call ActiveViewJS"

    .line 29
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zza(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 30
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzaja()V
    .locals 1

    monitor-enter p0

    .line 36
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbjz;->zzaiz()V

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbjz;->zzfsm:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzc(Lcom/google/android/gms/internal/ads/zzbeb;)V
    .locals 1

    monitor-enter p0

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbjz;->zzfsh:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbjz;->zzfsf:Lcom/google/android/gms/internal/ads/zzbju;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbju;->zza(Lcom/google/android/gms/internal/ads/zzbeb;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzcb(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    .line 48
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbjz;->zzfsl:Lcom/google/android/gms/internal/ads/zzbkb;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzbkb;->zzfsp:Z

    .line 49
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbjz;->zzaiy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzcc(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    .line 51
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbjz;->zzfsl:Lcom/google/android/gms/internal/ads/zzbkb;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzbkb;->zzfsp:Z

    .line 52
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbjz;->zzaiy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzcd(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    .line 54
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbjz;->zzfsl:Lcom/google/android/gms/internal/ads/zzbkb;

    const-string v0, "u"

    iput-object v0, p1, Lcom/google/android/gms/internal/ads/zzbkb;->zzfsr:Ljava/lang/String;

    .line 55
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbjz;->zzaiy()V

    .line 56
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbjz;->zzaiz()V

    const/4 p1, 0x1

    .line 57
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbjz;->zzfsm:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzn(Ljava/lang/Object;)V
    .locals 1

    .line 42
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbjz;->zzfsn:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final zzvo()V
    .locals 0

    return-void
.end method
