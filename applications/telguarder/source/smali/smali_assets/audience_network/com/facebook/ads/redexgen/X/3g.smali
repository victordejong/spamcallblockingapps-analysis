.class public final Lcom/facebook/ads/redexgen/X/3g;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/3i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Bucket"
.end annotation


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/redexgen/X/3g;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/3g;->A03()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/3g;->A02()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 9747
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9748
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/3g;->A00:J

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/3g;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x25

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A01()V
    .locals 1

    .line 9749
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3g;->A01:Lcom/facebook/ads/redexgen/X/3g;

    if-nez v0, :cond_0

    .line 9750
    new-instance v0, Lcom/facebook/ads/redexgen/X/3g;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/3g;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3g;->A01:Lcom/facebook/ads/redexgen/X/3g;

    .line 9751
    :cond_0
    return-void
.end method

.method public static A02()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/3g;->A02:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x2ft
        0x2ft
    .end array-data
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "eKMrgqlCE6gemHc3i8XP3AKPCikI"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "F056EMXFpemItrIKSNHDMT"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "UP7tmvacf"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "VwJuHcYZb6pOUF9c5fygzqO1xhwXl8"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "rbSS0TX92cN6cYo9TUPXDkEXEuy61J"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "qalk034xToBy0kTaZmHtwYGALLiE8EwC"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "z1"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "iDDMQnl7H0FoGDQAr6PhZLTqZy2Xncag"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/3g;->A03:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A04(I)I
    .locals 9

    .line 9752
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3g;->A01:Lcom/facebook/ads/redexgen/X/3g;

    const/16 v0, 0x40

    const-wide/16 v7, 0x1

    if-nez v1, :cond_2

    .line 9753
    if-lt p1, v0, :cond_0

    .line 9754
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/3g;->A00:J

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    return v0

    .line 9755
    :cond_0
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/3g;->A00:J

    shl-long v5, v7, p1

    sub-long/2addr v5, v7

    sget-object v1, Lcom/facebook/ads/redexgen/X/3g;->A03:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v4, Lcom/facebook/ads/redexgen/X/3g;->A03:[Ljava/lang/String;

    const-string v1, "eBNk3oMk3zKdgPZGJWBoIC6ya78Y9W"

    const/4 v0, 0x3

    aput-object v1, v4, v0

    const-string v1, "SZljZRIwDL4qj86IVN03h7W6Ja49N5"

    const/4 v0, 0x4

    aput-object v1, v4, v0

    and-long/2addr v2, v5

    invoke-static {v2, v3}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    return v0

    .line 9756
    :cond_2
    if-ge p1, v0, :cond_3

    .line 9757
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/3g;->A00:J

    shl-long v0, v7, p1

    sub-long/2addr v0, v7

    and-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    return v0

    .line 9758
    :cond_3
    add-int/lit8 v0, p1, -0x40

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/3g;->A04(I)I

    move-result v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/3g;->A00:J

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    add-int/2addr v2, v0

    return v2
.end method

.method public final A05()V
    .locals 2

    .line 9759
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/3g;->A00:J

    .line 9760
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3g;->A01:Lcom/facebook/ads/redexgen/X/3g;

    if-eqz v0, :cond_0

    .line 9761
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3g;->A05()V

    .line 9762
    :cond_0
    return-void
.end method

.method public final A06(I)V
    .locals 6

    .line 9763
    const/16 v0, 0x40

    if-lt p1, v0, :cond_1

    .line 9764
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/3g;->A01:Lcom/facebook/ads/redexgen/X/3g;

    if-eqz v4, :cond_2

    .line 9765
    add-int/lit8 v3, p1, -0x40

    sget-object v1, Lcom/facebook/ads/redexgen/X/3g;->A03:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/3g;->A03:[Ljava/lang/String;

    const-string v1, "jF"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/3g;->A06(I)V

    goto :goto_0

    .line 9766
    :cond_1
    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/3g;->A00:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    const-wide/16 v0, -0x1

    xor-long/2addr v2, v0

    and-long/2addr v4, v2

    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/3g;->A00:J

    .line 9767
    :cond_2
    :goto_0
    return-void
.end method

.method public final A07(I)V
    .locals 4

    .line 9768
    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    .line 9769
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3g;->A01()V

    .line 9770
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3g;->A01:Lcom/facebook/ads/redexgen/X/3g;

    add-int/lit8 v0, p1, -0x40

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/3g;->A07(I)V

    .line 9771
    :goto_0
    return-void

    .line 9772
    :cond_0
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/3g;->A00:J

    const-wide/16 v0, 0x1

    shl-long/2addr v0, p1

    or-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/3g;->A00:J

    goto :goto_0
.end method

.method public final A08(IZ)V
    .locals 11

    .line 9773
    const/16 v0, 0x40

    if-lt p1, v0, :cond_1

    .line 9774
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3g;->A01()V

    .line 9775
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3g;->A01:Lcom/facebook/ads/redexgen/X/3g;

    add-int/lit8 v0, p1, -0x40

    invoke-virtual {v1, v0, p2}, Lcom/facebook/ads/redexgen/X/3g;->A08(IZ)V

    .line 9776
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/3g;
    .end local p1    # null:I
    .end local v1
    .end local v3
    :cond_0
    :goto_0
    return-void

    .line 9777
    :cond_1
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/3g;->A00:J

    const-wide/high16 v3, -0x8000000000000000L

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    cmp-long v0, v1, v3

    if-eqz v0, :cond_4

    const/4 v8, 0x1

    .line 9778
    .local p0, "lastBit":Z
    :goto_1
    const-wide/16 v0, 0x1

    shl-long v6, v0, p1

    sub-long/2addr v6, v0

    .line 9779
    .local v1, "mask":J
    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/3g;->A00:J

    and-long v2, v4, v6

    .line 9780
    .local v3, "before":J
    const-wide/16 v0, -0x1

    xor-long/2addr v0, v6

    and-long/2addr v4, v0

    shl-long/2addr v4, v10

    .line 9781
    .local p1, "after":J
    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/3g;->A00:J

    .line 9782
    if-eqz p2, :cond_3

    .line 9783
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/3g;->A07(I)V

    .line 9784
    :goto_2
    if-nez v8, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3g;->A01:Lcom/facebook/ads/redexgen/X/3g;

    if-eqz v0, :cond_0

    .line 9785
    :cond_2
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3g;->A01()V

    .line 9786
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3g;->A01:Lcom/facebook/ads/redexgen/X/3g;

    invoke-virtual {v0, v9, v8}, Lcom/facebook/ads/redexgen/X/3g;->A08(IZ)V

    goto :goto_0

    .line 9787
    :cond_3
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/3g;->A06(I)V

    goto :goto_2

    .line 9788
    :cond_4
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public final A09(I)Z
    .locals 5

    .line 9789
    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    .line 9790
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3g;->A01()V

    .line 9791
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3g;->A01:Lcom/facebook/ads/redexgen/X/3g;

    add-int/lit8 v0, p1, -0x40

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/3g;->A09(I)Z

    move-result v0

    return v0

    .line 9792
    :cond_0
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/3g;->A00:J

    const-wide/16 v0, 0x1

    shl-long/2addr v0, p1

    and-long/2addr v3, v0

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0A(I)Z
    .locals 13

    .line 9793
    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    .line 9794
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3g;->A01()V

    .line 9795
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3g;->A01:Lcom/facebook/ads/redexgen/X/3g;

    add-int/lit8 v0, p1, -0x40

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/3g;->A0A(I)Z

    move-result v0

    return v0

    .line 9796
    :cond_0
    const-wide/16 v11, 0x1

    shl-long v9, v11, p1

    .line 9797
    .local v0, "mask":J
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/3g;->A00:J

    and-long/2addr v3, v9

    const-wide/16 v1, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x0

    cmp-long v0, v3, v1

    if-eqz v0, :cond_3

    const/4 v7, 0x1

    .line 9798
    .local v0, "value":Z
    :goto_0
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/3g;->A00:J

    const-wide/16 v4, -0x1

    xor-long v0, v9, v4

    and-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/3g;->A00:J

    .line 9799
    sub-long/2addr v9, v11

    .line 9800
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/3g;->A00:J

    and-long v2, v0, v9

    .line 9801
    .local v0, "before":J
    xor-long/2addr v4, v9

    and-long/2addr v0, v4

    invoke-static {v0, v1, v8}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v0

    .line 9802
    .local p0, "after":J
    or-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/3g;->A00:J

    .line 9803
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3g;->A01:Lcom/facebook/ads/redexgen/X/3g;

    if-eqz v0, :cond_2

    .line 9804
    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/3g;->A09(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9805
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/3g;->A07(I)V

    .line 9806
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3g;->A01:Lcom/facebook/ads/redexgen/X/3g;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/3g;->A0A(I)Z

    .line 9807
    :cond_2
    return v7

    .line 9808
    :cond_3
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 9809
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3g;->A01:Lcom/facebook/ads/redexgen/X/3g;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/3g;->A00:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 9810
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3g;->A01:Lcom/facebook/ads/redexgen/X/3g;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3g;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3g;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/3g;->A00:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
