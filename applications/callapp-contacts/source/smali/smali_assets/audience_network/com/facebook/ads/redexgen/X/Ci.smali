.class public final Lcom/facebook/ads/redexgen/X/Ci;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Cm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChunkIterator"
.end annotation


# static fields
.field public static A09:[B

.field public static A0A:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:I

.field public A04:I

.field public final A05:I

.field public final A06:Lcom/facebook/ads/redexgen/X/IM;

.field public final A07:Lcom/facebook/ads/redexgen/X/IM;

.field public final A08:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ci;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ci;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/IM;Lcom/facebook/ads/redexgen/X/IM;Z)V
    .locals 4

    .line 24811
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24812
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ci;->A07:Lcom/facebook/ads/redexgen/X/IM;

    .line 24813
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Ci;->A06:Lcom/facebook/ads/redexgen/X/IM;

    .line 24814
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/Ci;->A08:Z

    .line 24815
    const/16 v1, 0xc

    invoke-virtual {p2, v1}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 24816
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ci;->A05:I

    .line 24817
    invoke-virtual {p1, v1}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 24818
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ci;->A04:I

    .line 24819
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    :goto_0
    const/4 v2, 0x0

    const/16 v1, 0x15

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ci;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/Hx;->A06(ZLjava/lang/Object;)V

    .line 24820
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ci;->A00:I

    .line 24821
    return-void

    .line 24822
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ci;->A09:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x51

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

    const/16 v0, 0x15

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ci;->A09:[B

    return-void

    :array_0
    .array-data 1
        0x1bt
        0x14t
        0xft
        0xet
        0x9t
        0x22t
        0x1et
        0x15t
        0x8t
        0x13t
        0x16t
        0x5dt
        0x10t
        0x8t
        0xet
        0x9t
        0x5dt
        0x1ft
        0x18t
        0x5dt
        0x4ct
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "fT4"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "9XJ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "BdT8ugCih1Mpz00LrHVoF8KqNvgOr8AQ"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ItU4Mc5lT2NsoQYD"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "XQJ1SNvFfokPp3KD"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "IGCc23FH28N7ANBVj9k1dGnz4ha0U"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "1lzK38hIt0"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "A8GyDlY1o0KAgmQELzlat0ZxMGcgz"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ci;->A0A:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A03()Z
    .locals 5

    .line 24823
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ci;->A00:I

    const/4 v4, 0x1

    add-int/2addr v1, v4

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Ci;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ci;->A05:I

    if-ne v1, v0, :cond_1

    .line 24824
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ci;->A0A:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x13

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ci;->A0A:[Ljava/lang/String;

    const-string v1, "dfpT2dt5bGn60gbEA6wBElGJneIfVZr3"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 24825
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ci;->A08:Z

    if-eqz v0, :cond_5

    .line 24826
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ci;->A06:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0O()J

    move-result-wide v0

    .line 24827
    :goto_0
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Ci;->A02:J

    .line 24828
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ci;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ci;->A03:I

    if-ne v1, v0, :cond_2

    .line 24829
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ci;->A07:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ci;->A01:I

    .line 24830
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ci;->A07:Lcom/facebook/ads/redexgen/X/IM;

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 24831
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ci;->A04:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ci;->A04:I

    if-lez v0, :cond_4

    .line 24832
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ci;->A07:Lcom/facebook/ads/redexgen/X/IM;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ci;->A0A:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v0

    sub-int/2addr v0, v4

    .line 24833
    :goto_1
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ci;->A03:I

    .line 24834
    :cond_2
    return v4

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ci;->A0A:[Ljava/lang/String;

    const-string v1, "DxoiDv7jb7q87sjQbqIMGefCzqS86q5Y"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v0

    sub-int/2addr v0, v4

    goto :goto_1

    .line 24835
    :cond_4
    const/4 v0, -0x1

    goto :goto_1

    .line 24836
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ci;->A06:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0N()J

    move-result-wide v0

    goto :goto_0
.end method
