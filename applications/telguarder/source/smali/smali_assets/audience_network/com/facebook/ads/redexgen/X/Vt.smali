.class public Lcom/facebook/ads/redexgen/X/Vt;
.super Lcom/facebook/ads/redexgen/X/BV;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/exoplayer2/decoder/DecoderInputBuffer$BufferReplacementMode;
    }
.end annotation


# static fields
.field public static A04:[B


# instance fields
.field public A00:J

.field public A01:Ljava/nio/ByteBuffer;

.field public final A02:Lcom/facebook/ads/redexgen/X/BY;

.field public final A03:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vt;->A06()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 62044
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BV;-><init>()V

    .line 62045
    new-instance v0, Lcom/facebook/ads/redexgen/X/BY;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/BY;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vt;->A02:Lcom/facebook/ads/redexgen/X/BY;

    .line 62046
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Vt;->A03:I

    .line 62047
    return-void
.end method

.method public static A03()Lcom/facebook/ads/redexgen/X/Vt;
    .locals 2

    .line 62048
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Vt;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Vt;-><init>(I)V

    return-object v0
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vt;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x13

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A05(I)Ljava/nio/ByteBuffer;
    .locals 5

    .line 62049
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Vt;->A03:I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 62050
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 62051
    :cond_0
    const/4 v0, 0x2

    if-ne v1, v0, :cond_1

    .line 62052
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 62053
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vt;->A01:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_2

    const/4 v4, 0x0

    .line 62054
    .local p0, "currentCapacity":I
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x4

    const/16 v1, 0x12

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vt;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v1, 0x3

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vt;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    const/4 v1, 0x1

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vt;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62055
    :cond_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    goto :goto_0
.end method

.method public static A06()V
    .locals 1

    const/16 v0, 0x16

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Vt;->A04:[B

    return-void

    :array_0
    .array-data 1
        0x76t
        -0x6et
        0x76t
        0x58t
        0x60t
        -0x6dt
        -0x7ct
        -0x7ct
        -0x7dt
        -0x70t
        0x3et
        -0x6et
        -0x73t
        -0x73t
        0x3et
        -0x6ft
        -0x75t
        0x7ft
        -0x76t
        -0x76t
        0x3et
        0x46t
    .end array-data
.end method


# virtual methods
.method public final A07()V
    .locals 1

    .line 62056
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/BV;->A07()V

    .line 62057
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vt;->A01:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 62058
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 62059
    :cond_0
    return-void
.end method

.method public final A08()V
    .locals 1

    .line 62060
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vt;->A01:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 62061
    return-void
.end method

.method public final A09(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 62062
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vt;->A01:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    .line 62063
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Vt;->A05(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vt;->A01:Ljava/nio/ByteBuffer;

    .line 62064
    return-void

    .line 62065
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    .line 62066
    .local p0, "capacity":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vt;->A01:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 62067
    .local p1, "position":I
    add-int v0, v3, p1

    .line 62068
    .local v0, "requiredCapacity":I
    if-lt v1, v0, :cond_1

    .line 62069
    return-void

    .line 62070
    :cond_1
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Vt;->A05(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 62071
    .local v0, "newData":Ljava/nio/ByteBuffer;
    if-lez v3, :cond_2

    .line 62072
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vt;->A01:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 62073
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vt;->A01:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 62074
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vt;->A01:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 62075
    :cond_2
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/Vt;->A01:Ljava/nio/ByteBuffer;

    .line 62076
    return-void
.end method

.method public final A0A()Z
    .locals 1

    .line 62077
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/BV;->A06(I)Z

    move-result v0

    return v0
.end method

.method public final A0B()Z
    .locals 1

    .line 62078
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vt;->A01:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vt;->A03:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
