.class public final Lcom/facebook/ads/redexgen/X/V2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/DM;


# static fields
.field public static A0B:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:J

.field public A05:J

.field public A06:Lcom/facebook/ads/internal/exoplayer2/Format;

.field public A07:Lcom/facebook/ads/redexgen/X/CS;

.field public A08:Ljava/lang/String;

.field public final A09:Lcom/facebook/ads/redexgen/X/IM;

.field public final A0A:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/V2;->A01()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 58354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58355
    const/16 v0, 0x12

    new-array v1, v0, [B

    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A09:Lcom/facebook/ads/redexgen/X/IM;

    .line 58356
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A02:I

    .line 58357
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/V2;->A0A:Ljava/lang/String;

    .line 58358
    return-void
.end method

.method private A00()V
    .locals 6

    .line 58359
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A09:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    .line 58360
    .local p0, "frameData":[B
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A06:Lcom/facebook/ads/internal/exoplayer2/Format;

    if-nez v0, :cond_0

    .line 58361
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/V2;->A08:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/V2;->A0A:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/BP;->A03([BLjava/lang/String;Ljava/lang/String;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A06:Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 58362
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/V2;->A07:Lcom/facebook/ads/redexgen/X/CS;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A06:Lcom/facebook/ads/internal/exoplayer2/Format;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/CS;->A5P(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 58363
    :cond_0
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/BP;->A01([B)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A01:I

    .line 58364
    const-wide/32 v4, 0xf4240

    .line 58365
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/BP;->A02([B)I

    move-result v0

    int-to-long v2, v0

    mul-long/2addr v2, v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A06:Lcom/facebook/ads/internal/exoplayer2/Format;

    iget v0, v0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0C:I

    int-to-long v0, v0

    div-long/2addr v2, v0

    long-to-int v0, v2

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A04:J

    .line 58366
    return-void
.end method

.method public static A01()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "k5AVecY8Q8rmwlhVheU5AP9axH8v2iiX"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "L6Y5ykVEs"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "cSimAgXrK3crwslavYu53ccINdbwmQ6T"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "0Ip6rpvY3oKO"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "RadbPwRc1SYj5GXvwM73DYWdVP6JZVqX"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "DHkWEndAWAWZ5aUswLfuwnrCCd0gACeE"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ZuIRrUon92TK3GZCk1L459MXqKf6MSVX"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/V2;->A0B:[Ljava/lang/String;

    return-void
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/IM;)Z
    .locals 5

    .line 58367
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v0

    const/4 v3, 0x0

    if-lez v0, :cond_2

    .line 58368
    iget v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A03:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A03:I

    .line 58369
    iget v1, p0, Lcom/facebook/ads/redexgen/X/V2;->A03:I

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    or-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/V2;->A03:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/V2;->A0B:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    .line 58370
    sget-object v2, Lcom/facebook/ads/redexgen/X/V2;->A0B:[Ljava/lang/String;

    const-string v1, "l5TfRSUHm0yhXle4XtbomHjIANyaBEm2"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "LWJPJx2fdKzUvqrR5pm44Sk30hDPJtz3"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A03:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/BP;->A08(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58371
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A09:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A03:I

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v1, v3

    .line 58372
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A09:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A03:I

    shr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v4, 0x1

    aput-byte v0, v1, v4

    .line 58373
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A09:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    const/4 v1, 0x2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A03:I

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v2, v1

    .line 58374
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A09:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    const/4 v1, 0x3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A03:I

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v2, v1

    .line 58375
    const/4 v0, 0x4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A00:I

    .line 58376
    iput v3, p0, Lcom/facebook/ads/redexgen/X/V2;->A03:I

    .line 58377
    return v4

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 58378
    :cond_2
    return v3
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/IM;[BI)Z
    .locals 2

    .line 58379
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A00:I

    sub-int v0, p3, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 58380
    .local p0, "bytesToRead":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A00:I

    invoke-virtual {p1, p2, v0, v1}, Lcom/facebook/ads/redexgen/X/IM;->A0d([BII)V

    .line 58381
    iget v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A00:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A00:I

    .line 58382
    iget v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A00:I

    if-ne v0, p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A45(Lcom/facebook/ads/redexgen/X/IM;)V
    .locals 11

    .line 58383
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v0

    if-lez v0, :cond_5

    .line 58384
    iget v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A02:I

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    const/4 v3, 0x2

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    goto :goto_0

    .line 58385
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v3

    iget v2, p0, Lcom/facebook/ads/redexgen/X/V2;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A00:I

    sub-int/2addr v2, v0

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 58386
    .local p0, "bytesToRead":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A07:Lcom/facebook/ads/redexgen/X/CS;

    invoke-interface {v0, p1, v2}, Lcom/facebook/ads/redexgen/X/CS;->ADS(Lcom/facebook/ads/redexgen/X/IM;I)V

    .line 58387
    iget v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A00:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A00:I

    .line 58388
    iget v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A00:I

    iget v8, p0, Lcom/facebook/ads/redexgen/X/V2;->A01:I

    if-ne v0, v8, :cond_0

    .line 58389
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/V2;->A07:Lcom/facebook/ads/redexgen/X/CS;

    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/V2;->A05:J

    const/4 v7, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/V2;->A0B:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v0, 0xf

    if-eq v2, v0, :cond_4

    sget-object v3, Lcom/facebook/ads/redexgen/X/V2;->A0B:[Ljava/lang/String;

    const-string v2, "5zFZHFWpM"

    const/4 v0, 0x1

    aput-object v2, v3, v0

    const-string v2, ""

    const/4 v0, 0x3

    aput-object v2, v3, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Lcom/facebook/ads/redexgen/X/CS;->ADT(JIIILcom/facebook/ads/redexgen/X/CR;)V

    .line 58390
    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/V2;->A05:J

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/V2;->A04:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/V2;->A05:J

    .line 58391
    iput v1, p0, Lcom/facebook/ads/redexgen/X/V2;->A02:I

    goto :goto_0

    .line 58392
    .end local p0    # "bytesToRead":I
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A09:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    const/16 v2, 0x12

    invoke-direct {p0, p1, v0, v2}, Lcom/facebook/ads/redexgen/X/V2;->A03(Lcom/facebook/ads/redexgen/X/IM;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58393
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/V2;->A00()V

    .line 58394
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A09:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 58395
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/V2;->A07:Lcom/facebook/ads/redexgen/X/CS;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A09:Lcom/facebook/ads/redexgen/X/IM;

    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/CS;->ADS(Lcom/facebook/ads/redexgen/X/IM;I)V

    .line 58396
    iput v3, p0, Lcom/facebook/ads/redexgen/X/V2;->A02:I

    goto :goto_0

    .line 58397
    :cond_3
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/V2;->A02(Lcom/facebook/ads/redexgen/X/IM;)Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/V2;->A0B:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x55

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/V2;->A0B:[Ljava/lang/String;

    const-string v1, "ygv5dxNl6SPhKrabX01hnYAP6n0gp5EX"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "KNJQq8VebEw0Y4RYqWJ8cu4EzwO7D1IX"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    .line 58398
    iput v4, p0, Lcom/facebook/ads/redexgen/X/V2;->A02:I

    goto/16 :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 58399
    :cond_5
    return-void
.end method

.method public final A4S(Lcom/facebook/ads/redexgen/X/CI;Lcom/facebook/ads/redexgen/X/Da;)V
    .locals 2

    .line 58400
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Da;->A05()V

    .line 58401
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Da;->A04()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A08:Ljava/lang/String;

    .line 58402
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Da;->A03()I

    move-result v1

    const/4 v0, 0x1

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/CI;->AEO(II)Lcom/facebook/ads/redexgen/X/CS;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A07:Lcom/facebook/ads/redexgen/X/CS;

    .line 58403
    return-void
.end method

.method public final ACI()V
    .locals 0

    .line 58404
    return-void
.end method

.method public final ACJ(JZ)V
    .locals 0

    .line 58405
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/V2;->A05:J

    .line 58406
    return-void
.end method

.method public final ADW()V
    .locals 1

    .line 58407
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A02:I

    .line 58408
    iput v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A00:I

    .line 58409
    iput v0, p0, Lcom/facebook/ads/redexgen/X/V2;->A03:I

    .line 58410
    return-void
.end method
