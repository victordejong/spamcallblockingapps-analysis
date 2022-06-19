.class public final Lcom/facebook/ads/redexgen/X/Ou;
.super Landroid/widget/ImageView;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Ot;,
        Lcom/facebook/ads/redexgen/X/Os;
    }
.end annotation


# static fields
.field public static A03:[B

.field public static final A04:I


# instance fields
.field public final A00:Landroid/graphics/Paint;

.field public final A01:Lcom/facebook/ads/redexgen/X/Os;

.field public final A02:Lcom/facebook/ads/redexgen/X/Ot;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 47503
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ou;->A03()V

    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Ou;->A04:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/Os;Lcom/facebook/ads/redexgen/X/Ot;)V
    .locals 8

    .line 47504
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 47505
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Ou;->A01:Lcom/facebook/ads/redexgen/X/Os;

    .line 47506
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Ou;->A02:Lcom/facebook/ads/redexgen/X/Ot;

    .line 47507
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ou;->A00:Landroid/graphics/Paint;

    .line 47508
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ou;->A00:Landroid/graphics/Paint;

    const/high16 v0, -0x67000000

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 47509
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Ou;->setColorFilter(I)V

    .line 47510
    sget v0, Lcom/facebook/ads/redexgen/X/Ou;->A04:I

    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/facebook/ads/redexgen/X/Ou;->setPadding(IIII)V

    .line 47511
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ou;->A01:Lcom/facebook/ads/redexgen/X/Os;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Os;->A02:Lcom/facebook/ads/redexgen/X/Os;

    if-ne v1, v0, :cond_2

    const/4 v3, 0x1

    .line 47512
    .local p0, "isLeft":Z
    :goto_0
    if-eqz v3, :cond_1

    const/4 v2, 0x0

    const/16 v1, 0xa

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ou;->A02(III)Ljava/lang/String;

    move-result-object v0

    .line 47513
    :goto_1
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Ou;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 47514
    sget-object v0, Lcom/facebook/ads/redexgen/X/Lr;->A0X:Lcom/facebook/ads/redexgen/X/Lr;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ls;->A01(Lcom/facebook/ads/redexgen/X/Lr;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 47515
    .local p1, "arrowIcon":Landroid/graphics/Bitmap;
    if-nez v3, :cond_0

    .line 47516
    .end local v1
    .restart local p2    # null:Lcom/facebook/ads/redexgen/X/Os;
    :goto_2
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/Ou;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 47517
    new-instance v0, Lcom/facebook/ads/redexgen/X/Or;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Or;-><init>(Lcom/facebook/ads/redexgen/X/Ou;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Ou;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47518
    return-void

    .line 47519
    .end local p2    # null:Lcom/facebook/ads/redexgen/X/Os;
    :cond_0
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 47520
    .local v1, "matrix":Landroid/graphics/Matrix;
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {v6, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 47521
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 47522
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    .line 47523
    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_2

    .line 47524
    :cond_1
    const/16 v2, 0xa

    const/16 v1, 0xb

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ou;->A02(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 47525
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Ou;)Lcom/facebook/ads/redexgen/X/Os;
    .locals 0

    .line 47526
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Ou;->A01:Lcom/facebook/ads/redexgen/X/Os;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Ou;)Lcom/facebook/ads/redexgen/X/Ot;
    .locals 0

    .line 47527
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Ou;->A02:Lcom/facebook/ads/redexgen/X/Ot;

    return-object p0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ou;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x61

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
    .locals 1

    const/16 v0, 0x15

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ou;->A03:[B

    return-void

    :array_0
    .array-data 1
        -0x36t
        -0x12t
        -0x20t
        -0x19t
        -0x24t
        -0x69t
        -0x1dt
        -0x24t
        -0x23t
        -0x15t
        -0x15t
        0xft
        0x1t
        0x8t
        -0x3t
        -0x48t
        0xat
        0x1t
        -0x1t
        0x0t
        0xct
    .end array-data
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 47528
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ou;->getWidth()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    .line 47529
    .local p0, "x":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ou;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 47530
    .local p1, "y":I
    int-to-float v3, v1

    int-to-float v2, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v1, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ou;->A00:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v1, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 47531
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 47532
    return-void
.end method
