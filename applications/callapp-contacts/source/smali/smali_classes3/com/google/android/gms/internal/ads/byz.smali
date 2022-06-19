.class public final Lcom/google/android/gms/internal/ads/byz;
.super Lcom/google/android/gms/internal/ads/ekn;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/caf;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/afq;Lcom/google/android/gms/internal/ads/cpq;Lcom/google/android/gms/internal/ads/bcy;Lcom/google/android/gms/internal/ads/eki;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ekn;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/cah;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/afq;->a()Lcom/google/android/gms/internal/ads/cty;

    move-result-object v1

    invoke-direct {v0, p4, v1}, Lcom/google/android/gms/internal/ads/cah;-><init>(Lcom/google/android/gms/internal/ads/bcy;Lcom/google/android/gms/internal/ads/cty;)V

    .line 1010
    iget-object p4, v0, Lcom/google/android/gms/internal/ads/cah;->b:Lcom/google/android/gms/internal/ads/bza;

    invoke-virtual {p4, p5}, Lcom/google/android/gms/internal/ads/bza;->a(Lcom/google/android/gms/internal/ads/eki;)V

    .line 5
    new-instance p4, Lcom/google/android/gms/internal/ads/can;

    invoke-direct {p4, p2, p1, v0, p3}, Lcom/google/android/gms/internal/ads/can;-><init>(Lcom/google/android/gms/internal/ads/afq;Landroid/content/Context;Lcom/google/android/gms/internal/ads/cah;Lcom/google/android/gms/internal/ads/cpq;)V

    .line 6
    new-instance p1, Lcom/google/android/gms/internal/ads/caf;

    .line 1018
    iget-object p2, p3, Lcom/google/android/gms/internal/ads/cpq;->d:Ljava/lang/String;

    .line 6
    invoke-direct {p1, p4, p2}, Lcom/google/android/gms/internal/ads/caf;-><init>(Lcom/google/android/gms/internal/ads/caj;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/byz;->a:Lcom/google/android/gms/internal/ads/caf;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzvq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/byz;->a:Lcom/google/android/gms/internal/ads/caf;

    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/caf;->a(Lcom/google/android/gms/internal/ads/zzvq;I)V

    return-void
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/zzvq;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/byz;->a:Lcom/google/android/gms/internal/ads/caf;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/caf;->a(Lcom/google/android/gms/internal/ads/zzvq;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
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

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/byz;->a:Lcom/google/android/gms/internal/ads/caf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/caf;->a()Z

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
    .locals 1

    monitor-enter p0

    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/byz;->a:Lcom/google/android/gms/internal/ads/caf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/caf;->b()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/byz;->a:Lcom/google/android/gms/internal/ads/caf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/caf;->c()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
