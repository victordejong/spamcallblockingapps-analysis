.class public final Lcom/facebook/ads/redexgen/X/BP;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final A02:[I

.field public static final A03:[I

.field public static final A04:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 23064
    invoke-static {}, Lcom/facebook/ads/redexgen/X/BP;->A07()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/BP;->A06()V

    const/16 v1, 0x10

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/BP;->A02:[I

    .line 23065
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/facebook/ads/redexgen/X/BP;->A03:[I

    .line 23066
    const/16 v0, 0x1d

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/facebook/ads/redexgen/X/BP;->A04:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
        0x6
        0x6
        0x6
        0x7
        0x8
        0x8
    .end array-data

    :array_1
    .array-data 4
        -0x1
        0x1f40
        0x3e80
        0x7d00
        -0x1
        -0x1
        0x2b11
        0x5622
        0xac44
        -0x1
        -0x1
        0x2ee0
        0x5dc0
        0xbb80
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        0x40
        0x70
        0x80
        0xc0
        0xe0
        0x100
        0x180
        0x1c0
        0x200
        0x280
        0x300
        0x380
        0x400
        0x480
        0x500
        0x600
        0x780
        0x800
        0x900
        0xa00
        0xa80
        0xb00
        0xb07
        0xb80
        0xc00
        0xf00
        0x1000
        0x1800
        0x1e00
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 23067
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Ljava/nio/ByteBuffer;)I
    .locals 5

    .line 23068
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 23069
    .local p0, "position":I
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    const/4 v0, -0x2

    if-eq v1, v0, :cond_2

    const/4 v0, -0x1

    if-eq v1, v0, :cond_1

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_0

    .line 23070
    add-int/lit8 v0, v3, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit8 v0, v0, 0x1

    shl-int/lit8 v4, v0, 0x6

    add-int/lit8 v0, v3, 0x5

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v3, v0, 0xfc

    sget-object v2, Lcom/facebook/ads/redexgen/X/BP;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/BP;->A01:[Ljava/lang/String;

    const-string v1, "MZInpjRoIEbsLNJgMQqvJdDv4hDC353y"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "LbvRsqC4tXMCz3eW1bBE96O2NKDmiERV"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    shr-int/lit8 v0, v3, 0x2

    or-int/2addr v4, v0

    .line 23071
    .local v3, "nblks":I
    :goto_0
    add-int/lit8 v0, v4, 0x1

    mul-int/lit8 v0, v0, 0x20

    return v0

    .line 23072
    .end local v3    # "nblks":I
    :cond_0
    add-int/lit8 v0, v3, 0x5

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit8 v0, v0, 0x7

    shl-int/lit8 v4, v0, 0x4

    add-int/lit8 v0, v3, 0x6

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit8 v0, v0, 0x3c

    shr-int/lit8 v0, v0, 0x2

    or-int/2addr v4, v0

    .line 23073
    .restart local v3    # "nblks":I
    goto :goto_0

    .line 23074
    .end local v3    # "nblks":I
    :cond_1
    add-int/lit8 v0, v3, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit8 v0, v0, 0x7

    shl-int/lit8 v4, v0, 0x4

    add-int/lit8 v0, v3, 0x7

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit8 v0, v0, 0x3c

    shr-int/lit8 v0, v0, 0x2

    or-int/2addr v4, v0

    .line 23075
    .restart local v3    # "nblks":I
    goto :goto_0

    .line 23076
    .end local v3    # "nblks":I
    :cond_2
    add-int/lit8 v0, v3, 0x5

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit8 v0, v0, 0x1

    shl-int/lit8 v4, v0, 0x6

    sget-object v1, Lcom/facebook/ads/redexgen/X/BP;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x48

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/BP;->A01:[Ljava/lang/String;

    const-string v1, "dfGbeSj1KoFz3UNRp"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    add-int/lit8 v0, v3, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xfc

    shr-int/lit8 v0, v0, 0x2

    or-int/2addr v4, v0

    .line 23077
    .restart local v3    # "nblks":I
    goto :goto_0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/BP;->A01:[Ljava/lang/String;

    const-string v1, "Ciru4Bd6glbMloox9fNWqyK6GBj6AYd5"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "XBQtARv7mmoobGKDeC7vY4WFXNjPWBEA"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    add-int/lit8 v0, v3, 0x3

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xfc

    shr-int/lit8 v0, v0, 0x2

    or-int/2addr v4, v0

    .restart local v3    # "nblks":I
    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A01([B)I
    .locals 6

    .line 23078
    const/4 v4, 0x0

    .line 23079
    .local p0, "uses14BitPerWord":Z
    const/4 v0, 0x0

    aget-byte v1, p0, v0

    const/4 v0, -0x2

    const/4 v3, 0x7

    const/4 v2, 0x6

    const/4 v5, 0x4

    if-eq v1, v0, :cond_3

    const/4 v0, -0x1

    if-eq v1, v0, :cond_2

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_1

    .line 23080
    const/4 v0, 0x5

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x3

    shl-int/lit8 v1, v0, 0xc

    aget-byte v0, p0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v5

    or-int/2addr v1, v0

    aget-byte v0, p0, v3

    and-int/lit16 v0, v0, 0xf0

    shr-int/2addr v0, v5

    or-int/2addr v1, v0

    add-int/lit8 v0, v1, 0x1

    .line 23081
    .local v4, "fsize":I
    :goto_0
    if-eqz v4, :cond_0

    mul-int/lit8 v0, v0, 0x10

    div-int/lit8 v0, v0, 0xe

    :cond_0
    return v0

    .line 23082
    .end local v4    # "fsize":I
    :cond_1
    aget-byte v0, p0, v2

    and-int/lit8 v0, v0, 0x3

    shl-int/lit8 v4, v0, 0xc

    aget-byte v0, p0, v3

    and-int/lit16 v3, v0, 0xff

    sget-object v2, Lcom/facebook/ads/redexgen/X/BP;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/BP;->A01:[Ljava/lang/String;

    const-string v1, "zUEaLn4kCkJr2d0vu4Tn9GOhNTu1ow7g"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    shl-int/2addr v3, v5

    or-int/2addr v4, v3

    const/16 v0, 0x8

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x3c

    shr-int/lit8 v0, v0, 0x2

    or-int/2addr v4, v0

    add-int/lit8 v0, v4, 0x1

    .line 23083
    .restart local v4    # "fsize":I
    const/4 v4, 0x1

    .line 23084
    goto :goto_0

    .line 23085
    .end local v4    # "fsize":I
    :cond_2
    aget-byte v0, p0, v3

    and-int/lit8 v0, v0, 0x3

    shl-int/lit8 v1, v0, 0xc

    aget-byte v0, p0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v5

    or-int/2addr v1, v0

    const/16 v0, 0x9

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x3c

    shr-int/lit8 v0, v0, 0x2

    or-int/2addr v1, v0

    add-int/lit8 v0, v1, 0x1

    .line 23086
    .restart local v4    # "fsize":I
    const/4 v4, 0x1

    .line 23087
    goto :goto_0

    .line 23088
    .end local v4    # "fsize":I
    :cond_3
    aget-byte v0, p0, v5

    and-int/lit8 v0, v0, 0x3

    shl-int/lit8 v1, v0, 0xc

    aget-byte v0, p0, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v5

    or-int/2addr v1, v0

    aget-byte v0, p0, v2

    and-int/lit16 v0, v0, 0xf0

    shr-int/2addr v0, v5

    or-int/2addr v1, v0

    add-int/lit8 v0, v1, 0x1

    .line 23089
    .restart local v4    # "fsize":I
    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A02([B)I
    .locals 6

    .line 23090
    const/4 v0, 0x0

    aget-byte v1, p0, v0

    const/4 v0, -0x2

    const/4 v5, 0x5

    const/4 v4, 0x6

    const/4 v3, 0x4

    if-eq v1, v0, :cond_2

    const/4 v0, -0x1

    const/4 v2, 0x7

    if-eq v1, v0, :cond_1

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_0

    .line 23091
    aget-byte v0, p0, v3

    and-int/lit8 v1, v0, 0x1

    shl-int/2addr v1, v4

    aget-byte v0, p0, v5

    and-int/lit16 v0, v0, 0xfc

    shr-int/lit8 v0, v0, 0x2

    or-int/2addr v1, v0

    .line 23092
    .local p0, "nblks":I
    :goto_0
    add-int/lit8 v0, v1, 0x1

    mul-int/lit8 v0, v0, 0x20

    return v0

    .line 23093
    .end local p0    # "nblks":I
    :cond_0
    aget-byte v1, p0, v5

    and-int/2addr v1, v2

    shl-int/2addr v1, v3

    aget-byte v0, p0, v4

    and-int/lit8 v0, v0, 0x3c

    shr-int/lit8 v0, v0, 0x2

    or-int/2addr v1, v0

    .line 23094
    .restart local p0    # "nblks":I
    goto :goto_0

    .line 23095
    .end local p0    # "nblks":I
    :cond_1
    aget-byte v1, p0, v3

    and-int/2addr v1, v2

    shl-int/2addr v1, v3

    aget-byte v0, p0, v2

    and-int/lit8 v0, v0, 0x3c

    shr-int/lit8 v0, v0, 0x2

    or-int/2addr v1, v0

    .line 23096
    .restart local p0    # "nblks":I
    goto :goto_0

    .line 23097
    .end local p0    # "nblks":I
    :cond_2
    aget-byte v0, p0, v5

    and-int/lit8 v1, v0, 0x1

    shl-int/2addr v1, v4

    aget-byte v0, p0, v3

    and-int/lit16 v0, v0, 0xfc

    shr-int/lit8 v0, v0, 0x2

    or-int/2addr v1, v0

    .line 23098
    .restart local p0    # "nblks":I
    goto :goto_0
.end method

.method public static A03([BLjava/lang/String;Ljava/lang/String;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;)Lcom/facebook/ads/internal/exoplayer2/Format;
    .locals 12

    .line 23099
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/BP;->A04([B)Lcom/facebook/ads/redexgen/X/IL;

    move-result-object v4

    .line 23100
    .local p0, "frameBits":Lcom/facebook/ads/redexgen/X/IL;
    const/16 v0, 0x3c

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 23101
    const/4 v0, 0x6

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v1

    .line 23102
    .local v2, "amode":I
    sget-object v0, Lcom/facebook/ads/redexgen/X/BP;->A02:[I

    aget v7, v0, v1

    .line 23103
    .local p0, "channelCount":I
    const/4 v0, 0x4

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v1

    .line 23104
    .local v10, "sfreq":I
    sget-object v0, Lcom/facebook/ads/redexgen/X/BP;->A03:[I

    aget v8, v0, v1

    .line 23105
    .local v4, "sampleRate":I
    const/4 v0, 0x5

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v2

    .line 23106
    .local v2, "rate":I
    sget-object v1, Lcom/facebook/ads/redexgen/X/BP;->A04:[I

    array-length v0, v1

    const/4 v3, 0x2

    if-lt v2, v0, :cond_1

    .line 23107
    const/4 v5, -0x1

    .line 23108
    .local v0, "bitrate":I
    :goto_0
    const/16 v0, 0xa

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 23109
    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    add-int/2addr v7, v0

    .line 23110
    const/4 v4, 0x0

    const/4 v6, -0x1

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v2, 0x0

    const/16 v1, 0xd

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/BP;->A05(III)Ljava/lang/String;

    move-result-object v3

    .end local v2    # "rate":I
    .local v1, "rate":I
    move-object v10, p3

    move-object p0, p2

    move-object v2, p1

    invoke-static/range {v2 .. v12}, Lcom/facebook/ads/internal/exoplayer2/Format;->A07(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    return-object v0

    .line 23111
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 23112
    :cond_1
    aget v0, v1, v2

    mul-int/lit16 v5, v0, 0x3e8

    sget-object v2, Lcom/facebook/ads/redexgen/X/BP;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/BP;->A01:[Ljava/lang/String;

    const-string v1, "D1uTeb2Qxu9Z6rtOBRgXnKJi4A2dffXl"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "yGqFdXYNzGLd5EUshbhLHQXqKYHofuKz"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    div-int/2addr v5, v3

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A04([B)Lcom/facebook/ads/redexgen/X/IL;
    .locals 6

    .line 23113
    const/4 v5, 0x0

    aget-byte v1, p0, v5

    const/16 v0, 0x7f

    if-ne v1, v0, :cond_0

    .line 23114
    new-instance v0, Lcom/facebook/ads/redexgen/X/IL;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/IL;-><init>([B)V

    return-object v0

    .line 23115
    :cond_0
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    .line 23116
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/BP;->A09([B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23117
    const/4 v2, 0x0

    .local v5, "i":I
    :goto_0
    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_1

    .line 23118
    aget-byte v1, v4, v2

    .line 23119
    .local v1, "temp":B
    add-int/lit8 v0, v2, 0x1

    aget-byte v0, v4, v0

    aput-byte v0, v4, v2

    .line 23120
    add-int/lit8 v0, v2, 0x1

    aput-byte v1, v4, v0

    .line 23121
    .end local v1    # "temp":B
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 23122
    .end local v5    # "i":I
    :cond_1
    new-instance v3, Lcom/facebook/ads/redexgen/X/IL;

    invoke-direct {v3, v4}, Lcom/facebook/ads/redexgen/X/IL;-><init>([B)V

    .line 23123
    .local v5, "frameBits":Lcom/facebook/ads/redexgen/X/IL;
    aget-byte v1, v4, v5

    const/16 v0, 0x1f

    if-ne v1, v0, :cond_2

    .line 23124
    new-instance v2, Lcom/facebook/ads/redexgen/X/IL;

    invoke-direct {v2, v4}, Lcom/facebook/ads/redexgen/X/IL;-><init>([B)V

    .line 23125
    .local p0, "scratchBits":Lcom/facebook/ads/redexgen/X/IL;
    :goto_1
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IL;->A02()I

    move-result v1

    const/16 v0, 0x10

    if-lt v1, v0, :cond_2

    .line 23126
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 23127
    const/16 v1, 0xe

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    invoke-virtual {v3, v0, v1}, Lcom/facebook/ads/redexgen/X/IL;->A0B(II)V

    goto :goto_1

    .line 23128
    .end local p0    # "scratchBits":Lcom/facebook/ads/redexgen/X/IL;
    :cond_2
    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/IL;->A0C([B)V

    .line 23129
    return-object v3
.end method

.method public static A05(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/BP;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x17

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A06()V
    .locals 1

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/BP;->A00:[B

    return-void

    :array_0
    .array-data 1
        -0x43t
        -0x2ft
        -0x40t
        -0x3bt
        -0x35t
        -0x75t
        -0x2et
        -0x36t
        -0x40t
        -0x76t
        -0x40t
        -0x30t
        -0x31t
    .end array-data
.end method

.method public static A07()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "TMWQznYcPCQ4RNiuAe0jb"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "c8t62xOTsiJenwwOGKRhCpUwarpDU6QD"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "KPqnWJLkX6PK4Aa"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "FPperWytb8pBYCr2clE9AGWzMkZRuShj"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "B1h7ewuSwYBM4NyH7oGufXW1WaqS41bZ"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "e0FPRid4GUB35bZDezF564x5SQnd9bng"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "IkF3l"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "GfMRQuEHuqzwVGB1QRlTWMYutLOSgr11"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/BP;->A01:[Ljava/lang/String;

    return-void
.end method

.method public static A08(I)Z
    .locals 1

    .line 23130
    const v0, 0x7ffe8001

    if-eq p0, v0, :cond_0

    const v0, -0x180fe80

    if-eq p0, v0, :cond_0

    const v0, 0x1fffe800

    if-eq p0, v0, :cond_0

    const v0, -0xe0ff18

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A09([B)Z
    .locals 3

    .line 23131
    const/4 v2, 0x0

    aget-byte v1, p0, v2

    const/4 v0, -0x2

    if-eq v1, v0, :cond_0

    aget-byte v1, p0, v2

    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2
.end method
