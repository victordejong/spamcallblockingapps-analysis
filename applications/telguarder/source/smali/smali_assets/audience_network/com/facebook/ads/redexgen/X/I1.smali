.class public final Lcom/facebook/ads/redexgen/X/I1;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final A02:[B

.field public static final A03:[I

.field public static final A04:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 37310
    invoke-static {}, Lcom/facebook/ads/redexgen/X/I1;->A06()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/I1;->A05()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/I1;->A02:[B

    .line 37311
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/facebook/ads/redexgen/X/I1;->A04:[I

    .line 37312
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/facebook/ads/redexgen/X/I1;->A03:[I

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_1
    .array-data 4
        0x17700
        0x15888
        0xfa00
        0xbb80
        0xac44
        0x7d00
        0x5dc0
        0x5622
        0x3e80
        0x2ee0
        0x2b11
        0x1f40
        0x1cb6
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x8
        -0x1
        -0x1
        -0x1
        0x7
        0x8
        -0x1
        0x8
        -0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 37313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/IL;)I
    .locals 2

    .line 37314
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v1

    .line 37315
    .local p0, "audioObjectType":I
    const/16 v0, 0x1f

    if-ne v1, v0, :cond_0

    .line 37316
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    add-int/lit8 v1, v0, 0x20

    .line 37317
    :cond_0
    return v1
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/IL;)I
    .locals 4

    .line 37318
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v1

    .line 37319
    .local p0, "frequencyIndex":I
    const/16 v0, 0xf

    if-ne v1, v0, :cond_1

    .line 37320
    const/16 v3, 0x18

    sget-object v1, Lcom/facebook/ads/redexgen/X/I1;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/I1;->A01:[Ljava/lang/String;

    const-string v1, "b06dxN6Pdfxe86UJJcTyh6l"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "mMX0y8voyaLVbe5UhpYAWtS"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    .local v0, "samplingFrequency":I
    goto :goto_1

    .line 37321
    .end local v0    # "samplingFrequency":I
    :cond_1
    const/16 v0, 0xd

    if-ge v1, v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A03(Z)V

    .line 37322
    sget-object v0, Lcom/facebook/ads/redexgen/X/I1;->A04:[I

    aget v0, v0, v1

    .line 37323
    .restart local v0    # "samplingFrequency":I
    :goto_1
    return v0

    .line 37324
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/IL;Z)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/IL;",
            "Z)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 37325
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/I1;->A00(Lcom/facebook/ads/redexgen/X/IL;)I

    move-result v4

    .line 37326
    .local p0, "audioObjectType":I
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/I1;->A01(Lcom/facebook/ads/redexgen/X/IL;)I

    move-result v8

    .line 37327
    .local p1, "sampleRate":I
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v6

    .line 37328
    .local v8, "channelConfiguration":I
    const/4 v0, 0x5

    if-eq v4, v0, :cond_0

    const/16 v0, 0x1d

    if-ne v4, v0, :cond_1

    .line 37329
    :cond_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/I1;->A01(Lcom/facebook/ads/redexgen/X/IL;)I

    move-result v8

    .line 37330
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/I1;->A00(Lcom/facebook/ads/redexgen/X/IL;)I

    move-result v4

    .line 37331
    const/16 v0, 0x16

    if-ne v4, v0, :cond_1

    .line 37332
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v6

    .line 37333
    :cond_1
    const/4 v3, 0x1

    if-eqz p1, :cond_4

    .line 37334
    const/4 v7, 0x3

    const/4 v5, 0x2

    if-eq v4, v3, :cond_2

    if-eq v4, v5, :cond_2

    if-eq v4, v7, :cond_2

    if-eq v4, v1, :cond_2

    const/4 v0, 0x6

    if-eq v4, v0, :cond_2

    const/4 v0, 0x7

    if-eq v4, v0, :cond_2

    const/16 v0, 0x11

    if-eq v4, v0, :cond_2

    packed-switch v4, :pswitch_data_0

    .line 37335
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x1f

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/I1;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37336
    :cond_2
    :pswitch_0
    invoke-static {p0, v4, v6}, Lcom/facebook/ads/redexgen/X/I1;->A07(Lcom/facebook/ads/redexgen/X/IL;II)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/I1;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 37337
    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/I1;->A01:[Ljava/lang/String;

    const-string v1, "LC73Mv"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "epdkhH"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    packed-switch v4, :pswitch_data_1

    .line 37338
    .end local v4
    :cond_4
    :goto_0
    :pswitch_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/I1;->A03:[I

    aget v2, v0, v6

    .line 37339
    .local v4, "channelCount":I
    const/4 v0, -0x1

    if-eq v2, v0, :cond_5

    :goto_1
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Hx;->A03(Z)V

    .line 37340
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 37341
    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    .line 37342
    :pswitch_2
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v4

    .line 37343
    .local v4, "epConfig":I
    if-eq v4, v5, :cond_6

    if-eq v4, v7, :cond_6

    goto :goto_0

    .line 37344
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1f

    const/16 v1, 0x16

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/I1;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static A03([B)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 37345
    new-instance v1, Lcom/facebook/ads/redexgen/X/IL;

    invoke-direct {v1, p0}, Lcom/facebook/ads/redexgen/X/IL;-><init>([B)V

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/I1;->A02(Lcom/facebook/ads/redexgen/X/IL;Z)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/I1;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p0, 0x0

    :goto_0
    array-length v3, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/I1;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/I1;->A01:[Ljava/lang/String;

    const-string v1, "QTjUYGvmppmWp2Fj"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ge p0, v3, :cond_0

    aget-byte v0, p1, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x43

    int-to-byte v0, v0

    aput-byte v0, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0x35

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/I1;->A00:[B

    return-void

    :array_0
    .array-data 1
        -0x59t
        -0x40t
        -0x3bt
        -0x39t
        -0x3et
        -0x3et
        -0x3ft
        -0x3ct
        -0x3at
        -0x49t
        -0x4at
        0x72t
        -0x4dt
        -0x39t
        -0x4at
        -0x45t
        -0x3ft
        0x72t
        -0x3ft
        -0x4ct
        -0x44t
        -0x49t
        -0x4bt
        -0x3at
        0x72t
        -0x3at
        -0x35t
        -0x3et
        -0x49t
        -0x74t
        0x72t
        -0x55t
        -0x3ct
        -0x37t
        -0x35t
        -0x3at
        -0x3at
        -0x3bt
        -0x38t
        -0x36t
        -0x45t
        -0x46t
        0x76t
        -0x45t
        -0x3at
        -0x67t
        -0x3bt
        -0x3ct
        -0x44t
        -0x41t
        -0x43t
        -0x70t
        0x76t
    .end array-data
.end method

.method public static A06()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "wCQ3ekiEEGxO0dPF29wdnKvXzLzA"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "NiyQhNbWrauUdBXEZbqnZwAtnUn4k"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "zmkwUtYIo6ISYzDk1xBBMX4"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "wSUAI1dgRsRQFBdM1um720ytkXi1"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "95VNVNHWJxefKBgDLnexwaz"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "x77pib"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "7gMWZb"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "akLviNNp0cTZmcrBx"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/I1;->A01:[Ljava/lang/String;

    return-void
.end method

.method public static A07(Lcom/facebook/ads/redexgen/X/IL;II)V
    .locals 8

    .line 37346
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 37347
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v0

    .line 37348
    .local p1, "dependsOnCoreDecoder":Z
    if-eqz v0, :cond_0

    .line 37349
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 37350
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v7

    .line 37351
    .local p2, "extensionFlag":Z
    if-eqz p2, :cond_9

    .line 37352
    const/4 v3, 0x6

    const/16 v6, 0x14

    const/4 v5, 0x3

    sget-object v1, Lcom/facebook/ads/redexgen/X/I1;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_8

    sget-object v2, Lcom/facebook/ads/redexgen/X/I1;->A01:[Ljava/lang/String;

    const-string v1, "j4YYjpNyLYXomznyjfeuXDdwnD4nm"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eq p1, v3, :cond_1

    if-ne p1, v6, :cond_2

    .line 37353
    :cond_1
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 37354
    :cond_2
    if-eqz v7, :cond_7

    .line 37355
    const/16 v0, 0x16

    if-ne p1, v0, :cond_3

    .line 37356
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 37357
    :cond_3
    const/16 v0, 0x11

    if-eq p1, v0, :cond_5

    const/16 v3, 0x13

    sget-object v1, Lcom/facebook/ads/redexgen/X/I1;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/I1;->A01:[Ljava/lang/String;

    const-string v1, "BekKFgx2q1KKQumVTnscsiojvBs9"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "OYLwG8aJn1q1eSFM2K8JDieDhnoX"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eq p1, v3, :cond_5

    if-eq p1, v6, :cond_5

    const/16 v0, 0x17

    if-ne p1, v0, :cond_6

    .line 37358
    :cond_5
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 37359
    :cond_6
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 37360
    :cond_7
    return-void

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 37361
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static A08(III)[B
    .locals 3

    .line 37362
    const/4 v0, 0x2

    new-array v2, v0, [B

    .line 37363
    .local p0, "specificConfig":[B
    shl-int/lit8 v0, p0, 0x3

    and-int/lit16 v1, v0, 0xf8

    shr-int/lit8 v0, p1, 0x1

    and-int/lit8 v0, v0, 0x7

    or-int/2addr v1, v0

    int-to-byte v1, v1

    const/4 v0, 0x0

    aput-byte v1, v2, v0

    .line 37364
    shl-int/lit8 v0, p1, 0x7

    and-int/lit16 v1, v0, 0x80

    shl-int/lit8 v0, p2, 0x3

    and-int/lit8 v0, v0, 0x78

    or-int/2addr v1, v0

    int-to-byte v1, v1

    const/4 v0, 0x1

    aput-byte v1, v2, v0

    .line 37365
    return-object v2
.end method

.method public static A09([BII)[B
    .locals 4

    .line 37366
    sget-object v3, Lcom/facebook/ads/redexgen/X/I1;->A02:[B

    array-length v0, v3

    add-int/2addr v0, p2

    new-array v2, v0, [B

    .line 37367
    .local p1, "nalUnit":[B
    array-length v1, v3

    const/4 v0, 0x0

    invoke-static {v3, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37368
    sget-object v0, Lcom/facebook/ads/redexgen/X/I1;->A02:[B

    array-length v0, v0

    invoke-static {p0, p1, v2, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37369
    return-object v2
.end method
