.class public final Lcom/google/android/gms/internal/ads/zzaae;
.super Lcom/google/android/gms/internal/ads/zzyf;
.source ""


# instance fields
.field private zzcll:Lcom/google/android/gms/internal/ads/zzajk;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzyf;-><init>()V

    return-void
.end method


# virtual methods
.method public final getVersionString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public final initialize()V
    .locals 2

    const-string v0, "The initialization is not processed because MobileAdsSettingsManager is not created successfully."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzazk;->zzev(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaza;->zzaac:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaah;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzaah;-><init>(Lcom/google/android/gms/internal/ads/zzaae;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setAppMuted(Z)V
    .locals 0

    return-void
.end method

.method public final setAppVolume(F)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzaao;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzajk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaae;->zzcll:Lcom/google/android/gms/internal/ads/zzajk;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzane;)V
    .locals 0

    return-void
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final zzcd(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final zzce(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final zzra()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public final zzrb()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zzrc()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzajh;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zzrd()V
    .locals 0

    return-void
.end method

.method public final synthetic zzru()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaae;->zzcll:Lcom/google/android/gms/internal/ads/zzajk;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzajk;->zze(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not notify onComplete event."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzazk;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
