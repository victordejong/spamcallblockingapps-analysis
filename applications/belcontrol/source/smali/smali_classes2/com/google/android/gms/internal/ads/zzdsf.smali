.class public final Lcom/google/android/gms/internal/ads/zzdsf;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdrz;


# instance fields
.field private final zzgmc:Lcom/google/android/gms/internal/ads/zzdsj;

.field private final zzgmd:Lcom/google/android/gms/internal/ads/zzdsh;

.field private final zzhrt:Lcom/google/android/gms/internal/ads/zzdrw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdrw;Lcom/google/android/gms/internal/ads/zzdsj;Lcom/google/android/gms/internal/ads/zzdsh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdsf;->zzhrt:Lcom/google/android/gms/internal/ads/zzdrw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdsf;->zzgmc:Lcom/google/android/gms/internal/ads/zzdsj;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdsf;->zzgmd:Lcom/google/android/gms/internal/ads/zzdsh;

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzdsa;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsf;->zzhrt:Lcom/google/android/gms/internal/ads/zzdrw;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdsf;->zzc(Lcom/google/android/gms/internal/ads/zzdsa;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdrw;->zzgv(Ljava/lang/String;)V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzdsa;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsf;->zzgmc:Lcom/google/android/gms/internal/ads/zzdsj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdsa;->zzls()Ljava/util/Map;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsf;->zzgmd:Lcom/google/android/gms/internal/ads/zzdsh;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzdsh;->zzq(Ljava/util/Map;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdsj;->zzr(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
