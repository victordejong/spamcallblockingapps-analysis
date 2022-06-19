.class public final Lcom/facebook/ads/redexgen/X/2N;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[Ljava/lang/String;

.field public static final A01:[I

.field public static final A02:[J

.field public static final A03:[Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 5103
    invoke-static {}, Lcom/facebook/ads/redexgen/X/2N;->A04()V

    const/4 v1, 0x0

    new-array v0, v1, [I

    sput-object v0, Lcom/facebook/ads/redexgen/X/2N;->A01:[I

    .line 5104
    new-array v0, v1, [J

    sput-object v0, Lcom/facebook/ads/redexgen/X/2N;->A02:[J

    .line 5105
    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Lcom/facebook/ads/redexgen/X/2N;->A03:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(I)I
    .locals 0

    .line 5107
    mul-int/lit8 p0, p0, 0x8

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/2N;->A01(I)I

    move-result p0

    div-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static A01(I)I
    .locals 5

    .line 5108
    const/4 v4, 0x4

    .local p0, "i":I
    :goto_0
    const/16 v3, 0x20

    sget-object v1, Lcom/facebook/ads/redexgen/X/2N;->A00:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x14

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/2N;->A00:[Ljava/lang/String;

    const-string v1, "sf2HjvEbKVwFe9jamb5q"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ge v4, v3, :cond_2

    .line 5109
    const/4 v1, 0x1

    shl-int v0, v1, v4

    add-int/lit8 v0, v0, -0xc

    if-gt p0, v0, :cond_1

    .line 5110
    shl-int/2addr v1, v4

    add-int/lit8 v0, v1, -0xc

    return v0

    .line 5111
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 5112
    .end local p0    # "i":I
    :cond_2
    return p0
.end method

.method public static A02([III)I
    .locals 6

    .line 5113
    const/4 v3, 0x0

    .line 5114
    .local p0, "lo":I
    add-int/lit8 v4, p1, -0x1

    .line 5115
    .local p1, "hi":I
    :goto_0
    if-gt v3, v4, :cond_3

    .line 5116
    add-int v5, v3, v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/2N;->A00:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/2N;->A00:[Ljava/lang/String;

    const-string v1, "GyF3CdngjgIBS8WP"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    ushr-int/lit8 v1, v5, 0x1

    .line 5117
    .local p2, "mid":I
    aget v0, p0, v1

    .line 5118
    .local v3, "midVal":I
    if-ge v0, p2, :cond_1

    .line 5119
    add-int/lit8 v3, v1, 0x1

    goto :goto_0

    .line 5120
    :cond_1
    if-le v0, p2, :cond_2

    .line 5121
    add-int/lit8 v4, v1, -0x1

    goto :goto_0

    .line 5122
    .restart local p2    # "mid":I
    .restart local v3    # "midVal":I
    :cond_2
    return v1

    .line 5123
    .end local p2    # "mid":I
    .end local v3    # "midVal":I
    :cond_3
    xor-int/lit8 v0, v3, -0x1

    return v0
.end method

.method public static A03([JIJ)I
    .locals 6

    .line 5124
    const/4 v3, 0x0

    .line 5125
    .local p0, "lo":I
    add-int/lit8 v4, p1, -0x1

    .line 5126
    .local p1, "hi":I
    :goto_0
    if-gt v3, v4, :cond_3

    .line 5127
    add-int v0, v3, v4

    ushr-int/lit8 v5, v0, 0x1

    .line 5128
    .local p2, "mid":I
    aget-wide v1, p0, v5

    .line 5129
    .local v3, "midVal":J
    cmp-long v0, v1, p2

    if-gez v0, :cond_0

    .line 5130
    add-int/lit8 v3, v5, 0x1

    goto :goto_0

    .line 5131
    :cond_0
    cmp-long v4, v1, p2

    sget-object v2, Lcom/facebook/ads/redexgen/X/2N;->A00:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/2N;->A00:[Ljava/lang/String;

    const-string v1, "jlrm"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "MXd0"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-lez v4, :cond_2

    .line 5132
    add-int/lit8 v4, v5, -0x1

    goto :goto_0

    .line 5133
    .restart local p2    # "mid":I
    .restart local v3    # "midVal":J
    :cond_2
    return v5

    .line 5134
    .end local p2    # "mid":I
    .end local v3    # "midVal":J
    :cond_3
    xor-int/lit8 v0, v3, -0x1

    return v0
.end method

.method public static A04()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "nDiC2V"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "xvPzB4voGkHgvzabNn8fejRwCVSwo6Ah"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "OJIGMHO1ySc0mzACRtkWxwocBaSnW5m2"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "JbsfTTx"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "hwYl"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "U04BYM1NuctRYg5sssH2"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "d2TQ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "mxYxJu"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/2N;->A00:[Ljava/lang/String;

    return-void
.end method

.method public static A05(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 5135
    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method
