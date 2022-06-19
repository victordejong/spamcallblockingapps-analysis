.class public Lcom/callerid/block/customview/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private A:Z

.field private B:Landroid/view/View;

.field private C:Lcom/callerid/block/customview/a;

.field private D:Z

.field private a:I

.field private b:I

.field private c:I

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Landroid/graphics/Path;

.field private l:Landroid/graphics/Paint;

.field private m:Landroid/graphics/Paint;

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:I

.field private s:I

.field private t:F

.field private u:F

.field private v:I

.field private w:I

.field private x:I

.field private y:Landroid/graphics/PaintFlagsDrawFilter;

.field private z:I


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/util/AttributeSet;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/callerid/block/customview/b;->a:I

    iput v0, p0, Lcom/callerid/block/customview/b;->b:I

    const/16 v1, 0x7d

    iput v1, p0, Lcom/callerid/block/customview/b;->c:I

    iput v0, p0, Lcom/callerid/block/customview/b;->e:I

    iput v0, p0, Lcom/callerid/block/customview/b;->f:I

    const/16 v1, 0xf

    iput v1, p0, Lcom/callerid/block/customview/b;->g:I

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/callerid/block/customview/b;->k:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/callerid/block/customview/b;->l:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/callerid/block/customview/b;->m:Landroid/graphics/Paint;

    const/4 v1, -0x1

    iput v1, p0, Lcom/callerid/block/customview/b;->x:I

    new-instance v2, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v3, 0x3

    invoke-direct {v2, v0, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v2, p0, Lcom/callerid/block/customview/b;->y:Landroid/graphics/PaintFlagsDrawFilter;

    iput v0, p0, Lcom/callerid/block/customview/b;->z:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/callerid/block/customview/b;->A:Z

    iput-boolean v0, p0, Lcom/callerid/block/customview/b;->D:Z

    move-object v4, p1

    check-cast v4, Lcom/callerid/block/customview/a;

    iput-object v4, p0, Lcom/callerid/block/customview/b;->C:Lcom/callerid/block/customview/a;

    iput-object p1, p0, Lcom/callerid/block/customview/b;->B:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p0, v0}, Lcom/callerid/block/customview/b;->p(I)V

    const/16 v4, 0x14

    iput v4, p0, Lcom/callerid/block/customview/b;->r:I

    iget v4, p0, Lcom/callerid/block/customview/b;->c:I

    div-int/lit8 v4, v4, 0xa

    iput v4, p0, Lcom/callerid/block/customview/b;->s:I

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_0

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v4, Lcom/callerid/block/R$styleable;->LButtonStyle:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/callerid/block/customview/b;->A:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/callerid/block/customview/b;->x:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/callerid/block/customview/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    iput p2, p0, Lcom/callerid/block/customview/b;->v:I

    iget-object p2, p0, Lcom/callerid/block/customview/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    iput p2, p0, Lcom/callerid/block/customview/b;->w:I

    :cond_1
    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/callerid/block/customview/b;->z:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    return-void
.end method

