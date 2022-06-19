.class public final Lcom/google/android/gms/internal/ads/zzfv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzabb:Lcom/google/android/gms/internal/ads/zzcf$zza$zzb;

.field private final zzwc:Lcom/google/android/gms/internal/ads/zzfc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfc;Lcom/google/android/gms/internal/ads/zzcf$zza$zzb;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfv;->zzwc:Lcom/google/android/gms/internal/ads/zzfc;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfv;->zzabb:Lcom/google/android/gms/internal/ads/zzcf$zza$zzb;

    return-void
.end method

.method private final zzcy()Ljava/lang/Void;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfv;->zzwc:Lcom/google/android/gms/internal/ads/zzfc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfc;->zzcp()Ljava/util/concurrent/Future;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfv;->zzwc:Lcom/google/android/gms/internal/ads/zzfc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfc;->zzcp()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfv;->zzwc:Lcom/google/android/gms/internal/ads/zzfc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfc;->zzco()Lcom/google/android/gms/internal/ads/zzcf$zza;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfv;->zzabb:Lcom/google/android/gms/internal/ads/zzcf$zza$zzb;

    monitor-enter v2
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzelo; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :try_start_1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfv;->zzabb:Lcom/google/android/gms/internal/ads/zzcf$zza$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzejh;->toByteArray()[B

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeko;->zzbhw()Lcom/google/android/gms/internal/ads/zzeko;

    move-result-object v4

    const/4 v5, 0x0

    .line 11
    array-length v6, v0

    invoke-virtual {v3, v0, v5, v6, v4}, Lcom/google/android/gms/internal/ads/zzejg;->zza([BIILcom/google/android/gms/internal/ads/zzeko;)Lcom/google/android/gms/internal/ads/zzejg;

    .line 12
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzelo; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-object v1
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfv;->zzcy()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
