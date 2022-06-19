.class public final enum Lcom/facebook/ads/redexgen/X/1V;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/ads/redexgen/X/1V;",
        ">;"
    }
.end annotation


# static fields
.field public static A01:[B

.field public static final synthetic A02:[Lcom/facebook/ads/redexgen/X/1V;

.field public static final enum A03:Lcom/facebook/ads/redexgen/X/1V;

.field public static final enum A04:Lcom/facebook/ads/redexgen/X/1V;

.field public static final enum A05:Lcom/facebook/ads/redexgen/X/1V;


# instance fields
.field public final A00:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 3363
    invoke-static {}, Lcom/facebook/ads/redexgen/X/1V;->A02()V

    const/4 v5, 0x0

    const/16 v2, 0x1b

    const/16 v1, 0x10

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1V;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/1V;

    invoke-direct {v0, v1, v5, v1}, Lcom/facebook/ads/redexgen/X/1V;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/1V;->A05:Lcom/facebook/ads/redexgen/X/1V;

    .line 3364
    const/4 v4, 0x1

    const/16 v2, 0xd

    const/16 v1, 0xe

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1V;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/1V;

    invoke-direct {v0, v1, v4, v1}, Lcom/facebook/ads/redexgen/X/1V;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/1V;->A04:Lcom/facebook/ads/redexgen/X/1V;

    .line 3365
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/16 v1, 0xd

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1V;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/1V;

    invoke-direct {v0, v1, v3, v1}, Lcom/facebook/ads/redexgen/X/1V;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/1V;->A03:Lcom/facebook/ads/redexgen/X/1V;

    .line 3366
    const/4 v0, 0x3

    new-array v1, v0, [Lcom/facebook/ads/redexgen/X/1V;

    sget-object v0, Lcom/facebook/ads/redexgen/X/1V;->A05:Lcom/facebook/ads/redexgen/X/1V;

    aput-object v0, v1, v5

    sget-object v0, Lcom/facebook/ads/redexgen/X/1V;->A04:Lcom/facebook/ads/redexgen/X/1V;

    aput-object v0, v1, v4

    sget-object v0, Lcom/facebook/ads/redexgen/X/1V;->A03:Lcom/facebook/ads/redexgen/X/1V;

    aput-object v0, v1, v3

    sput-object v1, Lcom/facebook/ads/redexgen/X/1V;->A02:[Lcom/facebook/ads/redexgen/X/1V;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 3367
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3368
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/1V;->A00:Ljava/lang/String;

    .line 3369
    return-void
.end method

.method public static A00(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/1V;
    .locals 5

    .line 3370
    invoke-static {}, Lcom/facebook/ads/redexgen/X/1V;->values()[Lcom/facebook/ads/redexgen/X/1V;

    move-result-object v4

    array-length v3, v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v4, v2

    .line 3371
    .local v2, "method":Lcom/facebook/ads/redexgen/X/1V;
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/1V;->A00:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3372
    return-object v1

    .line 3373
    .end local v2    # "method":Lcom/facebook/ads/redexgen/X/1V;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3374
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/1V;->A03:Lcom/facebook/ads/redexgen/X/1V;

    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/1V;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x53

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

    const/16 v0, 0x2b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/1V;->A01:[B

    return-void

    :array_0
    .array-data 1
        -0x5bt
        -0x58t
        -0x55t
        -0x5ct
        -0x42t
        -0x51t
        -0x4ft
        -0x5ct
        -0x5et
        -0x60t
        -0x5et
        -0x59t
        -0x5ct
        0x5t
        0x7t
        0x4t
        0xdt
        0xet
        0x14t
        0x5t
        0x7t
        -0x6t
        -0x8t
        -0xat
        -0x8t
        -0x3t
        -0x6t
        0xft
        -0x3t
        -0x6t
        0xet
        0x1t
        -0x3t
        0xft
        0x17t
        0x8t
        0xat
        -0x3t
        -0x5t
        -0x7t
        -0x5t
        0x0t
        -0x3t
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/1V;
    .locals 1

    .line 3375
    const-class v0, Lcom/facebook/ads/redexgen/X/1V;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/1V;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/redexgen/X/1V;
    .locals 1

    .line 3376
    sget-object v0, Lcom/facebook/ads/redexgen/X/1V;->A02:[Lcom/facebook/ads/redexgen/X/1V;

    invoke-virtual {v0}, [Lcom/facebook/ads/redexgen/X/1V;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/1V;

    return-object v0
.end method
