.class final Landroidx/constraintlayout/motion/widget/MotionLayout$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/MotionLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:[F

.field b:[I

.field c:[F

.field d:Landroid/graphics/Path;

.field e:Landroid/graphics/Paint;

.field f:Landroid/graphics/Paint;

.field g:Landroid/graphics/Paint;

.field h:Landroid/graphics/Paint;

.field i:Landroid/graphics/Paint;

.field final j:I

.field final k:I

.field final l:I

.field final m:I

.field final n:I

.field o:Landroid/graphics/DashPathEffect;

.field p:I

.field q:Landroid/graphics/Rect;

.field r:Z

.field s:I

.field final synthetic t:Landroidx/constraintlayout/motion/widget/MotionLayout;

.field private u:[F


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V
    .locals 6

    .line 2568
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->t:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x55cd

    .line 2557
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->j:I

    const v1, -0x1f8a66

    .line 2558
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->k:I

    const v2, -0xcc5600

    .line 2559
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->l:I

    const/high16 v3, 0x77000000

    .line 2560
    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->m:I

    const/16 v3, 0xa

    .line 2561
    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->n:I

    .line 2564
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->q:Landroid/graphics/Rect;

    const/4 v3, 0x0

    .line 2565
    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->r:Z

    const/4 v3, 0x1

    .line 2566
    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->s:I

    .line 2569
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->e:Landroid/graphics/Paint;

    .line 2570
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2571
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->e:Landroid/graphics/Paint;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 2572
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->e:Landroid/graphics/Paint;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2573
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->e:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2575
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->f:Landroid/graphics/Paint;

    .line 2576
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2577
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2578
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2579
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2581
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->g:Landroid/graphics/Paint;

    .line 2582
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2583
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2584
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2585
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2587
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->h:Landroid/graphics/Paint;

    .line 2588
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2589
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2590
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->h:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41400000    # 12.0f

    mul-float p1, p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    const/16 p1, 0x8

    new-array p1, p1, [F

    .line 2591
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->u:[F

    .line 2592
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->i:Landroid/graphics/Paint;

    .line 2593
    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2594
    new-instance p1, Landroid/graphics/DashPathEffect;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->o:Landroid/graphics/DashPathEffect;

    .line 2595
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    const/16 p1, 0x64

    new-array p1, p1, [F

    .line 2596
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->c:[F

    const/16 p1, 0x32

    new-array p1, p1, [I

    .line 2597
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->b:[I

    .line 2599
    iget-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->r:Z

    if-eqz p1, :cond_0

    .line 2600
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->e:Landroid/graphics/Paint;

    const/high16 v0, 0x41000000    # 8.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2601
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2602
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 p1, 0x4

    .line 2603
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->s:I

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x40800000    # 4.0f
        0x41000000    # 8.0f
    .end array-data
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 2

    .line 2677
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->a:[F

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;FF)V
    .locals 12

    .line 2770
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->a:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    .line 2771
    aget v3, v0, v2

    .line 2772
    array-length v4, v0

    add-int/lit8 v4, v4, -0x2

    aget v4, v0, v4

    .line 2773
    array-length v5, v0

    sub-int/2addr v5, v2

    aget v0, v0, v5

    sub-float v2, v1, v4

    float-to-double v5, v2

    sub-float v2, v3, v0

    float-to-double v7, v2

    .line 2774
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    double-to-float v2, v5

    sub-float v5, p2, v1

    sub-float/2addr v4, v1

    mul-float v5, v5, v4

    sub-float v6, p3, v3

    sub-float/2addr v0, v3

    mul-float v6, v6, v0

    add-float/2addr v5, v6

    mul-float v6, v2, v2

    div-float/2addr v5, v6

    mul-float v4, v4, v5

    add-float v9, v1, v4

    mul-float v5, v5, v0

    add-float v10, v3, v5

    .line 2779
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    .line 2780
    invoke-virtual {v5, p2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 2781
    invoke-virtual {v5, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    sub-float v0, v9, p2

    float-to-double v0, v0

    sub-float v3, v10, p3

    float-to-double v3, v3

    .line 2782
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 2783
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v4, v0, v3

    div-float/2addr v4, v2

    float-to-int v2, v4

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2784
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->h:Landroid/graphics/Paint;

    invoke-direct {p0, v4, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->a(Ljava/lang/String;Landroid/graphics/Paint;)V

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 2785
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->q:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v6, v0, v1

    .line 2786
    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->h:Landroid/graphics/Paint;

    const/high16 v7, -0x3e600000    # -20.0f

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 2787
    iget-object v11, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->g:Landroid/graphics/Paint;

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;FFII)V
    .locals 14

    move-object v0, p0

    move-object v7, p1

    .line 2842
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v2, p4, 0x2

    int-to-float v2, v2

    sub-float v2, p2, v2

    const/high16 v8, 0x42c80000    # 100.0f

    mul-float v2, v2, v8

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->t:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getWidth()I

    move-result v3

    sub-int v3, v3, p4

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v9

    double-to-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2843
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->h:Landroid/graphics/Paint;

    invoke-direct {p0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->a(Ljava/lang/String;Landroid/graphics/Paint;)V

    const/high16 v11, 0x40000000    # 2.0f

    div-float v2, p2, v11

    .line 2844
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->q:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/4 v12, 0x0

    add-float/2addr v2, v12

    const/high16 v3, 0x41a00000    # 20.0f

    sub-float v3, p3, v3

    .line 2845
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/high16 v13, 0x3f800000    # 1.0f

    .line 2847
    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->g:Landroid/graphics/Paint;

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v5, p3

    .line 2846
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2850
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v2, p5, 0x2

    int-to-float v2, v2

    sub-float v2, p3, v2

    mul-float v2, v2, v8

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->t:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getHeight()I

    move-result v3

    sub-int v3, v3, p5

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    add-double/2addr v2, v9

    double-to-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2851
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->h:Landroid/graphics/Paint;

    invoke-direct {p0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->a(Ljava/lang/String;Landroid/graphics/Paint;)V

    div-float v2, p3, v11

    .line 2852
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->q:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a00000    # 5.0f

    add-float v3, p2, v3

    sub-float v2, v12, v2

    .line 2853
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2855
    invoke-static {v12, v13}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->g:Landroid/graphics/Paint;

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p2

    .line 2854
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;IILandroidx/constraintlayout/motion/widget/m;)V
    .locals 1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 2664
    invoke-direct {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->c(Landroid/graphics/Canvas;)V

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 2667
    invoke-direct {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->b(Landroid/graphics/Canvas;)V

    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 2670
    invoke-direct {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->d(Landroid/graphics/Canvas;)V

    .line 2672
    :cond_2
    invoke-direct {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->a(Landroid/graphics/Canvas;)V

    .line 2673
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->b(Landroid/graphics/Canvas;IILandroidx/constraintlayout/motion/widget/m;)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroidx/constraintlayout/motion/widget/m;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 2859
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->d:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x32

    if-gt v4, v5, :cond_5

    int-to-float v5, v4

    const/high16 v6, 0x42480000    # 50.0f

    div-float/2addr v5, v6

    .line 2863
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->u:[F

    const/4 v7, 0x0

    .line 5392
    invoke-virtual {v2, v5, v7}, Landroidx/constraintlayout/motion/widget/m;->a(F[F)F

    move-result v5

    .line 5393
    iget-object v7, v2, Landroidx/constraintlayout/motion/widget/m;->g:[Landroidx/constraintlayout/motion/a/b;

    aget-object v7, v7, v3

    float-to-double v8, v5

    iget-object v5, v2, Landroidx/constraintlayout/motion/widget/m;->m:[D

    invoke-virtual {v7, v8, v9, v5}, Landroidx/constraintlayout/motion/a/b;->a(D[D)V

    .line 5394
    iget-object v5, v2, Landroidx/constraintlayout/motion/widget/m;->d:Landroidx/constraintlayout/motion/widget/o;

    iget-object v7, v2, Landroidx/constraintlayout/motion/widget/m;->l:[I

    iget-object v8, v2, Landroidx/constraintlayout/motion/widget/m;->m:[D

    .line 5432
    iget v9, v5, Landroidx/constraintlayout/motion/widget/o;->f:F

    .line 5433
    iget v10, v5, Landroidx/constraintlayout/motion/widget/o;->g:F

    .line 5434
    iget v11, v5, Landroidx/constraintlayout/motion/widget/o;->h:F

    .line 5435
    iget v5, v5, Landroidx/constraintlayout/motion/widget/o;->i:F

    const/4 v12, 0x0

    .line 5450
    :goto_1
    array-length v13, v7

    const/4 v15, 0x3

    const/4 v14, 0x1

    if-ge v12, v13, :cond_4

    move v13, v4

    .line 5451
    aget-wide v3, v8, v12

    double-to-float v3, v3

    .line 5453
    aget v4, v7, v12

    if-eq v4, v14, :cond_3

    const/4 v14, 0x2

    if-eq v4, v14, :cond_2

    if-eq v4, v15, :cond_1

    const/4 v14, 0x4

    if-eq v4, v14, :cond_0

    goto :goto_2

    :cond_0
    move v5, v3

    goto :goto_2

    :cond_1
    move v11, v3

    goto :goto_2

    :cond_2
    move v10, v3

    goto :goto_2

    :cond_3
    move v9, v3

    :goto_2
    add-int/lit8 v12, v12, 0x1

    move v4, v13

    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    move v13, v4

    add-float/2addr v11, v9

    add-float/2addr v5, v10

    const/high16 v3, 0x7fc00000    # Float.NaN

    .line 5486
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    .line 5489
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    const/4 v3, 0x0

    add-float/2addr v9, v3

    add-float/2addr v10, v3

    add-float/2addr v11, v3

    add-float/2addr v5, v3

    const/4 v3, 0x0

    .line 5537
    aput v9, v6, v3

    .line 5538
    aput v10, v6, v14

    const/4 v3, 0x2

    .line 5539
    aput v11, v6, v3

    .line 5540
    aput v10, v6, v15

    const/4 v3, 0x4

    .line 5541
    aput v11, v6, v3

    const/4 v3, 0x5

    .line 5542
    aput v5, v6, v3

    const/4 v4, 0x6

    .line 5543
    aput v9, v6, v4

    const/4 v7, 0x7

    .line 5544
    aput v5, v6, v7

    .line 2864
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->d:Landroid/graphics/Path;

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->u:[F

    const/4 v8, 0x0

    aget v9, v6, v8

    aget v6, v6, v14

    invoke-virtual {v5, v9, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 2865
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->d:Landroid/graphics/Path;

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->u:[F

    const/4 v9, 0x2

    aget v9, v6, v9

    aget v6, v6, v15

    invoke-virtual {v5, v9, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2866
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->d:Landroid/graphics/Path;

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->u:[F

    const/4 v9, 0x4

    aget v9, v6, v9

    aget v3, v6, v3

    invoke-virtual {v5, v9, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2867
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->d:Landroid/graphics/Path;

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->u:[F

    aget v4, v5, v4

    aget v5, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2868
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->d:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    add-int/lit8 v4, v13, 0x1

    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2870
    :cond_5
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->e:Landroid/graphics/Paint;

    const/high16 v3, 0x44000000    # 512.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v2, 0x40000000    # 2.0f

    .line 2871
    invoke-virtual {v1, v2, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2872
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->d:Landroid/graphics/Path;

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/high16 v2, -0x40000000    # -2.0f

    .line 2874
    invoke-virtual {v1, v2, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2875
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->e:Landroid/graphics/Paint;

    const/high16 v3, -0x10000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2876
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->d:Landroid/graphics/Path;

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/graphics/Paint;)V
    .locals 3

    .line 2791
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->q:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {p2, p1, v2, v0, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    return-void
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 8

    .line 2746
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->a:[F

    const/4 v1, 0x0

    aget v3, v0, v1

    const/4 v1, 0x1

    aget v4, v0, v1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x2

    aget v5, v0, v2

    array-length v2, v0

    sub-int/2addr v2, v1

    aget v6, v0, v2

    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->g:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private b(Landroid/graphics/Canvas;FF)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 2807
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->a:[F

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    .line 2808
    aget v8, v1, v3

    .line 2809
    array-length v4, v1

    add-int/lit8 v4, v4, -0x2

    aget v4, v1, v4

    .line 2810
    array-length v5, v1

    sub-int/2addr v5, v3

    aget v9, v1, v5

    .line 2811
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 2812
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 2813
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    sub-float v3, p2, v3

    .line 2814
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v5

    sub-float v11, v5, p3

    .line 2816
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v12, 0x42c80000    # 100.0f

    mul-float v6, v3, v12

    sub-float v13, v4, v2

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    div-float/2addr v6, v13

    float-to-double v13, v6

    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    add-double/2addr v13, v15

    double-to-int v6, v13

    int-to-float v6, v6

    div-float/2addr v6, v12

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2817
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->h:Landroid/graphics/Paint;

    invoke-direct {v0, v5, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->a(Ljava/lang/String;Landroid/graphics/Paint;)V

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v3, v13

    .line 2818
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->q:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v3, v6

    add-float/2addr v3, v1

    const/high16 v1, 0x41a00000    # 20.0f

    sub-float v1, p3, v1

    .line 2819
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->h:Landroid/graphics/Paint;

    invoke-virtual {v7, v5, v3, v1, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2821
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->g:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v5, p3

    .line 2820
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2824
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    mul-float v2, v11, v12

    sub-float v3, v9, v8

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    add-double/2addr v2, v15

    double-to-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v12

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2825
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->h:Landroid/graphics/Paint;

    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->a(Ljava/lang/String;Landroid/graphics/Paint;)V

    div-float/2addr v11, v13

    .line 2826
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->q:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v11, v2

    const/high16 v2, 0x40a00000    # 5.0f

    add-float v2, p2, v2

    sub-float/2addr v10, v11

    .line 2827
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->h:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v10, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2829
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->g:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p2

    .line 2828
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private b(Landroid/graphics/Canvas;IILandroidx/constraintlayout/motion/widget/m;)V
    .locals 19

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move-object/from16 v9, p4

    .line 2683
    iget-object v0, v9, Landroidx/constraintlayout/motion/widget/m;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2684
    iget-object v0, v9, Landroidx/constraintlayout/motion/widget/m;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 2685
    iget-object v1, v9, Landroidx/constraintlayout/motion/widget/m;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    move v11, v0

    move v12, v1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    const/4 v13, 0x1

    const/4 v14, 0x1

    :goto_1
    add-int/lit8 v0, p3, -0x1

    const/4 v15, 0x2

    if-ge v14, v0, :cond_a

    const/4 v0, 0x4

    if-ne v8, v0, :cond_1

    .line 2688
    iget-object v1, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->b:[I

    add-int/lit8 v2, v14, -0x1

    aget v1, v1, v2

    if-eqz v1, :cond_9

    .line 2693
    :cond_1
    iget-object v1, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->c:[F

    mul-int/lit8 v2, v14, 0x2

    aget v5, v1, v2

    add-int/2addr v2, v13

    .line 2694
    aget v4, v1, v2

    .line 2695
    iget-object v1, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->d:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 2696
    iget-object v1, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->d:Landroid/graphics/Path;

    const/high16 v2, 0x41200000    # 10.0f

    add-float v3, v4, v2

    invoke-virtual {v1, v5, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 2697
    iget-object v1, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->d:Landroid/graphics/Path;

    add-float v3, v5, v2

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2698
    iget-object v1, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->d:Landroid/graphics/Path;

    sub-float v3, v4, v2

    invoke-virtual {v1, v5, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2699
    iget-object v1, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->d:Landroid/graphics/Path;

    sub-float v2, v5, v2

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2700
    iget-object v1, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->d:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    add-int/lit8 v1, v14, -0x1

    .line 2702
    invoke-virtual {v9, v1}, Landroidx/constraintlayout/motion/widget/m;->a(I)Landroidx/constraintlayout/motion/widget/o;

    const/4 v3, 0x3

    const/16 v16, 0x0

    if-ne v8, v0, :cond_5

    .line 2707
    iget-object v0, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->b:[I

    aget v2, v0, v1

    if-ne v2, v13, :cond_3

    sub-float v0, v5, v16

    sub-float v1, v4, v16

    .line 2708
    invoke-direct {v6, v7, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->a(Landroid/graphics/Canvas;FF)V

    :cond_2
    :goto_2
    move/from16 v17, v4

    move/from16 v18, v5

    const/4 v10, 0x3

    goto :goto_3

    .line 2709
    :cond_3
    aget v2, v0, v1

    if-ne v2, v15, :cond_4

    sub-float v0, v5, v16

    sub-float v1, v4, v16

    .line 2710
    invoke-direct {v6, v7, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->b(Landroid/graphics/Canvas;FF)V

    goto :goto_2

    .line 2711
    :cond_4
    aget v0, v0, v1

    if-ne v0, v3, :cond_2

    sub-float v2, v5, v16

    sub-float v17, v4, v16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v10, 0x3

    move/from16 v3, v17

    move/from16 v17, v4

    move v4, v11

    move/from16 v18, v5

    move v5, v12

    .line 2712
    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->a(Landroid/graphics/Canvas;FFII)V

    .line 2715
    :goto_3
    iget-object v0, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->d:Landroid/graphics/Path;

    iget-object v1, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->i:Landroid/graphics/Paint;

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_4

    :cond_5
    move/from16 v17, v4

    move/from16 v18, v5

    const/4 v10, 0x3

    :goto_4
    if-ne v8, v15, :cond_6

    sub-float v5, v18, v16

    sub-float v4, v17, v16

    .line 2718
    invoke-direct {v6, v7, v5, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->a(Landroid/graphics/Canvas;FF)V

    :cond_6
    if-ne v8, v10, :cond_7

    sub-float v5, v18, v16

    sub-float v4, v17, v16

    .line 2721
    invoke-direct {v6, v7, v5, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->b(Landroid/graphics/Canvas;FF)V

    :cond_7
    const/4 v0, 0x6

    if-ne v8, v0, :cond_8

    sub-float v2, v18, v16

    sub-float v3, v17, v16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v4, v11

    move v5, v12

    .line 2724
    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->a(Landroid/graphics/Canvas;FFII)V

    .line 2729
    :cond_8
    iget-object v0, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->d:Landroid/graphics/Path;

    iget-object v1, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->i:Landroid/graphics/Paint;

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_9
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 2732
    :cond_a
    iget-object v0, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->a:[F

    array-length v1, v0

    if-le v1, v13, :cond_b

    const/4 v1, 0x0

    .line 2734
    aget v1, v0, v1

    aget v0, v0, v13

    iget-object v2, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->f:Landroid/graphics/Paint;

    const/high16 v3, 0x41000000    # 8.0f

    invoke-virtual {v7, v1, v0, v3, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 2735
    iget-object v0, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->a:[F

    array-length v1, v0

    sub-int/2addr v1, v15

    aget v1, v0, v1

    array-length v2, v0

    sub-int/2addr v2, v13

    aget v0, v0, v2

    iget-object v2, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->f:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v0, v3, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_b
    return-void
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2753
    :goto_0
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->p:I

    if-ge v0, v3, :cond_2

    .line 2754
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->b:[I

    aget v4, v3, v0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const/4 v1, 0x1

    .line 2757
    :cond_0
    aget v3, v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 2762
    invoke-direct {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->b(Landroid/graphics/Canvas;)V

    :cond_3
    if-eqz v2, :cond_4

    .line 2765
    invoke-direct {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->d(Landroid/graphics/Canvas;)V

    :cond_4
    return-void
.end method

.method private d(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    .line 2795
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->a:[F

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    .line 2796
    aget v4, v1, v3

    .line 2797
    array-length v5, v1

    add-int/lit8 v5, v5, -0x2

    aget v5, v1, v5

    .line 2798
    array-length v6, v1

    sub-int/2addr v6, v3

    aget v1, v1, v6

    .line 2800
    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 2801
    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v9

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v10

    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->g:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    .line 2800
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2802
    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v13

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v14

    .line 2803
    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v15

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v16

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->g:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move-object/from16 v17, v1

    .line 2802
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;Ljava/util/HashMap;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Landroidx/constraintlayout/motion/widget/m;",
            ">;II)V"
        }
    .end annotation

    if-eqz p2, :cond_7

    .line 2610
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2613
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2614
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->t:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    and-int/lit8 v0, p4, 0x1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->t:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->t:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(Landroidx/constraintlayout/motion/widget/MotionLayout;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->t:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 4558
    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    .line 2615
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41200000    # 10.0f

    .line 2616
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->t:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x1e

    int-to-float v2, v2

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/high16 v1, 0x41300000    # 11.0f

    .line 2617
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->t:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x1d

    int-to-float v2, v2

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2619
    :cond_1
    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/m;

    .line 2620
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/m;->a()I

    move-result v1

    if-lez p4, :cond_3

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :cond_3
    if-eqz v1, :cond_2

    .line 2628
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->c:[F

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->b:[I

    invoke-virtual {v0, v2, v3}, Landroidx/constraintlayout/motion/widget/m;->a([F[I)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->p:I

    if-lez v1, :cond_2

    .line 2632
    div-int/lit8 v2, p3, 0x10

    .line 2633
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->a:[F

    if-eqz v3, :cond_4

    array-length v3, v3

    mul-int/lit8 v4, v2, 0x2

    if-eq v3, v4, :cond_5

    :cond_4
    mul-int/lit8 v3, v2, 0x2

    .line 2634
    new-array v3, v3, [F

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->a:[F

    .line 2635
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->d:Landroid/graphics/Path;

    .line 2638
    :cond_5
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->s:I

    int-to-float v4, v3

    int-to-float v3, v3

    invoke-virtual {p1, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2640
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->e:Landroid/graphics/Paint;

    const/high16 v4, 0x77000000

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 2641
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->i:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 2642
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->f:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 2643
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->g:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 2644
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->a:[F

    invoke-virtual {v0, v3, v2}, Landroidx/constraintlayout/motion/widget/m;->a([FI)V

    .line 2645
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->p:I

    invoke-direct {p0, p1, v1, v2, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->a(Landroid/graphics/Canvas;IILandroidx/constraintlayout/motion/widget/m;)V

    .line 2646
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->e:Landroid/graphics/Paint;

    const/16 v3, -0x55cd

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2647
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->f:Landroid/graphics/Paint;

    const v3, -0x1f8a66

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2648
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->i:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2649
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->g:Landroid/graphics/Paint;

    const v3, -0xcc5600

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2651
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->s:I

    neg-int v3, v2

    int-to-float v3, v3

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2652
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->p:I

    invoke-direct {p0, p1, v1, v2, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->a(Landroid/graphics/Canvas;IILandroidx/constraintlayout/motion/widget/m;)V

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 2654
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->a(Landroid/graphics/Canvas;Landroidx/constraintlayout/motion/widget/m;)V

    goto/16 :goto_0

    .line 2659
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_7
    :goto_1
    return-void
.end method
