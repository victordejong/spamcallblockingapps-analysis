.class final Lcom/google/android/gms/internal/ads/cvl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/d$a;
.implements Lcom/google/android/gms/common/internal/d$b;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cwh;

.field private final b:Lcom/google/android/gms/internal/ads/cwa;

.field private final c:Ljava/lang/Object;

.field private d:Z

.field private e:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/cwa;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cvl;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/cvl;->d:Z

    .line 4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/cvl;->e:Z

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/cvl;->b:Lcom/google/android/gms/internal/ads/cwa;

    .line 6
    new-instance p3, Lcom/google/android/gms/internal/ads/cwh;

    const v6, 0xc35000

    move-object v1, p3

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/cwh;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/d$a;Lcom/google/android/gms/common/internal/d$b;I)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/cvl;->a:Lcom/google/android/gms/internal/ads/cwh;

    return-void
.end method

.method private final c()V
    .locals 2

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cvl;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 14
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cvl;->a:Lcom/google/android/gms/internal/ads/cwh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/cwh;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cvl;->a:Lcom/google/android/gms/internal/ads/cwh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/cwh;->isConnecting()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cvl;->a:Lcom/google/android/gms/internal/ads/cwh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/cwh;->disconnect()V

    .line 16
    :cond_1
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    .line 17
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cvl;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 19
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/cvl;->e:Z

    if-eqz v1, :cond_0

    .line 20
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 21
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/cvl;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 22
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cvl;->a:Lcom/google/android/gms/internal/ads/cwh;

    .line 23
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/cwh;->a()Lcom/google/android/gms/internal/ads/cwm;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdwc;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cvl;->b:Lcom/google/android/gms/internal/ads/cwa;

    .line 24
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/dln;->g()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzdwc;-><init>([B)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/cwm;->a(Lcom/google/android/gms/internal/ads/zzdwc;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    :try_start_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cvl;->c()V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 30
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cvl;->c()V

    .line 31
    throw v1

    .line 28
    :catch_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cvl;->c()V

    .line 32
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public final a(I)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    return-void
.end method

.method final b()V
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cvl;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 9
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/cvl;->d:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/cvl;->d:Z

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cvl;->a:Lcom/google/android/gms/internal/ads/cwh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/cwh;->checkAvailabilityAndConnect()V

    .line 12
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
