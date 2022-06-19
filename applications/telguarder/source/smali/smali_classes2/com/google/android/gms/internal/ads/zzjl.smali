.class public final Lcom/google/android/gms/internal/ads/zzjl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# instance fields
.field public iv:[B

.field private key:[B

.field private mode:I

.field public numBytesOfClearData:[I

.field public numBytesOfEncryptedData:[I

.field private numSubSamples:I

.field private zzanw:I

.field private zzanx:I

.field private final zzany:Landroid/media/MediaCodec$CryptoInfo;

.field private final zzanz:Lcom/google/android/gms/internal/ads/zzjn;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Lcom/google/android/gms/internal/ads/zzpt;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    .line 3
    new-instance v0, Landroid/media/MediaCodec$CryptoInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$CryptoInfo;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 4
    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzjl;->zzany:Landroid/media/MediaCodec$CryptoInfo;

    .line 5
    sget v2, Lcom/google/android/gms/internal/ads/zzpt;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzjn;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzjn;-><init>(Landroid/media/MediaCodec$CryptoInfo;Lcom/google/android/gms/internal/ads/zzjk;)V

    move-object v1, v2

    :cond_1
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzjl;->zzanz:Lcom/google/android/gms/internal/ads/zzjn;

    return-void
.end method


# virtual methods
.method public final set(I[I[I[B[BI)V
    .locals 0

    .line 7
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzjl;->numSubSamples:I

    .line 8
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzjl;->numBytesOfClearData:[I

    .line 9
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzjl;->numBytesOfEncryptedData:[I

    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzjl;->key:[B

    .line 11
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzjl;->iv:[B

    .line 12
    iput p6, p0, Lcom/google/android/gms/internal/ads/zzjl;->mode:I

    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzjl;->zzanw:I

    .line 14
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzjl;->zzanx:I

    .line 15
    sget p2, Lcom/google/android/gms/internal/ads/zzpt;->SDK_INT:I

    const/16 p3, 0x10

    if-lt p2, p3, :cond_0

    .line 17
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzjl;->zzany:Landroid/media/MediaCodec$CryptoInfo;

    iget p3, p0, Lcom/google/android/gms/internal/ads/zzjl;->numSubSamples:I

    iput p3, p2, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    .line 18
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzjl;->zzany:Landroid/media/MediaCodec$CryptoInfo;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzjl;->numBytesOfClearData:[I

    iput-object p3, p2, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 19
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzjl;->zzany:Landroid/media/MediaCodec$CryptoInfo;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzjl;->numBytesOfEncryptedData:[I

    iput-object p3, p2, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    .line 20
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzjl;->zzany:Landroid/media/MediaCodec$CryptoInfo;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzjl;->key:[B

    iput-object p3, p2, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    .line 21
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzjl;->zzany:Landroid/media/MediaCodec$CryptoInfo;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzjl;->iv:[B

    iput-object p3, p2, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    .line 22
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzjl;->zzany:Landroid/media/MediaCodec$CryptoInfo;

    iget p3, p0, Lcom/google/android/gms/internal/ads/zzjl;->mode:I

    iput p3, p2, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    .line 23
    sget p2, Lcom/google/android/gms/internal/ads/zzpt;->SDK_INT:I

    const/16 p3, 0x18

    if-lt p2, p3, :cond_0

    .line 24
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzjl;->zzanz:Lcom/google/android/gms/internal/ads/zzjn;

    invoke-static {p2, p1, p1}, Lcom/google/android/gms/internal/ads/zzjn;->zza(Lcom/google/android/gms/internal/ads/zzjn;II)V

    :cond_0
    return-void
.end method

.method public final zzgm()Landroid/media/MediaCodec$CryptoInfo;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjl;->zzany:Landroid/media/MediaCodec$CryptoInfo;

    return-object v0
.end method
