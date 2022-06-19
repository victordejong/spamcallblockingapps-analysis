.class public final Lcom/google/android/gms/internal/ads/zzfoi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzfoj;

.field private final zzb:[B

.field private zzc:I

.field private zzd:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfoj;[BLcom/google/android/gms/internal/ads/zzfoh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfoi;->zza:Lcom/google/android/gms/internal/ads/zzfoj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfoi;->zzb:[B

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/ads/zzfoi;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfoi;->zzd:I

    return-object p0
.end method

.method public final zzb(I)Lcom/google/android/gms/internal/ads/zzfoi;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfoi;->zzc:I

    return-object p0
.end method

.method public final declared-synchronized zzc()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfoi;->zza:Lcom/google/android/gms/internal/ads/zzfoj;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzfoj;->zzb:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfoj;->zza:Lcom/google/android/gms/internal/ads/zzfom;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfoi;->zzb:[B

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfom;->zzj([B)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfoi;->zza:Lcom/google/android/gms/internal/ads/zzfoj;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfoj;->zza:Lcom/google/android/gms/internal/ads/zzfom;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfoi;->zzc:I

    .line 2
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfom;->zzi(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfoi;->zza:Lcom/google/android/gms/internal/ads/zzfoj;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfoj;->zza:Lcom/google/android/gms/internal/ads/zzfom;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfoi;->zzd:I

    .line 3
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfom;->zzg(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfoi;->zza:Lcom/google/android/gms/internal/ads/zzfoj;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfoj;->zza:Lcom/google/android/gms/internal/ads/zzfom;

    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfom;->zzh([I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfoi;->zza:Lcom/google/android/gms/internal/ads/zzfoj;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfoj;->zza:Lcom/google/android/gms/internal/ads/zzfom;

    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzfom;->zzf()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 6
    :catch_0
    monitor-exit p0

    return-void
.end method
