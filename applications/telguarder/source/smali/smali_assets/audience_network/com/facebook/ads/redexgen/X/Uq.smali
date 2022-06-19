.class public final Lcom/facebook/ads/redexgen/X/Uq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/DU;


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/CS;

.field public A01:Lcom/facebook/ads/redexgen/X/IY;

.field public A02:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Uq;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Uq;->A01()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 57378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Uq;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Uq;->A04:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Uq;->A04:[Ljava/lang/String;

    const-string v1, "2hoJN1zcyuwJXknL12TMaakGCvzkpb3e"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "7Bw3mnseFBGdRGnlXIVJ1Dx7nJi9d6dT"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_1

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x5

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Uq;->A03:[B

    return-void

    :array_0
    .array-data 1
        0x63t
        0x72t
        0x72t
        0x6et
        0x6bt
        0x61t
        0x63t
        0x76t
        0x6bt
        0x6dt
        0x6ct
        0x2dt
        0x7at
        0x2ft
        0x71t
        0x61t
        0x76t
        0x67t
        0x31t
        0x37t
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Q6nPec0Q6TsNH6niCcP461mvksxYPixL"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "QjKZGfcTgXZpXOlINfGI2cmsdz1PqZ6o"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "XAM2lhPzipc36g3rh3JBmr4HuVk"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "NnbFprCj8XkT57Kr66JNzo4QtcPG"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "H0w1cVpfBGi4Hgnr5xDF4TfPC37Cp2bt"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "6V62PPXUsiGQfdN6bjQe6a4bNxZWaZ3r"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "eU46IpJhAxdwXK9kZpDKxZS0AEH"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "7xtYVLdCVNaaigvuoWmvoW4GCpYBp4K7"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Uq;->A04:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A45(Lcom/facebook/ads/redexgen/X/IM;)V
    .locals 10

    .line 57379
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Uq;->A02:Z

    if-nez v0, :cond_1

    .line 57380
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uq;->A01:Lcom/facebook/ads/redexgen/X/IY;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IY;->A06()J

    move-result-wide v3

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    .line 57381
    return-void

    .line 57382
    :cond_0
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Uq;->A00:Lcom/facebook/ads/redexgen/X/CS;

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uq;->A01:Lcom/facebook/ads/redexgen/X/IY;

    .line 57383
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IY;->A06()J

    move-result-wide v1

    .line 57384
    const/4 v4, 0x0

    const/16 v3, 0x14

    const/4 v0, 0x7

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Uq;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0, v1, v2}, Lcom/facebook/ads/internal/exoplayer2/Format;->A02(Ljava/lang/String;Ljava/lang/String;J)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    .line 57385
    invoke-interface {v6, v0}, Lcom/facebook/ads/redexgen/X/CS;->A5P(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 57386
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Uq;->A02:Z

    .line 57387
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v7

    .line 57388
    .local p0, "sampleSize":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uq;->A00:Lcom/facebook/ads/redexgen/X/CS;

    invoke-interface {v0, p1, v7}, Lcom/facebook/ads/redexgen/X/CS;->ADS(Lcom/facebook/ads/redexgen/X/IM;I)V

    .line 57389
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Uq;->A00:Lcom/facebook/ads/redexgen/X/CS;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uq;->A01:Lcom/facebook/ads/redexgen/X/IY;

    .line 57390
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IY;->A05()J

    move-result-wide v4

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Uq;->A04:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 57391
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Uq;->A04:[Ljava/lang/String;

    const-string v1, "85Y7iY5Xb4BFwTLaZ9FIfGJ7goIwUWXa"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-interface/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/CS;->ADT(JIIILcom/facebook/ads/redexgen/X/CR;)V

    .line 57392
    return-void
.end method

.method public final A7u(Lcom/facebook/ads/redexgen/X/IY;Lcom/facebook/ads/redexgen/X/CI;Lcom/facebook/ads/redexgen/X/Da;)V
    .locals 6

    .line 57393
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Uq;->A01:Lcom/facebook/ads/redexgen/X/IY;

    .line 57394
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/Da;->A05()V

    .line 57395
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/Da;->A03()I

    move-result v1

    const/4 v0, 0x4

    invoke-interface {p2, v1, v0}, Lcom/facebook/ads/redexgen/X/CI;->AEO(II)Lcom/facebook/ads/redexgen/X/CS;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Uq;->A00:Lcom/facebook/ads/redexgen/X/CS;

    .line 57396
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Uq;->A00:Lcom/facebook/ads/redexgen/X/CS;

    .line 57397
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/Da;->A04()Ljava/lang/String;

    move-result-object v4

    .line 57398
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/16 v1, 0x14

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Uq;->A00(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-static {v4, v1, v3, v0, v3}, Lcom/facebook/ads/internal/exoplayer2/Format;->A0B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    .line 57399
    invoke-interface {v5, v0}, Lcom/facebook/ads/redexgen/X/CS;->A5P(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 57400
    return-void
.end method
