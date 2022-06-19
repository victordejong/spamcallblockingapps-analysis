.class public final Lcom/google/android/gms/internal/ads/ayu;
.super Lcom/google/android/gms/internal/ads/eaz;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Lcom/google/android/gms/internal/ads/eba;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/ads/le;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/eba;Lcom/google/android/gms/internal/ads/le;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/internal/ads/eba;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/internal/ads/le;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/eaz;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ayu;->a:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ayu;->b:Lcom/google/android/gms/internal/ads/eba;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ayu;->c:Lcom/google/android/gms/internal/ads/le;

    .line 5
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 6
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/ebb;)V
    .locals 2

    .prologue
    .line 18
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ayu;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 19
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayu;->b:Lcom/google/android/gms/internal/ads/eba;

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayu;->b:Lcom/google/android/gms/internal/ads/eba;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/eba;->a(Lcom/google/android/gms/internal/ads/ebb;)V

    .line 21
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 7
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 10
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 11
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final f()F
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayu;->c:Lcom/google/android/gms/internal/ads/le;

    if-eqz v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayu;->c:Lcom/google/android/gms/internal/ads/le;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/le;->t()F

    move-result v0

    .line 14
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()F
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayu;->c:Lcom/google/android/gms/internal/ads/le;

    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayu;->c:Lcom/google/android/gms/internal/ads/le;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/le;->u()F

    move-result v0

    .line 17
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Lcom/google/android/gms/internal/ads/ebb;
    .locals 2

    .prologue
    .line 22
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ayu;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayu;->b:Lcom/google/android/gms/internal/ads/eba;

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayu;->b:Lcom/google/android/gms/internal/ads/eba;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/eba;->h()Lcom/google/android/gms/internal/ads/ebb;

    move-result-object v0

    monitor-exit v1

    .line 25
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final i()F
    .locals 1

    .prologue
    .line 27
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 28
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final k()Z
    .locals 1

    .prologue
    .line 29
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method
