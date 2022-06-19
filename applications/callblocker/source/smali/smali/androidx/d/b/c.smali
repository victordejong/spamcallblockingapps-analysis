.class public Landroidx/d/b/c;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/d/b/c$a;
    }
.end annotation


# static fields
.field private static final v:Landroid/view/animation/Interpolator;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:[F

.field private e:[F

.field private f:[F

.field private g:[F

.field private h:[I

.field private i:[I

.field private j:[I

.field private k:I

.field private l:Landroid/view/VelocityTracker;

.field private m:F

.field private n:F

.field private o:I

.field private p:I

.field private q:Landroid/widget/OverScroller;

.field private final r:Landroidx/d/b/c$a;

.field private s:Landroid/view/View;

.field private t:Z

.field private final u:Landroid/view/ViewGroup;

.field private final w:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 332
    new-instance v0, Landroidx/d/b/c$1;

    invoke-direct {v0}, Landroidx/d/b/c$1;-><init>()V

    sput-object v0, Landroidx/d/b/c;->v:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroidx/d/b/c$a;)V
    .locals 3

    .prologue
    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/4 v0, -0x1

    iput v0, p0, Landroidx/d/b/c;->c:I

    .line 340
    new-instance v0, Landroidx/d/b/c$2;

    invoke-direct {v0, p0}, Landroidx/d/b/c$2;-><init>(Landroidx/d/b/c;)V

    iput-object v0, p0, Landroidx/d/b/c;->w:Ljava/lang/Runnable;

    .line 384
    if-nez p2, :cond_0

    .line 385
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parent view may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :cond_0
    if-nez p3, :cond_1

    .line 388
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Callback may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :cond_1
    iput-object p2, p0, Landroidx/d/b/c;->u:Landroid/view/ViewGroup;

    .line 392
    iput-object p3, p0, Landroidx/d/b/c;->r:Landroidx/d/b/c$a;

    .line 394
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 395
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 396
    const/high16 v2, 0x41a00000    # 20.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroidx/d/b/c;->o:I

    .line 398
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroidx/d/b/c;->b:I

    .line 399
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroidx/d/b/c;->m:F

    .line 400
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroidx/d/b/c;->n:F

    .line 401
    new-instance v0, Landroid/widget/OverScroller;

    sget-object v1, Landroidx/d/b/c;->v:Landroid/view/animation/Interpolator;

    invoke-direct {v0, p1, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Landroidx/d/b/c;->q:Landroid/widget/OverScroller;

    .line 402
    return-void
.end method

.method private a(F)F
    .locals 2

    .prologue
    .line 694
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float v0, p1, v0

    .line 695
    const v1, 0x3ef1463b

    mul-float/2addr v0, v1

    .line 696
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private a(FFF)F
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 687
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 688
    cmpg-float v2, v1, p2

    if-gez v2, :cond_1

    move p3, v0

    .line 690
    :cond_0
    :goto_0
    return p3

    .line 689
    :cond_1
    cmpl-float v1, v1, p3

    if-lez v1, :cond_2

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    neg-float p3, p3

    goto :goto_0

    :cond_2
    move p3, p1

    .line 690
    goto :goto_0
.end method

.method private a(III)I
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 638
    if-nez p1, :cond_0

    .line 639
    const/4 v0, 0x0

    .line 656
    :goto_0
    return v0

    .line 642
    :cond_0
    iget-object v0, p0, Landroidx/d/b/c;->u:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    .line 643
    div-int/lit8 v1, v0, 0x2

    .line 644
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v0, v0

    div-float v0, v2, v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 645
    int-to-float v2, v1

    int-to-float v1, v1

    .line 646
    invoke-direct {p0, v0}, Landroidx/d/b/c;->a(F)F

    move-result v0

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    .line 649
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 650
    if-lez v1, :cond_1

    .line 651
    const/high16 v2, 0x447a0000    # 1000.0f

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    .line 656
    :goto_1
    const/16 v1, 0x258

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 653
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p3

    div-float/2addr v0, v1

    .line 654
    add-float/2addr v0, v3

    const/high16 v1, 0x43800000    # 256.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_1
.end method

.method private a(Landroid/view/View;IIII)I
    .locals 8

    .prologue
    .line 617
    iget v0, p0, Landroidx/d/b/c;->n:F

    float-to-int v0, v0

    iget v1, p0, Landroidx/d/b/c;->m:F

    float-to-int v1, v1

    invoke-direct {p0, p4, v0, v1}, Landroidx/d/b/c;->b(III)I

    move-result v2

    .line 618
    iget v0, p0, Landroidx/d/b/c;->n:F

    float-to-int v0, v0

    iget v1, p0, Landroidx/d/b/c;->m:F

    float-to-int v1, v1

    invoke-direct {p0, p5, v0, v1}, Landroidx/d/b/c;->b(III)I

    move-result v3

    .line 619
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 620
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 621
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 622
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 623
    add-int v6, v1, v5

    .line 624
    add-int v7, v0, v4

    .line 626
    if-eqz v2, :cond_0

    int-to-float v0, v1

    int-to-float v1, v6

    div-float/2addr v0, v1

    move v1, v0

    .line 628
    :goto_0
    if-eqz v3, :cond_1

    int-to-float v0, v5

    int-to-float v4, v6

    div-float/2addr v0, v4

    .line 631
    :goto_1
    iget-object v4, p0, Landroidx/d/b/c;->r:Landroidx/d/b/c$a;

    invoke-virtual {v4, p1}, Landroidx/d/b/c$a;->a(Landroid/view/View;)I

    move-result v4

    invoke-direct {p0, p2, v2, v4}, Landroidx/d/b/c;->a(III)I

    move-result v2

    .line 632
    iget-object v4, p0, Landroidx/d/b/c;->r:Landroidx/d/b/c$a;

    invoke-virtual {v4, p1}, Landroidx/d/b/c$a;->b(Landroid/view/View;)I

    move-result v4

    invoke-direct {p0, p3, v3, v4}, Landroidx/d/b/c;->a(III)I

    move-result v3

    .line 634
    int-to-float v2, v2

    mul-float/2addr v1, v2

    int-to-float v2, v3

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    .line 626
    :cond_0
    int-to-float v0, v0

    int-to-float v1, v7

    div-float/2addr v0, v1

    move v1, v0

    goto :goto_0

    .line 628
    :cond_1
    int-to-float v0, v4

    int-to-float v4, v7

    div-float/2addr v0, v4

    goto :goto_1
.end method

.method public static a(Landroid/view/ViewGroup;FLandroidx/d/b/c$a;)Landroidx/d/b/c;
    .locals 3

    .prologue
    .line 369
    invoke-static {p0, p2}, Landroidx/d/b/c;->a(Landroid/view/ViewGroup;Landroidx/d/b/c$a;)Landroidx/d/b/c;

    move-result-object v0

    .line 370
    iget v1, v0, Landroidx/d/b/c;->b:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, p1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroidx/d/b/c;->b:I

    .line 371
    return-object v0
.end method

.method public static a(Landroid/view/ViewGroup;Landroidx/d/b/c$a;)Landroidx/d/b/c;
    .locals 2

    .prologue
    .line 355
    new-instance v0, Landroidx/d/b/c;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Landroidx/d/b/c;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroidx/d/b/c$a;)V

    return-object v0
.end method

.method private a(FF)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 779
    iput-boolean v3, p0, Landroidx/d/b/c;->t:Z

    .line 780
    iget-object v0, p0, Landroidx/d/b/c;->r:Landroidx/d/b/c$a;

    iget-object v1, p0, Landroidx/d/b/c;->s:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p2}, Landroidx/d/b/c$a;->a(Landroid/view/View;FF)V

    .line 781
    iput-boolean v2, p0, Landroidx/d/b/c;->t:Z

    .line 783
    iget v0, p0, Landroidx/d/b/c;->a:I

    if-ne v0, v3, :cond_0

    .line 785
    invoke-virtual {p0, v2}, Landroidx/d/b/c;->b(I)V

    .line 787
    :cond_0
    return-void
.end method

.method private a(FFI)V
    .locals 3

    .prologue
    .line 848
    invoke-direct {p0, p3}, Landroidx/d/b/c;->d(I)V

    .line 849
    iget-object v0, p0, Landroidx/d/b/c;->d:[F

    iget-object v1, p0, Landroidx/d/b/c;->f:[F

    aput p1, v1, p3

    aput p1, v0, p3

    .line 850
    iget-object v0, p0, Landroidx/d/b/c;->e:[F

    iget-object v1, p0, Landroidx/d/b/c;->g:[F

    aput p2, v1, p3

    aput p2, v0, p3

    .line 851
    iget-object v0, p0, Landroidx/d/b/c;->h:[I

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-direct {p0, v1, v2}, Landroidx/d/b/c;->d(II)I

    move-result v1

    aput v1, v0, p3

    .line 852
    iget v0, p0, Landroidx/d/b/c;->k:I

    const/4 v1, 0x1

    shl-int/2addr v1, p3

    or-int/2addr v0, v1

    iput v0, p0, Landroidx/d/b/c;->k:I

    .line 853
    return-void
.end method

.method private a(FFII)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1276
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1277
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 1279
    iget-object v3, p0, Landroidx/d/b/c;->h:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-ne v3, p4, :cond_0

    iget v3, p0, Landroidx/d/b/c;->p:I

    and-int/2addr v3, p4

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroidx/d/b/c;->j:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-eq v3, p4, :cond_0

    iget-object v3, p0, Landroidx/d/b/c;->i:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-eq v3, p4, :cond_0

    iget v3, p0, Landroidx/d/b/c;->b:I

    int-to-float v3, v3

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_1

    iget v3, p0, Landroidx/d/b/c;->b:I

    int-to-float v3, v3

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_1

    .line 1289
    :cond_0
    :goto_0
    return v0

    .line 1285
    :cond_1
    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    cmpg-float v2, v1, v2

    if-gez v2, :cond_2

    iget-object v2, p0, Landroidx/d/b/c;->r:Landroidx/d/b/c$a;

    invoke-virtual {v2, p4}, Landroidx/d/b/c$a;->b(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1286
    iget-object v1, p0, Landroidx/d/b/c;->j:[I

    aget v2, v1, p3

    or-int/2addr v2, p4

    aput v2, v1, p3

    goto :goto_0

    .line 1289
    :cond_2
    iget-object v2, p0, Landroidx/d/b/c;->i:[I

    aget v2, v2, p3

    and-int/2addr v2, p4

    if-nez v2, :cond_0

    iget v2, p0, Landroidx/d/b/c;->b:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(IIII)Z
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 597
    iget-object v1, p0, Landroidx/d/b/c;->s:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v7

    .line 598
    iget-object v1, p0, Landroidx/d/b/c;->s:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    .line 599
    sub-int v2, p1, v7

    .line 600
    sub-int v3, p2, v6

    .line 602
    if-nez v2, :cond_0

    if-nez v3, :cond_0

    .line 604
    iget-object v1, p0, Landroidx/d/b/c;->q:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 605
    invoke-virtual {p0, v0}, Landroidx/d/b/c;->b(I)V

    .line 613
    :goto_0
    return v0

    .line 609
    :cond_0
    iget-object v1, p0, Landroidx/d/b/c;->s:Landroid/view/View;

    move-object v0, p0

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/d/b/c;->a(Landroid/view/View;IIII)I

    move-result v9

    .line 610
    iget-object v4, p0, Landroidx/d/b/c;->q:Landroid/widget/OverScroller;

    move v5, v7

    move v7, v2

    move v8, v3

    invoke-virtual/range {v4 .. v9}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 612
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidx/d/b/c;->b(I)V

    .line 613
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Landroid/view/View;FF)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1303
    if-nez p1, :cond_1

    move v1, v2

    .line 1316
    :cond_0
    :goto_0
    return v1

    .line 1306
    :cond_1
    iget-object v0, p0, Landroidx/d/b/c;->r:Landroidx/d/b/c$a;

    invoke-virtual {v0, p1}, Landroidx/d/b/c$a;->a(Landroid/view/View;)I

    move-result v0

    if-lez v0, :cond_2

    move v0, v1

    .line 1307
    :goto_1
    iget-object v3, p0, Landroidx/d/b/c;->r:Landroidx/d/b/c$a;

    invoke-virtual {v3, p1}, Landroidx/d/b/c$a;->b(Landroid/view/View;)I

    move-result v3

    if-lez v3, :cond_3

    move v3, v1

    .line 1309
    :goto_2
    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    .line 1310
    mul-float v0, p2, p2

    mul-float v3, p3, p3

    add-float/2addr v0, v3

    iget v3, p0, Landroidx/d/b/c;->b:I

    iget v4, p0, Landroidx/d/b/c;->b:I

    mul-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1306
    goto :goto_1

    :cond_3
    move v3, v2

    .line 1307
    goto :goto_2

    .line 1311
    :cond_4
    if-eqz v0, :cond_5

    .line 1312
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Landroidx/d/b/c;->b:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_0

    move v1, v2

    goto :goto_0

    .line 1313
    :cond_5
    if-eqz v3, :cond_6

    .line 1314
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Landroidx/d/b/c;->b:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_6
    move v1, v2

    .line 1316
    goto :goto_0
.end method

.method private b(III)I
    .locals 1

    .prologue
    .line 670
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 671
    if-ge v0, p2, :cond_1

    const/4 p3, 0x0

    .line 673
    :cond_0
    :goto_0
    return p3

    .line 672
    :cond_1
    if-le v0, p3, :cond_2

    if-gtz p1, :cond_0

    neg-int p3, p3

    goto :goto_0

    :cond_2
    move p3, p1

    .line 673
    goto :goto_0
.end method

.method private b(FFI)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1255
    const/4 v1, 0x0

    .line 1256
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/d/b/c;->a(FFII)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1259
    :goto_0
    const/4 v1, 0x4

    invoke-direct {p0, p2, p1, p3, v1}, Landroidx/d/b/c;->a(FFII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1260
    or-int/lit8 v0, v0, 0x4

    .line 1262
    :cond_0
    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, p3, v1}, Landroidx/d/b/c;->a(FFII)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1263
    or-int/lit8 v0, v0, 0x2

    .line 1265
    :cond_1
    const/16 v1, 0x8

    invoke-direct {p0, p2, p1, p3, v1}, Landroidx/d/b/c;->a(FFII)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1266
    or-int/lit8 v0, v0, 0x8

    .line 1269
    :cond_2
    if-eqz v0, :cond_3

    .line 1270
    iget-object v1, p0, Landroidx/d/b/c;->i:[I

    aget v2, v1, p3

    or-int/2addr v2, v0

    aput v2, v1, p3

    .line 1271
    iget-object v1, p0, Landroidx/d/b/c;->r:Landroidx/d/b/c$a;

    invoke-virtual {v1, v0, p3}, Landroidx/d/b/c$a;->b(II)V

    .line 1273
    :cond_3
    return-void

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private b(IIII)V
    .locals 6

    .prologue
    .line 1424
    .line 1426
    iget-object v0, p0, Landroidx/d/b/c;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 1427
    iget-object v1, p0, Landroidx/d/b/c;->s:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 1428
    if-eqz p3, :cond_3

    .line 1429
    iget-object v2, p0, Landroidx/d/b/c;->r:Landroidx/d/b/c$a;

    iget-object v3, p0, Landroidx/d/b/c;->s:Landroid/view/View;

    invoke-virtual {v2, v3, p1, p3}, Landroidx/d/b/c$a;->a(Landroid/view/View;II)I

    move-result v2

    .line 1430
    iget-object v3, p0, Landroidx/d/b/c;->s:Landroid/view/View;

    sub-int v4, v2, v0

    invoke-static {v3, v4}, Landroidx/core/h/u;->f(Landroid/view/View;I)V

    .line 1432
    :goto_0
    if-eqz p4, :cond_2

    .line 1433
    iget-object v3, p0, Landroidx/d/b/c;->r:Landroidx/d/b/c$a;

    iget-object v4, p0, Landroidx/d/b/c;->s:Landroid/view/View;

    invoke-virtual {v3, v4, p2, p4}, Landroidx/d/b/c$a;->b(Landroid/view/View;II)I

    move-result v3

    .line 1434
    iget-object v4, p0, Landroidx/d/b/c;->s:Landroid/view/View;

    sub-int v5, v3, v1

    invoke-static {v4, v5}, Landroidx/core/h/u;->e(Landroid/view/View;I)V

    .line 1437
    :goto_1
    if-nez p3, :cond_0

    if-eqz p4, :cond_1

    .line 1438
    :cond_0
    sub-int v4, v2, v0

    .line 1439
    sub-int v5, v3, v1

    .line 1440
    iget-object v0, p0, Landroidx/d/b/c;->r:Landroidx/d/b/c$a;

    iget-object v1, p0, Landroidx/d/b/c;->s:Landroid/view/View;

    invoke-virtual/range {v0 .. v5}, Landroidx/d/b/c$a;->a(Landroid/view/View;IIII)V

    .line 1443
    :cond_1
    return-void

    :cond_2
    move v3, p2

    goto :goto_1

    :cond_3
    move v2, p1

    goto :goto_0
.end method

.method private c(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 804
    iget-object v0, p0, Landroidx/d/b/c;->d:[F

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/d/b/c;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 815
    :cond_0
    :goto_0
    return-void

    .line 807
    :cond_1
    iget-object v0, p0, Landroidx/d/b/c;->d:[F

    aput v1, v0, p1

    .line 808
    iget-object v0, p0, Landroidx/d/b/c;->e:[F

    aput v1, v0, p1

    .line 809
    iget-object v0, p0, Landroidx/d/b/c;->f:[F

    aput v1, v0, p1

    .line 810
    iget-object v0, p0, Landroidx/d/b/c;->g:[F

    aput v1, v0, p1

    .line 811
    iget-object v0, p0, Landroidx/d/b/c;->h:[I

    aput v2, v0, p1

    .line 812
    iget-object v0, p0, Landroidx/d/b/c;->i:[I

    aput v2, v0, p1

    .line 813
    iget-object v0, p0, Landroidx/d/b/c;->j:[I

    aput v2, v0, p1

    .line 814
    iget v0, p0, Landroidx/d/b/c;->k:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroidx/d/b/c;->k:I

    goto :goto_0
.end method

.method private c(Landroid/view/MotionEvent;)V
    .locals 6

    .prologue
    .line 856
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 857
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 858
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 860
    invoke-direct {p0, v2}, Landroidx/d/b/c;->e(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 857
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 863
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 864
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 865
    iget-object v5, p0, Landroidx/d/b/c;->f:[F

    aput v3, v5, v2

    .line 866
    iget-object v3, p0, Landroidx/d/b/c;->g:[F

    aput v4, v3, v2

    goto :goto_1

    .line 868
    :cond_1
    return-void
.end method

.method private d(II)I
    .locals 3

    .prologue
    .line 1499
    const/4 v0, 0x0

    .line 1501
    iget-object v1, p0, Landroidx/d/b/c;->u:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    iget v2, p0, Landroidx/d/b/c;->o:I

    add-int/2addr v1, v2

    if-ge p1, v1, :cond_0

    const/4 v0, 0x1

    .line 1502
    :cond_0
    iget-object v1, p0, Landroidx/d/b/c;->u:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    iget v2, p0, Landroidx/d/b/c;->o:I

    add-int/2addr v1, v2

    if-ge p2, v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    .line 1503
    :cond_1
    iget-object v1, p0, Landroidx/d/b/c;->u:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    iget v2, p0, Landroidx/d/b/c;->o:I

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_2

    or-int/lit8 v0, v0, 0x2

    .line 1504
    :cond_2
    iget-object v1, p0, Landroidx/d/b/c;->u:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    iget v2, p0, Landroidx/d/b/c;->o:I

    sub-int/2addr v1, v2

    if-le p2, v1, :cond_3

    or-int/lit8 v0, v0, 0x8

    .line 1506
    :cond_3
    return v0
.end method

.method private d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 790
    iget-object v0, p0, Landroidx/d/b/c;->d:[F

    if-nez v0, :cond_0

    .line 801
    :goto_0
    return-void

    .line 793
    :cond_0
    iget-object v0, p0, Landroidx/d/b/c;->d:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 794
    iget-object v0, p0, Landroidx/d/b/c;->e:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 795
    iget-object v0, p0, Landroidx/d/b/c;->f:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 796
    iget-object v0, p0, Landroidx/d/b/c;->g:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 797
    iget-object v0, p0, Landroidx/d/b/c;->h:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 798
    iget-object v0, p0, Landroidx/d/b/c;->i:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 799
    iget-object v0, p0, Landroidx/d/b/c;->j:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 800
    iput v2, p0, Landroidx/d/b/c;->k:I

    goto :goto_0
.end method

.method private d(I)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 818
    iget-object v0, p0, Landroidx/d/b/c;->d:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/d/b/c;->d:[F

    array-length v0, v0

    if-gt v0, p1, :cond_2

    .line 819
    :cond_0
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [F

    .line 820
    add-int/lit8 v1, p1, 0x1

    new-array v1, v1, [F

    .line 821
    add-int/lit8 v2, p1, 0x1

    new-array v2, v2, [F

    .line 822
    add-int/lit8 v3, p1, 0x1

    new-array v3, v3, [F

    .line 823
    add-int/lit8 v4, p1, 0x1

    new-array v4, v4, [I

    .line 824
    add-int/lit8 v5, p1, 0x1

    new-array v5, v5, [I

    .line 825
    add-int/lit8 v6, p1, 0x1

    new-array v6, v6, [I

    .line 827
    iget-object v7, p0, Landroidx/d/b/c;->d:[F

    if-eqz v7, :cond_1

    .line 828
    iget-object v7, p0, Landroidx/d/b/c;->d:[F

    iget-object v8, p0, Landroidx/d/b/c;->d:[F

    array-length v8, v8

    invoke-static {v7, v9, v0, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 829
    iget-object v7, p0, Landroidx/d/b/c;->e:[F

    iget-object v8, p0, Landroidx/d/b/c;->e:[F

    array-length v8, v8

    invoke-static {v7, v9, v1, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 830
    iget-object v7, p0, Landroidx/d/b/c;->f:[F

    iget-object v8, p0, Landroidx/d/b/c;->f:[F

    array-length v8, v8

    invoke-static {v7, v9, v2, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 831
    iget-object v7, p0, Landroidx/d/b/c;->g:[F

    iget-object v8, p0, Landroidx/d/b/c;->g:[F

    array-length v8, v8

    invoke-static {v7, v9, v3, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 832
    iget-object v7, p0, Landroidx/d/b/c;->h:[I

    iget-object v8, p0, Landroidx/d/b/c;->h:[I

    array-length v8, v8

    invoke-static {v7, v9, v4, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 833
    iget-object v7, p0, Landroidx/d/b/c;->i:[I

    iget-object v8, p0, Landroidx/d/b/c;->i:[I

    array-length v8, v8

    invoke-static {v7, v9, v5, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 834
    iget-object v7, p0, Landroidx/d/b/c;->j:[I

    iget-object v8, p0, Landroidx/d/b/c;->j:[I

    array-length v8, v8

    invoke-static {v7, v9, v6, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 837
    :cond_1
    iput-object v0, p0, Landroidx/d/b/c;->d:[F

    .line 838
    iput-object v1, p0, Landroidx/d/b/c;->e:[F

    .line 839
    iput-object v2, p0, Landroidx/d/b/c;->f:[F

    .line 840
    iput-object v3, p0, Landroidx/d/b/c;->g:[F

    .line 841
    iput-object v4, p0, Landroidx/d/b/c;->h:[I

    .line 842
    iput-object v5, p0, Landroidx/d/b/c;->i:[I

    .line 843
    iput-object v6, p0, Landroidx/d/b/c;->j:[I

    .line 845
    :cond_2
    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    .line 1413
    iget-object v0, p0, Landroidx/d/b/c;->l:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Landroidx/d/b/c;->m:F

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1414
    iget-object v0, p0, Landroidx/d/b/c;->l:Landroid/view/VelocityTracker;

    iget v1, p0, Landroidx/d/b/c;->c:I

    .line 1415
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    iget v1, p0, Landroidx/d/b/c;->n:F

    iget v2, p0, Landroidx/d/b/c;->m:F

    .line 1414
    invoke-direct {p0, v0, v1, v2}, Landroidx/d/b/c;->a(FFF)F

    move-result v0

    .line 1417
    iget-object v1, p0, Landroidx/d/b/c;->l:Landroid/view/VelocityTracker;

    iget v2, p0, Landroidx/d/b/c;->c:I

    .line 1418
    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    iget v2, p0, Landroidx/d/b/c;->n:F

    iget v3, p0, Landroidx/d/b/c;->m:F

    .line 1417
    invoke-direct {p0, v1, v2, v3}, Landroidx/d/b/c;->a(FFF)F

    move-result v1

    .line 1420
    invoke-direct {p0, v0, v1}, Landroidx/d/b/c;->a(FF)V

    .line 1421
    return-void
.end method

.method private e(I)Z
    .locals 3

    .prologue
    .line 1510
    invoke-virtual {p0, p1}, Landroidx/d/b/c;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1511
    const-string/jumbo v0, "ViewDragHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ignoring pointerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " because ACTION_DOWN was not received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "for this pointer before ACTION_MOVE. It likely happened because "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ViewDragHelper did not receive all the events in the event stream."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    const/4 v0, 0x0

    .line 1516
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()F
    .locals 1

    .prologue
    .line 422
    iget v0, p0, Landroidx/d/b/c;->n:F

    return v0
.end method

.method public a(Landroid/view/View;I)V
    .locals 3

    .prologue
    .line 471
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroidx/d/b/c;->u:Landroid/view/ViewGroup;

    if-eq v0, v1, :cond_0

    .line 472
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "captureChildView: parameter must be a descendant of the ViewDragHelper\'s tracked parent view ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/d/b/c;->u:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 476
    :cond_0
    iput-object p1, p0, Landroidx/d/b/c;->s:Landroid/view/View;

    .line 477
    iput p2, p0, Landroidx/d/b/c;->c:I

    .line 478
    iget-object v0, p0, Landroidx/d/b/c;->r:Landroidx/d/b/c$a;

    invoke-virtual {v0, p1, p2}, Landroidx/d/b/c$a;->a(Landroid/view/View;I)V

    .line 479
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/d/b/c;->b(I)V

    .line 480
    return-void
.end method

.method public a(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 884
    iget v1, p0, Landroidx/d/b/c;->k:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(II)Z
    .locals 3

    .prologue
    .line 577
    iget-boolean v0, p0, Landroidx/d/b/c;->t:Z

    if-nez v0, :cond_0

    .line 578
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 582
    :cond_0
    iget-object v0, p0, Landroidx/d/b/c;->l:Landroid/view/VelocityTracker;

    iget v1, p0, Landroidx/d/b/c;->c:I

    .line 583
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Landroidx/d/b/c;->l:Landroid/view/VelocityTracker;

    iget v2, p0, Landroidx/d/b/c;->c:I

    .line 584
    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    float-to-int v1, v1

    .line 582
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/d/b/c;->a(IIII)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 13

    .prologue
    .line 963
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 964
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 966
    if-nez v0, :cond_0

    .line 969
    invoke-virtual {p0}, Landroidx/d/b/c;->c()V

    .line 972
    :cond_0
    iget-object v2, p0, Landroidx/d/b/c;->l:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    .line 973
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Landroidx/d/b/c;->l:Landroid/view/VelocityTracker;

    .line 975
    :cond_1
    iget-object v2, p0, Landroidx/d/b/c;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 977
    packed-switch v0, :pswitch_data_0

    .line 1087
    :cond_2
    :goto_0
    :pswitch_0
    iget v0, p0, Landroidx/d/b/c;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 979
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 980
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 981
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 982
    invoke-direct {p0, v0, v1, v2}, Landroidx/d/b/c;->a(FFI)V

    .line 984
    float-to-int v0, v0

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Landroidx/d/b/c;->c(II)Landroid/view/View;

    move-result-object v0

    .line 987
    iget-object v1, p0, Landroidx/d/b/c;->s:Landroid/view/View;

    if-ne v0, v1, :cond_3

    iget v1, p0, Landroidx/d/b/c;->a:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 988
    invoke-virtual {p0, v0, v2}, Landroidx/d/b/c;->b(Landroid/view/View;I)Z

    .line 991
    :cond_3
    iget-object v0, p0, Landroidx/d/b/c;->h:[I

    aget v0, v0, v2

    .line 992
    iget v1, p0, Landroidx/d/b/c;->p:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_2

    .line 993
    iget-object v1, p0, Landroidx/d/b/c;->r:Landroidx/d/b/c$a;

    iget v3, p0, Landroidx/d/b/c;->p:I

    and-int/2addr v0, v3

    invoke-virtual {v1, v0, v2}, Landroidx/d/b/c$a;->a(II)V

    goto :goto_0

    .line 999
    :pswitch_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 1000
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 1001
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 1003
    invoke-direct {p0, v2, v1, v0}, Landroidx/d/b/c;->a(FFI)V

    .line 1006
    iget v3, p0, Landroidx/d/b/c;->a:I

    if-nez v3, :cond_4

    .line 1007
    iget-object v1, p0, Landroidx/d/b/c;->h:[I

    aget v1, v1, v0

    .line 1008
    iget v2, p0, Landroidx/d/b/c;->p:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_2

    .line 1009
    iget-object v2, p0, Landroidx/d/b/c;->r:Landroidx/d/b/c$a;

    iget v3, p0, Landroidx/d/b/c;->p:I

    and-int/2addr v1, v3

    invoke-virtual {v2, v1, v0}, Landroidx/d/b/c$a;->a(II)V

    goto :goto_0

    .line 1011
    :cond_4
    iget v3, p0, Landroidx/d/b/c;->a:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 1013
    float-to-int v2, v2

    float-to-int v1, v1

    invoke-virtual {p0, v2, v1}, Landroidx/d/b/c;->c(II)Landroid/view/View;

    move-result-object v1

    .line 1014
    iget-object v2, p0, Landroidx/d/b/c;->s:Landroid/view/View;

    if-ne v1, v2, :cond_2

    .line 1015
    invoke-virtual {p0, v1, v0}, Landroidx/d/b/c;->b(Landroid/view/View;I)Z

    goto :goto_0

    .line 1022
    :pswitch_3
    iget-object v0, p0, Landroidx/d/b/c;->d:[F

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/d/b/c;->e:[F

    if-eqz v0, :cond_2

    .line 1025
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 1026
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, v2, :cond_8

    .line 1027
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 1030
    invoke-direct {p0, v3}, Landroidx/d/b/c;->e(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1026
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 1032
    :cond_6
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 1033
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 1034
    iget-object v5, p0, Landroidx/d/b/c;->d:[F

    aget v5, v5, v3

    sub-float v5, v0, v5

    .line 1035
    iget-object v6, p0, Landroidx/d/b/c;->e:[F

    aget v6, v6, v3

    sub-float v6, v4, v6

    .line 1037
    float-to-int v0, v0

    float-to-int v4, v4

    invoke-virtual {p0, v0, v4}, Landroidx/d/b/c;->c(II)Landroid/view/View;

    move-result-object v4

    .line 1038
    if-eqz v4, :cond_9

    invoke-direct {p0, v4, v5, v6}, Landroidx/d/b/c;->a(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    .line 1039
    :goto_3
    if-eqz v0, :cond_a

    .line 1045
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v7

    .line 1046
    float-to-int v8, v5

    add-int/2addr v8, v7

    .line 1047
    iget-object v9, p0, Landroidx/d/b/c;->r:Landroidx/d/b/c$a;

    float-to-int v10, v5

    invoke-virtual {v9, v4, v8, v10}, Landroidx/d/b/c$a;->a(Landroid/view/View;II)I

    move-result v8

    .line 1049
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v9

    .line 1050
    float-to-int v10, v6

    add-int/2addr v10, v9

    .line 1051
    iget-object v11, p0, Landroidx/d/b/c;->r:Landroidx/d/b/c$a;

    float-to-int v12, v6

    invoke-virtual {v11, v4, v10, v12}, Landroidx/d/b/c$a;->b(Landroid/view/View;II)I

    move-result v10

    .line 1053
    iget-object v11, p0, Landroidx/d/b/c;->r:Landroidx/d/b/c$a;

    invoke-virtual {v11, v4}, Landroidx/d/b/c$a;->a(Landroid/view/View;)I

    move-result v11

    .line 1054
    iget-object v12, p0, Landroidx/d/b/c;->r:Landroidx/d/b/c$a;

    invoke-virtual {v12, v4}, Landroidx/d/b/c$a;->b(Landroid/view/View;)I

    move-result v12

    .line 1055
    if-eqz v11, :cond_7

    if-lez v11, :cond_a

    if-ne v8, v7, :cond_a

    :cond_7
    if-eqz v12, :cond_8

    if-lez v12, :cond_a

    if-ne v10, v9, :cond_a

    .line 1070
    :cond_8
    :goto_4
    invoke-direct {p0, p1}, Landroidx/d/b/c;->c(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 1038
    :cond_9
    const/4 v0, 0x0

    goto :goto_3

    .line 1060
    :cond_a
    invoke-direct {p0, v5, v6, v3}, Landroidx/d/b/c;->b(FFI)V

    .line 1061
    iget v5, p0, Landroidx/d/b/c;->a:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_8

    .line 1066
    if-eqz v0, :cond_5

    invoke-virtual {p0, v4, v3}, Landroidx/d/b/c;->b(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_4

    .line 1075
    :pswitch_4
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 1076
    invoke-direct {p0, v0}, Landroidx/d/b/c;->c(I)V

    goto/16 :goto_0

    .line 1082
    :pswitch_5
    invoke-virtual {p0}, Landroidx/d/b/c;->c()V

    goto/16 :goto_0

    .line 1087
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 977
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public a(Landroid/view/View;II)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 552
    iput-object p1, p0, Landroidx/d/b/c;->s:Landroid/view/View;

    .line 553
    const/4 v0, -0x1

    iput v0, p0, Landroidx/d/b/c;->c:I

    .line 555
    invoke-direct {p0, p2, p3, v1, v1}, Landroidx/d/b/c;->a(IIII)Z

    move-result v0

    .line 556
    if-nez v0, :cond_0

    iget v1, p0, Landroidx/d/b/c;->a:I

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/d/b/c;->s:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 559
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/d/b/c;->s:Landroid/view/View;

    .line 562
    :cond_0
    return v0
.end method

.method public a(Z)Z
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v6, 0x0

    .line 735
    iget v0, p0, Landroidx/d/b/c;->a:I

    if-ne v0, v8, :cond_4

    .line 736
    iget-object v0, p0, Landroidx/d/b/c;->q:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v7

    .line 737
    iget-object v0, p0, Landroidx/d/b/c;->q:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v2

    .line 738
    iget-object v0, p0, Landroidx/d/b/c;->q:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v3

    .line 739
    iget-object v0, p0, Landroidx/d/b/c;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v4, v2, v0

    .line 740
    iget-object v0, p0, Landroidx/d/b/c;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v5, v3, v0

    .line 742
    if-eqz v4, :cond_0

    .line 743
    iget-object v0, p0, Landroidx/d/b/c;->s:Landroid/view/View;

    invoke-static {v0, v4}, Landroidx/core/h/u;->f(Landroid/view/View;I)V

    .line 745
    :cond_0
    if-eqz v5, :cond_1

    .line 746
    iget-object v0, p0, Landroidx/d/b/c;->s:Landroid/view/View;

    invoke-static {v0, v5}, Landroidx/core/h/u;->e(Landroid/view/View;I)V

    .line 749
    :cond_1
    if-nez v4, :cond_2

    if-eqz v5, :cond_3

    .line 750
    :cond_2
    iget-object v0, p0, Landroidx/d/b/c;->r:Landroidx/d/b/c$a;

    iget-object v1, p0, Landroidx/d/b/c;->s:Landroid/view/View;

    invoke-virtual/range {v0 .. v5}, Landroidx/d/b/c$a;->a(Landroid/view/View;IIII)V

    .line 753
    :cond_3
    if-eqz v7, :cond_7

    iget-object v0, p0, Landroidx/d/b/c;->q:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v0

    if-ne v2, v0, :cond_7

    iget-object v0, p0, Landroidx/d/b/c;->q:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v0

    if-ne v3, v0, :cond_7

    .line 756
    iget-object v0, p0, Landroidx/d/b/c;->q:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    move v0, v6

    .line 760
    :goto_0
    if-nez v0, :cond_4

    .line 761
    if-eqz p1, :cond_5

    .line 762
    iget-object v0, p0, Landroidx/d/b/c;->u:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroidx/d/b/c;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 769
    :cond_4
    :goto_1
    iget v0, p0, Landroidx/d/b/c;->a:I

    if-ne v0, v8, :cond_6

    const/4 v0, 0x1

    :goto_2
    return v0

    .line 764
    :cond_5
    invoke-virtual {p0, v6}, Landroidx/d/b/c;->b(I)V

    goto :goto_1

    :cond_6
    move v0, v6

    .line 769
    goto :goto_2

    :cond_7
    move v0, v7

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 503
    iget v0, p0, Landroidx/d/b/c;->b:I

    return v0
.end method

.method b(I)V
    .locals 2

    .prologue
    .line 888
    iget-object v0, p0, Landroidx/d/b/c;->u:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroidx/d/b/c;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 889
    iget v0, p0, Landroidx/d/b/c;->a:I

    if-eq v0, p1, :cond_0

    .line 890
    iput p1, p0, Landroidx/d/b/c;->a:I

    .line 891
    iget-object v0, p0, Landroidx/d/b/c;->r:Landroidx/d/b/c$a;

    invoke-virtual {v0, p1}, Landroidx/d/b/c$a;->a(I)V

    .line 892
    iget v0, p0, Landroidx/d/b/c;->a:I

    if-nez v0, :cond_0

    .line 893
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/d/b/c;->s:Landroid/view/View;

    .line 896
    :cond_0
    return-void
.end method

.method public b(Landroid/view/MotionEvent;)V
    .locals 9

    .prologue
    const/4 v1, -0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v8, 0x1

    .line 1097
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 1098
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 1100
    if-nez v2, :cond_0

    .line 1103
    invoke-virtual {p0}, Landroidx/d/b/c;->c()V

    .line 1106
    :cond_0
    iget-object v4, p0, Landroidx/d/b/c;->l:Landroid/view/VelocityTracker;

    if-nez v4, :cond_1

    .line 1107
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Landroidx/d/b/c;->l:Landroid/view/VelocityTracker;

    .line 1109
    :cond_1
    iget-object v4, p0, Landroidx/d/b/c;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1111
    packed-switch v2, :pswitch_data_0

    .line 1252
    :cond_2
    :goto_0
    :pswitch_0
    return-void

    .line 1113
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 1114
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 1115
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 1116
    float-to-int v3, v1

    float-to-int v4, v2

    invoke-virtual {p0, v3, v4}, Landroidx/d/b/c;->c(II)Landroid/view/View;

    move-result-object v3

    .line 1118
    invoke-direct {p0, v1, v2, v0}, Landroidx/d/b/c;->a(FFI)V

    .line 1123
    invoke-virtual {p0, v3, v0}, Landroidx/d/b/c;->b(Landroid/view/View;I)Z

    .line 1125
    iget-object v1, p0, Landroidx/d/b/c;->h:[I

    aget v1, v1, v0

    .line 1126
    iget v2, p0, Landroidx/d/b/c;->p:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_2

    .line 1127
    iget-object v2, p0, Landroidx/d/b/c;->r:Landroidx/d/b/c$a;

    iget v3, p0, Landroidx/d/b/c;->p:I

    and-int/2addr v1, v3

    invoke-virtual {v2, v1, v0}, Landroidx/d/b/c$a;->a(II)V

    goto :goto_0

    .line 1133
    :pswitch_2
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 1134
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 1135
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 1137
    invoke-direct {p0, v1, v2, v0}, Landroidx/d/b/c;->a(FFI)V

    .line 1140
    iget v3, p0, Landroidx/d/b/c;->a:I

    if-nez v3, :cond_3

    .line 1143
    float-to-int v1, v1

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Landroidx/d/b/c;->c(II)Landroid/view/View;

    move-result-object v1

    .line 1144
    invoke-virtual {p0, v1, v0}, Landroidx/d/b/c;->b(Landroid/view/View;I)Z

    .line 1146
    iget-object v1, p0, Landroidx/d/b/c;->h:[I

    aget v1, v1, v0

    .line 1147
    iget v2, p0, Landroidx/d/b/c;->p:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_2

    .line 1148
    iget-object v2, p0, Landroidx/d/b/c;->r:Landroidx/d/b/c$a;

    iget v3, p0, Landroidx/d/b/c;->p:I

    and-int/2addr v1, v3

    invoke-virtual {v2, v1, v0}, Landroidx/d/b/c$a;->a(II)V

    goto :goto_0

    .line 1150
    :cond_3
    float-to-int v1, v1

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Landroidx/d/b/c;->b(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1155
    iget-object v1, p0, Landroidx/d/b/c;->s:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Landroidx/d/b/c;->b(Landroid/view/View;I)Z

    goto :goto_0

    .line 1161
    :pswitch_3
    iget v1, p0, Landroidx/d/b/c;->a:I

    if-ne v1, v8, :cond_4

    .line 1163
    iget v0, p0, Landroidx/d/b/c;->c:I

    invoke-direct {p0, v0}, Landroidx/d/b/c;->e(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1165
    iget v0, p0, Landroidx/d/b/c;->c:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1166
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 1167
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 1168
    iget-object v2, p0, Landroidx/d/b/c;->f:[F

    iget v3, p0, Landroidx/d/b/c;->c:I

    aget v2, v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 1169
    iget-object v2, p0, Landroidx/d/b/c;->g:[F

    iget v3, p0, Landroidx/d/b/c;->c:I

    aget v2, v2, v3

    sub-float/2addr v0, v2

    float-to-int v0, v0

    .line 1171
    iget-object v2, p0, Landroidx/d/b/c;->s:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v3, p0, Landroidx/d/b/c;->s:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v3, v0

    invoke-direct {p0, v2, v3, v1, v0}, Landroidx/d/b/c;->b(IIII)V

    .line 1173
    invoke-direct {p0, p1}, Landroidx/d/b/c;->c(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 1176
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 1177
    :goto_1
    if-ge v0, v1, :cond_7

    .line 1178
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 1181
    invoke-direct {p0, v2}, Landroidx/d/b/c;->e(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1177
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1183
    :cond_6
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 1184
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 1185
    iget-object v5, p0, Landroidx/d/b/c;->d:[F

    aget v5, v5, v2

    sub-float v5, v3, v5

    .line 1186
    iget-object v6, p0, Landroidx/d/b/c;->e:[F

    aget v6, v6, v2

    sub-float v6, v4, v6

    .line 1188
    invoke-direct {p0, v5, v6, v2}, Landroidx/d/b/c;->b(FFI)V

    .line 1189
    iget v7, p0, Landroidx/d/b/c;->a:I

    if-ne v7, v8, :cond_8

    .line 1200
    :cond_7
    :goto_2
    invoke-direct {p0, p1}, Landroidx/d/b/c;->c(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 1194
    :cond_8
    float-to-int v3, v3

    float-to-int v4, v4

    invoke-virtual {p0, v3, v4}, Landroidx/d/b/c;->c(II)Landroid/view/View;

    move-result-object v3

    .line 1195
    invoke-direct {p0, v3, v5, v6}, Landroidx/d/b/c;->a(Landroid/view/View;FF)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1196
    invoke-virtual {p0, v3, v2}, Landroidx/d/b/c;->b(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_2

    .line 1206
    :pswitch_4
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 1207
    iget v3, p0, Landroidx/d/b/c;->a:I

    if-ne v3, v8, :cond_b

    iget v3, p0, Landroidx/d/b/c;->c:I

    if-ne v2, v3, :cond_b

    .line 1210
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    .line 1211
    :goto_3
    if-ge v0, v3, :cond_e

    .line 1212
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 1213
    iget v5, p0, Landroidx/d/b/c;->c:I

    if-ne v4, v5, :cond_a

    .line 1211
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1218
    :cond_a
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 1219
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 1220
    float-to-int v5, v5

    float-to-int v6, v6

    invoke-virtual {p0, v5, v6}, Landroidx/d/b/c;->c(II)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Landroidx/d/b/c;->s:Landroid/view/View;

    if-ne v5, v6, :cond_9

    iget-object v5, p0, Landroidx/d/b/c;->s:Landroid/view/View;

    .line 1221
    invoke-virtual {p0, v5, v4}, Landroidx/d/b/c;->b(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1222
    iget v0, p0, Landroidx/d/b/c;->c:I

    .line 1227
    :goto_4
    if-ne v0, v1, :cond_b

    .line 1229
    invoke-direct {p0}, Landroidx/d/b/c;->e()V

    .line 1232
    :cond_b
    invoke-direct {p0, v2}, Landroidx/d/b/c;->c(I)V

    goto/16 :goto_0

    .line 1237
    :pswitch_5
    iget v0, p0, Landroidx/d/b/c;->a:I

    if-ne v0, v8, :cond_c

    .line 1238
    invoke-direct {p0}, Landroidx/d/b/c;->e()V

    .line 1240
    :cond_c
    invoke-virtual {p0}, Landroidx/d/b/c;->c()V

    goto/16 :goto_0

    .line 1245
    :pswitch_6
    iget v0, p0, Landroidx/d/b/c;->a:I

    if-ne v0, v8, :cond_d

    .line 1246
    invoke-direct {p0, v5, v5}, Landroidx/d/b/c;->a(FF)V

    .line 1248
    :cond_d
    invoke-virtual {p0}, Landroidx/d/b/c;->c()V

    goto/16 :goto_0

    :cond_e
    move v0, v1

    goto :goto_4

    .line 1111
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public b(II)Z
    .locals 1

    .prologue
    .line 1455
    iget-object v0, p0, Landroidx/d/b/c;->s:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Landroidx/d/b/c;->b(Landroid/view/View;II)Z

    move-result v0

    return v0
.end method

.method b(Landroid/view/View;I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 908
    iget-object v1, p0, Landroidx/d/b/c;->s:Landroid/view/View;

    if-ne p1, v1, :cond_0

    iget v1, p0, Landroidx/d/b/c;->c:I

    if-ne v1, p2, :cond_0

    .line 917
    :goto_0
    return v0

    .line 912
    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Landroidx/d/b/c;->r:Landroidx/d/b/c$a;

    invoke-virtual {v1, p1, p2}, Landroidx/d/b/c$a;->b(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 913
    iput p2, p0, Landroidx/d/b/c;->c:I

    .line 914
    invoke-virtual {p0, p1, p2}, Landroidx/d/b/c;->a(Landroid/view/View;I)V

    goto :goto_0

    .line 917
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/view/View;II)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1468
    if-nez p1, :cond_1

    .line 1474
    :cond_0
    :goto_0
    return v0

    .line 1471
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt p2, v1, :cond_0

    .line 1472
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 1473
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    if-lt p3, v1, :cond_0

    .line 1474
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    if-ge p3, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c(II)Landroid/view/View;
    .locals 3

    .prologue
    .line 1487
    iget-object v0, p0, Landroidx/d/b/c;->u:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1488
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 1489
    iget-object v0, p0, Landroidx/d/b/c;->u:Landroid/view/ViewGroup;

    iget-object v2, p0, Landroidx/d/b/c;->r:Landroidx/d/b/c$a;

    invoke-virtual {v2, v1}, Landroidx/d/b/c$a;->c(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1490
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt p1, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 1491
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt p2, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge p2, v2, :cond_0

    .line 1495
    :goto_1
    return-object v0

    .line 1488
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1495
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public c()V
    .locals 1

    .prologue
    .line 511
    const/4 v0, -0x1

    iput v0, p0, Landroidx/d/b/c;->c:I

    .line 512
    invoke-direct {p0}, Landroidx/d/b/c;->d()V

    .line 514
    iget-object v0, p0, Landroidx/d/b/c;->l:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Landroidx/d/b/c;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 516
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/d/b/c;->l:Landroid/view/VelocityTracker;

    .line 518
    :cond_0
    return-void
.end method
