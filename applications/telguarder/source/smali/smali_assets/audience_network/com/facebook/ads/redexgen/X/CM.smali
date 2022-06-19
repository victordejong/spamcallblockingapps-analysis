.class public final Lcom/facebook/ads/redexgen/X/CM;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A07:[B

.field public static A08:[Ljava/lang/String;

.field public static final A09:[I

.field public static final A0A:[I

.field public static final A0B:[I

.field public static final A0C:[I

.field public static final A0D:[I

.field public static final A0E:[I

.field public static final A0F:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 24207
    invoke-static {}, Lcom/facebook/ads/redexgen/X/CM;->A03()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/CM;->A02()V

    const/4 v5, 0x3

    new-array v4, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    const/16 v2, 0xa

    const/16 v1, 0xd

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/CM;->A01(III)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    const/4 v3, 0x1

    const/16 v2, 0x17

    const/16 v1, 0xd

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/CM;->A01(III)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/16 v1, 0xa

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/CM;->A01(III)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    sput-object v4, Lcom/facebook/ads/redexgen/X/CM;->A0F:[Ljava/lang/String;

    .line 24208
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/CM;->A0E:[I

    .line 24209
    const/16 v1, 0xe

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/facebook/ads/redexgen/X/CM;->A09:[I

    .line 24210
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/facebook/ads/redexgen/X/CM;->A0D:[I

    .line 24211
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/facebook/ads/redexgen/X/CM;->A0A:[I

    .line 24212
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/facebook/ads/redexgen/X/CM;->A0B:[I

    .line 24213
    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/facebook/ads/redexgen/X/CM;->A0C:[I

    return-void

    :array_0
    .array-data 4
        0xac44
        0xbb80
        0x7d00
    .end array-data

    :array_1
    .array-data 4
        0x20
        0x40
        0x60
        0x80
        0xa0
        0xc0
        0xe0
        0x100
        0x120
        0x140
        0x160
        0x180
        0x1a0
        0x1c0
    .end array-data

    :array_2
    .array-data 4
        0x20
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0x90
        0xa0
        0xb0
        0xc0
        0xe0
        0x100
    .end array-data

    :array_3
    .array-data 4
        0x20
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
    .end array-data

    :array_5
    .array-data 4
        0x8
        0x10
        0x18
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0x90
        0xa0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 24214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(I)I
    .locals 9

    .line 24215
    const/high16 v1, -0x200000

    and-int v0, p0, v1

    const/4 v2, -0x1

    if-eq v0, v1, :cond_0

    .line 24216
    return v2

    .line 24217
    :cond_0
    ushr-int/lit8 v7, p0, 0x13

    const/4 v6, 0x3

    and-int/2addr v7, v6

    .line 24218
    .local p0, "version":I
    const/4 v5, 0x1

    if-ne v7, v5, :cond_1

    .line 24219
    return v2

    .line 24220
    :cond_1
    ushr-int/lit8 v4, p0, 0x11

    and-int/2addr v4, v6

    .line 24221
    .local v7, "layer":I
    if-nez v4, :cond_2

    .line 24222
    return v2

    .line 24223
    :cond_2
    ushr-int/lit8 v8, p0, 0xc

    const/16 v0, 0xf

    and-int/2addr v8, v0

    .line 24224
    .local v6, "bitrateIndex":I
    if-eqz v8, :cond_3

    if-ne v8, v0, :cond_4

    .line 24225
    .end local v0
    .end local v7    # "layer":I
    .end local v5
    .end local v4
    :cond_3
    return v2

    .line 24226
    :cond_4
    ushr-int/lit8 v1, p0, 0xa

    and-int/2addr v1, v6

    .line 24227
    .local v7, "samplingRateIndex":I
    if-ne v1, v6, :cond_5

    .line 24228
    return v2

    .line 24229
    :cond_5
    sget-object v0, Lcom/facebook/ads/redexgen/X/CM;->A0E:[I

    aget v3, v0, v1

    .line 24230
    .local v0, "samplingRate":I
    const/4 v0, 0x2

    if-ne v7, v0, :cond_8

    .line 24231
    div-int/lit8 v3, v3, 0x2

    .line 24232
    :cond_6
    :goto_0
    ushr-int/lit8 v2, p0, 0x9

    and-int/2addr v2, v5

    .line 24233
    .local v4, "padding":I
    if-ne v4, v6, :cond_9

    .line 24234
    if-ne v7, v6, :cond_7

    sget-object v1, Lcom/facebook/ads/redexgen/X/CM;->A09:[I

    add-int/lit8 v0, v8, -0x1

    aget v0, v1, v0

    .line 24235
    .local v1, "bitrate":I
    :goto_1
    mul-int/lit16 v0, v0, 0x2ee0

    div-int/2addr v0, v3

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x4

    return v0

    .line 24236
    :cond_7
    sget-object v1, Lcom/facebook/ads/redexgen/X/CM;->A0D:[I

    add-int/lit8 v0, v8, -0x1

    aget v0, v1, v0

    goto :goto_1

    .line 24237
    :cond_8
    if-nez v7, :cond_6

    .line 24238
    div-int/lit8 v3, v3, 0x4

    goto :goto_0

    .line 24239
    .end local v1    # "bitrate":I
    :cond_9
    if-ne v7, v6, :cond_b

    .line 24240
    if-ne v4, v0, :cond_a

    sget-object v1, Lcom/facebook/ads/redexgen/X/CM;->A0A:[I

    add-int/lit8 v0, v8, -0x1

    aget v1, v1, v0

    .line 24241
    .restart local v5
    :goto_2
    const v0, 0x23280

    if-ne v7, v6, :cond_c

    .line 24242
    mul-int/2addr v0, v1

    div-int/2addr v0, v3

    add-int/2addr v0, v2

    return v0

    .line 24243
    :cond_a
    sget-object v1, Lcom/facebook/ads/redexgen/X/CM;->A0B:[I

    add-int/lit8 v0, v8, -0x1

    aget v1, v1, v0

    goto :goto_2

    .line 24244
    .end local v5
    :cond_b
    sget-object v1, Lcom/facebook/ads/redexgen/X/CM;->A0C:[I

    add-int/lit8 v0, v8, -0x1

    aget v1, v1, v0

    goto :goto_2

    .line 24245
    :cond_c
    if-ne v4, v5, :cond_d

    const v0, 0x11940

    :cond_d
    mul-int/2addr v0, v1

    div-int/2addr v0, v3

    add-int/2addr v0, v2

    return v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/CM;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v3, p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/CM;->A08:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x63

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/CM;->A08:[Ljava/lang/String;

    const-string v1, "dBrvWdI8B3ZsqP9o8N32KNi9U0Kg4MAn"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-ge p1, v3, :cond_0

    aget-byte v0, p0, p1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x17

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x24

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/CM;->A07:[B

    return-void

    :array_0
    .array-data 1
        -0xat
        0xat
        -0x7t
        -0x2t
        0x4t
        -0x3ct
        0x2t
        0x5t
        -0x6t
        -0x4t
        -0x26t
        -0x12t
        -0x23t
        -0x1et
        -0x18t
        -0x58t
        -0x1at
        -0x17t
        -0x22t
        -0x20t
        -0x5at
        -0x3bt
        -0x56t
        -0x73t
        -0x5ft
        -0x70t
        -0x6bt
        -0x65t
        0x5bt
        -0x67t
        -0x64t
        -0x6ft
        -0x6dt
        0x59t
        0x78t
        0x5et
    .end array-data
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "8ujptDZcLFIOV4OQe6k1dLAM37tFWsgI"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "FiruCROcdcj5ngRViHaJcxAqcwKS6e36"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "BVYcXzsdGhX97EEfX3qEN5kFpgM0rFmN"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "2AV6BidlRzeDZ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "zB40VPHQQGue3q5qDXpYrXi0az8OE8LL"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "l7zc1sd8UzH58JK83MLCWSU0pYO4cbn1"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "AxpOxX0K3kCyJOleerwjR3nZLn9RDuDU"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Z0pSlku4iLdBzGn6DiXyKZHzmoW9fTZm"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/CM;->A08:[Ljava/lang/String;

    return-void
.end method

.method private A04(ILjava/lang/String;IIIII)V
    .locals 0

    .line 24246
    iput p1, p0, Lcom/facebook/ads/redexgen/X/CM;->A05:I

    .line 24247
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/CM;->A06:Ljava/lang/String;

    .line 24248
    iput p3, p0, Lcom/facebook/ads/redexgen/X/CM;->A02:I

    .line 24249
    iput p4, p0, Lcom/facebook/ads/redexgen/X/CM;->A03:I

    .line 24250
    iput p5, p0, Lcom/facebook/ads/redexgen/X/CM;->A01:I

    .line 24251
    iput p6, p0, Lcom/facebook/ads/redexgen/X/CM;->A00:I

    .line 24252
    iput p7, p0, Lcom/facebook/ads/redexgen/X/CM;->A04:I

    .line 24253
    return-void
.end method

.method public static A05(ILcom/facebook/ads/redexgen/X/CM;)Z
    .locals 16

    .line 24254
    const/high16 v1, -0x200000

    and-int v0, p0, v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 24255
    return v2

    .line 24256
    :cond_0
    ushr-int/lit8 v9, p0, 0x13

    const/4 v4, 0x3

    and-int/2addr v9, v4

    .line 24257
    .local p0, "version":I
    const/4 v3, 0x1

    if-ne v9, v3, :cond_1

    .line 24258
    return v2

    .line 24259
    :cond_1
    ushr-int/lit8 v0, p0, 0x11

    and-int/lit8 v5, v0, 0x3

    .line 24260
    .local v0, "layer":I
    if-nez v5, :cond_2

    .line 24261
    return v2

    .line 24262
    :cond_2
    ushr-int/lit8 v1, p0, 0xc

    const/16 v0, 0xf

    and-int/lit8 v6, v1, 0xf

    .line 24263
    .local v6, "bitrateIndex":I
    if-eqz v6, :cond_3

    if-ne v6, v0, :cond_4

    .line 24264
    .end local v8
    .end local v1
    .end local v3
    .end local v0    # "layer":I
    .end local v1
    .end local v0
    .end local v12
    .end local v2
    :cond_3
    return v2

    .line 24265
    :cond_4
    ushr-int/lit8 v0, p0, 0xa

    and-int/lit8 v1, v0, 0x3

    .line 24266
    .local v0, "samplingRateIndex":I
    if-ne v1, v4, :cond_5

    .line 24267
    return v2

    .line 24268
    :cond_5
    sget-object v0, Lcom/facebook/ads/redexgen/X/CM;->A0E:[I

    aget v12, v0, v1

    sget-object v2, Lcom/facebook/ads/redexgen/X/CM;->A08:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_f

    .line 24269
    .local v1, "sampleRate":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/CM;->A08:[Ljava/lang/String;

    const-string v1, "OIzoP1knM9CP1xNNnQJnozZSF8NIiJtb"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const/4 v1, 0x2

    if-ne v9, v1, :cond_e

    .line 24270
    div-int/lit8 v12, v12, 0x2

    .line 24271
    :cond_6
    :goto_0
    ushr-int/lit8 v0, p0, 0x9

    and-int/lit8 v8, v0, 0x1

    .line 24272
    .local v1, "padding":I
    if-ne v5, v4, :cond_9

    .line 24273
    if-ne v9, v4, :cond_8

    sget-object v1, Lcom/facebook/ads/redexgen/X/CM;->A09:[I

    add-int/lit8 v0, v6, -0x1

    aget v2, v1, v0

    .line 24274
    .local v2, "bitrate":I
    :goto_1
    mul-int/lit16 v0, v2, 0x2ee0

    div-int/2addr v0, v12

    add-int/2addr v0, v8

    mul-int/lit8 v11, v0, 0x4

    .line 24275
    .local v9, "frameSize":I
    const/16 v15, 0x180

    .line 24276
    .local v4, "samplesPerFrame":I
    .end local v9    # "frameSize":I
    .end local v4    # "samplesPerFrame":I
    .local v5, "bitrate":I
    .local v0, "frameSize":I
    .local v12, "samplesPerFrame":I
    :goto_2
    sget-object v1, Lcom/facebook/ads/redexgen/X/CM;->A0F:[Ljava/lang/String;

    rsub-int/lit8 v0, v5, 0x3

    aget-object v10, v1, v0

    .line 24277
    .local v2, "mimeType":Ljava/lang/String;
    shr-int/lit8 v0, p0, 0x6

    and-int/2addr v0, v4

    if-ne v0, v4, :cond_7

    const/4 v13, 0x1

    .line 24278
    .local v3, "channels":I
    :goto_3
    mul-int/lit16 v14, v2, 0x3e8

    .end local v5    # "bitrate":I
    .local v8, "bitrate":I
    move-object/from16 v8, p1

    invoke-direct/range {v8 .. v15}, Lcom/facebook/ads/redexgen/X/CM;->A04(ILjava/lang/String;IIIII)V

    .line 24279
    return v3

    .line 24280
    :cond_7
    const/4 v13, 0x2

    goto :goto_3

    .line 24281
    :cond_8
    sget-object v1, Lcom/facebook/ads/redexgen/X/CM;->A0D:[I

    add-int/lit8 v0, v6, -0x1

    aget v2, v1, v0

    goto :goto_1

    .line 24282
    .end local v2    # "mimeType":Ljava/lang/String;
    .end local v9
    .end local v4
    :cond_9
    const v11, 0x23280

    if-ne v9, v4, :cond_b

    .line 24283
    if-ne v5, v1, :cond_a

    sget-object v1, Lcom/facebook/ads/redexgen/X/CM;->A0A:[I

    add-int/lit8 v0, v6, -0x1

    aget v2, v1, v0

    .line 24284
    .local v9, "bitrate":I
    :goto_4
    const/16 v15, 0x480

    .line 24285
    .restart local v4    # "samplesPerFrame":I
    mul-int/2addr v11, v2

    div-int/2addr v11, v12

    add-int/2addr v11, v8

    .local v2, "frameSize":I
    goto :goto_2

    .line 24286
    :cond_a
    sget-object v1, Lcom/facebook/ads/redexgen/X/CM;->A0B:[I

    add-int/lit8 v0, v6, -0x1

    aget v2, v1, v0

    goto :goto_4

    .line 24287
    .end local v2    # "frameSize":I
    .end local v9    # "bitrate":I
    .end local v4    # "samplesPerFrame":I
    :cond_b
    sget-object v7, Lcom/facebook/ads/redexgen/X/CM;->A0C:[I

    sget-object v2, Lcom/facebook/ads/redexgen/X/CM;->A08:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_f

    sget-object v2, Lcom/facebook/ads/redexgen/X/CM;->A08:[Ljava/lang/String;

    const-string v1, "xBrL86XadI38qrVJ39XaftA7rHZQKjfS"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    add-int/lit8 v0, v6, -0x1

    aget v2, v7, v0

    .line 24288
    .restart local v9    # "bitrate":I
    if-ne v5, v3, :cond_d

    const/16 v15, 0x240

    .line 24289
    .restart local v4    # "samplesPerFrame":I
    :goto_5
    if-ne v5, v3, :cond_c

    const v11, 0x11940

    :cond_c
    mul-int/2addr v11, v2

    div-int/2addr v11, v12

    add-int/2addr v11, v8

    goto :goto_2

    .line 24290
    :cond_d
    const/16 v15, 0x480

    goto :goto_5

    .line 24291
    :cond_e
    if-nez v9, :cond_6

    .line 24292
    div-int/lit8 v12, v12, 0x4

    goto/16 :goto_0

    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