.method private b()I
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/customview/b;->B:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method private d()I
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/customview/b;->B:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method private e()V
    .locals 9

    iget-object v0, p0, Lcom/callerid/block/customview/b;->B:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/callerid/block/customview/b;->B:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    cmpg-float v3, v0, v2

    if-lez v3, :cond_9

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v3

    div-float/2addr v2, v3

    const v3, 0x3f4ccccd    # 0.8f

    const/4 v4, 0x0

    const/4 v5, 0x1

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    if-eqz v2, :cond_2

    iput v4, p0, Lcom/callerid/block/customview/b;->b:I

    goto :goto_1

    :cond_2
    cmpl-float v2, v0, v1

    if-lez v2, :cond_3

    iput v5, p0, Lcom/callerid/block/customview/b;->b:I

    goto :goto_1

    :cond_3
    iput v3, p0, Lcom/callerid/block/customview/b;->b:I

    :goto_1
    iget v2, p0, Lcom/callerid/block/customview/b;->z:I

    const/high16 v4, 0x40800000    # 4.0f

    const/4 v6, -0x1

    const/high16 v7, 0x40000000    # 2.0f

    if-eqz v2, :cond_6

    const v8, 0x30ffffff

    if-eq v2, v5, :cond_5

    if-eq v2, v3, :cond_5

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    goto :goto_4

    :cond_4
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    div-float/2addr v2, v4

    iput v2, p0, Lcom/callerid/block/customview/b;->p:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    div-float/2addr v0, v7

    iput v0, p0, Lcom/callerid/block/customview/b;->q:F

    iget v0, p0, Lcom/callerid/block/customview/b;->x:I

    if-ne v0, v6, :cond_8

    goto :goto_2

    :cond_5
    div-float/2addr v1, v7

    iput v1, p0, Lcom/callerid/block/customview/b;->p:F

    iput v0, p0, Lcom/callerid/block/customview/b;->q:F

    iget v0, p0, Lcom/callerid/block/customview/b;->x:I

    if-ne v0, v6, :cond_8

    :goto_2
    iput v8, p0, Lcom/callerid/block/customview/b;->x:I

    goto :goto_4

    :cond_6
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    div-float/2addr v2, v4

    iput v2, p0, Lcom/callerid/block/customview/b;->p:F

    iget v2, p0, Lcom/callerid/block/customview/b;->b:I

    if-nez v2, :cond_7

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_3

    :cond_7
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :goto_3
    div-float/2addr v0, v7

    iput v0, p0, Lcom/callerid/block/customview/b;->q:F

    iget v0, p0, Lcom/callerid/block/customview/b;->x:I

    if-ne v0, v6, :cond_8

    const/high16 v0, 0x30000000

    iput v0, p0, Lcom/callerid/block/customview/b;->x:I

    :cond_8
    :goto_4
    iget v0, p0, Lcom/callerid/block/customview/b;->q:F

    iget v1, p0, Lcom/callerid/block/customview/b;->p:F

    sub-float v2, v0, v1

    iget v3, p0, Lcom/callerid/block/customview/b;->r:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/callerid/block/customview/b;->n:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/callerid/block/customview/b;->s:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/callerid/block/customview/b;->o:F

    invoke-direct {p0}, Lcom/callerid/block/customview/b;->f()V

    :cond_9
    :goto_5
    return-void
.end method

.method private f()V
    .locals 4

    iget-object v0, p0, Lcom/callerid/block/customview/b;->l:Landroid/graphics/Paint;

    iget v1, p0, Lcom/callerid/block/customview/b;->x:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    iget v2, p0, Lcom/callerid/block/customview/b;->x:I

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    iget v3, p0, Lcom/callerid/block/customview/b;->x:I

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/callerid/block/customview/b;->x:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iput v0, p0, Lcom/callerid/block/customview/b;->g:I

    iget-object v0, p0, Lcom/callerid/block/customview/b;->m:Landroid/graphics/Paint;

    iget v1, p0, Lcom/callerid/block/customview/b;->x:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    iget v2, p0, Lcom/callerid/block/customview/b;->x:I

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    iget v3, p0, Lcom/callerid/block/customview/b;->x:I

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/callerid/block/customview/b;->m:Landroid/graphics/Paint;

    iget v1, p0, Lcom/callerid/block/customview/b;->g:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/callerid/block/customview/b;->l:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v0, p0, Lcom/callerid/block/customview/b;->g:I

    iget v1, p0, Lcom/callerid/block/customview/b;->r:I

    div-int v1, v0, v1

    iput v1, p0, Lcom/callerid/block/customview/b;->h:I

    iget v2, p0, Lcom/callerid/block/customview/b;->s:I

    div-int/2addr v0, v2

    iput v0, p0, Lcom/callerid/block/customview/b;->i:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    iput v2, p0, Lcom/callerid/block/customview/b;->h:I

    :cond_0
    if-ge v0, v2, :cond_1

    iput v2, p0, Lcom/callerid/block/customview/b;->i:I

    :cond_1
    iget v0, p0, Lcom/callerid/block/customview/b;->i:I

    iput v0, p0, Lcom/callerid/block/customview/b;->j:I

    return-void
.end method

