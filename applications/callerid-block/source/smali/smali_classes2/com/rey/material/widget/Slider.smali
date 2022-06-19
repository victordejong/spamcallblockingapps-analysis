.class public Lcom/rey/material/widget/Slider;
.super Landroid/view/View;
.source ""

# interfaces
.implements Lcom/rey/material/app/b$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rey/material/widget/Slider$SavedState;,
        Lcom/rey/material/widget/Slider$c;,
        Lcom/rey/material/widget/Slider$e;,
        Lcom/rey/material/widget/Slider$d;,
        Lcom/rey/material/widget/Slider$b;
    }
.end annotation


# instance fields
.field private A:I

.field private B:I

.field private C:Landroid/view/animation/Interpolator;

.field private D:I

.field private E:Landroid/graphics/PointF;

.field private F:Z

.field private G:F

.field private H:F

.field private I:Z

.field private J:I

.field private K:I

.field private L:Ljava/lang/String;

.field private M:Lcom/rey/material/widget/Slider$d;

.field private N:Lcom/rey/material/widget/Slider$e;

.field private O:Lcom/rey/material/widget/Slider$c;

.field private P:Z

.field private Q:Lcom/rey/material/widget/Slider$b;

.field private b:Lcom/rey/material/widget/a;

.field protected c:I

.field protected d:I

.field private e:Landroid/graphics/Paint;

.field private f:Landroid/graphics/RectF;

.field private g:Landroid/graphics/RectF;

.field private h:Landroid/graphics/Path;

.field private i:Landroid/graphics/Path;

.field private j:Landroid/graphics/Path;

.field private k:I

.field private l:I

.field private m:I

.field private n:Z

.field private o:I

.field private p:I

.field private q:I

.field private r:Landroid/graphics/Paint$Cap;

.field private s:I

.field private t:I

.field private u:I

.field private v:F

