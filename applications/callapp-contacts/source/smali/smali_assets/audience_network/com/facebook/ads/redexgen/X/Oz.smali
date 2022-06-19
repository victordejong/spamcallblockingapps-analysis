.class public final Lcom/facebook/ads/redexgen/X/Oz;
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
        Lcom/facebook/ads/redexgen/X/Oy;,
        Lcom/facebook/ads/redexgen/X/Ox;
    }
.end annotation


# static fields
.field public static A03:[B

.field public static final A04:I


# instance fields
.field public final A00:Landroid/graphics/Paint;

.field public final A01:Lcom/facebook/ads/redexgen/X/Ox;

.field public final A02:Lcom/facebook/ads/redexgen/X/Oy;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 47323
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Oz;->A03()V

    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Oz;->A04:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/Ox;Lcom/facebook/ads/redexgen/X/Oy;)V
    .locals 8

    .line 47324
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 47325
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Oz;->A01:Lcom/facebook/ads/redexgen/X/Ox;

    .line 47326
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Oz;->A02:Lcom/facebook/ads/redexgen/X/Oy;

    .line 47327
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Oz;->A00:Landroid/graphics/Paint;

    .line 47328
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Oz;->A00:Landroid/graphics/Paint;

    const/high16 v0, -0x67000000

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 47329
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Oz;->setColorFilter(I)V

    .line 47330
    sget v0, Lcom/facebook/ads/redexgen/X/Oz;->A04:I

    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/facebook/ads/redexgen/X/Oz;->setPadding(IIII)V

    .line 47331
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Oz;->A01:Lcom/facebook/ads/redexgen/X/Ox;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ox;->A03:Lcom/facebook/ads/redexgen/X/Ox;

    if-ne v1, v0, :cond_2

    const/4 v3, 0x1

    .line 47332
    .local p0, "isLeft":Z
    :goto_0
    if-eqz v3, :cond_1

    const/4 v2, 0x0

    const/16 v1, 0xa

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oz;->A02(III)Ljava/lang/String;

    move-result-object v0

    .line 47333
    :goto_1
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Oz;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 47334
    sget-object v0, Lcom/facebook/ads/redexgen/X/Lp;->A0Y:Lcom/facebook/ads/redexgen/X/Lp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lq;->A01(Lcom/facebook/ads/redexgen/X/Lp;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 47335
    .local p1, "arrowIcon":Landroid/graphics/Bitmap;
    if-nez v3, :cond_0

    .line 47336
    .end local v1
    .restart local p2    # null:Lcom/facebook/ads/redexgen/X/Ox;
    :goto_2
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/Oz;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 47337
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ow;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Ow;-><init>(Lcom/facebook/ads/redexgen/X/Oz;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Oz;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47338
    return-void

    .line 47339
    .end local p2    # null:Lcom/facebook/ads/redexgen/X/Ox;
    :cond_0
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 47340
    .local v1, "matrix":Landroid/graphics/Matrix;
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {v6, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 47341
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 47342
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    .line 47343
    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_2

    .line 47344
    :cond_1
    const/16 v2, 0xa

    const/16 v1, 0xb

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oz;->A02(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 47345
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Oz;)Lcom/facebook/ads/redexgen/X/Ox;
    .locals 0

    .line 47346
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Oz;->A01:Lcom/facebook/ads/redexgen/X/Ox;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Oz;)Lcom/facebook/ads/redexgen/X/Oy;
    .locals 0

    .line 47347
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Oz;->A02:Lcom/facebook/ads/redexgen/X/Oy;

    return-object p0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Oz;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x4e

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

    sput-object v0, Lcom/facebook/ads/redexgen/X/Oz;->A03:[B

    return-void

    :array_0
    .array-data 1
        0xbt
        0x2ft
        0x21t
        0x28t
        0x1dt
        -0x28t
        0x24t
        0x1dt
        0x1et
        0x2ct
        0xet
        0x32t
        0x24t
        0x2bt
        0x20t
        -0x25t
        0x2dt
        0x24t
        0x22t
        0x23t
        0x2ft
    .end array-data
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 47348
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Oz;->getWidth()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    .line 47349
    .local p0, "x":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Oz;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 47350
    .local p1, "y":I
    int-to-float v3, v1

    int-to-float v2, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v1, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oz;->A00:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v1, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 47351
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 47352
    return-void
.end method
