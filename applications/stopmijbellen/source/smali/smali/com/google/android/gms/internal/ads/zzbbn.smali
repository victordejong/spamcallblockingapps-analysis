.class public final Lcom/google/android/gms/internal/ads/zzbbn;
.super Lcom/google/android/gms/internal/ads/zzgkh;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzglw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzgkh<",
        "Lcom/google/android/gms/internal/ads/zzbbo;",
        "Lcom/google/android/gms/internal/ads/zzbbn;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzglw;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbo;->zzc()Lcom/google/android/gms/internal/ads/zzbbo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgkh;-><init>(Lcom/google/android/gms/internal/ads/zzgkl;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbbd;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbo;->zzc()Lcom/google/android/gms/internal/ads/zzbbo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgkh;-><init>(Lcom/google/android/gms/internal/ads/zzgkl;)V

    return-void
.end method


# virtual methods
.method public final zza(Z)Lcom/google/android/gms/internal/ads/zzbbn;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgkh;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgkh;->zzal()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgkh;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgkh;->zza:Lcom/google/android/gms/internal/ads/zzgkl;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbbo;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbo;->zze(Lcom/google/android/gms/internal/ads/zzbbo;Z)V

    return-object p0
.end method

.method public final zzb(I)Lcom/google/android/gms/internal/ads/zzbbn;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgkh;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgkh;->zzal()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgkh;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgkh;->zza:Lcom/google/android/gms/internal/ads/zzgkl;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbbo;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbo;->zzf(Lcom/google/android/gms/internal/ads/zzbbo;I)V

    return-object p0
.end method
