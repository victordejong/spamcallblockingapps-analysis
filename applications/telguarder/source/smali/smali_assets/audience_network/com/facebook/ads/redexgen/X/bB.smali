.class public Lcom/facebook/ads/redexgen/X/bB;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/2V;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/androidx/support/v4/util/Pools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimplePool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/ads/redexgen/X/2V<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public final A01:[Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/bB;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/bB;->A01()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 69098
    .local v0, "this":Lcom/facebook/ads/redexgen/X/bB;, "Lcom/facebook/ads/internal/androidx/support/v4/util/Pools$SimplePool<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69099
    if-lez p1, :cond_0

    .line 69100
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bB;->A01:[Ljava/lang/Object;

    .line 69101
    return-void

    .line 69102
    :cond_0
    const/16 v2, 0x14

    const/16 v1, 0x1d

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bB;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/bB;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p0, 0x0

    :goto_0
    array-length v3, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/bB;->A03:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/bB;->A03:[Ljava/lang/String;

    const-string v1, "a39lLlVm2wZ"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-ge p0, v3, :cond_0

    aget-byte v0, p1, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x5e

    int-to-byte v0, v0

    aput-byte v0, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x31

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/bB;->A02:[B

    return-void

    :array_0
    .array-data 1
        -0xft
        0x1ct
        0x22t
        0x15t
        0x11t
        0x14t
        0x29t
        -0x30t
        0x19t
        0x1et
        -0x30t
        0x24t
        0x18t
        0x15t
        -0x30t
        0x20t
        0x1ft
        0x1ft
        0x1ct
        -0x2ft
        -0x3ft
        -0x2bt
        -0x2et
        -0x73t
        -0x26t
        -0x32t
        -0x1bt
        -0x73t
        -0x23t
        -0x24t
        -0x24t
        -0x27t
        -0x73t
        -0x20t
        -0x2at
        -0x19t
        -0x2et
        -0x73t
        -0x26t
        -0x1et
        -0x20t
        -0x1ft
        -0x73t
        -0x31t
        -0x2et
        -0x73t
        -0x55t
        -0x73t
        -0x63t
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "iLl0wsw23K5yUh77EmQ7aS"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "GfoEaaBl8U8k0Q7PfB9fbljrax1waY16"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "5gtDUT"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ShV5kwK9yY"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "0fmlK"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "YYoW0eMgewTEbJ6HTbYGGS2KWNlxhaI9"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "sW1q2ctPu7RNrNZv5Ej0VW9PcKYvvqLT"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/bB;->A03:[Ljava/lang/String;

    return-void
.end method

.method private A03(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 69103
    .local v1, "this":Lcom/facebook/ads/redexgen/X/bB;, "Lcom/facebook/ads/internal/androidx/support/v4/util/Pools$SimplePool<TT;>;"
    .local v0, "instance":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    .local p0, "i":I
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/bB;->A00:I

    if-ge v1, v0, :cond_1

    .line 69104
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bB;->A01:[Ljava/lang/Object;

    aget-object v0, v0, v1

    if-ne v0, p1, :cond_0

    .line 69105
    const/4 v0, 0x1

    return v0

    .line 69106
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69107
    .end local p0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public A2P()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 69108
    .local v3, "this":Lcom/facebook/ads/redexgen/X/bB;, "Lcom/facebook/ads/internal/androidx/support/v4/util/Pools$SimplePool<TT;>;"
    iget v4, p0, Lcom/facebook/ads/redexgen/X/bB;->A00:I

    const/4 v2, 0x0

    if-lez v4, :cond_1

    .line 69109
    add-int/lit8 v1, v4, -0x1

    .line 69110
    .local v2, "lastPooledIndex":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bB;->A01:[Ljava/lang/Object;

    aget-object v3, v0, v1

    .line 69111
    .local v0, "instance":Ljava/lang/Object;, "TT;"
    aput-object v2, v0, v1

    .line 69112
    add-int/lit8 v0, v4, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/bB;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/bB;->A03:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x74

    if-eq v1, v0, :cond_0

    .line 69113
    sget-object v2, Lcom/facebook/ads/redexgen/X/bB;->A03:[Ljava/lang/String;

    const-string v1, "CkflbgsNAkMx06fZnMm4opLTGkpn7A2i"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-object v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 69114
    .end local v2    # "lastPooledIndex":I
    .end local v0    # "instance":Ljava/lang/Object;, "TT;"
    :cond_1
    return-object v2
.end method

.method public AD2(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 69115
    .local v4, "this":Lcom/facebook/ads/redexgen/X/bB;, "Lcom/facebook/ads/internal/androidx/support/v4/util/Pools$SimplePool<TT;>;"
    .local v3, "instance":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/bB;->A03(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 69116
    iget v4, p0, Lcom/facebook/ads/redexgen/X/bB;->A00:I

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/bB;->A01:[Ljava/lang/Object;

    sget-object v1, Lcom/facebook/ads/redexgen/X/bB;->A03:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x14

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/bB;->A03:[Ljava/lang/String;

    const-string v1, "en1OjK"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    array-length v0, v3

    if-ge v4, v0, :cond_0

    .line 69117
    aput-object p1, v3, v4

    .line 69118
    const/4 v0, 0x1

    add-int/2addr v4, v0

    iput v4, p0, Lcom/facebook/ads/redexgen/X/bB;->A00:I

    .line 69119
    return v0

    .line 69120
    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 69121
    :cond_2
    const/4 v2, 0x0

    const/16 v1, 0x14

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bB;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
