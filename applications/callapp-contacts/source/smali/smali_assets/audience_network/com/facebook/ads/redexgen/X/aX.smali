.class public final Lcom/facebook/ads/redexgen/X/aX;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/CS;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/FX;,
        Lcom/facebook/ads/redexgen/X/FY;
    }
.end annotation


# static fields
.field public static A0F:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:J

.field public A02:Lcom/facebook/ads/internal/exoplayer2/Format;

.field public A03:Lcom/facebook/ads/internal/exoplayer2/Format;

.field public A04:Lcom/facebook/ads/redexgen/X/FX;

.field public A05:Lcom/facebook/ads/redexgen/X/FX;

.field public A06:Lcom/facebook/ads/redexgen/X/FX;

.field public A07:Lcom/facebook/ads/redexgen/X/FY;

.field public A08:Z

.field public A09:Z

.field public final A0A:I

.field public final A0B:Lcom/facebook/ads/redexgen/X/FV;

.field public final A0C:Lcom/facebook/ads/redexgen/X/FW;

.field public final A0D:Lcom/facebook/ads/redexgen/X/HA;

.field public final A0E:Lcom/facebook/ads/redexgen/X/IM;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/aX;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/HA;)V
    .locals 4

    .line 67563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67564
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aX;->A0D:Lcom/facebook/ads/redexgen/X/HA;

    .line 67565
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/HA;->A6d()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A0A:I

    .line 67566
    new-instance v0, Lcom/facebook/ads/redexgen/X/FW;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/FW;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A0C:Lcom/facebook/ads/redexgen/X/FW;

    .line 67567
    new-instance v0, Lcom/facebook/ads/redexgen/X/FV;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/FV;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A0B:Lcom/facebook/ads/redexgen/X/FV;

    .line 67568
    const/16 v1, 0x20

    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A0E:Lcom/facebook/ads/redexgen/X/IM;

    .line 67569
    iget v3, p0, Lcom/facebook/ads/redexgen/X/aX;->A0A:I

    const-wide/16 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/FX;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ads/redexgen/X/FX;-><init>(JI)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A04:Lcom/facebook/ads/redexgen/X/FX;

    .line 67570
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A04:Lcom/facebook/ads/redexgen/X/FX;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A05:Lcom/facebook/ads/redexgen/X/FX;

    .line 67571
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A06:Lcom/facebook/ads/redexgen/X/FX;

    .line 67572
    return-void
.end method

