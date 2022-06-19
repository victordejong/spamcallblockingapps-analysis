.class public final Lcom/facebook/ads/redexgen/X/ZJ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/D9;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/ZI;
    }
.end annotation


# static fields
.field public static A0C:[B

.field public static A0D:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:J

.field public A02:J

.field public A03:J

.field public A04:J

.field public A05:J

.field public A06:J

.field public A07:J

.field public final A08:J

.field public final A09:J

.field public final A0A:Lcom/facebook/ads/redexgen/X/D8;

.field public final A0B:Lcom/facebook/ads/redexgen/X/DC;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/ZJ;->A0B()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/ZJ;->A0A()V

    return-void
.end method

.method public constructor <init>(JJLcom/facebook/ads/redexgen/X/DC;IJ)V
    .locals 4

    .line 64254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64255
    new-instance v0, Lcom/facebook/ads/redexgen/X/D8;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/D8;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZJ;->A0A:Lcom/facebook/ads/redexgen/X/D8;

    .line 64256
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    cmp-long v0, p1, v1

    if-ltz v0, :cond_1

    cmp-long v0, p3, p1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A03(Z)V

    .line 64257
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/ZJ;->A0B:Lcom/facebook/ads/redexgen/X/DC;

    .line 64258
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/ZJ;->A09:J

    .line 64259
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/ZJ;->A08:J

    .line 64260
    int-to-long v1, p6

    sub-long/2addr p3, p1

    cmp-long v0, v1, p3

    if-nez v0, :cond_0

    .line 64261
    iput-wide p7, p0, Lcom/facebook/ads/redexgen/X/ZJ;->A07:J

    .line 64262
    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ZJ;->A00:I

    .line 64263
    :goto_1
    return-void

    .line 64264
    :cond_0
    iput v3, p0, Lcom/facebook/ads/redexgen/X/ZJ;->A00:I

    goto :goto_1

    .line 64265
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A00(JJJ)J
    .locals 7

    .line 64266
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/ZJ;->A08:J

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/ZJ;->A09:J

    sub-long/2addr v3, v1

    mul-long/2addr v3, p3

    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/ZJ;->A07:J

    div-long/2addr v3, v5

    sub-long/2addr v3, p5

    add-long/2addr p1, v3

    .line 64267
    cmp-long v0, p1, v1

    if-gez v0, :cond_0

    .line 64268
    iget-wide p1, p0, Lcom/facebook/ads/redexgen/X/ZJ;->A09:J

    .line 64269
    :cond_0
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/ZJ;->A08:J

    cmp-long v0, p1, v2

    if-ltz v0, :cond_1

    .line 64270
    const-wide/16 v0, 0x1

    sub-long p1, v2, v0

    .line 64271
    :cond_1
    return-wide p1
.end method

.method private final A01(JLcom/facebook/ads/redexgen/X/CH;)J
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 64272
    move-object v10, p0

    iget-wide v3, v10, Lcom/facebook/ads/redexgen/X/ZJ;->A04:J

    iget-wide v1, v10, Lcom/facebook/ads/redexgen/X/ZJ;->A01:J

    const-wide/16 v13, 0x2

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    .line 64273
    iget-wide v2, v10, Lcom/facebook/ads/redexgen/X/ZJ;->A05:J

    add-long/2addr v2, v13

    neg-long v0, v2

    return-wide v0

    .line 64274
    :cond_0
    move-object/from16 v5, p3

    invoke-interface {v5}, Lcom/facebook/ads/redexgen/X/CH;->A71()J

    move-result-wide v1

    .line 64275
    .local v2, "initialPosition":J
    iget-wide v3, v10, Lcom/facebook/ads/redexgen/X/ZJ;->A01:J

    invoke-direct {v10, v5, v3, v4}, Lcom/facebook/ads/redexgen/X/ZJ;->A0E(Lcom/facebook/ads/redexgen/X/CH;J)Z

    move-result v0

    if-nez v0, :cond_2

    .line 64276
    iget-wide v3, v10, Lcom/facebook/ads/redexgen/X/ZJ;->A04:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    .line 64277
    return-wide v3

    .line 64278
    :cond_1
    const/4 v2, 0x0

    const/16 v1, 0x19

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZJ;->A09(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64279
    :cond_2
    iget-object v3, v10, Lcom/facebook/ads/redexgen/X/ZJ;->A0A:Lcom/facebook/ads/redexgen/X/D8;

    const/4 v0, 0x0

    invoke-virtual {v3, v5, v0}, Lcom/facebook/ads/redexgen/X/D8;->A04(Lcom/facebook/ads/redexgen/X/CH;Z)Z

    .line 64280
    invoke-interface {v5}, Lcom/facebook/ads/redexgen/X/CH;->ADN()V

    .line 64281
    iget-object v0, v10, Lcom/facebook/ads/redexgen/X/ZJ;->A0A:Lcom/facebook/ads/redexgen/X/D8;

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/D8;->A05:J

    sub-long p1, p1, v3

    .line 64282
    .local v10, "granuleDistance":J
    iget-object v0, v10, Lcom/facebook/ads/redexgen/X/ZJ;->A0A:Lcom/facebook/ads/redexgen/X/D8;

    iget v4, v0, Lcom/facebook/ads/redexgen/X/D8;->A01:I

    iget-object v0, v10, Lcom/facebook/ads/redexgen/X/ZJ;->A0A:Lcom/facebook/ads/redexgen/X/D8;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/D8;->A00:I

    add-int/2addr v4, v0

    .line 64283
    .local v1, "pageSize":I
    const-wide/16 v11, 0x0

    cmp-long v0, p1, v11

    if-ltz v0, :cond_4

    const-wide/32 v7, 0x11940

    sget-object v6, Lcom/facebook/ads/redexgen/X/ZJ;->A0D:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v3, v6, v0

    const/4 v0, 0x0

    aget-object v6, v6, v0

    const/16 v0, 0x18

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v3, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v6, Lcom/facebook/ads/redexgen/X/ZJ;->A0D:[Ljava/lang/String;

    const-string v3, "1HFKFqyQYawdfec4zhOWKwAEhw"

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const-string v3, "atngC4wrhlAL4xDnem6FNv"

    const/4 v0, 0x3

    aput-object v3, v6, v0

    cmp-long v0, p1, v7

    if-lez v0, :cond_a

    .line 64284
    :cond_4
    const-wide/32 v7, 0x186a0

    cmp-long v0, p1, v11

    if-gez v0, :cond_6

    .line 64285
    iput-wide v1, v10, Lcom/facebook/ads/redexgen/X/ZJ;->A01:J

    .line 64286
    iget-object v0, v10, Lcom/facebook/ads/redexgen/X/ZJ;->A0A:Lcom/facebook/ads/redexgen/X/D8;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/D8;->A05:J

    iput-wide v0, v10, Lcom/facebook/ads/redexgen/X/ZJ;->A02:J

    .line 64287
    :cond_5
    iget-wide v2, v10, Lcom/facebook/ads/redexgen/X/ZJ;->A01:J

    iget-wide v0, v10, Lcom/facebook/ads/redexgen/X/ZJ;->A04:J

    sub-long/2addr v2, v0

    cmp-long v6, v2, v7

    if-gez v6, :cond_7

    .line 64288
    iput-wide v0, v10, Lcom/facebook/ads/redexgen/X/ZJ;->A01:J

    .line 64289
    return-wide v0

    .line 64290
    :cond_6
    invoke-interface {v5}, Lcom/facebook/ads/redexgen/X/CH;->A71()J

    move-result-wide v2

    int-to-long v0, v4

    add-long/2addr v2, v0

    iput-wide v2, v10, Lcom/facebook/ads/redexgen/X/ZJ;->A04:J

    .line 64291
    iget-object v0, v10, Lcom/facebook/ads/redexgen/X/ZJ;->A0A:Lcom/facebook/ads/redexgen/X/D8;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/D8;->A05:J

    iput-wide v0, v10, Lcom/facebook/ads/redexgen/X/ZJ;->A05:J

    .line 64292
    iget-wide v2, v10, Lcom/facebook/ads/redexgen/X/ZJ;->A01:J

    iget-wide v0, v10, Lcom/facebook/ads/redexgen/X/ZJ;->A04:J

    sub-long/2addr v2, v0

    int-to-long v0, v4

    add-long/2addr v2, v0

    cmp-long v0, v2, v7

    if-gez v0, :cond_5

    .line 64293
    invoke-interface {v5, v4}, Lcom/facebook/ads/redexgen/X/CH;->AE3(I)V

    .line 64294
    iget-wide v2, v10, Lcom/facebook/ads/redexgen/X/ZJ;->A05:J

    add-long/2addr v2, v13

    neg-long v0, v2

    return-wide v0

    .line 64295
    :cond_7
    int-to-long v3, v4

    const-wide/16 v1, 0x0

    cmp-long v0, p1, v1

    if-gtz v0, :cond_8

    :goto_0
    mul-long/2addr v3, v13

    .line 64296
    .local v9, "offset":J
    invoke-interface {v5}, Lcom/facebook/ads/redexgen/X/CH;->A71()J

    move-result-wide v6

    sub-long/2addr v6, v3

    iget-wide v8, v10, Lcom/facebook/ads/redexgen/X/ZJ;->A01:J

    iget-wide v4, v10, Lcom/facebook/ads/redexgen/X/ZJ;->A04:J

    sub-long/2addr v8, v4

    mul-long v8, v8, p1

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZJ;->A0D:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_9

    .end local v2    # "initialPosition":J
    .local p1, "initialPosition":J
    iget-wide v2, v10, Lcom/facebook/ads/redexgen/X/ZJ;->A02:J

    .end local v10    # "granuleDistance":J
    .local p3, "granuleDistance":J
    iget-wide v0, v10, Lcom/facebook/ads/redexgen/X/ZJ;->A05:J

    sub-long/2addr v2, v0

    div-long/2addr v8, v2

    add-long/2addr v6, v8

    .line 64297
    .local v3, "nextPosition":J
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 64298
    .end local v3    # "nextPosition":J
    .local p1, "nextPosition":J
    iget-wide v2, v10, Lcom/facebook/ads/redexgen/X/ZJ;->A01:J

    const-wide/16 v0, 0x1

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 64299
    return-wide v0

    .line 64300
    :cond_8
    const-wide/16 v13, 0x1

    goto :goto_0

    .end local v2
    .local p1, "initialPosition":J
    :cond_9
    sget-object v2, Lcom/facebook/ads/redexgen/X/ZJ;->A0D:[Ljava/lang/String;

    const-string v1, "HnyCEdH4by64"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "f67XG71IQfud"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iget-wide v2, v10, Lcom/facebook/ads/redexgen/X/ZJ;->A02:J

    .end local v10
    .local p3, "granuleDistance":J
    iget-wide v0, v10, Lcom/facebook/ads/redexgen/X/ZJ;->A05:J

    sub-long/2addr v2, v0

    div-long/2addr v8, v2

    add-long/2addr v6, v8

    .line 64301
    .local v3, "nextPosition":J
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 64302
    .end local v3    # "nextPosition":J
    .local p1, "nextPosition":J
    iget-wide v2, v10, Lcom/facebook/ads/redexgen/X/ZJ;->A01:J

    const-wide/16 v0, 0x1

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 64303
    return-wide v0

    .line 64304
    :cond_a
    invoke-interface {v5, v4}, Lcom/facebook/ads/redexgen/X/CH;->AE3(I)V

    .line 64305
    iget-object v0, v10, Lcom/facebook/ads/redexgen/X/ZJ;->A0A:Lcom/facebook/ads/redexgen/X/D8;

    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/D8;->A05:J

    add-long/2addr v2, v13

    neg-long v0, v2

    return-wide v0
.end method

.method private final A02(Lcom/facebook/ads/redexgen/X/CH;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 64306
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/ZJ;->A0D(Lcom/facebook/ads/redexgen/X/CH;)V

    .line 64307
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZJ;->A0A:Lcom/facebook/ads/redexgen/X/D8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/D8;->A03()V

    .line 64308
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZJ;->A0A:Lcom/facebook/ads/redexgen/X/D8;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/D8;->A04:I

    const/4 v0, 0x4

    and-int/2addr v1, v0

    if-eq v1, v0, :cond_0

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->A71()J

    move-result-wide v3

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/ZJ;->A08:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_0

    .line 64309
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZJ;->A0A:Lcom/facebook/ads/redexgen/X/D8;

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/D8;->A04(Lcom/facebook/ads/redexgen/X/CH;Z)Z

    .line 64310
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZJ;->A0A:Lcom/facebook/ads/redexgen/X/D8;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/D8;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZJ;->A0A:Lcom/facebook/ads/redexgen/X/D8;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/D8;->A00:I

    add-int/2addr v1, v0

    invoke-interface {p1, v1}, Lcom/facebook/ads/redexgen/X/CH;->AE3(I)V

    goto :goto_0

    .line 64311
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZJ;->A0A:Lcom/facebook/ads/redexgen/X/D8;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/D8;->A05:J

    return-wide v0
.end method

.method private final A03(Lcom/facebook/ads/redexgen/X/CH;JJ)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 64312
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZJ;->A0A:Lcom/facebook/ads/redexgen/X/D8;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3}, Lcom/facebook/ads/redexgen/X/D8;->A04(Lcom/facebook/ads/redexgen/X/CH;Z)Z

    .line 64313
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZJ;->A0A:Lcom/facebook/ads/redexgen/X/D8;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/D8;->A05:J

    cmp-long v0, v1, p2

    if-gez v0, :cond_0

    .line 64314
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZJ;->A0A:Lcom/facebook/ads/redexgen/X/D8;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/D8;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZJ;->A0A:Lcom/facebook/ads/redexgen/X/D8;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/D8;->A00:I

    add-int/2addr v1, v0

    invoke-interface {p1, v1}, Lcom/facebook/ads/redexgen/X/CH;->AE3(I)V

    .line 64315
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZJ;->A0A:Lcom/facebook/ads/redexgen/X/D8;

    iget-wide p4, v0, Lcom/facebook/ads/redexgen/X/D8;->A05:J

    .line 64316
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZJ;->A0A:Lcom/facebook/ads/redexgen/X/D8;

    invoke-virtual {v0, p1, v3}, Lcom/facebook/ads/redexgen/X/D8;->A04(Lcom/facebook/ads/redexgen/X/CH;Z)Z

    goto :goto_0

    .line 64317
    :cond_0
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->ADN()V

    .line 64318
    return-wide p4
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/ZJ;)J
    .locals 1

    .line 64319
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/ZJ;->A09:J

    return-wide v0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/ZJ;)J
    .locals 1

    .line 64320
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/ZJ;->A07:J

    return-wide v0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/ZJ;JJJ)J
    .locals 0

    .line 64321
    invoke-direct/range {p0 .. p6}, Lcom/facebook/ads/redexgen/X/ZJ;->A00(JJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method private final A07()Lcom/facebook/ads/redexgen/X/ZI;
    .locals 6

    .line 64322
    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/ZJ;->A07:J

    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    cmp-long v0, v4, v1

    if-eqz v0, :cond_0

    new-instance v0, Lcom/facebook/ads/redexgen/X/ZI;

    invoke-direct {v0, p0, v3}, Lcom/facebook/ads/redexgen/X/ZI;-><init>(Lcom/facebook/ads/redexgen/X/ZJ;Lcom/facebook/ads/redexgen/X/D6;)V

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v3

    goto :goto_0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/ZJ;)Lcom/facebook/ads/redexgen/X/DC;
    .locals 0

    .line 64323
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/ZJ;->A0B:Lcom/facebook/ads/redexgen/X/DC;

    return-object p0
.end method

.method public static A09(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/ZJ;->A0C:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x6e

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0A()V
    .locals 1

    const/16 v0, 0x19

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/ZJ;->A0C:[B

    return-void

    :array_0
    .array-data 1
        0x26t
        0x7t
        0x48t
        0x7t
        0xft
        0xft
        0x48t
        0x18t
        0x9t
        0xft
        0xdt
        0x48t
        0xbt
        0x9t
        0x6t
        0x48t
        0xat
        0xdt
        0x48t
        0xet
        0x7t
        0x1dt
        0x6t
        0xct
        0x46t
    .end array-data
.end method

.method public static A0B()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "IwWJ1rAHfmexjsebXRXcDPjaU73iSJJD"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Pfa9O7smeRLr"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "YVPVKTJSUnoy1mID8h1JiHhyOv"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "4YIcZCc9D0v6GYbVW55qq4"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "MQGq3Ss0TGTuZcZl9hZWKHAs"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "ClxO0wOPMkXGPeTsbkyLqOefUDvePx9Y"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "eY8aqVMBTreysgzhCT0m33TuEQRECFok"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "4vNP3Dy1WFFR"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/ZJ;->A0D:[Ljava/lang/String;

    return-void
.end method

.method private final A0C()V
    .locals 2

    .line 64324
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/ZJ;->A09:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/ZJ;->A04:J

    .line 64325
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/ZJ;->A08:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/ZJ;->A01:J

    .line 64326
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/ZJ;->A05:J

    .line 64327
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/ZJ;->A07:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/ZJ;->A02:J

    .line 64328
    return-void
.end method

.method private final A0D(Lcom/facebook/ads/redexgen/X/CH;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 64329
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/ZJ;->A08:J

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/ZJ;->A0E(Lcom/facebook/ads/redexgen/X/CH;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64330
    return-void

    .line 64331
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method private final A0E(Lcom/facebook/ads/redexgen/X/CH;J)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 64332
    const-wide/16 v2, 0x3

    add-long/2addr v2, p2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/ZJ;->A08:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    .line 64333
    const/16 v0, 0x800

    new-array v3, v0, [B

    .line 64334
    .local p0, "buffer":[B
    array-length v2, v3

    .line 64335
    .local p1, "peekLength":I
    :goto_0
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->A71()J

    move-result-wide v4

    int-to-long v0, v2

    add-long/2addr v4, v0

    const/4 v6, 0x0

    cmp-long v0, v4, v7

    if-lez v0, :cond_0

    .line 64336
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->A71()J

    move-result-wide v4

    sub-long v0, v7, v4

    long-to-int v2, v0

    .line 64337
    const/4 v0, 0x4

    if-ge v2, v0, :cond_0

    .line 64338
    return v6

    .line 64339
    :cond_0
    invoke-interface {p1, v3, v6, v2, v6}, Lcom/facebook/ads/redexgen/X/CH;->ACN([BIIZ)Z

    .line 64340
    const/4 v4, 0x0

    .local p2, "i":I
    :goto_1
    add-int/lit8 v0, v2, -0x3

    if-ge v4, v0, :cond_2

    .line 64341
    aget-byte v1, v3, v4

    const/16 v0, 0x4f

    if-ne v1, v0, :cond_1

    add-int/lit8 v0, v4, 0x1

    aget-byte v0, v3, v0

    const/16 v1, 0x67

    if-ne v0, v1, :cond_1

    add-int/lit8 v0, v4, 0x2

    aget-byte v0, v3, v0

    if-ne v0, v1, :cond_1

    add-int/lit8 v0, v4, 0x3

    aget-byte v1, v3, v0

    const/16 v0, 0x53

    if-ne v1, v0, :cond_1

    .line 64342
    invoke-interface {p1, v4}, Lcom/facebook/ads/redexgen/X/CH;->AE3(I)V

    .line 64343
    const/4 v0, 0x1

    return v0

    .line 64344
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 64345
    .end local p2    # "i":I
    :cond_2
    add-int/lit8 v0, v2, -0x3

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/CH;->AE3(I)V

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic A4S()Lcom/facebook/ads/redexgen/X/CP;
    .locals 1

    .line 64346
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ZJ;->A07()Lcom/facebook/ads/redexgen/X/ZI;

    move-result-object v0

    return-object v0
.end method

.method public final ACl(Lcom/facebook/ads/redexgen/X/CH;)J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 64347
    iget v1, p0, Lcom/facebook/ads/redexgen/X/ZJ;->A00:I

    const/4 v2, 0x1

    const/4 v4, 0x3

    move-object v8, p1

    if-eqz v1, :cond_4

    if-eq v1, v2, :cond_5

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    if-ne v1, v4, :cond_0

    .line 64348
    const-wide/16 v0, -0x1

    return-wide v0

    .line 64349
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 64350
    :cond_1
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/ZJ;->A06:J

    const-wide/16 v2, 0x2

    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-nez v5, :cond_2

    .line 64351
    const-wide/16 v0, 0x0

    .line 64352
    .local p0, "currentGranule":J
    .local p0, "currentGranule":J
    :goto_0
    iput v4, p0, Lcom/facebook/ads/redexgen/X/ZJ;->A00:I

    .line 64353
    add-long/2addr v2, v0

    neg-long v0, v2

    return-wide v0

    .line 64354
    .end local p0    # "currentGranule":J
    :cond_2
    invoke-direct {p0, v0, v1, v8}, Lcom/facebook/ads/redexgen/X/ZJ;->A01(JLcom/facebook/ads/redexgen/X/CH;)J

    move-result-wide v0

    .line 64355
    .local p0, "position":J
    cmp-long v5, v0, v6

    if-ltz v5, :cond_3

    .line 64356
    return-wide v0

    .line 64357
    :cond_3
    iget-wide v9, p0, Lcom/facebook/ads/redexgen/X/ZJ;->A06:J

    add-long/2addr v0, v2

    neg-long v11, v0

    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/ZJ;->A03(Lcom/facebook/ads/redexgen/X/CH;JJ)J

    move-result-wide v0

    goto :goto_0

    .line 64358
    .end local p0    # "position":J
    :cond_4
    invoke-interface {v8}, Lcom/facebook/ads/redexgen/X/CH;->A71()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/ZJ;->A03:J

    .line 64359
    iput v2, p0, Lcom/facebook/ads/redexgen/X/ZJ;->A00:I

    .line 64360
    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/ZJ;->A08:J

    const-wide/32 v0, 0xff1b

    sub-long/2addr v5, v0

    .line 64361
    .local p0, "lastPageSearchPosition":J
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/ZJ;->A03:J

    cmp-long v0, v5, v1

    if-lez v0, :cond_5

    .line 64362
    return-wide v5

    .line 64363
    .end local p0    # "lastPageSearchPosition":J
    :cond_5
    invoke-direct {p0, v8}, Lcom/facebook/ads/redexgen/X/ZJ;->A02(Lcom/facebook/ads/redexgen/X/CH;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/ZJ;->A07:J

    .line 64364
    iput v4, p0, Lcom/facebook/ads/redexgen/X/ZJ;->A00:I

    .line 64365
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/ZJ;->A03:J

    return-wide v0
.end method

.method public final AEA(J)J
    .locals 5

    .line 64366
    iget v1, p0, Lcom/facebook/ads/redexgen/X/ZJ;->A00:I

    const/4 v3, 0x2

    const/4 v0, 0x3

    if-eq v1, v0, :cond_0

    if-ne v1, v3, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A03(Z)V

    .line 64367
    const-wide/16 v1, 0x0

    cmp-long v0, p1, v1

    if-nez v0, :cond_1

    :goto_1
    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/ZJ;->A06:J

    .line 64368
    iput v3, p0, Lcom/facebook/ads/redexgen/X/ZJ;->A00:I

    .line 64369
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ZJ;->A0C()V

    .line 64370
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/ZJ;->A06:J

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZJ;->A0D:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 64371
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZJ;->A0B:Lcom/facebook/ads/redexgen/X/DC;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/DC;->A05(J)J

    move-result-wide v1

    goto :goto_1

    .line 64372
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/ZJ;->A0D:[Ljava/lang/String;

    const-string v1, "l4iEtEKEuRK6wb9mepvhy"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return-wide v3
.end method
