.class public Lcom/rey/material/widget/Switch;
.super Landroid/view/View;
.source ""

# interfaces
.implements Landroid/widget/Checkable;
.implements Lcom/rey/material/app/b$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rey/material/widget/Switch$SavedState;,
        Lcom/rey/material/widget/Switch$b;
    }
.end annotation


# instance fields
.field private A:I

.field private B:I

.field private C:Landroid/graphics/Path;

.field private D:Landroid/graphics/Paint;

.field private E:Z

.field private F:Lcom/rey/material/widget/Switch$b;

.field private final G:Ljava/lang/Runnable;

.field private b:Lcom/rey/material/widget/a;

.field protected c:I

.field protected d:I

.field private e:Z

.field private f:Landroid/graphics/Paint;

.field private g:Landroid/graphics/RectF;

.field private h:Landroid/graphics/RectF;

.field private i:Landroid/graphics/Path;

.field private j:I

.field private k:Landroid/content/res/ColorStateList;

.field private l:Landroid/graphics/Paint$Cap;

.field private m:I

.field private n:Landroid/content/res/ColorStateList;

.field private o:F

.field private p:I

.field private q:Landroid/view/animation/Interpolator;

.field private r:I

.field private s:Z

.field private t:F

.field private u:F

.field private v:F

.field private w:J

.field private x:I

.field private y:F

