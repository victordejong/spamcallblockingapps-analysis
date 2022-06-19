.class public final enum Lcom/facebook/ads/redexgen/X/6j;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/ads/redexgen/X/6j;",
        ">;"
    }
.end annotation


# static fields
.field public static A01:[B

.field public static final A02:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/ads/redexgen/X/6j;",
            ">;"
        }
    .end annotation
.end field

.field public static final synthetic A03:[Lcom/facebook/ads/redexgen/X/6j;

.field public static final enum A04:Lcom/facebook/ads/redexgen/X/6j;

.field public static final enum A05:Lcom/facebook/ads/redexgen/X/6j;


# instance fields
.field public A00:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 15532
    invoke-static {}, Lcom/facebook/ads/redexgen/X/6j;->A02()V

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x7

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6j;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/6j;

    invoke-direct {v0, v1, v5, v5}, Lcom/facebook/ads/redexgen/X/6j;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/6j;->A04:Lcom/facebook/ads/redexgen/X/6j;

    .line 15533
    const/4 v3, 0x1

    const/4 v2, 0x7

    const/4 v1, 0x4

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6j;->A01(III)Ljava/lang/String;

    move-result-object v2

    const/16 v1, 0x64

    new-instance v0, Lcom/facebook/ads/redexgen/X/6j;

    invoke-direct {v0, v2, v3, v1}, Lcom/facebook/ads/redexgen/X/6j;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/6j;->A05:Lcom/facebook/ads/redexgen/X/6j;

    .line 15534
    const/4 v0, 0x2

    new-array v1, v0, [Lcom/facebook/ads/redexgen/X/6j;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6j;->A04:Lcom/facebook/ads/redexgen/X/6j;

    aput-object v0, v1, v5

    sget-object v0, Lcom/facebook/ads/redexgen/X/6j;->A05:Lcom/facebook/ads/redexgen/X/6j;

    aput-object v0, v1, v3

    sput-object v1, Lcom/facebook/ads/redexgen/X/6j;->A03:[Lcom/facebook/ads/redexgen/X/6j;

    .line 15535
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/6j;->A02:Ljava/util/Map;

    .line 15536
    invoke-static {}, Lcom/facebook/ads/redexgen/X/6j;->values()[Lcom/facebook/ads/redexgen/X/6j;

    move-result-object v4

    array-length v3, v4

    :goto_0
    if-ge v5, v3, :cond_0

    aget-object v2, v4, v5

    .line 15537
    .local v0, "type":Lcom/facebook/ads/redexgen/X/6j;
    sget-object v1, Lcom/facebook/ads/redexgen/X/6j;->A02:Ljava/util/Map;

    iget v0, v2, Lcom/facebook/ads/redexgen/X/6j;->A00:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15538
    .end local v0    # "type":Lcom/facebook/ads/redexgen/X/6j;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 15539
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 15540
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15541
    iput p3, p0, Lcom/facebook/ads/redexgen/X/6j;->A00:I

    .line 15542
    return-void
.end method

.method public static A00(I)Lcom/facebook/ads/redexgen/X/6j;
    .locals 2

    .line 15543
    sget-object v1, Lcom/facebook/ads/redexgen/X/6j;->A02:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/6j;

    .line 15544
    .local p0, "type":Lcom/facebook/ads/redexgen/X/6j;
    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/ads/redexgen/X/6j;->A04:Lcom/facebook/ads/redexgen/X/6j;

    return-object v0

    .line 15545
    :cond_0
    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/6j;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x42

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

    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/6j;->A01:[B

    return-void

    :array_0
    .array-data 1
        -0x62t
        -0x61t
        -0x60t
        -0x65t
        -0x51t
        -0x5at
        -0x52t
        -0x68t
        -0x67t
        -0x69t
        -0x68t
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/6j;
    .locals 1

    .line 15546
    const-class v0, Lcom/facebook/ads/redexgen/X/6j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/6j;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/redexgen/X/6j;
    .locals 1

    .line 15547
    sget-object v0, Lcom/facebook/ads/redexgen/X/6j;->A03:[Lcom/facebook/ads/redexgen/X/6j;

    invoke-virtual {v0}, [Lcom/facebook/ads/redexgen/X/6j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/6j;

    return-object v0
.end method
