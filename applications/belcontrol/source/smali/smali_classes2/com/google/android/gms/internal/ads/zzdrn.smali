.class public final synthetic Lcom/google/android/gms/internal/ads/zzdrn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbwh;


# instance fields
.field private final zzhrf:Lcom/google/android/gms/internal/ads/zzdqw;

.field private final zzhrg:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdqw;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdrn;->zzhrf:Lcom/google/android/gms/internal/ads/zzdqw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdrn;->zzhrg:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final zzo(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrn;->zzhrf:Lcom/google/android/gms/internal/ads/zzdqw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdrn;->zzhrg:Ljava/lang/Throwable;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdrp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqw;->zzaxh()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzdrk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqw;->zzaxi()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzdrp;->zza(Lcom/google/android/gms/internal/ads/zzdrk;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
