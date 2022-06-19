.class public final Lcom/facebook/ads/redexgen/X/Uf;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Dw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Dw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A00:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Uf;->A01()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 56997
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Uf;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x4c

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

    const/16 v0, 0x67

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Uf;->A00:[B

    return-void

    :array_0
    .array-data 1
        0xbt
        0x3et
        0x3et
        0x2ft
        0x27t
        0x3at
        0x3et
        0x2ft
        0x2et
        0x6at
        0x3et
        0x25t
        0x6at
        0x29t
        0x38t
        0x2ft
        0x2bt
        0x3et
        0x2ft
        0x6at
        0x2et
        0x2ft
        0x29t
        0x25t
        0x2et
        0x2ft
        0x38t
        0x6at
        0x2ct
        0x25t
        0x38t
        0x6at
        0x3ft
        0x24t
        0x39t
        0x3ft
        0x3at
        0x3at
        0x25t
        0x38t
        0x3et
        0x2ft
        0x2et
        0x6at
        0x2ct
        0x25t
        0x38t
        0x27t
        0x2bt
        0x3et
        0x75t
        0x64t
        0x64t
        0x78t
        0x7dt
        0x77t
        0x75t
        0x60t
        0x7dt
        0x7bt
        0x7at
        0x3bt
        0x7dt
        0x70t
        0x27t
        0x53t
        0x42t
        0x42t
        0x5et
        0x5bt
        0x51t
        0x53t
        0x46t
        0x5bt
        0x5dt
        0x5ct
        0x1dt
        0x4at
        0x1ft
        0x57t
        0x5ft
        0x41t
        0x55t
        0x10t
        0x1t
        0x1t
        0x1dt
        0x18t
        0x12t
        0x10t
        0x5t
        0x18t
        0x1et
        0x1ft
        0x5et
        0x9t
        0x5ct
        0x2t
        0x12t
        0x5t
        0x14t
        0x42t
        0x44t
    .end array-data
.end method


# virtual methods
.method public final A4C(Lcom/facebook/ads/internal/exoplayer2/Format;)Lcom/facebook/ads/redexgen/X/Du;
    .locals 6

    .line 56998
    iget-object v5, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0O:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v0, -0x4a682ec7

    const/4 v4, 0x2

    const/4 v3, 0x1

    if-eq v1, v0, :cond_3

    const v0, 0x44ce7ed0

    if-eq v1, v0, :cond_2

    const v0, 0x62816bb7

    if-eq v1, v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    if-eqz v0, :cond_6

    if-eq v0, v3, :cond_5

    if-ne v0, v4, :cond_4

    .line 56999
    new-instance v0, Lcom/facebook/ads/redexgen/X/UY;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/UY;-><init>()V

    return-object v0

    .line 57000
    :cond_1
    const/16 v2, 0x53

    const/16 v1, 0x14

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Uf;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/16 v2, 0x41

    const/16 v1, 0x12

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Uf;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/16 v2, 0x32

    const/16 v1, 0xf

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Uf;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 57001
    :cond_4
    const/4 v2, 0x0

    const/16 v1, 0x32

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Uf;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57002
    :cond_5
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ud;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Ud;-><init>()V

    return-object v0

    .line 57003
    :cond_6
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ub;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Ub;-><init>()V

    return-object v0
.end method

.method public final AEJ(Lcom/facebook/ads/internal/exoplayer2/Format;)Z
    .locals 4

    .line 57004
    iget-object v3, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0O:Ljava/lang/String;

    .line 57005
    .local p0, "mimeType":Ljava/lang/String;
    const/16 v2, 0x32

    const/16 v1, 0xf

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Uf;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57006
    const/16 v2, 0x41

    const/16 v1, 0x12

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Uf;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57007
    const/16 v2, 0x53

    const/16 v1, 0x14

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Uf;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 57008
    :goto_0
    return v0

    .line 57009
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
