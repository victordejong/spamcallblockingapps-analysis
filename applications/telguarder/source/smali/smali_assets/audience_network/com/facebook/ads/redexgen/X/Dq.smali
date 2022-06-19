.class public final Lcom/facebook/ads/redexgen/X/Dq;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field public static A00:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Dq;->A01()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Dq;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x63

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

    const/16 v0, 0x3a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Dq;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x2at
        0x26t
        0x25t
        0x26t
        0x3bt
        0x64t
        0x3bt
        0x28t
        0x27t
        0x2et
        0x2ct
        0x3at
        0x36t
        0x35t
        0x36t
        0x2bt
        0x74t
        0x2at
        0x2dt
        0x38t
        0x37t
        0x3dt
        0x38t
        0x2bt
        0x3dt
        0x35t
        0x39t
        0x3at
        0x39t
        0x24t
        0x7bt
        0x22t
        0x24t
        0x37t
        0x38t
        0x25t
        0x30t
        0x33t
        0x24t
        0x42t
        0x52t
        0x45t
        0xct
        0x62t
        0x6et
        0x78t
        0x27t
        0x79t
        0x7et
        0x6bt
        0x7et
        0x63t
        0x69t
        0x27t
        0x63t
        0x64t
        0x6ct
        0x65t
    .end array-data
.end method

.method public static A02(Landroid/media/MediaFormat;Lcom/facebook/ads/internal/exoplayer2/video/ColorInfo;)V
    .locals 4
    .param p1    # Lcom/facebook/ads/internal/exoplayer2/video/ColorInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 29150
    if-eqz p1, :cond_0

    .line 29151
    iget v3, p1, Lcom/facebook/ads/internal/exoplayer2/video/ColorInfo;->A03:I

    const/16 v2, 0x19

    const/16 v1, 0xe

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dq;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Lcom/facebook/ads/redexgen/X/Dq;->A04(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 29152
    iget v3, p1, Lcom/facebook/ads/internal/exoplayer2/video/ColorInfo;->A02:I

    const/16 v2, 0xb

    const/16 v1, 0xe

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dq;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Lcom/facebook/ads/redexgen/X/Dq;->A04(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 29153
    iget v3, p1, Lcom/facebook/ads/internal/exoplayer2/video/ColorInfo;->A01:I

    const/4 v2, 0x0

    const/16 v1, 0xb

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dq;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Lcom/facebook/ads/redexgen/X/Dq;->A04(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 29154
    iget-object v3, p1, Lcom/facebook/ads/internal/exoplayer2/video/ColorInfo;->A04:[B

    const/16 v2, 0x2b

    const/16 v1, 0xf

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dq;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Lcom/facebook/ads/redexgen/X/Dq;->A05(Landroid/media/MediaFormat;Ljava/lang/String;[B)V

    .line 29155
    :cond_0
    return-void
.end method

.method public static A03(Landroid/media/MediaFormat;Ljava/lang/String;F)V
    .locals 1

    .line 29156
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_0

    .line 29157
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    .line 29158
    :cond_0
    return-void
.end method

.method public static A04(Landroid/media/MediaFormat;Ljava/lang/String;I)V
    .locals 1

    .line 29159
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 29160
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 29161
    :cond_0
    return-void
.end method

.method public static A05(Landroid/media/MediaFormat;Ljava/lang/String;[B)V
    .locals 1
    .param p2    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 29162
    if-eqz p2, :cond_0

    .line 29163
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 29164
    :cond_0
    return-void
.end method

.method public static A06(Landroid/media/MediaFormat;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaFormat;",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 29165
    .local v3, "csdBuffers":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v4, 0x0

    .local p0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_0

    .line 29166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x27

    const/4 v1, 0x4

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dq;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 29167
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 29168
    .end local p0    # "i":I
    :cond_0
    return-void
.end method
