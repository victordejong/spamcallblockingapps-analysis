.class public final Lcom/facebook/ads/redexgen/X/1J;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static A03:[B = null

.field public static final serialVersionUID:J = -0x3817c4953c1dc6edL


# instance fields
.field public final A00:Ljava/lang/String;

.field public final A01:Ljava/lang/String;

.field public final A02:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/1J;->A02()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3124
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/1J;->A01(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1J;->A02:Ljava/lang/String;

    .line 3125
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/1J;->A01(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1J;->A01:Ljava/lang/String;

    .line 3126
    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/1J;->A01(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1J;->A00:Ljava/lang/String;

    .line 3127
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/1J;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x4e

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 3128
    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1J;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3129
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1J;->A00(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3130
    :cond_0
    return-object p0
.end method

.method public static A02()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/1J;->A03:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x3t
        0x4t
        -0x5t
        -0x5t
    .end array-data
.end method


# virtual methods
.method public final A03()Ljava/lang/String;
    .locals 1

    .line 3131
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1J;->A01:Ljava/lang/String;

    return-object v0
.end method

.method public final A04()Ljava/lang/String;
    .locals 1

    .line 3132
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1J;->A02:Ljava/lang/String;

    return-object v0
.end method
