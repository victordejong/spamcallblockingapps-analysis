.class public final Lcom/google/android/gms/internal/ads/egz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/google/android/gms/internal/ads/egu;

.field b:Z

.field final c:Ljava/lang/Object;

.field private final d:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/egz;->c:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/egz;->d:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/egz;)V
    .locals 2

    .line 1016
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/egz;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 1017
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/egz;->a:Lcom/google/android/gms/internal/ads/egu;

    if-nez v1, :cond_0

    .line 1018
    monitor-exit v0

    return-void

    .line 1019
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/egu;->disconnect()V

    const/4 v1, 0x0

    .line 1020
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/egz;->a:Lcom/google/android/gms/internal/ads/egu;

    .line 1021
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    .line 1022
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method final a(Lcom/google/android/gms/internal/ads/zzti;)Ljava/util/concurrent/Future;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzti;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/google/android/gms/internal/ads/ehh;",
            ">;"
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/ehc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/ehc;-><init>(Lcom/google/android/gms/internal/ads/egz;)V

    .line 6
    new-instance v1, Lcom/google/android/gms/internal/ads/ehb;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/internal/ads/ehb;-><init>(Lcom/google/android/gms/internal/ads/egz;Lcom/google/android/gms/internal/ads/zzti;Lcom/google/android/gms/internal/ads/zp;)V

    .line 7
    new-instance p1, Lcom/google/android/gms/internal/ads/ehf;

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/internal/ads/ehf;-><init>(Lcom/google/android/gms/internal/ads/egz;Lcom/google/android/gms/internal/ads/zp;)V

    .line 8
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/egz;->c:Ljava/lang/Object;

    monitor-enter v2

    .line 10
    :try_start_0
    new-instance v3, Lcom/google/android/gms/internal/ads/egu;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/egz;->d:Landroid/content/Context;

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlj()Lcom/google/android/gms/ads/internal/util/zzbl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/ads/internal/util/zzbl;->zzaai()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v4, v5, v1, p1}, Lcom/google/android/gms/internal/ads/egu;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/d$a;Lcom/google/android/gms/common/internal/d$b;)V

    .line 12
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/egz;->a:Lcom/google/android/gms/internal/ads/egu;

    .line 13
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/egu;->checkAvailabilityAndConnect()V

    .line 14
    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