.method private A00(I)I
    .locals 6

    .line 67573
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A06:Lcom/facebook/ads/redexgen/X/FX;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/FX;->A02:Z

    if-nez v0, :cond_0

    .line 67574
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/aX;->A06:Lcom/facebook/ads/redexgen/X/FX;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A0D:Lcom/facebook/ads/redexgen/X/HA;

    .line 67575
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HA;->A3O()Lcom/facebook/ads/redexgen/X/H9;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A06:Lcom/facebook/ads/redexgen/X/FX;

    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/FX;->A03:J

    iget v1, p0, Lcom/facebook/ads/redexgen/X/aX;->A0A:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/FX;

    invoke-direct {v0, v2, v3, v1}, Lcom/facebook/ads/redexgen/X/FX;-><init>(JI)V

    .line 67576
    invoke-virtual {v5, v4, v0}, Lcom/facebook/ads/redexgen/X/FX;->A02(Lcom/facebook/ads/redexgen/X/H9;Lcom/facebook/ads/redexgen/X/FX;)V

    .line 67577
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A06:Lcom/facebook/ads/redexgen/X/FX;

    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/FX;->A03:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A01:J

    sub-long/2addr v2, v0

    long-to-int v0, v2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static A01(Lcom/facebook/ads/internal/exoplayer2/Format;J)Lcom/facebook/ads/internal/exoplayer2/Format;
    .locals 5

    .line 67578
    if-nez p0, :cond_0

    .line 67579
    const/4 v0, 0x0

    return-object v0

    .line 67580
    :cond_0
    const-wide/16 v1, 0x0

    cmp-long v0, p1, v1

    if-eqz v0, :cond_1

    iget-wide v3, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0G:J

    const-wide v1, 0x7fffffffffffffffL

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    .line 67581
    iget-wide v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0G:J

    add-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/internal/exoplayer2/Format;->A0I(J)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object p0

    .line 67582
    :cond_1
    return-object p0
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "I0oQBEUbvXwmLkE4WWtRMgz"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "xnniIxRr7DxSpuMWabRYn3WDpy4qBN9b"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Y7uRaXgz80uNyvcPATB9r3b0PwOkuM1V"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "hSCUvOutOZqOqVGgCzlnUKxaNOAoeOWK"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Xz3O4WRIuCzLKbQHyaIDpuywePn7"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "cSGy8Fn9cMgpPa"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "oA7ibzMCvoxqvUcH1m6Eely4XW9nrCN1"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "6CG0cGfKidBjxaDlKmMoUzgrmHvkLCHY"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/aX;->A0F:[Ljava/lang/String;

    return-void
.end method

.method private A03(I)V
    .locals 5

    .line 67583
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/aX;->A01:J

    int-to-long v0, p1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/aX;->A01:J

    .line 67584
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/aX;->A01:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A06:Lcom/facebook/ads/redexgen/X/FX;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/FX;->A03:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    .line 67585
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A06:Lcom/facebook/ads/redexgen/X/FX;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/FX;->A00:Lcom/facebook/ads/redexgen/X/FX;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A06:Lcom/facebook/ads/redexgen/X/FX;

    .line 67586
    :cond_0
    return-void
.end method

.method private A04(J)V
    .locals 3

    .line 67587
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A05:Lcom/facebook/ads/redexgen/X/FX;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/FX;->A03:J

    cmp-long v0, p1, v1

    if-ltz v0, :cond_0

    .line 67588
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A05:Lcom/facebook/ads/redexgen/X/FX;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/FX;->A00:Lcom/facebook/ads/redexgen/X/FX;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A05:Lcom/facebook/ads/redexgen/X/FX;

    goto :goto_0

    .line 67589
    :cond_0
    return-void
.end method

.method private A05(J)V
    .locals 5

    .line 67590
    const-wide/16 v1, -0x1

    cmp-long v0, p1, v1

    if-nez v0, :cond_0

    .line 67591
    return-void

    .line 67592
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A04:Lcom/facebook/ads/redexgen/X/FX;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/FX;->A03:J

    cmp-long v0, p1, v1

    if-ltz v0, :cond_2

    .line 67593
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/aX;->A0D:Lcom/facebook/ads/redexgen/X/HA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A04:Lcom/facebook/ads/redexgen/X/FX;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/FX;->A01:Lcom/facebook/ads/redexgen/X/H9;

    sget-object v1, Lcom/facebook/ads/redexgen/X/aX;->A0F:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x55

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/aX;->A0F:[Ljava/lang/String;

    const-string v1, "uyKFH8oWQ0ou8mdxvkWufQ8fbIwtl6Z0"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "5GODjm0a5UxNqoFNrNo0AvXndV19DDx4"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-interface {v4, v3}, Lcom/facebook/ads/redexgen/X/HA;->AD0(Lcom/facebook/ads/redexgen/X/H9;)V

    .line 67594
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A04:Lcom/facebook/ads/redexgen/X/FX;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FX;->A01()Lcom/facebook/ads/redexgen/X/FX;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A04:Lcom/facebook/ads/redexgen/X/FX;

    goto :goto_0

    .line 67595
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A05:Lcom/facebook/ads/redexgen/X/FX;

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/FX;->A04:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A04:Lcom/facebook/ads/redexgen/X/FX;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/FX;->A04:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_3

    .line 67596
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A04:Lcom/facebook/ads/redexgen/X/FX;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A05:Lcom/facebook/ads/redexgen/X/FX;

    .line 67597
    :cond_3
    return-void
.end method

.method private A06(JLjava/nio/ByteBuffer;I)V
    .locals 3

    .line 67598
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/aX;->A04(J)V

    .line 67599
    .local p0, "remaining":I
    :cond_0
    :goto_0
    if-lez p4, :cond_1

    .line 67600
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A05:Lcom/facebook/ads/redexgen/X/FX;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/FX;->A03:J

    sub-long/2addr v1, p1

    long-to-int v0, v1

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 67601
    .local p1, "toCopy":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A05:Lcom/facebook/ads/redexgen/X/FX;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/FX;->A01:Lcom/facebook/ads/redexgen/X/H9;

    .line 67602
    .local v2, "allocation":Lcom/facebook/ads/redexgen/X/H9;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/H9;->A01:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A05:Lcom/facebook/ads/redexgen/X/FX;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/FX;->A00(J)I

    move-result v0

    invoke-virtual {p3, v1, v0, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 67603
    sub-int/2addr p4, v2

    .line 67604
    int-to-long v0, v2

    add-long/2addr p1, v0

    .line 67605
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A05:Lcom/facebook/ads/redexgen/X/FX;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/FX;->A03:J

    cmp-long v0, p1, v1

    if-nez v0, :cond_0

    .line 67606
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A05:Lcom/facebook/ads/redexgen/X/FX;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/FX;->A00:Lcom/facebook/ads/redexgen/X/FX;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A05:Lcom/facebook/ads/redexgen/X/FX;

    goto :goto_0

    .line 67607
    :cond_1
    return-void
.end method

.method private A07(J[BI)V
    .locals 5

    .line 67608
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/aX;->A04(J)V

    .line 67609
    move v3, p4

    .line 67610
    .local p0, "remaining":I
    :cond_0
    :goto_0
    if-lez v3, :cond_1

    .line 67611
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A05:Lcom/facebook/ads/redexgen/X/FX;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/FX;->A03:J

    sub-long/2addr v0, p1

    long-to-int v2, v0

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 67612
    .local p1, "toCopy":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A05:Lcom/facebook/ads/redexgen/X/FX;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/FX;->A01:Lcom/facebook/ads/redexgen/X/H9;

    .line 67613
    .local v2, "allocation":Lcom/facebook/ads/redexgen/X/H9;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/H9;->A01:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A05:Lcom/facebook/ads/redexgen/X/FX;

    .line 67614
    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/FX;->A00(J)I

    move-result v1

    sub-int v0, p4, v3

    .line 67615
    invoke-static {v2, v1, p3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67616
    sub-int/2addr v3, v4

    .line 67617
    int-to-long v0, v4

    add-long/2addr p1, v0

    .line 67618
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A05:Lcom/facebook/ads/redexgen/X/FX;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/FX;->A03:J

    cmp-long v0, p1, v1

    if-nez v0, :cond_0

    .line 67619
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A05:Lcom/facebook/ads/redexgen/X/FX;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/FX;->A00:Lcom/facebook/ads/redexgen/X/FX;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A05:Lcom/facebook/ads/redexgen/X/FX;

    goto :goto_0

    .line 67620
    :cond_1
    return-void
.end method

.method private A08(Lcom/facebook/ads/redexgen/X/YY;Lcom/facebook/ads/redexgen/X/FV;)V
    .locals 19

    .line 67621
    move-object/from16 v4, p0

    move-object/from16 v6, p2

    iget-wide v0, v6, Lcom/facebook/ads/redexgen/X/FV;->A01:J

    .line 67622
    .local v4, "offset":J
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/aX;->A0E:Lcom/facebook/ads/redexgen/X/IM;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/facebook/ads/redexgen/X/IM;->A0X(I)V

    .line 67623
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/aX;->A0E:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v2, v2, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    invoke-direct {v4, v0, v1, v2, v5}, Lcom/facebook/ads/redexgen/X/aX;->A07(J[BI)V

    .line 67624
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 67625
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/aX;->A0E:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v2, v2, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    const/4 v9, 0x0

    aget-byte v3, v2, v9

    .line 67626
    .local v6, "signalByte":B
    and-int/lit16 v2, v3, 0x80

    if-eqz v2, :cond_9

    .line 67627
    .local v0, "subsampleEncryption":Z
    :goto_0
    and-int/lit8 v10, v3, 0x7f

    .line 67628
    .local v2, "ivSize":I
    move-object/from16 v7, p1

    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/YY;->A02:Lcom/facebook/ads/redexgen/X/BY;

    iget-object v2, v2, Lcom/facebook/ads/redexgen/X/BY;->A04:[B

    if-nez v2, :cond_2

    .line 67629
    iget-object v11, v7, Lcom/facebook/ads/redexgen/X/YY;->A02:Lcom/facebook/ads/redexgen/X/BY;

    sget-object v3, Lcom/facebook/ads/redexgen/X/aX;->A0F:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v3, v3, v2

    const/16 v2, 0x14

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v2, 0x55

    if-eq v3, v2, :cond_1

    :cond_0
    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v8, Lcom/facebook/ads/redexgen/X/aX;->A0F:[Ljava/lang/String;

    const-string v3, "avxcN779OwCovbtwuSuiJyYUga"

    const/4 v2, 0x4

    aput-object v3, v8, v2

    const/16 v2, 0x10

    new-array v2, v2, [B

    iput-object v2, v11, Lcom/facebook/ads/redexgen/X/BY;->A04:[B

    .line 67630
    :cond_2
    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/YY;->A02:Lcom/facebook/ads/redexgen/X/BY;

    iget-object v2, v2, Lcom/facebook/ads/redexgen/X/BY;->A04:[B

    invoke-direct {v4, v0, v1, v2, v10}, Lcom/facebook/ads/redexgen/X/aX;->A07(J[BI)V

    sget-object v3, Lcom/facebook/ads/redexgen/X/aX;->A0F:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v3, v3, v2

    const/16 v2, 0x8

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v2, 0x76

    if-eq v3, v2, :cond_3

    goto :goto_1

    .line 67631
    :cond_3
    sget-object v8, Lcom/facebook/ads/redexgen/X/aX;->A0F:[Ljava/lang/String;

    const-string v3, "XQ5VTIZgU7cNYJl8wSWINHCEMr3M82dZ"

    const/4 v2, 0x2

    aput-object v3, v8, v2

    int-to-long v2, v10

    add-long/2addr v0, v2

    .line 67632
    if-eqz v5, :cond_8

    .line 67633
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/aX;->A0E:Lcom/facebook/ads/redexgen/X/IM;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/facebook/ads/redexgen/X/IM;->A0X(I)V

    .line 67634
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/aX;->A0E:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v2, v2, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/facebook/ads/redexgen/X/aX;->A07(J[BI)V

    .line 67635
    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    .line 67636
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/aX;->A0E:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IM;->A0J()I

    move-result v11

    .line 67637
    .local v5, "subsampleCount":I
    .restart local v5    # "subsampleCount":I
    :goto_2
    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/YY;->A02:Lcom/facebook/ads/redexgen/X/BY;

    iget-object v12, v2, Lcom/facebook/ads/redexgen/X/BY;->A06:[I

    .line 67638
    .local v2, "clearDataSizes":[I
    if-eqz v12, :cond_4

    array-length v10, v12

    sget-object v8, Lcom/facebook/ads/redexgen/X/aX;->A0F:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v3, v8, v2

    const/4 v2, 0x1

    aget-object v8, v8, v2

    const/16 v2, 0xa

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v3, v2, :cond_0

    sget-object v8, Lcom/facebook/ads/redexgen/X/aX;->A0F:[Ljava/lang/String;

    const-string v3, "13b4Gtgpoqyqmo3AS7oAoqr"

    const/4 v2, 0x0

    aput-object v3, v8, v2

    const-string v3, "X95RBpGHqlYmay"

    const/4 v2, 0x5

    aput-object v3, v8, v2

    if-ge v10, v11, :cond_5

    .line 67639
    :cond_4
    new-array v12, v11, [I

    .line 67640
    .end local v2    # "clearDataSizes":[I
    .local v3, "clearDataSizes":[I
    :cond_5
    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/YY;->A02:Lcom/facebook/ads/redexgen/X/BY;

    iget-object v13, v2, Lcom/facebook/ads/redexgen/X/BY;->A07:[I

    .line 67641
    .local v2, "encryptedDataSizes":[I
    if-eqz v13, :cond_6

    array-length v2, v13

    if-ge v2, v11, :cond_7

    .line 67642
    :cond_6
    new-array v13, v11, [I

    .line 67643
    .end local v2    # "encryptedDataSizes":[I
    .local v2, "encryptedDataSizes":[I
    :cond_7
    if-eqz v5, :cond_a

    .line 67644
    mul-int/lit8 v3, v11, 0x6

    .line 67645
    .local v2, "subsampleDataLength":I
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/aX;->A0E:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v2, v3}, Lcom/facebook/ads/redexgen/X/IM;->A0X(I)V

    .line 67646
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/aX;->A0E:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v2, v2, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/facebook/ads/redexgen/X/aX;->A07(J[BI)V

    .line 67647
    int-to-long v2, v3

    add-long/2addr v0, v2

    .line 67648
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/aX;->A0E:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v2, v9}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 67649
    const/4 v3, 0x0

    .local v7, "i":I
    :goto_3
    if-ge v3, v11, :cond_b

    .line 67650
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/aX;->A0E:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IM;->A0J()I

    move-result v2

    aput v2, v12, v3

    .line 67651
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/aX;->A0E:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v2

    aput v2, v13, v3

    .line 67652
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 67653
    .end local v5    # "subsampleCount":I
    :cond_8
    const/4 v11, 0x1

    goto :goto_2

    .line 67654
    :cond_9
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 67655
    :cond_a
    aput v9, v12, v9

    .line 67656
    iget v8, v6, Lcom/facebook/ads/redexgen/X/FV;->A00:I

    iget-wide v4, v6, Lcom/facebook/ads/redexgen/X/FV;->A01:J

    sub-long v2, v0, v4

    long-to-int v4, v2

    sub-int/2addr v8, v4

    aput v8, v13, v9

    .line 67657
    :cond_b
    iget-object v5, v6, Lcom/facebook/ads/redexgen/X/FV;->A02:Lcom/facebook/ads/redexgen/X/CR;

    .line 67658
    .local v7, "cryptoData":Lcom/facebook/ads/redexgen/X/CR;
    iget-object v10, v7, Lcom/facebook/ads/redexgen/X/YY;->A02:Lcom/facebook/ads/redexgen/X/BY;

    iget-object v14, v5, Lcom/facebook/ads/redexgen/X/CR;->A03:[B

    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/YY;->A02:Lcom/facebook/ads/redexgen/X/BY;

    iget-object v15, v2, Lcom/facebook/ads/redexgen/X/BY;->A04:[B

    iget v4, v5, Lcom/facebook/ads/redexgen/X/CR;->A01:I

    iget v3, v5, Lcom/facebook/ads/redexgen/X/CR;->A02:I

    iget v2, v5, Lcom/facebook/ads/redexgen/X/CR;->A00:I

    move/from16 v18, v2

    move/from16 v16, v4

    move/from16 v17, v3

    invoke-virtual/range {v10 .. v18}, Lcom/facebook/ads/redexgen/X/BY;->A03(I[I[I[B[BIII)V

    .line 67659
    iget-wide v2, v6, Lcom/facebook/ads/redexgen/X/FV;->A01:J

    sub-long/2addr v0, v2

    long-to-int v4, v0

    .line 67660
    .local v2, "bytesRead":I
    iget-wide v2, v6, Lcom/facebook/ads/redexgen/X/FV;->A01:J

    int-to-long v0, v4

    add-long/2addr v2, v0

    iput-wide v2, v6, Lcom/facebook/ads/redexgen/X/FV;->A01:J

    .line 67661
    iget v0, v6, Lcom/facebook/ads/redexgen/X/FV;->A00:I

    sub-int/2addr v0, v4

    iput v0, v6, Lcom/facebook/ads/redexgen/X/FV;->A00:I

    .line 67662
    return-void
.end method

.method private A09(Lcom/facebook/ads/redexgen/X/FX;)V
    .locals 5

    .line 67663
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/FX;->A02:Z

    if-nez v0, :cond_0

    .line 67664
    return-void

    .line 67665
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A06:Lcom/facebook/ads/redexgen/X/FX;

    iget-boolean v4, v0, Lcom/facebook/ads/redexgen/X/FX;->A02:Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A06:Lcom/facebook/ads/redexgen/X/FX;

    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/FX;->A04:J

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/FX;->A04:J

    sub-long/2addr v2, v0

    long-to-int v1, v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A0A:I

    div-int/2addr v1, v0

    add-int/2addr v4, v1

    .line 67666
    .local p0, "allocationCount":I
    new-array v2, v4, [Lcom/facebook/ads/redexgen/X/H9;

    .line 67667
    .local p1, "allocationsToRelease":[Lcom/facebook/ads/redexgen/X/H9;
    .local v0, "currentNode":Lcom/facebook/ads/redexgen/X/FX;
    const/4 v1, 0x0

    .local v0, "i":I
    :goto_0
    array-length v0, v2

    if-ge v1, v0, :cond_1

    .line 67668
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/FX;->A01:Lcom/facebook/ads/redexgen/X/H9;

    aput-object v0, v2, v1

    .line 67669
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/FX;->A01()Lcom/facebook/ads/redexgen/X/FX;

    move-result-object p1

    .line 67670
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67671
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A0D:Lcom/facebook/ads/redexgen/X/HA;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/HA;->AD1([Lcom/facebook/ads/redexgen/X/H9;)V

    .line 67672
    return-void
.end method

.method private final A0A(Z)V
    .locals 4

    .line 67673
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A0C:Lcom/facebook/ads/redexgen/X/FW;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/FW;->A0I(Z)V

    .line 67674
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A04:Lcom/facebook/ads/redexgen/X/FX;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/aX;->A09(Lcom/facebook/ads/redexgen/X/FX;)V

    .line 67675
    iget v3, p0, Lcom/facebook/ads/redexgen/X/aX;->A0A:I

    const-wide/16 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/FX;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ads/redexgen/X/FX;-><init>(JI)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A04:Lcom/facebook/ads/redexgen/X/FX;

    .line 67676
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A04:Lcom/facebook/ads/redexgen/X/FX;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A05:Lcom/facebook/ads/redexgen/X/FX;

    .line 67677
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A06:Lcom/facebook/ads/redexgen/X/FX;

    .line 67678
    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/aX;->A01:J

    .line 67679
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A0D:Lcom/facebook/ads/redexgen/X/HA;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HA;->AEN()V

    .line 67680
    return-void
.end method


# virtual methods
.method public final A0B()I
    .locals 1

    .line 67681
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A0C:Lcom/facebook/ads/redexgen/X/FW;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FW;->A08()I

    move-result v0

    return v0
.end method

.method public final A0C()I
    .locals 1

    .line 67682
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A0C:Lcom/facebook/ads/redexgen/X/FW;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FW;->A06()I

    move-result v0

    return v0
.end method

.method public final A0D()I
    .locals 1

    .line 67683
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A0C:Lcom/facebook/ads/redexgen/X/FW;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FW;->A07()I

    move-result v0

    return v0
.end method

.method public final A0E(JZZ)I
    .locals 1

    .line 67684
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A0C:Lcom/facebook/ads/redexgen/X/FW;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/FW;->A09(JZZ)I

    move-result v0

    return v0
.end method

.method public final A0F(Lcom/facebook/ads/redexgen/X/AD;Lcom/facebook/ads/redexgen/X/YY;ZZJ)I
    .locals 11

    .line 67685
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/aX;->A0C:Lcom/facebook/ads/redexgen/X/FW;

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/aX;->A02:Lcom/facebook/ads/internal/exoplayer2/Format;

    iget-object v10, p0, Lcom/facebook/ads/redexgen/X/aX;->A0B:Lcom/facebook/ads/redexgen/X/FV;

    .line 67686
    move-object v6, p2

    move-object v5, p1

    move v8, p4

    move v7, p3

    invoke-virtual/range {v4 .. v10}, Lcom/facebook/ads/redexgen/X/FW;->A0A(Lcom/facebook/ads/redexgen/X/AD;Lcom/facebook/ads/redexgen/X/YY;ZZLcom/facebook/ads/internal/exoplayer2/Format;Lcom/facebook/ads/redexgen/X/FV;)I

    move-result v2

    .line 67687
    .local p0, "result":I
    const/4 v1, -0x5

    if-eq v2, v1, :cond_6

    const/4 v4, -0x4

    if-eq v2, v4, :cond_1

    const/4 v0, -0x3

    if-ne v2, v0, :cond_0

    .line 67688
    return v0

    .line 67689
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 67690
    :cond_1
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/BV;->A04()Z

    move-result v0

    if-nez v0, :cond_5

    .line 67691
    iget-wide v1, v6, Lcom/facebook/ads/redexgen/X/YY;->A00:J

    sget-object v3, Lcom/facebook/ads/redexgen/X/aX;->A0F:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v3, v3, v0

    const/16 v0, 0x14

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v0, 0x55

    if-eq v3, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v5, Lcom/facebook/ads/redexgen/X/aX;->A0F:[Ljava/lang/String;

    const-string v3, "VD6eroQucXdNz3MsoKHIT4kATW1JDfRN"

    const/4 v0, 0x2

    aput-object v3, v5, v0

    cmp-long v0, v1, p5

    if-gez v0, :cond_3

    .line 67692
    const/high16 v0, -0x80000000

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/BV;->A00(I)V

    .line 67693
    :cond_3
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/YY;->A0A()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 67694
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A0B:Lcom/facebook/ads/redexgen/X/FV;

    invoke-direct {p0, v6, v0}, Lcom/facebook/ads/redexgen/X/aX;->A08(Lcom/facebook/ads/redexgen/X/YY;Lcom/facebook/ads/redexgen/X/FV;)V

    .line 67695
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A0B:Lcom/facebook/ads/redexgen/X/FV;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/FV;->A00:I

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/YY;->A09(I)V

    .line 67696
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A0B:Lcom/facebook/ads/redexgen/X/FV;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/FV;->A01:J

    iget-object v3, v6, Lcom/facebook/ads/redexgen/X/YY;->A01:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A0B:Lcom/facebook/ads/redexgen/X/FV;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/FV;->A00:I

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/facebook/ads/redexgen/X/aX;->A06(JLjava/nio/ByteBuffer;I)V

    .line 67697
    :cond_5
    return v4

    .line 67698
    :cond_6
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/AD;->A00:Lcom/facebook/ads/internal/exoplayer2/Format;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A02:Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 67699
    return v1
.end method

.method public final A0G()J
    .locals 2

    .line 67700
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A0C:Lcom/facebook/ads/redexgen/X/FW;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FW;->A0C()J

    move-result-wide v0

    return-wide v0
.end method

.method public final A0H()Lcom/facebook/ads/internal/exoplayer2/Format;
    .locals 1

    .line 67701
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A0C:Lcom/facebook/ads/redexgen/X/FW;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FW;->A0F()Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public final A0I()V
    .locals 2

    .line 67702
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A0C:Lcom/facebook/ads/redexgen/X/FW;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FW;->A0B()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/aX;->A05(J)V

    .line 67703
    return-void
.end method

.method public final A0J()V
    .locals 1

    .line 67704
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/aX;->A0A(Z)V

    .line 67705
    return-void
.end method

.method public final A0K()V
    .locals 1

    .line 67706
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A0C:Lcom/facebook/ads/redexgen/X/FW;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FW;->A0G()V

    .line 67707
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A04:Lcom/facebook/ads/redexgen/X/FX;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A05:Lcom/facebook/ads/redexgen/X/FX;

    .line 67708
    return-void
.end method

.method public final A0L(JZZ)V
    .locals 2

    .line 67709
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A0C:Lcom/facebook/ads/redexgen/X/FW;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/FW;->A0E(JZZ)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/aX;->A05(J)V

    .line 67710
    return-void
.end method

.method public final A0M(Lcom/facebook/ads/redexgen/X/FY;)V
    .locals 0

    .line 67711
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aX;->A07:Lcom/facebook/ads/redexgen/X/FY;

    .line 67712
    return-void
.end method

.method public final A0N()Z
    .locals 1

    .line 67713
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A0C:Lcom/facebook/ads/redexgen/X/FW;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FW;->A0J()Z

    move-result v0

    return v0
.end method

.method public final A5P(Lcom/facebook/ads/internal/exoplayer2/Format;)V
    .locals 3

    .line 67714
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A00:J

    invoke-static {p1, v0, v1}, Lcom/facebook/ads/redexgen/X/aX;->A01(Lcom/facebook/ads/internal/exoplayer2/Format;J)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v2

    .line 67715
    .local p0, "adjustedFormat":Lcom/facebook/ads/internal/exoplayer2/Format;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A0C:Lcom/facebook/ads/redexgen/X/FW;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/FW;->A0L(Lcom/facebook/ads/internal/exoplayer2/Format;)Z

    move-result v1

    .line 67716
    .local p1, "formatChanged":Z
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aX;->A03:Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 67717
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A08:Z

    .line 67718
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A07:Lcom/facebook/ads/redexgen/X/FY;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 67719
    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/FY;->ABv(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 67720
    :cond_0
    return-void
.end method

.method public final ADQ(Lcom/facebook/ads/redexgen/X/CH;IZ)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 67721
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/aX;->A00(I)I

    move-result v4

    .line 67722
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A06:Lcom/facebook/ads/redexgen/X/FX;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/FX;->A01:Lcom/facebook/ads/redexgen/X/H9;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/H9;->A01:[B

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/aX;->A06:Lcom/facebook/ads/redexgen/X/FX;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A01:J

    .line 67723
    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/FX;->A00(J)I

    move-result v0

    .line 67724
    invoke-interface {p1, v3, v0, v4}, Lcom/facebook/ads/redexgen/X/CH;->read([BII)I

    move-result v3

    .line 67725
    .local p0, "bytesAppended":I
    const/4 v0, -0x1

    if-ne v3, v0, :cond_1

    .line 67726
    if-eqz p3, :cond_0

    .line 67727
    return v0

    .line 67728
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 67729
    :cond_1
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/aX;->A03(I)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/aX;->A0F:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_2

    .line 67730
    sget-object v2, Lcom/facebook/ads/redexgen/X/aX;->A0F:[Ljava/lang/String;

    const-string v1, "gj56WjutkODHGuBsULoCjgk"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "cXoHIYif5j6YkS"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return v3

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final ADR(Lcom/facebook/ads/redexgen/X/IM;I)V
    .locals 5

    .line 67731
    :goto_0
    if-lez p2, :cond_0

    .line 67732
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/aX;->A00(I)I

    move-result v4

    .line 67733
    .local p0, "bytesAppended":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A06:Lcom/facebook/ads/redexgen/X/FX;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/FX;->A01:Lcom/facebook/ads/redexgen/X/H9;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/H9;->A01:[B

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/aX;->A06:Lcom/facebook/ads/redexgen/X/FX;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A01:J

    .line 67734
    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/FX;->A00(J)I

    move-result v0

    .line 67735
    invoke-virtual {p1, v3, v0, v4}, Lcom/facebook/ads/redexgen/X/IM;->A0d([BII)V

    .line 67736
    sub-int/2addr p2, v4

    .line 67737
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/aX;->A03(I)V

    .line 67738
    .end local p0    # "bytesAppended":I
    goto :goto_0

    .line 67739
    :cond_0
    return-void
.end method

.method public final ADS(JIIILcom/facebook/ads/redexgen/X/CR;)V
    .locals 12

    move-wide v5, p1

    .line 67740
    move-object v3, p0

    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/aX;->A08:Z

    if-eqz v0, :cond_0

    .line 67741
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/aX;->A03:Lcom/facebook/ads/internal/exoplayer2/Format;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/aX;->A5P(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 67742
    :cond_0
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/aX;->A09:Z

    move v7, p3

    if-eqz v0, :cond_4

    .line 67743
    and-int/lit8 v0, v7, 0x1

    if-eqz v0, :cond_1

    iget-object v4, v3, Lcom/facebook/ads/redexgen/X/aX;->A0C:Lcom/facebook/ads/redexgen/X/FW;

    sget-object v1, Lcom/facebook/ads/redexgen/X/aX;->A0F:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/aX;->A0F:[Ljava/lang/String;

    const-string v1, "x9Xeu0fQ5laTPGHIgNPQILpO6czCAzIw"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "ozcoxAULLkb5oe9KcRf5sNeK93qRoKsz"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v4, v5, v6}, Lcom/facebook/ads/redexgen/X/FW;->A0K(J)Z

    move-result v0

    if-nez v0, :cond_3

    .line 67744
    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 67745
    :cond_3
    const/4 v4, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/aX;->A0F:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/aX;->A0F:[Ljava/lang/String;

    const-string v1, "2aF6Rrv8pvM6dW2iEnwFUFag8sTvrLLb"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iput-boolean v4, v3, Lcom/facebook/ads/redexgen/X/aX;->A09:Z

    .line 67746
    :cond_4
    iget-wide v0, v3, Lcom/facebook/ads/redexgen/X/aX;->A00:J

    add-long/2addr v5, v0

    .line 67747
    .end local v0
    .local v5, "timeUs":J
    iget-wide v8, v3, Lcom/facebook/ads/redexgen/X/aX;->A01:J

    move/from16 v10, p4

    int-to-long v0, v10

    sub-long/2addr v8, v0

    move/from16 v0, p5

    int-to-long v0, v0

    sub-long/2addr v8, v0

    .line 67748
    .local v4, "absoluteOffset":J
    iget-object v4, v3, Lcom/facebook/ads/redexgen/X/aX;->A0C:Lcom/facebook/ads/redexgen/X/FW;

    move-object/from16 v11, p6

    invoke-virtual/range {v4 .. v11}, Lcom/facebook/ads/redexgen/X/FW;->A0H(JIJILcom/facebook/ads/redexgen/X/CR;)V

    .line 67749
    return-void

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
