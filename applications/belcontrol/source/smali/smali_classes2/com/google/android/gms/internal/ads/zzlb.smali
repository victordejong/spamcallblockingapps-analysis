.class public final Lcom/google/android/gms/internal/ads/zzlb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzkz;


# instance fields
.field private final zzawt:Lcom/google/android/gms/internal/ads/zzpn;

.field private final zzaxb:I

.field private final zzaxc:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzky;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzky;->zzawt:Lcom/google/android/gms/internal/ads/zzpn;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlb;->zzawt:Lcom/google/android/gms/internal/ads/zzpn;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzpn;->zzbi(I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzpn;->zzja()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzlb;->zzaxb:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzpn;->zzja()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzlb;->zzaxc:I

    return-void
.end method


# virtual methods
.method public final zzgx()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzlb;->zzaxc:I

    return v0
.end method

.method public final zzgy()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzlb;->zzaxb:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlb;->zzawt:Lcom/google/android/gms/internal/ads/zzpn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpn;->zzja()I

    move-result v0

    :cond_0
    return v0
.end method

.method public final zzgz()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzlb;->zzaxb:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
