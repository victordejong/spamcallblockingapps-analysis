.class public final enum Lcom/facebook/ads/redexgen/X/5X;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/ads/redexgen/X/5X;",
        ">;"
    }
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;

.field public static final synthetic A03:[Lcom/facebook/ads/redexgen/X/5X;

.field public static final enum A04:Lcom/facebook/ads/redexgen/X/5X;

.field public static final enum A05:Lcom/facebook/ads/redexgen/X/5X;

.field public static final enum A06:Lcom/facebook/ads/redexgen/X/5X;


# instance fields
.field public final A00:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 13574
    invoke-static {}, Lcom/facebook/ads/redexgen/X/5X;->A03()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/5X;->A02()V

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x5

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5X;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x10

    const/4 v1, 0x5

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5X;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/5X;

    invoke-direct {v0, v3, v6, v1}, Lcom/facebook/ads/redexgen/X/5X;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/5X;->A04:Lcom/facebook/ads/redexgen/X/5X;

    .line 13575
    const/4 v5, 0x1

    const/16 v2, 0xb

    const/4 v1, 0x5

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5X;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x1b

    const/4 v1, 0x5

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5X;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/5X;

    invoke-direct {v0, v3, v5, v1}, Lcom/facebook/ads/redexgen/X/5X;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/5X;->A06:Lcom/facebook/ads/redexgen/X/5X;

    .line 13576
    const/4 v4, 0x2

    const/4 v2, 0x5

    const/4 v1, 0x6

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5X;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x15

    const/4 v1, 0x6

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5X;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/5X;

    invoke-direct {v0, v3, v4, v1}, Lcom/facebook/ads/redexgen/X/5X;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/5X;->A05:Lcom/facebook/ads/redexgen/X/5X;

    .line 13577
    const/4 v0, 0x3

    new-array v1, v0, [Lcom/facebook/ads/redexgen/X/5X;

    sget-object v0, Lcom/facebook/ads/redexgen/X/5X;->A04:Lcom/facebook/ads/redexgen/X/5X;

    aput-object v0, v1, v6

    sget-object v0, Lcom/facebook/ads/redexgen/X/5X;->A06:Lcom/facebook/ads/redexgen/X/5X;

    aput-object v0, v1, v5

    sget-object v0, Lcom/facebook/ads/redexgen/X/5X;->A05:Lcom/facebook/ads/redexgen/X/5X;

    aput-object v0, v1, v4

    sput-object v1, Lcom/facebook/ads/redexgen/X/5X;->A03:[Lcom/facebook/ads/redexgen/X/5X;

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

    .line 13578
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13579
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/5X;->A00:Ljava/lang/String;

    .line 13580
    return-void
.end method

.method public static A00(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/5X;
    .locals 7
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 13581
    invoke-static {}, Lcom/facebook/ads/redexgen/X/5X;->values()[Lcom/facebook/ads/redexgen/X/5X;

    move-result-object v6

    array-length v5, v6

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v3, v6, v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/5X;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

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

    .line 13582
    .local v4, "type":Lcom/facebook/ads/redexgen/X/5X;
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/5X;->A02:[Ljava/lang/String;

    const-string v1, "Aja9B1UEj6BzKn1INFFqcKK4Fe"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "GwpKbwXfukeF7x0PFg8wIbfMxN"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/5X;->A00:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13583
    return-object v3

    .line 13584
    .end local v4    # "type":Lcom/facebook/ads/redexgen/X/5X;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 13585
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/5X;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0xa

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

    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/5X;->A01:[B

    return-void

    :array_0
    .array-data 1
        -0x46t
        -0x42t
        -0x4et
        -0x48t
        -0x4at
        0x59t
        0x4dt
        0x5et
        0x57t
        0x61t
        0x5ct
        -0x51t
        -0x5et
        -0x63t
        -0x62t
        -0x58t
        -0x22t
        -0x1et
        -0x2at
        -0x24t
        -0x26t
        -0x3ft
        -0x4bt
        -0x3at
        -0x41t
        -0x37t
        -0x3ct
        -0x7ft
        0x74t
        0x6ft
        0x70t
        0x7at
    .end array-data
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "SZ4ZqaU4fFFh0E4YNccvZxVNy5"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "RnD6qsfq2PJ4GIm1AYVwkdKueb87xF36"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "J6AvcZe6YXfwvJXVFlguqZimD2oQ2oTO"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "puNNDl5gPUEFWhcEtNEHLKZ21l2c7qHR"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "lO566f8c3ZpTrsgNovf1GdP6EuJ1Ihz8"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "rzZJHS6KiH5aslcybkMmKbRCqwolmQAz"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "lMymBa1GAS6gSrjK2mQJROkXbE"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "lIq0nKP0GwKiYNEJRhA9Zsqqg4xJtS7q"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/5X;->A02:[Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/5X;
    .locals 1

    .line 13586
    const-class v0, Lcom/facebook/ads/redexgen/X/5X;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/5X;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/redexgen/X/5X;
    .locals 1

    .line 13587
    sget-object v0, Lcom/facebook/ads/redexgen/X/5X;->A03:[Lcom/facebook/ads/redexgen/X/5X;

    invoke-virtual {v0}, [Lcom/facebook/ads/redexgen/X/5X;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/5X;

    return-object v0
.end method
