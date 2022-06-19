.class public final Lcom/facebook/ads/redexgen/X/IS;
.super Landroid/widget/ImageView;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/PP;


# static fields
.field public static A05:[B

.field public static A06:[Ljava/lang/String;

.field public static final A07:I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/PD;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A01:Landroid/graphics/Paint;

.field public final A02:Lcom/facebook/ads/redexgen/X/XJ;

.field public final A03:Lcom/facebook/ads/redexgen/X/JJ;

.field public final A04:Lcom/facebook/ads/redexgen/X/K1;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 38397
    invoke-static {}, Lcom/facebook/ads/redexgen/X/IS;->A07()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/IS;->A06()V

    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/IS;->A07:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/JJ;)V
    .locals 3

    .line 38398
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 38399
    new-instance v0, Lcom/facebook/ads/redexgen/X/7a;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/7a;-><init>(Lcom/facebook/ads/redexgen/X/IS;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/IS;->A04:Lcom/facebook/ads/redexgen/X/K1;

    .line 38400
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/IS;->A03:Lcom/facebook/ads/redexgen/X/JJ;

    .line 38401
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/IS;->A02:Lcom/facebook/ads/redexgen/X/XJ;

    .line 38402
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/IS;->A01:Landroid/graphics/Paint;

    .line 38403
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IS;->A01:Landroid/graphics/Paint;

    const/high16 v0, -0x67000000

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 38404
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IS;->setColorFilter(I)V

    .line 38405
    sget v0, Lcom/facebook/ads/redexgen/X/IS;->A07:I

    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/facebook/ads/redexgen/X/IS;->setPadding(IIII)V

    .line 38406
    const/4 v2, 0x0

    const/4 v1, 0x7

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IS;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IS;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 38407
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/IS;->A05()V

    .line 38408
    new-instance v0, Lcom/facebook/ads/redexgen/X/Pd;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Pd;-><init>(Lcom/facebook/ads/redexgen/X/IS;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IS;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38409
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/IS;)Lcom/facebook/ads/redexgen/X/XJ;
    .locals 0

    .line 38410
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/IS;->A02:Lcom/facebook/ads/redexgen/X/XJ;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/IS;)Lcom/facebook/ads/redexgen/X/JJ;
    .locals 0

    .line 38411
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/IS;->A03:Lcom/facebook/ads/redexgen/X/JJ;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/IS;)Lcom/facebook/ads/redexgen/X/PD;
    .locals 0

    .line 38412
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/IS;->A00:Lcom/facebook/ads/redexgen/X/PD;

    return-object p0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/IS;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x13

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A04()V
    .locals 1

    .line 38413
    sget-object v0, Lcom/facebook/ads/redexgen/X/Lp;->A0V:Lcom/facebook/ads/redexgen/X/Lp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lq;->A01(Lcom/facebook/ads/redexgen/X/Lp;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IS;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 38414
    return-void
.end method

.method private A05()V
    .locals 1

    .line 38415
    sget-object v0, Lcom/facebook/ads/redexgen/X/Lp;->A0W:Lcom/facebook/ads/redexgen/X/Lp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lq;->A01(Lcom/facebook/ads/redexgen/X/Lp;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IS;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 38416
    return-void
.end method

.method public static A06()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/IS;->A05:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x65t
        0x5dt
        0x5ct
        0x4dt
        0x8t
        0x69t
        0x4ct
    .end array-data
.end method

.method public static A07()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "CZ6R6baQKTb1E5sAmpDqVkfMXF7zVnG4"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "nQZGX73N3q5NRRZlZyP90gUTrDeeLYBu"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "LfCM6PYFJNbwOvLH4thVDQon3h1Zk2zk"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "bpUakkTElIOqaP65ISNG9oh"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "gJtMODfbj2e7z8MJG7ZRKfD"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "8rYwk9o7IGDDsMQbyUTj4ra1LUt9E6qX"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "3WiLQHXTUUJ8WctEatoRQ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Xo7nIXQ5hsw2R0tzDjIU8fyfjH4jtFIR"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/IS;->A06:[Ljava/lang/String;

    return-void
.end method

.method private A08()Z
    .locals 5

    .line 38417
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IS;->A00:Lcom/facebook/ads/redexgen/X/PD;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PD;->getVolume()F

    move-result v4

    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/IS;->A06:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/IS;->A06:[Ljava/lang/String;

    const-string v1, "7LwdJMyLjSlNEKSwxkcw7Q3"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "d5nTRpYYugpReKnwSxkEX"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    cmpl-float v0, v4, v3

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/IS;)Z
    .locals 0

    .line 38418
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/IS;->A08()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final A0A()V
    .locals 1

    .line 38419
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IS;->A00:Lcom/facebook/ads/redexgen/X/PD;

    if-nez v0, :cond_0

    .line 38420
    return-void

    .line 38421
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/IS;->A08()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38422
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/IS;->A04()V

    .line 38423
    :goto_0
    return-void

    .line 38424
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/IS;->A05()V

    goto :goto_0
.end method

.method public final A8K(Lcom/facebook/ads/redexgen/X/PD;)V
    .locals 2

    .line 38425
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/IS;->A00:Lcom/facebook/ads/redexgen/X/PD;

    .line 38426
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IS;->A00:Lcom/facebook/ads/redexgen/X/PD;

    if-eqz v0, :cond_0

    .line 38427
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PD;->getEventBus()Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IS;->A04:Lcom/facebook/ads/redexgen/X/K1;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9F;->A06(Lcom/facebook/ads/redexgen/X/9G;)Z

    .line 38428
    :cond_0
    return-void
.end method

.method public final AEO(Lcom/facebook/ads/redexgen/X/PD;)V
    .locals 2

    .line 38429
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IS;->A00:Lcom/facebook/ads/redexgen/X/PD;

    if-eqz v0, :cond_0

    .line 38430
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PD;->getEventBus()Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IS;->A04:Lcom/facebook/ads/redexgen/X/K1;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9F;->A07(Lcom/facebook/ads/redexgen/X/9G;)Z

    .line 38431
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/IS;->A00:Lcom/facebook/ads/redexgen/X/PD;

    .line 38432
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 38433
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IS;->getWidth()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    .line 38434
    .local p0, "x":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IS;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 38435
    .local p1, "y":I
    int-to-float v3, v1

    int-to-float v2, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v1, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IS;->A01:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v1, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 38436
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 38437
    return-void
.end method
