.class public final Lcom/facebook/ads/redexgen/X/9I;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final A02:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 19690
    invoke-static {}, Lcom/facebook/ads/redexgen/X/9I;->A04()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/9I;->A03()V

    const-class v0, Lcom/facebook/ads/redexgen/X/9I;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/9I;->A02:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19691
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/Wl;)Lcom/facebook/ads/redexgen/X/9K;
    .locals 5

    .line 19692
    :try_start_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/WF;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/WF;-><init>(Lcom/facebook/ads/redexgen/X/Wl;)V

    return-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19693
    :catch_0
    move-exception v0

    .line 19694
    .local p0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object p0

    sget v4, Lcom/facebook/ads/redexgen/X/8e;->A22:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 19695
    const/4 v2, 0x0

    const/16 v1, 0xf

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9I;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 19696
    new-instance v0, Lcom/facebook/ads/redexgen/X/WI;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/WI;-><init>()V

    return-object v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/Wl;)Lcom/facebook/ads/redexgen/X/Di;
    .locals 1

    .line 19697
    new-instance v0, Lcom/facebook/ads/redexgen/X/Di;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Di;-><init>(Lcom/facebook/ads/redexgen/X/Wl;)V

    return-object v0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/9I;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x19

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .locals 4

    const/16 v3, 0xf

    sget-object v2, Lcom/facebook/ads/redexgen/X/9I;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/9I;->A01:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x4

    aput-object v1, v2, v0

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/9I;->A00:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x3t
        0x14t
        0x12t
        0x1et
        0x3t
        0x15t
        0x2et
        0x15t
        0x10t
        0x5t
        0x10t
        0x13t
        0x10t
        0x2t
        0x14t
    .end array-data
.end method

.method public static A04()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "DnTt6XIWuAOQU1Yv6ovRwSY"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "69qI84ufJ2UhBtkQx2IBHzZ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "lNRa3H"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "2y2Uq0vrRuc5d5uHsu4hqSSezWuXbHLJ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "zUBzfUPcj8uIEo8tGSc"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "tyrfQSxRYtG07uuggB4oX54vdLL3Tqsi"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "aO8Ix6JCuD3GiDZZv02FTTQkozyjIQFp"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "pMzofq8cn4xP4Da44trMpLQAQtlXLUTp"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/9I;->A01:[Ljava/lang/String;

    return-void
.end method
