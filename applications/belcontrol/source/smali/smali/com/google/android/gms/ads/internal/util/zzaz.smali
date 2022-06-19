.class public final Lcom/google/android/gms/ads/internal/util/zzaz;
.super Lcom/google/android/gms/internal/ads/zzbk;
.source ""


# instance fields
.field private final synthetic zzege:[B

.field private final synthetic zzegf:Ljava/util/Map;

.field private final synthetic zzegg:Lcom/google/android/gms/internal/ads/zzaze;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/util/zzay;ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzai;Lcom/google/android/gms/internal/ads/zzaj;[BLjava/util/Map;Lcom/google/android/gms/internal/ads/zzaze;)V
    .locals 0

    iput-object p6, p0, Lcom/google/android/gms/ads/internal/util/zzaz;->zzege:[B

    iput-object p7, p0, Lcom/google/android/gms/ads/internal/util/zzaz;->zzegf:Ljava/util/Map;

    iput-object p8, p0, Lcom/google/android/gms/ads/internal/util/zzaz;->zzegg:Lcom/google/android/gms/internal/ads/zzaze;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/google/android/gms/internal/ads/zzbk;-><init>(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzai;Lcom/google/android/gms/internal/ads/zzaj;)V

    return-void
.end method


# virtual methods
.method public final getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzaz;->zzegf:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzab;->getHeaders()Ljava/util/Map;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final synthetic zza(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbk;->zzi(Ljava/lang/String;)V

    return-void
.end method

.method public final zzg()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzaz;->zzege:[B

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzab;->zzg()[B

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final zzi(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzaz;->zzegg:Lcom/google/android/gms/internal/ads/zzaze;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaze;->zzes(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzbk;->zzi(Ljava/lang/String;)V

    return-void
.end method
