.class public final Lcom/facebook/ads/redexgen/X/Z1;
.super Lcom/facebook/ads/redexgen/X/CU;
.source ""


# static fields
.field public static A05:[B

.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Z

.field public final A03:Lcom/facebook/ads/redexgen/X/IM;

.field public final A04:Lcom/facebook/ads/redexgen/X/IM;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Z1;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Z1;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/CS;)V
    .locals 2

    .line 62217
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/CU;-><init>(Lcom/facebook/ads/redexgen/X/CS;)V

    .line 62218
    sget-object v1, Lcom/facebook/ads/redexgen/X/II;->A03:[B

    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Z1;->A04:Lcom/facebook/ads/redexgen/X/IM;

    .line 62219
    const/4 v1, 0x4

    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Z1;->A03:Lcom/facebook/ads/redexgen/X/IM;

    .line 62220
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Z1;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x5f

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
    .locals 1

    const/16 v0, 0x25

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Z1;->A05:[B

    return-void

    :array_0
    .array-data 1
        0x1t
        0x3et
        0x33t
        0x32t
        0x38t
        0x77t
        0x31t
        0x38t
        0x25t
        0x3at
        0x36t
        0x23t
        0x77t
        0x39t
        0x38t
        0x23t
        0x77t
        0x24t
        0x22t
        0x27t
        0x27t
        0x38t
        0x25t
        0x23t
        0x32t
        0x33t
        0x6dt
        0x77t
        0x5bt
        0x44t
        0x49t
        0x48t
        0x42t
        0x2t
        0x4ct
        0x5bt
        0x4et
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "HrBrUDmtAiHhEIFi"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ovhYl7NWEd171z8PJdmzSHTS5BmNRwGh"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "O04BUWOaHdfjopELTyPlWCM73tUUR1GH"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "jF3DEBpuUmaMt5XqjGdbc3EKLhdJIOP"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "6wGSczOuIh6bVbI0f7FgwzIt"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "67fT6B3p0kUWiMxqOkjfZNmnVryLDGGV"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "w97Hra0FQmNyyw573"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "JpIXAL9FgQ2FQzjAVAZn2BwWekNoW7nE"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Z1;->A06:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A0C(Lcom/facebook/ads/redexgen/X/IM;J)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    move-wide/from16 v8, p2

    .line 62221
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v5

    .line 62222
    .local v8, "packetType":I
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/IM;->A0A()I

    move-result v1

    .line 62223
    .local v3, "compositionTimeMs":I
    int-to-long v3, v1

    const-wide/16 v1, 0x3e8

    mul-long/2addr v3, v1

    add-long/2addr v8, v3

    .line 62224
    .end local v1
    .local v0, "timeUs":J
    const/4 v6, 0x0

    if-nez v5, :cond_1

    iget-boolean v1, v0, Lcom/facebook/ads/redexgen/X/Z1;->A02:Z

    if-nez v1, :cond_1

    .line 62225
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v1

    new-array v1, v1, [B

    new-instance v3, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v3, v1}, Lcom/facebook/ads/redexgen/X/IM;-><init>([B)V

    .line 62226
    .local v3, "videoSequence":Lcom/facebook/ads/redexgen/X/IM;
    iget-object v2, v3, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v1

    invoke-virtual {v7, v2, v6, v1}, Lcom/facebook/ads/redexgen/X/IM;->A0d([BII)V

    .line 62227
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Ie;->A00(Lcom/facebook/ads/redexgen/X/IM;)Lcom/facebook/ads/redexgen/X/Ie;

    move-result-object v2

    .line 62228
    .local v1, "avcConfig":Lcom/facebook/ads/redexgen/X/Ie;
    iget v1, v2, Lcom/facebook/ads/redexgen/X/Ie;->A02:I

    iput v1, v0, Lcom/facebook/ads/redexgen/X/Z1;->A01:I

    .line 62229
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    iget v9, v2, Lcom/facebook/ads/redexgen/X/Ie;->A03:I

    iget v10, v2, Lcom/facebook/ads/redexgen/X/Ie;->A01:I

    const/high16 v11, -0x40800000    # -1.0f

    iget-object v12, v2, Lcom/facebook/ads/redexgen/X/Ie;->A04:Ljava/util/List;

    const/4 v13, -0x1

    iget v14, v2, Lcom/facebook/ads/redexgen/X/Ie;->A00:F

    const/4 v15, 0x0

    .line 62230
    const/16 v3, 0x1c

    const/16 v2, 0x9

    const/16 v1, 0x72

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Z1;->A00(III)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v4 .. v15}, Lcom/facebook/ads/internal/exoplayer2/Format;->A03(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v2

    .line 62231
    .local v5, "format":Lcom/facebook/ads/internal/exoplayer2/Format;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/CU;->A00:Lcom/facebook/ads/redexgen/X/CS;

    invoke-interface {v1, v2}, Lcom/facebook/ads/redexgen/X/CS;->A5P(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 62232
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/Z1;->A02:Z

    .line 62233
    .end local v5    # "format":Lcom/facebook/ads/internal/exoplayer2/Format;
    .end local v1    # "avcConfig":Lcom/facebook/ads/redexgen/X/Ie;
    .end local v3    # "videoSequence":Lcom/facebook/ads/redexgen/X/IM;
    :cond_0
    :goto_0
    return-void

    .line 62234
    :cond_1
    const/4 v3, 0x1

    .line 62235
    if-ne v5, v3, :cond_0

    iget-boolean v1, v0, Lcom/facebook/ads/redexgen/X/Z1;->A02:Z

    if-eqz v1, :cond_0

    .line 62236
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Z1;->A03:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    .line 62237
    .local v13, "nalLengthData":[B
    aput-byte v6, v2, v6

    .line 62238
    aput-byte v6, v2, v3

    .line 62239
    const/4 v1, 0x2

    aput-byte v6, v2, v1

    .line 62240
    iget v1, v0, Lcom/facebook/ads/redexgen/X/Z1;->A01:I

    const/4 v5, 0x4

    rsub-int/lit8 v4, v1, 0x4

    .line 62241
    .local v8, "nalUnitLengthFieldLengthDiff":I
    const/4 v11, 0x0

    .line 62242
    .local v15, "bytesWritten":I
    :goto_1
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v1

    if-lez v1, :cond_2

    .line 62243
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Z1;->A03:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    iget v1, v0, Lcom/facebook/ads/redexgen/X/Z1;->A01:I

    invoke-virtual {v7, v2, v4, v1}, Lcom/facebook/ads/redexgen/X/IM;->A0d([BII)V

    .line 62244
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Z1;->A03:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v1, v6}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 62245
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Z1;->A03:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v3

    .line 62246
    .local v5, "bytesToWrite":I
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Z1;->A04:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v1, v6}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 62247
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/CU;->A00:Lcom/facebook/ads/redexgen/X/CS;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Z1;->A04:Lcom/facebook/ads/redexgen/X/IM;

    invoke-interface {v2, v1, v5}, Lcom/facebook/ads/redexgen/X/CS;->ADR(Lcom/facebook/ads/redexgen/X/IM;I)V

    .line 62248
    add-int/lit8 v11, v11, 0x4

    .line 62249
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/CU;->A00:Lcom/facebook/ads/redexgen/X/CS;

    invoke-interface {v1, v7, v3}, Lcom/facebook/ads/redexgen/X/CS;->ADR(Lcom/facebook/ads/redexgen/X/IM;I)V

    .line 62250
    add-int/2addr v11, v3

    goto :goto_1

    .line 62251
    .end local v5    # "bytesToWrite":I
    :cond_2
    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/CU;->A00:Lcom/facebook/ads/redexgen/X/CS;

    .line 62252
    iget v0, v0, Lcom/facebook/ads/redexgen/X/Z1;->A00:I

    const/4 v10, 0x1

    if-ne v0, v10, :cond_3

    :goto_2
    const/4 v12, 0x0

    const/4 v13, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Z1;->A06:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_4

    .line 62253
    sget-object v2, Lcom/facebook/ads/redexgen/X/Z1;->A06:[Ljava/lang/String;

    const-string v1, "SxoTsTEtYbkIpzmogJvkXCUruqqJ7knT"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "DX7TKSEUbLiNIzjv4P1HkLtMAUktYoJf"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-interface/range {v7 .. v13}, Lcom/facebook/ads/redexgen/X/CS;->ADS(JIIILcom/facebook/ads/redexgen/X/CR;)V

    goto :goto_0

    .line 62254
    :cond_3
    const/4 v10, 0x0

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0D(Lcom/facebook/ads/redexgen/X/IM;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Z0;
        }
    .end annotation

    .line 62255
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v2

    .line 62256
    .local p0, "header":I
    shr-int/lit8 v0, v2, 0x4

    and-int/lit8 v1, v0, 0xf

    .line 62257
    .local p1, "frameType":I
    and-int/lit8 v4, v2, 0xf

    .line 62258
    .local v2, "videoCodec":I
    const/4 v0, 0x7

    if-ne v4, v0, :cond_1

    .line 62259
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Z1;->A00:I

    .line 62260
    const/4 v0, 0x5

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 62261
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x1c

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z1;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Z0;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Z0;-><init>(Ljava/lang/String;)V

    throw v0
.end method
