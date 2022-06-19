.class public abstract Lcom/facebook/ads/redexgen/X/44;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A03:[B


# instance fields
.field public A00:I

.field public final A01:Landroid/graphics/Rect;

.field public final A02:Lcom/facebook/ads/redexgen/X/4K;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/44;->A04()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4K;)V
    .locals 1

    .line 10397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10398
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/facebook/ads/redexgen/X/44;->A00:I

    .line 10399
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/44;->A01:Landroid/graphics/Rect;

    .line 10400
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/44;->A02:Lcom/facebook/ads/redexgen/X/4K;

    .line 10401
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/4K;Lcom/facebook/ads/redexgen/X/ar;)V
    .locals 0

    .line 10402
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/44;-><init>(Lcom/facebook/ads/redexgen/X/4K;)V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/4K;)Lcom/facebook/ads/redexgen/X/44;
    .locals 1

    .line 10403
    new-instance v0, Lcom/facebook/ads/redexgen/X/ar;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ar;-><init>(Lcom/facebook/ads/redexgen/X/4K;)V

    return-object v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/4K;)Lcom/facebook/ads/redexgen/X/44;
    .locals 1

    .line 10404
    new-instance v0, Lcom/facebook/ads/redexgen/X/aq;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/aq;-><init>(Lcom/facebook/ads/redexgen/X/4K;)V

    return-object v0
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/4K;I)Lcom/facebook/ads/redexgen/X/44;
    .locals 1

    .line 10405
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 10406
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/44;->A01(Lcom/facebook/ads/redexgen/X/4K;)Lcom/facebook/ads/redexgen/X/44;

    move-result-object v0

    return-object v0

    .line 10407
    :cond_0
    const/4 p1, 0x0

    const/16 p0, 0x13

    const/16 v0, 0x13

    invoke-static {p1, p0, v0}, Lcom/facebook/ads/redexgen/X/44;->A03(III)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10408
    :cond_1
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/44;->A00(Lcom/facebook/ads/redexgen/X/4K;)Lcom/facebook/ads/redexgen/X/44;

    move-result-object v0

    return-object v0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/44;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x7e

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0x13

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/44;->A03:[B

    return-void

    :array_0
    .array-data 1
        -0x6t
        -0x1t
        0x7t
        -0xet
        -0x3t
        -0x6t
        -0xbt
        -0x4ft
        0x0t
        0x3t
        -0x6t
        -0xat
        -0x1t
        0x5t
        -0xet
        0x5t
        -0x6t
        0x0t
        -0x1t
    .end array-data
.end method


# virtual methods
.method public final A05()I
    .locals 2

    .line 10409
    iget v1, p0, Lcom/facebook/ads/redexgen/X/44;->A00:I

    const/high16 v0, -0x80000000

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/44;->A0B()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/44;->A00:I

    sub-int/2addr v1, v0

    goto :goto_0
.end method

.method public abstract A06()I
.end method

.method public abstract A07()I
.end method

.method public abstract A08()I
.end method

.method public abstract A09()I
.end method

.method public abstract A0A()I
.end method

.method public abstract A0B()I
.end method

.method public abstract A0C(Landroid/view/View;)I
.end method

.method public abstract A0D(Landroid/view/View;)I
.end method

.method public abstract A0E(Landroid/view/View;)I
.end method

.method public abstract A0F(Landroid/view/View;)I
.end method

.method public abstract A0G(Landroid/view/View;)I
.end method

.method public abstract A0H(Landroid/view/View;)I
.end method

.method public final A0I()V
    .locals 1

    .line 10410
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/44;->A0B()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/44;->A00:I

    .line 10411
    return-void
.end method

.method public abstract A0J(I)V
.end method
