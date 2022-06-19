.class public abstract Lcom/facebook/ads/redexgen/X/DC;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/VB;,
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

    .line 26381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26382
    new-instance v0, Lcom/facebook/ads/redexgen/X/D7;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/D7;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DC;->A0C:Lcom/facebook/ads/redexgen/X/D7;

    .line 26383
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

    .line 26384
    const/4 v2, 0x1

    .line 26385
    .local p0, "readingHeaders":Z
    :cond_0
    :goto_0
    if-eqz v2, :cond_2

    .line 26386
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DC;->A0C:Lcom/facebook/ads/redexgen/X/D7;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/D7;->A05(Lcom/facebook/ads/redexgen/X/CH;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 26387
    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/DC;->A01:I

    .line 26388
    const/4 v0, -0x1

    return v0

    .line 26389
    :cond_1
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->A71()J

    move-result-wide v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/DC;->A04:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/DC;->A03:J

    .line 26390
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DC;->A0C:Lcom/facebook/ads/redexgen/X/D7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/D7;->A02()Lcom/facebook/ads/redexgen/X/IM;

    move-result-object v3

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/DC;->A04:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DC;->A09:Lcom/facebook/ads/redexgen/X/DB;

    invoke-virtual {p0, v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/DC;->A0B(Lcom/facebook/ads/redexgen/X/IM;JLcom/facebook/ads/redexgen/X/DB;)Z

    move-result v2

    .line 26391
    if-eqz v2, :cond_0

    .line 26392
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->A71()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/DC;->A04:J

    goto :goto_0

    .line 26393
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DC;->A09:Lcom/facebook/ads/redexgen/X/DB;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/DB;->A00:Lcom/facebook/ads/internal/exoplayer2/Format;

    iget v0, v0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0C:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/DC;->A00:I

    .line 26394
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DC;->A0A:Z

    if-nez v0, :cond_3

    .line 26395
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DC;->A07:Lcom/facebook/ads/redexgen/X/CS;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DC;->A09:Lcom/facebook/ads/redexgen/X/DB;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/DB;->A00:Lcom/facebook/ads/internal/exoplayer2/Format;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/CS;->A5P(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 26396
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DC;->A0A:Z

    .line 26397
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DC;->A09:Lcom/facebook/ads/redexgen/X/DB;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/DB;->A01:Lcom/facebook/ads/redexgen/X/D9;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 26398
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DC;->A09:Lcom/facebook/ads/redexgen/X/DB;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/DB;->A01:Lcom/facebook/ads/redexgen/X/D9;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DC;->A08:Lcom/facebook/ads/redexgen/X/D9;

    .line 26399
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/CH;
    :goto_1
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/DC;->A09:Lcom/facebook/ads/redexgen/X/DB;

    .line 26400
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/DC;->A01:I

    .line 26401
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DC;->A0C:Lcom/facebook/ads/redexgen/X/D7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/D7;->A04()V

    .line 26402
    const/4 v0, 0x0

    return v0

    .line 26403
    :cond_4
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->A6i()J

    move-result-wide v5

    const-wide/16 v3, -0x1

    cmp-long v0, v5, v3

    if-nez v0, :cond_5

    .line 26404
    new-instance v0, Lcom/facebook/ads/redexgen/X/VB;

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/VB;-><init>(Lcom/facebook/ads/redexgen/X/DA;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DC;->A08:Lcom/facebook/ads/redexgen/X/D9;

    goto :goto_1

    .line 26405
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DC;->A0C:Lcom/facebook/ads/redexgen/X/D7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/D7;->A01()Lcom/facebook/ads/redexgen/X/D8;

    move-result-object v1

    .line 26406
    .local p1, "firstPayloadPageHeader":Lcom/facebook/ads/redexgen/X/D8;
    new-instance v3, Lcom/facebook/ads/redexgen/X/VH;

    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/DC;->A04:J

    .line 26407
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->A6i()J

    move-result-wide v6

    iget v9, v1, Lcom/facebook/ads/redexgen/X/D8;->A01:I

    iget v0, v1, Lcom/facebook/ads/redexgen/X/D8;->A00:I

    add-int/2addr v9, v0

    iget-wide v10, v1, Lcom/facebook/ads/redexgen/X/D8;->A05:J

    move-object v8, p0

    invoke-direct/range {v3 .. v11}, Lcom/facebook/ads/redexgen/X/VH;-><init>(JJLcom/facebook/ads/redexgen/X/DC;IJ)V

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/DC;->A08:Lcom/facebook/ads/redexgen/X/D9;

    goto :goto_1
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/redexgen/X/CN;)I
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 26408
    move-object/from16 v4, p0

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/DC;->A08:Lcom/facebook/ads/redexgen/X/D9;

    move-object/from16 v9, p1

    invoke-interface {v0, v9}, Lcom/facebook/ads/redexgen/X/D9;->ACl(Lcom/facebook/ads/redexgen/X/CH;)J

    move-result-wide v2

    .line 26409
    .local v0, "position":J
    const/4 v10, 0x1

    const-wide/16 v5, 0x0

    cmp-long v0, v2, v5

    if-ltz v0, :cond_0

    .line 26410
    move-object/from16 v0, p2

    iput-wide v2, v0, Lcom/facebook/ads/redexgen/X/CN;->A00:J

    .line 26411
    return v10

    .line 26412
    :cond_0
    const-wide/16 v0, -0x1

    cmp-long v7, v2, v0

    if-gez v7, :cond_1

    .line 26413
    const-wide/16 v7, 0x2

    add-long/2addr v7, v2

    neg-long v2, v7

    invoke-virtual {v4, v2, v3}, Lcom/facebook/ads/redexgen/X/DC;->A09(J)V

    .line 26414
    :cond_1
    iget-boolean v2, v4, Lcom/facebook/ads/redexgen/X/DC;->A0B:Z

    if-nez v2, :cond_2

    .line 26415
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/DC;->A08:Lcom/facebook/ads/redexgen/X/D9;

    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/D9;->A4P()Lcom/facebook/ads/redexgen/X/CP;

    move-result-object v3

    .line 26416
    .local v10, "seekMap":Lcom/facebook/ads/redexgen/X/CP;
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/DC;->A06:Lcom/facebook/ads/redexgen/X/CI;

    invoke-interface {v2, v3}, Lcom/facebook/ads/redexgen/X/CI;->ADY(Lcom/facebook/ads/redexgen/X/CP;)V

    .line 26417
    iput-boolean v10, v4, Lcom/facebook/ads/redexgen/X/DC;->A0B:Z

    .line 26418
    .end local v10    # "seekMap":Lcom/facebook/ads/redexgen/X/CP;
    :cond_2
    iget-wide v7, v4, Lcom/facebook/ads/redexgen/X/DC;->A03:J

    cmp-long v2, v7, v5

    if-gtz v2, :cond_3

    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/DC;->A0C:Lcom/facebook/ads/redexgen/X/D7;

    invoke-virtual {v2, v9}, Lcom/facebook/ads/redexgen/X/D7;->A05(Lcom/facebook/ads/redexgen/X/CH;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 26419
    :cond_3
    iput-wide v5, v4, Lcom/facebook/ads/redexgen/X/DC;->A03:J

    .line 26420
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/DC;->A0C:Lcom/facebook/ads/redexgen/X/D7;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/D7;->A02()Lcom/facebook/ads/redexgen/X/IM;

    move-result-object v8

    .line 26421
    .local v9, "payload":Lcom/facebook/ads/redexgen/X/IM;
    invoke-virtual {v4, v8}, Lcom/facebook/ads/redexgen/X/DC;->A08(Lcom/facebook/ads/redexgen/X/IM;)J

    move-result-wide v12

    .line 26422
    .local v10, "granulesInPacket":J
    cmp-long v2, v12, v5

    if-ltz v2, :cond_5

    iget-wide v5, v4, Lcom/facebook/ads/redexgen/X/DC;->A02:J

    add-long v10, v5, v12

    iget-wide v2, v4, Lcom/facebook/ads/redexgen/X/DC;->A05:J

    cmp-long v9, v10, v2

    sget-object v7, Lcom/facebook/ads/redexgen/X/DC;->A0D:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v3, v7, v2

    const/4 v2, 0x5

    aget-object v2, v7, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v3, v2, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    sget-object v7, Lcom/facebook/ads/redexgen/X/DC;->A0D:[Ljava/lang/String;

    const-string v3, "FQpo9K1CrEyhwwOIVHIX"

    const/4 v2, 0x3

    aput-object v3, v7, v2

    if-ltz v9, :cond_5

    .line 26423
    invoke-virtual {v4, v5, v6}, Lcom/facebook/ads/redexgen/X/DC;->A04(J)J

    move-result-wide v15

    .line 26424
    .local v0, "timeUs":J
    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/DC;->A07:Lcom/facebook/ads/redexgen/X/CS;

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/IM;->A08()I

    move-result v2

    invoke-interface {v3, v8, v2}, Lcom/facebook/ads/redexgen/X/CS;->ADS(Lcom/facebook/ads/redexgen/X/IM;I)V

    .line 26425
    iget-object v14, v4, Lcom/facebook/ads/redexgen/X/DC;->A07:Lcom/facebook/ads/redexgen/X/CS;

    const/16 v17, 0x1

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/IM;->A08()I

    move-result v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-interface/range {v14 .. v20}, Lcom/facebook/ads/redexgen/X/CS;->ADT(JIIILcom/facebook/ads/redexgen/X/CR;)V

    .line 26426
    iput-wide v0, v4, Lcom/facebook/ads/redexgen/X/DC;->A05:J

    .line 26427
    .end local v0    # "timeUs":J
    :cond_5
    iget-wide v0, v4, Lcom/facebook/ads/redexgen/X/DC;->A02:J

    add-long/2addr v0, v12

    iput-wide v0, v4, Lcom/facebook/ads/redexgen/X/DC;->A02:J

    .line 26428
    .end local v9    # "payload":Lcom/facebook/ads/redexgen/X/IM;
    .end local v10    # "granulesInPacket":J
    const/4 v0, 0x0

    return v0

    .line 26429
    :cond_6
    const/4 v0, 0x3

    iput v0, v4, Lcom/facebook/ads/redexgen/X/DC;->A01:I

    .line 26430
    const/4 v0, -0x1

    return v0
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Z5RuBTNa6vZA0UY"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "g6hIS5i77XltkOyeZreDKYgCDPjxPhLb"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "YCRkjazKK3XZNO8yO7FaNMxg1AbCdVng"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "r67anBIeb8YK8vqx0"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "XZgNDsLZlaidbcbv5Ts7uwYbuaZRNgLp"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "HIDCju1yhKc2vNdpIUv0Bx06"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "tkS6jW39MxeBQUkLEh0C1UZy"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "cnfGTQcJOmmTwZV"

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

    .line 26431
    iget v1, p0, Lcom/facebook/ads/redexgen/X/DC;->A01:I

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    const/4 v3, 0x2

    if-eq v1, v0, :cond_1

    if-ne v1, v3, :cond_0

    .line 26432
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/DC;->A01(Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/redexgen/X/CN;)I

    move-result v0

    return v0

    .line 26433
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 26434
    :cond_1
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/DC;->A04:J

    long-to-int v0, v1

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/CH;->AE4(I)V

    .line 26435
    iput v3, p0, Lcom/facebook/ads/redexgen/X/DC;->A01:I

    .line 26436
    const/4 v0, 0x0

    return v0

    .line 26437
    :cond_2
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/DC;->A00(Lcom/facebook/ads/redexgen/X/CH;)I

    move-result v0

    return v0
.end method

.method public final A04(J)J
    .locals 4

    .line 26438
    const-wide/32 v2, 0xf4240

    mul-long/2addr v2, p1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/DC;->A00:I

    int-to-long v0, v0

    div-long/2addr v2, v0

    return-wide v2
.end method

.method public final A05(J)J
    .locals 4

    .line 26439
    iget v0, p0, Lcom/facebook/ads/redexgen/X/DC;->A00:I

    int-to-long v2, v0

    mul-long/2addr v2, p1

    const-wide/32 v0, 0xf4240

    div-long/2addr v2, v0

    return-wide v2
.end method

.method public final A06(JJ)V
    .locals 3

    .line 26440
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DC;->A0C:Lcom/facebook/ads/redexgen/X/D7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/D7;->A03()V

    .line 26441
    const-wide/16 v1, 0x0

    cmp-long v0, p1, v1

    if-nez v0, :cond_1

    .line 26442
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DC;->A0B:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/DC;->A0A(Z)V

    .line 26443
    :cond_0
    :goto_0
    return-void

    .line 26444
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/DC;->A01:I

    if-eqz v0, :cond_0

    .line 26445
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DC;->A08:Lcom/facebook/ads/redexgen/X/D9;

    invoke-interface {v0, p3, p4}, Lcom/facebook/ads/redexgen/X/D9;->AEC(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/DC;->A05:J

    .line 26446
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/DC;->A01:I

    goto :goto_0
.end method

.method public final A07(Lcom/facebook/ads/redexgen/X/CI;Lcom/facebook/ads/redexgen/X/CS;)V
    .locals 1

    .line 26447
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/DC;->A06:Lcom/facebook/ads/redexgen/X/CI;

    .line 26448
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/DC;->A07:Lcom/facebook/ads/redexgen/X/CS;

    .line 26449
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/DC;->A0A(Z)V

    .line 26450
    return-void
.end method

.method public abstract A08(Lcom/facebook/ads/redexgen/X/IM;)J
.end method

.method public A09(J)V
    .locals 0

    .line 26451
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/DC;->A02:J

    .line 26452
    return-void
.end method

.method public A0A(Z)V
    .locals 4

    .line 26453
    const-wide/16 v2, 0x0

    if-eqz p1, :cond_0

    .line 26454
    new-instance v0, Lcom/facebook/ads/redexgen/X/DB;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/DB;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DC;->A09:Lcom/facebook/ads/redexgen/X/DB;

    .line 26455
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/DC;->A04:J

    .line 26456
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/DC;->A01:I

    .line 26457
    :goto_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/DC;->A05:J

    .line 26458
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/DC;->A02:J

    .line 26459
    return-void

    .line 26460
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
