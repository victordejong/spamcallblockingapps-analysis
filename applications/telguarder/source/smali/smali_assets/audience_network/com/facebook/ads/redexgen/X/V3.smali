.class public final Lcom/facebook/ads/redexgen/X/V3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/DZ;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory$Flags;
    }
.end annotation


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/internal/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/V3;->A03()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/V3;->A02()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 58411
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/V3;-><init>(I)V

    .line 58412
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 58413
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/V3;-><init>(ILjava/util/List;)V

    .line 58414
    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/facebook/ads/internal/exoplayer2/Format;",
            ">;)V"
        }
    .end annotation

    .line 58415
    .local v0, "closedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/Format;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58416
    iput p1, p0, Lcom/facebook/ads/redexgen/X/V3;->A00:I

    .line 58417
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/V3;->A04(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58418
    const/4 v4, 0x0

    .line 58419
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/16 v1, 0x13

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/V3;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4, v3}, Lcom/facebook/ads/internal/exoplayer2/Format;->A00(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    .line 58420
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 58421
    :cond_0
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/V3;->A01:Ljava/util/List;

    .line 58422
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/DY;)Lcom/facebook/ads/redexgen/X/DV;
    .locals 16

    .line 58423
    move-object/from16 v1, p0

    const/16 v0, 0x20

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/V3;->A04(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58424
    iget-object v1, v1, Lcom/facebook/ads/redexgen/X/V3;->A01:Ljava/util/List;

    new-instance v0, Lcom/facebook/ads/redexgen/X/DV;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/DV;-><init>(Ljava/util/List;)V

    return-object v0

    .line 58425
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/DY;->A03:[B

    new-instance v5, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v5, v0}, Lcom/facebook/ads/redexgen/X/IM;-><init>([B)V

    .line 58426
    .local v0, "scratchDescriptorData":Lcom/facebook/ads/redexgen/X/IM;
    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/V3;->A01:Ljava/util/List;

    .line 58427
    .local v0, "closedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/Format;>;"
    :goto_0
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v0

    if-lez v0, :cond_5

    .line 58428
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v1

    .line 58429
    .local v0, "descriptorTag":I
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    .line 58430
    .local v1, "descriptorLength":I
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v4

    add-int/2addr v4, v0

    .line 58431
    .local v0, "nextDescriptorPosition":I
    const/16 v0, 0x86

    if-ne v1, v0, :cond_4

    .line 58432
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 58433
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    and-int/lit8 v2, v0, 0x1f

    .line 58434
    .local v0, "numberOfServices":I
    const/4 v1, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v1, v2, :cond_4

    .line 58435
    const/4 v0, 0x3

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0T(I)Ljava/lang/String;

    move-result-object v13

    .line 58436
    .local v5, "language":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v8

    .line 58437
    .local v4, "captionTypeByte":I
    and-int/lit16 v0, v8, 0x80

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 58438
    .local v0, "isDigital":Z
    :goto_2
    if-eqz v0, :cond_2

    .line 58439
    const/16 v7, 0x13

    const/16 v6, 0x13

    const/16 v0, 0x4c

    invoke-static {v7, v6, v0}, Lcom/facebook/ads/redexgen/X/V3;->A01(III)Ljava/lang/String;

    move-result-object v9

    .line 58440
    .local v3, "mimeType":Ljava/lang/String;
    and-int/lit8 v14, v8, 0x3f

    sget-object v6, Lcom/facebook/ads/redexgen/X/V3;->A03:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v6, v6, v0

    const/16 v0, 0xb

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v0, 0x53

    if-eq v6, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v7, Lcom/facebook/ads/redexgen/X/V3;->A03:[Ljava/lang/String;

    const-string v6, "oZN3wvCXPCpD26Rl4hCO696TebKCuqh8"

    const/4 v0, 0x1

    aput-object v6, v7, v0

    const-string v6, "jrYgwsG2kxQcouV00bX1y8mWbnEp6JpF"

    const/4 v0, 0x0

    aput-object v6, v7, v0

    .local v0, "accessibilityChannel":I
    goto :goto_3

    .line 58441
    .end local v3    # "mimeType":Ljava/lang/String;
    .end local v0    # "accessibilityChannel":I
    :cond_2
    const/4 v7, 0x0

    const/16 v6, 0x13

    const/16 v0, 0x22

    invoke-static {v7, v6, v0}, Lcom/facebook/ads/redexgen/X/V3;->A01(III)Ljava/lang/String;

    move-result-object v9

    .line 58442
    .restart local v3    # "mimeType":Ljava/lang/String;
    const/4 v14, 0x1

    .line 58443
    .end local v3    # "mimeType":Ljava/lang/String;
    .local v2, "mimeType":Ljava/lang/String;
    .local v1, "accessibilityChannel":I
    :goto_3
    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v15, 0x0

    .line 58444
    .end local v4    # "captionTypeByte":I
    .local v0, "captionTypeByte":I
    invoke-static/range {v8 .. v15}, Lcom/facebook/ads/internal/exoplayer2/Format;->A08(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    .line 58445
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58446
    const/4 v0, 0x2

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 58447
    .end local v5    # "language":Ljava/lang/String;
    .end local v0    # "captionTypeByte":I
    .end local v2    # "mimeType":Ljava/lang/String;
    .end local v1    # "accessibilityChannel":I
    .end local v0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 58448
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 58449
    .end local v0
    .end local v0
    :cond_4
    invoke-virtual {v5, v4}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 58450
    .end local v0
    .end local v1
    .end local v0
    goto/16 :goto_0

    .line 58451
    :cond_5
    new-instance v0, Lcom/facebook/ads/redexgen/X/DV;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/DV;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/V3;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x78

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

    const/16 v0, 0x26

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/V3;->A02:[B

    return-void

    :array_0
    .array-data 1
        -0x5t
        0xat
        0xat
        0x6t
        0x3t
        -0x3t
        -0x5t
        0xet
        0x3t
        0x9t
        0x8t
        -0x37t
        -0x3t
        -0x1t
        -0x5t
        -0x39t
        -0x30t
        -0x36t
        -0x2et
        0x25t
        0x34t
        0x34t
        0x30t
        0x2dt
        0x27t
        0x25t
        0x38t
        0x2dt
        0x33t
        0x32t
        -0xdt
        0x27t
        0x29t
        0x25t
        -0xft
        -0x5t
        -0xct
        -0x4t
    .end array-data
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "iW5z1zU36xxYxLhWBgNSfrMvNWvBHeOz"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "utuuladmTMaAzpaQ8nnQwoT94GkqjREB"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "TNbfs5E53p4vOR3nTB9r6k"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "qMD4TXAZqIwtZ8nRf6FQ8F6yJXRChmXa"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "CA3kiozxIHXWZOGQrweQh"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "NwaMHaNZ7e"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "0X2K5FvuC7jSBxo2jM8dDzlZDMzx2XSW"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "BbPAwMCdtZMyJiFx32CfvVF2NWz1UlYn"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/V3;->A03:[Ljava/lang/String;

    return-void
.end method

.method private A04(I)Z
    .locals 1

    .line 58452
    iget v0, p0, Lcom/facebook/ads/redexgen/X/V3;->A00:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A4H()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/Db;",
            ">;"
        }
    .end annotation

    .line 58453
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    return-object v0
.end method

.method public final A4M(ILcom/facebook/ads/redexgen/X/DY;)Lcom/facebook/ads/redexgen/X/Db;
    .locals 7

    .line 58454
    const/4 v5, 0x2

    if-eq p1, v5, :cond_10

    const/4 v0, 0x3

    if-eq p1, v0, :cond_f

    const/4 v4, 0x4

    if-eq p1, v4, :cond_f

    const/16 v6, 0xf

    sget-object v1, Lcom/facebook/ads/redexgen/X/V3;->A03:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x53

    if-eq v1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/V3;->A03:[Ljava/lang/String;

    const-string v1, "io0TqEVTVIjStZkGkJQAm"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/4 v3, 0x0

    if-eq p1, v6, :cond_d

    const/16 v0, 0x11

    if-eq p1, v0, :cond_b

    const/16 v0, 0x15

    if-eq p1, v0, :cond_a

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_8

    const/16 v0, 0x24

    if-eq p1, v0, :cond_7

    const/16 v0, 0x59

    if-eq p1, v0, :cond_6

    const/16 v0, 0x8a

    if-eq p1, v0, :cond_5

    const/16 v0, 0x81

    if-eq p1, v0, :cond_4

    const/16 v0, 0x82

    if-eq p1, v0, :cond_5

    const/16 v0, 0x86

    if-eq p1, v0, :cond_2

    const/16 v4, 0x87

    sget-object v2, Lcom/facebook/ads/redexgen/X/V3;->A03:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/V3;->A03:[Ljava/lang/String;

    const-string v1, "DlrLyXt1w5wrWkCEPAmwN7a4q8Ij6lBw"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eq p1, v4, :cond_4

    .line 58455
    return-object v3

    .line 58456
    :cond_2
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/V3;->A04(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    return-object v3

    .line 58457
    :cond_3
    new-instance v0, Lcom/facebook/ads/redexgen/X/Uq;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Uq;-><init>()V

    new-instance v3, Lcom/facebook/ads/redexgen/X/Ur;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/Ur;-><init>(Lcom/facebook/ads/redexgen/X/DU;)V

    goto :goto_0

    .line 58458
    :cond_4
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/DY;->A01:Ljava/lang/String;

    new-instance v1, Lcom/facebook/ads/redexgen/X/V7;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/V7;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Uu;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Uu;-><init>(Lcom/facebook/ads/redexgen/X/DM;)V

    return-object v0

    .line 58459
    :cond_5
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/DY;->A01:Ljava/lang/String;

    new-instance v1, Lcom/facebook/ads/redexgen/X/V2;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/V2;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Uu;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Uu;-><init>(Lcom/facebook/ads/redexgen/X/DM;)V

    return-object v0

    .line 58460
    :cond_6
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/DY;->A02:Ljava/util/List;

    new-instance v1, Lcom/facebook/ads/redexgen/X/V1;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/V1;-><init>(Ljava/util/List;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Uu;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Uu;-><init>(Lcom/facebook/ads/redexgen/X/DM;)V

    return-object v0

    .line 58461
    :cond_7
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/V3;->A00(Lcom/facebook/ads/redexgen/X/DY;)Lcom/facebook/ads/redexgen/X/DV;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/Uy;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/Uy;-><init>(Lcom/facebook/ads/redexgen/X/DV;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Uu;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Uu;-><init>(Lcom/facebook/ads/redexgen/X/DM;)V

    return-object v0

    .line 58462
    :cond_8
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/V3;->A04(I)Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_1
    return-object v3

    .line 58463
    :cond_9
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/V3;->A00(Lcom/facebook/ads/redexgen/X/DY;)Lcom/facebook/ads/redexgen/X/DV;

    move-result-object v3

    const/4 v0, 0x1

    .line 58464
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/V3;->A04(I)Z

    move-result v2

    const/16 v0, 0x8

    .line 58465
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/V3;->A04(I)Z

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Uz;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Uz;-><init>(Lcom/facebook/ads/redexgen/X/DV;ZZ)V

    new-instance v3, Lcom/facebook/ads/redexgen/X/Uu;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/Uu;-><init>(Lcom/facebook/ads/redexgen/X/DM;)V

    goto :goto_1

    .line 58466
    :cond_a
    new-instance v1, Lcom/facebook/ads/redexgen/X/Ux;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/Ux;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Uu;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Uu;-><init>(Lcom/facebook/ads/redexgen/X/DM;)V

    return-object v0

    .line 58467
    :cond_b
    invoke-direct {p0, v5}, Lcom/facebook/ads/redexgen/X/V3;->A04(I)Z

    move-result v0

    if-eqz v0, :cond_c

    :goto_2
    return-object v3

    .line 58468
    :cond_c
    iget-object v1, p2, Lcom/facebook/ads/redexgen/X/DY;->A01:Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Uw;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Uw;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/facebook/ads/redexgen/X/Uu;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/Uu;-><init>(Lcom/facebook/ads/redexgen/X/DM;)V

    goto :goto_2

    .line 58469
    :cond_d
    invoke-direct {p0, v5}, Lcom/facebook/ads/redexgen/X/V3;->A04(I)Z

    move-result v0

    if-eqz v0, :cond_e

    :goto_3
    return-object v3

    .line 58470
    :cond_e
    const/4 v2, 0x0

    iget-object v1, p2, Lcom/facebook/ads/redexgen/X/DY;->A01:Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/V4;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/V4;-><init>(ZLjava/lang/String;)V

    new-instance v3, Lcom/facebook/ads/redexgen/X/Uu;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/Uu;-><init>(Lcom/facebook/ads/redexgen/X/DM;)V

    goto :goto_3

    .line 58471
    :cond_f
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/DY;->A01:Ljava/lang/String;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Uv;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/Uv;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Uu;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Uu;-><init>(Lcom/facebook/ads/redexgen/X/DM;)V

    return-object v0

    .line 58472
    :cond_10
    new-instance v1, Lcom/facebook/ads/redexgen/X/V0;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/V0;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Uu;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Uu;-><init>(Lcom/facebook/ads/redexgen/X/DM;)V

    return-object v0
.end method