.method private g()V
    .locals 2

    iget v0, p0, Lcom/callerid/block/customview/b;->a:I

    if-eqz v0, :cond_9

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_3

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/callerid/block/customview/b;->f:I

    iget v1, p0, Lcom/callerid/block/customview/b;->h:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/callerid/block/customview/b;->f:I

    iget v0, p0, Lcom/callerid/block/customview/b;->p:F

    iget v1, p0, Lcom/callerid/block/customview/b;->n:F

    :goto_0
    add-float/2addr v0, v1

    :goto_1
    iput v0, p0, Lcom/callerid/block/customview/b;->p:F

    goto :goto_2

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/callerid/block/customview/b;->f:I

    iget v1, p0, Lcom/callerid/block/customview/b;->i:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/callerid/block/customview/b;->f:I

    iget v0, p0, Lcom/callerid/block/customview/b;->p:F

    iget v1, p0, Lcom/callerid/block/customview/b;->o:F

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/callerid/block/customview/b;->f:I

    iget v1, p0, Lcom/callerid/block/customview/b;->j:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/callerid/block/customview/b;->f:I

    iget v0, p0, Lcom/callerid/block/customview/b;->q:F

    goto :goto_1

    :cond_3
    :goto_2
    iget v0, p0, Lcom/callerid/block/customview/b;->f:I

    iget v1, p0, Lcom/callerid/block/customview/b;->g:I

    if-lt v0, v1, :cond_4

    iput v1, p0, Lcom/callerid/block/customview/b;->f:I

    :cond_4
    iget v0, p0, Lcom/callerid/block/customview/b;->f:I

    if-gez v0, :cond_5

    const/4 v0, 0x0

    iput v0, p0, Lcom/callerid/block/customview/b;->f:I

    :cond_5
    iget-object v0, p0, Lcom/callerid/block/customview/b;->l:Landroid/graphics/Paint;

    iget v1, p0, Lcom/callerid/block/customview/b;->f:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v0, p0, Lcom/callerid/block/customview/b;->p:F

    iget v1, p0, Lcom/callerid/block/customview/b;->q:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    iput v1, p0, Lcom/callerid/block/customview/b;->p:F

    :cond_6
    iget v0, p0, Lcom/callerid/block/customview/b;->f:I

    if-lez v0, :cond_7

    iget v1, p0, Lcom/callerid/block/customview/b;->g:I

    if-lt v0, v1, :cond_8

    :cond_7
    invoke-direct {p0}, Lcom/callerid/block/customview/b;->m()V

    :cond_8
    iget-object v0, p0, Lcom/callerid/block/customview/b;->B:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_9
    :goto_3
    return-void
.end method

