.class Lcom/google/android/material/d/b;
.super Ljava/lang/Object;
.source "MaterialCardViewHelper.java"


# static fields
.field private static final a:[I

.field private static final b:D


# instance fields
.field private final c:Lcom/google/android/material/d/a;

.field private final d:Landroid/graphics/Rect;

.field private final e:Lcom/google/android/material/q/g;

.field private final f:Lcom/google/android/material/q/g;

.field private final g:I

.field private final h:I

.field private i:I

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:Landroid/graphics/drawable/Drawable;

.field private l:Landroid/content/res/ColorStateList;

.field private m:Landroid/content/res/ColorStateList;

.field private n:Lcom/google/android/material/q/k;

.field private o:Landroid/content/res/ColorStateList;

.field private p:Landroid/graphics/drawable/Drawable;

.field private q:Landroid/graphics/drawable/LayerDrawable;

.field private r:Lcom/google/android/material/q/g;

.field private s:Lcom/google/android/material/q/g;

.field private t:Z

.field private u:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 62
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/google/android/material/d/b;->a:[I

    .line 67
    const-wide v0, 0x4046800000000000L    # 45.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    sput-wide v0, Lcom/google/android/material/d/b;->b:D

    return-void
.end method

.method private A()F
    .locals 4

    .prologue
    .line 538
    iget-object v0, p0, Lcom/google/android/material/d/b;->n:Lcom/google/android/material/q/k;

    .line 541
    invoke-virtual {v0}, Lcom/google/android/material/q/k;->b()Lcom/google/android/material/q/d;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/d/b;->e:Lcom/google/android/material/q/g;

    invoke-virtual {v1}, Lcom/google/android/material/q/g;->Y()F

    move-result v1

    .line 540
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/d/b;->a(Lcom/google/android/material/q/d;F)F

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/d/b;->n:Lcom/google/android/material/q/k;

    .line 543
    invoke-virtual {v1}, Lcom/google/android/material/q/k;->c()Lcom/google/android/material/q/d;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/material/d/b;->e:Lcom/google/android/material/q/g;

    .line 544
    invoke-virtual {v2}, Lcom/google/android/material/q/g;->Z()F

    move-result v2

    .line 542
    invoke-direct {p0, v1, v2}, Lcom/google/android/material/d/b;->a(Lcom/google/android/material/q/d;F)F

    move-result v1

    .line 539
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/d/b;->n:Lcom/google/android/material/q/k;

    .line 547
    invoke-virtual {v1}, Lcom/google/android/material/q/k;->d()Lcom/google/android/material/q/d;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/material/d/b;->e:Lcom/google/android/material/q/g;

    .line 548
    invoke-virtual {v2}, Lcom/google/android/material/q/g;->ab()F

    move-result v2

    .line 546
    invoke-direct {p0, v1, v2}, Lcom/google/android/material/d/b;->a(Lcom/google/android/material/q/d;F)F

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/d/b;->n:Lcom/google/android/material/q/k;

    .line 550
    invoke-virtual {v2}, Lcom/google/android/material/q/k;->e()Lcom/google/android/material/q/d;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/material/d/b;->e:Lcom/google/android/material/q/g;

    .line 551
    invoke-virtual {v3}, Lcom/google/android/material/q/g;->aa()F

    move-result v3

    .line 549
    invoke-direct {p0, v2, v3}, Lcom/google/android/material/d/b;->a(Lcom/google/android/material/q/d;F)F

    move-result v2

    .line 545
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 538
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method private B()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 565
    iget-object v0, p0, Lcom/google/android/material/d/b;->p:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 566
    invoke-direct {p0}, Lcom/google/android/material/d/b;->C()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/d/b;->p:Landroid/graphics/drawable/Drawable;

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/d/b;->q:Landroid/graphics/drawable/LayerDrawable;

    if-nez v0, :cond_1

    .line 570
    invoke-direct {p0}, Lcom/google/android/material/d/b;->F()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 571
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/material/d/b;->p:Landroid/graphics/drawable/Drawable;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/material/d/b;->f:Lcom/google/android/material/q/g;

    aput-object v4, v2, v3

    aput-object v0, v2, v5

    invoke-direct {v1, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lcom/google/android/material/d/b;->q:Landroid/graphics/drawable/LayerDrawable;

    .line 574
    iget-object v0, p0, Lcom/google/android/material/d/b;->q:Landroid/graphics/drawable/LayerDrawable;

    sget v1, Lcom/google/android/material/a$f;->mtrl_card_checked_layer_id:I

    invoke-virtual {v0, v5, v1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 577
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/d/b;->q:Landroid/graphics/drawable/LayerDrawable;

    return-object v0
.end method

.method private C()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 582
    sget-boolean v0, Lcom/google/android/material/o/b;->a:Z

    if-eqz v0, :cond_0

    .line 583
    invoke-direct {p0}, Lcom/google/android/material/d/b;->G()Lcom/google/android/material/q/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/d/b;->s:Lcom/google/android/material/q/g;

    .line 585
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    iget-object v1, p0, Lcom/google/android/material/d/b;->l:Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/material/d/b;->s:Lcom/google/android/material/q/g;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 588
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/d/b;->D()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private D()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 593
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 594
    invoke-direct {p0}, Lcom/google/android/material/d/b;->G()Lcom/google/android/material/q/g;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/d/b;->r:Lcom/google/android/material/q/g;

    .line 595
    iget-object v1, p0, Lcom/google/android/material/d/b;->r:Lcom/google/android/material/q/g;

    iget-object v2, p0, Lcom/google/android/material/d/b;->l:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Lcom/google/android/material/q/g;->f(Landroid/content/res/ColorStateList;)V

    .line 596
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x10100a7

    aput v3, v1, v2

    iget-object v2, p0, Lcom/google/android/material/d/b;->r:Lcom/google/android/material/q/g;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 597
    return-object v0
.end method

.method private E()V
    .locals 2

    .prologue
    .line 602
    sget-boolean v0, Lcom/google/android/material/o/b;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/d/b;->p:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 603
    iget-object v0, p0, Lcom/google/android/material/d/b;->p:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    iget-object v1, p0, Lcom/google/android/material/d/b;->l:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 607
    :cond_0
    :goto_0
    return-void

    .line 604
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/d/b;->r:Lcom/google/android/material/q/g;

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/google/android/material/d/b;->r:Lcom/google/android/material/q/g;

    iget-object v1, p0, Lcom/google/android/material/d/b;->l:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lcom/google/android/material/q/g;->f(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method private F()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 611
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 612
    iget-object v1, p0, Lcom/google/android/material/d/b;->k:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 613
    sget-object v1, Lcom/google/android/material/d/b;->a:[I

    iget-object v2, p0, Lcom/google/android/material/d/b;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 615
    :cond_0
    return-object v0
.end method

.method private G()Lcom/google/android/material/q/g;
    .locals 2

    .prologue
    .line 620
    new-instance v0, Lcom/google/android/material/q/g;

    iget-object v1, p0, Lcom/google/android/material/d/b;->n:Lcom/google/android/material/q/k;

    invoke-direct {v0, v1}, Lcom/google/android/material/q/g;-><init>(Lcom/google/android/material/q/k;)V

    return-object v0
.end method

.method private a(Lcom/google/android/material/q/d;F)F
    .locals 4

    .prologue
    .line 555
    instance-of v0, p1, Lcom/google/android/material/q/j;

    if-eqz v0, :cond_0

    .line 556
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sget-wide v2, Lcom/google/android/material/d/b;->b:D

    sub-double/2addr v0, v2

    float-to-double v2, p2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 560
    :goto_0
    return v0

    .line 557
    :cond_0
    instance-of v0, p1, Lcom/google/android/material/q/e;

    if-eqz v0, :cond_1

    .line 558
    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p2, v0

    goto :goto_0

    .line 560
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 448
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/d/b;->c:Lcom/google/android/material/d/a;

    .line 449
    invoke-virtual {v0}, Lcom/google/android/material/d/a;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/google/android/material/d/b;->c:Lcom/google/android/material/d/a;

    invoke-virtual {v0}, Lcom/google/android/material/d/a;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/InsetDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 454
    :goto_0
    return-void

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/d/b;->c:Lcom/google/android/material/d/a;

    invoke-direct {p0, p1}, Lcom/google/android/material/d/b;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/d/a;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 468
    .line 470
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_1

    const/4 v1, 0x1

    .line 471
    :goto_0
    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/d/b;->c:Lcom/google/android/material/d/a;

    invoke-virtual {v1}, Lcom/google/android/material/d/a;->getUseCompatPadding()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 473
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/d/b;->u()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v4, v0

    .line 474
    invoke-direct {p0}, Lcom/google/android/material/d/b;->v()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v3, v0

    .line 476
    :goto_1
    new-instance v0, Lcom/google/android/material/d/b$1;

    move-object v1, p0

    move-object v2, p1

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/d/b$1;-><init>(Lcom/google/android/material/d/b;Landroid/graphics/drawable/Drawable;IIII)V

    return-object v0

    :cond_1
    move v1, v0

    .line 470
    goto :goto_0

    :cond_2
    move v3, v0

    move v4, v0

    goto :goto_1
.end method

.method private u()F
    .locals 2

    .prologue
    .line 493
    iget-object v0, p0, Lcom/google/android/material/d/b;->c:Lcom/google/android/material/d/a;

    invoke-virtual {v0}, Lcom/google/android/material/d/a;->getMaxCardElevation()F

    move-result v0

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v1, v0

    .line 494
    invoke-direct {p0}, Lcom/google/android/material/d/b;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/d/b;->A()F

    move-result v0

    :goto_0
    add-float/2addr v0, v1

    .line 493
    return v0

    .line 494
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private v()F
    .locals 2

    .prologue
    .line 503
    iget-object v0, p0, Lcom/google/android/material/d/b;->c:Lcom/google/android/material/d/a;

    invoke-virtual {v0}, Lcom/google/android/material/d/a;->getMaxCardElevation()F

    move-result v1

    .line 504
    invoke-direct {p0}, Lcom/google/android/material/d/b;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/d/b;->A()F

    move-result v0

    :goto_0
    add-float/2addr v0, v1

    .line 503
    return v0

    .line 504
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private w()Z
    .locals 2

    .prologue
    .line 508
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/d/b;->e:Lcom/google/android/material/q/g;

    invoke-virtual {v0}, Lcom/google/android/material/q/g;->ac()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private x()F
    .locals 4

    .prologue
    .line 512
    iget-object v0, p0, Lcom/google/android/material/d/b;->c:Lcom/google/android/material/d/a;

    invoke-virtual {v0}, Lcom/google/android/material/d/a;->getPreventCornerOverlap()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/d/b;->c:Lcom/google/android/material/d/a;

    .line 513
    invoke-virtual {v0}, Lcom/google/android/material/d/a;->getUseCompatPadding()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 514
    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sget-wide v2, Lcom/google/android/material/d/b;->b:D

    sub-double/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/material/d/b;->c:Lcom/google/android/material/d/a;

    invoke-virtual {v2}, Lcom/google/android/material/d/a;->getCardViewRadius()F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 516
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private y()Z
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/google/android/material/d/b;->c:Lcom/google/android/material/d/a;

    invoke-virtual {v0}, Lcom/google/android/material/d/a;->getPreventCornerOverlap()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/d/b;->w()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private z()Z
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/google/android/material/d/b;->c:Lcom/google/android/material/d/a;

    invoke-virtual {v0}, Lcom/google/android/material/d/a;->getPreventCornerOverlap()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    invoke-direct {p0}, Lcom/google/android/material/d/b;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/d/b;->c:Lcom/google/android/material/d/a;

    .line 526
    invoke-virtual {v0}, Lcom/google/android/material/d/a;->getUseCompatPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 524
    :goto_0
    return v0

    .line 526
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a(F)V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/google/android/material/d/b;->n:Lcom/google/android/material/q/k;

    invoke-virtual {v0, p1}, Lcom/google/android/material/q/k;->a(F)Lcom/google/android/material/q/k;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/d/b;->a(Lcom/google/android/material/q/k;)V

    .line 271
    iget-object v0, p0, Lcom/google/android/material/d/b;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 272
    invoke-direct {p0}, Lcom/google/android/material/d/b;->z()Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    invoke-direct {p0}, Lcom/google/android/material/d/b;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/d/b;->n()V

    .line 277
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/d/b;->z()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 278
    invoke-virtual {p0}, Lcom/google/android/material/d/b;->l()V

    .line 280
    :cond_2
    return-void
.end method

.method a(I)V
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lcom/google/android/material/d/b;->i:I

    if-ne p1, v0, :cond_0

    .line 230
    :goto_0
    return-void

    .line 228
    :cond_0
    iput p1, p0, Lcom/google/android/material/d/b;->i:I

    .line 229
    invoke-virtual {p0}, Lcom/google/android/material/d/b;->m()V

    goto :goto_0
.end method

.method a(II)V
    .locals 6

    .prologue
    .line 393
    iget-object v0, p0, Lcom/google/android/material/d/b;->q:Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_0

    .line 394
    iget v0, p0, Lcom/google/android/material/d/b;->g:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/google/android/material/d/b;->h:I

    sub-int/2addr v0, v1

    .line 395
    iget v1, p0, Lcom/google/android/material/d/b;->g:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/google/android/material/d/b;->h:I

    sub-int v5, v1, v2

    .line 396
    iget v1, p0, Lcom/google/android/material/d/b;->g:I

    .line 397
    iget-object v2, p0, Lcom/google/android/material/d/b;->c:Lcom/google/android/material/d/a;

    invoke-static {v2}, Landroidx/core/h/u;->g(Landroid/view/View;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    move v4, v0

    move v2, v1

    .line 404
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/d/b;->q:Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x2

    iget v3, p0, Lcom/google/android/material/d/b;->g:I

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 407
    :cond_0
    return-void

    :cond_1
    move v4, v1

    move v2, v0

    goto :goto_0
.end method

.method a(IIII)V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/android/material/d/b;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 252
    invoke-virtual {p0}, Lcom/google/android/material/d/b;->n()V

    .line 253
    return-void
.end method

.method a(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/material/d/b;->o:Landroid/content/res/ColorStateList;

    if-ne v0, p1, :cond_0

    .line 212
    :goto_0
    return-void

    .line 210
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/d/b;->o:Landroid/content/res/ColorStateList;

    .line 211
    invoke-virtual {p0}, Lcom/google/android/material/d/b;->m()V

    goto :goto_0
.end method

.method a(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    .line 379
    iput-object p1, p0, Lcom/google/android/material/d/b;->k:Landroid/graphics/drawable/Drawable;

    .line 380
    if-eqz p1, :cond_0

    .line 381
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/d/b;->k:Landroid/graphics/drawable/Drawable;

    .line 382
    iget-object v0, p0, Lcom/google/android/material/d/b;->k:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/google/android/material/d/b;->m:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/d/b;->q:Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_1

    .line 386
    invoke-direct {p0}, Lcom/google/android/material/d/b;->F()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 387
    iget-object v1, p0, Lcom/google/android/material/d/b;->q:Landroid/graphics/drawable/LayerDrawable;

    sget v2, Lcom/google/android/material/a$f;->mtrl_card_checked_layer_id:I

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 390
    :cond_1
    return-void
.end method

.method a(Lcom/google/android/material/q/k;)V
    .locals 1

    .prologue
    .line 423
    iput-object p1, p0, Lcom/google/android/material/d/b;->n:Lcom/google/android/material/q/k;

    .line 424
    iget-object v0, p0, Lcom/google/android/material/d/b;->e:Lcom/google/android/material/q/g;

    invoke-virtual {v0, p1}, Lcom/google/android/material/q/g;->setShapeAppearanceModel(Lcom/google/android/material/q/k;)V

    .line 425
    iget-object v0, p0, Lcom/google/android/material/d/b;->f:Lcom/google/android/material/q/g;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/google/android/material/d/b;->f:Lcom/google/android/material/q/g;

    invoke-virtual {v0, p1}, Lcom/google/android/material/q/g;->setShapeAppearanceModel(Lcom/google/android/material/q/k;)V

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/d/b;->s:Lcom/google/android/material/q/g;

    if-eqz v0, :cond_1

    .line 430
    iget-object v0, p0, Lcom/google/android/material/d/b;->s:Lcom/google/android/material/q/g;

    invoke-virtual {v0, p1}, Lcom/google/android/material/q/g;->setShapeAppearanceModel(Lcom/google/android/material/q/k;)V

    .line 433
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/d/b;->r:Lcom/google/android/material/q/g;

    if-eqz v0, :cond_2

    .line 434
    iget-object v0, p0, Lcom/google/android/material/d/b;->r:Lcom/google/android/material/q/g;

    invoke-virtual {v0, p1}, Lcom/google/android/material/q/g;->setShapeAppearanceModel(Lcom/google/android/material/q/k;)V

    .line 436
    :cond_2
    return-void
.end method

.method a(Z)V
    .locals 0

    .prologue
    .line 202
    iput-boolean p1, p0, Lcom/google/android/material/d/b;->t:Z

    .line 203
    return-void
.end method

.method a()Z
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/google/android/material/d/b;->t:Z

    return v0
.end method

.method b()I
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/android/material/d/b;->o:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/d/b;->o:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    goto :goto_0
.end method

.method b(F)V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/google/android/material/d/b;->e:Lcom/google/android/material/q/g;

    invoke-virtual {v0, p1}, Lcom/google/android/material/q/g;->p(F)V

    .line 288
    iget-object v0, p0, Lcom/google/android/material/d/b;->f:Lcom/google/android/material/q/g;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/google/android/material/d/b;->f:Lcom/google/android/material/q/g;

    invoke-virtual {v0, p1}, Lcom/google/android/material/q/g;->p(F)V

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/d/b;->s:Lcom/google/android/material/q/g;

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/google/android/material/d/b;->s:Lcom/google/android/material/q/g;

    invoke-virtual {v0, p1}, Lcom/google/android/material/q/g;->p(F)V

    .line 295
    :cond_1
    return-void
.end method

.method b(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/android/material/d/b;->e:Lcom/google/android/material/q/g;

    invoke-virtual {v0, p1}, Lcom/google/android/material/q/g;->f(Landroid/content/res/ColorStateList;)V

    .line 244
    return-void
.end method

.method b(Z)V
    .locals 0

    .prologue
    .line 344
    iput-boolean p1, p0, Lcom/google/android/material/d/b;->u:Z

    .line 345
    return-void
.end method

.method c()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/android/material/d/b;->o:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method c(Landroid/content/res/ColorStateList;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lcom/google/android/material/d/b;->l:Landroid/content/res/ColorStateList;

    .line 353
    invoke-direct {p0}, Lcom/google/android/material/d/b;->E()V

    .line 354
    return-void
.end method

.method d()I
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lcom/google/android/material/d/b;->i:I

    return v0
.end method

.method d(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 357
    iput-object p1, p0, Lcom/google/android/material/d/b;->m:Landroid/content/res/ColorStateList;

    .line 358
    iget-object v0, p0, Lcom/google/android/material/d/b;->k:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/google/android/material/d/b;->k:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 361
    :cond_0
    return-void
.end method

.method e()Lcom/google/android/material/q/g;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/android/material/d/b;->e:Lcom/google/android/material/q/g;

    return-object v0
.end method

.method f()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/android/material/d/b;->e:Lcom/google/android/material/q/g;

    invoke-virtual {v0}, Lcom/google/android/material/q/g;->M()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method g()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/google/android/material/d/b;->d:Landroid/graphics/Rect;

    return-object v0
.end method

.method h()V
    .locals 2

    .prologue
    .line 261
    iget-object v1, p0, Lcom/google/android/material/d/b;->j:Landroid/graphics/drawable/Drawable;

    .line 262
    iget-object v0, p0, Lcom/google/android/material/d/b;->c:Lcom/google/android/material/d/a;

    .line 263
    invoke-virtual {v0}, Lcom/google/android/material/d/a;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/material/d/b;->B()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/material/d/b;->j:Landroid/graphics/drawable/Drawable;

    .line 264
    iget-object v0, p0, Lcom/google/android/material/d/b;->j:Landroid/graphics/drawable/Drawable;

    if-eq v1, v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/google/android/material/d/b;->j:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/google/android/material/d/b;->b(Landroid/graphics/drawable/Drawable;)V

    .line 267
    :cond_0
    return-void

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/d/b;->f:Lcom/google/android/material/q/g;

    goto :goto_0
.end method

.method i()F
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/google/android/material/d/b;->e:Lcom/google/android/material/q/g;

    invoke-virtual {v0}, Lcom/google/android/material/q/g;->Y()F

    move-result v0

    return v0
.end method

.method j()F
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/google/android/material/d/b;->e:Lcom/google/android/material/q/g;

    invoke-virtual {v0}, Lcom/google/android/material/q/g;->Q()F

    move-result v0

    return v0
.end method

.method k()V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/android/material/d/b;->e:Lcom/google/android/material/q/g;

    iget-object v1, p0, Lcom/google/android/material/d/b;->c:Lcom/google/android/material/d/a;

    invoke-virtual {v1}, Lcom/google/android/material/d/a;->getCardElevation()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/q/g;->r(F)V

    .line 304
    return-void
.end method

.method l()V
    .locals 2

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/google/android/material/d/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/google/android/material/d/b;->c:Lcom/google/android/material/d/a;

    iget-object v1, p0, Lcom/google/android/material/d/b;->e:Lcom/google/android/material/q/g;

    invoke-direct {p0, v1}, Lcom/google/android/material/d/b;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/d/a;->setBackgroundInternal(Landroid/graphics/drawable/Drawable;)V

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/d/b;->c:Lcom/google/android/material/d/a;

    iget-object v1, p0, Lcom/google/android/material/d/b;->j:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1}, Lcom/google/android/material/d/b;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/d/a;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 312
    return-void
.end method

.method m()V
    .locals 3

    .prologue
    .line 315
    iget-object v0, p0, Lcom/google/android/material/d/b;->f:Lcom/google/android/material/q/g;

    iget v1, p0, Lcom/google/android/material/d/b;->i:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/material/d/b;->o:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/q/g;->a(FLandroid/content/res/ColorStateList;)V

    .line 316
    return-void
.end method

.method n()V
    .locals 6

    .prologue
    .line 326
    .line 327
    invoke-direct {p0}, Lcom/google/android/material/d/b;->y()Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    invoke-direct {p0}, Lcom/google/android/material/d/b;->z()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 331
    :goto_0
    if-eqz v0, :cond_2

    .line 333
    invoke-direct {p0}, Lcom/google/android/material/d/b;->A()F

    move-result v0

    .line 334
    :goto_1
    invoke-direct {p0}, Lcom/google/android/material/d/b;->x()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 336
    iget-object v1, p0, Lcom/google/android/material/d/b;->c:Lcom/google/android/material/d/a;

    iget-object v2, p0, Lcom/google/android/material/d/b;->d:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/google/android/material/d/b;->d:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/google/android/material/d/b;->d:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v0

    iget-object v5, p0, Lcom/google/android/material/d/b;->d:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v5

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/material/d/a;->b(IIII)V

    .line 341
    return-void

    .line 328
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 333
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method o()Z
    .locals 1

    .prologue
    .line 348
    iget-boolean v0, p0, Lcom/google/android/material/d/b;->u:Z

    return v0
.end method

.method p()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/google/android/material/d/b;->m:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method q()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/google/android/material/d/b;->l:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method r()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/google/android/material/d/b;->k:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method s()V
    .locals 7

    .prologue
    .line 411
    iget-object v0, p0, Lcom/google/android/material/d/b;->p:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/google/android/material/d/b;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 416
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 417
    iget-object v2, p0, Lcom/google/android/material/d/b;->p:Landroid/graphics/drawable/Drawable;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 418
    iget-object v2, p0, Lcom/google/android/material/d/b;->p:Landroid/graphics/drawable/Drawable;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 420
    :cond_0
    return-void
.end method

.method t()Lcom/google/android/material/q/k;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/google/android/material/d/b;->n:Lcom/google/android/material/q/k;

    return-object v0
.end method
