.class public final Lcom/google/android/gms/internal/ads/zzdri;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdzl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdzl<",
        "TO;>;"
    }
.end annotation


# instance fields
.field private final synthetic zzhqf:Lcom/google/android/gms/internal/ads/zzdqw;

.field private final synthetic zzhqg:Lcom/google/android/gms/internal/ads/zzdrb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdrb;Lcom/google/android/gms/internal/ads/zzdqw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdri;->zzhqg:Lcom/google/android/gms/internal/ads/zzdrb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdri;->zzhqf:Lcom/google/android/gms/internal/ads/zzdqw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdri;->zzhqg:Lcom/google/android/gms/internal/ads/zzdrb;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdrb;->zzhpy:Lcom/google/android/gms/internal/ads/zzdqv;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdqv;->zzc(Lcom/google/android/gms/internal/ads/zzdqv;)Lcom/google/android/gms/internal/ads/zzdrh;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdri;->zzhqf:Lcom/google/android/gms/internal/ads/zzdqw;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzdrh;->zzc(Lcom/google/android/gms/internal/ads/zzdqw;)V

    return-void
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdri;->zzhqg:Lcom/google/android/gms/internal/ads/zzdrb;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdrb;->zzhpy:Lcom/google/android/gms/internal/ads/zzdqv;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdqv;->zzc(Lcom/google/android/gms/internal/ads/zzdqv;)Lcom/google/android/gms/internal/ads/zzdrh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdri;->zzhqf:Lcom/google/android/gms/internal/ads/zzdqw;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdrh;->zza(Lcom/google/android/gms/internal/ads/zzdqw;Ljava/lang/Throwable;)V

    return-void
.end method
