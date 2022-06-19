.class public final Lcom/facebook/ads/redexgen/X/NU;
.super Landroid/widget/FrameLayout;
.source ""


# instance fields
.field public A00:I

.field public A01:I

.field public final A02:Landroid/widget/ImageView;

.field public final A03:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;)V
    .locals 1

    .line 45302
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 45303
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/NU;->A03:Landroid/widget/ImageView;

    .line 45304
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/NU;->A02:Landroid/widget/ImageView;

    .line 45305
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/NU;->A00()V

    .line 45306
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Landroid/util/AttributeSet;)V
    .locals 1

    .line 45307
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45308
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/NU;->A03:Landroid/widget/ImageView;

    .line 45309
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/NU;->A02:Landroid/widget/ImageView;

    .line 45310
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/NU;->A00()V

    .line 45311
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 45312
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45313
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/NU;->A03:Landroid/widget/ImageView;

    .line 45314
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/NU;->A02:Landroid/widget/ImageView;

    .line 45315
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/NU;->A00()V

    .line 45316
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Landroid/util/AttributeSet;II)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 45317
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 45318
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/NU;->A03:Landroid/widget/ImageView;

    .line 45319
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/NU;->A02:Landroid/widget/ImageView;

    .line 45320
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/NU;->A00()V

    .line 45321
    return-void
.end method

.method private A00()V
    .locals 3

    .line 45322
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/NU;->A02:Landroid/widget/ImageView;

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/NU;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45323
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/NU;->A03:Landroid/widget/ImageView;

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/NU;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45324
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NU;->A03:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/LH;->A0B:Lcom/facebook/ads/redexgen/X/LH;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/LH;->A05(Landroid/view/View;Lcom/facebook/ads/redexgen/X/LH;)V

    .line 45325
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Lj;->A00()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/NU;->setId(I)V

    .line 45326
    return-void
.end method


# virtual methods
.method public getBodyImageView()Landroid/widget/ImageView;
    .locals 1

    .line 45327
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NU;->A03:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getImageHeight()I
    .locals 1

    .line 45328
    iget v0, p0, Lcom/facebook/ads/redexgen/X/NU;->A00:I

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    .line 45329
    iget v0, p0, Lcom/facebook/ads/redexgen/X/NU;->A01:I

    return v0
.end method

.method public final onLayout(ZIIII)V
    .locals 9

    .line 45330
    move-object v8, p0

    iget v0, v8, Lcom/facebook/ads/redexgen/X/NU;->A01:I

    if-lez v0, :cond_0

    iget v5, v8, Lcom/facebook/ads/redexgen/X/NU;->A00:I

    if-gtz v5, :cond_1

    .line 45331
    .end local p5    # null:I
    .end local v8
    .end local p2    # null:I
    .end local p3    # null:I
    .end local p4    # null:I
    .end local p5
    .end local v0
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 45332
    :goto_0
    return-void

    .line 45333
    :cond_1
    sub-int v4, p4, p2

    .line 45334
    .local p2, "blurBorderViewWidth":I
    sub-int v3, p5, p3

    .line 45335
    .local p3, "blurBorderViewHeight":I
    int-to-float v2, v4

    int-to-float v0, v0

    div-float/2addr v2, v0

    int-to-float v1, v3

    int-to-float v0, v5

    div-float/2addr v1, v0

    .line 45336
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 45337
    .local p5, "scale":F
    iget v0, v8, Lcom/facebook/ads/redexgen/X/NU;->A01:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v1, v0

    .line 45338
    .local v8, "expectedImageWidth":I
    iget v0, v8, Lcom/facebook/ads/redexgen/X/NU;->A00:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v7, v0

    .line 45339
    .local p4, "expectedImageHeight":I
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/NU;->A02:Landroid/widget/ImageView;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/widget/ImageView;->layout(IIII)V

    .line 45340
    div-int/lit8 v6, v4, 0x2

    add-int/2addr v6, p2

    .line 45341
    .local p5, "centerX":I
    div-int/lit8 v5, v3, 0x2

    add-int/2addr v5, p3

    .line 45342
    .local v0, "centerY":I
    iget-object v4, v8, Lcom/facebook/ads/redexgen/X/NU;->A03:Landroid/widget/ImageView;

    div-int/lit8 v0, v1, 0x2

    sub-int v3, v6, v0

    div-int/lit8 v0, v7, 0x2

    sub-int v2, v5, v0

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v6

    div-int/lit8 v0, v7, 0x2

    add-int/2addr v5, v0

    invoke-virtual {v4, v3, v2, v1, v5}, Landroid/widget/ImageView;->layout(IIII)V

    .line 45343
    iget-object v1, v8, Lcom/facebook/ads/redexgen/X/NU;->A02:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 45344
    if-eqz p2, :cond_1

    .line 45345
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/NU;->A02:Landroid/widget/ImageView;

    .line 45346
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/NU;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 45347
    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0U(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 45348
    :goto_0
    if-eqz p1, :cond_0

    .line 45349
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/NU;->A01:I

    .line 45350
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/NU;->A00:I

    .line 45351
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NU;->A03:Landroid/widget/ImageView;

    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 45352
    :goto_1
    return-void

    .line 45353
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NU;->A03:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 45354
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NU;->A02:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0O(Landroid/view/View;I)V

    goto :goto_0
.end method
