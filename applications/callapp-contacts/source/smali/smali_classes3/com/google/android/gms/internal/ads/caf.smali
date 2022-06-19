.class public final Lcom/google/android/gms/internal/ads/caf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/google/android/gms/internal/ads/emj;

.field b:Z

.field private final c:Lcom/google/android/gms/internal/ads/caj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/caj<",
            "Lcom/google/android/gms/internal/ads/anp;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/caj;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/caj<",
            "Lcom/google/android/gms/internal/ads/anp;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/caf;->b:Z

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/caf;->c:Lcom/google/android/gms/internal/ads/caj;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/caf;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/zzvq;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 7
    :try_start_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/caf;->a:Lcom/google/android/gms/internal/ads/emj;

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/cak;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/cak;-><init>(I)V

    .line 9
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/caf;->c:Lcom/google/android/gms/internal/ads/caj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/caf;->d:Ljava/lang/String;

    new-instance v2, Lcom/google/android/gms/internal/ads/cae;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/cae;-><init>(Lcom/google/android/gms/internal/ads/caf;)V

    .line 10
    invoke-interface {p2, p1, v1, v0, v2}, Lcom/google/android/gms/internal/ads/caj;->a(Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Lcom/google/android/gms/internal/ads/cai;Lcom/google/android/gms/internal/ads/cal;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/caf;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/caf;->c:Lcom/google/android/gms/internal/ads/caj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/caj;->a()Z

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

.method public final declared-synchronized b()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/caf;->a:Lcom/google/android/gms/internal/ads/emj;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/emj;->a()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "#007 Could not call remote method."

    .line 14
    invoke-static {v2, v1}, Lcom/google/android/gms/ads/internal/util/zzd;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    monitor-exit p0

    return-object v0

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 16
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/caf;->a:Lcom/google/android/gms/internal/ads/emj;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/emj;->a()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "#007 Could not call remote method."

    .line 18
    invoke-static {v2, v1}, Lcom/google/android/gms/ads/internal/util/zzd;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    monitor-exit p0

    return-object v0

    :goto_0
    monitor-exit p0

    throw v0
.end method
