.class public final Lcom/google/android/gms/internal/ads/zztn;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final context:Landroid/content/Context;

.field private final lock:Ljava/lang/Object;

.field private zzbve:Lcom/google/android/gms/internal/ads/zzte;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private zzbvv:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztn;->lock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztn;->context:Landroid/content/Context;

    return-void
.end method

.method private final disconnect()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztn;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zztn;->zzbve:Lcom/google/android/gms/internal/ads/zzte;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->disconnect()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zztn;->zzbve:Lcom/google/android/gms/internal/ads/zzte;

    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zztn;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zztn;->disconnect()V

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zztn;Z)Z
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zztn;->zzbvv:Z

    return p1
.end method

.method public static synthetic zzb(Lcom/google/android/gms/internal/ads/zztn;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zztn;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/ads/zztn;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zztn;->zzbvv:Z

    return p0
.end method

.method public static synthetic zzd(Lcom/google/android/gms/internal/ads/zztn;)Lcom/google/android/gms/internal/ads/zzte;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zztn;->zzbve:Lcom/google/android/gms/internal/ads/zzte;

    return-object p0
.end method


# virtual methods
.method public final zzd(Lcom/google/android/gms/internal/ads/zzth;)Ljava/util/concurrent/Future;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzth;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/google/android/gms/internal/ads/zztv;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zztm;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zztm;-><init>(Lcom/google/android/gms/internal/ads/zztn;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zztp;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/internal/ads/zztp;-><init>(Lcom/google/android/gms/internal/ads/zztn;Lcom/google/android/gms/internal/ads/zzth;Lcom/google/android/gms/internal/ads/zzbaa;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zztt;

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/internal/ads/zztt;-><init>(Lcom/google/android/gms/internal/ads/zztn;Lcom/google/android/gms/internal/ads/zzbaa;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zztn;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v3, Lcom/google/android/gms/internal/ads/zzte;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zztn;->context:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlf()Lcom/google/android/gms/ads/internal/util/zzbl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/ads/internal/util/zzbl;->zzzp()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v4, v5, v1, p1}, Lcom/google/android/gms/internal/ads/zzte;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;)V

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zztn;->zzbve:Lcom/google/android/gms/internal/ads/zzte;

    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/BaseGmsClient;->checkAvailabilityAndConnect()V

    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
