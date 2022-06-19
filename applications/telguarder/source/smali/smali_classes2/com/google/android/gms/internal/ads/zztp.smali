.class final Lcom/google/android/gms/internal/ads/zztp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;


# instance fields
.field final synthetic zzbvu:Lcom/google/android/gms/internal/ads/zztn;

.field private final synthetic zzbwa:Lcom/google/android/gms/internal/ads/zzth;

.field private final synthetic zzbwb:Lcom/google/android/gms/internal/ads/zzbaa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zztn;Lcom/google/android/gms/internal/ads/zzth;Lcom/google/android/gms/internal/ads/zzbaa;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztp;->zzbvu:Lcom/google/android/gms/internal/ads/zztn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zztp;->zzbwa:Lcom/google/android/gms/internal/ads/zzth;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zztp;->zzbwb:Lcom/google/android/gms/internal/ads/zzbaa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 5

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zztp;->zzbvu:Lcom/google/android/gms/internal/ads/zztn;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zztn;->zzb(Lcom/google/android/gms/internal/ads/zztn;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzbvu:Lcom/google/android/gms/internal/ads/zztn;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zztn;->zzc(Lcom/google/android/gms/internal/ads/zztn;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    monitor-exit p1

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzbvu:Lcom/google/android/gms/internal/ads/zztn;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zztn;->zza(Lcom/google/android/gms/internal/ads/zztn;Z)Z

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzbvu:Lcom/google/android/gms/internal/ads/zztn;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zztn;->zzd(Lcom/google/android/gms/internal/ads/zztn;)Lcom/google/android/gms/internal/ads/zzte;

    move-result-object v0

    if-nez v0, :cond_1

    .line 8
    monitor-exit p1

    return-void

    .line 9
    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzazp;->zzeic:Lcom/google/android/gms/internal/ads/zzdzv;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzto;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zztp;->zzbwa:Lcom/google/android/gms/internal/ads/zzth;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zztp;->zzbwb:Lcom/google/android/gms/internal/ads/zzbaa;

    invoke-direct {v2, p0, v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzto;-><init>(Lcom/google/android/gms/internal/ads/zztp;Lcom/google/android/gms/internal/ads/zzte;Lcom/google/android/gms/internal/ads/zzth;Lcom/google/android/gms/internal/ads/zzbaa;)V

    .line 10
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzdzv;->zzg(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zztp;->zzbwb:Lcom/google/android/gms/internal/ads/zzbaa;

    new-instance v2, Lcom/google/android/gms/internal/ads/zztr;

    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/internal/ads/zztr;-><init>(Lcom/google/android/gms/internal/ads/zzbaa;Ljava/util/concurrent/Future;)V

    .line 12
    sget-object v0, Lcom/google/android/gms/internal/ads/zzazp;->zzeih:Lcom/google/android/gms/internal/ads/zzdzv;

    .line 13
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbaa;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 14
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onConnectionSuspended(I)V
    .locals 0

    return-void
.end method
