.class public final Lcom/google/android/gms/internal/ads/zzbdg;
.super Lcom/google/android/gms/internal/ads/zzgkh;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzglw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzgkh<",
        "Lcom/google/android/gms/internal/ads/zzbdk;",
        "Lcom/google/android/gms/internal/ads/zzbdg;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzglw;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbdk;->zzc()Lcom/google/android/gms/internal/ads/zzbdk;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgkh;-><init>(Lcom/google/android/gms/internal/ads/zzgkl;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbbd;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbdk;->zzc()Lcom/google/android/gms/internal/ads/zzbdk;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgkh;-><init>(Lcom/google/android/gms/internal/ads/zzgkl;)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzbdg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzbdf;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzbdg;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgkh;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgkh;->zzal()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgkh;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgkh;->zza:Lcom/google/android/gms/internal/ads/zzgkl;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbdk;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbdk;->zzd(Lcom/google/android/gms/internal/ads/zzbdk;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbdg;
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
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbdk;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbdk;->zzh(Lcom/google/android/gms/internal/ads/zzbdk;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbdg;
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
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbdk;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbdk;->zzi(Lcom/google/android/gms/internal/ads/zzbdk;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzd(I)Lcom/google/android/gms/internal/ads/zzbdg;
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
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbdk;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbdk;->zze(Lcom/google/android/gms/internal/ads/zzbdk;I)V

    return-object p0
.end method

.method public final zze(J)Lcom/google/android/gms/internal/ads/zzbdg;
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
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbdk;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbdk;->zzj(Lcom/google/android/gms/internal/ads/zzbdk;J)V

    return-object p0
.end method

.method public final zzf(I)Lcom/google/android/gms/internal/ads/zzbdg;
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
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbdk;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbdk;->zzf(Lcom/google/android/gms/internal/ads/zzbdk;I)V

    return-object p0
.end method

.method public final zzg(J)Lcom/google/android/gms/internal/ads/zzbdg;
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
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbdk;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbdk;->zzg(Lcom/google/android/gms/internal/ads/zzbdk;J)V

    return-object p0
.end method
