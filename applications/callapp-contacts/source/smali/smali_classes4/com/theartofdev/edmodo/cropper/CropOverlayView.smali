.class public Lcom/theartofdev/edmodo/cropper/CropOverlayView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/theartofdev/edmodo/cropper/CropOverlayView$b;,
        Lcom/theartofdev/edmodo/cropper/CropOverlayView$a;
    }
.end annotation


# instance fields
.field private A:Lcom/theartofdev/edmodo/cropper/CropImageView$c;

.field private B:Z

.field private C:Ljava/lang/Integer;

.field final a:Lcom/theartofdev/edmodo/cropper/e;

.field b:Z

.field c:I

.field d:I

.field e:Lcom/theartofdev/edmodo/cropper/CropImageView$b;

.field final f:Landroid/graphics/Rect;

.field private g:Landroid/view/ScaleGestureDetector;

.field private h:Z

.field private i:Lcom/theartofdev/edmodo/cropper/CropOverlayView$a;

.field private final j:Landroid/graphics/RectF;

.field private k:Landroid/graphics/Paint;

.field private l:Landroid/graphics/Paint;

.field private m:Landroid/graphics/Paint;

.field private n:Landroid/graphics/Paint;

.field private o:Landroid/graphics/Path;

.field private final p:[F

.field private final q:Landroid/graphics/RectF;

.field private r:I

.field private s:I

.field private t:F

.field private u:F

.field private v:F

.field private w:F

.field private x:F

.field private y:Lcom/theartofdev/edmodo/cropper/f;

.field private z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 136
    invoke-direct {p0, p1, v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 140
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance p1, Lcom/theartofdev/edmodo/cropper/e;

    invoke-direct {p1}, Lcom/theartofdev/edmodo/cropper/e;-><init>()V

    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->a:Lcom/theartofdev/edmodo/cropper/e;

    .line 50
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->j:Landroid/graphics/RectF;

    .line 65
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->o:Landroid/graphics/Path;

    const/16 p1, 0x8

    new-array p1, p1, [F

    .line 68
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->p:[F

    .line 71
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->q:Landroid/graphics/RectF;

    .line 117
    iget p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->c:I

    int-to-float p1, p1

    iget p2, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->d:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->z:F

    .line 126
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->f:Landroid/graphics/Rect;

    return-void
.end method

.method private static a(FI)Landroid/graphics/Paint;
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    .line 800
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 801
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 802
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 803
    sget-object p0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 p0, 0x1

    .line 804
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic a(Lcom/theartofdev/edmodo/cropper/CropOverlayView;)Lcom/theartofdev/edmodo/cropper/e;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->a:Lcom/theartofdev/edmodo/cropper/e;

    return-object p0
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    .line 654
    iget-object v1, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->m:Landroid/graphics/Paint;

    if-eqz v1, :cond_2

    .line 655
    iget-object v1, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->k:Landroid/graphics/Paint;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 656
    :goto_0
    iget-object v2, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->a:Lcom/theartofdev/edmodo/cropper/e;

    invoke-virtual {v2}, Lcom/theartofdev/edmodo/cropper/e;->a()Landroid/graphics/RectF;

    move-result-object v2

    .line 657
    invoke-virtual {v2, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 659
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v4, 0x40400000    # 3.0f

    div-float/2addr v3, v4

    .line 660
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v5, v4

    .line 662
    iget-object v4, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->e:Lcom/theartofdev/edmodo/cropper/CropImageView$b;

    sget-object v6, Lcom/theartofdev/edmodo/cropper/CropImageView$b;->OVAL:Lcom/theartofdev/edmodo/cropper/CropImageView$b;

    if-ne v4, v6, :cond_1

    .line 664
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    sub-float/2addr v4, v1

    .line 665
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float/2addr v7, v6

    sub-float/2addr v7, v1

    .line 668
    iget v1, v2, Landroid/graphics/RectF;->left:F

    add-float v11, v1, v3

    .line 669
    iget v1, v2, Landroid/graphics/RectF;->right:F

    sub-float v15, v1, v3

    float-to-double v8, v7

    sub-float v1, v4, v3

    div-float/2addr v1, v4

    float-to-double v12, v1

    .line 670
    invoke-static {v12, v13}, Ljava/lang/Math;->acos(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double v8, v8, v12

    double-to-float v1, v8

    .line 671
    iget v3, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v7

    sub-float v10, v3, v1

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v7

    add-float v12, v3, v1

    iget-object v13, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->m:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    move v9, v11

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 672
    iget v3, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v7

    sub-float v14, v3, v1

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v7

    add-float v16, v3, v1

    iget-object v1, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->m:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move v13, v15

    move-object/from16 v17, v1

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 675
    iget v1, v2, Landroid/graphics/RectF;->top:F

    add-float v12, v1, v5

    .line 676
    iget v1, v2, Landroid/graphics/RectF;->bottom:F

    sub-float v17, v1, v5

    float-to-double v8, v4

    sub-float v1, v7, v5

    div-float/2addr v1, v7

    float-to-double v5, v1

    .line 677
    invoke-static {v5, v6}, Ljava/lang/Math;->asin(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double v8, v8, v5

    double-to-float v1, v8

    .line 678
    iget v3, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v4

    sub-float v9, v3, v1

    iget v3, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v4

    add-float v11, v3, v1

    iget-object v13, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->m:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    move v10, v12

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 679
    iget v3, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v4

    sub-float v14, v3, v1

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v4

    add-float v16, v2, v1

    iget-object v1, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->m:Landroid/graphics/Paint;

    move-object/from16 v13, p1

    move/from16 v15, v17

    move-object/from16 v18, v1

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void

    .line 683
    :cond_1
    iget v1, v2, Landroid/graphics/RectF;->left:F

    add-float v9, v1, v3

    .line 684
    iget v1, v2, Landroid/graphics/RectF;->right:F

    sub-float v13, v1, v3

    .line 685
    iget v8, v2, Landroid/graphics/RectF;->top:F

    iget v10, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v11, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->m:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    move v7, v9

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 686
    iget v12, v2, Landroid/graphics/RectF;->top:F

    iget v14, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v15, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->m:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    move v11, v13

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 689
    iget v1, v2, Landroid/graphics/RectF;->top:F

    add-float v10, v1, v5

    .line 690
    iget v1, v2, Landroid/graphics/RectF;->bottom:F

    sub-float v15, v1, v5

    .line 691
    iget v7, v2, Landroid/graphics/RectF;->left:F

    iget v9, v2, Landroid/graphics/RectF;->right:F

    iget-object v11, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->m:Landroid/graphics/Paint;

    move v8, v10

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 692
    iget v12, v2, Landroid/graphics/RectF;->left:F

    iget v14, v2, Landroid/graphics/RectF;->right:F

    iget-object v1, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->m:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move v13, v15

    move-object/from16 v16, v1

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method private a(Landroid/graphics/RectF;)V
    .locals 6

    .line 516
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->a:Lcom/theartofdev/edmodo/cropper/e;

    invoke-virtual {v1}, Lcom/theartofdev/edmodo/cropper/e;->b()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->a:Lcom/theartofdev/edmodo/cropper/e;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/e;->b()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    .line 518
    iget v1, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->left:F

    .line 519
    iget v1, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->right:F

    .line 521
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->a:Lcom/theartofdev/edmodo/cropper/e;

    invoke-virtual {v1}, Lcom/theartofdev/edmodo/cropper/e;->c()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 522
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->a:Lcom/theartofdev/edmodo/cropper/e;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/e;->c()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    .line 523
    iget v1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->top:F

    .line 524
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    .line 526
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->a:Lcom/theartofdev/edmodo/cropper/e;

    invoke-virtual {v1}, Lcom/theartofdev/edmodo/cropper/e;->d()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 527
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->a:Lcom/theartofdev/edmodo/cropper/e;

    invoke-virtual {v1}, Lcom/theartofdev/edmodo/cropper/e;->d()F

    move-result v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    .line 528
    iget v1, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->left:F

    .line 529
    iget v1, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->right:F

    .line 531
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->a:Lcom/theartofdev/edmodo/cropper/e;

    invoke-virtual {v1}, Lcom/theartofdev/edmodo/cropper/e;->e()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 532
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->a:Lcom/theartofdev/edmodo/cropper/e;

    invoke-virtual {v1}, Lcom/theartofdev/edmodo/cropper/e;->e()F

    move-result v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    .line 533
    iget v1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->top:F

    .line 534
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    .line 537
    :cond_3
    invoke-direct {p0, p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->b(Landroid/graphics/RectF;)Z

    .line 538
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->q:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->q:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    .line 539
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->q:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 540
    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->q:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 541
    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->q:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 542
    iget-object v4, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->q:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 543
    iget v5, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v5, v5, v0

    if-gez v5, :cond_4

    .line 544
    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 546
    :cond_4
    iget v0, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    .line 547
    iput v1, p1, Landroid/graphics/RectF;->top:F

    .line 549
    :cond_5
    iget v0, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_6

    .line 550
    iput v3, p1, Landroid/graphics/RectF;->right:F

    .line 552
    :cond_6
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_7

    .line 553
    iput v4, p1, Landroid/graphics/RectF;->bottom:F

    .line 556
    :cond_7
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->b:Z

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v3, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->z:F

    mul-float v1, v1, v3

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v3, 0x3fb999999999999aL    # 0.1

    cmpl-double v5, v0, v3

    if-lez v5, :cond_9

    .line 557
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v3, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->z:F

    mul-float v1, v1, v3

    cmpl-float v0, v0, v1

    if-lez v0, :cond_8

    .line 558
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->z:F

    mul-float v0, v0, v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v0, v2

    .line 559
    iget v1, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->left:F

    .line 560
    iget v1, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->right:F

    return-void

    .line 562
    :cond_8
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->z:F

    div-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v0, v2

    .line 563
    iget v1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->top:F

    .line 564
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    :cond_9
    return-void
.end method

.method private b(Z)V
    .locals 2

    .line 981
    :try_start_0
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->i:Lcom/theartofdev/edmodo/cropper/CropOverlayView$a;

    if-eqz v0, :cond_0

    .line 982
    invoke-interface {v0, p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView$a;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const-string v0, "AIC"

    const-string v1, "Exception in crop window changed"

    .line 985
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private b(Landroid/graphics/RectF;)Z
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 902
    iget-object v2, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->p:[F

    invoke-static {v2}, Lcom/theartofdev/edmodo/cropper/c;->a([F)F

    move-result v2

    .line 903
    iget-object v3, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->p:[F

    invoke-static {v3}, Lcom/theartofdev/edmodo/cropper/c;->b([F)F

    move-result v3

    .line 904
    iget-object v4, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->p:[F

    invoke-static {v4}, Lcom/theartofdev/edmodo/cropper/c;->c([F)F

    move-result v4

    .line 905
    iget-object v5, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->p:[F

    invoke-static {v5}, Lcom/theartofdev/edmodo/cropper/c;->d([F)F

    move-result v5

    .line 907
    invoke-direct/range {p0 .. p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->d()Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_0

    .line 908
    iget-object v1, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->q:Landroid/graphics/RectF;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    return v7

    .line 911
    :cond_0
    iget-object v6, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->p:[F

    aget v8, v6, v7

    const/4 v9, 0x1

    .line 912
    aget v10, v6, v9

    const/4 v11, 0x4

    .line 913
    aget v12, v6, v11

    const/4 v13, 0x5

    .line 914
    aget v14, v6, v13

    const/4 v15, 0x6

    .line 915
    aget v16, v6, v15

    const/16 v17, 0x7

    .line 916
    aget v18, v6, v17

    .line 918
    aget v19, v6, v17

    aget v20, v6, v9

    const/16 v21, 0x2

    const/16 v22, 0x3

    cmpg-float v19, v19, v20

    if-gez v19, :cond_2

    .line 919
    aget v8, v6, v9

    aget v10, v6, v22

    cmpg-float v8, v8, v10

    if-gez v8, :cond_1

    .line 920
    aget v8, v6, v15

    .line 921
    aget v10, v6, v17

    .line 922
    aget v12, v6, v21

    .line 923
    aget v14, v6, v22

    .line 924
    aget v16, v6, v11

    .line 925
    aget v18, v6, v13

    goto :goto_0

    .line 927
    :cond_1
    aget v8, v6, v11

    .line 928
    aget v10, v6, v13

    .line 929
    aget v12, v6, v7

    .line 930
    aget v14, v6, v9

    .line 931
    aget v16, v6, v21

    .line 932
    aget v18, v6, v22

    goto :goto_0

    .line 934
    :cond_2
    aget v11, v6, v9

    aget v13, v6, v22

    cmpl-float v11, v11, v13

    if-lez v11, :cond_3

    .line 935
    aget v8, v6, v21

    .line 936
    aget v10, v6, v22

    .line 937
    aget v12, v6, v15

    .line 938
    aget v14, v6, v17

    .line 939
    aget v16, v6, v7

    .line 940
    aget v18, v6, v9

    :cond_3
    :goto_0
    sub-float v18, v18, v10

    sub-float v16, v16, v8

    div-float v18, v18, v16

    const/high16 v6, -0x40800000    # -1.0f

    div-float v6, v6, v18

    mul-float v7, v18, v8

    sub-float v7, v10, v7

    mul-float v8, v8, v6

    sub-float/2addr v10, v8

    mul-float v8, v18, v12

    sub-float v8, v14, v8

    mul-float v12, v12, v6

    sub-float/2addr v14, v12

    .line 950
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->centerY()F

    move-result v11

    iget v12, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v11, v12

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->centerX()F

    move-result v12

    iget v13, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v12, v13

    div-float/2addr v11, v12

    neg-float v12, v11

    .line 952
    iget v13, v1, Landroid/graphics/RectF;->top:F

    iget v15, v1, Landroid/graphics/RectF;->left:F

    mul-float v15, v15, v11

    sub-float/2addr v13, v15

    .line 953
    iget v15, v1, Landroid/graphics/RectF;->top:F

    iget v9, v1, Landroid/graphics/RectF;->right:F

    mul-float v9, v9, v12

    sub-float/2addr v15, v9

    sub-float v9, v13, v7

    sub-float v17, v18, v11

    div-float v9, v9, v17

    .line 955
    iget v0, v1, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v9, v0

    if-gez v0, :cond_4

    goto :goto_1

    :cond_4
    move v9, v2

    :goto_1
    invoke-static {v2, v9}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sub-float v2, v13, v10

    sub-float v9, v6, v11

    div-float/2addr v2, v9

    .line 956
    iget v9, v1, Landroid/graphics/RectF;->right:F

    cmpg-float v9, v2, v9

    if-gez v9, :cond_5

    goto :goto_2

    :cond_5
    move v2, v0

    :goto_2
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sub-float v2, v15, v14

    sub-float v9, v6, v12

    div-float/2addr v2, v9

    .line 957
    iget v11, v1, Landroid/graphics/RectF;->right:F

    cmpg-float v11, v2, v11

    if-gez v11, :cond_6

    goto :goto_3

    :cond_6
    move v2, v0

    :goto_3
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sub-float v2, v15, v10

    div-float/2addr v2, v9

    .line 958
    iget v9, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v9, v2, v9

    if-lez v9, :cond_7

    goto :goto_4

    :cond_7
    move v2, v4

    :goto_4
    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    sub-float/2addr v15, v8

    sub-float v4, v18, v12

    div-float/2addr v15, v4

    .line 959
    iget v4, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v4, v15, v4

    if-lez v4, :cond_8

    goto :goto_5

    :cond_8
    move v15, v2

    :goto_5
    invoke-static {v2, v15}, Ljava/lang/Math;->min(FF)F

    move-result v2

    sub-float/2addr v13, v8

    div-float v13, v13, v17

    .line 960
    iget v1, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v1, v13, v1

    if-lez v1, :cond_9

    goto :goto_6

    :cond_9
    move v13, v2

    :goto_6
    invoke-static {v2, v13}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float v2, v18, v0

    add-float/2addr v2, v7

    mul-float v4, v6, v1

    add-float/2addr v4, v10

    .line 962
    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    mul-float v6, v6, v0

    add-float/2addr v6, v14

    mul-float v18, v18, v1

    add-float v3, v18, v8

    .line 963
    invoke-static {v6, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    move-object/from16 v4, p0

    .line 965
    iget-object v5, v4, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->q:Landroid/graphics/RectF;

    iput v0, v5, Landroid/graphics/RectF;->left:F

    .line 966
    iget-object v0, v4, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->q:Landroid/graphics/RectF;

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 967
    iget-object v0, v4, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->q:Landroid/graphics/RectF;

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 968
    iget-object v0, v4, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->q:Landroid/graphics/RectF;

    iput v3, v0, Landroid/graphics/RectF;->bottom:F

    const/4 v0, 0x1

    return v0
.end method

.method private c()V
    .locals 10

    .line 429
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->p:[F

    invoke-static {v0}, Lcom/theartofdev/edmodo/cropper/c;->a([F)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 430
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->p:[F

    invoke-static {v2}, Lcom/theartofdev/edmodo/cropper/c;->b([F)F

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 431
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->p:[F

    invoke-static {v2}, Lcom/theartofdev/edmodo/cropper/c;->c([F)F

    move-result v2

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 432
    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->p:[F

    invoke-static {v3}, Lcom/theartofdev/edmodo/cropper/c;->d([F)F

    move-result v3

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    cmpg-float v4, v2, v0

    if-lez v4, :cond_4

    cmpg-float v4, v3, v1

    if-gtz v4, :cond_0

    goto/16 :goto_1

    .line 438
    :cond_0
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    const/4 v5, 0x1

    .line 441
    iput-boolean v5, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->B:Z

    .line 443
    iget v5, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->v:F

    sub-float v6, v2, v0

    mul-float v7, v5, v6

    sub-float v8, v3, v1

    mul-float v5, v5, v8

    .line 446
    iget-object v9, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->f:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-lez v9, :cond_1

    iget-object v9, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->f:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-lez v9, :cond_1

    .line 448
    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->f:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->a:Lcom/theartofdev/edmodo/cropper/e;

    .line 3102
    iget v6, v6, Lcom/theartofdev/edmodo/cropper/e;->j:F

    div-float/2addr v5, v6

    add-float/2addr v5, v0

    .line 449
    iput v5, v4, Landroid/graphics/RectF;->left:F

    .line 450
    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->f:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->a:Lcom/theartofdev/edmodo/cropper/e;

    .line 3107
    iget v6, v6, Lcom/theartofdev/edmodo/cropper/e;->k:F

    div-float/2addr v5, v6

    add-float/2addr v5, v1

    .line 450
    iput v5, v4, Landroid/graphics/RectF;->top:F

    .line 451
    iget v5, v4, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->f:Landroid/graphics/Rect;

    .line 452
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->a:Lcom/theartofdev/edmodo/cropper/e;

    .line 4102
    iget v7, v7, Lcom/theartofdev/edmodo/cropper/e;->j:F

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    .line 452
    iput v5, v4, Landroid/graphics/RectF;->right:F

    .line 453
    iget v5, v4, Landroid/graphics/RectF;->top:F

    iget-object v6, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->f:Landroid/graphics/Rect;

    .line 454
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->a:Lcom/theartofdev/edmodo/cropper/e;

    .line 4107
    iget v7, v7, Lcom/theartofdev/edmodo/cropper/e;->k:F

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    .line 454
    iput v5, v4, Landroid/graphics/RectF;->bottom:F

    .line 458
    iget v5, v4, Landroid/graphics/RectF;->left:F

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, v4, Landroid/graphics/RectF;->left:F

    .line 459
    iget v0, v4, Landroid/graphics/RectF;->top:F

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, v4, Landroid/graphics/RectF;->top:F

    .line 460
    iget v0, v4, Landroid/graphics/RectF;->right:F

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, v4, Landroid/graphics/RectF;->right:F

    .line 461
    iget v0, v4, Landroid/graphics/RectF;->bottom:F

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, v4, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_0

    .line 463
    :cond_1
    iget-boolean v9, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->b:Z

    if-eqz v9, :cond_3

    cmpl-float v9, v2, v0

    if-lez v9, :cond_3

    cmpl-float v9, v3, v1

    if-lez v9, :cond_3

    div-float/2addr v6, v8

    .line 468
    iget v8, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->z:F

    const/high16 v9, 0x40000000    # 2.0f

    cmpl-float v6, v6, v8

    if-lez v6, :cond_2

    add-float/2addr v1, v5

    .line 470
    iput v1, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v5

    .line 471
    iput v3, v4, Landroid/graphics/RectF;->bottom:F

    .line 473
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v9

    .line 476
    iget v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->c:I

    int-to-float v1, v1

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->d:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->z:F

    .line 479
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->a:Lcom/theartofdev/edmodo/cropper/e;

    .line 480
    invoke-virtual {v1}, Lcom/theartofdev/edmodo/cropper/e;->b()F

    move-result v1

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v3, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->z:F

    mul-float v2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    div-float/2addr v1, v9

    sub-float v2, v0, v1

    .line 483
    iput v2, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v1

    .line 484
    iput v0, v4, Landroid/graphics/RectF;->right:F

    goto :goto_0

    :cond_2
    add-float/2addr v0, v7

    .line 488
    iput v0, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v7

    .line 489
    iput v2, v4, Landroid/graphics/RectF;->right:F

    .line 491
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v9

    .line 494
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->a:Lcom/theartofdev/edmodo/cropper/e;

    .line 495
    invoke-virtual {v1}, Lcom/theartofdev/edmodo/cropper/e;->c()F

    move-result v1

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget v3, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->z:F

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    div-float/2addr v1, v9

    sub-float v2, v0, v1

    .line 498
    iput v2, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v1

    .line 499
    iput v0, v4, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    :cond_3
    add-float/2addr v0, v7

    .line 503
    iput v0, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v5

    .line 504
    iput v1, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v7

    .line 505
    iput v2, v4, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v5

    .line 506
    iput v3, v4, Landroid/graphics/RectF;->bottom:F

    .line 509
    :goto_0
    invoke-direct {p0, v4}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->a(Landroid/graphics/RectF;)V

    .line 511
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->a:Lcom/theartofdev/edmodo/cropper/e;

    invoke-virtual {v0, v4}, Lcom/theartofdev/edmodo/cropper/e;->a(Landroid/graphics/RectF;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private d()Z
    .locals 5

    .line 975
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->p:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x6

    aget v3, v0, v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    aget v3, v0, v2

    const/4 v4, 0x7

    aget v0, v0, v4

    cmpl-float v0, v3, v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    return v1
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1150
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->a:Lcom/theartofdev/edmodo/cropper/e;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/e;->a()Landroid/graphics/RectF;

    move-result-object v0

    .line 161
    invoke-direct {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->a(Landroid/graphics/RectF;)V

    .line 162
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->a:Lcom/theartofdev/edmodo/cropper/e;

    invoke-virtual {v1, v0}, Lcom/theartofdev/edmodo/cropper/e;->a(Landroid/graphics/RectF;)V

    return-void
.end method

.method public final a(Z)Z
    .locals 3

    .line 323
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->h:Z

    if-eq v0, p1, :cond_1

    .line 324
    iput-boolean p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->h:Z

    if-eqz p1, :cond_0

    .line 325
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->g:Landroid/view/ScaleGestureDetector;

    if-nez p1, :cond_0

    .line 326
    new-instance p1, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/theartofdev/edmodo/cropper/CropOverlayView$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/theartofdev/edmodo/cropper/CropOverlayView$b;-><init>(Lcom/theartofdev/edmodo/cropper/CropOverlayView;Lcom/theartofdev/edmodo/cropper/CropOverlayView$1;)V

    invoke-direct {p1, v0, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->g:Landroid/view/ScaleGestureDetector;

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final b()V
    .locals 1

    .line 191
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->B:Z

    if-eqz v0, :cond_0

    .line 192
    sget-object v0, Lcom/theartofdev/edmodo/cropper/c;->b:Landroid/graphics/RectF;

    invoke-virtual {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setCropWindowRect(Landroid/graphics/RectF;)V

    .line 193
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->c()V

    .line 194
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 576
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 4599
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->a:Lcom/theartofdev/edmodo/cropper/e;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/e;->a()Landroid/graphics/RectF;

    move-result-object v0

    .line 4601
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->p:[F

    invoke-static {v1}, Lcom/theartofdev/edmodo/cropper/c;->a([F)F

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 4602
    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->p:[F

    invoke-static {v3}, Lcom/theartofdev/edmodo/cropper/c;->b([F)F

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 4603
    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->p:[F

    invoke-static {v3}, Lcom/theartofdev/edmodo/cropper/c;->c([F)F

    move-result v3

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 4604
    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->p:[F

    invoke-static {v3}, Lcom/theartofdev/edmodo/cropper/c;->d([F)F

    move-result v3

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 4606
    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->e:Lcom/theartofdev/edmodo/cropper/CropImageView$b;

    sget-object v4, Lcom/theartofdev/edmodo/cropper/CropImageView$b;->RECTANGLE:Lcom/theartofdev/edmodo/cropper/CropImageView$b;

    const/16 v6, 0x1a

    const/16 v7, 0x11

    const/high16 v12, 0x40000000    # 2.0f

    if-ne v3, v4, :cond_3

    .line 4607
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->d()Z

    move-result v3

    if-eqz v3, :cond_2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v3, v7, :cond_0

    goto :goto_1

    .line 4613
    :cond_0
    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->o:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 4614
    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->o:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->p:[F

    const/4 v7, 0x0

    aget v7, v4, v7

    const/4 v8, 0x1

    aget v4, v4, v8

    invoke-virtual {v3, v7, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 4615
    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->o:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->p:[F

    const/4 v7, 0x2

    aget v7, v4, v7

    const/4 v8, 0x3

    aget v4, v4, v8

    invoke-virtual {v3, v7, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 4616
    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->o:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->p:[F

    const/4 v7, 0x4

    aget v7, v4, v7

    const/4 v8, 0x5

    aget v4, v4, v8

    invoke-virtual {v3, v7, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 4617
    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->o:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->p:[F

    const/4 v7, 0x6

    aget v7, v4, v7

    const/4 v8, 0x7

    aget v4, v4, v8

    invoke-virtual {v3, v7, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 4618
    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->o:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 4620
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4621
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v6, :cond_1

    .line 4622
    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->o:Landroid/graphics/Path;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipOutPath(Landroid/graphics/Path;)Z

    goto :goto_0

    .line 4624
    :cond_1
    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->o:Landroid/graphics/Path;

    sget-object v4, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 4626
    :goto_0
    sget-object v3, Landroid/graphics/Region$Op;->XOR:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    goto/16 :goto_3

    .line 4608
    :cond_2
    :goto_1
    iget v7, v0, Landroid/graphics/RectF;->top:F

    iget-object v8, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->n:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, v1

    move v6, v9

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 4609
    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v8, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->n:Landroid/graphics/Paint;

    move v7, v10

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 4610
    iget v5, v0, Landroid/graphics/RectF;->top:F

    iget v6, v0, Landroid/graphics/RectF;->left:F

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v8, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->n:Landroid/graphics/Paint;

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 4611
    iget v7, v0, Landroid/graphics/RectF;->right:F

    iget v8, v0, Landroid/graphics/RectF;->top:F

    iget v10, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v11, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->n:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 4631
    :cond_3
    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->o:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 4632
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v3, v7, :cond_4

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->e:Lcom/theartofdev/edmodo/cropper/CropImageView$b;

    sget-object v4, Lcom/theartofdev/edmodo/cropper/CropImageView$b;->OVAL:Lcom/theartofdev/edmodo/cropper/CropImageView$b;

    if-ne v3, v4, :cond_4

    .line 4633
    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->j:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v12

    iget v7, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v7, v12

    iget v8, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v8, v12

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v12

    invoke-virtual {v3, v4, v7, v8, v0}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_2

    .line 4635
    :cond_4
    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->j:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->left:F

    iget v7, v0, Landroid/graphics/RectF;->top:F

    iget v8, v0, Landroid/graphics/RectF;->right:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v4, v7, v8, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 4637
    :goto_2
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->o:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->j:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 4638
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4639
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_5

    .line 4640
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->o:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipOutPath(Landroid/graphics/Path;)Z

    goto :goto_3

    .line 4642
    :cond_5
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->o:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Region$Op;->XOR:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 4644
    :goto_3
    iget-object v8, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->n:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, v1

    move v6, v9

    move v7, v10

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 4645
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 581
    :goto_4
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->a:Lcom/theartofdev/edmodo/cropper/e;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/e;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 583
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->A:Lcom/theartofdev/edmodo/cropper/CropImageView$c;

    sget-object v1, Lcom/theartofdev/edmodo/cropper/CropImageView$c;->ON:Lcom/theartofdev/edmodo/cropper/CropImageView$c;

    if-ne v0, v1, :cond_6

    .line 584
    invoke-direct {p0, p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->a(Landroid/graphics/Canvas;)V

    goto :goto_5

    .line 585
    :cond_6
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->A:Lcom/theartofdev/edmodo/cropper/CropImageView$c;

    sget-object v1, Lcom/theartofdev/edmodo/cropper/CropImageView$c;->ON_TOUCH:Lcom/theartofdev/edmodo/cropper/CropImageView$c;

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->y:Lcom/theartofdev/edmodo/cropper/f;

    if-eqz v0, :cond_7

    .line 587
    invoke-direct {p0, p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->a(Landroid/graphics/Canvas;)V

    .line 4699
    :cond_7
    :goto_5
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->k:Landroid/graphics/Paint;

    if-eqz v0, :cond_9

    .line 4700
    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    .line 4701
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->a:Lcom/theartofdev/edmodo/cropper/e;

    invoke-virtual {v1}, Lcom/theartofdev/edmodo/cropper/e;->a()Landroid/graphics/RectF;

    move-result-object v1

    div-float/2addr v0, v12

    .line 4702
    invoke-virtual {v1, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 4704
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->e:Lcom/theartofdev/edmodo/cropper/CropImageView$b;

    sget-object v3, Lcom/theartofdev/edmodo/cropper/CropImageView$b;->RECTANGLE:Lcom/theartofdev/edmodo/cropper/CropImageView$b;

    if-ne v0, v3, :cond_8

    .line 4706
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_6

    .line 4709
    :cond_8
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 4716
    :cond_9
    :goto_6
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->l:Landroid/graphics/Paint;

    if-eqz v0, :cond_c

    .line 4718
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->k:Landroid/graphics/Paint;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    goto :goto_7

    :cond_a
    const/4 v0, 0x0

    .line 4719
    :goto_7
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->l:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    div-float v3, v1, v12

    .line 4722
    iget-object v4, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->e:Lcom/theartofdev/edmodo/cropper/CropImageView$b;

    sget-object v5, Lcom/theartofdev/edmodo/cropper/CropImageView$b;->RECTANGLE:Lcom/theartofdev/edmodo/cropper/CropImageView$b;

    if-ne v4, v5, :cond_b

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->t:F

    :cond_b
    add-float/2addr v2, v3

    .line 4726
    iget-object v4, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->a:Lcom/theartofdev/edmodo/cropper/e;

    invoke-virtual {v4}, Lcom/theartofdev/edmodo/cropper/e;->a()Landroid/graphics/RectF;

    move-result-object v4

    .line 4727
    invoke-virtual {v4, v2, v2}, Landroid/graphics/RectF;->inset(FF)V

    sub-float/2addr v1, v0

    div-float/2addr v1, v12

    add-float/2addr v3, v1

    .line 4733
    iget v0, v4, Landroid/graphics/RectF;->left:F

    sub-float v6, v0, v1

    iget v0, v4, Landroid/graphics/RectF;->top:F

    sub-float v7, v0, v3

    iget v0, v4, Landroid/graphics/RectF;->left:F

    sub-float v8, v0, v1

    iget v0, v4, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->u:F

    add-float v9, v0, v2

    iget-object v10, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->l:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 4739
    iget v0, v4, Landroid/graphics/RectF;->left:F

    sub-float v6, v0, v3

    iget v0, v4, Landroid/graphics/RectF;->top:F

    sub-float v7, v0, v1

    iget v0, v4, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->u:F

    add-float v8, v0, v2

    iget v0, v4, Landroid/graphics/RectF;->top:F

    sub-float v9, v0, v1

    iget-object v10, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->l:Landroid/graphics/Paint;

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 4747
    iget v0, v4, Landroid/graphics/RectF;->right:F

    add-float v6, v0, v1

    iget v0, v4, Landroid/graphics/RectF;->top:F

    sub-float v7, v0, v3

    iget v0, v4, Landroid/graphics/RectF;->right:F

    add-float v8, v0, v1

    iget v0, v4, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->u:F

    add-float v9, v0, v2

    iget-object v10, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->l:Landroid/graphics/Paint;

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 4753
    iget v0, v4, Landroid/graphics/RectF;->right:F

    add-float v6, v0, v3

    iget v0, v4, Landroid/graphics/RectF;->top:F

    sub-float v7, v0, v1

    iget v0, v4, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->u:F

    sub-float v8, v0, v2

    iget v0, v4, Landroid/graphics/RectF;->top:F

    sub-float v9, v0, v1

    iget-object v10, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->l:Landroid/graphics/Paint;

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 4761
    iget v0, v4, Landroid/graphics/RectF;->left:F

    sub-float v6, v0, v1

    iget v0, v4, Landroid/graphics/RectF;->bottom:F

    add-float v7, v0, v3

    iget v0, v4, Landroid/graphics/RectF;->left:F

    sub-float v8, v0, v1

    iget v0, v4, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->u:F

    sub-float v9, v0, v2

    iget-object v10, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->l:Landroid/graphics/Paint;

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 4767
    iget v0, v4, Landroid/graphics/RectF;->left:F

    sub-float v6, v0, v3

    iget v0, v4, Landroid/graphics/RectF;->bottom:F

    add-float v7, v0, v1

    iget v0, v4, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->u:F

    add-float v8, v0, v2

    iget v0, v4, Landroid/graphics/RectF;->bottom:F

    add-float v9, v0, v1

    iget-object v10, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->l:Landroid/graphics/Paint;

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 4775
    iget v0, v4, Landroid/graphics/RectF;->right:F

    add-float v6, v0, v1

    iget v0, v4, Landroid/graphics/RectF;->bottom:F

    add-float v7, v0, v3

    iget v0, v4, Landroid/graphics/RectF;->right:F

    add-float v8, v0, v1

    iget v0, v4, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->u:F

    sub-float v9, v0, v2

    iget-object v10, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->l:Landroid/graphics/Paint;

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 4781
    iget v0, v4, Landroid/graphics/RectF;->right:F

    add-float v6, v0, v3

    iget v0, v4, Landroid/graphics/RectF;->bottom:F

    add-float v7, v0, v1

    iget v0, v4, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->u:F

    sub-float v8, v0, v2

    iget v0, v4, Landroid/graphics/RectF;->bottom:F

    add-float v9, v0, v1

    iget-object v10, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->l:Landroid/graphics/Paint;

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_c
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18

    move-object/from16 v0, p0

    .line 814
    invoke-virtual/range {p0 .. p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_26

    .line 815
    iget-boolean v1, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->h:Z

    if-eqz v1, :cond_0

    .line 816
    iget-object v1, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->g:Landroid/view/ScaleGestureDetector;

    move-object/from16 v3, p1

    invoke-virtual {v1, v3}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_0
    move-object/from16 v3, p1

    .line 819
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_10

    if-eq v1, v5, :cond_e

    const/4 v6, 0x2

    if-eq v1, v6, :cond_1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_e

    return v2

    .line 829
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 6866
    iget-object v3, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->y:Lcom/theartofdev/edmodo/cropper/f;

    if-eqz v3, :cond_d

    .line 6867
    iget v3, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->x:F

    .line 6868
    iget-object v4, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->a:Lcom/theartofdev/edmodo/cropper/e;

    invoke-virtual {v4}, Lcom/theartofdev/edmodo/cropper/e;->a()Landroid/graphics/RectF;

    move-result-object v4

    .line 6870
    invoke-direct {v0, v4}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->b(Landroid/graphics/RectF;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    const/4 v3, 0x0

    .line 6874
    :cond_2
    iget-object v15, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->y:Lcom/theartofdev/edmodo/cropper/f;

    iget-object v14, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->q:Landroid/graphics/RectF;

    iget v13, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->r:I

    iget v10, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->s:I

    iget-boolean v6, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->b:Z

    iget v12, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->z:F

    .line 7110
    iget-object v8, v15, Lcom/theartofdev/edmodo/cropper/f;->b:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v8

    .line 7111
    iget-object v8, v15, Lcom/theartofdev/edmodo/cropper/f;->b:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    add-float/2addr v8, v2

    .line 7113
    iget-object v2, v15, Lcom/theartofdev/edmodo/cropper/f;->a:Lcom/theartofdev/edmodo/cropper/f$a;

    sget-object v9, Lcom/theartofdev/edmodo/cropper/f$a;->CENTER:Lcom/theartofdev/edmodo/cropper/f$a;

    if-ne v2, v9, :cond_7

    .line 7186
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    sub-float/2addr v1, v2

    .line 7187
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    sub-float/2addr v8, v2

    .line 7188
    iget v2, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v1

    const/high16 v6, 0x40000000    # 2.0f

    const v9, 0x3f866666    # 1.05f

    cmpg-float v2, v2, v7

    if-ltz v2, :cond_3

    iget v2, v4, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v1

    int-to-float v11, v13

    cmpl-float v2, v2, v11

    if-gtz v2, :cond_3

    iget v2, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v1

    iget v11, v14, Landroid/graphics/RectF;->left:F

    cmpg-float v2, v2, v11

    if-ltz v2, :cond_3

    iget v2, v4, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v1

    iget v11, v14, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v2, v11

    if-lez v2, :cond_4

    :cond_3
    div-float/2addr v1, v9

    .line 7193
    iget-object v2, v15, Lcom/theartofdev/edmodo/cropper/f;->b:Landroid/graphics/PointF;

    iget v11, v2, Landroid/graphics/PointF;->x:F

    div-float v12, v1, v6

    sub-float/2addr v11, v12

    iput v11, v2, Landroid/graphics/PointF;->x:F

    .line 7195
    :cond_4
    iget v2, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v8

    cmpg-float v2, v2, v7

    if-ltz v2, :cond_5

    iget v2, v4, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, v8

    int-to-float v7, v10

    cmpl-float v2, v2, v7

    if-gtz v2, :cond_5

    iget v2, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v8

    iget v7, v14, Landroid/graphics/RectF;->top:F

    cmpg-float v2, v2, v7

    if-ltz v2, :cond_5

    iget v2, v4, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, v8

    iget v7, v14, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, v2, v7

    if-lez v2, :cond_6

    :cond_5
    div-float/2addr v8, v9

    .line 7200
    iget-object v2, v15, Lcom/theartofdev/edmodo/cropper/f;->b:Landroid/graphics/PointF;

    iget v7, v2, Landroid/graphics/PointF;->y:F

    div-float v6, v8, v6

    sub-float/2addr v7, v6

    iput v7, v2, Landroid/graphics/PointF;->y:F

    .line 7202
    :cond_6
    invoke-virtual {v4, v1, v8}, Landroid/graphics/RectF;->offset(FF)V

    .line 7203
    invoke-static {v4, v14, v3}, Lcom/theartofdev/edmodo/cropper/f;->a(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    goto/16 :goto_1

    :cond_7
    if-eqz v6, :cond_c

    .line 7262
    sget-object v2, Lcom/theartofdev/edmodo/cropper/f$1;->a:[I

    iget-object v6, v15, Lcom/theartofdev/edmodo/cropper/f;->a:Lcom/theartofdev/edmodo/cropper/f$a;

    invoke-virtual {v6}, Lcom/theartofdev/edmodo/cropper/f$a;->ordinal()I

    move-result v6

    aget v2, v2, v6

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    const/4 v13, 0x1

    const/4 v1, 0x1

    move-object v6, v15

    move-object v7, v4

    move-object v9, v14

    move v11, v3

    move v2, v12

    move-object v3, v14

    move v14, v1

    .line 7312
    invoke-virtual/range {v6 .. v14}, Lcom/theartofdev/edmodo/cropper/f;->b(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    .line 7313
    invoke-static {v4, v3, v2}, Lcom/theartofdev/edmodo/cropper/f;->b(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    goto/16 :goto_1

    :pswitch_1
    move v2, v12

    const/16 v16, 0x1

    const/16 v17, 0x1

    move-object v6, v15

    move-object v7, v4

    move v8, v1

    move-object v9, v14

    move v10, v13

    move v11, v3

    move/from16 v13, v16

    move-object v1, v14

    move/from16 v14, v17

    .line 7308
    invoke-virtual/range {v6 .. v14}, Lcom/theartofdev/edmodo/cropper/f;->a(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    .line 7309
    invoke-static {v4, v1, v2}, Lcom/theartofdev/edmodo/cropper/f;->c(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    goto/16 :goto_1

    :pswitch_2
    move v2, v12

    move-object v1, v14

    const/4 v12, 0x1

    const/4 v13, 0x1

    move-object v6, v15

    move-object v7, v4

    move-object v9, v1

    move v10, v3

    move v11, v2

    .line 7304
    invoke-virtual/range {v6 .. v13}, Lcom/theartofdev/edmodo/cropper/f;->b(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    .line 7305
    invoke-static {v4, v1, v2}, Lcom/theartofdev/edmodo/cropper/f;->b(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    goto/16 :goto_1

    :pswitch_3
    move v2, v12

    const/4 v12, 0x1

    const/4 v13, 0x1

    move-object v6, v15

    move-object v7, v4

    move v8, v1

    move-object v9, v14

    move v10, v3

    move v11, v2

    .line 7300
    invoke-virtual/range {v6 .. v13}, Lcom/theartofdev/edmodo/cropper/f;->a(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    .line 7301
    invoke-static {v4, v14, v2}, Lcom/theartofdev/edmodo/cropper/f;->c(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    goto/16 :goto_1

    :pswitch_4
    move v2, v12

    .line 7291
    iget v6, v4, Landroid/graphics/RectF;->left:F

    iget v7, v4, Landroid/graphics/RectF;->top:F

    invoke-static {v6, v7, v1, v8}, Lcom/theartofdev/edmodo/cropper/f;->a(FFFF)F

    move-result v6

    cmpg-float v6, v6, v2

    if-gez v6, :cond_8

    const/4 v13, 0x0

    const/4 v1, 0x1

    move-object v6, v15

    move-object v7, v4

    move-object v9, v14

    move v11, v3

    move v12, v2

    move v14, v1

    .line 7292
    invoke-virtual/range {v6 .. v14}, Lcom/theartofdev/edmodo/cropper/f;->b(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    .line 7293
    invoke-static {v4, v2}, Lcom/theartofdev/edmodo/cropper/f;->c(Landroid/graphics/RectF;F)V

    goto/16 :goto_1

    :cond_8
    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object v6, v15

    move-object v7, v4

    move v8, v1

    move-object v9, v14

    move v10, v13

    move v11, v3

    move v12, v2

    move/from16 v13, v16

    move/from16 v14, v17

    .line 7295
    invoke-virtual/range {v6 .. v14}, Lcom/theartofdev/edmodo/cropper/f;->a(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    .line 7296
    invoke-static {v4, v2}, Lcom/theartofdev/edmodo/cropper/f;->d(Landroid/graphics/RectF;F)V

    goto/16 :goto_1

    :pswitch_5
    move v2, v12

    .line 7282
    iget v6, v4, Landroid/graphics/RectF;->top:F

    iget v7, v4, Landroid/graphics/RectF;->right:F

    invoke-static {v1, v6, v7, v8}, Lcom/theartofdev/edmodo/cropper/f;->a(FFFF)F

    move-result v6

    cmpg-float v6, v6, v2

    if-gez v6, :cond_9

    const/4 v13, 0x1

    const/4 v1, 0x0

    move-object v6, v15

    move-object v7, v4

    move-object v9, v14

    move v11, v3

    move v12, v2

    move v14, v1

    .line 7283
    invoke-virtual/range {v6 .. v14}, Lcom/theartofdev/edmodo/cropper/f;->b(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    .line 7284
    invoke-static {v4, v2}, Lcom/theartofdev/edmodo/cropper/f;->a(Landroid/graphics/RectF;F)V

    goto/16 :goto_1

    :cond_9
    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object v6, v15

    move-object v7, v4

    move v8, v1

    move-object v9, v14

    move v10, v3

    move v11, v2

    .line 7286
    invoke-virtual/range {v6 .. v13}, Lcom/theartofdev/edmodo/cropper/f;->a(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    .line 7287
    invoke-static {v4, v2}, Lcom/theartofdev/edmodo/cropper/f;->d(Landroid/graphics/RectF;F)V

    goto/16 :goto_1

    :pswitch_6
    move v2, v12

    .line 7273
    iget v6, v4, Landroid/graphics/RectF;->left:F

    iget v7, v4, Landroid/graphics/RectF;->bottom:F

    invoke-static {v6, v8, v1, v7}, Lcom/theartofdev/edmodo/cropper/f;->a(FFFF)F

    move-result v6

    cmpg-float v6, v6, v2

    if-gez v6, :cond_a

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object v6, v15

    move-object v7, v4

    move-object v9, v14

    move v10, v3

    move v11, v2

    .line 7274
    invoke-virtual/range {v6 .. v13}, Lcom/theartofdev/edmodo/cropper/f;->b(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    .line 7275
    invoke-static {v4, v2}, Lcom/theartofdev/edmodo/cropper/f;->c(Landroid/graphics/RectF;F)V

    goto/16 :goto_1

    :cond_a
    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object v6, v15

    move-object v7, v4

    move v8, v1

    move-object v9, v14

    move v10, v13

    move v11, v3

    move v12, v2

    move/from16 v13, v16

    move/from16 v14, v17

    .line 7277
    invoke-virtual/range {v6 .. v14}, Lcom/theartofdev/edmodo/cropper/f;->a(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    .line 7278
    invoke-static {v4, v2}, Lcom/theartofdev/edmodo/cropper/f;->b(Landroid/graphics/RectF;F)V

    goto/16 :goto_1

    :pswitch_7
    move v2, v12

    .line 7264
    iget v6, v4, Landroid/graphics/RectF;->right:F

    iget v7, v4, Landroid/graphics/RectF;->bottom:F

    invoke-static {v1, v8, v6, v7}, Lcom/theartofdev/edmodo/cropper/f;->a(FFFF)F

    move-result v6

    cmpg-float v6, v6, v2

    if-gez v6, :cond_b

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object v6, v15

    move-object v7, v4

    move-object v9, v14

    move v10, v3

    move v11, v2

    .line 7265
    invoke-virtual/range {v6 .. v13}, Lcom/theartofdev/edmodo/cropper/f;->b(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    .line 7266
    invoke-static {v4, v2}, Lcom/theartofdev/edmodo/cropper/f;->a(Landroid/graphics/RectF;F)V

    goto/16 :goto_1

    :cond_b
    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object v6, v15

    move-object v7, v4

    move v8, v1

    move-object v9, v14

    move v10, v3

    move v11, v2

    .line 7268
    invoke-virtual/range {v6 .. v13}, Lcom/theartofdev/edmodo/cropper/f;->a(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    .line 7269
    invoke-static {v4, v2}, Lcom/theartofdev/edmodo/cropper/f;->b(Landroid/graphics/RectF;F)V

    goto/16 :goto_1

    .line 8213
    :cond_c
    sget-object v2, Lcom/theartofdev/edmodo/cropper/f$1;->a:[I

    iget-object v6, v15, Lcom/theartofdev/edmodo/cropper/f;->a:Lcom/theartofdev/edmodo/cropper/f$a;

    invoke-virtual {v6}, Lcom/theartofdev/edmodo/cropper/f$a;->ordinal()I

    move-result v6

    aget v2, v2, v6

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_1

    :pswitch_8
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v1, 0x0

    move-object v6, v15

    move-object v7, v4

    move-object v9, v14

    move v11, v3

    move v14, v1

    .line 8240
    invoke-virtual/range {v6 .. v14}, Lcom/theartofdev/edmodo/cropper/f;->b(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    goto/16 :goto_1

    :pswitch_9
    const/4 v12, 0x0

    const/4 v2, 0x0

    const/16 v16, 0x0

    move-object v6, v15

    move-object v7, v4

    move v8, v1

    move-object v9, v14

    move v10, v13

    move v11, v3

    move v13, v2

    move/from16 v14, v16

    .line 8237
    invoke-virtual/range {v6 .. v14}, Lcom/theartofdev/edmodo/cropper/f;->a(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    goto/16 :goto_1

    :pswitch_a
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v6, v15

    move-object v7, v4

    move-object v9, v14

    move v10, v3

    .line 8234
    invoke-virtual/range {v6 .. v13}, Lcom/theartofdev/edmodo/cropper/f;->b(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    goto/16 :goto_1

    :pswitch_b
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v6, v15

    move-object v7, v4

    move v8, v1

    move-object v9, v14

    move v10, v3

    .line 8231
    invoke-virtual/range {v6 .. v13}, Lcom/theartofdev/edmodo/cropper/f;->a(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    goto/16 :goto_1

    :pswitch_c
    const/4 v12, 0x0

    const/4 v2, 0x0

    const/16 v16, 0x0

    move-object v6, v15

    move-object v7, v4

    move-object v9, v14

    move v11, v3

    move/from16 v17, v13

    move v13, v2

    move-object v2, v14

    move/from16 v14, v16

    .line 8227
    invoke-virtual/range {v6 .. v14}, Lcom/theartofdev/edmodo/cropper/f;->b(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    move v8, v1

    move-object v9, v2

    move/from16 v10, v17

    .line 8228
    invoke-virtual/range {v6 .. v14}, Lcom/theartofdev/edmodo/cropper/f;->a(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    goto :goto_1

    :pswitch_d
    move-object v2, v14

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v6, v15

    move-object v7, v4

    move-object v9, v2

    move v11, v3

    .line 8223
    invoke-virtual/range {v6 .. v14}, Lcom/theartofdev/edmodo/cropper/f;->b(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v8, v1

    move v10, v3

    .line 8224
    invoke-virtual/range {v6 .. v13}, Lcom/theartofdev/edmodo/cropper/f;->a(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    goto :goto_1

    :pswitch_e
    move/from16 v17, v13

    move-object v2, v14

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v6, v15

    move-object v7, v4

    move-object v9, v2

    move v10, v3

    .line 8219
    invoke-virtual/range {v6 .. v13}, Lcom/theartofdev/edmodo/cropper/f;->b(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    const/4 v12, 0x0

    const/4 v14, 0x0

    move v8, v1

    move/from16 v10, v17

    move v11, v3

    .line 8220
    invoke-virtual/range {v6 .. v14}, Lcom/theartofdev/edmodo/cropper/f;->a(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    goto :goto_1

    :pswitch_f
    move-object v2, v14

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v6, v15

    move-object v7, v4

    move-object v9, v2

    move v10, v3

    .line 8215
    invoke-virtual/range {v6 .. v13}, Lcom/theartofdev/edmodo/cropper/f;->b(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    move v8, v1

    .line 8216
    invoke-virtual/range {v6 .. v13}, Lcom/theartofdev/edmodo/cropper/f;->a(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    .line 6884
    :goto_1
    iget-object v1, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->a:Lcom/theartofdev/edmodo/cropper/e;

    invoke-virtual {v1, v4}, Lcom/theartofdev/edmodo/cropper/e;->a(Landroid/graphics/RectF;)V

    .line 6885
    invoke-direct {v0, v5}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->b(Z)V

    .line 6886
    invoke-virtual/range {p0 .. p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->invalidate()V

    .line 830
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return v5

    .line 825
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 6853
    iget-object v1, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->y:Lcom/theartofdev/edmodo/cropper/f;

    if-eqz v1, :cond_f

    .line 6854
    iput-object v4, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->y:Lcom/theartofdev/edmodo/cropper/f;

    .line 6855
    invoke-direct {v0, v2}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->b(Z)V

    .line 6856
    invoke-virtual/range {p0 .. p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->invalidate()V

    :cond_f
    return v5

    .line 821
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 4845
    iget-object v3, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->a:Lcom/theartofdev/edmodo/cropper/e;

    iget v12, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->w:F

    iget-object v6, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->e:Lcom/theartofdev/edmodo/cropper/CropImageView$b;

    .line 5176
    sget-object v7, Lcom/theartofdev/edmodo/cropper/CropImageView$b;->OVAL:Lcom/theartofdev/edmodo/cropper/CropImageView$b;

    if-ne v6, v7, :cond_19

    .line 5257
    iget-object v6, v3, Lcom/theartofdev/edmodo/cropper/e;->a:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    const/high16 v7, 0x40c00000    # 6.0f

    div-float/2addr v6, v7

    .line 5258
    iget-object v8, v3, Lcom/theartofdev/edmodo/cropper/e;->a:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    add-float/2addr v8, v6

    .line 5259
    iget-object v9, v3, Lcom/theartofdev/edmodo/cropper/e;->a:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    const/high16 v10, 0x40a00000    # 5.0f

    mul-float v6, v6, v10

    add-float/2addr v9, v6

    .line 5261
    iget-object v6, v3, Lcom/theartofdev/edmodo/cropper/e;->a:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float/2addr v6, v7

    .line 5262
    iget-object v7, v3, Lcom/theartofdev/edmodo/cropper/e;->a:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    add-float/2addr v7, v6

    .line 5263
    iget-object v11, v3, Lcom/theartofdev/edmodo/cropper/e;->a:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->top:F

    mul-float v6, v6, v10

    add-float/2addr v11, v6

    cmpg-float v6, v1, v8

    if-gez v6, :cond_13

    cmpg-float v6, v2, v7

    if-gez v6, :cond_11

    .line 5268
    sget-object v6, Lcom/theartofdev/edmodo/cropper/f$a;->TOP_LEFT:Lcom/theartofdev/edmodo/cropper/f$a;

    goto/16 :goto_2

    :cond_11
    cmpg-float v6, v2, v11

    if-gez v6, :cond_12

    .line 5270
    sget-object v6, Lcom/theartofdev/edmodo/cropper/f$a;->LEFT:Lcom/theartofdev/edmodo/cropper/f$a;

    goto/16 :goto_2

    .line 5272
    :cond_12
    sget-object v6, Lcom/theartofdev/edmodo/cropper/f$a;->BOTTOM_LEFT:Lcom/theartofdev/edmodo/cropper/f$a;

    goto/16 :goto_2

    :cond_13
    cmpg-float v6, v1, v9

    if-gez v6, :cond_16

    cmpg-float v6, v2, v7

    if-gez v6, :cond_14

    .line 5276
    sget-object v6, Lcom/theartofdev/edmodo/cropper/f$a;->TOP:Lcom/theartofdev/edmodo/cropper/f$a;

    goto/16 :goto_2

    :cond_14
    cmpg-float v6, v2, v11

    if-gez v6, :cond_15

    .line 5278
    sget-object v6, Lcom/theartofdev/edmodo/cropper/f$a;->CENTER:Lcom/theartofdev/edmodo/cropper/f$a;

    goto/16 :goto_2

    .line 5280
    :cond_15
    sget-object v6, Lcom/theartofdev/edmodo/cropper/f$a;->BOTTOM:Lcom/theartofdev/edmodo/cropper/f$a;

    goto/16 :goto_2

    :cond_16
    cmpg-float v6, v2, v7

    if-gez v6, :cond_17

    .line 5284
    sget-object v6, Lcom/theartofdev/edmodo/cropper/f$a;->TOP_RIGHT:Lcom/theartofdev/edmodo/cropper/f$a;

    goto/16 :goto_2

    :cond_17
    cmpg-float v6, v2, v11

    if-gez v6, :cond_18

    .line 5286
    sget-object v6, Lcom/theartofdev/edmodo/cropper/f$a;->RIGHT:Lcom/theartofdev/edmodo/cropper/f$a;

    goto/16 :goto_2

    .line 5288
    :cond_18
    sget-object v6, Lcom/theartofdev/edmodo/cropper/f$a;->BOTTOM_RIGHT:Lcom/theartofdev/edmodo/cropper/f$a;

    goto/16 :goto_2

    .line 6199
    :cond_19
    iget-object v6, v3, Lcom/theartofdev/edmodo/cropper/e;->a:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget-object v7, v3, Lcom/theartofdev/edmodo/cropper/e;->a:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-static {v1, v2, v6, v7, v12}, Lcom/theartofdev/edmodo/cropper/e;->a(FFFFF)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 6200
    sget-object v6, Lcom/theartofdev/edmodo/cropper/f$a;->TOP_LEFT:Lcom/theartofdev/edmodo/cropper/f$a;

    goto/16 :goto_2

    .line 6201
    :cond_1a
    iget-object v6, v3, Lcom/theartofdev/edmodo/cropper/e;->a:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget-object v7, v3, Lcom/theartofdev/edmodo/cropper/e;->a:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-static {v1, v2, v6, v7, v12}, Lcom/theartofdev/edmodo/cropper/e;->a(FFFFF)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 6203
    sget-object v6, Lcom/theartofdev/edmodo/cropper/f$a;->TOP_RIGHT:Lcom/theartofdev/edmodo/cropper/f$a;

    goto/16 :goto_2

    .line 6204
    :cond_1b
    iget-object v6, v3, Lcom/theartofdev/edmodo/cropper/e;->a:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget-object v7, v3, Lcom/theartofdev/edmodo/cropper/e;->a:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    invoke-static {v1, v2, v6, v7, v12}, Lcom/theartofdev/edmodo/cropper/e;->a(FFFFF)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 6206
    sget-object v6, Lcom/theartofdev/edmodo/cropper/f$a;->BOTTOM_LEFT:Lcom/theartofdev/edmodo/cropper/f$a;

    goto/16 :goto_2

    .line 6207
    :cond_1c
    iget-object v6, v3, Lcom/theartofdev/edmodo/cropper/e;->a:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget-object v7, v3, Lcom/theartofdev/edmodo/cropper/e;->a:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    invoke-static {v1, v2, v6, v7, v12}, Lcom/theartofdev/edmodo/cropper/e;->a(FFFFF)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 6209
    sget-object v6, Lcom/theartofdev/edmodo/cropper/f$a;->BOTTOM_RIGHT:Lcom/theartofdev/edmodo/cropper/f$a;

    goto/16 :goto_2

    .line 6210
    :cond_1d
    iget-object v6, v3, Lcom/theartofdev/edmodo/cropper/e;->a:Landroid/graphics/RectF;

    iget v8, v6, Landroid/graphics/RectF;->left:F

    iget-object v6, v3, Lcom/theartofdev/edmodo/cropper/e;->a:Landroid/graphics/RectF;

    iget v9, v6, Landroid/graphics/RectF;->top:F

    iget-object v6, v3, Lcom/theartofdev/edmodo/cropper/e;->a:Landroid/graphics/RectF;

    iget v10, v6, Landroid/graphics/RectF;->right:F

    iget-object v6, v3, Lcom/theartofdev/edmodo/cropper/e;->a:Landroid/graphics/RectF;

    iget v11, v6, Landroid/graphics/RectF;->bottom:F

    move v6, v1

    move v7, v2

    invoke-static/range {v6 .. v11}, Lcom/theartofdev/edmodo/cropper/e;->c(FFFFFF)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 6212
    invoke-virtual {v3}, Lcom/theartofdev/edmodo/cropper/e;->g()Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 6213
    sget-object v6, Lcom/theartofdev/edmodo/cropper/f$a;->CENTER:Lcom/theartofdev/edmodo/cropper/f$a;

    goto/16 :goto_2

    .line 6214
    :cond_1e
    iget-object v6, v3, Lcom/theartofdev/edmodo/cropper/e;->a:Landroid/graphics/RectF;

    iget v8, v6, Landroid/graphics/RectF;->left:F

    iget-object v6, v3, Lcom/theartofdev/edmodo/cropper/e;->a:Landroid/graphics/RectF;

    iget v9, v6, Landroid/graphics/RectF;->right:F

    iget-object v6, v3, Lcom/theartofdev/edmodo/cropper/e;->a:Landroid/graphics/RectF;

    iget v10, v6, Landroid/graphics/RectF;->top:F

    move v6, v1

    move v7, v2

    move v11, v12

    invoke-static/range {v6 .. v11}, Lcom/theartofdev/edmodo/cropper/e;->a(FFFFFF)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 6216
    sget-object v6, Lcom/theartofdev/edmodo/cropper/f$a;->TOP:Lcom/theartofdev/edmodo/cropper/f$a;

    goto/16 :goto_2

    .line 6217
    :cond_1f
    iget-object v6, v3, Lcom/theartofdev/edmodo/cropper/e;->a:Landroid/graphics/RectF;

    iget v8, v6, Landroid/graphics/RectF;->left:F

    iget-object v6, v3, Lcom/theartofdev/edmodo/cropper/e;->a:Landroid/graphics/RectF;

    iget v9, v6, Landroid/graphics/RectF;->right:F

    iget-object v6, v3, Lcom/theartofdev/edmodo/cropper/e;->a:Landroid/graphics/RectF;

    iget v10, v6, Landroid/graphics/RectF;->bottom:F

    move v6, v1

    move v7, v2

    move v11, v12

    invoke-static/range {v6 .. v11}, Lcom/theartofdev/edmodo/cropper/e;->a(FFFFFF)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 6219
    sget-object v6, Lcom/theartofdev/edmodo/cropper/f$a;->BOTTOM:Lcom/theartofdev/edmodo/cropper/f$a;

    goto :goto_2

    .line 6220
    :cond_20
    iget-object v6, v3, Lcom/theartofdev/edmodo/cropper/e;->a:Landroid/graphics/RectF;

    iget v8, v6, Landroid/graphics/RectF;->left:F

    iget-object v6, v3, Lcom/theartofdev/edmodo/cropper/e;->a:Landroid/graphics/RectF;

    iget v9, v6, Landroid/graphics/RectF;->top:F

    iget-object v6, v3, Lcom/theartofdev/edmodo/cropper/e;->a:Landroid/graphics/RectF;

    iget v10, v6, Landroid/graphics/RectF;->bottom:F

    move v6, v1

    move v7, v2

    move v11, v12

    invoke-static/range {v6 .. v11}, Lcom/theartofdev/edmodo/cropper/e;->b(FFFFFF)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 6222
    sget-object v6, Lcom/theartofdev/edmodo/cropper/f$a;->LEFT:Lcom/theartofdev/edmodo/cropper/f$a;

    goto :goto_2

    .line 6223
    :cond_21
    iget-object v6, v3, Lcom/theartofdev/edmodo/cropper/e;->a:Landroid/graphics/RectF;

    iget v8, v6, Landroid/graphics/RectF;->right:F

    iget-object v6, v3, Lcom/theartofdev/edmodo/cropper/e;->a:Landroid/graphics/RectF;

    iget v9, v6, Landroid/graphics/RectF;->top:F

    iget-object v6, v3, Lcom/theartofdev/edmodo/cropper/e;->a:Landroid/graphics/RectF;

    iget v10, v6, Landroid/graphics/RectF;->bottom:F

    move v6, v1

    move v7, v2

    move v11, v12

    invoke-static/range {v6 .. v11}, Lcom/theartofdev/edmodo/cropper/e;->b(FFFFFF)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 6225
    sget-object v6, Lcom/theartofdev/edmodo/cropper/f$a;->RIGHT:Lcom/theartofdev/edmodo/cropper/f$a;

    goto :goto_2

    .line 6226
    :cond_22
    iget-object v6, v3, Lcom/theartofdev/edmodo/cropper/e;->a:Landroid/graphics/RectF;

    iget v8, v6, Landroid/graphics/RectF;->left:F

    iget-object v6, v3, Lcom/theartofdev/edmodo/cropper/e;->a:Landroid/graphics/RectF;

    iget v9, v6, Landroid/graphics/RectF;->top:F

    iget-object v6, v3, Lcom/theartofdev/edmodo/cropper/e;->a:Landroid/graphics/RectF;

    iget v10, v6, Landroid/graphics/RectF;->right:F

    iget-object v6, v3, Lcom/theartofdev/edmodo/cropper/e;->a:Landroid/graphics/RectF;

    iget v11, v6, Landroid/graphics/RectF;->bottom:F

    move v6, v1

    move v7, v2

    invoke-static/range {v6 .. v11}, Lcom/theartofdev/edmodo/cropper/e;->c(FFFFFF)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 6228
    invoke-virtual {v3}, Lcom/theartofdev/edmodo/cropper/e;->g()Z

    move-result v6

    if-nez v6, :cond_23

    .line 6229
    sget-object v6, Lcom/theartofdev/edmodo/cropper/f$a;->CENTER:Lcom/theartofdev/edmodo/cropper/f$a;

    goto :goto_2

    :cond_23
    move-object v6, v4

    :goto_2
    if-eqz v6, :cond_24

    .line 5180
    new-instance v4, Lcom/theartofdev/edmodo/cropper/f;

    invoke-direct {v4, v6, v3, v1, v2}, Lcom/theartofdev/edmodo/cropper/f;-><init>(Lcom/theartofdev/edmodo/cropper/f$a;Lcom/theartofdev/edmodo/cropper/e;FF)V

    .line 4845
    :cond_24
    iput-object v4, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->y:Lcom/theartofdev/edmodo/cropper/f;

    if-eqz v4, :cond_25

    .line 4847
    invoke-virtual/range {p0 .. p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->invalidate()V

    :cond_25
    return v5

    :cond_26
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public setAspectRatioX(I)V
    .locals 1

    if-lez p1, :cond_1

    .line 276
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->c:I

    if-eq v0, p1, :cond_0

    .line 277
    iput p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->c:I

    int-to-float p1, p1

    .line 278
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->d:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->z:F

    .line 280
    iget-boolean p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->B:Z

    if-eqz p1, :cond_0

    .line 281
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->c()V

    .line 282
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->invalidate()V

    :cond_0
    return-void

    .line 274
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot set aspect ratio value to a number less than or equal to 0."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAspectRatioY(I)V
    .locals 1

    if-lez p1, :cond_1

    .line 301
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->d:I

    if-eq v0, p1, :cond_0

    .line 302
    iput p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->d:I

    .line 303
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->c:I

    int-to-float v0, v0

    int-to-float p1, p1

    div-float/2addr v0, p1

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->z:F

    .line 305
    iget-boolean p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->B:Z

    if-eqz p1, :cond_0

    .line 306
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->c()V

    .line 307
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->invalidate()V

    :cond_0
    return-void

    .line 299
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot set aspect ratio value to a number less than or equal to 0."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBounds([FII)V
    .locals 4

    if-eqz p1, :cond_0

    .line 174
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->p:[F

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 176
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->p:[F

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([FF)V

    goto :goto_0

    .line 178
    :cond_1
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->p:[F

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    :goto_0
    iput p2, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->r:I

    .line 181
    iput p3, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->s:I

    .line 182
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->a:Lcom/theartofdev/edmodo/cropper/e;

    invoke-virtual {p1}, Lcom/theartofdev/edmodo/cropper/e;->a()Landroid/graphics/RectF;

    move-result-object p1

    .line 183
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p2

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    cmpl-float p1, p1, v0

    if-nez p1, :cond_3

    .line 184
    :cond_2
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->c()V

    :cond_3
    return-void
.end method

.method public setCropShape(Lcom/theartofdev/edmodo/cropper/CropImageView$b;)V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->e:Lcom/theartofdev/edmodo/cropper/CropImageView$b;

    if-eq v0, p1, :cond_3

    .line 206
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->e:Lcom/theartofdev/edmodo/cropper/CropImageView$b;

    .line 207
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-gt p1, v0, :cond_2

    .line 208
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->e:Lcom/theartofdev/edmodo/cropper/CropImageView$b;

    sget-object v0, Lcom/theartofdev/edmodo/cropper/CropImageView$b;->OVAL:Lcom/theartofdev/edmodo/cropper/CropImageView$b;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 209
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getLayerType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->C:Ljava/lang/Integer;

    .line 210
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 212
    invoke-virtual {p0, v0, v1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    .line 214
    :cond_0
    iput-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->C:Ljava/lang/Integer;

    goto :goto_0

    .line 216
    :cond_1
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->C:Ljava/lang/Integer;

    if-eqz p1, :cond_2

    .line 218
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, v1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 219
    iput-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->C:Ljava/lang/Integer;

    .line 222
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->invalidate()V

    :cond_3
    return-void
.end method

.method public setCropWindowChangeListener(Lcom/theartofdev/edmodo/cropper/CropOverlayView$a;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->i:Lcom/theartofdev/edmodo/cropper/CropOverlayView$a;

    return-void
.end method

.method public setCropWindowLimits(FFFF)V
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->a:Lcom/theartofdev/edmodo/cropper/e;

    .line 2134
    iput p1, v0, Lcom/theartofdev/edmodo/cropper/e;->d:F

    .line 2135
    iput p2, v0, Lcom/theartofdev/edmodo/cropper/e;->e:F

    .line 2136
    iput p3, v0, Lcom/theartofdev/edmodo/cropper/e;->j:F

    .line 2137
    iput p4, v0, Lcom/theartofdev/edmodo/cropper/e;->k:F

    return-void
.end method

.method public setCropWindowRect(Landroid/graphics/RectF;)V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->a:Lcom/theartofdev/edmodo/cropper/e;

    invoke-virtual {v0, p1}, Lcom/theartofdev/edmodo/cropper/e;->a(Landroid/graphics/RectF;)V

    return-void
.end method

.method public setFixedAspectRatio(Z)V
    .locals 1

    .line 257
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->b:Z

    if-eq v0, p1, :cond_0

    .line 258
    iput-boolean p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->b:Z

    .line 259
    iget-boolean p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->B:Z

    if-eqz p1, :cond_0

    .line 260
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->c()V

    .line 261
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setGuidelines(Lcom/theartofdev/edmodo/cropper/CropImageView$c;)V
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->A:Lcom/theartofdev/edmodo/cropper/CropImageView$c;

    if-eq v0, p1, :cond_0

    .line 237
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->A:Lcom/theartofdev/edmodo/cropper/CropImageView$c;

    .line 238
    iget-boolean p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->B:Z

    if-eqz p1, :cond_0

    .line 239
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setInitialAttributeValues(Lcom/theartofdev/edmodo/cropper/CropImageOptions;)V
    .locals 2

    .line 389
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->a:Lcom/theartofdev/edmodo/cropper/e;

    .line 2142
    iget v1, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->minCropWindowWidth:I

    int-to-float v1, v1

    iput v1, v0, Lcom/theartofdev/edmodo/cropper/e;->b:F

    .line 2143
    iget v1, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->minCropWindowHeight:I

    int-to-float v1, v1

    iput v1, v0, Lcom/theartofdev/edmodo/cropper/e;->c:F

    .line 2144
    iget v1, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->minCropResultWidth:I

    int-to-float v1, v1

    iput v1, v0, Lcom/theartofdev/edmodo/cropper/e;->f:F

    .line 2145
    iget v1, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->minCropResultHeight:I

    int-to-float v1, v1

    iput v1, v0, Lcom/theartofdev/edmodo/cropper/e;->g:F

    .line 2146
    iget v1, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->maxCropResultWidth:I

    int-to-float v1, v1

    iput v1, v0, Lcom/theartofdev/edmodo/cropper/e;->h:F

    .line 2147
    iget v1, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->maxCropResultHeight:I

    int-to-float v1, v1

    iput v1, v0, Lcom/theartofdev/edmodo/cropper/e;->i:F

    .line 391
    iget-object v0, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->cropShape:Lcom/theartofdev/edmodo/cropper/CropImageView$b;

    invoke-virtual {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setCropShape(Lcom/theartofdev/edmodo/cropper/CropImageView$b;)V

    .line 393
    iget v0, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->snapRadius:F

    invoke-virtual {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setSnapRadius(F)V

    .line 395
    iget-object v0, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->guidelines:Lcom/theartofdev/edmodo/cropper/CropImageView$c;

    invoke-virtual {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setGuidelines(Lcom/theartofdev/edmodo/cropper/CropImageView$c;)V

    .line 397
    iget-boolean v0, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->fixAspectRatio:Z

    invoke-virtual {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setFixedAspectRatio(Z)V

    .line 399
    iget v0, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->aspectRatioX:I

    invoke-virtual {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setAspectRatioX(I)V

    .line 401
    iget v0, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->aspectRatioY:I

    invoke-virtual {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setAspectRatioY(I)V

    .line 403
    iget-boolean v0, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->multiTouchEnabled:Z

    invoke-virtual {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->a(Z)Z

    .line 405
    iget v0, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->touchRadius:F

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->w:F

    .line 407
    iget v0, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->initialCropWindowPaddingRatio:F

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->v:F

    .line 409
    iget v0, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderLineThickness:F

    iget v1, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderLineColor:I

    invoke-static {v0, v1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->a(FI)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->k:Landroid/graphics/Paint;

    .line 411
    iget v0, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderCornerOffset:F

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->t:F

    .line 412
    iget v0, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderCornerLength:F

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->u:F

    .line 413
    iget v0, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderCornerThickness:F

    iget v1, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderCornerColor:I

    .line 414
    invoke-static {v0, v1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->a(FI)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->l:Landroid/graphics/Paint;

    .line 416
    iget v0, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->guidelinesThickness:F

    iget v1, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->guidelinesColor:I

    invoke-static {v0, v1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->a(FI)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->m:Landroid/graphics/Paint;

    .line 418
    iget p1, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->backgroundColor:I

    .line 2792
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 2793
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 418
    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->n:Landroid/graphics/Paint;

    return-void
.end method

.method public setInitialCropWindowRect(Landroid/graphics/Rect;)V
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->f:Landroid/graphics/Rect;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/theartofdev/edmodo/cropper/c;->a:Landroid/graphics/Rect;

    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 367
    iget-boolean p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->B:Z

    if-eqz p1, :cond_1

    .line 368
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->c()V

    .line 369
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->invalidate()V

    const/4 p1, 0x0

    .line 370
    invoke-direct {p0, p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->b(Z)V

    :cond_1
    return-void
.end method

.method public setMaxCropResultSize(II)V
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->a:Lcom/theartofdev/edmodo/cropper/e;

    int-to-float p1, p1

    .line 2124
    iput p1, v0, Lcom/theartofdev/edmodo/cropper/e;->h:F

    int-to-float p1, p2

    .line 2125
    iput p1, v0, Lcom/theartofdev/edmodo/cropper/e;->i:F

    return-void
.end method

.method public setMinCropResultSize(II)V
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->a:Lcom/theartofdev/edmodo/cropper/e;

    int-to-float p1, p1

    .line 2115
    iput p1, v0, Lcom/theartofdev/edmodo/cropper/e;->f:F

    int-to-float p1, p2

    .line 2116
    iput p1, v0, Lcom/theartofdev/edmodo/cropper/e;->g:F

    return-void
.end method

.method public setSnapRadius(F)V
    .locals 0

    .line 318
    iput p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->x:F

    return-void
.end method
