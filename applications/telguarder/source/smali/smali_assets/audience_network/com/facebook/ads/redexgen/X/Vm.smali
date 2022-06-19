.class public final Lcom/facebook/ads/redexgen/X/Vm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/CP;


# static fields
.field public static A06:[B


# instance fields
.field public final A00:I

.field public final A01:[I

.field public final A02:[J

.field public final A03:[J

.field public final A04:[J

.field public final A05:J


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vm;->A02()V

    return-void
.end method

.method public constructor <init>([I[J[J[J)V
    .locals 4

    .line 61612
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61613
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Vm;->A01:[I

    .line 61614
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Vm;->A03:[J

    .line 61615
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Vm;->A02:[J

    .line 61616
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Vm;->A04:[J

    .line 61617
    array-length v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A00:I

    .line 61618
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Vm;->A00:I

    if-lez v1, :cond_0

    .line 61619
    add-int/lit8 v0, v1, -0x1

    aget-wide v2, p3, v0

    add-int/lit8 v0, v1, -0x1

    aget-wide v0, p4, v0

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Vm;->A05:J

    .line 61620
    :goto_0
    return-void

    .line 61621
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A05:J

    goto :goto_0
.end method

.method private final A00(J)I
    .locals 2

    .line 61622
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vm;->A04:[J

    const/4 v0, 0x1

    invoke-static {v1, p1, p2, v0, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0B([JJZZ)I

    move-result v0

    return v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vm;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x64

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x3c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Vm;->A06:[B

    return-void

    :array_0
    .array-data 1
        0x8t
        0x22t
        0x2et
        0x6at
        0x7bt
        0x7ct
        0x6ft
        0x7at
        0x67t
        0x61t
        0x60t
        0x7dt
        0x5bt
        0x7dt
        0x33t
        0x5ct
        0x50t
        0x1ft
        0x16t
        0x16t
        0x3t
        0x15t
        0x4t
        0x3t
        0x4dt
        0x76t
        0x7at
        0x29t
        0x33t
        0x20t
        0x3ft
        0x29t
        0x67t
        0x1ct
        0x10t
        0x44t
        0x59t
        0x5dt
        0x55t
        0x65t
        0x43t
        0xdt
        0x13t
        0x38t
        0x25t
        0x3et
        0x3bt
        0x19t
        0x3et
        0x34t
        0x35t
        0x28t
        0x78t
        0x3ct
        0x35t
        0x3et
        0x37t
        0x24t
        0x38t
        0x6dt
    .end array-data
.end method


# virtual methods
.method public final A6J()J
    .locals 2

    .line 61623
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A05:J

    return-wide v0
.end method

.method public final A79(J)Lcom/facebook/ads/redexgen/X/CO;
    .locals 8

    .line 61624
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Vm;->A00(J)I

    move-result v7

    .line 61625
    .local p0, "chunkIndex":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A04:[J

    aget-wide v2, v0, v7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A03:[J

    aget-wide v0, v0, v7

    new-instance v6, Lcom/facebook/ads/redexgen/X/CQ;

    invoke-direct {v6, v2, v3, v0, v1}, Lcom/facebook/ads/redexgen/X/CQ;-><init>(JJ)V

    .line 61626
    .local p1, "seekPoint":Lcom/facebook/ads/redexgen/X/CQ;
    iget-wide v1, v6, Lcom/facebook/ads/redexgen/X/CQ;->A01:J

    cmp-long v0, v1, p1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A00:I

    add-int/lit8 v0, v0, -0x1

    if-ne v7, v0, :cond_1

    .line 61627
    .end local v2
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/CO;

    invoke-direct {v0, v6}, Lcom/facebook/ads/redexgen/X/CO;-><init>(Lcom/facebook/ads/redexgen/X/CQ;)V

    return-object v0

    .line 61628
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vm;->A04:[J

    add-int/lit8 v0, v7, 0x1

    aget-wide v4, v1, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vm;->A03:[J

    add-int/lit8 v0, v7, 0x1

    aget-wide v2, v1, v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/CQ;

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/facebook/ads/redexgen/X/CQ;-><init>(JJ)V

    .line 61629
    .local v2, "nextSeekPoint":Lcom/facebook/ads/redexgen/X/CQ;
    new-instance v0, Lcom/facebook/ads/redexgen/X/CO;

    invoke-direct {v0, v6, v1}, Lcom/facebook/ads/redexgen/X/CO;-><init>(Lcom/facebook/ads/redexgen/X/CQ;Lcom/facebook/ads/redexgen/X/CQ;)V

    return-object v0
.end method

.method public final A8F()Z
    .locals 1

    .line 61630
    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 61631
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2a

    const/16 v1, 0x12

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vm;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A00:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x19

    const/16 v1, 0x8

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vm;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A01:[I

    .line 61632
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xf

    const/16 v1, 0xa

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vm;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A03:[J

    .line 61633
    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x21

    const/16 v1, 0x9

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vm;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A04:[J

    .line 61634
    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    const/16 v1, 0xe

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vm;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A02:[J

    .line 61635
    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vm;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61636
    return-object v0
.end method