.field private z:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/rey/material/widget/Switch;->d:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rey/material/widget/Switch;->e:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/rey/material/widget/Switch;->j:I

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    iput-object v2, p0, Lcom/rey/material/widget/Switch;->l:Landroid/graphics/Paint$Cap;

    iput v1, p0, Lcom/rey/material/widget/Switch;->m:I

    iput v1, p0, Lcom/rey/material/widget/Switch;->p:I

    const/16 v2, 0x10

    iput v2, p0, Lcom/rey/material/widget/Switch;->r:I

    iput-boolean v0, p0, Lcom/rey/material/widget/Switch;->s:Z

    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/rey/material/widget/Switch;->z:[I

    iput v1, p0, Lcom/rey/material/widget/Switch;->A:I

    iput v1, p0, Lcom/rey/material/widget/Switch;->B:I

    iput-boolean v0, p0, Lcom/rey/material/widget/Switch;->E:Z

    new-instance v1, Lcom/rey/material/widget/Switch$a;

    invoke-direct {v1, p0}, Lcom/rey/material/widget/Switch$a;-><init>(Lcom/rey/material/widget/Switch;)V

    iput-object v1, p0, Lcom/rey/material/widget/Switch;->G:Ljava/lang/Runnable;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, v0}, Lcom/rey/material/widget/Switch;->i(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/rey/material/widget/Switch;->d:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rey/material/widget/Switch;->e:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/rey/material/widget/Switch;->j:I

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    iput-object v2, p0, Lcom/rey/material/widget/Switch;->l:Landroid/graphics/Paint$Cap;

    iput v1, p0, Lcom/rey/material/widget/Switch;->m:I

    iput v1, p0, Lcom/rey/material/widget/Switch;->p:I

    const/16 v2, 0x10

    iput v2, p0, Lcom/rey/material/widget/Switch;->r:I

    iput-boolean v0, p0, Lcom/rey/material/widget/Switch;->s:Z

    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/rey/material/widget/Switch;->z:[I

    iput v1, p0, Lcom/rey/material/widget/Switch;->A:I

    iput v1, p0, Lcom/rey/material/widget/Switch;->B:I

    iput-boolean v0, p0, Lcom/rey/material/widget/Switch;->E:Z

    new-instance v1, Lcom/rey/material/widget/Switch$a;

    invoke-direct {v1, p0}, Lcom/rey/material/widget/Switch$a;-><init>(Lcom/rey/material/widget/Switch;)V

    iput-object v1, p0, Lcom/rey/material/widget/Switch;->G:Ljava/lang/Runnable;

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/rey/material/widget/Switch;->i(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/rey/material/widget/Switch;->d:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rey/material/widget/Switch;->e:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/rey/material/widget/Switch;->j:I

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    iput-object v2, p0, Lcom/rey/material/widget/Switch;->l:Landroid/graphics/Paint$Cap;

    iput v1, p0, Lcom/rey/material/widget/Switch;->m:I

    iput v1, p0, Lcom/rey/material/widget/Switch;->p:I

    const/16 v2, 0x10

    iput v2, p0, Lcom/rey/material/widget/Switch;->r:I

    iput-boolean v0, p0, Lcom/rey/material/widget/Switch;->s:Z

    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/rey/material/widget/Switch;->z:[I

    iput v1, p0, Lcom/rey/material/widget/Switch;->A:I

    iput v1, p0, Lcom/rey/material/widget/Switch;->B:I

    iput-boolean v0, p0, Lcom/rey/material/widget/Switch;->E:Z

    new-instance v1, Lcom/rey/material/widget/Switch$a;

    invoke-direct {v1, p0}, Lcom/rey/material/widget/Switch$a;-><init>(Lcom/rey/material/widget/Switch;)V

    iput-object v1, p0, Lcom/rey/material/widget/Switch;->G:Ljava/lang/Runnable;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/rey/material/widget/Switch;->i(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method static synthetic a(Lcom/rey/material/widget/Switch;)V
    .locals 0

    invoke-direct {p0}, Lcom/rey/material/widget/Switch;->m()V

    return-void
.end method

.method private e()V
    .locals 11

    iget v0, p0, Lcom/rey/material/widget/Switch;->A:I

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/rey/material/widget/Switch;->D:Landroid/graphics/Paint;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Paint;

    const/4 v2, 0x5

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/rey/material/widget/Switch;->D:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/rey/material/widget/Switch;->D:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    :cond_1
    iget v0, p0, Lcom/rey/material/widget/Switch;->m:I

    int-to-float v2, v0

    iget v3, p0, Lcom/rey/material/widget/Switch;->A:I

    add-int/2addr v0, v3

    iget v3, p0, Lcom/rey/material/widget/Switch;->B:I

    add-int/2addr v0, v3

    int-to-float v0, v0

    div-float/2addr v2, v0

    iget-object v0, p0, Lcom/rey/material/widget/Switch;->D:Landroid/graphics/Paint;

    new-instance v10, Landroid/graphics/RadialGradient;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v3, p0, Lcom/rey/material/widget/Switch;->m:I

    iget v6, p0, Lcom/rey/material/widget/Switch;->A:I

    add-int/2addr v3, v6

    int-to-float v6, v3

    const/4 v3, 0x3

    new-array v7, v3, [I

    fill-array-data v7, :array_0

    new-array v8, v3, [F

    const/4 v3, 0x0

    const/4 v9, 0x0

    aput v9, v8, v3

    aput v2, v8, v1

    const/4 v2, 0x2

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v8, v2

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/rey/material/widget/Switch;->C:Landroid/graphics/Path;

    if-nez v0, :cond_2

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/rey/material/widget/Switch;->C:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    :goto_0
    iget v0, p0, Lcom/rey/material/widget/Switch;->m:I

    iget v2, p0, Lcom/rey/material/widget/Switch;->A:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    iget-object v2, p0, Lcom/rey/material/widget/Switch;->h:Landroid/graphics/RectF;

    neg-float v3, v0

    invoke-virtual {v2, v3, v3, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/rey/material/widget/Switch;->C:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/rey/material/widget/Switch;->h:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    iget v0, p0, Lcom/rey/material/widget/Switch;->m:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/rey/material/widget/Switch;->h:Landroid/graphics/RectF;

    neg-float v2, v0

    iget v3, p0, Lcom/rey/material/widget/Switch;->B:I

    int-to-float v4, v3

    sub-float v4, v2, v4

    int-to-float v3, v3

    sub-float v3, v0, v3

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/rey/material/widget/Switch;->C:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/rey/material/widget/Switch;->h:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    return-void

    :array_0
    .array-data 4
        0x4c000000    # 3.3554432E7f
        0x4c000000    # 3.3554432E7f
        0x0
    .end array-data
.end method

.method private f(Z)I
    .locals 3

    iget-object v0, p0, Lcom/rey/material/widget/Switch;->z:[I

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x101009e

    goto :goto_0

    :cond_0
    const v1, -0x101009e

    :goto_0
    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v0, p0, Lcom/rey/material/widget/Switch;->z:[I

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    const p1, 0x10100a0

    goto :goto_1

    :cond_1
    const p1, -0x10100a0

    :goto_1
    aput p1, v0, v1

    iget-object p1, p0, Lcom/rey/material/widget/Switch;->n:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    return p1
.end method

.method private g(Z)I
    .locals 3

    iget-object v0, p0, Lcom/rey/material/widget/Switch;->z:[I

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x101009e

    goto :goto_0

    :cond_0
    const v1, -0x101009e

    :goto_0
    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v0, p0, Lcom/rey/material/widget/Switch;->z:[I

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    const p1, 0x10100a0

    goto :goto_1

    :cond_1
    const p1, -0x10100a0

    :goto_1
    aput p1, v0, v1

    iget-object p1, p0, Lcom/rey/material/widget/Switch;->k:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    return p1
.end method

.method private h(FFF)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p2

    iget v2, v0, Lcom/rey/material/widget/Switch;->j:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget-object v4, v0, Lcom/rey/material/widget/Switch;->i:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    iget-object v4, v0, Lcom/rey/material/widget/Switch;->l:Landroid/graphics/Paint$Cap;

    sget-object v5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    const/high16 v6, 0x43340000    # 180.0f

    const-wide v7, 0x4066800000000000L    # 180.0

    const-wide v9, 0x400921fb54442d18L    # Math.PI

    const/high16 v11, 0x3f800000    # 1.0f

    if-eq v4, v5, :cond_1

    iget-object v4, v0, Lcom/rey/material/widget/Switch;->h:Landroid/graphics/RectF;

    sub-float v5, p1, p3

    add-float v12, v5, v11

    sub-float v13, v1, p3

    add-float/2addr v13, v11

    add-float v14, p1, p3

    sub-float v15, v14, v11

    add-float v16, v1, p3

    sub-float v3, v16, v11

    invoke-virtual {v4, v12, v13, v15, v3}, Landroid/graphics/RectF;->set(FFFF)V

    sub-float v3, p3, v11

    div-float v3, v2, v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->asin(D)D

    move-result-wide v3

    div-double/2addr v3, v9

    mul-double v3, v3, v7

    double-to-float v3, v3

    iget-object v4, v0, Lcom/rey/material/widget/Switch;->g:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    cmpl-float v5, v5, v4

    if-lez v5, :cond_0

    iget-object v5, v0, Lcom/rey/material/widget/Switch;->i:Landroid/graphics/Path;

    sub-float v7, v1, v2

    invoke-virtual {v5, v4, v7}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v4, v0, Lcom/rey/material/widget/Switch;->i:Landroid/graphics/Path;

    iget-object v5, v0, Lcom/rey/material/widget/Switch;->h:Landroid/graphics/RectF;

    add-float/2addr v6, v3

    neg-float v7, v3

    const/high16 v8, 0x40000000    # 2.0f

    mul-float v7, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v4, v0, Lcom/rey/material/widget/Switch;->i:Landroid/graphics/Path;

    iget-object v5, v0, Lcom/rey/material/widget/Switch;->g:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    add-float v6, v1, v2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v4, v0, Lcom/rey/material/widget/Switch;->i:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    :cond_0
    iget-object v4, v0, Lcom/rey/material/widget/Switch;->g:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    cmpg-float v5, v14, v4

    if-gez v5, :cond_3

    iget-object v5, v0, Lcom/rey/material/widget/Switch;->i:Landroid/graphics/Path;

    sub-float v6, v1, v2

    invoke-virtual {v5, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v4, v0, Lcom/rey/material/widget/Switch;->i:Landroid/graphics/Path;

    iget-object v5, v0, Lcom/rey/material/widget/Switch;->h:Landroid/graphics/RectF;

    neg-float v6, v3

    const/high16 v7, 0x40000000    # 2.0f

    mul-float v3, v3, v7

    invoke-virtual {v4, v5, v6, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v3, v0, Lcom/rey/material/widget/Switch;->i:Landroid/graphics/Path;

    iget-object v4, v0, Lcom/rey/material/widget/Switch;->g:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v2

    invoke-virtual {v3, v4, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    :cond_1
    sub-float v3, p3, v11

    div-float v3, v2, v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->asin(D)D

    move-result-wide v3

    div-double/2addr v3, v9

    mul-double v3, v3, v7

    double-to-float v3, v3

    sub-float v4, p1, p3

    iget-object v5, v0, Lcom/rey/material/widget/Switch;->g:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    const/4 v12, 0x0

    cmpl-float v13, v4, v5

    if-lez v13, :cond_2

    add-float/2addr v5, v2

    sub-float v5, v5, p1

    add-float v5, v5, p3

    div-float/2addr v5, v2

    invoke-static {v12, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    float-to-double v13, v5

    invoke-static {v13, v14}, Ljava/lang/Math;->acos(D)D

    move-result-wide v13

    div-double/2addr v13, v9

    mul-double v13, v13, v7

    double-to-float v5, v13

    iget-object v13, v0, Lcom/rey/material/widget/Switch;->h:Landroid/graphics/RectF;

    iget-object v14, v0, Lcom/rey/material/widget/Switch;->g:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->left:F

    sub-float v15, v1, v2

    iget v7, v0, Lcom/rey/material/widget/Switch;->j:I

    int-to-float v7, v7

    add-float/2addr v7, v14

    add-float v8, v1, v2

    invoke-virtual {v13, v14, v15, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v7, v0, Lcom/rey/material/widget/Switch;->i:Landroid/graphics/Path;

    iget-object v8, v0, Lcom/rey/material/widget/Switch;->h:Landroid/graphics/RectF;

    sub-float v13, v6, v5

    const/high16 v14, 0x40000000    # 2.0f

    mul-float v5, v5, v14

    invoke-virtual {v7, v8, v13, v5}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v5, v0, Lcom/rey/material/widget/Switch;->h:Landroid/graphics/RectF;

    add-float v7, v4, v11

    sub-float v8, v1, p3

    add-float/2addr v8, v11

    add-float v13, p1, p3

    sub-float/2addr v13, v11

    add-float v14, v1, p3

    sub-float/2addr v14, v11

    invoke-virtual {v5, v7, v8, v13, v14}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v5, v0, Lcom/rey/material/widget/Switch;->i:Landroid/graphics/Path;

    iget-object v7, v0, Lcom/rey/material/widget/Switch;->h:Landroid/graphics/RectF;

    add-float/2addr v6, v3

    neg-float v8, v3

    const/high16 v13, 0x40000000    # 2.0f

    mul-float v8, v8, v13

    invoke-virtual {v5, v7, v6, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v5, v0, Lcom/rey/material/widget/Switch;->i:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    :cond_2
    add-float v5, p1, p3

    iget-object v6, v0, Lcom/rey/material/widget/Switch;->g:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    cmpg-float v7, v5, v6

    if-gez v7, :cond_3

    sub-float v6, v5, v6

    add-float/2addr v6, v2

    div-float/2addr v6, v2

    invoke-static {v12, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v6

    double-to-float v6, v6

    iget-object v7, v0, Lcom/rey/material/widget/Switch;->i:Landroid/graphics/Path;

    iget-object v8, v0, Lcom/rey/material/widget/Switch;->g:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    sub-float/2addr v8, v2

    float-to-double v12, v8

    float-to-double v14, v6

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    float-to-double v9, v2

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v17, v17, v9

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    add-double v12, v12, v17

    double-to-float v6, v12

    float-to-double v12, v1

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v17, v17, v9

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    add-double v12, v12, v17

    double-to-float v8, v12

    invoke-virtual {v7, v6, v8}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v14, v6

    const-wide v6, 0x4066800000000000L    # 180.0

    mul-double v14, v14, v6

    double-to-float v6, v14

    iget-object v7, v0, Lcom/rey/material/widget/Switch;->h:Landroid/graphics/RectF;

    iget-object v8, v0, Lcom/rey/material/widget/Switch;->g:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    iget v9, v0, Lcom/rey/material/widget/Switch;->j:I

    int-to-float v9, v9

    sub-float v9, v8, v9

    sub-float v10, v1, v2

    add-float/2addr v2, v1

    invoke-virtual {v7, v9, v10, v8, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lcom/rey/material/widget/Switch;->i:Landroid/graphics/Path;

    iget-object v7, v0, Lcom/rey/material/widget/Switch;->h:Landroid/graphics/RectF;

    neg-float v8, v6

    const/high16 v9, 0x40000000    # 2.0f

    mul-float v8, v8, v9

    invoke-virtual {v2, v7, v6, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v2, v0, Lcom/rey/material/widget/Switch;->h:Landroid/graphics/RectF;

    add-float/2addr v4, v11

    sub-float v6, v1, p3

    add-float/2addr v6, v11

    sub-float/2addr v5, v11

    add-float v1, v1, p3

    sub-float/2addr v1, v11

    invoke-virtual {v2, v4, v6, v5, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lcom/rey/material/widget/Switch;->i:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/rey/material/widget/Switch;->h:Landroid/graphics/RectF;

    neg-float v4, v3

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v3, v3, v5

    invoke-virtual {v1, v2, v4, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    :goto_0
    iget-object v1, v0, Lcom/rey/material/widget/Switch;->i:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    :cond_3
    return-void
.end method

.method private i(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/rey/material/widget/Switch;->f:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/rey/material/widget/Switch;->g:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/rey/material/widget/Switch;->h:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/rey/material/widget/Switch;->i:Landroid/graphics/Path;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/rey/material/widget/Switch;->v:F

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/rey/material/widget/Switch;->c(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-static {p1, p2, p3, p4}, Lcom/rey/material/app/b;->f(Landroid/content/Context;Landroid/util/AttributeSet;II)I

    move-result p1

    iput p1, p0, Lcom/rey/material/widget/Switch;->c:I

    return-void
.end method

.method private j()V
    .locals 3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/rey/material/widget/Switch;->w:J

    iget v0, p0, Lcom/rey/material/widget/Switch;->o:F

    iput v0, p0, Lcom/rey/material/widget/Switch;->y:F

    iget v1, p0, Lcom/rey/material/widget/Switch;->p:I

    int-to-float v1, v1

    iget-boolean v2, p0, Lcom/rey/material/widget/Switch;->s:Z

    if-eqz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v0, v2, v0

    :cond_0
    mul-float v1, v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/rey/material/widget/Switch;->x:I

    return-void
.end method

.method private k()V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/rey/material/widget/Switch;->j()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rey/material/widget/Switch;->e:Z

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/rey/material/widget/Switch;->G:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x10

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/rey/material/widget/Switch;->s:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/rey/material/widget/Switch;->o:F

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private l()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rey/material/widget/Switch;->e:Z

    iget-boolean v0, p0, Lcom/rey/material/widget/Switch;->s:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/rey/material/widget/Switch;->o:F

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/rey/material/widget/Switch;->G:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private m()V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/rey/material/widget/Switch;->w:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, p0, Lcom/rey/material/widget/Switch;->x:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v2, p0, Lcom/rey/material/widget/Switch;->q:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    iget-boolean v3, p0, Lcom/rey/material/widget/Switch;->s:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/rey/material/widget/Switch;->y:F

    sub-float v4, v1, v2

    mul-float v3, v3, v4

    add-float/2addr v3, v2

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/rey/material/widget/Switch;->y:F

    sub-float v2, v1, v2

    mul-float v3, v3, v2

    :goto_0
    iput v3, p0, Lcom/rey/material/widget/Switch;->o:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/rey/material/widget/Switch;->l()V

    :cond_1
    iget-boolean v0, p0, Lcom/rey/material/widget/Switch;->e:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/rey/material/widget/Switch;->G:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x10

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/rey/material/widget/Switch;->l()V

    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 3

    invoke-static {p0, p1}, Le/g/a/b/d;->b(Landroid/view/View;I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/rey/material/widget/Switch;->c(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method protected c(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7

    invoke-virtual {p0}, Lcom/rey/material/widget/Switch;->getRippleManager()Lcom/rey/material/widget/a;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/rey/material/widget/a;->c(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget-object v0, Lcom/callerid/block/R$styleable;->Switch:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p3

    const/4 p4, 0x0

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ge v0, p3, :cond_c

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    const/16 v5, 0x9

    if-ne v4, v5, :cond_0

    invoke-virtual {p2, v4, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/rey/material/widget/Switch;->j:I

    goto/16 :goto_2

    :cond_0
    if-ne v4, v1, :cond_1

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/rey/material/widget/Switch;->k:Landroid/content/res/ColorStateList;

    goto/16 :goto_2

    :cond_1
    const/4 v1, 0x7

    if-ne v4, v1, :cond_4

    invoke-virtual {p2, v4, p4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    :goto_1
    iput-object v1, p0, Lcom/rey/material/widget/Switch;->l:Landroid/graphics/Paint$Cap;

    goto :goto_2

    :cond_2
    if-ne v1, v3, :cond_3

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    goto :goto_1

    :cond_3
    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    goto :goto_1

    :cond_4
    const/4 v1, 0x4

    if-ne v4, v1, :cond_5

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/rey/material/widget/Switch;->n:Landroid/content/res/ColorStateList;

    goto :goto_2

    :cond_5
    const/4 v1, 0x6

    if-ne v4, v1, :cond_6

    invoke-virtual {p2, v4, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/rey/material/widget/Switch;->m:I

    goto :goto_2

    :cond_6
    const/4 v1, 0x5

    if-ne v4, v1, :cond_7

    invoke-virtual {p2, v4, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/rey/material/widget/Switch;->A:I

    div-int/2addr v1, v2

    iput v1, p0, Lcom/rey/material/widget/Switch;->B:I

    goto :goto_2

    :cond_7
    if-ne v4, v2, :cond_8

    invoke-virtual {p2, v4, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/rey/material/widget/Switch;->p:I

    goto :goto_2

    :cond_8
    if-nez v4, :cond_9

    invoke-virtual {p2, v4, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/rey/material/widget/Switch;->r:I

    goto :goto_2

    :cond_9
    if-ne v4, v3, :cond_a

    iget-boolean v1, p0, Lcom/rey/material/widget/Switch;->s:Z

    invoke-virtual {p2, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/rey/material/widget/Switch;->setCheckedImmediately(Z)V

    goto :goto_2

    :cond_a
    const/4 v1, 0x3

    if-ne v4, v1, :cond_b

    invoke-virtual {p2, v1, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/rey/material/widget/Switch;->q:Landroid/view/animation/Interpolator;

    :cond_b
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    iget p2, p0, Lcom/rey/material/widget/Switch;->j:I

    if-gez p2, :cond_d

    invoke-static {p1, v2}, Le/g/a/b/b;->e(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/rey/material/widget/Switch;->j:I

    :cond_d
    iget p2, p0, Lcom/rey/material/widget/Switch;->m:I

    if-gez p2, :cond_e

    invoke-static {p1, v1}, Le/g/a/b/b;->e(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/rey/material/widget/Switch;->m:I

    :cond_e
    iget p2, p0, Lcom/rey/material/widget/Switch;->A:I

    if-gez p2, :cond_f

    invoke-static {p1, v2}, Le/g/a/b/b;->e(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/rey/material/widget/Switch;->A:I

    div-int/2addr p2, v2

    iput p2, p0, Lcom/rey/material/widget/Switch;->B:I

    :cond_f
    iget p2, p0, Lcom/rey/material/widget/Switch;->p:I

    if-gez p2, :cond_10

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x10e0001

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/rey/material/widget/Switch;->p:I

    :cond_10
    iget-object p2, p0, Lcom/rey/material/widget/Switch;->q:Landroid/view/animation/Interpolator;

    if-nez p2, :cond_11

    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object p2, p0, Lcom/rey/material/widget/Switch;->q:Landroid/view/animation/Interpolator;

    :cond_11
    iget-object p2, p0, Lcom/rey/material/widget/Switch;->k:Landroid/content/res/ColorStateList;

    const p3, 0x10100a0

    const v0, -0x10100a0

    const/high16 v1, -0x1000000

    if-nez p2, :cond_12

    new-array p2, v2, [[I

    new-array v4, v3, [I

    aput v0, v4, p4

    aput-object v4, p2, p4

    new-array v4, v3, [I

    aput p3, v4, p4

    aput-object v4, p2, v3

    new-array v4, v2, [I

    invoke-static {p1, v1}, Le/g/a/b/b;->d(Landroid/content/Context;I)I

    move-result v5

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-static {v5, v6}, Le/g/a/b/a;->a(IF)I

    move-result v5

    aput v5, v4, p4

    invoke-static {p1, v1}, Le/g/a/b/b;->b(Landroid/content/Context;I)I

    move-result v5

    invoke-static {v5, v6}, Le/g/a/b/a;->a(IF)I

    move-result v5

    aput v5, v4, v3

    new-instance v5, Landroid/content/res/ColorStateList;

    invoke-direct {v5, p2, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v5, p0, Lcom/rey/material/widget/Switch;->k:Landroid/content/res/ColorStateList;

    :cond_12
    iget-object p2, p0, Lcom/rey/material/widget/Switch;->n:Landroid/content/res/ColorStateList;

    if-nez p2, :cond_13

    new-array p2, v2, [[I

    new-array v4, v3, [I

    aput v0, v4, p4

    aput-object v4, p2, p4

    new-array v0, v3, [I

    aput p3, v0, p4

    aput-object v0, p2, v3

    new-array p3, v2, [I

    const v0, 0xfafafa

    aput v0, p3, p4

    invoke-static {p1, v1}, Le/g/a/b/b;->b(Landroid/content/Context;I)I

    move-result p1

    aput p1, p3, v3

    new-instance p1, Landroid/content/res/ColorStateList;

    invoke-direct {p1, p2, p3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object p1, p0, Lcom/rey/material/widget/Switch;->n:Landroid/content/res/ColorStateList;

    :cond_13
    iget-object p1, p0, Lcom/rey/material/widget/Switch;->f:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/rey/material/widget/Switch;->l:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    invoke-direct {p0}, Lcom/rey/material/widget/Switch;->e()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public d(Lcom/rey/material/app/b$b;)V
    .locals 1

    invoke-static {}, Lcom/rey/material/app/b;->c()Lcom/rey/material/app/b;

    move-result-object p1

    iget v0, p0, Lcom/rey/material/widget/Switch;->c:I

    invoke-virtual {p1, v0}, Lcom/rey/material/app/b;->b(I)I

    move-result p1

    iget v0, p0, Lcom/rey/material/widget/Switch;->d:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/rey/material/widget/Switch;->d:I

    invoke-virtual {p0, p1}, Lcom/rey/material/widget/Switch;->b(I)V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/rey/material/widget/Switch;->g:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lcom/rey/material/widget/Switch;->m:I

    mul-int/lit8 v2, v1, 0x2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/rey/material/widget/Switch;->o:F

    mul-float v0, v0, v2

    iget-object v2, p0, Lcom/rey/material/widget/Switch;->g:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v3

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-boolean v1, p0, Lcom/rey/material/widget/Switch;->E:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    mul-float v2, v2, v1

    sub-float v0, v2, v0

    :cond_0
    iget-object v1, p0, Lcom/rey/material/widget/Switch;->g:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, p0, Lcom/rey/material/widget/Switch;->m:I

    int-to-float v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/rey/material/widget/Switch;->h(FFF)V

    iget-object v2, p0, Lcom/rey/material/widget/Switch;->f:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/rey/material/widget/Switch;->g(Z)I

    move-result v4

    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/rey/material/widget/Switch;->g(Z)I

    move-result v6

    iget v7, p0, Lcom/rey/material/widget/Switch;->o:F

    invoke-static {v4, v6, v7}, Le/g/a/b/a;->b(IIF)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/rey/material/widget/Switch;->f:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lcom/rey/material/widget/Switch;->i:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/rey/material/widget/Switch;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget v2, p0, Lcom/rey/material/widget/Switch;->A:I

    if-lez v2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    iget v4, p0, Lcom/rey/material/widget/Switch;->B:I

    int-to-float v4, v4

    add-float/2addr v4, v1

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, p0, Lcom/rey/material/widget/Switch;->C:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/rey/material/widget/Switch;->D:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_1
    iget-object v2, p0, Lcom/rey/material/widget/Switch;->f:Landroid/graphics/Paint;

    invoke-direct {p0, v3}, Lcom/rey/material/widget/Switch;->f(Z)I

    move-result v3

    invoke-direct {p0, v5}, Lcom/rey/material/widget/Switch;->f(Z)I

    move-result v4

    iget v5, p0, Lcom/rey/material/widget/Switch;->o:F

    invoke-static {v3, v4, v5}, Le/g/a/b/a;->b(IIF)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/rey/material/widget/Switch;->f:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v2, p0, Lcom/rey/material/widget/Switch;->m:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/rey/material/widget/Switch;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected getRippleManager()Lcom/rey/material/widget/a;
    .locals 2

    iget-object v0, p0, Lcom/rey/material/widget/Switch;->b:Lcom/rey/material/widget/a;

    if-nez v0, :cond_1

    const-class v0, Lcom/rey/material/widget/a;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/rey/material/widget/Switch;->b:Lcom/rey/material/widget/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/rey/material/widget/a;

    invoke-direct {v1}, Lcom/rey/material/widget/a;-><init>()V

    iput-object v1, p0, Lcom/rey/material/widget/Switch;->b:Lcom/rey/material/widget/a;

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
    iget-object v0, p0, Lcom/rey/material/widget/Switch;->b:Lcom/rey/material/widget/a;

    return-object v0
.end method

.method public getSuggestedMinimumHeight()I
    .locals 3

    iget v0, p0, Lcom/rey/material/widget/Switch;->m:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/rey/material/widget/Switch;->A:I

    iget v2, p0, Lcom/rey/material/widget/Switch;->B:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/rey/material/widget/Switch;->A:I

    iget v2, p0, Lcom/rey/material/widget/Switch;->B:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getSuggestedMinimumWidth()I
    .locals 3

    iget v0, p0, Lcom/rey/material/widget/Switch;->m:I

    mul-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/rey/material/widget/Switch;->A:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/rey/material/widget/Switch;->A:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/rey/material/widget/Switch;->s:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget v0, p0, Lcom/rey/material/widget/Switch;->c:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/rey/material/app/b;->c()Lcom/rey/material/app/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/rey/material/app/b;->j(Lcom/rey/material/app/b$c;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/rey/material/widget/Switch;->d(Lcom/rey/material/app/b$b;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-static {p0}, Lcom/rey/material/widget/a;->a(Landroid/view/View;)V

    iget v0, p0, Lcom/rey/material/widget/Switch;->c:I

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
    invoke-virtual {p0}, Lcom/rey/material/widget/Switch;->getSuggestedMinimumWidth()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/rey/material/widget/Switch;->getSuggestedMinimumWidth()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    if-eq p2, v2, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/rey/material/widget/Switch;->getSuggestedMinimumHeight()I

    move-result v1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/rey/material/widget/Switch;->getSuggestedMinimumHeight()I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_1
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    check-cast p1, Lcom/rey/material/widget/Switch$SavedState;

    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean p1, p1, Lcom/rey/material/widget/Switch$SavedState;->b:Z

    invoke-virtual {p0, p1}, Lcom/rey/material/widget/Switch;->setChecked(Z)V

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
    iget-boolean p1, p0, Lcom/rey/material/widget/Switch;->E:Z

    if-eq p1, v0, :cond_1

    iput-boolean v0, p0, Lcom/rey/material/widget/Switch;->E:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/rey/material/widget/Switch$SavedState;

    invoke-direct {v1, v0}, Lcom/rey/material/widget/Switch$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/rey/material/widget/Switch;->isChecked()Z

    move-result v0

    iput-boolean v0, v1, Lcom/rey/material/widget/Switch$SavedState;->b:Z

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    iget-object p3, p0, Lcom/rey/material/widget/Switch;->g:Landroid/graphics/RectF;

    iget p4, p0, Lcom/rey/material/widget/Switch;->A:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-static {p4, v0}, Ljava/lang/Math;->max(II)I

    move-result p4

    int-to-float p4, p4

    iput p4, p3, Landroid/graphics/RectF;->left:F

    iget-object p3, p0, Lcom/rey/material/widget/Switch;->g:Landroid/graphics/RectF;

    iget p4, p0, Lcom/rey/material/widget/Switch;->A:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    invoke-static {p4, v0}, Ljava/lang/Math;->max(II)I

    move-result p4

    sub-int/2addr p1, p4

    int-to-float p1, p1

    iput p1, p3, Landroid/graphics/RectF;->right:F

    iget p1, p0, Lcom/rey/material/widget/Switch;->m:I

    mul-int/lit8 p1, p1, 0x2

    iget p3, p0, Lcom/rey/material/widget/Switch;->r:I

    and-int/lit8 p3, p3, 0x70

    const/16 p4, 0x30

    if-eq p3, p4, :cond_1

    const/16 p4, 0x50

    if-eq p3, p4, :cond_0

    iget-object p3, p0, Lcom/rey/material/widget/Switch;->g:Landroid/graphics/RectF;

    sub-int/2addr p2, p1

    int-to-float p2, p2

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p2, p4

    iput p2, p3, Landroid/graphics/RectF;->top:F

    int-to-float p1, p1

    add-float/2addr p2, p1

    iput p2, p3, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/rey/material/widget/Switch;->g:Landroid/graphics/RectF;

    iget p4, p0, Lcom/rey/material/widget/Switch;->A:I

    iget v0, p0, Lcom/rey/material/widget/Switch;->B:I

    add-int/2addr p4, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    invoke-static {p4, v0}, Ljava/lang/Math;->max(II)I

    move-result p4

    sub-int/2addr p2, p4

    int-to-float p2, p2

    iput p2, p3, Landroid/graphics/RectF;->bottom:F

    iget-object p2, p0, Lcom/rey/material/widget/Switch;->g:Landroid/graphics/RectF;

    iget p3, p2, Landroid/graphics/RectF;->bottom:F

    int-to-float p1, p1

    sub-float/2addr p3, p1

    iput p3, p2, Landroid/graphics/RectF;->top:F

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/rey/material/widget/Switch;->g:Landroid/graphics/RectF;

    iget p3, p0, Lcom/rey/material/widget/Switch;->A:I

    iget p4, p0, Lcom/rey/material/widget/Switch;->B:I

    sub-int/2addr p3, p4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p4

    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result p3

    int-to-float p3, p3

    iput p3, p2, Landroid/graphics/RectF;->top:F

    iget-object p2, p0, Lcom/rey/material/widget/Switch;->g:Landroid/graphics/RectF;

    iget p3, p2, Landroid/graphics/RectF;->top:F

    int-to-float p1, p1

    add-float/2addr p3, p1

    iput p3, p2, Landroid/graphics/RectF;->bottom:F

    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p0}, Lcom/rey/material/widget/Switch;->getRippleManager()Lcom/rey/material/widget/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rey/material/widget/a;->d(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-boolean v1, p0, Lcom/rey/material/widget/Switch;->E:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x40000000    # 2.0f

    iget-object v2, p0, Lcom/rey/material/widget/Switch;->g:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    mul-float v2, v2, v1

    sub-float v0, v2, v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_9

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eq p1, v1, :cond_4

    const/4 v5, 0x2

    if-eq p1, v5, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto/16 :goto_1

    :cond_1
    iget p1, p0, Lcom/rey/material/widget/Switch;->o:F

    cmpl-float p1, p1, v2

    if-lez p1, :cond_2

    :goto_0
    const/4 v4, 0x1

    :cond_2
    invoke-virtual {p0, v4}, Lcom/rey/material/widget/Switch;->setChecked(Z)V

    goto/16 :goto_1

    :cond_3
    iget p1, p0, Lcom/rey/material/widget/Switch;->t:F

    sub-float p1, v0, p1

    iget-object v2, p0, Lcom/rey/material/widget/Switch;->g:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget v4, p0, Lcom/rey/material/widget/Switch;->m:I

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v2, v4

    div-float/2addr p1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    iget v4, p0, Lcom/rey/material/widget/Switch;->o:F

    add-float/2addr v4, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/rey/material/widget/Switch;->o:F

    iput v0, p0, Lcom/rey/material/widget/Switch;->t:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1

    :cond_4
    iget p1, p0, Lcom/rey/material/widget/Switch;->u:F

    sub-float/2addr v0, p1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/rey/material/widget/Switch;->w:J

    sub-long/2addr v5, v7

    long-to-float p1, v5

    div-float/2addr v0, p1

    const/high16 p1, 0x447a0000    # 1000.0f

    mul-float v0, v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v5, p0, Lcom/rey/material/widget/Switch;->v:F

    cmpl-float p1, p1, v5

    if-ltz p1, :cond_5

    cmpl-float p1, v0, v3

    if-lez p1, :cond_2

    goto :goto_0

    :cond_5
    iget-boolean p1, p0, Lcom/rey/material/widget/Switch;->s:Z

    if-nez p1, :cond_6

    iget v0, p0, Lcom/rey/material/widget/Switch;->o:F

    const v3, 0x3dcccccd    # 0.1f

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_7

    :cond_6
    if-eqz p1, :cond_8

    iget p1, p0, Lcom/rey/material/widget/Switch;->o:F

    const v0, 0x3f666666    # 0.9f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_8

    :cond_7
    invoke-virtual {p0}, Lcom/rey/material/widget/Switch;->toggle()V

    goto :goto_1

    :cond_8
    iget p1, p0, Lcom/rey/material/widget/Switch;->o:F

    cmpl-float p1, p1, v2

    if-lez p1, :cond_2

    goto :goto_0

    :cond_9
    iput v0, p0, Lcom/rey/material/widget/Switch;->t:F

    iput v0, p0, Lcom/rey/material/widget/Switch;->u:F

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/rey/material/widget/Switch;->w:J

    :goto_1
    return v1
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

.method public setChecked(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/rey/material/widget/Switch;->s:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/rey/material/widget/Switch;->s:Z

    iget-object v0, p0, Lcom/rey/material/widget/Switch;->F:Lcom/rey/material/widget/Switch$b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/rey/material/widget/Switch$b;->a(Lcom/rey/material/widget/Switch;Z)V

    :cond_0
    iget-boolean p1, p0, Lcom/rey/material/widget/Switch;->s:Z

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget v0, p0, Lcom/rey/material/widget/Switch;->o:F

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/rey/material/widget/Switch;->k()V

    :cond_2
    return-void
.end method

.method public setCheckedImmediately(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/rey/material/widget/Switch;->s:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/rey/material/widget/Switch;->s:Z

    iget-object v0, p0, Lcom/rey/material/widget/Switch;->F:Lcom/rey/material/widget/Switch$b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/rey/material/widget/Switch$b;->a(Lcom/rey/material/widget/Switch;Z)V

    :cond_0
    iget-boolean p1, p0, Lcom/rey/material/widget/Switch;->s:Z

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/rey/material/widget/Switch;->o:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/rey/material/widget/Switch$b;)V
    .locals 0

    iput-object p1, p0, Lcom/rey/material/widget/Switch;->F:Lcom/rey/material/widget/Switch$b;

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    invoke-virtual {p0}, Lcom/rey/material/widget/Switch;->getRippleManager()Lcom/rey/material/widget/a;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/rey/material/widget/a;->f(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0}, Lcom/rey/material/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public toggle()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/rey/material/widget/Switch;->s:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/rey/material/widget/Switch;->setChecked(Z)V

    :cond_0
    return-void
.end method
