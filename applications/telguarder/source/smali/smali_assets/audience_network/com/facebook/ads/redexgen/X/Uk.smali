.class public final Lcom/facebook/ads/redexgen/X/Uk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/CG;


# static fields
.field public static A05:[B

.field public static A06:[Ljava/lang/String;

.field public static final A07:Lcom/facebook/ads/redexgen/X/CJ;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Lcom/facebook/ads/redexgen/X/CI;

.field public A03:Lcom/facebook/ads/redexgen/X/CS;

.field public A04:Lcom/facebook/ads/redexgen/X/Uj;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 57065
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Uk;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Uk;->A01()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ul;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Ul;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Uk;->A07:Lcom/facebook/ads/redexgen/X/CJ;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 57066
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Uk;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x46

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 4

    const/16 v0, 0x30

    new-array v3, v0, [B

    fill-array-data v3, :array_0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Uk;->A06:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x16

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Uk;->A06:[Ljava/lang/String;

    const-string v1, "DhsGBQtO08Bxj2RUflZv4F3utSuMWORE"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "TkPeXGwEvjX8dhw8sXSYEKMaK3ROsBHH"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    sput-object v3, Lcom/facebook/ads/redexgen/X/Uk;->A05:[B

    return-void

    nop

    :array_0
    .array-data 1
        0xbt
        0x24t
        0x29t
        0x2bt
        0x26t
        0x26t
        0x25t
        0x28t
        0x2at
        0x1bt
        0x1at
        -0x2at
        0x25t
        0x28t
        -0x2at
        0x2bt
        0x24t
        0x28t
        0x1bt
        0x19t
        0x25t
        0x1dt
        0x24t
        0x1ft
        0x30t
        0x1bt
        0x1at
        -0x2at
        0x2dt
        0x17t
        0x2ct
        -0x2at
        0x1et
        0x1bt
        0x17t
        0x1at
        0x1bt
        0x28t
        -0x1ct
        -0x8t
        0xct
        -0x5t
        0x0t
        0x6t
        -0x3at
        0x9t
        -0x8t
        0xet
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "AEuo54wFgPALM9rCircq1CzbDnwF8ps6"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "QuCn3RMRocLQFmCJeur77Ibp8vSOUHGN"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "HfmoCXQ36t1Yu7KzkcrnXu"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "61GtyspPJlEokvUCaW6trkbWS3BCUTzC"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "v488ierK9Nnntuz3uYI372prmYJjARmQ"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "gF3Vg6Q8WCvg5i7bXnlaNc0A4ertwXb0"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "e6RbqG78ZShMQ8WuPxwK1BFukWbdzD"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "qWNYY2pVugdjeDUaXxH0szVhG2zcsX"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Uk;->A06:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A7s(Lcom/facebook/ads/redexgen/X/CI;)V
    .locals 2

    .line 57067
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Uk;->A02:Lcom/facebook/ads/redexgen/X/CI;

    .line 57068
    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/CI;->AEO(II)Lcom/facebook/ads/redexgen/X/CS;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Uk;->A03:Lcom/facebook/ads/redexgen/X/CS;

    .line 57069
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Uk;->A04:Lcom/facebook/ads/redexgen/X/Uj;

    .line 57070
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CI;->A59()V

    .line 57071
    return-void
.end method

.method public final ACk(Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/redexgen/X/CN;)I
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 57072
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Uk;->A04:Lcom/facebook/ads/redexgen/X/Uj;

    move-object/from16 v1, p1

    if-nez v2, :cond_3

    .line 57073
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Dd;->A00(Lcom/facebook/ads/redexgen/X/CH;)Lcom/facebook/ads/redexgen/X/Uj;

    move-result-object v5

    sget-object v4, Lcom/facebook/ads/redexgen/X/Uk;->A06:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v3, v4, v2

    const/4 v2, 0x0

    aget-object v4, v4, v2

    const/16 v2, 0x19

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v3, v2, :cond_0

    sget-object v4, Lcom/facebook/ads/redexgen/X/Uk;->A06:[Ljava/lang/String;

    const-string v3, "rJUF1FMAjDxwLwOsjIkpJU"

    const/4 v2, 0x2

    aput-object v3, v4, v2

    iput-object v5, v0, Lcom/facebook/ads/redexgen/X/Uk;->A04:Lcom/facebook/ads/redexgen/X/Uj;

    .line 57074
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Uk;->A04:Lcom/facebook/ads/redexgen/X/Uj;

    if-eqz v2, :cond_1

    .line 57075
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 57076
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Uj;->A00()I

    move-result v8

    const v9, 0x8000

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Uk;->A04:Lcom/facebook/ads/redexgen/X/Uj;

    .line 57077
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Uj;->A03()I

    move-result v10

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Uk;->A04:Lcom/facebook/ads/redexgen/X/Uj;

    .line 57078
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Uj;->A04()I

    move-result v11

    sget-object v4, Lcom/facebook/ads/redexgen/X/Uk;->A06:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v3, v4, v2

    const/4 v2, 0x1

    aget-object v4, v4, v2

    const/16 v2, 0x16

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v3, v2, :cond_2

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 57079
    .end local v0
    :cond_1
    const/4 v2, 0x0

    const/16 v1, 0x27

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Uk;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57080
    :cond_2
    sget-object v4, Lcom/facebook/ads/redexgen/X/Uk;->A06:[Ljava/lang/String;

    const-string v3, "zH88Axaa83XFyKag5yJpsF5RDMrYnMYz"

    const/4 v2, 0x4

    aput-object v3, v4, v2

    const-string v3, "kyGAQ0dgpvc4ezLSnhPBJIppK1xwLJOa"

    const/4 v2, 0x0

    aput-object v3, v4, v2

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Uk;->A04:Lcom/facebook/ads/redexgen/X/Uj;

    .line 57081
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Uj;->A02()I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 57082
    const/16 v4, 0x27

    const/16 v3, 0x9

    const/16 v2, 0x51

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/Uk;->A00(III)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v5 .. v16}, Lcom/facebook/ads/internal/exoplayer2/Format;->A06(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v3

    .line 57083
    .local v0, "format":Lcom/facebook/ads/internal/exoplayer2/Format;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Uk;->A03:Lcom/facebook/ads/redexgen/X/CS;

    invoke-interface {v2, v3}, Lcom/facebook/ads/redexgen/X/CS;->A5P(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 57084
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Uk;->A04:Lcom/facebook/ads/redexgen/X/Uj;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Uj;->A01()I

    move-result v2

    iput v2, v0, Lcom/facebook/ads/redexgen/X/Uk;->A00:I

    .line 57085
    :cond_3
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Uk;->A04:Lcom/facebook/ads/redexgen/X/Uj;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Uj;->A07()Z

    move-result v2

    if-nez v2, :cond_4

    .line 57086
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Uk;->A04:Lcom/facebook/ads/redexgen/X/Uj;

    invoke-static {v1, v2}, Lcom/facebook/ads/redexgen/X/Dd;->A04(Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/redexgen/X/Uj;)V

    .line 57087
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Uk;->A02:Lcom/facebook/ads/redexgen/X/CI;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Uk;->A04:Lcom/facebook/ads/redexgen/X/Uj;

    invoke-interface {v3, v2}, Lcom/facebook/ads/redexgen/X/CI;->ADY(Lcom/facebook/ads/redexgen/X/CP;)V

    .line 57088
    :cond_4
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/Uk;->A03:Lcom/facebook/ads/redexgen/X/CS;

    const v3, 0x8000

    iget v2, v0, Lcom/facebook/ads/redexgen/X/Uk;->A01:I

    sub-int/2addr v3, v2

    const/4 v2, 0x1

    invoke-interface {v4, v1, v3, v2}, Lcom/facebook/ads/redexgen/X/CS;->ADR(Lcom/facebook/ads/redexgen/X/CH;IZ)I

    move-result v6

    .line 57089
    .local v0, "bytesAppended":I
    const/4 v5, -0x1

    if-eq v6, v5, :cond_5

    .line 57090
    iget v2, v0, Lcom/facebook/ads/redexgen/X/Uk;->A01:I

    add-int/2addr v2, v6

    iput v2, v0, Lcom/facebook/ads/redexgen/X/Uk;->A01:I

    .line 57091
    :cond_5
    iget v8, v0, Lcom/facebook/ads/redexgen/X/Uk;->A01:I

    iget v7, v0, Lcom/facebook/ads/redexgen/X/Uk;->A00:I

    sget-object v4, Lcom/facebook/ads/redexgen/X/Uk;->A06:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v3, v4, v2

    const/4 v2, 0x0

    aget-object v4, v4, v2

    const/16 v2, 0x19

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v3, v2, :cond_8

    sget-object v4, Lcom/facebook/ads/redexgen/X/Uk;->A06:[Ljava/lang/String;

    const-string v3, "KqcJHlb0sMu6sPT15fmr2P"

    const/4 v2, 0x2

    aput-object v3, v4, v2

    div-int/2addr v8, v7

    .line 57092
    .local p2, "pendingFrames":I
    if-lez v8, :cond_6

    .line 57093
    :goto_0
    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/Uk;->A04:Lcom/facebook/ads/redexgen/X/Uj;

    invoke-interface {v1}, Lcom/facebook/ads/redexgen/X/CH;->A71()J

    move-result-wide v3

    iget v1, v0, Lcom/facebook/ads/redexgen/X/Uk;->A01:I

    int-to-long v1, v1

    sub-long/2addr v3, v1

    invoke-virtual {v7, v3, v4}, Lcom/facebook/ads/redexgen/X/Uj;->A05(J)J

    move-result-wide v9

    .line 57094
    .local v2, "timeUs":J
    iget v12, v0, Lcom/facebook/ads/redexgen/X/Uk;->A00:I

    mul-int/2addr v12, v8

    .line 57095
    .local v4, "size":I
    iget v1, v0, Lcom/facebook/ads/redexgen/X/Uk;->A01:I

    sub-int/2addr v1, v12

    iput v1, v0, Lcom/facebook/ads/redexgen/X/Uk;->A01:I

    .line 57096
    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/Uk;->A03:Lcom/facebook/ads/redexgen/X/CS;

    const/4 v11, 0x1

    iget v13, v0, Lcom/facebook/ads/redexgen/X/Uk;->A01:I

    const/4 v14, 0x0

    invoke-interface/range {v8 .. v14}, Lcom/facebook/ads/redexgen/X/CS;->ADT(JIIILcom/facebook/ads/redexgen/X/CR;)V

    .line 57097
    .end local v2    # "timeUs":J
    .end local v4    # "size":I
    :cond_6
    if-ne v6, v5, :cond_7

    :goto_1
    return v5

    :cond_7
    const/4 v5, 0x0

    goto :goto_1

    :cond_8
    div-int/2addr v8, v7

    .line 57098
    .local p2, "pendingFrames":I
    if-lez v8, :cond_6

    goto :goto_0
.end method

.method public final ADX(JJ)V
    .locals 1

    .line 57099
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Uk;->A01:I

    .line 57100
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

    .line 57101
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Dd;->A00(Lcom/facebook/ads/redexgen/X/CH;)Lcom/facebook/ads/redexgen/X/Uj;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