.field private w:Landroid/graphics/Typeface;

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/rey/material/widget/Slider;->d:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/rey/material/widget/Slider;->k:I

    const/16 v1, 0x64

    iput v1, p0, Lcom/rey/material/widget/Slider;->l:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/rey/material/widget/Slider;->m:I

    iput-boolean v0, p0, Lcom/rey/material/widget/Slider;->n:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/rey/material/widget/Slider;->q:I

    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v2, p0, Lcom/rey/material/widget/Slider;->r:Landroid/graphics/Paint$Cap;

    iput v1, p0, Lcom/rey/material/widget/Slider;->s:I

    iput v1, p0, Lcom/rey/material/widget/Slider;->t:I

    iput v1, p0, Lcom/rey/material/widget/Slider;->u:I

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/rey/material/widget/Slider;->v:F

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v2, p0, Lcom/rey/material/widget/Slider;->w:Landroid/graphics/Typeface;

    iput v1, p0, Lcom/rey/material/widget/Slider;->x:I

    iput v1, p0, Lcom/rey/material/widget/Slider;->y:I

    const/16 v2, 0x11

    iput v2, p0, Lcom/rey/material/widget/Slider;->z:I

    iput v1, p0, Lcom/rey/material/widget/Slider;->A:I

    iput v1, p0, Lcom/rey/material/widget/Slider;->B:I

    iput-boolean v0, p0, Lcom/rey/material/widget/Slider;->I:Z

    iput-boolean v0, p0, Lcom/rey/material/widget/Slider;->P:Z

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, v0}, Lcom/rey/material/widget/Slider;->v(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/rey/material/widget/Slider;->d:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/rey/material/widget/Slider;->k:I

    const/16 v1, 0x64

    iput v1, p0, Lcom/rey/material/widget/Slider;->l:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/rey/material/widget/Slider;->m:I

    iput-boolean v0, p0, Lcom/rey/material/widget/Slider;->n:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/rey/material/widget/Slider;->q:I

    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v2, p0, Lcom/rey/material/widget/Slider;->r:Landroid/graphics/Paint$Cap;

    iput v1, p0, Lcom/rey/material/widget/Slider;->s:I

    iput v1, p0, Lcom/rey/material/widget/Slider;->t:I

    iput v1, p0, Lcom/rey/material/widget/Slider;->u:I

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/rey/material/widget/Slider;->v:F

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v2, p0, Lcom/rey/material/widget/Slider;->w:Landroid/graphics/Typeface;

    iput v1, p0, Lcom/rey/material/widget/Slider;->x:I

    iput v1, p0, Lcom/rey/material/widget/Slider;->y:I

    const/16 v2, 0x11

    iput v2, p0, Lcom/rey/material/widget/Slider;->z:I

    iput v1, p0, Lcom/rey/material/widget/Slider;->A:I

    iput v1, p0, Lcom/rey/material/widget/Slider;->B:I

    iput-boolean v0, p0, Lcom/rey/material/widget/Slider;->I:Z

    iput-boolean v0, p0, Lcom/rey/material/widget/Slider;->P:Z

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/rey/material/widget/Slider;->v(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/rey/material/widget/Slider;->d:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/rey/material/widget/Slider;->k:I

    const/16 v1, 0x64

    iput v1, p0, Lcom/rey/material/widget/Slider;->l:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/rey/material/widget/Slider;->m:I

    iput-boolean v0, p0, Lcom/rey/material/widget/Slider;->n:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/rey/material/widget/Slider;->q:I

    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v2, p0, Lcom/rey/material/widget/Slider;->r:Landroid/graphics/Paint$Cap;

    iput v1, p0, Lcom/rey/material/widget/Slider;->s:I

    iput v1, p0, Lcom/rey/material/widget/Slider;->t:I

    iput v1, p0, Lcom/rey/material/widget/Slider;->u:I

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/rey/material/widget/Slider;->v:F

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v2, p0, Lcom/rey/material/widget/Slider;->w:Landroid/graphics/Typeface;

    iput v1, p0, Lcom/rey/material/widget/Slider;->x:I

    iput v1, p0, Lcom/rey/material/widget/Slider;->y:I

    const/16 v2, 0x11

    iput v2, p0, Lcom/rey/material/widget/Slider;->z:I

    iput v1, p0, Lcom/rey/material/widget/Slider;->A:I

    iput v1, p0, Lcom/rey/material/widget/Slider;->B:I

    iput-boolean v0, p0, Lcom/rey/material/widget/Slider;->I:Z

    iput-boolean v0, p0, Lcom/rey/material/widget/Slider;->P:Z

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/rey/material/widget/Slider;->v(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method static synthetic a(Lcom/rey/material/widget/Slider;)F
    .locals 0

    iget p0, p0, Lcom/rey/material/widget/Slider;->G:F

    return p0
.end method

.method static synthetic b(Lcom/rey/material/widget/Slider;F)F
    .locals 0

    iput p1, p0, Lcom/rey/material/widget/Slider;->G:F

    return p1
.end method

.method static synthetic c(Lcom/rey/material/widget/Slider;)I
    .locals 0

    iget p0, p0, Lcom/rey/material/widget/Slider;->B:I

    return p0
.end method

.method static synthetic e(Lcom/rey/material/widget/Slider;)I
    .locals 0

    iget p0, p0, Lcom/rey/material/widget/Slider;->s:I

    return p0
.end method

.method static synthetic f(Lcom/rey/material/widget/Slider;)Landroid/view/animation/Interpolator;
    .locals 0

    iget-object p0, p0, Lcom/rey/material/widget/Slider;->C:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method static synthetic g(Lcom/rey/material/widget/Slider;)F
    .locals 0

    iget p0, p0, Lcom/rey/material/widget/Slider;->H:F

    return p0
.end method

.method private getValueText()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/rey/material/widget/Slider;->getValue()I

    move-result v0

    iget-object v1, p0, Lcom/rey/material/widget/Slider;->L:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/rey/material/widget/Slider;->K:I

    if-eq v1, v0, :cond_1

    :cond_0
    iput v0, p0, Lcom/rey/material/widget/Slider;->K:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rey/material/widget/Slider;->L:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/rey/material/widget/Slider;->L:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/rey/material/widget/Slider;F)F
    .locals 0

    iput p1, p0, Lcom/rey/material/widget/Slider;->H:F

    return p1
.end method

.method static synthetic i(Lcom/rey/material/widget/Slider;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/rey/material/widget/Slider;->I:Z

    return p0
.end method

.method static synthetic j(Lcom/rey/material/widget/Slider;)F
    .locals 0

    iget p0, p0, Lcom/rey/material/widget/Slider;->v:F

    return p0
.end method

.method static synthetic k(Lcom/rey/material/widget/Slider;F)F
    .locals 0

    iput p1, p0, Lcom/rey/material/widget/Slider;->v:F

    return p1
.end method

.method static synthetic l(Lcom/rey/material/widget/Slider;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/rey/material/widget/Slider;->n:Z

    return p0
.end method

.method static synthetic m(Lcom/rey/material/widget/Slider;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/rey/material/widget/Slider;->F:Z

    return p0
.end method

.method static synthetic n(Lcom/rey/material/widget/Slider;)I
    .locals 0

    iget p0, p0, Lcom/rey/material/widget/Slider;->A:I

    return p0
.end method

.method static synthetic o(Lcom/rey/material/widget/Slider;)I
    .locals 0

    iget p0, p0, Lcom/rey/material/widget/Slider;->t:I

    return p0
.end method

.method private r(F)F
    .locals 5

    iget-boolean v0, p0, Lcom/rey/material/widget/Slider;->n:Z

    if-nez v0, :cond_0

    return p1

    :cond_0
    iget v0, p0, Lcom/rey/material/widget/Slider;->l:I

    iget v1, p0, Lcom/rey/material/widget/Slider;->k:I

    sub-int/2addr v0, v1

    int-to-float v1, v0

    mul-float p1, p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget v2, p0, Lcom/rey/material/widget/Slider;->m:I

    div-int v3, p1, v2

    mul-int v4, v3, v2

    add-int/lit8 v3, v3, 0x1

    mul-int v3, v3, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int v2, p1, v4

    sub-int p1, v0, p1

    if-ge v2, p1, :cond_1

    int-to-float p1, v4

    goto :goto_0

    :cond_1
    int-to-float p1, v0

    :goto_0
    div-float/2addr p1, v1

    return p1
.end method

.method private s(FFFF)D
    .locals 4

    sub-float/2addr p1, p3

    float-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-float/2addr p2, p4

    float-to-double p1, p2

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    return-wide p1
.end method

.method private t(Landroid/graphics/Path;FFFF)Landroid/graphics/Path;
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    if-nez p1, :cond_0

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Path;->reset()V

    move-object/from16 v3, p1

    :goto_0
    sub-float v4, v1, p4

    add-float v5, v1, p4

    add-float v6, v2, p4

    mul-float v7, p4, p5

    sub-float v7, v2, v7

    sub-float v8, v2, v7

    float-to-double v8, v8

    sub-float v10, v5, v1

    float-to-double v10, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    const-wide v10, 0x4066800000000000L    # 180.0

    mul-double v8, v8, v10

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v8, v12

    double-to-float v8, v8

    invoke-direct {v0, v1, v7, v4, v2}, Lcom/rey/material/widget/Slider;->s(FFFF)D

    move-result-wide v14

    double-to-float v9, v14

    iget-object v14, v0, Lcom/rey/material/widget/Slider;->g:Landroid/graphics/RectF;

    sub-float v15, v1, v9

    sub-float v10, v7, v9

    add-float v11, v1, v9

    add-float/2addr v7, v9

    invoke-virtual {v14, v15, v10, v11, v7}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v7, v0, Lcom/rey/material/widget/Slider;->g:Landroid/graphics/RectF;

    const/high16 v9, 0x43340000    # 180.0f

    sub-float v10, v9, v8

    const/high16 v11, 0x40000000    # 2.0f

    mul-float v8, v8, v11

    add-float/2addr v8, v9

    invoke-virtual {v3, v7, v10, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    const v7, 0x3f666666    # 0.9f

    cmpl-float v7, p5, v7

    if-lez v7, :cond_1

    invoke-virtual {v3, v1, v6}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_1

    :cond_1
    add-float v7, v5, v1

    div-float/2addr v7, v11

    add-float v8, v2, v6

    div-float/2addr v8, v11

    invoke-direct {v0, v5, v2, v7, v8}, Lcom/rey/material/widget/Slider;->s(FFFF)D

    move-result-wide v9

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float v14, v14, p5

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v14, v12

    const-wide/high16 v18, 0x4010000000000000L    # 4.0

    div-double v14, v14, v18

    invoke-static {v14, v15}, Ljava/lang/Math;->tan(D)D

    move-result-wide v14

    div-double/2addr v9, v14

    float-to-double v14, v7

    const-wide v18, 0x3fe921fb54442d18L    # 0.7853981633974483

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    mul-double v20, v20, v9

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v14, v14, v20

    double-to-float v7, v14

    float-to-double v14, v8

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v18, v18, v9

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v14, v14, v18

    double-to-float v8, v14

    sub-float v9, v2, v8

    float-to-double v9, v9

    sub-float v14, v5, v7

    float-to-double v14, v14

    invoke-static {v9, v10, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v14

    const-wide v16, 0x4066800000000000L    # 180.0

    mul-double v14, v14, v16

    div-double/2addr v14, v12

    double-to-float v14, v14

    sub-float/2addr v6, v8

    float-to-double v11, v6

    sub-float v6, v1, v7

    move-wide/from16 v20, v9

    float-to-double v9, v6

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v9

    mul-double v9, v9, v16

    const-wide v18, 0x400921fb54442d18L    # Math.PI

    div-double v9, v9, v18

    double-to-float v6, v9

    invoke-direct {v0, v7, v8, v5, v2}, Lcom/rey/material/widget/Slider;->s(FFFF)D

    move-result-wide v9

    double-to-float v2, v9

    iget-object v5, v0, Lcom/rey/material/widget/Slider;->g:Landroid/graphics/RectF;

    sub-float v9, v7, v2

    sub-float v10, v8, v2

    add-float v13, v7, v2

    add-float/2addr v8, v2

    invoke-virtual {v5, v9, v10, v13, v8}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v5, v0, Lcom/rey/material/widget/Slider;->g:Landroid/graphics/RectF;

    sub-float/2addr v6, v14

    invoke-virtual {v3, v5, v14, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v5, v5, v1

    sub-float/2addr v5, v7

    sub-float/2addr v1, v5

    float-to-double v6, v1

    invoke-static {v11, v12, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    const-wide v11, 0x4066800000000000L    # 180.0

    mul-double v6, v6, v11

    const-wide v13, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v6, v13

    double-to-float v1, v6

    sub-float/2addr v4, v5

    float-to-double v6, v4

    move-wide/from16 v13, v20

    invoke-static {v13, v14, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    mul-double v6, v6, v11

    const-wide v11, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v6, v11

    double-to-float v4, v6

    iget-object v6, v0, Lcom/rey/material/widget/Slider;->g:Landroid/graphics/RectF;

    sub-float v7, v5, v2

    add-float/2addr v5, v2

    invoke-virtual {v6, v7, v10, v5, v8}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lcom/rey/material/widget/Slider;->g:Landroid/graphics/RectF;

    const v5, 0x3f490fdb

    add-float/2addr v5, v1

    sub-float/2addr v4, v1

    invoke-virtual {v3, v2, v5, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    :goto_1
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    return-object v3
.end method

.method private u(FFF)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget v3, v0, Lcom/rey/material/widget/Slider;->q:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget-object v5, v0, Lcom/rey/material/widget/Slider;->h:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    iget-object v5, v0, Lcom/rey/material/widget/Slider;->i:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v6, p3, v5

    const/high16 v7, 0x43340000    # 180.0f

    cmpg-float v8, v6, v3

    if-gez v8, :cond_3

    iget-object v4, v0, Lcom/rey/material/widget/Slider;->r:Landroid/graphics/Paint$Cap;

    sget-object v5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    if-eq v4, v5, :cond_1

    iget-object v4, v0, Lcom/rey/material/widget/Slider;->f:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    cmpl-float v5, v1, v4

    if-lez v5, :cond_0

    iget-object v5, v0, Lcom/rey/material/widget/Slider;->h:Landroid/graphics/Path;

    sub-float v6, v2, v3

    invoke-virtual {v5, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v4, v0, Lcom/rey/material/widget/Slider;->h:Landroid/graphics/Path;

    invoke-virtual {v4, v1, v6}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v4, v0, Lcom/rey/material/widget/Slider;->h:Landroid/graphics/Path;

    add-float v5, v2, v3

    invoke-virtual {v4, v1, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v4, v0, Lcom/rey/material/widget/Slider;->h:Landroid/graphics/Path;

    iget-object v6, v0, Lcom/rey/material/widget/Slider;->f:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    invoke-virtual {v4, v6, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v4, v0, Lcom/rey/material/widget/Slider;->h:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    :cond_0
    iget-object v4, v0, Lcom/rey/material/widget/Slider;->f:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    cmpg-float v5, v1, v4

    if-gez v5, :cond_7

    iget-object v5, v0, Lcom/rey/material/widget/Slider;->i:Landroid/graphics/Path;

    add-float v6, v2, v3

    invoke-virtual {v5, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v4, v0, Lcom/rey/material/widget/Slider;->i:Landroid/graphics/Path;

    invoke-virtual {v4, v1, v6}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v4, v0, Lcom/rey/material/widget/Slider;->i:Landroid/graphics/Path;

    sub-float/2addr v2, v3

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v0, Lcom/rey/material/widget/Slider;->i:Landroid/graphics/Path;

    iget-object v3, v0, Lcom/rey/material/widget/Slider;->f:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    :cond_1
    iget-object v4, v0, Lcom/rey/material/widget/Slider;->f:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    cmpl-float v5, v1, v4

    if-lez v5, :cond_2

    iget-object v5, v0, Lcom/rey/material/widget/Slider;->g:Landroid/graphics/RectF;

    sub-float v6, v2, v3

    iget v8, v0, Lcom/rey/material/widget/Slider;->q:I

    int-to-float v8, v8

    add-float/2addr v8, v4

    add-float v9, v2, v3

    invoke-virtual {v5, v4, v6, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v4, v0, Lcom/rey/material/widget/Slider;->h:Landroid/graphics/Path;

    iget-object v5, v0, Lcom/rey/material/widget/Slider;->g:Landroid/graphics/RectF;

    const/high16 v8, 0x42b40000    # 90.0f

    invoke-virtual {v4, v5, v8, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v4, v0, Lcom/rey/material/widget/Slider;->h:Landroid/graphics/Path;

    invoke-virtual {v4, v1, v6}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v4, v0, Lcom/rey/material/widget/Slider;->h:Landroid/graphics/Path;

    invoke-virtual {v4, v1, v9}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v4, v0, Lcom/rey/material/widget/Slider;->h:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    :cond_2
    iget-object v4, v0, Lcom/rey/material/widget/Slider;->f:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    cmpg-float v5, v1, v4

    if-gez v5, :cond_7

    iget-object v5, v0, Lcom/rey/material/widget/Slider;->g:Landroid/graphics/RectF;

    iget v6, v0, Lcom/rey/material/widget/Slider;->q:I

    int-to-float v6, v6

    sub-float v6, v4, v6

    sub-float v8, v2, v3

    add-float/2addr v2, v3

    invoke-virtual {v5, v6, v8, v4, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v3, v0, Lcom/rey/material/widget/Slider;->i:Landroid/graphics/Path;

    iget-object v4, v0, Lcom/rey/material/widget/Slider;->g:Landroid/graphics/RectF;

    const/high16 v5, 0x43870000    # 270.0f

    invoke-virtual {v3, v4, v5, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v3, v0, Lcom/rey/material/widget/Slider;->i:Landroid/graphics/Path;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, v0, Lcom/rey/material/widget/Slider;->i:Landroid/graphics/Path;

    invoke-virtual {v2, v1, v8}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    :cond_3
    iget-object v8, v0, Lcom/rey/material/widget/Slider;->r:Landroid/graphics/Paint$Cap;

    sget-object v9, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    const-wide v10, 0x4066800000000000L    # 180.0

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    if-eq v8, v9, :cond_5

    iget-object v8, v0, Lcom/rey/material/widget/Slider;->g:Landroid/graphics/RectF;

    sub-float v9, v1, p3

    add-float v14, v9, v5

    sub-float v15, v2, p3

    add-float/2addr v15, v5

    add-float v1, v1, p3

    sub-float v4, v1, v5

    add-float v16, v2, p3

    sub-float v5, v16, v5

    invoke-virtual {v8, v14, v15, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    div-float v4, v3, v6

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->asin(D)D

    move-result-wide v4

    div-double/2addr v4, v12

    mul-double v4, v4, v10

    double-to-float v4, v4

    iget-object v5, v0, Lcom/rey/material/widget/Slider;->f:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    cmpl-float v6, v9, v5

    if-lez v6, :cond_4

    iget-object v6, v0, Lcom/rey/material/widget/Slider;->h:Landroid/graphics/Path;

    sub-float v8, v2, v3

    invoke-virtual {v6, v5, v8}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v5, v0, Lcom/rey/material/widget/Slider;->h:Landroid/graphics/Path;

    iget-object v6, v0, Lcom/rey/material/widget/Slider;->g:Landroid/graphics/RectF;

    add-float/2addr v7, v4

    neg-float v8, v4

    const/high16 v9, 0x40000000    # 2.0f

    mul-float v8, v8, v9

    invoke-virtual {v5, v6, v7, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v5, v0, Lcom/rey/material/widget/Slider;->h:Landroid/graphics/Path;

    iget-object v6, v0, Lcom/rey/material/widget/Slider;->f:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    add-float v7, v2, v3

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v5, v0, Lcom/rey/material/widget/Slider;->h:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    :cond_4
    iget-object v5, v0, Lcom/rey/material/widget/Slider;->f:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    cmpg-float v1, v1, v5

    if-gez v1, :cond_7

    iget-object v1, v0, Lcom/rey/material/widget/Slider;->i:Landroid/graphics/Path;

    sub-float v6, v2, v3

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v1, v0, Lcom/rey/material/widget/Slider;->i:Landroid/graphics/Path;

    iget-object v5, v0, Lcom/rey/material/widget/Slider;->g:Landroid/graphics/RectF;

    neg-float v6, v4

    const/high16 v7, 0x40000000    # 2.0f

    mul-float v4, v4, v7

    invoke-virtual {v1, v5, v6, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v1, v0, Lcom/rey/material/widget/Slider;->i:Landroid/graphics/Path;

    iget-object v4, v0, Lcom/rey/material/widget/Slider;->f:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v3

    invoke-virtual {v1, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    :cond_5
    div-float v4, v3, v6

    float-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->asin(D)D

    move-result-wide v8

    div-double/2addr v8, v12

    mul-double v8, v8, v10

    double-to-float v4, v8

    sub-float v6, v1, p3

    iget-object v8, v0, Lcom/rey/material/widget/Slider;->f:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    const/4 v9, 0x0

    cmpl-float v14, v6, v8

    if-lez v14, :cond_6

    add-float/2addr v8, v3

    sub-float/2addr v8, v1

    add-float v8, v8, p3

    div-float/2addr v8, v3

    invoke-static {v9, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    float-to-double v14, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->acos(D)D

    move-result-wide v14

    div-double/2addr v14, v12

    mul-double v14, v14, v10

    double-to-float v8, v14

    iget-object v14, v0, Lcom/rey/material/widget/Slider;->g:Landroid/graphics/RectF;

    iget-object v15, v0, Lcom/rey/material/widget/Slider;->f:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->left:F

    sub-float v10, v2, v3

    iget v11, v0, Lcom/rey/material/widget/Slider;->q:I

    int-to-float v11, v11

    add-float/2addr v11, v15

    add-float v12, v2, v3

    invoke-virtual {v14, v15, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v10, v0, Lcom/rey/material/widget/Slider;->h:Landroid/graphics/Path;

    iget-object v11, v0, Lcom/rey/material/widget/Slider;->g:Landroid/graphics/RectF;

    sub-float v12, v7, v8

    const/high16 v13, 0x40000000    # 2.0f

    mul-float v8, v8, v13

    invoke-virtual {v10, v11, v12, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v8, v0, Lcom/rey/material/widget/Slider;->g:Landroid/graphics/RectF;

    add-float v10, v6, v5

    sub-float v11, v2, p3

    add-float/2addr v11, v5

    add-float v12, v1, p3

    sub-float/2addr v12, v5

    add-float v13, v2, p3

    sub-float/2addr v13, v5

    invoke-virtual {v8, v10, v11, v12, v13}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v8, v0, Lcom/rey/material/widget/Slider;->h:Landroid/graphics/Path;

    iget-object v10, v0, Lcom/rey/material/widget/Slider;->g:Landroid/graphics/RectF;

    add-float/2addr v7, v4

    neg-float v11, v4

    const/high16 v12, 0x40000000    # 2.0f

    mul-float v11, v11, v12

    invoke-virtual {v8, v10, v7, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v7, v0, Lcom/rey/material/widget/Slider;->h:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->close()V

    :cond_6
    add-float v1, v1, p3

    iget-object v7, v0, Lcom/rey/material/widget/Slider;->f:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    cmpg-float v8, v1, v7

    if-gez v8, :cond_7

    sub-float v7, v1, v7

    add-float/2addr v7, v3

    div-float/2addr v7, v3

    invoke-static {v9, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->acos(D)D

    move-result-wide v7

    double-to-float v7, v7

    iget-object v8, v0, Lcom/rey/material/widget/Slider;->i:Landroid/graphics/Path;

    iget-object v9, v0, Lcom/rey/material/widget/Slider;->f:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    sub-float/2addr v9, v3

    float-to-double v9, v9

    float-to-double v11, v7

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    move v15, v6

    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v5

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v9, v13

    double-to-float v9, v9

    float-to-double v13, v2

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v17, v17, v5

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    add-double v13, v13, v17

    double-to-float v5, v13

    invoke-virtual {v8, v9, v5}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v11, v5

    const-wide v5, 0x4066800000000000L    # 180.0

    mul-double v11, v11, v5

    double-to-float v5, v11

    iget-object v6, v0, Lcom/rey/material/widget/Slider;->g:Landroid/graphics/RectF;

    iget-object v8, v0, Lcom/rey/material/widget/Slider;->f:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    iget v9, v0, Lcom/rey/material/widget/Slider;->q:I

    int-to-float v9, v9

    sub-float v9, v8, v9

    sub-float v10, v2, v3

    add-float/2addr v3, v2

    invoke-virtual {v6, v9, v10, v8, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v3, v0, Lcom/rey/material/widget/Slider;->i:Landroid/graphics/Path;

    iget-object v6, v0, Lcom/rey/material/widget/Slider;->g:Landroid/graphics/RectF;

    neg-float v8, v5

    const/high16 v9, 0x40000000    # 2.0f

    mul-float v8, v8, v9

    invoke-virtual {v3, v6, v5, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v3, v0, Lcom/rey/material/widget/Slider;->g:Landroid/graphics/RectF;

    const/high16 v5, 0x3f800000    # 1.0f

    add-float v6, v15, v5

    sub-float v7, v2, p3

    add-float/2addr v7, v5

    sub-float/2addr v1, v5

    add-float v2, v2, p3

    sub-float/2addr v2, v5

    invoke-virtual {v3, v6, v7, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lcom/rey/material/widget/Slider;->i:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/rey/material/widget/Slider;->g:Landroid/graphics/RectF;

    neg-float v3, v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v4, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    :goto_0
    iget-object v1, v0, Lcom/rey/material/widget/Slider;->i:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    :cond_7
    return-void
.end method

.method private v(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/rey/material/widget/Slider;->e:Landroid/graphics/Paint;

    const/high16 v0, -0x1000000

    invoke-static {p1, v0}, Le/g/a/b/b;->b(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/rey/material/widget/Slider;->o:I

    invoke-static {p1, v0}, Le/g/a/b/b;->d(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/rey/material/widget/Slider;->p:I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/rey/material/widget/Slider;->f:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/rey/material/widget/Slider;->g:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/rey/material/widget/Slider;->h:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/rey/material/widget/Slider;->i:Landroid/graphics/Path;

    new-instance v0, Lcom/rey/material/widget/Slider$d;

    invoke-direct {v0, p0}, Lcom/rey/material/widget/Slider$d;-><init>(Lcom/rey/material/widget/Slider;)V

    iput-object v0, p0, Lcom/rey/material/widget/Slider;->M:Lcom/rey/material/widget/Slider$d;

    new-instance v0, Lcom/rey/material/widget/Slider$e;

    invoke-direct {v0, p0}, Lcom/rey/material/widget/Slider$e;-><init>(Lcom/rey/material/widget/Slider;)V

    iput-object v0, p0, Lcom/rey/material/widget/Slider;->N:Lcom/rey/material/widget/Slider$e;

    new-instance v0, Lcom/rey/material/widget/Slider$c;

    invoke-direct {v0, p0}, Lcom/rey/material/widget/Slider$c;-><init>(Lcom/rey/material/widget/Slider;)V

    iput-object v0, p0, Lcom/rey/material/widget/Slider;->O:Lcom/rey/material/widget/Slider$c;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/rey/material/widget/Slider;->D:I

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/rey/material/widget/Slider;->E:Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/rey/material/widget/Slider;->q(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-static {p1, p2, p3, p4}, Lcom/rey/material/app/b;->f(Landroid/content/Context;Landroid/util/AttributeSet;II)I

    move-result p1

    iput p1, p0, Lcom/rey/material/widget/Slider;->c:I

    return-void
.end method

.method private w(FFF)Z
    .locals 3

    iget-object v0, p0, Lcom/rey/material/widget/Slider;->f:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lcom/rey/material/widget/Slider;->v:F

    mul-float v0, v0, v1

    iget-object v1, p0, Lcom/rey/material/widget/Slider;->f:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v2

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    sub-float v2, v0, p3

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_0

    add-float/2addr v0, p3

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    sub-float p1, v1, p3

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_0

    add-float/2addr v1, p3

    cmpg-float p1, p2, v1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private x()V
    .locals 9

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget v1, p0, Lcom/rey/material/widget/Slider;->l:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/rey/material/widget/Slider;->e:Landroid/graphics/Paint;

    iget v3, p0, Lcom/rey/material/widget/Slider;->x:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, p0, Lcom/rey/material/widget/Slider;->e:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    iget v3, p0, Lcom/rey/material/widget/Slider;->t:I

    int-to-double v3, v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v7

    mul-double v3, v3, v5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const/16 v6, 0x8

    invoke-static {v5, v6}, Le/g/a/b/b;->e(Landroid/content/Context;I)I

    move-result v5

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v3, v5

    double-to-float v3, v3

    cmpl-float v4, v2, v3

    if-lez v4, :cond_0

    iget v4, p0, Lcom/rey/material/widget/Slider;->x:I

    int-to-float v4, v4

    mul-float v4, v4, v3

    div-float/2addr v4, v2

    iget-object v2, p0, Lcom/rey/material/widget/Slider;->e:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_0
    iget-object v2, p0, Lcom/rey/material/widget/Slider;->e:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v1, v3, v4, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/rey/material/widget/Slider;->J:I

    return-void
.end method

.method private y(FZZZ)V
    .locals 10

    invoke-virtual {p0}, Lcom/rey/material/widget/Slider;->getPosition()F

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/rey/material/widget/Slider;->getValue()I

    move-result v8

    invoke-virtual {p0}, Lcom/rey/material/widget/Slider;->getPosition()F

    move-result v6

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/rey/material/widget/Slider;->O:Lcom/rey/material/widget/Slider$c;

    invoke-virtual {p2, p1}, Lcom/rey/material/widget/Slider$c;->d(F)Z

    move-result p2

    if-nez p2, :cond_7

    :cond_1
    iput p1, p0, Lcom/rey/material/widget/Slider;->v:F

    const/4 p2, 0x0

    if-eqz p3, :cond_4

    iget-boolean p3, p0, Lcom/rey/material/widget/Slider;->F:Z

    if-nez p3, :cond_2

    iget-object p3, p0, Lcom/rey/material/widget/Slider;->M:Lcom/rey/material/widget/Slider$d;

    iget v3, p0, Lcom/rey/material/widget/Slider;->t:I

    invoke-virtual {p3, v3}, Lcom/rey/material/widget/Slider$d;->b(I)Z

    :cond_2
    iget-object p3, p0, Lcom/rey/material/widget/Slider;->N:Lcom/rey/material/widget/Slider$e;

    cmpl-float p1, p1, p2

    if-nez p1, :cond_3

    const/4 v1, 0x0

    :cond_3
    invoke-virtual {p3, v1}, Lcom/rey/material/widget/Slider$e;->b(I)Z

    goto :goto_1

    :cond_4
    iget p3, p0, Lcom/rey/material/widget/Slider;->t:I

    int-to-float p3, p3

    iput p3, p0, Lcom/rey/material/widget/Slider;->G:F

    iget-boolean p3, p0, Lcom/rey/material/widget/Slider;->I:Z

    if-nez p3, :cond_5

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_6

    :cond_5
    const/high16 p2, 0x3f800000    # 1.0f

    :cond_6
    iput p2, p0, Lcom/rey/material/widget/Slider;->H:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_7
    :goto_1
    invoke-virtual {p0}, Lcom/rey/material/widget/Slider;->getValue()I

    move-result v9

    invoke-virtual {p0}, Lcom/rey/material/widget/Slider;->getPosition()F

    move-result v7

    if-eqz v0, :cond_8

    iget-object v3, p0, Lcom/rey/material/widget/Slider;->Q:Lcom/rey/material/widget/Slider$b;

    if-eqz v3, :cond_8

    move-object v4, p0

    move v5, p4

    invoke-interface/range {v3 .. v9}, Lcom/rey/material/widget/Slider$b;->a(Lcom/rey/material/widget/Slider;ZFFII)V

    :cond_8
    return-void
.end method


# virtual methods
.method public d(Lcom/rey/material/app/b$b;)V
    .locals 1

    invoke-static {}, Lcom/rey/material/app/b;->c()Lcom/rey/material/app/b;

    move-result-object p1

    iget v0, p0, Lcom/rey/material/widget/Slider;->c:I

    invoke-virtual {p1, v0}, Lcom/rey/material/app/b;->b(I)I

    move-result p1

    iget v0, p0, Lcom/rey/material/widget/Slider;->d:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/rey/material/widget/Slider;->d:I

    invoke-virtual {p0, p1}, Lcom/rey/material/widget/Slider;->p(I)V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 12

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/rey/material/widget/Slider;->f:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lcom/rey/material/widget/Slider;->v:F

    mul-float v0, v0, v1

    iget-object v1, p0, Lcom/rey/material/widget/Slider;->f:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v2

    iget-boolean v2, p0, Lcom/rey/material/widget/Slider;->P:Z

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    mul-float v1, v1, v3

    sub-float v0, v1, v0

    :cond_0
    iget-object v1, p0, Lcom/rey/material/widget/Slider;->f:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, p0, Lcom/rey/material/widget/Slider;->p:I

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/rey/material/widget/Slider;->o:I

    goto :goto_0

    :cond_1
    iget v4, p0, Lcom/rey/material/widget/Slider;->p:I

    :goto_0
    iget v5, p0, Lcom/rey/material/widget/Slider;->H:F

    invoke-static {v2, v4, v5}, Le/g/a/b/a;->b(IIF)I

    move-result v2

    iget v4, p0, Lcom/rey/material/widget/Slider;->G:F

    invoke-direct {p0, v0, v1, v4}, Lcom/rey/material/widget/Slider;->u(FFF)V

    iget-object v4, p0, Lcom/rey/material/widget/Slider;->e:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v4, p0, Lcom/rey/material/widget/Slider;->e:Landroid/graphics/Paint;

    iget-boolean v5, p0, Lcom/rey/material/widget/Slider;->P:Z

    if-eqz v5, :cond_2

    move v5, v2

    goto :goto_1

    :cond_2
    iget v5, p0, Lcom/rey/material/widget/Slider;->p:I

    :goto_1
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, p0, Lcom/rey/material/widget/Slider;->i:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/rey/material/widget/Slider;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v4, p0, Lcom/rey/material/widget/Slider;->e:Landroid/graphics/Paint;

    iget-boolean v5, p0, Lcom/rey/material/widget/Slider;->P:Z

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/rey/material/widget/Slider;->p:I

    goto :goto_2

    :cond_3
    move v5, v2

    :goto_2
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, p0, Lcom/rey/material/widget/Slider;->h:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/rey/material/widget/Slider;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v4, p0, Lcom/rey/material/widget/Slider;->e:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-boolean v4, p0, Lcom/rey/material/widget/Slider;->n:Z

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v4, :cond_6

    iget v4, p0, Lcom/rey/material/widget/Slider;->G:F

    iget v6, p0, Lcom/rey/material/widget/Slider;->t:I

    int-to-float v7, v6

    div-float/2addr v4, v7

    sub-float v10, v5, v4

    const/4 v11, 0x0

    cmpl-float v4, v10, v11

    if-lez v4, :cond_4

    iget-object v5, p0, Lcom/rey/material/widget/Slider;->j:Landroid/graphics/Path;

    int-to-float v8, v6

    move-object v4, p0

    move v6, v0

    move v7, v1

    move v9, v10

    invoke-direct/range {v4 .. v9}, Lcom/rey/material/widget/Slider;->t(Landroid/graphics/Path;FFFF)Landroid/graphics/Path;

    move-result-object v4

    iput-object v4, p0, Lcom/rey/material/widget/Slider;->j:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/rey/material/widget/Slider;->e:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    iget v5, p0, Lcom/rey/material/widget/Slider;->t:I

    neg-int v5, v5

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    mul-float v5, v5, v10

    invoke-virtual {p1, v11, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v5, p0, Lcom/rey/material/widget/Slider;->j:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/rey/material/widget/Slider;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v5, p0, Lcom/rey/material/widget/Slider;->e:Landroid/graphics/Paint;

    iget v6, p0, Lcom/rey/material/widget/Slider;->y:I

    invoke-static {v6, v10}, Le/g/a/b/a;->a(IF)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0}, Lcom/rey/material/widget/Slider;->getValueText()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/rey/material/widget/Slider;->J:I

    int-to-float v6, v6

    div-float/2addr v6, v3

    add-float/2addr v6, v1

    iget v3, p0, Lcom/rey/material/widget/Slider;->t:I

    int-to-float v3, v3

    mul-float v3, v3, v10

    sub-float/2addr v6, v3

    iget-object v3, p0, Lcom/rey/material/widget/Slider;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v0, v6, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/rey/material/widget/Slider;->G:F

    goto :goto_3

    :cond_5
    iget v3, p0, Lcom/rey/material/widget/Slider;->G:F

    iget v4, p0, Lcom/rey/material/widget/Slider;->s:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    :goto_3
    cmpl-float v4, v3, v11

    if-lez v4, :cond_9

    iget-object v4, p0, Lcom/rey/material/widget/Slider;->e:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/rey/material/widget/Slider;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_6

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/rey/material/widget/Slider;->G:F

    goto :goto_4

    :cond_7
    iget v2, p0, Lcom/rey/material/widget/Slider;->G:F

    iget v4, p0, Lcom/rey/material/widget/Slider;->s:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    :goto_4
    iget v4, p0, Lcom/rey/material/widget/Slider;->H:F

    cmpl-float v5, v4, v5

    if-nez v5, :cond_8

    iget-object v3, p0, Lcom/rey/material/widget/Slider;->e:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_5

    :cond_8
    iget v5, p0, Lcom/rey/material/widget/Slider;->s:I

    int-to-float v6, v5

    sub-float v6, v2, v6

    mul-float v6, v6, v4

    int-to-float v4, v5

    add-float/2addr v6, v4

    div-float v3, v6, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/rey/material/widget/Slider;->e:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v3, p0, Lcom/rey/material/widget/Slider;->e:Landroid/graphics/Paint;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :goto_5
    iget-object v3, p0, Lcom/rey/material/widget/Slider;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_9
    :goto_6
    return-void
.end method

.method public getExactValue()F
    .locals 2

    iget v0, p0, Lcom/rey/material/widget/Slider;->l:I

    iget v1, p0, Lcom/rey/material/widget/Slider;->k:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/rey/material/widget/Slider;->getPosition()F

    move-result v1

    mul-float v0, v0, v1

    iget v1, p0, Lcom/rey/material/widget/Slider;->k:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getMaxValue()I
    .locals 1

    iget v0, p0, Lcom/rey/material/widget/Slider;->l:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    iget v0, p0, Lcom/rey/material/widget/Slider;->k:I

    return v0
.end method

.method public getPosition()F
    .locals 1

    iget-object v0, p0, Lcom/rey/material/widget/Slider;->O:Lcom/rey/material/widget/Slider$c;

    invoke-virtual {v0}, Lcom/rey/material/widget/Slider$c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rey/material/widget/Slider;->O:Lcom/rey/material/widget/Slider$c;

    invoke-virtual {v0}, Lcom/rey/material/widget/Slider$c;->a()F

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/rey/material/widget/Slider;->v:F

    :goto_0
    return v0
.end method

.method protected getRippleManager()Lcom/rey/material/widget/a;
    .locals 2

    iget-object v0, p0, Lcom/rey/material/widget/Slider;->b:Lcom/rey/material/widget/a;

    if-nez v0, :cond_1

    const-class v0, Lcom/rey/material/widget/a;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/rey/material/widget/Slider;->b:Lcom/rey/material/widget/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/rey/material/widget/a;

    invoke-direct {v1}, Lcom/rey/material/widget/a;-><init>()V

    iput-object v1, p0, Lcom/rey/material/widget/Slider;->b:Lcom/rey/material/widget/a;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/rey/material/widget/Slider;->b:Lcom/rey/material/widget/a;

    return-object v0
.end method

.method public getStepValue()I
    .locals 1

    iget v0, p0, Lcom/rey/material/widget/Slider;->m:I

    return v0
.end method

.method public getSuggestedMinimumHeight()I
    .locals 6

    iget-boolean v0, p0, Lcom/rey/material/widget/Slider;->n:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/rey/material/widget/Slider;->t:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    add-double/2addr v4, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v4

    double-to-int v0, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/rey/material/widget/Slider;->u:I

    mul-int/lit8 v0, v0, 0x2

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getSuggestedMinimumWidth()I
    .locals 4

    iget-boolean v0, p0, Lcom/rey/material/widget/Slider;->n:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/rey/material/widget/Slider;->t:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int v0, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/rey/material/widget/Slider;->u:I

    :goto_0
    mul-int/lit8 v0, v0, 0x4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getValue()I
    .locals 1

    invoke-virtual {p0}, Lcom/rey/material/widget/Slider;->getExactValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget v0, p0, Lcom/rey/material/widget/Slider;->c:I

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/rey/material/app/b;->c()Lcom/rey/material/app/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/rey/material/app/b;->j(Lcom/rey/material/app/b$c;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/rey/material/widget/Slider;->d(Lcom/rey/material/app/b$b;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-static {p0}, Lcom/rey/material/widget/a;->a(Landroid/view/View;)V

    iget v0, p0, Lcom/rey/material/widget/Slider;->c:I

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/rey/material/app/b;->c()Lcom/rey/material/app/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/rey/material/app/b;->m(Lcom/rey/material/app/b$c;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const/high16 v2, -0x80000000

    if-eq p1, v2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/rey/material/widget/Slider;->getSuggestedMinimumWidth()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/rey/material/widget/Slider;->getSuggestedMinimumWidth()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    if-eq p2, v2, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/rey/material/widget/Slider;->getSuggestedMinimumHeight()I

    move-result v1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/rey/material/widget/Slider;->getSuggestedMinimumHeight()I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_1
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    check-cast p1, Lcom/rey/material/widget/Slider$SavedState;

    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget p1, p1, Lcom/rey/material/widget/Slider$SavedState;->b:F

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/rey/material/widget/Slider;->setPosition(FZ)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean p1, p0, Lcom/rey/material/widget/Slider;->P:Z

    if-eq p1, v0, :cond_1

    iput-boolean v0, p0, Lcom/rey/material/widget/Slider;->P:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/rey/material/widget/Slider$SavedState;

    invoke-direct {v1, v0}, Lcom/rey/material/widget/Slider$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/rey/material/widget/Slider;->getPosition()F

    move-result v0

    iput v0, v1, Lcom/rey/material/widget/Slider$SavedState;->b:F

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 7

    iget-object p3, p0, Lcom/rey/material/widget/Slider;->f:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p4

    iget v0, p0, Lcom/rey/material/widget/Slider;->t:I

    add-int/2addr p4, v0

    int-to-float p4, p4

    iput p4, p3, Landroid/graphics/RectF;->left:F

    iget-object p3, p0, Lcom/rey/material/widget/Slider;->f:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p4

    sub-int/2addr p1, p4

    iget p4, p0, Lcom/rey/material/widget/Slider;->t:I

    sub-int/2addr p1, p4

    int-to-float p1, p1

    iput p1, p3, Landroid/graphics/RectF;->right:F

    iget p1, p0, Lcom/rey/material/widget/Slider;->z:I

    and-int/lit8 p1, p1, 0x70

    iget-boolean p3, p0, Lcom/rey/material/widget/Slider;->n:Z

    const/high16 v0, 0x40000000    # 2.0f

    const/16 v1, 0x50

    const/16 v2, 0x30

    if-eqz p3, :cond_2

    int-to-double p3, p4

    const-wide/high16 v3, 0x4010000000000000L    # 4.0

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    add-double/2addr v5, v3

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p3, p3, v5

    double-to-int p3, p3

    iget p4, p0, Lcom/rey/material/widget/Slider;->t:I

    mul-int/lit8 p4, p4, 0x2

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    iget-object p1, p0, Lcom/rey/material/widget/Slider;->f:Landroid/graphics/RectF;

    sub-int/2addr p2, p4

    int-to-float p2, p2

    div-float/2addr p2, v0

    sub-int/2addr p3, p4

    int-to-float p3, p3

    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/rey/material/widget/Slider;->f:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p2, p3

    int-to-float p2, p2

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    iget-object p1, p0, Lcom/rey/material/widget/Slider;->f:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/RectF;->bottom:F

    int-to-float p3, p4

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/rey/material/widget/Slider;->f:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    sub-int/2addr p3, p4

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    int-to-float p2, p2

    :goto_0
    iput p2, p1, Landroid/graphics/RectF;->top:F

    iget-object p1, p0, Lcom/rey/material/widget/Slider;->f:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/RectF;->top:F

    int-to-float p3, p4

    goto :goto_3

    :cond_2
    iget p3, p0, Lcom/rey/material/widget/Slider;->u:I

    mul-int/lit8 p3, p3, 0x2

    if-eq p1, v2, :cond_4

    if-eq p1, v1, :cond_3

    iget-object p1, p0, Lcom/rey/material/widget/Slider;->f:Landroid/graphics/RectF;

    sub-int/2addr p2, p3

    int-to-float p2, p2

    div-float/2addr p2, v0

    iput p2, p1, Landroid/graphics/RectF;->top:F

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/rey/material/widget/Slider;->f:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p4

    sub-int/2addr p2, p4

    int-to-float p2, p2

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    iget-object p1, p0, Lcom/rey/material/widget/Slider;->f:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/RectF;->bottom:F

    int-to-float p3, p3

    :goto_1
    sub-float/2addr p2, p3

    iput p2, p1, Landroid/graphics/RectF;->top:F

    goto :goto_4

    :cond_4
    iget-object p1, p0, Lcom/rey/material/widget/Slider;->f:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    int-to-float p2, p2

    iput p2, p1, Landroid/graphics/RectF;->top:F

    iget-object p1, p0, Lcom/rey/material/widget/Slider;->f:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/RectF;->top:F

    :goto_2
    int-to-float p3, p3

    :goto_3
    add-float/2addr p2, p3

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    :goto_4
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p0}, Lcom/rey/material/widget/Slider;->getRippleManager()Lcom/rey/material/widget/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rey/material/widget/a;->d(Landroid/view/MotionEvent;)Z

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-boolean v3, p0, Lcom/rey/material/widget/Slider;->P:Z

    if-eqz v3, :cond_1

    const/high16 v3, 0x40000000    # 2.0f

    iget-object v4, p0, Lcom/rey/material/widget/Slider;->f:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    mul-float v4, v4, v3

    sub-float v0, v4, v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v3, 0x1

    if-eqz p1, :cond_7

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-eq p1, v3, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    goto/16 :goto_5

    :cond_2
    iget-boolean p1, p0, Lcom/rey/material/widget/Slider;->F:Z

    if-eqz p1, :cond_a

    goto :goto_0

    :cond_3
    iget-boolean p1, p0, Lcom/rey/material/widget/Slider;->F:Z

    if-eqz p1, :cond_a

    iget-boolean p1, p0, Lcom/rey/material/widget/Slider;->n:Z

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/rey/material/widget/Slider;->E:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    sub-float p1, v0, p1

    iget-object v2, p0, Lcom/rey/material/widget/Slider;->f:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr p1, v2

    iget v2, p0, Lcom/rey/material/widget/Slider;->v:F

    add-float/2addr v2, p1

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {v5, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-direct {p0, p1, v1, v3, v3}, Lcom/rey/material/widget/Slider;->y(FZZZ)V

    iget-object p1, p0, Lcom/rey/material/widget/Slider;->E:Landroid/graphics/PointF;

    iput v0, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_5

    :cond_5
    iget-boolean p1, p0, Lcom/rey/material/widget/Slider;->F:Z

    if-eqz p1, :cond_6

    :goto_0
    iput-boolean v1, p0, Lcom/rey/material/widget/Slider;->F:Z

    invoke-virtual {p0}, Lcom/rey/material/widget/Slider;->getPosition()F

    move-result p1

    :goto_1
    invoke-direct {p0, p1, v3, v3, v3}, Lcom/rey/material/widget/Slider;->y(FZZZ)V

    goto :goto_5

    :cond_6
    iget-object p1, p0, Lcom/rey/material/widget/Slider;->E:Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v1, p1, v0, v2}, Lcom/rey/material/widget/Slider;->s(FFFF)D

    move-result-wide v1

    iget p1, p0, Lcom/rey/material/widget/Slider;->D:I

    int-to-double v6, p1

    cmpg-double p1, v1, v6

    if-gtz p1, :cond_a

    :goto_2
    iget-object p1, p0, Lcom/rey/material/widget/Slider;->f:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    div-float/2addr v0, p1

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {v5, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/rey/material/widget/Slider;->r(F)F

    move-result p1

    goto :goto_1

    :cond_7
    iget p1, p0, Lcom/rey/material/widget/Slider;->t:I

    int-to-float p1, p1

    invoke-direct {p0, v0, v2, p1}, Lcom/rey/material/widget/Slider;->w(FFF)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/rey/material/widget/Slider;->O:Lcom/rey/material/widget/Slider$c;

    invoke-virtual {p1}, Lcom/rey/material/widget/Slider$c;->b()Z

    move-result p1

    if-nez p1, :cond_8

    const/4 p1, 0x1

    goto :goto_3

    :cond_8
    const/4 p1, 0x0

    :goto_3
    iput-boolean p1, p0, Lcom/rey/material/widget/Slider;->F:Z

    iget-object p1, p0, Lcom/rey/material/widget/Slider;->E:Landroid/graphics/PointF;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/PointF;->set(FF)V

    iget-boolean p1, p0, Lcom/rey/material/widget/Slider;->F:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/rey/material/widget/Slider;->M:Lcom/rey/material/widget/Slider$d;

    iget-boolean v0, p0, Lcom/rey/material/widget/Slider;->n:Z

    if-eqz v0, :cond_9

    goto :goto_4

    :cond_9
    iget v1, p0, Lcom/rey/material/widget/Slider;->u:I

    :goto_4
    invoke-virtual {p1, v1}, Lcom/rey/material/widget/Slider$d;->b(I)Z

    :cond_a
    :goto_5
    return v3
.end method

.method public p(I)V
    .locals 3

    invoke-static {p0, p1}, Le/g/a/b/d;->b(Landroid/view/View;I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/rey/material/widget/Slider;->q(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method protected q(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-virtual/range {p0 .. p0}, Lcom/rey/material/widget/Slider;->getRippleManager()Lcom/rey/material/widget/a;

    move-result-object v0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/rey/material/widget/a;->c(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget-object v0, Lcom/callerid/block/R$styleable;->Slider:[I

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v7, v1, v0, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/rey/material/widget/Slider;->getMinValue()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/rey/material/widget/Slider;->getMaxValue()I

    move-result v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    if-ge v9, v3, :cond_17

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v14

    const/16 v15, 0xb

    move/from16 v16, v3

    const/4 v3, 0x1

    if-ne v14, v15, :cond_0

    invoke-virtual {v0, v14, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v6, Lcom/rey/material/widget/Slider;->n:Z

    goto/16 :goto_4

    :cond_0
    const/16 v15, 0x10

    if-ne v14, v15, :cond_1

    invoke-virtual {v0, v14, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, v6, Lcom/rey/material/widget/Slider;->o:I

    goto/16 :goto_4

    :cond_1
    const/16 v15, 0x11

    if-ne v14, v15, :cond_2

    invoke-virtual {v0, v14, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, v6, Lcom/rey/material/widget/Slider;->p:I

    goto/16 :goto_4

    :cond_2
    const/16 v15, 0x1a

    if-ne v14, v15, :cond_3

    invoke-virtual {v0, v14, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v6, Lcom/rey/material/widget/Slider;->q:I

    goto/16 :goto_4

    :cond_3
    const/16 v15, 0x19

    if-ne v14, v15, :cond_6

    invoke-virtual {v0, v14, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v14

    if-nez v14, :cond_4

    sget-object v3, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    :goto_1
    iput-object v3, v6, Lcom/rey/material/widget/Slider;->r:Landroid/graphics/Paint$Cap;

    goto/16 :goto_4

    :cond_4
    if-ne v14, v3, :cond_5

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    goto :goto_1

    :cond_5
    sget-object v3, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    goto :goto_1

    :cond_6
    const/16 v15, 0x16

    if-ne v14, v15, :cond_7

    invoke-virtual {v0, v14, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v6, Lcom/rey/material/widget/Slider;->s:I

    goto/16 :goto_4

    :cond_7
    const/16 v15, 0x18

    if-ne v14, v15, :cond_8

    invoke-virtual {v0, v14, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v6, Lcom/rey/material/widget/Slider;->t:I

    goto/16 :goto_4

    :cond_8
    const/16 v15, 0x17

    if-ne v14, v15, :cond_9

    invoke-virtual {v0, v14, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v6, Lcom/rey/material/widget/Slider;->u:I

    goto/16 :goto_4

    :cond_9
    const/16 v15, 0x1c

    if-ne v14, v15, :cond_a

    invoke-virtual {v0, v14, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, v6, Lcom/rey/material/widget/Slider;->A:I

    iput v3, v6, Lcom/rey/material/widget/Slider;->B:I

    goto/16 :goto_4

    :cond_a
    const/16 v15, 0xa

    if-ne v14, v15, :cond_b

    invoke-virtual {v0, v15, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v6, Lcom/rey/material/widget/Slider;->I:Z

    goto/16 :goto_4

    :cond_b
    const/16 v15, 0xd

    if-ne v14, v15, :cond_c

    invoke-virtual {v0, v15, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-static {v7, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    iput-object v3, v6, Lcom/rey/material/widget/Slider;->C:Landroid/view/animation/Interpolator;

    goto/16 :goto_4

    :cond_c
    const/4 v15, 0x2

    if-ne v14, v15, :cond_d

    invoke-virtual {v0, v14, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, v6, Lcom/rey/material/widget/Slider;->z:I

    goto :goto_4

    :cond_d
    const/16 v15, 0xf

    if-ne v14, v15, :cond_e

    invoke-virtual {v0, v14, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    :goto_2
    const/4 v10, 0x1

    goto :goto_4

    :cond_e
    const/16 v15, 0xe

    if-ne v14, v15, :cond_f

    invoke-virtual {v0, v14, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    goto :goto_2

    :cond_f
    const/16 v15, 0x12

    if-ne v14, v15, :cond_10

    invoke-virtual {v0, v14, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, v6, Lcom/rey/material/widget/Slider;->m:I

    goto :goto_4

    :cond_10
    const/16 v15, 0x1d

    if-ne v14, v15, :cond_11

    invoke-virtual {v0, v14, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    const/4 v11, 0x1

    goto :goto_4

    :cond_11
    const/16 v15, 0xc

    if-ne v14, v15, :cond_12

    invoke-virtual {v0, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    :goto_3
    const/4 v12, 0x1

    goto :goto_4

    :cond_12
    const/16 v15, 0x15

    if-ne v14, v15, :cond_13

    invoke-virtual {v0, v14, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v13

    goto :goto_3

    :cond_13
    const/16 v15, 0x13

    if-ne v14, v15, :cond_14

    invoke-virtual {v0, v14, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, v6, Lcom/rey/material/widget/Slider;->y:I

    goto :goto_4

    :cond_14
    const/16 v15, 0x14

    if-ne v14, v15, :cond_15

    invoke-virtual {v0, v14, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v6, Lcom/rey/material/widget/Slider;->x:I

    goto :goto_4

    :cond_15
    if-nez v14, :cond_16

    invoke-virtual {v0, v14, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {v6, v3}, Landroid/view/View;->setEnabled(Z)V

    :cond_16
    :goto_4
    add-int/lit8 v9, v9, 0x1

    move/from16 v3, v16

    goto/16 :goto_0

    :cond_17
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget v0, v6, Lcom/rey/material/widget/Slider;->q:I

    if-gez v0, :cond_18

    const/4 v0, 0x2

    invoke-static {v7, v0}, Le/g/a/b/b;->e(Landroid/content/Context;I)I

    move-result v3

    iput v3, v6, Lcom/rey/material/widget/Slider;->q:I

    goto :goto_5

    :cond_18
    const/4 v0, 0x2

    :goto_5
    iget v3, v6, Lcom/rey/material/widget/Slider;->s:I

    if-gez v3, :cond_19

    invoke-static {v7, v0}, Le/g/a/b/b;->e(Landroid/content/Context;I)I

    move-result v0

    iput v0, v6, Lcom/rey/material/widget/Slider;->s:I

    :cond_19
    iget v0, v6, Lcom/rey/material/widget/Slider;->t:I

    if-gez v0, :cond_1a

    const/16 v0, 0xa

    invoke-static {v7, v0}, Le/g/a/b/b;->e(Landroid/content/Context;I)I

    move-result v0

    iput v0, v6, Lcom/rey/material/widget/Slider;->t:I

    :cond_1a
    iget v0, v6, Lcom/rey/material/widget/Slider;->u:I

    if-gez v0, :cond_1b

    const/16 v0, 0xe

    invoke-static {v7, v0}, Le/g/a/b/b;->e(Landroid/content/Context;I)I

    move-result v0

    iput v0, v6, Lcom/rey/material/widget/Slider;->u:I

    :cond_1b
    iget v0, v6, Lcom/rey/material/widget/Slider;->A:I

    if-gez v0, :cond_1c

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x10e0001

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v6, Lcom/rey/material/widget/Slider;->A:I

    iput v0, v6, Lcom/rey/material/widget/Slider;->B:I

    :cond_1c
    iget-object v0, v6, Lcom/rey/material/widget/Slider;->C:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_1d

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, v6, Lcom/rey/material/widget/Slider;->C:Landroid/view/animation/Interpolator;

    :cond_1d
    if-eqz v10, :cond_1e

    invoke-virtual {v6, v1, v2, v4}, Lcom/rey/material/widget/Slider;->setValueRange(IIZ)V

    :cond_1e
    if-eqz v11, :cond_1f

    int-to-float v0, v5

    :goto_6
    invoke-virtual {v6, v0, v4}, Lcom/rey/material/widget/Slider;->setValue(FZ)V

    goto :goto_7

    :cond_1f
    iget v0, v6, Lcom/rey/material/widget/Slider;->v:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_20

    iget v0, v6, Lcom/rey/material/widget/Slider;->k:I

    int-to-float v0, v0

    goto :goto_6

    :cond_20
    :goto_7
    if-eqz v12, :cond_21

    invoke-static {v7, v8, v13}, Le/g/a/b/c;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, v6, Lcom/rey/material/widget/Slider;->w:Landroid/graphics/Typeface;

    :cond_21
    iget v0, v6, Lcom/rey/material/widget/Slider;->x:I

    if-gez v0, :cond_22

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v6, Lcom/rey/material/widget/Slider;->x:I

    :cond_22
    iget-object v0, v6, Lcom/rey/material/widget/Slider;->e:Landroid/graphics/Paint;

    iget v1, v6, Lcom/rey/material/widget/Slider;->x:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, v6, Lcom/rey/material/widget/Slider;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, v6, Lcom/rey/material/widget/Slider;->e:Landroid/graphics/Paint;

    iget-object v1, v6, Lcom/rey/material/widget/Slider;->w:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-direct/range {p0 .. p0}, Lcom/rey/material/widget/Slider;->x()V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setAlwaysFillThumb(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/rey/material/widget/Slider;->I:Z

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Le/g/a/a/f;

    if-eqz v1, :cond_0

    instance-of v1, p1, Le/g/a/a/f;

    if-nez v1, :cond_0

    check-cast v0, Le/g/a/a/f;

    invoke-virtual {v0, p1}, Le/g/a/a/f;->r(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    invoke-virtual {p0}, Lcom/rey/material/widget/Slider;->getRippleManager()Lcom/rey/material/widget/a;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/rey/material/widget/a;->f(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0}, Lcom/rey/material/widget/Slider;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public setOnPositionChangeListener(Lcom/rey/material/widget/Slider$b;)V
    .locals 0

    iput-object p1, p0, Lcom/rey/material/widget/Slider;->Q:Lcom/rey/material/widget/Slider$b;

    return-void
.end method

.method public setPosition(FZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p2, v0}, Lcom/rey/material/widget/Slider;->y(FZZZ)V

    return-void
.end method

.method public setPrimaryColor(I)V
    .locals 0

    iput p1, p0, Lcom/rey/material/widget/Slider;->o:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSecondaryColor(I)V
    .locals 0

    iput p1, p0, Lcom/rey/material/widget/Slider;->p:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setValue(FZ)V
    .locals 2

    iget v0, p0, Lcom/rey/material/widget/Slider;->l:I

    int-to-float v0, v0

    iget v1, p0, Lcom/rey/material/widget/Slider;->k:I

    int-to-float v1, v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget v0, p0, Lcom/rey/material/widget/Slider;->k:I

    int-to-float v1, v0

    sub-float/2addr p1, v1

    iget v1, p0, Lcom/rey/material/widget/Slider;->l:I

    sub-int/2addr v1, v0

    int-to-float v0, v1

    div-float/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lcom/rey/material/widget/Slider;->setPosition(FZ)V

    return-void
.end method

.method public setValueRange(IIZ)V
    .locals 8

    if-lt p2, p1, :cond_1

    iget v0, p0, Lcom/rey/material/widget/Slider;->k:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/rey/material/widget/Slider;->l:I

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/rey/material/widget/Slider;->getExactValue()F

    move-result v0

    invoke-virtual {p0}, Lcom/rey/material/widget/Slider;->getPosition()F

    move-result v5

    iput p1, p0, Lcom/rey/material/widget/Slider;->k:I

    iput p2, p0, Lcom/rey/material/widget/Slider;->l:I

    invoke-virtual {p0, v0, p3}, Lcom/rey/material/widget/Slider;->setValue(FZ)V

    iget-object p1, p0, Lcom/rey/material/widget/Slider;->Q:Lcom/rey/material/widget/Slider$b;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/rey/material/widget/Slider;->getPosition()F

    move-result p1

    cmpl-float p1, v5, p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/rey/material/widget/Slider;->getExactValue()F

    move-result p1

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/rey/material/widget/Slider;->Q:Lcom/rey/material/widget/Slider$b;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {p0}, Lcom/rey/material/widget/Slider;->getValue()I

    move-result v7

    move-object v2, p0

    move v4, v5

    invoke-interface/range {v1 .. v7}, Lcom/rey/material/widget/Slider$b;->a(Lcom/rey/material/widget/Slider;ZFFII)V

    :cond_1
    :goto_0
    return-void
.end method
