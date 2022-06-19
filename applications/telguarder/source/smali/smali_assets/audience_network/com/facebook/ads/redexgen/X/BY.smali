.class public final Lcom/facebook/ads/redexgen/X/BY;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/BX;
    }
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:[B

.field public A05:[B

.field public A06:[I

.field public A07:[I

.field public final A08:Landroid/media/MediaCodec$CryptoInfo;

.field public final A09:Lcom/facebook/ads/redexgen/X/BX;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 23469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23470
    sget v1, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/4 v2, 0x0

    const/16 v0, 0x10

    if-lt v1, v0, :cond_1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BY;->A00()Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BY;->A08:Landroid/media/MediaCodec$CryptoInfo;

    .line 23471
    sget v1, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/16 v0, 0x18

    if-lt v1, v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/BY;->A08:Landroid/media/MediaCodec$CryptoInfo;

    new-instance v0, Lcom/facebook/ads/redexgen/X/BX;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/BX;-><init>(Landroid/media/MediaCodec$CryptoInfo;Lcom/facebook/ads/redexgen/X/BW;)V

    :goto_1
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BY;->A09:Lcom/facebook/ads/redexgen/X/BX;

    .line 23472
    return-void

    .line 23473
    :cond_0
    move-object v0, v2

    goto :goto_1

    .line 23474
    :cond_1
    move-object v0, v2

    goto :goto_0
.end method

.method private A00()Landroid/media/MediaCodec$CryptoInfo;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 23475
    new-instance v0, Landroid/media/MediaCodec$CryptoInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$CryptoInfo;-><init>()V

    return-object v0
.end method

.method private A01()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 23476
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/BY;->A08:Landroid/media/MediaCodec$CryptoInfo;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/BY;->A03:I

    iput v0, v1, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    .line 23477
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BY;->A06:[I

    iput-object v0, v1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 23478
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BY;->A07:[I

    iput-object v0, v1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    .line 23479
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BY;->A05:[B

    iput-object v0, v1, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    .line 23480
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BY;->A04:[B

    iput-object v0, v1, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    .line 23481
    iget v0, p0, Lcom/facebook/ads/redexgen/X/BY;->A02:I

    iput v0, v1, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    .line 23482
    sget v1, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/16 v0, 0x18

    if-lt v1, v0, :cond_0

    .line 23483
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/BY;->A09:Lcom/facebook/ads/redexgen/X/BX;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/BY;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/BY;->A00:I

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/BX;->A01(Lcom/facebook/ads/redexgen/X/BX;II)V

    .line 23484
    :cond_0
    return-void
.end method


# virtual methods
.method public final A02()Landroid/media/MediaCodec$CryptoInfo;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 23485
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BY;->A08:Landroid/media/MediaCodec$CryptoInfo;

    return-object v0
.end method

.method public final A03(I[I[I[B[BIII)V
    .locals 2

    .line 23486
    iput p1, p0, Lcom/facebook/ads/redexgen/X/BY;->A03:I

    .line 23487
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/BY;->A06:[I

    .line 23488
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/BY;->A07:[I

    .line 23489
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/BY;->A05:[B

    .line 23490
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/BY;->A04:[B

    .line 23491
    iput p6, p0, Lcom/facebook/ads/redexgen/X/BY;->A02:I

    .line 23492
    iput p7, p0, Lcom/facebook/ads/redexgen/X/BY;->A01:I

    .line 23493
    iput p8, p0, Lcom/facebook/ads/redexgen/X/BY;->A00:I

    .line 23494
    sget v1, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/16 v0, 0x10

    if-lt v1, v0, :cond_0

    .line 23495
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BY;->A01()V

    .line 23496
    :cond_0
    return-void
.end method
