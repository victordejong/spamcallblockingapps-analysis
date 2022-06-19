.class public final Lcom/facebook/ads/redexgen/X/GM;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B

.field public static final A01:I

.field public static final A02:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 33813
    invoke-static {}, Lcom/facebook/ads/redexgen/X/GM;->A02()V

    const/16 v2, 0xb

    const/4 v1, 0x4

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/GM;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A08(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/GM;->A02:I

    .line 33814
    const/4 v2, 0x7

    const/4 v1, 0x4

    const/4 v0, 0x4

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/GM;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A08(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/GM;->A01:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33815
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/IM;)I
    .locals 3

    .line 33816
    const/4 v2, 0x0

    .line 33817
    .local p0, "value":I
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v0

    if-nez v0, :cond_1

    .line 33818
    const/4 v0, -0x1

    return v0

    .line 33819
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v1

    .line 33820
    .local v2, "b":I
    add-int/2addr v2, v1

    .line 33821
    const/16 v0, 0xff

    if-eq v1, v0, :cond_0

    .line 33822
    return v2
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/GM;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x46

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

    sput-object v0, Lcom/facebook/ads/redexgen/X/GM;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x35t
        0x13t
        0x17t
        0x23t
        0x2t
        0x1ft
        0x1at
        0x6t
        0x16t
        0x5t
        0x73t
        0x3ft
        0x39t
        0x41t
        0x4ct
        0x6at
        0x52t
        0x50t
        0x49t
        0x49t
        0x50t
        0x57t
        0x5et
        0x19t
        0x4bt
        0x5ct
        0x54t
        0x58t
        0x50t
        0x57t
        0x5dt
        0x5ct
        0x4bt
        0x19t
        0x56t
        0x5ft
        0x19t
        0x54t
        0x58t
        0x55t
        0x5ft
        0x56t
        0x4bt
        0x54t
        0x5ct
        0x5dt
        0x19t
        0x6at
        0x7ct
        0x70t
        0x19t
        0x77t
        0x78t
        0x75t
        0x19t
        0x4ct
        0x57t
        0x50t
        0x4dt
        0x17t
    .end array-data
.end method

.method public static A03(JLcom/facebook/ads/redexgen/X/IM;[Lcom/facebook/ads/redexgen/X/CS;)V
    .locals 13

    .line 33823
    :goto_0
    move-object v4, p2

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v0

    const/4 v8, 0x1

    if-le v0, v8, :cond_a

    .line 33824
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/GM;->A00(Lcom/facebook/ads/redexgen/X/IM;)I

    move-result v2

    .line 33825
    .local v4, "payloadType":I
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/GM;->A00(Lcom/facebook/ads/redexgen/X/IM;)I

    move-result v1

    .line 33826
    .local v4, "payloadSize":I
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v3

    add-int/2addr v3, v1

    .line 33827
    .local v5, "nextPayloadPosition":I
    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v0

    if-le v1, v0, :cond_2

    .line 33828
    .end local v5    # "nextPayloadPosition":I
    .end local v0
    .end local v8
    .end local v2
    .end local v1
    .end local v3
    .end local v3
    .end local v0
    :cond_0
    const/4 v2, 0x0

    const/4 v1, 0x7

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/GM;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xf

    const/16 v1, 0x2d

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/GM;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33829
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/IM;->A08()I

    move-result v3

    .line 33830
    :cond_1
    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 33831
    .end local v4    # "payloadSize":I
    .end local v4
    .end local v5
    goto :goto_0

    .line 33832
    :cond_2
    const/4 v0, 0x4

    if-ne v2, v0, :cond_1

    const/16 v0, 0x8

    if-lt v1, v0, :cond_1

    .line 33833
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v10

    .line 33834
    .local v0, "countryCode":I
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/IM;->A0J()I

    move-result v9

    .line 33835
    .local v8, "providerCode":I
    const/4 v7, 0x0

    .line 33836
    .local v2, "userIdentifier":I
    const/16 v6, 0x31

    if-ne v9, v6, :cond_3

    .line 33837
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v7

    .line 33838
    :cond_3
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v5

    .line 33839
    .local v3, "userDataTypeCode":I
    const/16 v1, 0x2f

    if-ne v9, v1, :cond_4

    .line 33840
    invoke-virtual {v4, v8}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 33841
    :cond_4
    const/16 v0, 0xb5

    const/4 v2, 0x0

    if-ne v10, v0, :cond_9

    if-eq v9, v6, :cond_5

    if-ne v9, v1, :cond_9

    :cond_5
    const/4 v0, 0x3

    if-ne v5, v0, :cond_9

    const/4 v1, 0x1

    .line 33842
    .local v3, "messageIsSupportedCeaCaption":Z
    :goto_1
    if-ne v9, v6, :cond_7

    .line 33843
    sget v0, Lcom/facebook/ads/redexgen/X/GM;->A02:I

    if-eq v7, v0, :cond_6

    sget v0, Lcom/facebook/ads/redexgen/X/GM;->A01:I

    if-ne v7, v0, :cond_8

    :cond_6
    const/4 v0, 0x1

    :goto_2
    and-int/2addr v1, v0

    .line 33844
    :cond_7
    if-eqz v1, :cond_1

    .line 33845
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    and-int/lit8 v0, v0, 0x1f

    .line 33846
    .local v1, "ccCount":I
    invoke-virtual {v4, v8}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 33847
    mul-int/lit8 v10, v0, 0x3

    .line 33848
    .local v5, "sampleLength":I
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v1

    .line 33849
    .local v0, "sampleStartPosition":I
    move-object/from16 v5, p3

    array-length v0, v5

    :goto_3
    if-ge v2, v0, :cond_1

    aget-object v6, v5, v2

    .line 33850
    .local v2, "output":Lcom/facebook/ads/redexgen/X/CS;
    invoke-virtual {v4, v1}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 33851
    invoke-interface {v6, v4, v10}, Lcom/facebook/ads/redexgen/X/CS;->ADS(Lcom/facebook/ads/redexgen/X/IM;I)V

    .line 33852
    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    .end local v2    # "output":Lcom/facebook/ads/redexgen/X/CS;
    .local v0, "output":Lcom/facebook/ads/redexgen/X/CS;
    move-wide v7, p0

    invoke-interface/range {v6 .. v12}, Lcom/facebook/ads/redexgen/X/CS;->ADT(JIIILcom/facebook/ads/redexgen/X/CR;)V

    .line 33853
    .end local v0    # "output":Lcom/facebook/ads/redexgen/X/CS;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 33854
    :cond_8
    const/4 v0, 0x0

    goto :goto_2

    .line 33855
    :cond_9
    const/4 v1, 0x0

    goto :goto_1

    .line 33856
    :cond_a
    return-void
.end method
