.class public final Lcom/facebook/ads/redexgen/X/Gn;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Gp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StartTag"
.end annotation


# static fields
.field public static A04:[B

.field public static A05:[Ljava/lang/String;

.field public static final A06:[Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:Ljava/lang/String;

.field public final A02:Ljava/lang/String;

.field public final A03:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 35276
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Gn;->A04()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Gn;->A03()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/facebook/ads/redexgen/X/Gn;->A06:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 35277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35278
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Gn;->A00:I

    .line 35279
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Gn;->A01:Ljava/lang/String;

    .line 35280
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Gn;->A02:Ljava/lang/String;

    .line 35281
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Gn;->A03:[Ljava/lang/String;

    .line 35282
    return-void
.end method

.method public static A00()Lcom/facebook/ads/redexgen/X/Gn;
    .locals 5

    .line 35283
    const/4 v4, 0x0

    new-array v3, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gn;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Gn;

    invoke-direct {v0, v1, v4, v1, v3}, Lcom/facebook/ads/redexgen/X/Gn;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method public static A01(Ljava/lang/String;I)Lcom/facebook/ads/redexgen/X/Gn;
    .locals 6

    .line 35284
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 35285
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35286
    const/4 v0, 0x0

    return-object v0

    .line 35287
    :cond_0
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gn;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    .line 35288
    .local p0, "voiceStartIndex":I
    const/4 v0, -0x1

    const/4 v5, 0x0

    if-ne p0, v0, :cond_2

    .line 35289
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gn;->A02(III)Ljava/lang/String;

    move-result-object v3

    .line 35290
    .local p1, "voice":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x1

    const/4 v1, 0x2

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gn;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0m(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 35291
    .local v0, "nameAndClasses":[Ljava/lang/String;
    aget-object v2, v4, v5

    .line 35292
    .local v4, "name":Ljava/lang/String;
    array-length v0, v4

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 35293
    array-length v0, v4

    invoke-static {v4, v1, v0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 35294
    .local v0, "classes":[Ljava/lang/String;
    .restart local v0    # "classes":[Ljava/lang/String;
    :goto_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/Gn;

    invoke-direct {v0, v2, p1, v3, v1}, Lcom/facebook/ads/redexgen/X/Gn;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    return-object v0

    .line 35295
    .end local v0    # "classes":[Ljava/lang/String;
    :cond_1
    sget-object v1, Lcom/facebook/ads/redexgen/X/Gn;->A06:[Ljava/lang/String;

    goto :goto_1

    .line 35296
    .end local p1    # "voice":Ljava/lang/String;
    :cond_2
    invoke-virtual {v4, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Gn;->A05:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    .line 35297
    .restart local p1    # "voice":Ljava/lang/String;
    sget-object v2, Lcom/facebook/ads/redexgen/X/Gn;->A05:[Ljava/lang/String;

    const-string v1, "Nr5OesO8C9sIOUHXRuAUw2kYPHmeguzx"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v4, v5, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gn;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gn;->A05:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x52

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Gn;->A05:[Ljava/lang/String;

    const-string v1, "hhyK"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "wZqiL"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_1

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x6

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Gn;->A04:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x24t
        0x72t
        0x0t
    .end array-data
.end method

.method public static A04()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "zFpRfifZkCIQawK1FUSg1K3EtGdV6Nz"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "WEmq"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "TVYpI9shQgf8MMEfvFWnKjXtFk1mYiaB"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "WCXJZ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "VBPbo"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "2erUCN4YfMxeKpPmRmxhBeZiE0shrr6A"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "I2AaOQprvAMyyOLMUfVLbbt0mFwKyNVO"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ZVSAIqFm1ddnxSH"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Gn;->A05:[Ljava/lang/String;

    return-void
.end method
