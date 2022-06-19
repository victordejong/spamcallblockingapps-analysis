.class final Lcom/google/android/gms/internal/ads/zzle;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzkz;


# instance fields
.field private final zzawt:Lcom/google/android/gms/internal/ads/zzpn;

.field private final zzaxc:I

.field private final zzaxf:I

.field private zzaxg:I

.field private zzaxh:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzky;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzky;->zzawt:Lcom/google/android/gms/internal/ads/zzpn;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzle;->zzawt:Lcom/google/android/gms/internal/ads/zzpn;

    const/16 v0, 0xc

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzpn;->zzbi(I)V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzpn;->zzja()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzle;->zzaxf:I

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzpn;->zzja()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzle;->zzaxc:I

    return-void
.end method


# virtual methods
.method public final zzgx()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzle;->zzaxc:I

    return v0
.end method

.method public final zzgy()I
    .locals 2

    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzle;->zzaxf:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzle;->zzawt:Lcom/google/android/gms/internal/ads/zzpn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpn;->readUnsignedByte()I

    move-result v0

    return v0

    :cond_0
    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzle;->zzawt:Lcom/google/android/gms/internal/ads/zzpn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpn;->readUnsignedShort()I

    move-result v0

    return v0

    .line 12
    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzle;->zzaxg:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzle;->zzaxg:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzle;->zzawt:Lcom/google/android/gms/internal/ads/zzpn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpn;->readUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzle;->zzaxh:I

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    return v0

    .line 15
    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzle;->zzaxh:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public final zzgz()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
