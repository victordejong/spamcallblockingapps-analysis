.class public final Lcom/facebook/ads/redexgen/X/Ze;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/DM;


# static fields
.field public static A06:[B


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:Lcom/facebook/ads/redexgen/X/CS;

.field public A04:Z

.field public final A05:Lcom/facebook/ads/redexgen/X/IM;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ze;->A01()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 65485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65486
    const/16 v1, 0xa

    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ze;->A05:Lcom/facebook/ads/redexgen/X/IM;

    .line 65487
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ze;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x7b

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

    const/16 v0, 0x32

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ze;->A06:[B

    return-void

    :array_0
    .array-data 1
        0x19t
        0x3et
        0x48t
        0x38t
        0x36t
        0x47t
        0x39t
        0x3et
        0x43t
        0x3ct
        -0xbt
        0x3et
        0x43t
        0x4bt
        0x36t
        0x41t
        0x3et
        0x39t
        -0xbt
        0x1et
        0x19t
        0x8t
        -0xbt
        0x49t
        0x36t
        0x3ct
        -0x10t
        0xbt
        -0x26t
        -0x7t
        0xct
        0x8t
        0xbt
        0xct
        0x19t
        0x59t
        0x68t
        0x68t
        0x64t
        0x61t
        0x5bt
        0x59t
        0x6ct
        0x61t
        0x67t
        0x66t
        0x27t
        0x61t
        0x5ct
        0x2bt
    .end array-data
.end method


# virtual methods
.method public final A49(Lcom/facebook/ads/redexgen/X/IM;)V
    .locals 7

    .line 65488
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ze;->A04:Z

    if-nez v0, :cond_0

    .line 65489
    return-void

    .line 65490
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v2

    .line 65491
    .local p0, "bytesAvailable":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ze;->A00:I

    const/16 v3, 0xa

    if-ge v0, v3, :cond_3

    .line 65492
    rsub-int/lit8 v0, v0, 0xa

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 65493
    .local p1, "headerBytesAvailable":I
    iget-object v5, p1, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    .line 65494
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ze;->A05:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ze;->A00:I

    .line 65495
    invoke-static {v5, v4, v1, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65496
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ze;->A00:I

    add-int/2addr v0, v6

    if-ne v0, v3, :cond_3

    .line 65497
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ze;->A05:Lcom/facebook/ads/redexgen/X/IM;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 65498
    const/16 v1, 0x49

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ze;->A05:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    if-ne v1, v0, :cond_1

    const/16 v1, 0x44

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ze;->A05:Lcom/facebook/ads/redexgen/X/IM;

    .line 65499
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    if-ne v1, v0, :cond_1

    const/16 v1, 0x33

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ze;->A05:Lcom/facebook/ads/redexgen/X/IM;

    .line 65500
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    if-eq v1, v0, :cond_2

    .line 65501
    :cond_1
    const/16 v2, 0x1a

    const/16 v1, 0x9

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ze;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x1a

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ze;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65502
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/Ze;->A04:Z

    .line 65503
    return-void

    .line 65504
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ze;->A05:Lcom/facebook/ads/redexgen/X/IM;

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 65505
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ze;->A05:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0E()I

    move-result v0

    add-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ze;->A01:I

    .line 65506
    .end local p1    # "headerBytesAvailable":I
    :cond_3
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ze;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ze;->A00:I

    sub-int/2addr v1, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 65507
    .local p1, "bytesToWrite":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ze;->A03:Lcom/facebook/ads/redexgen/X/CS;

    invoke-interface {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/CS;->ADR(Lcom/facebook/ads/redexgen/X/IM;I)V

    .line 65508
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ze;->A00:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ze;->A00:I

    .line 65509
    return-void
.end method

.method public final A4V(Lcom/facebook/ads/redexgen/X/CI;Lcom/facebook/ads/redexgen/X/Da;)V
    .locals 6

    .line 65510
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Da;->A06()V

    .line 65511
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Da;->A04()I

    move-result v1

    const/4 v0, 0x4

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/CI;->AEM(II)Lcom/facebook/ads/redexgen/X/CS;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ze;->A03:Lcom/facebook/ads/redexgen/X/CS;

    .line 65512
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Ze;->A03:Lcom/facebook/ads/redexgen/X/CS;

    .line 65513
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Da;->A05()Ljava/lang/String;

    move-result-object v4

    .line 65514
    const/4 v3, 0x0

    const/16 v2, 0x23

    const/16 v1, 0xf

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ze;->A00(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-static {v4, v1, v3, v0, v3}, Lcom/facebook/ads/internal/exoplayer2/Format;->A0B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    .line 65515
    invoke-interface {v5, v0}, Lcom/facebook/ads/redexgen/X/CS;->A5P(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 65516
    return-void
.end method

.method public final ACI()V
    .locals 7

    .line 65517
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ze;->A04:Z

    if-eqz v0, :cond_0

    iget v4, p0, Lcom/facebook/ads/redexgen/X/Ze;->A01:I

    if-eqz v4, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ze;->A00:I

    if-eq v0, v4, :cond_1

    .line 65518
    :cond_0
    return-void

    .line 65519
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ze;->A03:Lcom/facebook/ads/redexgen/X/CS;

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Ze;->A02:J

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/CS;->ADS(JIIILcom/facebook/ads/redexgen/X/CR;)V

    .line 65520
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ze;->A04:Z

    .line 65521
    return-void
.end method

.method public final ACJ(JZ)V
    .locals 1

    .line 65522
    if-nez p3, :cond_0

    .line 65523
    return-void

    .line 65524
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ze;->A04:Z

    .line 65525
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Ze;->A02:J

    .line 65526
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ze;->A01:I

    .line 65527
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ze;->A00:I

    .line 65528
    return-void
.end method

.method public final ADV()V
    .locals 1

    .line 65529
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ze;->A04:Z

    .line 65530
    return-void
.end method
