.class final Lcom/google/android/gms/internal/ads/zzajf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;


# instance fields
.field private final synthetic zzbwb:Lcom/google/android/gms/internal/ads/zzbaa;

.field private final synthetic zzdis:Lcom/google/android/gms/internal/ads/zzajb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzajb;Lcom/google/android/gms/internal/ads/zzbaa;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajf;->zzdis:Lcom/google/android/gms/internal/ads/zzajb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzajf;->zzbwb:Lcom/google/android/gms/internal/ads/zzbaa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 1

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajf;->zzbwb:Lcom/google/android/gms/internal/ads/zzbaa;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajf;->zzdis:Lcom/google/android/gms/internal/ads/zzajb;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzajb;->zzb(Lcom/google/android/gms/internal/ads/zzajb;)Lcom/google/android/gms/internal/ads/zzaiq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaiq;->zzub()Lcom/google/android/gms/internal/ads/zzaiz;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbaa;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajf;->zzbwb:Lcom/google/android/gms/internal/ads/zzbaa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbaa;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 4

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajf;->zzbwb:Lcom/google/android/gms/internal/ads/zzbaa;

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x22

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "onConnectionSuspended: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbaa;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method
