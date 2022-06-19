.class public final synthetic Lcom/google/android/gms/internal/ads/zzdrq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbwh;


# instance fields
.field private final zzhrf:Lcom/google/android/gms/internal/ads/zzdqw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdqw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdrq;->zzhrf:Lcom/google/android/gms/internal/ads/zzdqw;

    return-void
.end method


# virtual methods
.method public final zzo(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrq;->zzhrf:Lcom/google/android/gms/internal/ads/zzdqw;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdrp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqw;->zzaxh()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdrk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqw;->zzaxi()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzdrp;->zzc(Lcom/google/android/gms/internal/ads/zzdrk;Ljava/lang/String;)V

    return-void
.end method