.method private m()V
    .locals 5

    iget v0, p0, Lcom/callerid/block/customview/b;->a:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_5

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/callerid/block/customview/b;->A:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/callerid/block/customview/b;->D:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/callerid/block/customview/b;->C:Lcom/callerid/block/customview/a;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/callerid/block/customview/a;->a()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/callerid/block/customview/b;->D:Z

    :cond_2
    invoke-virtual {p0}, Lcom/callerid/block/customview/b;->n()V

    goto :goto_0

    :cond_3
    iput v3, p0, Lcom/callerid/block/customview/b;->a:I

    iget v0, p0, Lcom/callerid/block/customview/b;->z:I

    if-eq v0, v2, :cond_4

    if-ne v0, v4, :cond_6

    :cond_4
    invoke-direct {p0}, Lcom/callerid/block/customview/b;->d()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/callerid/block/customview/b;->p:F

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/callerid/block/customview/b;->q:F

    iput v0, p0, Lcom/callerid/block/customview/b;->p:F

    iput v1, p0, Lcom/callerid/block/customview/b;->a:I

    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/callerid/block/customview/b;->B:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;)V
    .locals 7

    iget v0, p0, Lcom/callerid/block/customview/b;->p:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/callerid/block/customview/b;->q:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/callerid/block/customview/b;->e()V

    :cond_1
    iget-object v0, p0, Lcom/callerid/block/customview/b;->y:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/callerid/block/customview/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/callerid/block/customview/b;->d()I

    move-result v2

    invoke-direct {p0}, Lcom/callerid/block/customview/b;->b()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/callerid/block/customview/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/callerid/block/customview/b;->e:I

    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_3
    :goto_0
    iget v0, p0, Lcom/callerid/block/customview/b;->a:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v0, v3, :cond_f

    if-eq v0, v4, :cond_f

    if-eq v0, v2, :cond_a

    const/4 v5, 0x4

    if-eq v0, v5, :cond_4

    goto/16 :goto_c

    :cond_4
    iget v0, p0, Lcom/callerid/block/customview/b;->z:I

    if-eqz v0, :cond_8

    if-eq v0, v3, :cond_7

    if-eq v0, v4, :cond_6

    if-eq v0, v2, :cond_5

    goto/16 :goto_c

    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/callerid/block/customview/b;->d()I

    move-result v0

    div-int/2addr v0, v4

    goto :goto_2

    :cond_6
    invoke-direct {p0}, Lcom/callerid/block/customview/b;->d()I

    move-result v0

    :goto_2
    int-to-float v0, v0

    invoke-direct {p0}, Lcom/callerid/block/customview/b;->b()I

    move-result v1

    div-int/2addr v1, v4

    int-to-float v1, v1

    iget v2, p0, Lcom/callerid/block/customview/b;->p:F

    :goto_3
    iget-object v3, p0, Lcom/callerid/block/customview/b;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_c

    :cond_7
    invoke-direct {p0}, Lcom/callerid/block/customview/b;->b()I

    move-result v0

    div-int/2addr v0, v4

    int-to-float v0, v0

    iget v2, p0, Lcom/callerid/block/customview/b;->p:F

    :goto_4
    iget-object v3, p0, Lcom/callerid/block/customview/b;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_c

    :cond_8
    iget v0, p0, Lcom/callerid/block/customview/b;->b:I

    if-nez v0, :cond_9

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/callerid/block/customview/b;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    goto/16 :goto_c

    :cond_a
    iget v0, p0, Lcom/callerid/block/customview/b;->z:I

    if-eqz v0, :cond_e

    if-eq v0, v3, :cond_d

    if-eq v0, v4, :cond_c

    if-eq v0, v2, :cond_b

    goto/16 :goto_c

    :cond_b
    invoke-direct {p0}, Lcom/callerid/block/customview/b;->d()I

    move-result v0

    div-int/2addr v0, v4

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/callerid/block/customview/b;->b()I

    move-result v1

    div-int/2addr v1, v4

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/callerid/block/customview/b;->d()I

    move-result v2

    invoke-direct {p0}, Lcom/callerid/block/customview/b;->b()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_5
    div-int/2addr v2, v4

    goto :goto_6

    :cond_c
    invoke-direct {p0}, Lcom/callerid/block/customview/b;->d()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/callerid/block/customview/b;->b()I

    move-result v1

    div-int/2addr v1, v4

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/callerid/block/customview/b;->d()I

    move-result v2

    :goto_6
    int-to-float v2, v2

    goto :goto_3

    :cond_d
    invoke-direct {p0}, Lcom/callerid/block/customview/b;->b()I

    move-result v0

    div-int/2addr v0, v4

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/callerid/block/customview/b;->d()I

    move-result v2

    int-to-float v2, v2

    goto :goto_4

    :cond_e
    iget v0, p0, Lcom/callerid/block/customview/b;->b:I

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/callerid/block/customview/b;->d()I

    move-result v0

    div-int/2addr v0, v4

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/callerid/block/customview/b;->b()I

    move-result v1

    div-int/2addr v1, v4

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/callerid/block/customview/b;->d()I

    move-result v2

    invoke-direct {p0}, Lcom/callerid/block/customview/b;->b()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_5

    :cond_f
    iget v0, p0, Lcom/callerid/block/customview/b;->z:I

    const/16 v5, 0x1a

    if-eqz v0, :cond_16

    if-eq v0, v3, :cond_14

    if-eq v0, v4, :cond_12

    if-eq v0, v2, :cond_10

    goto/16 :goto_c

    :cond_10
    iget-object v0, p0, Lcom/callerid/block/customview/b;->k:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/callerid/block/customview/b;->k:Landroid/graphics/Path;

    invoke-direct {p0}, Lcom/callerid/block/customview/b;->d()I

    move-result v1

    div-int/2addr v1, v4

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/callerid/block/customview/b;->b()I

    move-result v2

    div-int/2addr v2, v4

    int-to-float v2, v2

    iget v3, p0, Lcom/callerid/block/customview/b;->p:F

    sget-object v6, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/callerid/block/customview/b;->k:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/callerid/block/customview/b;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_11

    iget-object v0, p0, Lcom/callerid/block/customview/b;->k:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    goto :goto_7

    :cond_11
    iget-object v0, p0, Lcom/callerid/block/customview/b;->k:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Region$Op;->XOR:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    :goto_7
    invoke-direct {p0}, Lcom/callerid/block/customview/b;->d()I

    move-result v0

    div-int/2addr v0, v4

    goto :goto_9

    :cond_12
    iget-object v0, p0, Lcom/callerid/block/customview/b;->k:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/callerid/block/customview/b;->k:Landroid/graphics/Path;

    invoke-direct {p0}, Lcom/callerid/block/customview/b;->d()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/callerid/block/customview/b;->b()I

    move-result v2

    div-int/2addr v2, v4

    int-to-float v2, v2

    iget v3, p0, Lcom/callerid/block/customview/b;->p:F

    sget-object v6, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/callerid/block/customview/b;->k:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/callerid/block/customview/b;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_13

    iget-object v0, p0, Lcom/callerid/block/customview/b;->k:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    goto :goto_8

    :cond_13
    iget-object v0, p0, Lcom/callerid/block/customview/b;->k:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Region$Op;->XOR:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    :goto_8
    invoke-direct {p0}, Lcom/callerid/block/customview/b;->d()I

    move-result v0

    :goto_9
    int-to-float v0, v0

    invoke-direct {p0}, Lcom/callerid/block/customview/b;->b()I

    move-result v1

    div-int/2addr v1, v4

    int-to-float v1, v1

    iget v2, p0, Lcom/callerid/block/customview/b;->q:F

    goto/16 :goto_3

    :cond_14
    iget-object v0, p0, Lcom/callerid/block/customview/b;->k:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/callerid/block/customview/b;->k:Landroid/graphics/Path;

    invoke-direct {p0}, Lcom/callerid/block/customview/b;->b()I

    move-result v2

    div-int/2addr v2, v4

    int-to-float v2, v2

    iget v3, p0, Lcom/callerid/block/customview/b;->p:F

    sget-object v6, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/callerid/block/customview/b;->k:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/callerid/block/customview/b;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_15

    iget-object v0, p0, Lcom/callerid/block/customview/b;->k:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    goto :goto_a

    :cond_15
    iget-object v0, p0, Lcom/callerid/block/customview/b;->k:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Region$Op;->XOR:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    :goto_a
    invoke-direct {p0}, Lcom/callerid/block/customview/b;->b()I

    move-result v0

    div-int/2addr v0, v4

    int-to-float v0, v0

    iget v2, p0, Lcom/callerid/block/customview/b;->q:F

    goto/16 :goto_4

    :cond_16
    iget-object v0, p0, Lcom/callerid/block/customview/b;->k:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/callerid/block/customview/b;->k:Landroid/graphics/Path;

    iget v1, p0, Lcom/callerid/block/customview/b;->t:F

    iget v2, p0, Lcom/callerid/block/customview/b;->u:F

    iget v3, p0, Lcom/callerid/block/customview/b;->p:F

    sget-object v6, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/callerid/block/customview/b;->k:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/callerid/block/customview/b;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_17

    iget-object v0, p0, Lcom/callerid/block/customview/b;->k:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    goto :goto_b

    :cond_17
    iget-object v0, p0, Lcom/callerid/block/customview/b;->k:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Region$Op;->XOR:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    :goto_b
    iget v0, p0, Lcom/callerid/block/customview/b;->b:I

    if-nez v0, :cond_9

    goto/16 :goto_7

    :goto_c
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-direct {p0}, Lcom/callerid/block/customview/b;->g()V

    return-void
