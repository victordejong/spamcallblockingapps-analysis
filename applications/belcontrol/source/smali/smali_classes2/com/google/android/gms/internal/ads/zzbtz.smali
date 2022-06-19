.class public final Lcom/google/android/gms/internal/ads/zzbtz;
.super Lcom/google/android/gms/internal/ads/zzbwf;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbua;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbwf<",
        "Lcom/google/android/gms/internal/ads/zzbua;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzbua;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzbya<",
            "Lcom/google/android/gms/internal/ads/zzbua;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbwf;-><init>(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzdnl;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbub;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzbub;-><init>(Lcom/google/android/gms/internal/ads/zzdnl;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbwf;->zza(Lcom/google/android/gms/internal/ads/zzbwh;)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzatq;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbty;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzbty;-><init>(Lcom/google/android/gms/internal/ads/zzatq;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbwf;->zza(Lcom/google/android/gms/internal/ads/zzbwh;)V

    return-void
.end method
