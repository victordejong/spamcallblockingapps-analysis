.class public final Lcom/google/android/gms/internal/ads/zzud;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.7.0"


# instance fields
.field private final zzbyj:[B

.field private zzbyk:I

.field private zzbyl:I

.field private final synthetic zzbym:Lcom/google/android/gms/internal/ads/zztz;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zztz;[B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzud;->zzbym:Lcom/google/android/gms/internal/ads/zztz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzud;->zzbyj:[B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zztz;[BLcom/google/android/gms/internal/ads/zzue;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzud;-><init>(Lcom/google/android/gms/internal/ads/zztz;[B)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized log()V
    .locals 2

    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzud;->zzbym:Lcom/google/android/gms/internal/ads/zztz;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zztz;->zzbyh:Z

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzud;->zzbym:Lcom/google/android/gms/internal/ads/zztz;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zztz;->zzbyg:Lcom/google/android/gms/internal/ads/zzhb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzud;->zzbyj:[B

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzhb;->zzc([B)V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzud;->zzbym:Lcom/google/android/gms/internal/ads/zztz;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zztz;->zzbyg:Lcom/google/android/gms/internal/ads/zzhb;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzud;->zzbyk:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzhb;->zzs(I)V

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzud;->zzbym:Lcom/google/android/gms/internal/ads/zztz;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zztz;->zzbyg:Lcom/google/android/gms/internal/ads/zzhb;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzud;->zzbyl:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzhb;->zzt(I)V

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzud;->zzbym:Lcom/google/android/gms/internal/ads/zztz;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zztz;->zzbyg:Lcom/google/android/gms/internal/ads/zzhb;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzhb;->zza([I)V

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzud;->zzbym:Lcom/google/android/gms/internal/ads/zztz;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zztz;->zzbyg:Lcom/google/android/gms/internal/ads/zzhb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhb;->log()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "Clearcut log failed"

    .line 12
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzazk;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public final zzbu(I)Lcom/google/android/gms/internal/ads/zzud;
    .locals 0

    .line 14
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzud;->zzbyk:I

    return-object p0
.end method

.method public final zzbv(I)Lcom/google/android/gms/internal/ads/zzud;
    .locals 0

    .line 16
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzud;->zzbyl:I

    return-object p0
.end method
