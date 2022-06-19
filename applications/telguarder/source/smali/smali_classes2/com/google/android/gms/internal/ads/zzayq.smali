.class final Lcom/google/android/gms/internal/ads/zzayq;
.super Lcom/google/android/gms/ads/internal/util/zza;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# instance fields
.field private final synthetic zzecs:Lcom/google/android/gms/internal/ads/zzayo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzayo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzayq;->zzecs:Lcom/google/android/gms/internal/ads/zzayo;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzwe()V
    .locals 3

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzabt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayq;->zzecs:Lcom/google/android/gms/internal/ads/zzayo;

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzayo;->zza(Lcom/google/android/gms/internal/ads/zzayo;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzayq;->zzecs:Lcom/google/android/gms/internal/ads/zzayo;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzayo;->zzb(Lcom/google/android/gms/internal/ads/zzayo;)Lcom/google/android/gms/internal/ads/zzazn;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzazn;->zzbrp:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzabt;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayq;->zzecs:Lcom/google/android/gms/internal/ads/zzayo;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzayo;->zzc(Lcom/google/android/gms/internal/ads/zzayo;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 5
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzla()Lcom/google/android/gms/internal/ads/zzabu;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzayq;->zzecs:Lcom/google/android/gms/internal/ads/zzayo;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzayo;->zzd(Lcom/google/android/gms/internal/ads/zzayo;)Lcom/google/android/gms/internal/ads/zzabs;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzabu;->zza(Lcom/google/android/gms/internal/ads/zzabs;Lcom/google/android/gms/internal/ads/zzabt;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "Cannot config CSI reporter."

    .line 8
    invoke-static {v2, v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
