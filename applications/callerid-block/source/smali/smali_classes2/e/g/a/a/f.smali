.class public Le/g/a/a/f;
.super Landroid/graphics/drawable/Drawable;
.source ""

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/g/a/a/f$b;,
        Le/g/a/a/f$c;
    }
.end annotation


# static fields
.field private static final C:[F


# instance fields
.field private A:I

.field private final B:Ljava/lang/Runnable;

.field private b:Z

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/Paint;

.field private e:Le/g/a/a/f$c;

.field private f:Landroid/graphics/RadialGradient;

.field private g:Landroid/graphics/RadialGradient;

.field private h:Landroid/graphics/Matrix;

.field private i:I

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:Landroid/graphics/RectF;

.field private l:Landroid/graphics/Path;

.field private m:I

.field private n:I

.field private o:F

.field private p:Landroid/graphics/PointF;

.field private q:F

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:F

.field private w:I

.field private x:Landroid/view/animation/Interpolator;

.field private y:Landroid/view/animation/Interpolator;

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Le/g/a/a/f;->C:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f7d70a4    # 0.99f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private constructor <init>(Landroid/graphics/drawable/Drawable;IIIIIIILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;IIIIIIIII)V
    .locals 12

    move-object v0, p0

    move/from16 v1, p6

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, v0, Le/g/a/a/f;->b:Z

    const/16 v3, 0xff

    iput v3, v0, Le/g/a/a/f;->i:I

    iput v2, v0, Le/g/a/a/f;->A:I

    new-instance v3, Le/g/a/a/f$a;

    invoke-direct {v3, p0}, Le/g/a/a/f$a;-><init>(Le/g/a/a/f;)V

    iput-object v3, v0, Le/g/a/a/f;->B:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Le/g/a/a/f;->r(Landroid/graphics/drawable/Drawable;)V

    move v3, p2

    iput v3, v0, Le/g/a/a/f;->m:I

    move v3, p3

    iput v3, v0, Le/g/a/a/f;->n:I

    move/from16 v3, p4

    iput v3, v0, Le/g/a/a/f;->r:I

    move/from16 v3, p5

    invoke-virtual {p0, v3}, Le/g/a/a/f;->s(I)V

    iput v1, v0, Le/g/a/a/f;->s:I

    move/from16 v3, p7

    iput v3, v0, Le/g/a/a/f;->t:I

    move/from16 v3, p8

    iput v3, v0, Le/g/a/a/f;->u:I

    iget v3, v0, Le/g/a/a/f;->r:I

    if-nez v3, :cond_0

    if-gtz v1, :cond_0

    const/4 v1, -0x1

    iput v1, v0, Le/g/a/a/f;->r:I

    :cond_0
    move-object/from16 v1, p9

    iput-object v1, v0, Le/g/a/a/f;->x:Landroid/view/animation/Interpolator;

    move-object/from16 v1, p10

    iput-object v1, v0, Le/g/a/a/f;->y:Landroid/view/animation/Interpolator;

    move-object p1, p0

    move/from16 p2, p11

    move/from16 p3, p12

    move/from16 p4, p13

    move/from16 p5, p14

    move/from16 p6, p15

    move/from16 p7, p16

    move/from16 p8, p17

    move/from16 p9, p18

    move/from16 p10, p19

    invoke-virtual/range {p1 .. p10}, Le/g/a/a/f;->t(IIIIIIIII)V

    new-instance v1, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Le/g/a/a/f;->d:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Le/g/a/a/f;->c:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, v0, Le/g/a/a/f;->l:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Le/g/a/a/f;->k:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, v0, Le/g/a/a/f;->p:Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, v0, Le/g/a/a/f;->h:Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/RadialGradient;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x41800000    # 16.0f

    const/4 v7, 0x3

    new-array v8, v7, [I

    iget v9, v0, Le/g/a/a/f;->u:I

    aput v9, v8, v2

    aput v9, v8, v3

    const/4 v9, 0x2

    aput v2, v8, v9

    sget-object v10, Le/g/a/a/f;->C:[F

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object p1, v1

    move p2, v4

    move p3, v5

    move/from16 p4, v6

    move-object/from16 p5, v8

    move-object/from16 p6, v10

    move-object/from16 p7, v11

    invoke-direct/range {p1 .. p7}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v1, v0, Le/g/a/a/f;->f:Landroid/graphics/RadialGradient;

    iget v1, v0, Le/g/a/a/f;->r:I

    if-ne v1, v3, :cond_1

    new-instance v1, Landroid/graphics/RadialGradient;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x41800000    # 16.0f

    new-array v7, v7, [I

    aput v2, v7, v2

    iget v2, v0, Le/g/a/a/f;->u:I

    const/4 v8, 0x0

    invoke-static {v2, v8}, Le/g/a/b/a;->a(IF)I

    move-result v2

    aput v2, v7, v3

    iget v2, v0, Le/g/a/a/f;->u:I

    aput v2, v7, v9

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object p1, v1

    move p2, v4

    move p3, v5

    move/from16 p4, v6

    move-object/from16 p5, v7

    move-object/from16 p6, v10

    move-object/from16 p7, v2

    invoke-direct/range {p1 .. p7}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v1, v0, Le/g/a/a/f;->g:Landroid/graphics/RadialGradient;

    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/Drawable;IIIIIIILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;IIIIIIIIILe/g/a/a/f$a;)V
    .locals 0

    invoke-direct/range {p0 .. p19}, Le/g/a/a/f;-><init>(Landroid/graphics/drawable/Drawable;IIIIIIILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;IIIIIIIII)V

    return-void
.end method

.method static synthetic a(Le/g/a/a/f;)I
    .locals 0

    iget p0, p0, Le/g/a/a/f;->r:I

    return p0
.end method

.method static synthetic b(Le/g/a/a/f;)V
    .locals 0

    invoke-direct {p0}, Le/g/a/a/f;->w()V

    return-void
.end method

.method static synthetic c(Le/g/a/a/f;)V
    .locals 0

    invoke-direct {p0}, Le/g/a/a/f;->x()V

    return-void
.end method

.method private f(Landroid/graphics/Canvas;)V
    .locals 4

    iget v0, p0, Le/g/a/a/f;->A:I

    if-eqz v0, :cond_1

    iget v0, p0, Le/g/a/a/f;->o:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Le/g/a/a/f;->d:Landroid/graphics/Paint;

    iget v2, p0, Le/g/a/a/f;->n:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Le/g/a/a/f;->d:Landroid/graphics/Paint;

    iget v2, p0, Le/g/a/a/f;->i:I

    int-to-float v2, v2

    iget v3, p0, Le/g/a/a/f;->o:F

    mul-float v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Le/g/a/a/f;->l:Landroid/graphics/Path;

    iget-object v2, p0, Le/g/a/a/f;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    iget v0, p0, Le/g/a/a/f;->q:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Le/g/a/a/f;->v:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    iget-object v1, p0, Le/g/a/a/f;->c:Landroid/graphics/Paint;

    iget v2, p0, Le/g/a/a/f;->i:I

    int-to-float v2, v2

    mul-float v2, v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Le/g/a/a/f;->c:Landroid/graphics/Paint;

    iget-object v1, p0, Le/g/a/a/f;->f:Landroid/graphics/RadialGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Le/g/a/a/f;->l:Landroid/graphics/Path;

    iget-object v1, p0, Le/g/a/a/f;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method private g(Landroid/graphics/Canvas;)V
    .locals 3

    iget v0, p0, Le/g/a/a/f;->A:I

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget v0, p0, Le/g/a/a/f;->q:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Le/g/a/a/f;->d:Landroid/graphics/Paint;

    iget v1, p0, Le/g/a/a/f;->u:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Le/g/a/a/f;->l:Landroid/graphics/Path;

    iget-object v1, p0, Le/g/a/a/f;->d:Landroid/graphics/Paint;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Le/g/a/a/f;->c:Landroid/graphics/Paint;

    iget-object v1, p0, Le/g/a/a/f;->g:Landroid/graphics/RadialGradient;

    goto :goto_0

    :cond_1
    iget v0, p0, Le/g/a/a/f;->q:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    iget-object v0, p0, Le/g/a/a/f;->c:Landroid/graphics/Paint;

    iget-object v1, p0, Le/g/a/a/f;->f:Landroid/graphics/RadialGradient;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Le/g/a/a/f;->l:Landroid/graphics/Path;

    iget-object v1, p0, Le/g/a/a/f;->c:Landroid/graphics/Paint;

    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method private m(FF)I
    .locals 6

    iget-object v0, p0, Le/g/a/a/f;->k:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget-object v0, p0, Le/g/a/a/f;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le/g/a/a/f;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    :goto_0
    iget-object v1, p0, Le/g/a/a/f;->k:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    cmpg-float v1, p2, v1

    if-gez v1, :cond_1

    iget-object v1, p0, Le/g/a/a/f;->k:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    goto :goto_1

    :cond_1
    iget-object v1, p0, Le/g/a/a/f;->k:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    :goto_1
    sub-float/2addr v0, p1

    float-to-double v2, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-float/2addr v1, p2

    float-to-double p1, v1

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-int p2, p1

    return p2
.end method

.method private o()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Le/g/a/a/f;->z:J

    return-void
.end method

.method private u(FFF)Z
    .locals 2

    iget-object v0, p0, Le/g/a/a/f;->p:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v1, v1, p1

    if-nez v1, :cond_1

    iget v1, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, p2

    if-nez v1, :cond_1

    iget v1, p0, Le/g/a/a/f;->q:F

    cmpl-float v1, v1, p3

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    iput p3, p0, Le/g/a/a/f;->q:F

    const/high16 v0, 0x41800000    # 16.0f

    div-float/2addr p3, v0

    iget-object v0, p0, Le/g/a/a/f;->h:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Le/g/a/a/f;->h:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Le/g/a/a/f;->h:Landroid/graphics/Matrix;

    invoke-virtual {v0, p3, p3, p1, p2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object p1, p0, Le/g/a/a/f;->f:Landroid/graphics/RadialGradient;

    iget-object p2, p0, Le/g/a/a/f;->h:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/RadialGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object p1, p0, Le/g/a/a/f;->g:Landroid/graphics/RadialGradient;

    if-eqz p1, :cond_2

    iget-object p2, p0, Le/g/a/a/f;->h:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/RadialGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private v(I)V
    .locals 1

    iget v0, p0, Le/g/a/a/f;->A:I

    if-eq v0, p1, :cond_3

    if-nez v0, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Le/g/a/a/f;->A:I

    if-eqz p1, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Le/g/a/a/f;->start()V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Le/g/a/a/f;->stop()V

    :cond_3
    :goto_1
    return-void
.end method

.method private w()V
    .locals 8

    iget v0, p0, Le/g/a/a/f;->A:I

    const/high16 v1, 0x437f0000    # 255.0f

    const/4 v2, 0x4

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Le/g/a/a/f;->z:J

    sub-long/2addr v4, v6

    if-eq v0, v2, :cond_1

    long-to-float v0, v4

    iget v4, p0, Le/g/a/a/f;->m:I

    int-to-float v4, v4

    div-float/2addr v0, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v4, p0, Le/g/a/a/f;->x:Landroid/view/animation/Interpolator;

    invoke-interface {v4, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    iget v5, p0, Le/g/a/a/f;->n:I

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    int-to-float v5, v5

    mul-float v4, v4, v5

    div-float/2addr v4, v1

    iput v4, p0, Le/g/a/a/f;->o:F

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Le/g/a/a/f;->z:J

    sub-long/2addr v4, v6

    long-to-float v1, v4

    iget v4, p0, Le/g/a/a/f;->t:I

    int-to-float v4, v4

    div-float/2addr v1, v4

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v4, p0, Le/g/a/a/f;->x:Landroid/view/animation/Interpolator;

    invoke-interface {v4, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    iput v4, p0, Le/g/a/a/f;->v:F

    iget-object v4, p0, Le/g/a/a/f;->p:Landroid/graphics/PointF;

    iget v5, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget v6, p0, Le/g/a/a/f;->s:I

    int-to-float v6, v6

    iget-object v7, p0, Le/g/a/a/f;->x:Landroid/view/animation/Interpolator;

    invoke-interface {v7, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v7

    mul-float v6, v6, v7

    invoke-direct {p0, v5, v4, v6}, Le/g/a/a/f;->u(FFF)Z

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    cmpl-float v0, v1, v3

    if-nez v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Le/g/a/a/f;->z:J

    iget v0, p0, Le/g/a/a/f;->A:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v2, 0x2

    :cond_0
    invoke-direct {p0, v2}, Le/g/a/a/f;->v(I)V

    goto :goto_0

    :cond_1
    long-to-float v0, v4

    iget v2, p0, Le/g/a/a/f;->m:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v2, p0, Le/g/a/a/f;->y:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    sub-float v2, v3, v2

    iget v4, p0, Le/g/a/a/f;->n:I

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    int-to-float v4, v4

    mul-float v2, v2, v4

    div-float/2addr v2, v1

    iput v2, p0, Le/g/a/a/f;->o:F

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v4, p0, Le/g/a/a/f;->z:J

    sub-long/2addr v1, v4

    long-to-float v1, v1

    iget v2, p0, Le/g/a/a/f;->t:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v2, p0, Le/g/a/a/f;->y:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    sub-float v2, v3, v2

    iput v2, p0, Le/g/a/a/f;->v:F

    iget-object v2, p0, Le/g/a/a/f;->p:Landroid/graphics/PointF;

    iget v4, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v5, p0, Le/g/a/a/f;->s:I

    int-to-float v5, v5

    const/high16 v6, 0x3f000000    # 0.5f

    iget-object v7, p0, Le/g/a/a/f;->y:Landroid/view/animation/Interpolator;

    invoke-interface {v7, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v7

    mul-float v7, v7, v6

    add-float/2addr v7, v3

    mul-float v5, v5, v7

    invoke-direct {p0, v4, v2, v5}, Le/g/a/a/f;->u(FFF)Z

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    cmpl-float v0, v1, v3

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Le/g/a/a/f;->v(I)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Le/g/a/a/f;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Le/g/a/a/f;->B:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Le/g/a/a/f;->scheduleSelf(Ljava/lang/Runnable;J)V

    :cond_3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method private x()V
    .locals 7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Le/g/a/a/f;->z:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, p0, Le/g/a/a/f;->t:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v2, p0, Le/g/a/a/f;->A:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Le/g/a/a/f;->p:Landroid/graphics/PointF;

    iget v4, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v5, p0, Le/g/a/a/f;->s:I

    int-to-float v5, v5

    iget-object v6, p0, Le/g/a/a/f;->x:Landroid/view/animation/Interpolator;

    invoke-interface {v6, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    mul-float v5, v5, v6

    invoke-direct {p0, v4, v2, v5}, Le/g/a/a/f;->u(FFF)Z

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Le/g/a/a/f;->z:J

    iget v0, p0, Le/g/a/a/f;->A:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le/g/a/a/f;->p:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Le/g/a/a/f;->u(FFF)Z

    invoke-direct {p0, v3}, Le/g/a/a/f;->v(I)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Le/g/a/a/f;->p:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v4, p0, Le/g/a/a/f;->s:I

    int-to-float v4, v4

    iget-object v5, p0, Le/g/a/a/f;->y:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    mul-float v4, v4, v5

    invoke-direct {p0, v3, v2, v4}, Le/g/a/a/f;->u(FFF)Z

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Le/g/a/a/f;->v(I)V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Le/g/a/a/f;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Le/g/a/a/f;->B:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Le/g/a/a/f;->scheduleSelf(Ljava/lang/Runnable;J)V

    :cond_3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Le/g/a/a/f;->v(I)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Le/g/a/a/f;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget v0, p0, Le/g/a/a/f;->r:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Le/g/a/a/f;->g(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Le/g/a/a/f;->f(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public i()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Le/g/a/a/f;->j:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isRunning()Z
    .locals 2

    iget v0, p0, Le/g/a/a/f;->A:I

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Le/g/a/a/f;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStateful()Z
    .locals 1

    iget-object v0, p0, Le/g/a/a/f;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l()J
    .locals 6

    iget v0, p0, Le/g/a/a/f;->w:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_2

    :cond_0
    iget v0, p0, Le/g/a/a/f;->A:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Le/g/a/a/f;->m:I

    iget v2, p0, Le/g/a/a/f;->t:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    :goto_0
    int-to-long v0, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Le/g/a/a/f;->z:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    return-wide v0

    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    :goto_1
    iget v0, p0, Le/g/a/a/f;->m:I

    iget v1, p0, Le/g/a/a/f;->t:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_2
    iget v0, p0, Le/g/a/a/f;->A:I

    if-ne v0, v2, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 6

    iget-object v0, p0, Le/g/a/a/f;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    iget-object v0, p0, Le/g/a/a/f;->k:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Le/g/a/a/f;->e:Le/g/a/a/f$c;

    iget v3, v2, Le/g/a/a/f$c;->c:I

    add-int/2addr v1, v3

    int-to-float v1, v1

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, v2, Le/g/a/a/f$c;->d:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, v2, Le/g/a/a/f$c;->e:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, v2, Le/g/a/a/f$c;->f:I

    sub-int/2addr p1, v2

    int-to-float p1, p1

    invoke-virtual {v0, v1, v3, v4, p1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p0, Le/g/a/a/f;->l:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    iget-object p1, p0, Le/g/a/a/f;->e:Le/g/a/a/f$c;

    iget v0, p1, Le/g/a/a/f$c;->a:I

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    if-eq v0, p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Le/g/a/a/f;->l:Landroid/graphics/Path;

    iget-object v0, p0, Le/g/a/a/f;->k:Landroid/graphics/RectF;

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Le/g/a/a/f;->l:Landroid/graphics/Path;

    iget-object v1, p0, Le/g/a/a/f;->k:Landroid/graphics/RectF;

    iget-object p1, p1, Le/g/a/a/f$c;->b:[F

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, p1, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    :goto_0
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 1

    iget-object v0, p0, Le/g/a/a/f;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eqz p1, :cond_4

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eq p1, v3, :cond_0

    if-eq p1, v5, :cond_4

    if-eq p1, v4, :cond_0

    goto :goto_1

    :cond_0
    iget p1, p0, Le/g/a/a/f;->A:I

    if-eqz p1, :cond_9

    if-ne p1, v5, :cond_3

    iget p1, p0, Le/g/a/a/f;->r:I

    if-eq p1, v3, :cond_1

    if-ne p1, v1, :cond_2

    :cond_1
    iget-object p1, p0, Le/g/a/a/f;->p:Landroid/graphics/PointF;

    iget p2, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, p2, p1, v0}, Le/g/a/a/f;->u(FFF)Z

    :cond_2
    invoke-direct {p0, v2}, Le/g/a/a/f;->v(I)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, v4}, Le/g/a/a/f;->v(I)V

    goto :goto_1

    :cond_4
    iget p1, p0, Le/g/a/a/f;->A:I

    if-eqz p1, :cond_6

    if-ne p1, v2, :cond_5

    goto :goto_0

    :cond_5
    iget p1, p0, Le/g/a/a/f;->r:I

    if-nez p1, :cond_9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iget v0, p0, Le/g/a/a/f;->q:F

    invoke-direct {p0, p1, p2, v0}, Le/g/a/a/f;->u(FFF)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_1

    :cond_6
    :goto_0
    iget p1, p0, Le/g/a/a/f;->r:I

    if-eq p1, v3, :cond_7

    if-ne p1, v1, :cond_8

    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, p1, v1}, Le/g/a/a/f;->m(FF)I

    move-result p1

    iput p1, p0, Le/g/a/a/f;->s:I

    :cond_8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-direct {p0, p1, p2, v0}, Le/g/a/a/f;->u(FFF)Z

    invoke-direct {p0, v3}, Le/g/a/a/f;->v(I)V

    :cond_9
    :goto_1
    return v3
.end method

.method public r(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iput-object p1, p0, Le/g/a/a/f;->j:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public s(I)V
    .locals 0

    iput p1, p0, Le/g/a/a/f;->w:I

    return-void
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Le/g/a/a/f;->b:Z

    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    iput p1, p0, Le/g/a/a/f;->i:I

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Le/g/a/a/f;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Le/g/a/a/f;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public start()V
    .locals 5

    invoke-virtual {p0}, Le/g/a/a/f;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Le/g/a/a/f;->o()V

    iget-object v0, p0, Le/g/a/a/f;->B:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Le/g/a/a/f;->scheduleSelf(Ljava/lang/Runnable;J)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Le/g/a/a/f;->b:Z

    iget-object v0, p0, Le/g/a/a/f;->B:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public t(IIIIIIIII)V
    .locals 11

    new-instance v10, Le/g/a/a/f$c;

    move-object v0, v10

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Le/g/a/a/f$c;-><init>(IIIIIIIII)V

    move-object v0, p0

    iput-object v10, v0, Le/g/a/a/f;->e:Le/g/a/a/f$c;

    return-void
.end method
