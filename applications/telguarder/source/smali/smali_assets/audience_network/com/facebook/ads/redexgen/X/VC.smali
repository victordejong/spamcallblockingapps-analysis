.class public final Lcom/facebook/ads/redexgen/X/VC;
.super Lcom/facebook/ads/redexgen/X/DC;
.source ""


# static fields
.field public static A01:[B

.field public static final A02:I

.field public static final A03:[B


# instance fields
.field public A00:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 58847
    invoke-static {}, Lcom/facebook/ads/redexgen/X/VC;->A02()V

    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VC;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A08(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/VC;->A02:I

    .line 58848
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/VC;->A03:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x4ft
        0x70t
        0x75t
        0x73t
        0x48t
        0x65t
        0x61t
        0x64t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 58849
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DC;-><init>()V

    return-void
.end method

.method private A00([B)J
    .locals 5

    .line 58850
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    and-int/lit16 v3, v0, 0xff

    .line 58851
    .local p0, "toc":I
    and-int/lit8 v2, v3, 0x3

    if-eqz v2, :cond_4

    const/4 v1, 0x1

    if-eq v2, v1, :cond_3

    const/4 v0, 0x2

    if-eq v2, v0, :cond_3

    .line 58852
    aget-byte v0, p1, v1

    and-int/lit8 v4, v0, 0x3f

    .line 58853
    .local p1, "frames":I
    :goto_0
    shr-int/lit8 v3, v3, 0x3

    .line 58854
    .local v0, "config":I
    and-int/lit8 v2, v3, 0x3

    .line 58855
    .local v0, "length":I
    const/16 v0, 0x10

    if-lt v3, v0, :cond_0

    .line 58856
    const/16 v1, 0x9c4

    shl-int/2addr v1, v2

    .line 58857
    :goto_1
    int-to-long v2, v4

    int-to-long v0, v1

    mul-long/2addr v2, v0

    return-wide v2

    .line 58858
    :cond_0
    const/16 v0, 0xc

    const/16 v1, 0x2710

    if-lt v3, v0, :cond_1

    .line 58859
    and-int/lit8 v0, v2, 0x1

    shl-int/2addr v1, v0

    goto :goto_1

    .line 58860
    :cond_1
    const/4 v0, 0x3

    if-ne v2, v0, :cond_2

    .line 58861
    const v1, 0xea60

    goto :goto_1

    .line 58862
    :cond_2
    shl-int/2addr v1, v2

    goto :goto_1

    .line 58863
    .end local p1    # "frames":I
    :cond_3
    const/4 v4, 0x2

    .line 58864
    .restart local p1    # "frames":I
    goto :goto_0

    .line 58865
    .end local p1    # "frames":I
    :cond_4
    const/4 v4, 0x1

    .line 58866
    .restart local p1    # "frames":I
    goto :goto_0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/VC;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x5f

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

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/VC;->A01:[B

    return-void

    :array_0
    .array-data 1
        -0xct
        0x15t
        0x1at
        0x18t
        -0x20t
        -0xct
        -0x1dt
        -0x18t
        -0x12t
        -0x52t
        -0x12t
        -0x11t
        -0xct
        -0xet
    .end array-data
.end method

.method private A03(Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;I)V"
        }
    .end annotation

    .line 58867
    .local v0, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    int-to-long v2, p2

    const-wide/32 v0, 0x3b9aca00

    mul-long/2addr v2, v0

    const-wide/32 v0, 0xbb80

    div-long/2addr v2, v0

    .line 58868
    .local p0, "ns":J
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 58869
    .local p2, "array":[B
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58870
    return-void
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/IM;)Z
    .locals 4

    .line 58871
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v1

    sget-object v3, Lcom/facebook/ads/redexgen/X/VC;->A03:[B

    array-length v0, v3

    const/4 v2, 0x0

    if-ge v1, v0, :cond_0

    .line 58872
    return v2

    .line 58873
    :cond_0
    array-length v0, v3

    new-array v1, v0, [B

    .line 58874
    .local p0, "header":[B
    array-length v0, v3

    invoke-virtual {p0, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0d([BII)V

    .line 58875
    sget-object v0, Lcom/facebook/ads/redexgen/X/VC;->A03:[B

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final A08(Lcom/facebook/ads/redexgen/X/IM;)J
    .locals 2

    .line 58876
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/VC;->A00([B)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/DC;->A05(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final A0A(Z)V
    .locals 1

    .line 58877
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/DC;->A0A(Z)V

    .line 58878
    if-eqz p1, :cond_0

    .line 58879
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/VC;->A00:Z

    .line 58880
    :cond_0
    return-void
.end method

.method public final A0B(Lcom/facebook/ads/redexgen/X/IM;JLcom/facebook/ads/redexgen/X/DB;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 58881
    move-object/from16 v2, p0

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/VC;->A00:Z

    const/4 v3, 0x1

    move-object/from16 v4, p1

    if-nez v0, :cond_0

    .line 58882
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/IM;->A08()I

    move-result v0

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    .line 58883
    .local p2, "metadata":[B
    const/16 v0, 0x9

    aget-byte v0, v4, v0

    and-int/lit16 v10, v0, 0xff

    .line 58884
    .local v1, "channelCount":I
    const/16 v0, 0xb

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v0, 0x8

    const/16 v0, 0xa

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v1, v0

    .line 58885
    .local v0, "preskip":I
    const/4 v0, 0x3

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 58886
    .local v10, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58887
    invoke-direct {v2, v12, v1}, Lcom/facebook/ads/redexgen/X/VC;->A03(Ljava/util/List;I)V

    .line 58888
    const/16 v0, 0xf00

    invoke-direct {v2, v12, v0}, Lcom/facebook/ads/redexgen/X/VC;->A03(Ljava/util/List;I)V

    .line 58889
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    const v11, 0xbb80

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 58890
    const/4 v4, 0x4

    const/16 v1, 0xa

    const/16 v0, 0x20

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/VC;->A01(III)Ljava/lang/String;

    move-result-object v6

    .end local v10    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local v1, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v0    # "preskip":I
    .local v0, "preskip":I
    invoke-static/range {v5 .. v15}, Lcom/facebook/ads/internal/exoplayer2/Format;->A07(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    move-object/from16 v1, p4

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/DB;->A00:Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 58891
    iput-boolean v3, v2, Lcom/facebook/ads/redexgen/X/VC;->A00:Z

    .line 58892
    .end local p2    # "metadata":[B
    .end local v1    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v0    # "preskip":I
    .end local v1
    return v3

    .line 58893
    :cond_0
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v2

    sget v1, Lcom/facebook/ads/redexgen/X/VC;->A02:I

    const/4 v0, 0x0

    if-ne v2, v1, :cond_1

    .line 58894
    .local p2, "headerPacket":Z
    :goto_0
    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 58895
    return v3

    .line 58896
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
