.class public final Lcom/google/android/gms/internal/ads/zzall;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbac;


# instance fields
.field private final synthetic zzdjw:Lcom/google/android/gms/internal/ads/zzakz;

.field private final synthetic zzdka:Lcom/google/android/gms/internal/ads/zzalq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzakz;Lcom/google/android/gms/internal/ads/zzalq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzall;->zzdjw:Lcom/google/android/gms/internal/ads/zzakz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzall;->zzdka:Lcom/google/android/gms/internal/ads/zzalq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzall;->zzdjw:Lcom/google/android/gms/internal/ads/zzakz;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakz;->zza(Lcom/google/android/gms/internal/ads/zzakz;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzall;->zzdjw:Lcom/google/android/gms/internal/ads/zzakz;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzakz;->zza(Lcom/google/android/gms/internal/ads/zzakz;I)I

    const-string v1, "Failed loading new engine. Marking new engine destroyable."

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzeb(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzall;->zzdka:Lcom/google/android/gms/internal/ads/zzalq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzalq;->zzuo()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
