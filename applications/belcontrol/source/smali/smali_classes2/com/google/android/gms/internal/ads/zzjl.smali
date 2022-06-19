.class public final Lcom/google/android/gms/internal/ads/zzjl;
.super Ljava/lang/Object;
.source ""


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/google/android/gms/internal/ads/zzpt;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    new-instance v2, Landroid/media/MediaCodec$CryptoInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$CryptoInfo;-><init>()V

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzjl;->zzany:Landroid/media/MediaCodec$CryptoInfo;

    const/16 v3, 0x18

    if-lt v0, v3, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzjn;

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzjn;-><init>(Landroid/media/MediaCodec$CryptoInfo;Lcom/google/android/gms/internal/ads/zzjk;)V

    move-object v1, v0

    :cond_1
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzjl;->zzanz:Lcom/google/android/gms/internal/ads/zzjn;

    return-void
.end method


# virtual methods
.method public final set(I[I[I[B[BI)V
    .locals 3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzjl;->numSubSamples:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzjl;->numBytesOfClearData:[I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzjl;->numBytesOfEncryptedData:[I

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzjl;->key:[B

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzjl;->iv:[B

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzjl;->mode:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzjl;->zzanw:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzjl;->zzanx:I

    sget v1, Lcom/google/android/gms/internal/ads/zzpt;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzjl;->zzany:Landroid/media/MediaCodec$CryptoInfo;

    iput p1, v2, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    iput-object p2, v2, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    iput-object p3, v2, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    iput-object p4, v2, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    iput-object p5, v2, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    iput p6, v2, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    const/16 p1, 0x18

    if-lt v1, p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjl;->zzanz:Lcom/google/android/gms/internal/ads/zzjn;

    invoke-static {p1, v0, v0}, Lcom/google/android/gms/internal/ads/zzjn;->zza(Lcom/google/android/gms/internal/ads/zzjn;II)V

    :cond_0
    return-void
.end method

.method public final zzgm()Landroid/media/MediaCodec$CryptoInfo;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjl;->zzany:Landroid/media/MediaCodec$CryptoInfo;

    return-object v0
.end method
