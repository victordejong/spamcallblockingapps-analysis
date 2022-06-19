.class public Le/g/a/a/c;
.super Landroid/graphics/drawable/Drawable;
.source ""

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/g/a/a/c$b;,
        Le/g/a/a/c$c;
    }
.end annotation


# instance fields
.field private b:Z

.field private c:Landroid/graphics/Paint;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Landroid/graphics/RectF;

.field private i:I

.field private j:I

.field private k:J

.field private l:F

.field private m:I

.field private n:Landroid/view/animation/Interpolator;

.field private o:I

.field private p:I

.field private q:Z

.field private r:Landroid/graphics/Paint$Cap;

.field private s:Landroid/graphics/Paint$Join;

.field private t:Z

.field private u:Landroid/graphics/Path;

.field private v:[Le/g/a/a/c$c;

.field private final w:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>([Le/g/a/a/c$c;IIIIIILandroid/view/animation/Interpolator;IILandroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;ZZ)V
    .locals 4

    move-object v0, p0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Le/g/a/a/c;->b:Z

    const/16 v2, 0xc

    iput v2, v0, Le/g/a/a/c;->d:I

    iput v2, v0, Le/g/a/a/c;->e:I

    iput v2, v0, Le/g/a/a/c;->f:I

    iput v2, v0, Le/g/a/a/c;->g:I

    new-instance v2, Le/g/a/a/c$a;

    invoke-direct {v2, p0}, Le/g/a/a/c$a;-><init>(Le/g/a/a/c;)V

    iput-object v2, v0, Le/g/a/a/c;->w:Ljava/lang/Runnable;

    move-object v2, p1

    iput-object v2, v0, Le/g/a/a/c;->v:[Le/g/a/a/c$c;

    move v2, p3

    iput v2, v0, Le/g/a/a/c;->d:I

    move v2, p4

    iput v2, v0, Le/g/a/a/c;->e:I

    move v2, p5

    iput v2, v0, Le/g/a/a/c;->f:I

    move v2, p6

    iput v2, v0, Le/g/a/a/c;->g:I

    move v2, p7

    iput v2, v0, Le/g/a/a/c;->m:I

    move-object v2, p8

    iput-object v2, v0, Le/g/a/a/c;->n:Landroid/view/animation/Interpolator;

    move v2, p9

    iput v2, v0, Le/g/a/a/c;->o:I

    move v2, p10

    iput v2, v0, Le/g/a/a/c;->p:I

    move-object v2, p11

    iput-object v2, v0, Le/g/a/a/c;->r:Landroid/graphics/Paint$Cap;

    move-object/from16 v2, p12

    iput-object v2, v0, Le/g/a/a/c;->s:Landroid/graphics/Paint$Join;

    move/from16 v2, p13

    iput-boolean v2, v0, Le/g/a/a/c;->q:Z

    move/from16 v2, p14

    iput-boolean v2, v0, Le/g/a/a/c;->t:Z

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Le/g/a/a/c;->c:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v2, v0, Le/g/a/a/c;->c:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, v0, Le/g/a/a/c;->c:Landroid/graphics/Paint;

    iget-object v3, v0, Le/g/a/a/c;->r:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v2, v0, Le/g/a/a/c;->c:Landroid/graphics/Paint;

    iget-object v3, v0, Le/g/a/a/c;->s:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v2, v0, Le/g/a/a/c;->c:Landroid/graphics/Paint;

    iget v3, v0, Le/g/a/a/c;->p:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Le/g/a/a/c;->c:Landroid/graphics/Paint;

    iget v3, v0, Le/g/a/a/c;->o:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Le/g/a/a/c;->h:Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Le/g/a/a/c;->u:Landroid/graphics/Path;

    move v2, p2

    invoke-virtual {p0, p2, v1}, Le/g/a/a/c;->g(IZ)V

    return-void
.end method

.method synthetic constructor <init>([Le/g/a/a/c$c;IIIIIILandroid/view/animation/Interpolator;IILandroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;ZZLe/g/a/a/c$a;)V
    .locals 0

    invoke-direct/range {p0 .. p14}, Le/g/a/a/c;-><init>([Le/g/a/a/c$c;IIIIIILandroid/view/animation/Interpolator;IILandroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;ZZ)V

    return-void
.end method

.method static synthetic a(Le/g/a/a/c;)V
    .locals 0

    invoke-direct {p0}, Le/g/a/a/c;->h()V

    return-void
.end method

.method private c(F)F
    .locals 2

    iget-object v0, p0, Le/g/a/a/c;->h:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    mul-float v0, v0, p1

    add-float/2addr v1, v0

    return v1
.end method

.method private d(F)F
    .locals 2

    iget-object v0, p0, Le/g/a/a/c;->h:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    mul-float v0, v0, p1

    add-float/2addr v1, v0

    return v1
.end method

.method private e()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Le/g/a/a/c;->k:J

    const/4 v0, 0x0

    iput v0, p0, Le/g/a/a/c;->l:F

    return-void
.end method

.method private h()V
    .locals 5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Le/g/a/a/c;->k:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, p0, Le/g/a/a/c;->m:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    iget v0, p0, Le/g/a/a/c;->j:I

    invoke-virtual {p0, v0, v1}, Le/g/a/a/c;->f(IF)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Le/g/a/a/c;->b:Z

    goto :goto_0

    :cond_0
    iget v1, p0, Le/g/a/a/c;->j:I

    iget-object v2, p0, Le/g/a/a/c;->n:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    invoke-virtual {p0, v1, v0}, Le/g/a/a/c;->f(IF)Z

    :goto_0
    invoke-virtual {p0}, Le/g/a/a/c;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/g/a/a/c;->w:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Le/g/a/a/c;->scheduleSelf(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method

.method private i()V
    .locals 5

    iget-object v0, p0, Le/g/a/a/c;->u:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Le/g/a/a/c;->v:[Le/g/a/a/c$c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Le/g/a/a/c;->l:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_4

    iget v2, p0, Le/g/a/a/c;->i:I

    aget-object v3, v0, v2

    iget-object v3, v3, Le/g/a/a/c$c;->b:[I

    if-eqz v3, :cond_1

    const v3, 0x3d4ccccd    # 0.05f

    cmpg-float v3, v1, v3

    if-gez v3, :cond_1

    goto :goto_1

    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_3

    iget v3, p0, Le/g/a/a/c;->j:I

    aget-object v4, v0, v3

    iget-object v4, v4, Le/g/a/a/c$c;->b:[I

    if-eqz v4, :cond_2

    const v4, 0x3f733333    # 0.95f

    cmpl-float v4, v1, v4

    if-lez v4, :cond_2

    goto :goto_0

    :cond_2
    iget-object v4, p0, Le/g/a/a/c;->u:Landroid/graphics/Path;

    aget-object v2, v0, v2

    aget-object v0, v0, v3

    iget-object v3, p0, Le/g/a/a/c;->n:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    invoke-direct {p0, v4, v2, v0, v1}, Le/g/a/a/c;->j(Landroid/graphics/Path;Le/g/a/a/c$c;Le/g/a/a/c$c;F)V

    goto :goto_3

    :cond_3
    :goto_0
    iget-object v1, p0, Le/g/a/a/c;->u:Landroid/graphics/Path;

    iget v2, p0, Le/g/a/a/c;->j:I

    aget-object v0, v0, v2

    goto :goto_2

    :cond_4
    :goto_1
    iget-object v1, p0, Le/g/a/a/c;->u:Landroid/graphics/Path;

    iget v2, p0, Le/g/a/a/c;->i:I

    aget-object v0, v0, v2

    :goto_2
    invoke-direct {p0, v1, v0}, Le/g/a/a/c;->k(Landroid/graphics/Path;Le/g/a/a/c$c;)V

    :goto_3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method private j(Landroid/graphics/Path;Le/g/a/a/c$c;Le/g/a/a/c$c;F)V
    .locals 10

    iget-object p1, p2, Le/g/a/a/c$c;->a:[F

    array-length p1, p1

    iget-object v0, p3, Le/g/a/a/c$c;->a:[F

    array-length v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    div-int/lit8 p1, p1, 0x4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    mul-int/lit8 v1, v0, 0x4

    iget-object v2, p2, Le/g/a/a/c$c;->a:[F

    array-length v3, v2

    const/high16 v4, 0x3f000000    # 0.5f

    if-lt v1, v3, :cond_0

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v6, 0x3f000000    # 0.5f

    goto :goto_1

    :cond_0
    aget v3, v2, v1

    add-int/lit8 v5, v1, 0x1

    aget v5, v2, v5

    add-int/lit8 v6, v1, 0x2

    aget v6, v2, v6

    add-int/lit8 v7, v1, 0x3

    aget v2, v2, v7

    :goto_1
    iget-object v7, p3, Le/g/a/a/c$c;->a:[F

    array-length v8, v7

    if-lt v1, v8, :cond_1

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v8, 0x3f000000    # 0.5f

    const/high16 v9, 0x3f000000    # 0.5f

    goto :goto_2

    :cond_1
    aget v4, v7, v1

    add-int/lit8 v8, v1, 0x1

    aget v8, v7, v8

    add-int/lit8 v9, v1, 0x2

    aget v9, v7, v9

    add-int/lit8 v1, v1, 0x3

    aget v1, v7, v1

    :goto_2
    iget-object v7, p0, Le/g/a/a/c;->u:Landroid/graphics/Path;

    sub-float/2addr v4, v3

    mul-float v4, v4, p4

    add-float/2addr v3, v4

    invoke-direct {p0, v3}, Le/g/a/a/c;->c(F)F

    move-result v3

    sub-float/2addr v8, v5

    mul-float v8, v8, p4

    add-float/2addr v5, v8

    invoke-direct {p0, v5}, Le/g/a/a/c;->d(F)F

    move-result v4

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v3, p0, Le/g/a/a/c;->u:Landroid/graphics/Path;

    sub-float/2addr v9, v6

    mul-float v9, v9, p4

    add-float/2addr v6, v9

    invoke-direct {p0, v6}, Le/g/a/a/c;->c(F)F

    move-result v4

    sub-float/2addr v1, v2

    mul-float v1, v1, p4

    add-float/2addr v2, v1

    invoke-direct {p0, v2}, Le/g/a/a/c;->d(F)F

    move-result v1

    invoke-virtual {v3, v4, v1}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private k(Landroid/graphics/Path;Le/g/a/a/c$c;)V
    .locals 11

    iget-object v0, p2, Le/g/a/a/c$c;->b:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p2, Le/g/a/a/c$c;->b:[I

    array-length v3, v2

    if-ge v0, v3, :cond_3

    aget v3, v2, v0

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v4, v0, 0x1

    aget v2, v2, v4

    mul-int/lit8 v2, v2, 0x4

    iget-object v4, p2, Le/g/a/a/c$c;->a:[F

    aget v4, v4, v3

    invoke-direct {p0, v4}, Le/g/a/a/c;->c(F)F

    move-result v4

    iget-object v5, p2, Le/g/a/a/c$c;->a:[F

    add-int/lit8 v6, v3, 0x1

    aget v5, v5, v6

    invoke-direct {p0, v5}, Le/g/a/a/c;->d(F)F

    move-result v5

    iget-object v6, p2, Le/g/a/a/c$c;->a:[F

    add-int/lit8 v7, v3, 0x2

    aget v6, v6, v7

    invoke-direct {p0, v6}, Le/g/a/a/c;->c(F)F

    move-result v6

    iget-object v7, p2, Le/g/a/a/c$c;->a:[F

    add-int/lit8 v3, v3, 0x3

    aget v3, v7, v3

    invoke-direct {p0, v3}, Le/g/a/a/c;->d(F)F

    move-result v3

    iget-object v7, p2, Le/g/a/a/c$c;->a:[F

    aget v7, v7, v2

    invoke-direct {p0, v7}, Le/g/a/a/c;->c(F)F

    move-result v7

    iget-object v8, p2, Le/g/a/a/c$c;->a:[F

    add-int/lit8 v9, v2, 0x1

    aget v8, v8, v9

    invoke-direct {p0, v8}, Le/g/a/a/c;->d(F)F

    move-result v8

    iget-object v9, p2, Le/g/a/a/c$c;->a:[F

    add-int/lit8 v10, v2, 0x2

    aget v9, v9, v10

    invoke-direct {p0, v9}, Le/g/a/a/c;->c(F)F

    move-result v9

    iget-object v10, p2, Le/g/a/a/c$c;->a:[F

    add-int/lit8 v2, v2, 0x3

    aget v2, v10, v2

    invoke-direct {p0, v2}, Le/g/a/a/c;->d(F)F

    move-result v2

    cmpl-float v10, v4, v7

    if-nez v10, :cond_0

    cmpl-float v10, v5, v8

    if-nez v10, :cond_0

    invoke-virtual {p1, v6, v3}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_1
    invoke-virtual {p1, v9, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_3

    :cond_0
    cmpl-float v10, v4, v9

    if-nez v10, :cond_1

    cmpl-float v10, v5, v2

    if-nez v10, :cond_1

    invoke-virtual {p1, v6, v3}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_2

    :cond_1
    cmpl-float v10, v6, v7

    if-nez v10, :cond_2

    cmpl-float v10, v3, v8

    if-nez v10, :cond_2

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {p1, v6, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {p1, v6, v3}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_2
    invoke-virtual {p1, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_3
    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_0

    :cond_3
    iget-object v0, p2, Le/g/a/a/c$c;->a:[F

    array-length v0, v0

    div-int/lit8 v0, v0, 0x4

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_8

    const/4 v3, 0x0

    :goto_5
    iget-object v4, p2, Le/g/a/a/c$c;->b:[I

    array-length v5, v4

    if-ge v3, v5, :cond_5

    aget v4, v4, v3

    if-ne v4, v2, :cond_4

    const/4 v3, 0x1

    goto :goto_6

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    :goto_6
    if-eqz v3, :cond_6

    goto :goto_7

    :cond_6
    mul-int/lit8 v3, v2, 0x4

    iget-object v4, p2, Le/g/a/a/c$c;->a:[F

    aget v4, v4, v3

    invoke-direct {p0, v4}, Le/g/a/a/c;->c(F)F

    move-result v4

    iget-object v5, p2, Le/g/a/a/c$c;->a:[F

    add-int/lit8 v6, v3, 0x1

    aget v5, v5, v6

    invoke-direct {p0, v5}, Le/g/a/a/c;->d(F)F

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v4, p2, Le/g/a/a/c$c;->a:[F

    add-int/lit8 v5, v3, 0x2

    aget v4, v4, v5

    invoke-direct {p0, v4}, Le/g/a/a/c;->c(F)F

    move-result v4

    iget-object v5, p2, Le/g/a/a/c$c;->a:[F

    add-int/lit8 v3, v3, 0x3

    aget v3, v5, v3

    invoke-direct {p0, v3}, Le/g/a/a/c;->d(F)F

    move-result v3

    invoke-virtual {p1, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    iget-object v0, p2, Le/g/a/a/c$c;->a:[F

    array-length v0, v0

    div-int/lit8 v0, v0, 0x4

    :goto_8
    if-ge v1, v0, :cond_8

    mul-int/lit8 v2, v1, 0x4

    iget-object v3, p2, Le/g/a/a/c$c;->a:[F

    aget v3, v3, v2

    invoke-direct {p0, v3}, Le/g/a/a/c;->c(F)F

    move-result v3

    iget-object v4, p2, Le/g/a/a/c$c;->a:[F

    add-int/lit8 v5, v2, 0x1

    aget v4, v4, v5

    invoke-direct {p0, v4}, Le/g/a/a/c;->d(F)F

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v3, p2, Le/g/a/a/c$c;->a:[F

    add-int/lit8 v4, v2, 0x2

    aget v3, v3, v4

    invoke-direct {p0, v3}, Le/g/a/a/c;->c(F)F

    move-result v3

    iget-object v4, p2, Le/g/a/a/c$c;->a:[F

    add-int/lit8 v2, v2, 0x3

    aget v2, v4, v2

    invoke-direct {p0, v2}, Le/g/a/a/c;->d(F)F

    move-result v2

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_8
    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    iget v0, p0, Le/g/a/a/c;->j:I

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-boolean v1, p0, Le/g/a/a/c;->q:Z

    if-eqz v1, :cond_0

    const/16 v1, 0xb4

    goto :goto_0

    :cond_0
    const/16 v1, -0xb4

    :goto_0
    int-to-float v1, v1

    iget v2, p0, Le/g/a/a/c;->i:I

    iget v3, p0, Le/g/a/a/c;->j:I

    const/high16 v4, 0x3f800000    # 1.0f

    if-ge v2, v3, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_1
    iget v3, p0, Le/g/a/a/c;->l:F

    add-float/2addr v2, v3

    mul-float v1, v1, v2

    iget-boolean v2, p0, Le/g/a/a/c;->t:Z

    if-eqz v2, :cond_2

    const/high16 v2, -0x40800000    # -1.0f

    iget-object v3, p0, Le/g/a/a/c;->h:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v5, p0, Le/g/a/a/c;->h:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {p1, v2, v4, v3, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_2
    iget-object v2, p0, Le/g/a/a/c;->h:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Le/g/a/a/c;->h:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v1, p0, Le/g/a/a/c;->u:Landroid/graphics/Path;

    iget-object v2, p0, Le/g/a/a/c;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public f(IF)Z
    .locals 2

    iget v0, p0, Le/g/a/a/c;->j:I

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    iput v0, p0, Le/g/a/a/c;->i:I

    iput p1, p0, Le/g/a/a/c;->j:I

    :goto_0
    iput p2, p0, Le/g/a/a/c;->l:F

    invoke-direct {p0}, Le/g/a/a/c;->i()V

    return v1

    :cond_0
    iget p1, p0, Le/g/a/a/c;->l:F

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public g(IZ)V
    .locals 2

    iget v0, p0, Le/g/a/a/c;->j:I

    const/high16 v1, 0x3f800000    # 1.0f

    if-eq v0, p1, :cond_0

    iput v0, p0, Le/g/a/a/c;->i:I

    iput p1, p0, Le/g/a/a/c;->j:I

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Le/g/a/a/c;->start()V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_2

    :cond_1
    iput v1, p0, Le/g/a/a/c;->l:F

    invoke-direct {p0}, Le/g/a/a/c;->i()V

    :cond_2
    :goto_0
    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Le/g/a/a/c;->b:Z

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    iget-object v0, p0, Le/g/a/a/c;->h:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Le/g/a/a/c;->d:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Le/g/a/a/c;->e:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Le/g/a/a/c;->f:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Le/g/a/a/c;->g:I

    sub-int/2addr p1, v1

    int-to-float p1, p1

    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0}, Le/g/a/a/c;->i()V

    return-void
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Le/g/a/a/c;->b:Z

    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Le/g/a/a/c;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Le/g/a/a/c;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public start()V
    .locals 5

    invoke-direct {p0}, Le/g/a/a/c;->e()V

    iget-object v0, p0, Le/g/a/a/c;->w:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Le/g/a/a/c;->scheduleSelf(Ljava/lang/Runnable;J)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public stop()V
    .locals 1

    invoke-virtual {p0}, Le/g/a/a/c;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Le/g/a/a/c;->b:Z

    iget-object v0, p0, Le/g/a/a/c;->w:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
