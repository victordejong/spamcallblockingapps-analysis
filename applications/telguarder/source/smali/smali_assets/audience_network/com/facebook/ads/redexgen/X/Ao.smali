.class public final Lcom/facebook/ads/redexgen/X/Ao;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/An;
    }
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final A02:[I

.field public static final A03:[I

.field public static final A04:[I

.field public static final A05:[I

.field public static final A06:[I

.field public static final A07:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 21794
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ao;->A0C()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ao;->A0B()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ao;->A03:[I

    .line 21795
    const/4 v1, 0x3

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ao;->A05:[I

    .line 21796
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ao;->A06:[I

    .line 21797
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ao;->A04:[I

    .line 21798
    const/16 v1, 0x13

    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ao;->A02:[I

    .line 21799
    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ao;->A07:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x6
    .end array-data

    :array_1
    .array-data 4
        0xbb80
        0xac44
        0x7d00
    .end array-data

    :array_2
    .array-data 4
        0x5dc0
        0x5622
        0x3e80
    .end array-data

    :array_3
    .array-data 4
        0x2
        0x1
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
    .end array-data

    :array_4
    .array-data 4
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0xa0
        0xc0
        0xe0
        0x100
        0x140
        0x180
        0x1c0
        0x200
        0x240
        0x280
    .end array-data

    :array_5
    .array-data 4
        0x45
        0x57
        0x68
        0x79
        0x8b
        0xae
        0xd0
        0xf3
        0x116
        0x15c
        0x1a1
        0x1e7
        0x22d
        0x2b8
        0x343
        0x3cf
        0x45a
        0x4e5
        0x571
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 21800
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()I
    .locals 1

    .line 21801
    const/16 v0, 0x600

    return v0
.end method

.method public static A01(II)I
    .locals 4

    .line 21802
    div-int/lit8 v3, p1, 0x2

    .line 21803
    .local p0, "halfFrmsizecod":I
    if-ltz p0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ao;->A05:[I

    array-length v0, v2

    if-ge p0, v0, :cond_0

    if-ltz p1, :cond_0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ao;->A07:[I

    array-length v0, v1

    if-lt v3, v0, :cond_1

    .line 21804
    .end local p1    # null:I
    .end local v3
    :cond_0
    const/4 v0, -0x1

    return v0

    .line 21805
    :cond_1
    aget v2, v2, p0

    .line 21806
    .local p1, "sampleRate":I
    const v0, 0xac44

    if-ne v2, v0, :cond_2

    .line 21807
    aget v1, v1, v3

    rem-int/lit8 v0, p1, 0x2

    add-int/2addr v1, v0

    mul-int/lit8 v0, v1, 0x2

    return v0

    .line 21808
    :cond_2
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ao;->A02:[I

    aget v1, v0, v3

    .line 21809
    .local v3, "bitrate":I
    const/16 v0, 0x7d00

    if-ne v2, v0, :cond_3

    .line 21810
    mul-int/lit8 v0, v1, 0x6

    return v0

    .line 21811
    :cond_3
    mul-int/lit8 v0, v1, 0x4

    return v0
.end method

.method public static A02(Ljava/nio/ByteBuffer;)I
    .locals 5

    .line 21812
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 21813
    .local p0, "startIndex":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    add-int/lit8 v2, v0, -0xa

    .line 21814
    .local v4, "endIndex":I
    move v3, v4

    .local v0, "i":I
    :goto_0
    if-gt v3, v2, :cond_2

    .line 21815
    add-int/lit8 v0, v3, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    const v0, -0x1000001

    and-int/2addr v1, v0

    const v0, -0x45908d08

    if-ne v1, v0, :cond_0

    .line 21816
    sub-int/2addr v3, v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ao;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x35

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ao;->A01:[Ljava/lang/String;

    const-string v1, "HsOQGdwqdk0uhcM32KgQ5Di"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "jURcrur"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return v3

    .line 21817
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 21818
    .end local v0    # "i":I
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public static A03(Ljava/nio/ByteBuffer;)I
    .locals 3

    .line 21819
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v2, v0, 0xc0

    const/4 v1, 0x6

    shr-int/2addr v2, v1

    .line 21820
    .local p0, "fscod":I
    const/4 v0, 0x3

    if-ne v2, v0, :cond_0

    .line 21821
    :goto_0
    mul-int/lit16 v0, v1, 0x100

    .line 21822
    return v0

    .line 21823
    :cond_0
    sget-object v1, Lcom/facebook/ads/redexgen/X/Ao;->A03:[I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit8 v0, v0, 0x30

    shr-int/lit8 v0, v0, 0x4

    aget v1, v1, v0

    goto :goto_0
.end method

.method public static A04(Ljava/nio/ByteBuffer;I)I
    .locals 5

    .line 21824
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v1, v0, 0xff

    const/16 v0, 0xbb

    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    .line 21825
    .local p0, "isMlp":Z
    :goto_0
    const/16 v4, 0x28

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, p1

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    :goto_1
    add-int/2addr v3, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ao;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x35

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ao;->A01:[Ljava/lang/String;

    const-string v1, "Hhr6qVPdz6vquOi6EOOYWp3miyuElg9k"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    shr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0x7

    shl-int/2addr v4, v0

    return v4

    :cond_0
    const/16 v0, 0x8

    goto :goto_1

    .line 21826
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A05([B)I
    .locals 3

    .line 21827
    array-length v1, p0

    const/4 v0, 0x5

    if-ge v1, v0, :cond_0

    .line 21828
    const/4 v0, -0x1

    return v0

    .line 21829
    :cond_0
    const/4 v2, 0x4

    aget-byte v0, p0, v2

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v1, v0, 0x6

    .line 21830
    .local v1, "fscod":I
    aget-byte v0, p0, v2

    and-int/lit8 v0, v0, 0x3f

    .line 21831
    .local p0, "frmsizecod":I
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ao;->A01(II)I

    move-result v0

    return v0
.end method

.method public static A06([B)I
    .locals 5

    .line 21832
    const/4 v0, 0x4

    aget-byte v1, p0, v0

    const/4 v3, 0x0

    const/4 v0, -0x8

    if-ne v1, v0, :cond_0

    const/4 v0, 0x5

    aget-byte v1, p0, v0

    const/16 v0, 0x72

    if-ne v1, v0, :cond_0

    const/4 v0, 0x6

    aget-byte v1, p0, v0

    const/16 v0, 0x6f

    if-ne v1, v0, :cond_0

    const/4 v2, 0x7

    aget-byte v0, p0, v2

    and-int/lit16 v1, v0, 0xfe

    const/16 v0, 0xba

    if-eq v1, v0, :cond_1

    .line 21833
    .end local v1
    :cond_0
    return v3

    .line 21834
    :cond_1
    aget-byte v0, p0, v2

    and-int/lit16 v1, v0, 0xff

    const/16 v0, 0xbb

    if-ne v1, v0, :cond_2

    const/4 v3, 0x1

    .line 21835
    .local v1, "isMlp":Z
    :cond_2
    const/16 v4, 0x28

    if-eqz v3, :cond_3

    const/16 v0, 0x9

    :goto_0
    aget-byte v0, p0, v0

    shr-int/lit8 v3, v0, 0x4

    and-int/2addr v3, v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ao;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x35

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ao;->A01:[Ljava/lang/String;

    const-string v1, "ptbYDzRTUaFLFj2fOfXZHk4jYo1811S9"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    shl-int/2addr v4, v3

    return v4

    :cond_3
    const/16 v0, 0x8

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A07(Lcom/facebook/ads/redexgen/X/IM;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;)Lcom/facebook/ads/internal/exoplayer2/Format;
    .locals 11

    .line 21836
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v1, v0, 0x6

    .line 21837
    .local p0, "fscod":I
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ao;->A05:[I

    aget v7, v0, v1

    .line 21838
    .local v1, "sampleRate":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v2

    .line 21839
    .local v6, "nextByte":I
    sget-object v1, Lcom/facebook/ads/redexgen/X/Ao;->A04:[I

    and-int/lit8 v0, v2, 0x38

    shr-int/lit8 v0, v0, 0x3

    aget v6, v1, v0

    .line 21840
    .local p0, "channelCount":I
    and-int/lit8 v0, v2, 0x4

    if-eqz v0, :cond_0

    .line 21841
    add-int/lit8 v6, v6, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ao;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ao;->A01:[Ljava/lang/String;

    const-string v1, "2oNwkx8lw7g72oIE3b4p"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    .line 21842
    .end local p0    # "channelCount":I
    .local v0, "channelCount":I
    :cond_0
    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/16 v1, 0x9

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ao;->A0A(III)Ljava/lang/String;

    move-result-object v2

    move-object v9, p3

    move-object p0, p2

    move-object v1, p1

    invoke-static/range {v1 .. v11}, Lcom/facebook/ads/internal/exoplayer2/Format;->A07(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    return-object v0

    .line 21843
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A08(Lcom/facebook/ads/redexgen/X/IM;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;)Lcom/facebook/ads/internal/exoplayer2/Format;
    .locals 12

    .line 21844
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 21845
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v1, v0, 0x6

    .line 21846
    .local p0, "fscod":I
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ao;->A05:[I

    aget v8, v0, v1

    .line 21847
    .local p0, "sampleRate":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v2

    .line 21848
    .local v10, "nextByte":I
    sget-object v1, Lcom/facebook/ads/redexgen/X/Ao;->A04:[I

    and-int/lit8 v0, v2, 0xe

    shr-int/lit8 v0, v0, 0x1

    aget v7, v1, v0

    .line 21849
    .local v0, "channelCount":I
    and-int/lit8 v0, v2, 0x1

    if-eqz v0, :cond_0

    .line 21850
    add-int/lit8 v7, v7, 0x1

    .line 21851
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    .line 21852
    and-int/lit8 v0, v0, 0x1e

    shr-int/lit8 v0, v0, 0x1

    .line 21853
    .local v0, "numDepSub":I
    if-lez v0, :cond_1

    .line 21854
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    .line 21855
    .local p0, "lowByteChanLoc":I
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 21856
    add-int/lit8 v7, v7, 0x2

    .line 21857
    .end local v0    # "numDepSub":I
    .local v7, "channelCount":I
    :cond_1
    const/16 v2, 0x9

    const/16 v1, 0xa

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ao;->A0A(III)Ljava/lang/String;

    move-result-object v3

    .line 21858
    .local v0, "mimeType":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v0

    if-lez v0, :cond_2

    .line 21859
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    .line 21860
    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 21861
    const/16 v2, 0x13

    const/16 v1, 0xe

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ao;->A0A(III)Ljava/lang/String;

    move-result-object v3

    .line 21862
    .end local v10    # "nextByte":I
    .end local v0    # "mimeType":Ljava/lang/String;
    .local v0, "mimeType":Ljava/lang/String;
    .local v0, "nextByte":I
    :cond_2
    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v9, 0x0

    const/4 v11, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ao;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ao;->A01:[Ljava/lang/String;

    const-string v1, "TH5730Y0jlnFrtxm4PGR"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    move-object v10, p3

    move-object p0, p2

    move-object v2, p1

    invoke-static/range {v2 .. v12}, Lcom/facebook/ads/internal/exoplayer2/Format;->A07(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    return-object v0

    .line 21863
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A09(Lcom/facebook/ads/redexgen/X/IL;)Lcom/facebook/ads/redexgen/X/An;
    .locals 19

    .line 21864
    move-object/from16 v4, p0

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/IL;->A04()I

    move-result v2

    .line 21865
    .local v4, "initialPosition":I
    const/16 v0, 0x28

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 21866
    const/4 v7, 0x5

    invoke-virtual {v4, v7}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    const/16 v9, 0x10

    const/4 v1, 0x1

    if-ne v0, v9, :cond_1f

    const/4 v0, 0x1

    .line 21867
    .local v0, "isEac3":Z
    :goto_0
    invoke-virtual {v4, v2}, Lcom/facebook/ads/redexgen/X/IL;->A08(I)V

    .line 21868
    const/4 v14, -0x1

    .line 21869
    .local v9, "streamType":I
    const/4 v6, 0x3

    const/16 v10, 0x8

    const/4 v8, 0x2

    if-eqz v0, :cond_32

    .line 21870
    invoke-virtual {v4, v9}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 21871
    invoke-virtual {v4, v8}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    if-eqz v0, :cond_1e

    if-eq v0, v1, :cond_1d

    if-eq v0, v8, :cond_1c

    .line 21872
    const/4 v14, -0x1

    .line 21873
    :goto_1
    invoke-virtual {v4, v6}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 21874
    const/16 v0, 0xb

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v17, v0, 0x2

    .line 21875
    .local v10, "frameSize":I
    invoke-virtual {v4, v8}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v5

    .line 21876
    .local v8, "fscod":I
    if-ne v5, v6, :cond_1b

    .line 21877
    const/4 v2, 0x3

    .line 21878
    .local v0, "numblkscod":I
    sget-object v3, Lcom/facebook/ads/redexgen/X/Ao;->A06:[I

    invoke-virtual {v4, v8}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    aget v16, v3, v0

    .line 21879
    .local v0, "sampleRate":I
    const/4 v8, 0x6

    .line 21880
    .local v0, "audioBlocks":I
    .restart local v0    # "audioBlocks":I
    :goto_2
    mul-int/lit16 v3, v8, 0x100

    .line 21881
    .local v14, "sampleCount":I
    invoke-virtual {v4, v6}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v6

    .line 21882
    .local v6, "acmod":I
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v13

    .line 21883
    .local v5, "lfeon":Z
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ao;->A04:[I

    aget v15, v0, v6

    add-int/2addr v15, v13

    .line 21884
    .local v2, "channelCount":I
    const/16 v0, 0xa

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 21885
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21886
    invoke-virtual {v4, v10}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 21887
    :cond_0
    if-nez v6, :cond_1

    .line 21888
    invoke-virtual {v4, v7}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 21889
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21890
    invoke-virtual {v4, v10}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 21891
    :cond_1
    if-ne v14, v1, :cond_2

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 21892
    invoke-virtual {v4, v9}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 21893
    :cond_2
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v0

    const/4 v10, 0x4

    if-eqz v0, :cond_24

    .line 21894
    const/4 v9, 0x2

    sget-object v11, Lcom/facebook/ads/redexgen/X/Ao;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v11, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v0, 0x1b

    if-eq v11, v0, :cond_4

    :cond_3
    :goto_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    sget-object v12, Lcom/facebook/ads/redexgen/X/Ao;->A01:[Ljava/lang/String;

    const-string v11, "Mc"

    const/4 v0, 0x6

    aput-object v11, v12, v0

    if-le v6, v9, :cond_5

    .line 21895
    invoke-virtual {v4, v9}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 21896
    :cond_5
    and-int/lit8 v0, v6, 0x1

    if-eqz v0, :cond_1a

    if-le v6, v9, :cond_1a

    .line 21897
    const/4 v9, 0x6

    invoke-virtual {v4, v9}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 21898
    :goto_4
    and-int/lit8 v0, v6, 0x4

    if-eqz v0, :cond_6

    .line 21899
    invoke-virtual {v4, v9}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 21900
    :cond_6
    if-eqz v13, :cond_7

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 21901
    invoke-virtual {v4, v7}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 21902
    :cond_7
    if-nez v14, :cond_24

    .line 21903
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 21904
    const/4 v9, 0x6

    invoke-virtual {v4, v9}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 21905
    :goto_5
    if-nez v6, :cond_8

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 21906
    invoke-virtual {v4, v9}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 21907
    :cond_8
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 21908
    invoke-virtual {v4, v9}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 21909
    :cond_9
    const/4 v0, 0x2

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v11

    .line 21910
    .local v0, "mixdef":I
    if-ne v11, v1, :cond_b

    .line 21911
    invoke-virtual {v4, v7}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 21912
    .end local v7
    :cond_a
    :goto_6
    const/4 v0, 0x2

    if-ge v6, v0, :cond_23

    .line 21913
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v10

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ao;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_21

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 21914
    :cond_b
    if-ne v11, v0, :cond_c

    .line 21915
    const/16 v0, 0xc

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    goto :goto_6

    .line 21916
    :cond_c
    const/4 v9, 0x3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ao;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_d

    goto/16 :goto_3

    :cond_d
    sget-object v12, Lcom/facebook/ads/redexgen/X/Ao;->A01:[Ljava/lang/String;

    const-string v1, "d7MUqcFiTDib0mbqwnEJda4"

    const/4 v0, 0x5

    aput-object v1, v12, v0

    const-string v1, "SNAkO53"

    const/4 v0, 0x4

    aput-object v1, v12, v0

    if-ne v11, v9, :cond_a

    .line 21917
    invoke-virtual {v4, v7}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v12

    .line 21918
    .local v7, "mixdeflen":I
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 21919
    invoke-virtual {v4, v7}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 21920
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v11

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ao;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4c

    if-eq v1, v0, :cond_20

    sget-object v9, Lcom/facebook/ads/redexgen/X/Ao;->A01:[Ljava/lang/String;

    const-string v1, "vqp"

    const/4 v0, 0x6

    aput-object v1, v9, v0

    if-eqz v11, :cond_e

    .line 21921
    invoke-virtual {v4, v10}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 21922
    :cond_e
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 21923
    invoke-virtual {v4, v10}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 21924
    :cond_f
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 21925
    invoke-virtual {v4, v10}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 21926
    :cond_10
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 21927
    invoke-virtual {v4, v10}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 21928
    :cond_11
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 21929
    invoke-virtual {v4, v10}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 21930
    :cond_12
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 21931
    invoke-virtual {v4, v10}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 21932
    :cond_13
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 21933
    invoke-virtual {v4, v10}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 21934
    :cond_14
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 21935
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 21936
    invoke-virtual {v4, v10}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 21937
    :cond_15
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v11

    sget-object v9, Lcom/facebook/ads/redexgen/X/Ao;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v9, v0

    const/4 v0, 0x4

    aget-object v0, v9, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_18

    sget-object v9, Lcom/facebook/ads/redexgen/X/Ao;->A01:[Ljava/lang/String;

    const-string v1, "dfmCI"

    const/4 v0, 0x6

    aput-object v1, v9, v0

    if-eqz v11, :cond_16

    .line 21938
    :goto_7
    invoke-virtual {v4, v10}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 21939
    :cond_16
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 21940
    invoke-virtual {v4, v7}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 21941
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 21942
    const/4 v9, 0x7

    sget-object v10, Lcom/facebook/ads/redexgen/X/Ao;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v10, v0

    const/4 v0, 0x4

    aget-object v0, v10, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v10, Lcom/facebook/ads/redexgen/X/Ao;->A01:[Ljava/lang/String;

    const-string v1, "c6qOBXpuF7cDFB7WtCa4gH8"

    const/4 v0, 0x5

    aput-object v1, v10, v0

    const-string v1, "qjCJu22"

    const/4 v0, 0x4

    aput-object v1, v10, v0

    invoke-virtual {v4, v9}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 21943
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 21944
    const/16 v0, 0x8

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 21945
    :cond_17
    add-int/lit8 v0, v12, 0x2

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 21946
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/IL;->A06()V

    goto/16 :goto_6

    :cond_18
    if-eqz v11, :cond_16

    goto :goto_7

    .line 21947
    :cond_19
    const/4 v9, 0x6

    goto/16 :goto_5

    .line 21948
    :cond_1a
    const/4 v9, 0x6

    goto/16 :goto_4

    .line 21949
    .end local v0    # "mixdef":I
    .end local v0
    .end local v0
    :cond_1b
    invoke-virtual {v4, v8}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v2

    .line 21950
    .restart local v0    # "mixdef":I
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ao;->A03:[I

    aget v8, v0, v2

    .line 21951
    .restart local v0    # "mixdef":I
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ao;->A05:[I

    aget v16, v0, v5

    goto/16 :goto_2

    .line 21952
    :cond_1c
    const/4 v14, 0x2

    .line 21953
    goto/16 :goto_1

    .line 21954
    :cond_1d
    const/4 v14, 0x1

    .line 21955
    goto/16 :goto_1

    .line 21956
    :cond_1e
    const/4 v14, 0x0

    .line 21957
    goto/16 :goto_1

    .line 21958
    :cond_1f
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_20
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_21
    sget-object v9, Lcom/facebook/ads/redexgen/X/Ao;->A01:[Ljava/lang/String;

    const-string v1, "3MnXz2pljM8uaOshpjcaZx6"

    const/4 v0, 0x5

    aput-object v1, v9, v0

    const-string v1, "UUvdSDK"

    const/4 v0, 0x4

    aput-object v1, v9, v0

    const/16 v1, 0xe

    if-eqz v10, :cond_22

    .line 21959
    invoke-virtual {v4, v1}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 21960
    :cond_22
    if-nez v6, :cond_23

    .line 21961
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 21962
    invoke-virtual {v4, v1}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 21963
    :cond_23
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 21964
    if-nez v2, :cond_30

    .line 21965
    invoke-virtual {v4, v7}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 21966
    .end local v7    # "mixdeflen":I
    .end local v0    # "mixdef":I
    :cond_24
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 21967
    invoke-virtual {v4, v7}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 21968
    const/4 v1, 0x2

    if-ne v6, v1, :cond_25

    .line 21969
    const/4 v0, 0x4

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 21970
    :cond_25
    const/4 v0, 0x6

    if-lt v6, v0, :cond_26

    .line 21971
    invoke-virtual {v4, v1}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 21972
    :cond_26
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 21973
    const/16 v1, 0x8

    invoke-virtual {v4, v1}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 21974
    :goto_8
    if-nez v6, :cond_27

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 21975
    invoke-virtual {v4, v1}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 21976
    :cond_27
    const/4 v1, 0x3

    if-ge v5, v1, :cond_28

    .line 21977
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/IL;->A07()V

    .line 21978
    :cond_28
    :goto_9
    if-nez v14, :cond_29

    if-eq v2, v1, :cond_29

    .line 21979
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/IL;->A07()V

    .line 21980
    :cond_29
    const/4 v0, 0x2

    if-ne v14, v0, :cond_2d

    if-eq v2, v1, :cond_2a

    .line 21981
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 21982
    :cond_2a
    const/4 v5, 0x6

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ao;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x14

    if-eq v1, v0, :cond_2b

    invoke-virtual {v4, v5}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 21983
    :goto_a
    const/16 v2, 0x9

    const/16 v1, 0xa

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ao;->A0A(III)Ljava/lang/String;

    move-result-object v13

    .line 21984
    .local v7, "mimeType":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 21985
    invoke-virtual {v4, v5}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    .line 21986
    .local v2, "addbsil":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_35

    const/16 v0, 0x8

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    if-ne v0, v1, :cond_35

    .line 21987
    const/16 v2, 0x13

    const/16 v1, 0xe

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ao;->A0A(III)Ljava/lang/String;

    move-result-object v13

    goto :goto_d

    .line 21988
    :cond_2b
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ao;->A01:[Ljava/lang/String;

    const-string v1, "PzkgErJA"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v4, v5}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    goto :goto_a

    .line 21989
    :cond_2c
    const/4 v5, 0x6

    goto :goto_a

    .line 21990
    :cond_2d
    const/4 v5, 0x6

    goto :goto_a

    .line 21991
    :cond_2e
    const/16 v1, 0x8

    goto :goto_8

    .line 21992
    :cond_2f
    const/4 v1, 0x3

    goto :goto_9

    .line 21993
    :cond_30
    const/4 v1, 0x0

    .local v7, "blk":I
    :goto_b
    if-ge v1, v8, :cond_24

    .line 21994
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 21995
    invoke-virtual {v4, v7}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 21996
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 21997
    .end local v7    # "blk":I
    .end local v14    # "sampleCount":I
    .end local v6    # "acmod":I
    .end local v10    # "frameSize":I
    .end local v0
    .end local v5    # "lfeon":Z
    .end local v2    # "addbsil":I
    :cond_32
    const/4 v2, 0x0

    const/16 v1, 0x9

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ao;->A0A(III)Ljava/lang/String;

    move-result-object v13

    .line 21998
    .restart local v7    # "blk":I
    const/16 v0, 0x20

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 21999
    const/4 v0, 0x2

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v3

    .line 22000
    .local v0, "fscod":I
    const/4 v0, 0x6

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    .line 22001
    .local v2, "frmsizecod":I
    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/Ao;->A01(II)I

    move-result v17

    .line 22002
    .restart local v10    # "frameSize":I
    const/16 v0, 0x8

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 22003
    const/4 v0, 0x3

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v2

    .line 22004
    .restart local v6    # "acmod":I
    and-int/lit8 v0, v2, 0x1

    if-eqz v0, :cond_36

    const/4 v0, 0x1

    if-eq v2, v0, :cond_36

    .line 22005
    const/4 v1, 0x2

    invoke-virtual {v4, v1}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 22006
    :goto_c
    and-int/lit8 v0, v2, 0x4

    if-eqz v0, :cond_33

    .line 22007
    invoke-virtual {v4, v1}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 22008
    :cond_33
    if-ne v2, v1, :cond_34

    .line 22009
    invoke-virtual {v4, v1}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 22010
    :cond_34
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ao;->A05:[I

    aget v16, v0, v3

    .line 22011
    .restart local v0    # "fscod":I
    const/16 v3, 0x600

    .line 22012
    .restart local v14    # "sampleCount":I
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v1

    .line 22013
    .restart local v5    # "lfeon":Z
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ao;->A04:[I

    aget v15, v0, v2

    add-int/2addr v15, v1

    .line 22014
    .end local v2    # "frmsizecod":I
    .end local v0    # "fscod":I
    .restart local v2    # "frmsizecod":I
    :cond_35
    :goto_d
    new-instance v12, Lcom/facebook/ads/redexgen/X/An;

    const/16 p0, 0x0

    move/from16 v18, v3

    invoke-direct/range {v12 .. v19}, Lcom/facebook/ads/redexgen/X/An;-><init>(Ljava/lang/String;IIIIILcom/facebook/ads/redexgen/X/Al;)V

    return-object v12

    .line 22015
    :cond_36
    const/4 v1, 0x2

    goto :goto_c
.end method

.method public static A0A(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ao;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p0, 0x0

    :goto_0
    array-length v3, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ao;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x14

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ao;->A01:[Ljava/lang/String;

    const-string v1, "7WZZdkU9J9QzUGXnsuICWTImortidsIl"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ge p0, v3, :cond_1

    aget-byte v0, p1, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x49

    int-to-byte v0, v0

    aput-byte v0, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0B()V
    .locals 1

    const/16 v0, 0x21

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ao;->A00:[B

    return-void

    :array_0
    .array-data 1
        -0xbt
        0x9t
        -0x8t
        -0x3t
        0x3t
        -0x3dt
        -0xbt
        -0x9t
        -0x39t
        -0x1bt
        -0x7t
        -0x18t
        -0x13t
        -0xdt
        -0x4dt
        -0x17t
        -0x1bt
        -0x19t
        -0x49t
        -0x31t
        -0x1dt
        -0x2et
        -0x29t
        -0x23t
        -0x63t
        -0x2dt
        -0x31t
        -0x2ft
        -0x5ft
        -0x65t
        -0x28t
        -0x23t
        -0x2ft
    .end array-data
.end method

.method public static A0C()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "mtZuYSJ7ySL6MsCkLeLU"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "pfLHAJkkKvsmUhSej34X0EByJx58bYiu"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "9stFbMWe"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "o8FIMRELFNXcPyLLPgBy4nZrGsI3p6aE"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "mDzUi6q"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Lkig15orVmNMX0AQs2iMRFe"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "TQQD1kbKEiYB21V90wXRUc"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Ng5nyGeLPMyO8I4q4HTBXLKSmmb"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ao;->A01:[Ljava/lang/String;

    return-void
.end method
