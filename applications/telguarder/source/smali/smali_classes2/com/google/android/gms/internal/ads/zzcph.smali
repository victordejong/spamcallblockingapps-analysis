.class public final Lcom/google/android/gms/internal/ads/zzcph;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbrr;
.implements Lcom/google/android/gms/internal/ads/zzbtb;
.implements Lcom/google/android/gms/internal/ads/zzbua;


# instance fields
.field private final zzdic:Lcom/google/android/gms/internal/ads/zzdrz;

.field private final zzebw:Lcom/google/android/gms/internal/ads/zzayy;

.field private final zzgqf:Lcom/google/android/gms/internal/ads/zzdsa;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdsa;Lcom/google/android/gms/internal/ads/zzdrz;Lcom/google/android/gms/internal/ads/zzayy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcph;->zzgqf:Lcom/google/android/gms/internal/ads/zzdsa;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcph;->zzdic:Lcom/google/android/gms/internal/ads/zzdrz;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcph;->zzebw:Lcom/google/android/gms/internal/ads/zzayy;

    return-void
.end method


# virtual methods
.method public final onAdLoaded()V
    .locals 4

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcph;->zzdic:Lcom/google/android/gms/internal/ads/zzdrz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcph;->zzgqf:Lcom/google/android/gms/internal/ads/zzdsa;

    const-string v2, "action"

    const-string v3, "loaded"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdsa;->zzu(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdrz;->zzb(Lcom/google/android/gms/internal/ads/zzdsa;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzdnl;)V
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcph;->zzgqf:Lcom/google/android/gms/internal/ads/zzdsa;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcph;->zzebw:Lcom/google/android/gms/internal/ads/zzayy;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdsa;->zza(Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzayy;)Lcom/google/android/gms/internal/ads/zzdsa;

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzvg;)V
    .locals 3

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcph;->zzgqf:Lcom/google/android/gms/internal/ads/zzdsa;

    const-string v1, "action"

    const-string v2, "ftl"

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdsa;->zzu(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object v0

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzvg;->errorCode:I

    .line 10
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzdsa;->zzu(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object v0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzvg;->zzchh:Ljava/lang/String;

    const-string v1, "ed"

    .line 11
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdsa;->zzu(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsa;

    .line 12
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcph;->zzdic:Lcom/google/android/gms/internal/ads/zzdrz;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcph;->zzgqf:Lcom/google/android/gms/internal/ads/zzdsa;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzdrz;->zzb(Lcom/google/android/gms/internal/ads/zzdsa;)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzatq;)V
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcph;->zzgqf:Lcom/google/android/gms/internal/ads/zzdsa;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzatq;->zzdxi:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdsa;->zzq(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzdsa;

    return-void
.end method
