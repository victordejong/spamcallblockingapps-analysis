.class public final Lcom/facebook/ads/redexgen/X/Vf;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/CG;


# static fields
.field public static A07:[B

.field public static A08:[Ljava/lang/String;

.field public static final A09:Lcom/facebook/ads/redexgen/X/CJ;

.field public static final A0A:I

.field public static final A0B:[B

.field public static final A0C:[B

.field public static final A0D:[I

.field public static final A0E:[I


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:Lcom/facebook/ads/redexgen/X/CS;

.field public A04:Z

.field public A05:Z

.field public final A06:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 61388
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vf;->A06()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vf;->A05()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Vg;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Vg;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Vf;->A09:Lcom/facebook/ads/redexgen/X/CJ;

    .line 61389
    const/16 v1, 0x10

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Vf;->A0D:[I

    .line 61390
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/facebook/ads/redexgen/X/Vf;->A0E:[I

    .line 61391
    const/16 v2, 0xc

    const/4 v1, 0x6

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vf;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0j(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Vf;->A0B:[B

    .line 61392
    const/16 v2, 0x12

    const/16 v1, 0x9

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vf;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0j(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Vf;->A0C:[B

    .line 61393
    sget-object v1, Lcom/facebook/ads/redexgen/X/Vf;->A0E:[I

    const/16 v0, 0x8

    aget v0, v1, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Vf;->A0A:I

    return-void

    nop

    :array_0
    .array-data 4
        0xd
        0xe
        0x10
        0x12
        0x14
        0x15
        0x1b
        0x20
        0x6
        0x7
        0x6
        0x6
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x12
        0x18
        0x21
        0x25
        0x29
        0x2f
        0x33
        0x3b
        0x3d
        0x6
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 61394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61395
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A06:[B

    .line 61396
    return-void
.end method

.method private A00(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 61397
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Vf;->A08(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 61398
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x35

    const/16 v1, 0xc

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vf;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61399
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A05:Z

    if-eqz v0, :cond_0

    const/16 v2, 0x69

    const/4 v1, 0x2

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vf;->A03(III)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v1, 0xc

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vf;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v2, 0x67

    const/4 v1, 0x2

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vf;->A03(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 61400
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A05:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/facebook/ads/redexgen/X/Vf;->A0E:[I

    aget v0, v0, p1

    :goto_1
    return v0

    :cond_2
    sget-object v0, Lcom/facebook/ads/redexgen/X/Vf;->A0D:[I

    aget v0, v0, p1

    goto :goto_1
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/CH;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 61401
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->ADN()V

    .line 61402
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Vf;->A06:[B

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-interface {p1, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/CH;->ACM([BII)V

    .line 61403
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A06:[B

    aget-byte v4, v0, v1

    .line 61404
    .local p0, "frameHeader":B
    and-int/lit16 v0, v4, 0x83

    if-gtz v0, :cond_1

    .line 61405
    shr-int/lit8 v0, v4, 0x3

    and-int/lit8 v3, v0, 0xf

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vf;->A08:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x73

    if-eq v1, v0, :cond_0

    .line 61406
    .local p1, "frameType":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vf;->A08:[Ljava/lang/String;

    const-string v1, "DmzprgAR2Q26LD76IIgZAAGGONNYttGa"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/Vf;->A00(I)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 61407
    .end local p1    # "frameType":I
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x41

    const/16 v1, 0x26

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vf;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/CH;)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 61408
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A00:I

    const/4 v4, -0x1

    if-nez v0, :cond_0

    .line 61409
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Vf;->A01(Lcom/facebook/ads/redexgen/X/CH;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A01:I

    goto :goto_0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61410
    .local p0, "e":Ljava/io/EOFException;
    :catch_0
    return v4

    .line 61411
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A01:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A00:I

    .line 61412
    .end local p0    # "e":Ljava/io/EOFException;
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Vf;->A03:Lcom/facebook/ads/redexgen/X/CS;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vf;->A08:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x73

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vf;->A08:[Ljava/lang/String;

    const-string v1, "mpE0QIljJysQpdBAvSgjBaGvhgtYmuN6"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Vf;->A00:I

    const/4 v0, 0x1

    .line 61413
    invoke-interface {v3, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/CS;->ADR(Lcom/facebook/ads/redexgen/X/CH;IZ)I

    move-result v1

    .line 61414
    .local p0, "bytesAppended":I
    if-ne v1, v4, :cond_1

    .line 61415
    return v4

    .line 61416
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A00:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A00:I

    .line 61417
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A00:I

    const/4 v4, 0x0

    if-lez v0, :cond_2

    .line 61418
    return v4

    .line 61419
    :cond_2
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Vf;->A03:Lcom/facebook/ads/redexgen/X/CS;

    iget-wide v6, p0, Lcom/facebook/ads/redexgen/X/Vf;->A02:J

    const/4 v8, 0x1

    iget v9, p0, Lcom/facebook/ads/redexgen/X/Vf;->A01:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/CS;->ADT(JIIILcom/facebook/ads/redexgen/X/CR;)V

    .line 61420
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Vf;->A02:J

    const-wide/16 v0, 0x4e20

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Vf;->A02:J

    .line 61421
    return v4

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vf;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x28

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A04()V
    .locals 14

    .line 61422
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A04:Z

    if-nez v0, :cond_0

    .line 61423
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A04:Z

    .line 61424
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A05:Z

    if-eqz v0, :cond_2

    const/16 v2, 0x75

    const/16 v1, 0xc

    const/4 v0, 0x4

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vf;->A03(III)Ljava/lang/String;

    move-result-object v3

    .line 61425
    .local v0, "mimeType":Ljava/lang/String;
    :goto_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A05:Z

    if-eqz v0, :cond_1

    const/16 v8, 0x3e80

    .line 61426
    .local v3, "sampleRate":I
    :goto_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vf;->A03:Lcom/facebook/ads/redexgen/X/CS;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    sget v6, Lcom/facebook/ads/redexgen/X/Vf;->A0A:I

    const/4 v7, 0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 61427
    invoke-static/range {v2 .. v13}, Lcom/facebook/ads/internal/exoplayer2/Format;->A06(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    .line 61428
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/CS;->A5P(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 61429
    .end local v0    # "mimeType":Ljava/lang/String;
    .end local v3    # "sampleRate":I
    :cond_0
    return-void

    .line 61430
    :cond_1
    const/16 v8, 0x1f40

    goto :goto_1

    .line 61431
    :cond_2
    const/16 v2, 0x6b

    const/16 v1, 0xa

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vf;->A03(III)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0x81

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Vf;->A07:[B

    return-void

    :array_0
    .array-data 1
        0x4et
        -0x6ct
        -0x60t
        -0x71t
        -0x65t
        -0x6dt
        0x4et
        -0x5et
        -0x59t
        -0x62t
        -0x6dt
        0x4et
        0x61t
        0x5ft
        0x7ft
        -0x75t
        -0x70t
        0x48t
        -0x43t
        -0x45t
        -0x25t
        -0x19t
        -0x14t
        -0x39t
        -0xft
        -0x24t
        -0x5ct
        -0x79t
        -0x4dt
        -0x47t
        -0x50t
        -0x58t
        0x64t
        -0x4et
        -0x4dt
        -0x48t
        0x64t
        -0x56t
        -0x53t
        -0x4et
        -0x58t
        0x64t
        -0x7bt
        -0x6ft
        -0x6at
        0x64t
        -0x54t
        -0x57t
        -0x5bt
        -0x58t
        -0x57t
        -0x4at
        0x72t
        -0x1at
        0x9t
        0x9t
        0x2t
        0x4t
        -0x2t
        0x9t
        -0x43t
        -0x22t
        -0x16t
        -0x11t
        -0x43t
        -0x3ft
        -0x1at
        -0x12t
        -0x27t
        -0x1ct
        -0x1ft
        -0x24t
        -0x68t
        -0x18t
        -0x27t
        -0x24t
        -0x24t
        -0x1ft
        -0x1at
        -0x21t
        -0x68t
        -0x26t
        -0x1ft
        -0x14t
        -0x15t
        -0x68t
        -0x22t
        -0x19t
        -0x16t
        -0x68t
        -0x22t
        -0x16t
        -0x27t
        -0x1bt
        -0x23t
        -0x68t
        -0x20t
        -0x23t
        -0x27t
        -0x24t
        -0x23t
        -0x16t
        -0x68t
        -0x49t
        -0x55t
        -0x4t
        -0x19t
        -0x66t
        -0x52t
        -0x63t
        -0x5et
        -0x58t
        0x68t
        0x6ct
        -0x60t
        -0x57t
        -0x57t
        -0x73t
        -0x5ft
        -0x70t
        -0x6bt
        -0x65t
        0x5bt
        -0x73t
        -0x67t
        -0x62t
        0x59t
        -0x5dt
        -0x72t
    .end array-data
.end method

.method public static A06()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "tyqxsSzBBoxx23q1f1xFHZUFH0k3nLB4"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "s9JhXEYOfOy48kUGClnPVsxvQTMzfDDy"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "IKm6DC5T2lBBK3AgAThJr44tnDkYHW6C"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "HW2"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ynRofvLZeZk0XsKogpAweBOlBFHnb73J"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "ttduGRhwW1cLWwN5hfPrYX7d4hUgQoiP"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "UWZd"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "CQwzUwAhExikh678pbFzez4mALsTq162"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Vf;->A08:[Ljava/lang/String;

    return-void
.end method

.method private A07(I)Z
    .locals 1

    .line 61432
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A05:Z

    if-nez v0, :cond_1

    const/16 v0, 0xc

    if-lt p1, v0, :cond_0

    const/16 v0, 0xe

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A08(I)Z
    .locals 4

    .line 61433
    if-ltz p1, :cond_2

    const/16 v0, 0xf

    if-gt p1, v0, :cond_2

    .line 61434
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Vf;->A09(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Vf;->A07(I)Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vf;->A08:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4c

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vf;->A08:[Ljava/lang/String;

    const-string v1, "s38G"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "mqL"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 61435
    :goto_0
    return v0
.end method

.method private A09(I)Z
    .locals 1

    .line 61436
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A05:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    const/16 v0, 0xd

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/CH;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 61437
    sget-object v0, Lcom/facebook/ads/redexgen/X/Vf;->A0B:[B

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Vf;->A0B(Lcom/facebook/ads/redexgen/X/CH;[B)Z

    move-result v0

    const/4 v5, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 61438
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/Vf;->A05:Z

    .line 61439
    sget-object v0, Lcom/facebook/ads/redexgen/X/Vf;->A0B:[B

    array-length v0, v0

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/CH;->AE4(I)V

    .line 61440
    return v3

    .line 61441
    :cond_0
    sget-object v4, Lcom/facebook/ads/redexgen/X/Vf;->A0C:[B

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vf;->A08:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vf;->A08:[Ljava/lang/String;

    const-string v1, "2LEwLDXb5B4lW4UllYyT9LX01kHYLV6P"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-direct {p0, p1, v4}, Lcom/facebook/ads/redexgen/X/Vf;->A0B(Lcom/facebook/ads/redexgen/X/CH;[B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61442
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Vf;->A05:Z

    .line 61443
    sget-object v0, Lcom/facebook/ads/redexgen/X/Vf;->A0C:[B

    array-length v0, v0

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/CH;->AE4(I)V

    .line 61444
    return v3

    .line 61445
    :cond_1
    return v5

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0B(Lcom/facebook/ads/redexgen/X/CH;[B)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 61446
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->ADN()V

    .line 61447
    array-length v0, p2

    new-array v2, v0, [B

    .line 61448
    .local p0, "header":[B
    array-length v1, p2

    const/4 v0, 0x0

    invoke-interface {p1, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/CH;->ACM([BII)V

    .line 61449
    invoke-static {v2, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final A7s(Lcom/facebook/ads/redexgen/X/CI;)V
    .locals 3

    .line 61450
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    new-instance v0, Lcom/facebook/ads/redexgen/X/Vh;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Vh;-><init>(J)V

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/CI;->ADY(Lcom/facebook/ads/redexgen/X/CP;)V

    .line 61451
    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/CI;->AEO(II)Lcom/facebook/ads/redexgen/X/CS;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A03:Lcom/facebook/ads/redexgen/X/CS;

    .line 61452
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CI;->A59()V

    .line 61453
    return-void
.end method

.method public final ACk(Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/redexgen/X/CN;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 61454
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->A71()J

    move-result-wide v3

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    .line 61455
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Vf;->A0A(Lcom/facebook/ads/redexgen/X/CH;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61456
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vf;->A04()V

    .line 61457
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Vf;->A02(Lcom/facebook/ads/redexgen/X/CH;)I

    move-result v0

    return v0

    .line 61458
    :cond_1
    const/16 v2, 0x1b

    const/16 v1, 0x1a

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vf;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ADX(JJ)V
    .locals 2

    .line 61459
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A02:J

    .line 61460
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A01:I

    .line 61461
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A00:I

    .line 61462
    return-void
.end method

.method public final AE6(Lcom/facebook/ads/redexgen/X/CH;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 61463
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Vf;->A0A(Lcom/facebook/ads/redexgen/X/CH;)Z

    move-result v0

    return v0
.end method
