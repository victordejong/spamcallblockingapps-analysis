.class final Lcom/google/android/gms/internal/ads/zzfdc;
.super Lcom/google/android/gms/internal/ads/zzfmb;
.source "SourceFile"


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzbiq;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfde;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfde;Lcom/google/android/gms/internal/ads/zzbiq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfdc;->zzb:Lcom/google/android/gms/internal/ads/zzfde;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfdc;->zza:Lcom/google/android/gms/internal/ads/zzbiq;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfmb;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzv()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfdc;->zzb:Lcom/google/android/gms/internal/ads/zzfde;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfde;->zzr(Lcom/google/android/gms/internal/ads/zzfde;)Lcom/google/android/gms/internal/ads/zzdvn;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfdc;->zza:Lcom/google/android/gms/internal/ads/zzbiq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbiq;->zze()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzciz;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
