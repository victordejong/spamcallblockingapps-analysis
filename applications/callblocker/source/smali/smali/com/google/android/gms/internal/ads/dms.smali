.class public final Lcom/google/android/gms/internal/ads/dms;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field public a:[B

.field public b:[I

.field public c:[I

.field private d:[B

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private final i:Landroid/media/MediaCodec$CryptoInfo;

.field private final j:Lcom/google/android/gms/internal/ads/dmu;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Lcom/google/android/gms/internal/ads/dsn;->a:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_1

    .line 3
    new-instance v0, Landroid/media/MediaCodec$CryptoInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$CryptoInfo;-><init>()V

    .line 4
    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dms;->i:Landroid/media/MediaCodec$CryptoInfo;

    .line 5
    sget v0, Lcom/google/android/gms/internal/ads/dsn;->a:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/dmu;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dms;->i:Landroid/media/MediaCodec$CryptoInfo;

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/dmu;-><init>(Landroid/media/MediaCodec$CryptoInfo;Lcom/google/android/gms/internal/ads/dmr;)V

    move-object v1, v0

    :cond_0
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/dms;->j:Lcom/google/android/gms/internal/ads/dmu;

    .line 6
    return-void

    :cond_1
    move-object v0, v1

    .line 4
    goto :goto_0
.end method


# virtual methods
.method public final a()Landroid/media/MediaCodec$CryptoInfo;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dms;->i:Landroid/media/MediaCodec$CryptoInfo;

    return-object v0
.end method

.method public final a(I[I[I[B[BI)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 7
    iput p1, p0, Lcom/google/android/gms/internal/ads/dms;->f:I

    .line 8
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dms;->b:[I

    .line 9
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/dms;->c:[I

    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/dms;->d:[B

    .line 11
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/dms;->a:[B

    .line 12
    iput p6, p0, Lcom/google/android/gms/internal/ads/dms;->e:I

    .line 13
    iput v2, p0, Lcom/google/android/gms/internal/ads/dms;->g:I

    .line 14
    iput v2, p0, Lcom/google/android/gms/internal/ads/dms;->h:I

    .line 15
    sget v0, Lcom/google/android/gms/internal/ads/dsn;->a:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dms;->i:Landroid/media/MediaCodec$CryptoInfo;

    iget v1, p0, Lcom/google/android/gms/internal/ads/dms;->f:I

    iput v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dms;->i:Landroid/media/MediaCodec$CryptoInfo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dms;->b:[I

    iput-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dms;->i:Landroid/media/MediaCodec$CryptoInfo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dms;->c:[I

    iput-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dms;->i:Landroid/media/MediaCodec$CryptoInfo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dms;->d:[B

    iput-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dms;->i:Landroid/media/MediaCodec$CryptoInfo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dms;->a:[B

    iput-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dms;->i:Landroid/media/MediaCodec$CryptoInfo;

    iget v1, p0, Lcom/google/android/gms/internal/ads/dms;->e:I

    iput v1, v0, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    .line 23
    sget v0, Lcom/google/android/gms/internal/ads/dsn;->a:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dms;->j:Lcom/google/android/gms/internal/ads/dmu;

    invoke-static {v0, v2, v2}, Lcom/google/android/gms/internal/ads/dmu;->a(Lcom/google/android/gms/internal/ads/dmu;II)V

    .line 25
    :cond_0
    return-void
.end method
