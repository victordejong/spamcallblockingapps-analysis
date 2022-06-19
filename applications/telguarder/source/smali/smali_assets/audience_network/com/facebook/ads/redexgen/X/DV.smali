.class public final Lcom/facebook/ads/redexgen/X/DV;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;


# instance fields
.field public final A00:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/internal/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field

.field public final A01:[Lcom/facebook/ads/redexgen/X/CS;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/DV;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/DV;->A01()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/internal/exoplayer2/Format;",
            ">;)V"
        }
    .end annotation

    .line 27220
    .local v0, "closedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/Format;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27221
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/DV;->A00:Ljava/util/List;

    .line 27222
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/CS;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DV;->A01:[Lcom/facebook/ads/redexgen/X/CS;

    .line 27223
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/DV;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x8

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

    const/16 v0, 0x51

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/DV;->A02:[B

    return-void

    :array_0
    .array-data 1
        -0x5dt
        -0x38t
        -0x30t
        -0x45t
        -0x3at
        -0x3dt
        -0x42t
        0x7at
        -0x43t
        -0x3at
        -0x37t
        -0x33t
        -0x41t
        -0x42t
        0x7at
        -0x43t
        -0x45t
        -0x36t
        -0x32t
        -0x3dt
        -0x37t
        -0x38t
        0x7at
        -0x39t
        -0x3dt
        -0x39t
        -0x41t
        0x7at
        -0x32t
        -0x2dt
        -0x36t
        -0x41t
        0x7at
        -0x36t
        -0x34t
        -0x37t
        -0x30t
        -0x3dt
        -0x42t
        -0x41t
        -0x42t
        -0x6ct
        0x7at
        -0x37t
        -0x28t
        -0x28t
        -0x2ct
        -0x2ft
        -0x35t
        -0x37t
        -0x24t
        -0x2ft
        -0x29t
        -0x2at
        -0x69t
        -0x35t
        -0x33t
        -0x37t
        -0x6bt
        -0x62t
        -0x68t
        -0x60t
        -0x65t
        -0x56t
        -0x56t
        -0x5at
        -0x5dt
        -0x63t
        -0x65t
        -0x52t
        -0x5dt
        -0x57t
        -0x58t
        0x69t
        -0x63t
        -0x61t
        -0x65t
        0x67t
        0x71t
        0x6at
        0x72t
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "xeZK44ooX3xSkmBGMePlKfTMRa2L"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "BntLsIBunN3G4iEQLkWh0Df520WHAwCH"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "cjnFqa2e5JP9SaqwJJq0Ok3dwxNNd8kM"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "i2Xur5Tp1yXDQduQgP2sqtNAO8EM4rd5"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "WEGkLDo5S8yNHoMTFSy7x7GNTrz9t4"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "pNhpdhxW"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "lkWM"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/DV;->A03:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A03(JLcom/facebook/ads/redexgen/X/IM;)V
    .locals 1

    .line 27224
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DV;->A01:[Lcom/facebook/ads/redexgen/X/CS;

    invoke-static {p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/GM;->A03(JLcom/facebook/ads/redexgen/X/IM;[Lcom/facebook/ads/redexgen/X/CS;)V

    .line 27225
    return-void
.end method

.method public final A04(Lcom/facebook/ads/redexgen/X/CI;Lcom/facebook/ads/redexgen/X/Da;)V
    .locals 15

    .line 27226
    const/4 v2, 0x0

    .local p0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DV;->A01:[Lcom/facebook/ads/redexgen/X/CS;

    array-length v0, v0

    if-ge v2, v0, :cond_4

    .line 27227
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/ads/redexgen/X/Da;->A05()V

    .line 27228
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/ads/redexgen/X/Da;->A03()I

    move-result v1

    const/4 v0, 0x3

    move-object/from16 v3, p1

    invoke-interface {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/CI;->AEO(II)Lcom/facebook/ads/redexgen/X/CS;

    move-result-object v1

    .line 27229
    .local v3, "output":Lcom/facebook/ads/redexgen/X/CS;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DV;->A00:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 27230
    .local p2, "channelFormat":Lcom/facebook/ads/internal/exoplayer2/Format;
    iget-object v8, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A0O:Ljava/lang/String;

    .line 27231
    .local v5, "channelMimeType":Ljava/lang/String;
    const/16 v4, 0x2b

    const/16 v3, 0x13

    const/16 v0, 0x60

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/DV;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 27232
    const/16 v6, 0x3e

    sget-object v4, Lcom/facebook/ads/redexgen/X/DV;->A03:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v3, v4, v0

    const/4 v0, 0x4

    aget-object v4, v4, v0

    const/16 v0, 0xf

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v3, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v4, Lcom/facebook/ads/redexgen/X/DV;->A03:[Ljava/lang/String;

    const-string v3, "heYuZpsBE7ATPtqchisWWCeJjFNf"

    const/4 v0, 0x0

    aput-object v3, v4, v0

    const-string v3, "aYWGtvxG"

    const/4 v0, 0x6

    aput-object v3, v4, v0

    const/16 v3, 0x13

    const/16 v0, 0x32

    invoke-static {v6, v3, v0}, Lcom/facebook/ads/redexgen/X/DV;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const/4 v7, 0x1

    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    const/16 v3, 0x2b

    const/16 v0, 0x52

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/DV;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 27233
    invoke-static {v7, v0}, Lcom/facebook/ads/redexgen/X/Hx;->A05(ZLjava/lang/Object;)V

    .line 27234
    iget-object v0, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A0M:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v7, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A0M:Ljava/lang/String;

    .line 27235
    .local v2, "formatId":Ljava/lang/String;
    :goto_2
    const/4 v9, 0x0

    const/4 v10, -0x1

    iget v11, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A0D:I

    iget-object v12, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A0N:Ljava/lang/String;

    iget v13, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A03:I

    const/4 v14, 0x0

    .line 27236
    invoke-static/range {v7 .. v14}, Lcom/facebook/ads/internal/exoplayer2/Format;->A08(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    .line 27237
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/CS;->A5P(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 27238
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DV;->A01:[Lcom/facebook/ads/redexgen/X/CS;

    aput-object v1, v0, v2

    .line 27239
    .end local v3    # "output":Lcom/facebook/ads/redexgen/X/CS;
    .end local p2    # "channelFormat":Lcom/facebook/ads/internal/exoplayer2/Format;
    .end local v2    # "formatId":Ljava/lang/String;
    .end local v5    # "channelMimeType":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 27240
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/ads/redexgen/X/Da;->A04()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 27241
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 27242
    .end local p0    # "i":I
    :cond_4
    return-void
.end method
