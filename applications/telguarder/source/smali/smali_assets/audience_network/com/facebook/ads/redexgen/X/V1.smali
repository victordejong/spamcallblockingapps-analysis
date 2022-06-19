.class public final Lcom/facebook/ads/redexgen/X/V1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/DM;


# static fields
.field public static A06:[B

.field public static A07:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:Z

.field public final A04:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/DX;",
            ">;"
        }
    .end annotation
.end field

.field public final A05:[Lcom/facebook/ads/redexgen/X/CS;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/V1;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/V1;->A01()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/DX;",
            ">;)V"
        }
    .end annotation

    .line 58305
    .local v0, "subtitleInfos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/extractor/ts/TsPayloadReader$DvbSubtitleInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58306
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/V1;->A04:Ljava/util/List;

    .line 58307
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/CS;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V1;->A05:[Lcom/facebook/ads/redexgen/X/CS;

    .line 58308
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/V1;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x50

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
    .locals 4

    const/16 v3, 0x13

    sget-object v2, Lcom/facebook/ads/redexgen/X/V1;->A07:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/V1;->A07:[Ljava/lang/String;

    const-string v1, "v2iRVILvTxN5zPOsW"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/V1;->A06:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_0
    .array-data 1
        0x20t
        0x2ft
        0x2ft
        0x2bt
        0x28t
        0x22t
        0x20t
        0x33t
        0x28t
        0x2et
        0x2dt
        -0x12t
        0x23t
        0x35t
        0x21t
        0x32t
        0x34t
        0x21t
        0x32t
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "z68PQddmBU"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "K11cxV6TGYwECXdDqzeGLnVN533V"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ewI8XowFx1O3"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "kufGtacMRQIDfkQCpQuvSegTYjmkBlqW"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "NTdPB"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "C5ymuTLn03hV5wXCK9"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Lmzk1NvonlYzAxGEfY"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/V1;->A07:[Ljava/lang/String;

    return-void
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/IM;I)Z
    .locals 2

    .line 58309
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 58310
    return v1

    .line 58311
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    if-eq v0, p2, :cond_1

    .line 58312
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/V1;->A03:Z

    .line 58313
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/V1;->A00:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/V1;->A00:I

    .line 58314
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/V1;->A03:Z

    return v0
.end method


# virtual methods
.method public final A45(Lcom/facebook/ads/redexgen/X/IM;)V
    .locals 6

    .line 58315
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/V1;->A03:Z

    if-eqz v0, :cond_3

    .line 58316
    iget v1, p0, Lcom/facebook/ads/redexgen/X/V1;->A00:I

    const/4 v0, 0x2

    if-ne v1, v0, :cond_0

    const/16 v0, 0x20

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/V1;->A03(Lcom/facebook/ads/redexgen/X/IM;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58317
    return-void

    .line 58318
    :cond_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/V1;->A00:I

    const/4 v5, 0x0

    const/4 v0, 0x1

    if-ne v1, v0, :cond_1

    invoke-direct {p0, p1, v5}, Lcom/facebook/ads/redexgen/X/V1;->A03(Lcom/facebook/ads/redexgen/X/IM;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 58319
    return-void

    .line 58320
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v4

    .line 58321
    .local p0, "dataPosition":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v3

    .line 58322
    .local v0, "bytesAvailable":I
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/V1;->A05:[Lcom/facebook/ads/redexgen/X/CS;

    array-length v1, v2

    :goto_0
    if-ge v5, v1, :cond_2

    aget-object v0, v2, v5

    .line 58323
    .local v0, "output":Lcom/facebook/ads/redexgen/X/CS;
    invoke-virtual {p1, v4}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 58324
    invoke-interface {v0, p1, v3}, Lcom/facebook/ads/redexgen/X/CS;->ADS(Lcom/facebook/ads/redexgen/X/IM;I)V

    .line 58325
    .end local v0    # "output":Lcom/facebook/ads/redexgen/X/CS;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 58326
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/V1;->A01:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/V1;->A01:I

    .line 58327
    .end local p0    # "dataPosition":I
    .end local v0
    :cond_3
    return-void
.end method

.method public final A4S(Lcom/facebook/ads/redexgen/X/CI;Lcom/facebook/ads/redexgen/X/Da;)V
    .locals 13

    .line 58328
    const/4 v3, 0x0

    .local p0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V1;->A05:[Lcom/facebook/ads/redexgen/X/CS;

    array-length v0, v0

    if-ge v3, v0, :cond_0

    .line 58329
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V1;->A04:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/DX;

    .line 58330
    .local p1, "subtitleInfo":Lcom/facebook/ads/redexgen/X/DX;
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Da;->A05()V

    .line 58331
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Da;->A03()I

    move-result v1

    const/4 v0, 0x3

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/CI;->AEO(II)Lcom/facebook/ads/redexgen/X/CS;

    move-result-object v2

    .line 58332
    .local p2, "output":Lcom/facebook/ads/redexgen/X/CS;
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Da;->A04()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/DX;->A02:[B

    .line 58333
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    iget-object v11, v4, Lcom/facebook/ads/redexgen/X/DX;->A01:Ljava/lang/String;

    const/4 v12, 0x0

    .line 58334
    const/4 v4, 0x0

    const/16 v1, 0x13

    const/16 v0, 0x6f

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/V1;->A00(III)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v5 .. v12}, Lcom/facebook/ads/internal/exoplayer2/Format;->A0A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/lang/String;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    .line 58335
    invoke-interface {v2, v0}, Lcom/facebook/ads/redexgen/X/CS;->A5P(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 58336
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V1;->A05:[Lcom/facebook/ads/redexgen/X/CS;

    aput-object v2, v0, v3

    .line 58337
    .end local p1    # "subtitleInfo":Lcom/facebook/ads/redexgen/X/DX;
    .end local p2    # "output":Lcom/facebook/ads/redexgen/X/CS;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 58338
    .end local p0    # "i":I
    :cond_0
    return-void
.end method

.method public final ACI()V
    .locals 11

    .line 58339
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/V1;->A03:Z

    if-eqz v0, :cond_1

    .line 58340
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/V1;->A05:[Lcom/facebook/ads/redexgen/X/CS;

    array-length v2, v3

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v4, v3, v0

    .line 58341
    .local v9, "output":Lcom/facebook/ads/redexgen/X/CS;
    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/V1;->A02:J

    const/4 v7, 0x1

    iget v8, p0, Lcom/facebook/ads/redexgen/X/V1;->A01:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Lcom/facebook/ads/redexgen/X/CS;->ADT(JIIILcom/facebook/ads/redexgen/X/CR;)V

    .line 58342
    .end local v9    # "output":Lcom/facebook/ads/redexgen/X/CS;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58343
    :cond_0
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/V1;->A03:Z

    .line 58344
    :cond_1
    return-void
.end method

.method public final ACJ(JZ)V
    .locals 1

    .line 58345
    if-nez p3, :cond_0

    .line 58346
    return-void

    .line 58347
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/V1;->A03:Z

    .line 58348
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/V1;->A02:J

    .line 58349
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/V1;->A01:I

    .line 58350
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/V1;->A00:I

    .line 58351
    return-void
.end method

.method public final ADW()V
    .locals 1

    .line 58352
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/V1;->A03:Z

    .line 58353
    return-void
.end method
