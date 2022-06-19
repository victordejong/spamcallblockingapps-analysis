.class public Le/g/a/a/b;
.super Landroid/graphics/drawable/Drawable;
.source ""

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/g/a/a/b$b;
    }
.end annotation


# static fields
.field private static final w:[F


# instance fields
.field private b:Z

.field private c:Landroid/graphics/Paint;

.field private d:J

.field private e:F

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Landroid/content/res/ColorStateList;

.field private p:Landroid/graphics/RectF;

.field private q:Landroid/graphics/Path;

.field private r:F

.field private s:Z

.field private t:Z

.field private u:Z

.field private final v:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Le/g/a/a/b;->w:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3ef22d0e    # 0.473f
        0x3ebbe76d    # 0.367f
        0x3f56c8b4    # 0.839f
        0x3f800000    # 1.0f
        0x3e53f7cf    # 0.207f
    .end array-data
.end method

.method private constructor <init>(IIIIILandroid/content/res/ColorStateList;II)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Le/g/a/a/b;->b:Z

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Le/g/a/a/b;->r:F

    iput-boolean v0, p0, Le/g/a/a/b;->s:Z

    iput-boolean v0, p0, Le/g/a/a/b;->t:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Le/g/a/a/b;->u:Z

    new-instance v1, Le/g/a/a/b$a;

    invoke-direct {v1, p0}, Le/g/a/a/b$a;-><init>(Le/g/a/a/b;)V

    iput-object v1, p0, Le/g/a/a/b;->v:Ljava/lang/Runnable;

    iput p1, p0, Le/g/a/a/b;->h:I

    iput p2, p0, Le/g/a/a/b;->i:I

    iput p3, p0, Le/g/a/a/b;->k:I

    iput p4, p0, Le/g/a/a/b;->j:I

    iput p5, p0, Le/g/a/a/b;->g:I

    iput-object p6, p0, Le/g/a/a/b;->o:Landroid/content/res/ColorStateList;

    iput p7, p0, Le/g/a/a/b;->l:I

    iput p8, p0, Le/g/a/a/b;->f:I

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Le/g/a/a/b;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Le/g/a/a/b;->p:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Le/g/a/a/b;->q:Landroid/graphics/Path;

    return-void
.end method

.method synthetic constructor <init>(IIIIILandroid/content/res/ColorStateList;IILe/g/a/a/b$a;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Le/g/a/a/b;-><init>(IIIIILandroid/content/res/ColorStateList;II)V

    return-void
.end method

.method static synthetic a(Le/g/a/a/b;)V
    .locals 0

    invoke-direct {p0}, Le/g/a/a/b;->h()V

    return-void
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 9

    iget v0, p0, Le/g/a/a/b;->k:I

    iget v1, p0, Le/g/a/a/b;->g:I

    mul-int/lit8 v2, v1, 0x2

    sub-int/2addr v0, v2

    int-to-float v6, v0

    iget-object v0, p0, Le/g/a/a/b;->p:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    int-to-float v3, v1

    add-float v4, v2, v3

    iget v0, v0, Landroid/graphics/RectF;->top:F

    int-to-float v1, v1

    add-float v5, v0, v1

    invoke-virtual {p0}, Le/g/a/a/b;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Le/g/a/a/b;->e:F

    const v1, 0x3ecccccd    # 0.4f

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    div-float/2addr v0, v1

    iget v1, p0, Le/g/a/a/b;->k:I

    iget v2, p0, Le/g/a/a/b;->g:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    mul-float v1, v1, v0

    int-to-float v2, v2

    div-float/2addr v2, v3

    div-float v3, v1, v3

    add-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float/2addr v2, v3

    iget-object v3, p0, Le/g/a/a/b;->c:Landroid/graphics/Paint;

    iget v4, p0, Le/g/a/a/b;->m:I

    iget v5, p0, Le/g/a/a/b;->n:I

    invoke-static {v4, v5, v0}, Le/g/a/b/a;->b(IIF)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Le/g/a/a/b;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Le/g/a/a/b;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Le/g/a/a/b;->p:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    add-float v4, v1, v2

    iget v1, v0, Landroid/graphics/RectF;->top:F

    add-float v5, v1, v2

    iget v1, v0, Landroid/graphics/RectF;->right:F

    sub-float v6, v1, v2

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v7, v0, v2

    iget-object v8, p0, Le/g/a/a/b;->c:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Le/g/a/a/b;->c:Landroid/graphics/Paint;

    iget v1, p0, Le/g/a/a/b;->g:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Le/g/a/a/b;->p:Landroid/graphics/RectF;

    iget v1, p0, Le/g/a/a/b;->j:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Le/g/a/a/b;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    :cond_0
    sub-float/2addr v0, v1

    const v1, 0x3f19999a    # 0.6f

    div-float v7, v0, v1

    iget-object v0, p0, Le/g/a/a/b;->c:Landroid/graphics/Paint;

    iget v1, p0, Le/g/a/a/b;->n:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Le/g/a/a/b;->c:Landroid/graphics/Paint;

    iget v1, p0, Le/g/a/a/b;->g:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Le/g/a/a/b;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Le/g/a/a/b;->p:Landroid/graphics/RectF;

    iget v1, p0, Le/g/a/a/b;->j:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Le/g/a/a/b;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Le/g/a/a/b;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Le/g/a/a/b;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Le/g/a/a/b;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Le/g/a/a/b;->c:Landroid/graphics/Paint;

    iget v1, p0, Le/g/a/a/b;->l:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Le/g/a/a/b;->q:Landroid/graphics/Path;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Le/g/a/a/b;->c:Landroid/graphics/Paint;

    iget v1, p0, Le/g/a/a/b;->n:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Le/g/a/a/b;->c:Landroid/graphics/Paint;

    iget v1, p0, Le/g/a/a/b;->g:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Le/g/a/a/b;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Le/g/a/a/b;->p:Landroid/graphics/RectF;

    iget v1, p0, Le/g/a/a/b;->j:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Le/g/a/a/b;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Le/g/a/a/b;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Le/g/a/a/b;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Le/g/a/a/b;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Le/g/a/a/b;->c:Landroid/graphics/Paint;

    iget v1, p0, Le/g/a/a/b;->l:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Le/g/a/a/b;->q:Landroid/graphics/Path;

    const/high16 v7, 0x3f800000    # 1.0f

    :goto_0
    const/4 v8, 0x1

    move-object v2, p0

    move-object v3, v0

    invoke-direct/range {v2 .. v8}, Le/g/a/a/b;->d(Landroid/graphics/Path;FFFFZ)Landroid/graphics/Path;

    iget-object v1, p0, Le/g/a/a/b;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_1
    return-void
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 11

    invoke-virtual {p0}, Le/g/a/a/b;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Le/g/a/a/b;->e:F

    const v1, 0x3f19999a    # 0.6f

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    iget v2, p0, Le/g/a/a/b;->k:I

    iget v3, p0, Le/g/a/a/b;->g:I

    mul-int/lit8 v4, v3, 0x2

    sub-int/2addr v2, v4

    int-to-float v8, v2

    iget-object v2, p0, Le/g/a/a/b;->p:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/RectF;->left:F

    int-to-float v5, v3

    add-float v6, v4, v5

    iget v2, v2, Landroid/graphics/RectF;->top:F

    int-to-float v3, v3

    add-float v7, v2, v3

    div-float v9, v0, v1

    iget-object v0, p0, Le/g/a/a/b;->c:Landroid/graphics/Paint;

    iget v1, p0, Le/g/a/a/b;->m:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Le/g/a/a/b;->c:Landroid/graphics/Paint;

    iget v1, p0, Le/g/a/a/b;->g:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Le/g/a/a/b;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Le/g/a/a/b;->p:Landroid/graphics/RectF;

    iget v1, p0, Le/g/a/a/b;->j:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Le/g/a/a/b;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Le/g/a/a/b;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Le/g/a/a/b;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Le/g/a/a/b;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Le/g/a/a/b;->c:Landroid/graphics/Paint;

    iget v1, p0, Le/g/a/a/b;->l:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Le/g/a/a/b;->q:Landroid/graphics/Path;

    const/4 v10, 0x0

    move-object v4, p0

    move-object v5, v0

    invoke-direct/range {v4 .. v10}, Le/g/a/a/b;->d(Landroid/graphics/Path;FFFFZ)Landroid/graphics/Path;

    iget-object v1, p0, Le/g/a/a/b;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1

    :cond_0
    const v1, 0x3ecccccd    # 0.4f

    add-float/2addr v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v0, v2

    div-float/2addr v0, v1

    iget v1, p0, Le/g/a/a/b;->k:I

    iget v3, p0, Le/g/a/a/b;->g:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    sub-float/2addr v2, v0

    mul-float v1, v1, v2

    int-to-float v2, v3

    div-float/2addr v2, v4

    div-float v3, v1, v4

    add-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float/2addr v2, v3

    iget-object v3, p0, Le/g/a/a/b;->c:Landroid/graphics/Paint;

    iget v4, p0, Le/g/a/a/b;->m:I

    iget v5, p0, Le/g/a/a/b;->n:I

    invoke-static {v4, v5, v0}, Le/g/a/b/a;->b(IIF)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Le/g/a/a/b;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Le/g/a/a/b;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Le/g/a/a/b;->p:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    add-float v4, v1, v2

    iget v1, v0, Landroid/graphics/RectF;->top:F

    add-float v5, v1, v2

    iget v1, v0, Landroid/graphics/RectF;->right:F

    sub-float v6, v1, v2

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v7, v0, v2

    iget-object v8, p0, Le/g/a/a/b;->c:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Le/g/a/a/b;->c:Landroid/graphics/Paint;

    iget v1, p0, Le/g/a/a/b;->g:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Le/g/a/a/b;->c:Landroid/graphics/Paint;

    iget v1, p0, Le/g/a/a/b;->n:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Le/g/a/a/b;->c:Landroid/graphics/Paint;

    iget v1, p0, Le/g/a/a/b;->g:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Le/g/a/a/b;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :goto_0
    iget-object v0, p0, Le/g/a/a/b;->p:Landroid/graphics/RectF;

    iget v1, p0, Le/g/a/a/b;->j:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Le/g/a/a/b;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_1
    return-void
.end method

.method private d(Landroid/graphics/Path;FFFFZ)Landroid/graphics/Path;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    iget v3, v0, Le/g/a/a/b;->r:F

    cmpl-float v3, v3, v2

    if-nez v3, :cond_0

    return-object v1

    :cond_0
    iput v2, v0, Le/g/a/a/b;->r:F

    sget-object v3, Le/g/a/a/b;->w:[F

    const/4 v4, 0x0

    aget v4, v3, v4

    mul-float v4, v4, p4

    add-float v4, p2, v4

    const/4 v5, 0x1

    aget v5, v3, v5

    mul-float v5, v5, p4

    add-float v5, p3, v5

    const/4 v6, 0x2

    aget v6, v3, v6

    mul-float v6, v6, p4

    add-float v6, p2, v6

    const/4 v7, 0x3

    aget v7, v3, v7

    mul-float v7, v7, p4

    add-float v7, p3, v7

    const/4 v8, 0x4

    aget v8, v3, v8

    mul-float v8, v8, p4

    add-float v8, p2, v8

    const/4 v9, 0x5

    aget v3, v3, v9

    mul-float v3, v3, p4

    add-float v3, p3, v3

    sub-float v9, v4, v6

    float-to-double v9, v9

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    sub-float v15, v5, v7

    move/from16 v16, v7

    move/from16 p2, v8

    float-to-double v7, v15

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v17

    add-double v13, v13, v17

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    double-to-float v13, v13

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v7, v7

    add-float/2addr v7, v13

    div-float/2addr v13, v7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Path;->reset()V

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz p6, :cond_2

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    cmpg-float v8, v2, v13

    if-gez v8, :cond_1

    div-float/2addr v2, v13

    sub-float/2addr v7, v2

    mul-float v4, v4, v7

    mul-float v6, v6, v2

    add-float/2addr v4, v6

    mul-float v5, v5, v7

    mul-float v7, v16, v2

    goto :goto_0

    :cond_1
    sub-float/2addr v2, v13

    sub-float v4, v7, v13

    div-float/2addr v2, v4

    move/from16 v8, v16

    invoke-virtual {v1, v6, v8}, Landroid/graphics/Path;->lineTo(FF)V

    sub-float/2addr v7, v2

    mul-float v6, v6, v7

    mul-float v4, p2, v2

    goto :goto_1

    :cond_2
    move/from16 v9, p2

    move/from16 v8, v16

    invoke-virtual {v1, v9, v3}, Landroid/graphics/Path;->moveTo(FF)V

    cmpg-float v10, v2, v13

    if-gez v10, :cond_3

    div-float/2addr v2, v13

    invoke-virtual {v1, v6, v8}, Landroid/graphics/Path;->lineTo(FF)V

    sub-float/2addr v7, v2

    mul-float v4, v4, v7

    mul-float v6, v6, v2

    add-float/2addr v4, v6

    mul-float v5, v5, v7

    mul-float v7, v8, v2

    :goto_0
    add-float/2addr v5, v7

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_2

    :cond_3
    sub-float/2addr v2, v13

    sub-float v4, v7, v13

    div-float/2addr v2, v4

    sub-float/2addr v7, v2

    mul-float v6, v6, v7

    mul-float v4, v9, v2

    :goto_1
    add-float/2addr v6, v4

    mul-float v7, v7, v8

    mul-float v3, v3, v2

    add-float/2addr v7, v3

    invoke-virtual {v1, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_2
    return-object v1
.end method

.method private e()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Le/g/a/a/b;->d:J

    const/4 v0, 0x0

    iput v0, p0, Le/g/a/a/b;->e:F

    return-void
.end method

.method private h()V
    .locals 5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Le/g/a/a/b;->d:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, p0, Le/g/a/a/b;->f:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Le/g/a/a/b;->e:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Le/g/a/a/b;->b:Z

    :cond_0
    invoke-virtual {p0}, Le/g/a/a/b;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/g/a/a/b;->v:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Le/g/a/a/b;->scheduleSelf(Ljava/lang/Runnable;J)V

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-boolean v0, p0, Le/g/a/a/b;->s:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Le/g/a/a/b;->b(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Le/g/a/a/b;->c(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public f(Z)V
    .locals 0

    iput-boolean p1, p0, Le/g/a/a/b;->u:Z

    return-void
.end method

.method public g(Z)V
    .locals 0

    iput-boolean p1, p0, Le/g/a/a/b;->t:Z

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget v0, p0, Le/g/a/a/b;->i:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget v0, p0, Le/g/a/a/b;->h:I

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    iget v0, p0, Le/g/a/a/b;->i:I

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    iget v0, p0, Le/g/a/a/b;->h:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Le/g/a/a/b;->b:Z

    return v0
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 5

    iget-object v0, p0, Le/g/a/a/b;->p:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    iget v2, p0, Le/g/a/a/b;->k:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    iget v3, p0, Le/g/a/a/b;->k:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    iget v4, p0, Le/g/a/a/b;->k:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p1

    iget v4, p0, Le/g/a/a/b;->k:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr p1, v4

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method protected onStateChange([I)Z
    .locals 3

    const v0, 0x10100a0

    invoke-static {p1, v0}, Le/g/a/b/d;->g([II)Z

    move-result v0

    iget-object v1, p0, Le/g/a/a/b;->o:Landroid/content/res/ColorStateList;

    iget v2, p0, Le/g/a/a/b;->n:I

    invoke-virtual {v1, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    iget-boolean v1, p0, Le/g/a/a/b;->s:Z

    const/4 v2, 0x1

    if-eq v1, v0, :cond_1

    iput-boolean v0, p0, Le/g/a/a/b;->s:Z

    iget-boolean v0, p0, Le/g/a/a/b;->t:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Le/g/a/a/b;->u:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Le/g/a/a/b;->start()V

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Le/g/a/a/b;->n:I

    if-eq v1, p1, :cond_3

    invoke-virtual {p0}, Le/g/a/a/b;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Le/g/a/a/b;->n:I

    goto :goto_1

    :cond_2
    move v0, p1

    :goto_1
    iput v0, p0, Le/g/a/a/b;->m:I

    iput p1, p0, Le/g/a/a/b;->n:I

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Le/g/a/a/b;->isRunning()Z

    move-result v1

    if-nez v1, :cond_4

    iput p1, p0, Le/g/a/a/b;->m:I

    :cond_4
    move v2, v0

    :goto_2
    return v2
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Le/g/a/a/b;->b:Z

    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Le/g/a/a/b;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Le/g/a/a/b;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public start()V
    .locals 5

    invoke-direct {p0}, Le/g/a/a/b;->e()V

    iget-object v0, p0, Le/g/a/a/b;->v:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Le/g/a/a/b;->scheduleSelf(Ljava/lang/Runnable;J)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Le/g/a/a/b;->b:Z

    iget-object v0, p0, Le/g/a/a/b;->v:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
