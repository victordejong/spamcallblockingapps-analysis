.class public final Lcom/facebook/ads/redexgen/X/Cf;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;

.field public static final A05:[J


# instance fields
.field public A00:I

.field public A01:I

.field public final A02:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 24686
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Cf;->A04()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Cf;->A03()V

    const/16 v0, 0x8

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Cf;->A05:[J

    return-void

    :array_0
    .array-data 8
        0x80
        0x40
        0x20
        0x10
        0x8
        0x4
        0x2
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 24687
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24688
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Cf;->A02:[B

    .line 24689
    return-void
.end method

.method public static A00(I)I
    .locals 7

    .line 24690
    const/4 v6, -0x1

    .line 24691
    .local p0, "varIntLength":I
    const/4 v5, 0x0

    .local v6, "i":I
    :goto_0
    sget-object v4, Lcom/facebook/ads/redexgen/X/Cf;->A05:[J

    array-length v3, v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Cf;->A04:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Cf;->A04:[Ljava/lang/String;

    const-string v1, "3mIsoFv5EM3LWr0WPaW4O9HH8lxSaITy"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "tNO9pH3has3hZ9qDYdZCHzAGfnaFON7P"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ge v5, v3, :cond_0

    .line 24692
    aget-wide v3, v4, v5

    int-to-long v0, p0

    and-long/2addr v3, v0

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    .line 24693
    add-int/lit8 v6, v5, 0x1

    .line 24694
    .end local v6    # "i":I
    :cond_0
    return v6

    .line 24695
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A01([BIZ)J
    .locals 8

    .line 24696
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    int-to-long v2, v0

    const-wide/16 v6, 0xff

    and-long/2addr v2, v6

    .line 24697
    .local p0, "varint":J
    if-eqz p2, :cond_0

    .line 24698
    sget-object v1, Lcom/facebook/ads/redexgen/X/Cf;->A05:[J

    add-int/lit8 v0, p1, -0x1

    aget-wide v4, v1, v0

    const-wide/16 v0, -0x1

    xor-long/2addr v4, v0

    and-long/2addr v2, v4

    .line 24699
    :cond_0
    const/4 v4, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v4, p1, :cond_1

    .line 24700
    const/16 v0, 0x8

    shl-long/2addr v2, v0

    aget-byte v0, p0, v4

    int-to-long v0, v0

    and-long/2addr v0, v6

    or-long/2addr v2, v0

    .line 24701
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 24702
    .end local v0    # "i":I
    :cond_1
    return-wide v2
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Cf;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length v0, v3

    if-ge p0, v0, :cond_1

    aget-byte v0, v3, p0

    sub-int/2addr v0, p2

    add-int/lit8 p1, v0, -0x16

    sget-object v2, Lcom/facebook/ads/redexgen/X/Cf;->A04:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Cf;->A04:[Ljava/lang/String;

    const-string v1, "oPKia4eNwc7dJcUpFOcjDJU7hMlU7H"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "0R9mX8dimlbGnAvBhklZtjfZiIHtUz"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    int-to-byte v0, p1

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x21

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Cf;->A03:[B

    return-void

    :array_0
    .array-data 1
        -0x31t
        -0x10t
        -0x5ft
        -0x9t
        -0x1et
        -0x13t
        -0x16t
        -0x1bt
        -0x5ft
        -0x9t
        -0x1et
        -0xdt
        -0x16t
        -0x11t
        -0xbt
        -0x5ft
        -0x13t
        -0x1at
        -0x11t
        -0x18t
        -0xbt
        -0x17t
        -0x5ft
        -0x12t
        -0x1et
        -0xct
        -0x14t
        -0x5ft
        -0x19t
        -0x10t
        -0xat
        -0x11t
        -0x1bt
    .end array-data
.end method

.method public static A04()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "d6C5GVUURN"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "GzonKXhyFbKrhRxHDY6Qihc2VpeW6KDe"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "KoFdXgwWtN3GuHI9T18hJIHLAysluLtU"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Tzf7IlVckktbPE9MPxXbeO9npIXrc3"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "MFbDDT0kP4qleU1NFQH"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "M8g7rQkzZhy"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "zNXRm5GYAF3dPmgl1HyLQ4dlvbuFKdJp"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Ib6KsKUoUqIp3y2KNzMvB9FAitSlW3"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Cf;->A04:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A05()I
    .locals 1

    .line 24703
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Cf;->A00:I

    return v0
.end method

.method public final A06(Lcom/facebook/ads/redexgen/X/CH;ZZI)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 24704
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Cf;->A01:I

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 24705
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cf;->A02:[B

    invoke-interface {p1, v0, v3, v2, p2}, Lcom/facebook/ads/redexgen/X/CH;->ACp([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 24706
    const-wide/16 v0, -0x1

    return-wide v0

    .line 24707
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cf;->A02:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    .line 24708
    .local p0, "firstByte":I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Cf;->A00(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Cf;->A00:I

    .line 24709
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Cf;->A00:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_5

    .line 24710
    iput v2, p0, Lcom/facebook/ads/redexgen/X/Cf;->A01:I

    .line 24711
    .end local p0    # "firstByte":I
    :cond_1
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Cf;->A00:I

    if-le v1, p4, :cond_3

    .line 24712
    iput v3, p0, Lcom/facebook/ads/redexgen/X/Cf;->A01:I

    .line 24713
    const-wide/16 v3, -0x2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Cf;->A04:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Cf;->A04:[Ljava/lang/String;

    const-string v1, "JfN2tbAOwg3OnZ9ABNXFa6fLbd9tQLQV"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "XzYNnBohiT3a2UeelMbDa4CNDbcIk2ep"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return-wide v3

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 24714
    :cond_3
    if-eq v1, v2, :cond_4

    .line 24715
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cf;->A02:[B

    sub-int/2addr v1, v2

    invoke-interface {p1, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/CH;->readFully([BII)V

    .line 24716
    :cond_4
    iput v3, p0, Lcom/facebook/ads/redexgen/X/Cf;->A01:I

    .line 24717
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cf;->A02:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Cf;->A00:I

    invoke-static {v1, v0, p3}, Lcom/facebook/ads/redexgen/X/Cf;->A01([BIZ)J

    move-result-wide v0

    return-wide v0

    .line 24718
    :cond_5
    const/4 v2, 0x0

    const/16 v1, 0x21

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cf;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A07()V
    .locals 1

    .line 24719
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Cf;->A01:I

    .line 24720
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Cf;->A00:I

    .line 24721
    return-void
.end method
