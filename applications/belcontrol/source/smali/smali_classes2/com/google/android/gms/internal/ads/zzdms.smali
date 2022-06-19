.class public final Lcom/google/android/gms/internal/ads/zzdms;
.super Lcom/google/android/gms/ads/reward/AdMetadataListener;
.source ""


# instance fields
.field private final synthetic zzhiu:Lcom/google/android/gms/internal/ads/zzxs;

.field private final synthetic zzhiv:Lcom/google/android/gms/internal/ads/zzdmq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdmq;Lcom/google/android/gms/internal/ads/zzxs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdms;->zzhiv:Lcom/google/android/gms/internal/ads/zzdmq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdms;->zzhiu:Lcom/google/android/gms/internal/ads/zzxs;

    invoke-direct {p0}, Lcom/google/android/gms/ads/reward/AdMetadataListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdMetadataChanged()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdms;->zzhiv:Lcom/google/android/gms/internal/ads/zzdmq;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdmq;->zza(Lcom/google/android/gms/internal/ads/zzdmq;)Lcom/google/android/gms/internal/ads/zzchb;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdms;->zzhiu:Lcom/google/android/gms/internal/ads/zzxs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzxs;->onAdMetadataChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzazk;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