.end method

.method public c(II)[I
    .locals 4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/callerid/block/customview/b;->v:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/callerid/block/customview/b;->v:I

    :goto_0
    if-ne v1, v3, :cond_2

    goto :goto_1

    :cond_2
    if-ne v1, v2, :cond_3

    iget v0, p0, Lcom/callerid/block/customview/b;->w:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_1

    :cond_3
    iget p2, p0, Lcom/callerid/block/customview/b;->w:I

    :goto_1
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    return-object v0
.end method

.method public h()Z
    .locals 1

    iget v0, p0, Lcom/callerid/block/customview/b;->v:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/callerid/block/customview/b;->w:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_3

    const/4 p1, 0x3

    if-eq v0, v1, :cond_1

    if-eq v0, p1, :cond_0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/callerid/block/customview/b;->a:I

    if-ne v0, v2, :cond_1

    iput v1, p0, Lcom/callerid/block/customview/b;->a:I

    :cond_1
    iget v0, p0, Lcom/callerid/block/customview/b;->a:I

    if-ne v0, p1, :cond_2

    invoke-direct {p0}, Lcom/callerid/block/customview/b;->m()V

    goto :goto_1

    :cond_2
    if-ne v0, v2, :cond_8

    iput v1, p0, Lcom/callerid/block/customview/b;->a:I

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/callerid/block/customview/b;->a:I

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/callerid/block/customview/b;->n()V

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/callerid/block/customview/b;->t:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/callerid/block/customview/b;->u:F

    iget p1, p0, Lcom/callerid/block/customview/b;->b:I

    if-eqz p1, :cond_6

    if-eq p1, v1, :cond_7

    if-eq p1, v2, :cond_5

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/callerid/block/customview/b;->d()I

    move-result p1

    div-int/2addr p1, v2

    int-to-float p1, p1

    iput p1, p0, Lcom/callerid/block/customview/b;->t:F

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/callerid/block/customview/b;->d()I

    move-result p1

    div-int/2addr p1, v2

    int-to-float p1, p1

    iput p1, p0, Lcom/callerid/block/customview/b;->t:F

    :cond_7
    invoke-direct {p0}, Lcom/callerid/block/customview/b;->b()I

    move-result p1

    div-int/2addr p1, v2

    int-to-float p1, p1

    iput p1, p0, Lcom/callerid/block/customview/b;->u:F

    :goto_0
    iput v2, p0, Lcom/callerid/block/customview/b;->a:I

    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/callerid/block/customview/b;->B:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public j(Landroid/view/View;I)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/callerid/block/customview/b;->n()V

    :cond_0
    return-void
.end method

.method public k(Z)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/callerid/block/customview/b;->n()V

    :cond_0
    return-void
.end method

.method public l()V
    .locals 3

    iget v0, p0, Lcom/callerid/block/customview/b;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    iput v1, p0, Lcom/callerid/block/customview/b;->a:I

    :cond_0
    iget-boolean v0, p0, Lcom/callerid/block/customview/b;->A:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/callerid/block/customview/b;->C:Lcom/callerid/block/customview/a;

    if-eqz v0, :cond_3

    :goto_0
    invoke-interface {v0}, Lcom/callerid/block/customview/a;->a()V

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/callerid/block/customview/b;->a:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/callerid/block/customview/b;->C:Lcom/callerid/block/customview/a;

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, Lcom/callerid/block/customview/b;->D:Z

    :cond_3
    :goto_1
    return-void
.end method

.method public n()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/callerid/block/customview/b;->a:I

    iput-boolean v0, p0, Lcom/callerid/block/customview/b;->D:Z

    invoke-direct {p0}, Lcom/callerid/block/customview/b;->b()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    iput v1, p0, Lcom/callerid/block/customview/b;->p:F

    iput v0, p0, Lcom/callerid/block/customview/b;->f:I

    return-void
.end method

.method public o(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iput-object p1, p0, Lcom/callerid/block/customview/b;->d:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/callerid/block/customview/b;->e:I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iput p1, p0, Lcom/callerid/block/customview/b;->v:I

    iget-object p1, p0, Lcom/callerid/block/customview/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lcom/callerid/block/customview/b;->w:I

    :cond_0
    iget-object p1, p0, Lcom/callerid/block/customview/b;->B:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    iget-object p1, p0, Lcom/callerid/block/customview/b;->B:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public p(I)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/callerid/block/customview/b;->d:Landroid/graphics/drawable/Drawable;

    iput p1, p0, Lcom/callerid/block/customview/b;->e:I

    return-void
.end method

.method public q(I)V
    .locals 0

    iput p1, p0, Lcom/callerid/block/customview/b;->x:I

    invoke-direct {p0}, Lcom/callerid/block/customview/b;->f()V

    return-void
.end method

.method public r(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/callerid/block/customview/b;->A:Z

    return-void
.end method

.method public s(I)V
    .locals 0

    iput p1, p0, Lcom/callerid/block/customview/b;->z:I

    invoke-direct {p0}, Lcom/callerid/block/customview/b;->e()V

    return-void
.end method
