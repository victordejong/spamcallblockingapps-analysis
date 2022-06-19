.class final Lcom/google/android/gms/internal/ads/zzdmn;
.super Lcom/google/android/gms/ads/reward/AdMetadataListener;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# instance fields
.field private final synthetic zzhis:Lcom/google/android/gms/internal/ads/zzdmk;

.field private final synthetic zzhit:Lcom/google/android/gms/internal/ads/zzyr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdmk;Lcom/google/android/gms/internal/ads/zzyr;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmn;->zzhis:Lcom/google/android/gms/internal/ads/zzdmk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdmn;->zzhit:Lcom/google/android/gms/internal/ads/zzyr;

    invoke-direct {p0}, Lcom/google/android/gms/ads/reward/AdMetadataListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdMetadataChanged()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmn;->zzhis:Lcom/google/android/gms/internal/ads/zzdmk;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdmk;->zza(Lcom/google/android/gms/internal/ads/zzdmk;)Lcom/google/android/gms/internal/ads/zzchb;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmn;->zzhit:Lcom/google/android/gms/internal/ads/zzyr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzyr;->onAdMetadataChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 6
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
