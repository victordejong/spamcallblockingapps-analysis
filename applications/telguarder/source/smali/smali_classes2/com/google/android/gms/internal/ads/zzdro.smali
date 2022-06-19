.class final synthetic Lcom/google/android/gms/internal/ads/zzdro;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbwh;


# instance fields
.field private final zzhrf:Lcom/google/android/gms/internal/ads/zzdqw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdqw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdro;->zzhrf:Lcom/google/android/gms/internal/ads/zzdqw;

    return-void
.end method


# virtual methods
.method public final zzo(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdro;->zzhrf:Lcom/google/android/gms/internal/ads/zzdqw;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdrp;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqw;->zzaxh()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdrk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqw;->zzaxi()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzdrp;->zzb(Lcom/google/android/gms/internal/ads/zzdrk;Ljava/lang/String;)V

    return-void
.end method
