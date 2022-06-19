.class public abstract Lcom/facebook/ads/redexgen/X/DC;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/ZP;,
        Lcom/facebook/ads/redexgen/X/DB;
    }
.end annotation


# static fields
.field public static A0D:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:J

.field public A04:J

.field public A05:J

.field public A06:Lcom/facebook/ads/redexgen/X/CI;

.field public A07:Lcom/facebook/ads/redexgen/X/CS;

.field public A08:Lcom/facebook/ads/redexgen/X/D9;

.field public A09:Lcom/facebook/ads/redexgen/X/DB;

.field public A0A:Z

.field public A0B:Z

.field public final A0C:Lcom/facebook/ads/redexgen/X/D7;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/DC;->A02()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26259
    new-instance v0, Lcom/facebook/ads/redexgen/X/D7;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/D7;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DC;->A0C:Lcom/facebook/ads/redexgen/X/D7;

    .line 26260
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/CH;)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 26261
    const/4 v2, 0x1

    .line 26262
    .local p0, "readingHeaders":Z
    :cond_0
    :goto_0
    if-eqz v2, :cond_2

    .line 26263
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DC;->A0C:Lcom/facebook/ads/redexgen/X/D7;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/D7;->A06(Lcom/facebook/ads/redexgen/X/CH;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 26264
    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/DC;->A01:I

    .line 26265
    const/4 v0, -0x1

    return v0

    .line 26266
    :cond_1
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->A71()J

    move-result-wide v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/DC;->A04:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/DC;->A03:J

    .line 26267
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DC;->A0C:Lcom/facebook/ads/redexgen/X/D7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/D7;->A03()Lcom/facebook/ads/redexgen/X/IM;

    move-result-object v3

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/DC;->A04:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DC;->A09:Lcom/facebook/ads/redexgen/X/DB;

    invoke-virtual {p0, v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/DC;->A0B(Lcom/facebook/ads/redexgen/X/IM;JLcom/facebook/ads/redexgen/X/DB;)Z

    move-result v2

    .line 26268
    if-eqz v2, :cond_0

    .line 26269
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->A71()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/DC;->A04:J

    goto :goto_0

    .line 26270
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DC;->A09:Lcom/facebook/ads/redexgen/X/DB;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/DB;->A00:Lcom/facebook/ads/internal/exoplayer2/Format;

    iget v0, v0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0C:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/DC;->A00:I

    .line 26271
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DC;->A0A:Z

    if-nez v0, :cond_3

    .line 26272
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DC;->A07:Lcom/facebook/ads/redexgen/X/CS;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DC;->A09:Lcom/facebook/ads/redexgen/X/DB;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/DB;->A00:Lcom/facebook/ads/internal/exoplayer2/Format;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/CS;->A5P(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 26273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DC;->A0A:Z

    .line 26274
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DC;->A09:Lcom/facebook/ads/redexgen/X/DB;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/DB;->A01:Lcom/facebook/ads/redexgen/X/D9;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 26275
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/DC;->A09:Lcom/facebook/ads/redexgen/X/DB;

    sget-object v3, Lcom/facebook/ads/redexgen/X/DC;->A0D:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v3, v0

    const/4 v0, 0x7

    aget-object v3, v3, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_6

    sget-object v3, Lcom/facebook/ads/redexgen/X/DC;->A0D:[Ljava/lang/String;

    const-string v1, "bh7MBcJSzFDWGWL7bYV4RFdmzZ5DJPtg"

    const/4 v0, 0x2

    aput-object v1, v3, v0

    const-string v1, "jbTTtcEVTbmVVWffnqyGAcPkGPEAibSD"

    const/4 v0, 0x4

    aput-object v1, v3, v0

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/DB;->A01:Lcom/facebook/ads/redexgen/X/D9;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DC;->A08:Lcom/facebook/ads/redexgen/X/D9;

    .line 26276
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/CH;
    :goto_1
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/DC;->A09:Lcom/facebook/ads/redexgen/X/DB;

    .line 26277
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/DC;->A01:I

    .line 26278
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DC;->A0C:Lcom/facebook/ads/redexgen/X/D7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/D7;->A05()V

    .line 26279
    const/4 v0, 0x0

    return v0

    .line 26280
    :cond_4
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->A6i()J

    move-result-wide v5

    const-wide/16 v3, -0x1

    cmp-long v0, v5, v3

    if-nez v0, :cond_5

    .line 26281
    new-instance v0, Lcom/facebook/ads/redexgen/X/ZP;

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/ZP;-><init>(Lcom/facebook/ads/redexgen/X/DA;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DC;->A08:Lcom/facebook/ads/redexgen/X/D9;

    goto :goto_1

    .line 26282
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DC;->A0C:Lcom/facebook/ads/redexgen/X/D7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/D7;->A02()Lcom/facebook/ads/redexgen/X/D8;

    move-result-object v1

    .line 26283
    .local p1, "firstPayloadPageHeader":Lcom/facebook/ads/redexgen/X/D8;
    new-instance v3, Lcom/facebook/ads/redexgen/X/ZJ;

    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/DC;->A04:J

    .line 26284
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->A6i()J

    move-result-wide v6

    iget v9, v1, Lcom/facebook/ads/redexgen/X/D8;->A01:I

    iget v0, v1, Lcom/facebook/ads/redexgen/X/D8;->A00:I

    add-int/2addr v9, v0

    iget-wide v10, v1, Lcom/facebook/ads/redexgen/X/D8;->A05:J

    move-object v8, p0

    invoke-direct/range {v3 .. v11}, Lcom/facebook/ads/redexgen/X/ZJ;-><init>(JJLcom/facebook/ads/redexgen/X/DC;IJ)V

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/DC;->A08:Lcom/facebook/ads/redexgen/X/D9;

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/redexgen/X/CN;)I
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 26285
    move-object v4, p0

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/DC;->A08:Lcom/facebook/ads/redexgen/X/D9;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/D9;->ACl(Lcom/facebook/ads/redexgen/X/CH;)J

    move-result-wide v2

    .line 26286
    .local v0, "position":J
    const/4 v9, 0x1

    const-wide/16 v5, 0x0

    cmp-long v0, v2, v5

    if-ltz v0, :cond_0

    .line 26287
    move-object/from16 v0, p2

    iput-wide v2, v0, Lcom/facebook/ads/redexgen/X/CN;->A00:J

    .line 26288
    return v9

    .line 26289
    :cond_0
    const-wide/16 v0, -0x1

    cmp-long v7, v2, v0

    if-gez v7, :cond_1

    .line 26290
    const-wide/16 v7, 0x2

    add-long/2addr v7, v2

    neg-long v2, v7

    invoke-virtual {v4, v2, v3}, Lcom/facebook/ads/redexgen/X/DC;->A09(J)V

    .line 26291
    :cond_1
    iget-boolean v8, v4, Lcom/facebook/ads/redexgen/X/DC;->A0B:Z

    sget-object v3, Lcom/facebook/ads/redexgen/X/DC;->A0D:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v3, v3, v2

    const/16 v2, 0x1f

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v2, 0x51

    if-eq v3, v2, :cond_6

    sget-object v7, Lcom/facebook/ads/redexgen/X/DC;->A0D:[Ljava/lang/String;

    const-string v3, "YKdoYyhEaGRVIGwSTWAYioMwjJxRxWbM"

    const/4 v2, 0x6

    aput-object v3, v7, v2

    if-nez v8, :cond_2

    .line 26292
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/DC;->A08:Lcom/facebook/ads/redexgen/X/D9;

    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/D9;->A4S()Lcom/facebook/ads/redexgen/X/CP;

    move-result-object v3

    .line 26293
    .local v10, "seekMap":Lcom/facebook/ads/redexgen/X/CP;
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/DC;->A06:Lcom/facebook/ads/redexgen/X/CI;

    invoke-interface {v2, v3}, Lcom/facebook/ads/redexgen/X/CI;->ADX(Lcom/facebook/ads/redexgen/X/CP;)V

    .line 26294
    iput-boolean v9, v4, Lcom/facebook/ads/redexgen/X/DC;->A0B:Z

    .line 26295
    .end local v10    # "seekMap":Lcom/facebook/ads/redexgen/X/CP;
    :cond_2
    iget-wide v7, v4, Lcom/facebook/ads/redexgen/X/DC;->A03:J

    cmp-long v2, v7, v5

    if-gtz v2, :cond_3

    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/DC;->A0C:Lcom/facebook/ads/redexgen/X/D7;

    invoke-virtual {v2, p1}, Lcom/facebook/ads/redexgen/X/D7;->A06(Lcom/facebook/ads/redexgen/X/CH;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 26296
    :cond_3
    iput-wide v5, v4, Lcom/facebook/ads/redexgen/X/DC;->A03:J

    .line 26297
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/DC;->A0C:Lcom/facebook/ads/redexgen/X/D7;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/D7;->A03()Lcom/facebook/ads/redexgen/X/IM;

    move-result-object v9

    .line 26298
    .local p1, "payload":Lcom/facebook/ads/redexgen/X/IM;
    invoke-virtual {v4, v9}, Lcom/facebook/ads/redexgen/X/DC;->A08(Lcom/facebook/ads/redexgen/X/IM;)J

    move-result-wide v12

    .line 26299
    .local v10, "granulesInPacket":J
    cmp-long v2, v12, v5

    if-ltz v2, :cond_4

    iget-wide v7, v4, Lcom/facebook/ads/redexgen/X/DC;->A02:J

    add-long v10, v7, v12

    iget-wide v5, v4, Lcom/facebook/ads/redexgen/X/DC;->A05:J

    cmp-long v2, v10, v5

    if-ltz v2, :cond_4

    .line 26300
    invoke-virtual {v4, v7, v8}, Lcom/facebook/ads/redexgen/X/DC;->A04(J)J

    move-result-wide v6

    .line 26301
    .local v0, "timeUs":J
    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/DC;->A07:Lcom/facebook/ads/redexgen/X/CS;

    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/IM;->A08()I

    move-result v2

    invoke-interface {v3, v9, v2}, Lcom/facebook/ads/redexgen/X/CS;->ADR(Lcom/facebook/ads/redexgen/X/IM;I)V

    .line 26302
    iget-object v5, v4, Lcom/facebook/ads/redexgen/X/DC;->A07:Lcom/facebook/ads/redexgen/X/CS;

    const/4 v8, 0x1

    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/IM;->A08()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/CS;->ADS(JIIILcom/facebook/ads/redexgen/X/CR;)V

    .line 26303
    iput-wide v0, v4, Lcom/facebook/ads/redexgen/X/DC;->A05:J

    .line 26304
    .end local v0    # "timeUs":J
    :cond_4
    iget-wide v0, v4, Lcom/facebook/ads/redexgen/X/DC;->A02:J

    add-long/2addr v0, v12

    iput-wide v0, v4, Lcom/facebook/ads/redexgen/X/DC;->A02:J

    .line 26305
    .end local p1    # "payload":Lcom/facebook/ads/redexgen/X/IM;
    .end local v10    # "granulesInPacket":J
    const/4 v0, 0x0

    return v0

    .line 26306
    :cond_5
    const/4 v0, 0x3

    iput v0, v4, Lcom/facebook/ads/redexgen/X/DC;->A01:I

    .line 26307
    const/4 v0, -0x1

    return v0

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "vdpx440NSg8M4CnGdydtu5qQkftaFl81"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "8FBVTf92WyxNz1PbVx8WfEYVHOwD1jYA"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "DKJKTeADHw9YeVFClTVADEpoqL7THNTT"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "QMHe7Xu97ps4f3hWTDxnFcitcXlvMrzA"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "cT681YGQWd9DutiYQJBSPFEBPfK5r2m4"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "EyU4ukvYlXQau4YgIYVQwMEfY7bgqA6h"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "DftqlnKuE3jyyUo0DxEITdlkAR2KkpEx"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "3J2n16rNLfrexVGozCu5PKnUXiDeYKol"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/DC;->A0D:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A03(Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/redexgen/X/CN;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 26308
    iget v1, p0, Lcom/facebook/ads/redexgen/X/DC;->A01:I

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    const/4 v3, 0x2

    if-eq v1, v0, :cond_2

    if-ne v1, v3, :cond_1

    .line 26309
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/DC;->A01(Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/redexgen/X/CN;)I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/DC;->A0D:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6d

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/DC;->A0D:[Ljava/lang/String;

    const-string v1, "ecnT7ItXVuTi5H8Gayt4a9jA0qUq5vI3"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 26310
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 26311
    :cond_2
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/DC;->A04:J

    long-to-int v0, v1

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/CH;->AE3(I)V

    .line 26312
    iput v3, p0, Lcom/facebook/ads/redexgen/X/DC;->A01:I

    .line 26313
    const/4 v0, 0x0

    return v0

    .line 26314
    :cond_3
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/DC;->A00(Lcom/facebook/ads/redexgen/X/CH;)I

    move-result v0

    return v0
.end method

.method public final A04(J)J
    .locals 4

    .line 26315
    const-wide/32 v2, 0xf4240

    mul-long/2addr v2, p1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/DC;->A00:I

    int-to-long v0, v0

    div-long/2addr v2, v0

    return-wide v2
.end method

.method public final A05(J)J
    .locals 4

    .line 26316
    iget v0, p0, Lcom/facebook/ads/redexgen/X/DC;->A00:I

    int-to-long v2, v0

    mul-long/2addr v2, p1

    const-wide/32 v0, 0xf4240

    div-long/2addr v2, v0

    return-wide v2
.end method

.method public final A06(JJ)V
    .locals 3

    .line 26317
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DC;->A0C:Lcom/facebook/ads/redexgen/X/D7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/D7;->A04()V

    .line 26318
    const-wide/16 v1, 0x0

    cmp-long v0, p1, v1

    if-nez v0, :cond_1

    .line 26319
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DC;->A0B:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/DC;->A0A(Z)V

    .line 26320
    :cond_0
    :goto_0
    return-void

    .line 26321
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/DC;->A01:I

    if-eqz v0, :cond_0

    .line 26322
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DC;->A08:Lcom/facebook/ads/redexgen/X/D9;

    invoke-interface {v0, p3, p4}, Lcom/facebook/ads/redexgen/X/D9;->AEA(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/DC;->A05:J

    .line 26323
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/DC;->A01:I

    goto :goto_0
.end method

.method public final A07(Lcom/facebook/ads/redexgen/X/CI;Lcom/facebook/ads/redexgen/X/CS;)V
    .locals 1

    .line 26324
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/DC;->A06:Lcom/facebook/ads/redexgen/X/CI;

    .line 26325
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/DC;->A07:Lcom/facebook/ads/redexgen/X/CS;

    .line 26326
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/DC;->A0A(Z)V

    .line 26327
    return-void
.end method

.method public abstract A08(Lcom/facebook/ads/redexgen/X/IM;)J
.end method

.method public A09(J)V
    .locals 0

    .line 26328
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/DC;->A02:J

    .line 26329
    return-void
.end method

.method public A0A(Z)V
    .locals 4

    .line 26330
    const-wide/16 v2, 0x0

    if-eqz p1, :cond_0

    .line 26331
    new-instance v0, Lcom/facebook/ads/redexgen/X/DB;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/DB;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DC;->A09:Lcom/facebook/ads/redexgen/X/DB;

    .line 26332
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/DC;->A04:J

    .line 26333
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/DC;->A01:I

    .line 26334
    :goto_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/DC;->A05:J

    .line 26335
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/DC;->A02:J

    .line 26336
    return-void

    .line 26337
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/DC;->A01:I

    goto :goto_0
.end method

.method public abstract A0B(Lcom/facebook/ads/redexgen/X/IM;JLcom/facebook/ads/redexgen/X/DB;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method
