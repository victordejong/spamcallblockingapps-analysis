.class public final Lcom/google/android/gms/internal/ads/zzgpu;
.super Lcom/google/android/gms/internal/ads/zzgpm;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzgpm<",
        "TK;TV;TV;>;"
    }
.end annotation


# direct methods
.method public synthetic constructor <init>(ILcom/google/android/gms/internal/ads/zzgpt;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgpm;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgqe;)Lcom/google/android/gms/internal/ads/zzgpu;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/google/android/gms/internal/ads/zzgqe<",
            "TV;>;)",
            "Lcom/google/android/gms/internal/ads/zzgpu<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgpm;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgqe;)Lcom/google/android/gms/internal/ads/zzgpm;

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzgpv;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzgpv<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgpv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgpm;->zza:Ljava/util/LinkedHashMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgpv;-><init>(Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzgpt;)V

    return-object v0
.end method
