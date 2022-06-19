.class final Lcom/google/android/gms/internal/ads/bhh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzp;
.implements Lcom/google/android/gms/ads/internal/overlay/zzx;
.implements Lcom/google/android/gms/internal/ads/eir;
.implements Lcom/google/android/gms/internal/ads/go;
.implements Lcom/google/android/gms/internal/ads/gq;


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/eir;

.field private b:Lcom/google/android/gms/internal/ads/go;

.field private c:Lcom/google/android/gms/ads/internal/overlay/zzp;

.field private d:Lcom/google/android/gms/internal/ads/gq;

.field private e:Lcom/google/android/gms/ads/internal/overlay/zzx;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/bhd;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/bhh;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/bhh;Lcom/google/android/gms/internal/ads/eir;Lcom/google/android/gms/internal/ads/go;Lcom/google/android/gms/ads/internal/overlay/zzp;Lcom/google/android/gms/internal/ads/gq;Lcom/google/android/gms/ads/internal/overlay/zzx;)V
    .locals 0

    .line 36
    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/internal/ads/bhh;->a(Lcom/google/android/gms/internal/ads/eir;Lcom/google/android/gms/internal/ads/go;Lcom/google/android/gms/ads/internal/overlay/zzp;Lcom/google/android/gms/internal/ads/gq;Lcom/google/android/gms/ads/internal/overlay/zzx;)V

    return-void
.end method

.method private final declared-synchronized a(Lcom/google/android/gms/internal/ads/eir;Lcom/google/android/gms/internal/ads/go;Lcom/google/android/gms/ads/internal/overlay/zzp;Lcom/google/android/gms/internal/ads/gq;Lcom/google/android/gms/ads/internal/overlay/zzx;)V
    .locals 0

    monitor-enter p0

    .line 29
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bhh;->a:Lcom/google/android/gms/internal/ads/eir;

    .line 30
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bhh;->b:Lcom/google/android/gms/internal/ads/go;

    .line 31
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bhh;->c:Lcom/google/android/gms/ads/internal/overlay/zzp;

    .line 32
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bhh;->d:Lcom/google/android/gms/internal/ads/gq;

    .line 33
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/bhh;->e:Lcom/google/android/gms/ads/internal/overlay/zzx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    monitor-enter p0

    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bhh;->b:Lcom/google/android/gms/internal/ads/go;

    if-eqz v0, :cond_0

    .line 24
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/go;->a(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bhh;->d:Lcom/google/android/gms/internal/ads/gq;

    if-eqz v0, :cond_0

    .line 27
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/gq;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onAdClicked()V
    .locals 1

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bhh;->a:Lcom/google/android/gms/internal/ads/eir;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/eir;->onAdClicked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onPause()V
    .locals 1

    monitor-enter p0

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bhh;->c:Lcom/google/android/gms/ads/internal/overlay/zzp;

    if-eqz v0, :cond_0

    .line 12
    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzp;->onPause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onResume()V
    .locals 1

    monitor-enter p0

    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bhh;->c:Lcom/google/android/gms/ads/internal/overlay/zzp;

    if-eqz v0, :cond_0

    .line 15
    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzp;->onResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onUserLeaveHint()V
    .locals 1

    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bhh;->c:Lcom/google/android/gms/ads/internal/overlay/zzp;

    if-eqz v0, :cond_0

    .line 9
    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzp;->onUserLeaveHint()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/ads/internal/overlay/zzl;)V
    .locals 1

    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bhh;->c:Lcom/google/android/gms/ads/internal/overlay/zzp;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzp;->zza(Lcom/google/android/gms/ads/internal/overlay/zzl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzvz()V
    .locals 1

    monitor-enter p0

    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bhh;->c:Lcom/google/android/gms/ads/internal/overlay/zzp;

    if-eqz v0, :cond_0

    .line 18
    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzp;->zzvz()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzws()V
    .locals 1

    monitor-enter p0

    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bhh;->e:Lcom/google/android/gms/ads/internal/overlay/zzx;

    if-eqz v0, :cond_0

    .line 21
    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzws()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
