.class public Lcom/allinone/callerid/customview/b;
.super Ljava/lang/Object;
.source "MaterialStyle.java"


# instance fields
.field private A:F

.field private B:I

.field private C:I

.field private D:F

.field private E:F

.field private F:I

.field private G:I

.field private H:I

.field private I:Landroid/graphics/PaintFlagsDrawFilter;

.field private J:I

.field private K:Z

.field private L:Landroid/view/View;

.field private M:Lcom/allinone/callerid/customview/a;

.field private N:Z

.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private j:I

.field private k:I

.field private final l:I

.field private final m:I

.field private n:Landroid/graphics/drawable/Drawable;

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:Landroid/graphics/Path;

.field private v:Landroid/graphics/Paint;

.field private w:Landroid/graphics/Paint;

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/util/AttributeSet;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/allinone/callerid/customview/b;->a:I

    const/4 v1, 0x1

    .line 3
    iput v1, p0, Lcom/allinone/callerid/customview/b;->b:I

    const/4 v2, 0x2

    .line 4
    iput v2, p0, Lcom/allinone/callerid/customview/b;->c:I

    const/4 v3, 0x3

    .line 5
    iput v3, p0, Lcom/allinone/callerid/customview/b;->d:I

    const/4 v4, 0x4

    .line 6
    iput v4, p0, Lcom/allinone/callerid/customview/b;->e:I

    .line 7
    iput v0, p0, Lcom/allinone/callerid/customview/b;->f:I

    .line 8
    iput v0, p0, Lcom/allinone/callerid/customview/b;->g:I

    .line 9
    iput v1, p0, Lcom/allinone/callerid/customview/b;->h:I

    .line 10
    iput v2, p0, Lcom/allinone/callerid/customview/b;->i:I

    .line 11
    iput v0, p0, Lcom/allinone/callerid/customview/b;->j:I

    const/16 v4, 0x7d

    .line 12
    iput v4, p0, Lcom/allinone/callerid/customview/b;->k:I

    const/16 v4, 0xc8

    .line 13
    iput v4, p0, Lcom/allinone/callerid/customview/b;->l:I

    const/16 v4, 0xa

    .line 14
    iput v4, p0, Lcom/allinone/callerid/customview/b;->m:I

    .line 15
    iput v0, p0, Lcom/allinone/callerid/customview/b;->o:I

    .line 16
    iput v0, p0, Lcom/allinone/callerid/customview/b;->p:I

    const/16 v5, 0xf

    .line 17
    iput v5, p0, Lcom/allinone/callerid/customview/b;->q:I

    .line 18
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, p0, Lcom/allinone/callerid/customview/b;->u:Landroid/graphics/Path;

    .line 19
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/allinone/callerid/customview/b;->v:Landroid/graphics/Paint;

    .line 20
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/allinone/callerid/customview/b;->w:Landroid/graphics/Paint;

    const/4 v5, -0x1

    .line 21
    iput v5, p0, Lcom/allinone/callerid/customview/b;->H:I

    .line 22
    new-instance v6, Landroid/graphics/PaintFlagsDrawFilter;

    invoke-direct {v6, v0, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v6, p0, Lcom/allinone/callerid/customview/b;->I:Landroid/graphics/PaintFlagsDrawFilter;

    .line 23
    iput v0, p0, Lcom/allinone/callerid/customview/b;->J:I

    .line 24
    iput-boolean v1, p0, Lcom/allinone/callerid/customview/b;->K:Z

    .line 25
    iput-boolean v0, p0, Lcom/allinone/callerid/customview/b;->N:Z

    .line 26
    move-object v6, p1

    check-cast v6, Lcom/allinone/callerid/customview/a;

    iput-object v6, p0, Lcom/allinone/callerid/customview/b;->M:Lcom/allinone/callerid/customview/a;

    .line 27
    iput-object p1, p0, Lcom/allinone/callerid/customview/b;->L:Landroid/view/View;

    .line 28
    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    .line 29
    invoke-virtual {p0, v0}, Lcom/allinone/callerid/customview/b;->p(I)V

    const/16 v6, 0x14

    .line 30
    iput v6, p0, Lcom/allinone/callerid/customview/b;->B:I

    .line 31
    iget v6, p0, Lcom/allinone/callerid/customview/b;->k:I

    div-int/2addr v6, v4

    iput v6, p0, Lcom/allinone/callerid/customview/b;->C:I

    .line 32
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v4, v6, :cond_0

    const/4 v4, 0x0

    .line 33
    invoke-virtual {p1, v1, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 34
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    if-eqz p2, :cond_2

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v4, Lcom/allinone/callerid/R$styleable;->LButtonStyle:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 36
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/allinone/callerid/customview/b;->K:Z

    .line 37
    invoke-virtual {p1, v0, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/allinone/callerid/customview/b;->H:I

    .line 38
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/allinone/callerid/customview/b;->n:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_1

    .line 39
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    iput p2, p0, Lcom/allinone/callerid/customview/b;->F:I

    .line 40
    iget-object p2, p0, Lcom/allinone/callerid/customview/b;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    iput p2, p0, Lcom/allinone/callerid/customview/b;->G:I

    .line 41
    :cond_1
    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/allinone/callerid/customview/b;->J:I

    .line 42
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    return-void
.end method

.method private b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/customview/b;->L:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method private d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/customview/b;->L:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method private e()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/customview/b;->L:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 2
    iget-object v1, p0, Lcom/allinone/callerid/customview/b;->L:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    cmpg-float v3, v0, v2

    if-lez v3, :cond_9

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_0

    goto/16 :goto_4

    .line 3
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

    .line 4
    iput v4, p0, Lcom/allinone/callerid/customview/b;->j:I

    goto :goto_1

    :cond_2
    cmpl-float v2, v0, v1

    if-lez v2, :cond_3

    .line 5
    iput v5, p0, Lcom/allinone/callerid/customview/b;->j:I

    goto :goto_1

    .line 6
    :cond_3
    iput v3, p0, Lcom/allinone/callerid/customview/b;->j:I

    .line 7
    :goto_1
    iget v2, p0, Lcom/allinone/callerid/customview/b;->J:I

    const/high16 v4, 0x40800000    # 4.0f

    const/4 v6, -0x1

    const/high16 v7, 0x40000000    # 2.0f

    if-eqz v2, :cond_6

    const v8, 0x30ffffff

    if-eq v2, v5, :cond_5

    if-eq v2, v3, :cond_5

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    goto :goto_3

    .line 8
    :cond_4
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    div-float/2addr v2, v4

    iput v2, p0, Lcom/allinone/callerid/customview/b;->z:F

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    div-float/2addr v0, v7

    iput v0, p0, Lcom/allinone/callerid/customview/b;->A:F

    .line 10
    iget v0, p0, Lcom/allinone/callerid/customview/b;->H:I

    if-ne v0, v6, :cond_8

    .line 11
    iput v8, p0, Lcom/allinone/callerid/customview/b;->H:I

    goto :goto_3

    :cond_5
    div-float/2addr v1, v7

    .line 12
    iput v1, p0, Lcom/allinone/callerid/customview/b;->z:F

    .line 13
    iput v0, p0, Lcom/allinone/callerid/customview/b;->A:F

    .line 14
    iget v0, p0, Lcom/allinone/callerid/customview/b;->H:I

    if-ne v0, v6, :cond_8

    .line 15
    iput v8, p0, Lcom/allinone/callerid/customview/b;->H:I

    goto :goto_3

    .line 16
    :cond_6
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    div-float/2addr v2, v4

    iput v2, p0, Lcom/allinone/callerid/customview/b;->z:F

    .line 17
    iget v2, p0, Lcom/allinone/callerid/customview/b;->j:I

    if-nez v2, :cond_7

    .line 18
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float/2addr v0, v7

    iput v0, p0, Lcom/allinone/callerid/customview/b;->A:F

    goto :goto_2

    .line 19
    :cond_7
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    div-float/2addr v0, v7

    iput v0, p0, Lcom/allinone/callerid/customview/b;->A:F

    .line 20
    :goto_2
    iget v0, p0, Lcom/allinone/callerid/customview/b;->H:I

    if-ne v0, v6, :cond_8

    const/high16 v0, 0x30000000

    .line 21
    iput v0, p0, Lcom/allinone/callerid/customview/b;->H:I

    .line 22
    :cond_8
    :goto_3
    iget v0, p0, Lcom/allinone/callerid/customview/b;->A:F

    iget v1, p0, Lcom/allinone/callerid/customview/b;->z:F

    sub-float v2, v0, v1

    iget v3, p0, Lcom/allinone/callerid/customview/b;->B:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/allinone/callerid/customview/b;->x:F

    sub-float/2addr v0, v1

    .line 23
    iget v1, p0, Lcom/allinone/callerid/customview/b;->C:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/allinone/callerid/customview/b;->y:F

    .line 24
    invoke-direct {p0}, Lcom/allinone/callerid/customview/b;->f()V

    :cond_9
    :goto_4
    return-void
.end method

.method private f()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/customview/b;->v:Landroid/graphics/Paint;

    iget v1, p0, Lcom/allinone/callerid/customview/b;->H:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    iget v2, p0, Lcom/allinone/callerid/customview/b;->H:I

    .line 2
    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    iget v3, p0, Lcom/allinone/callerid/customview/b;->H:I

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    .line 3
    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    iget v0, p0, Lcom/allinone/callerid/customview/b;->H:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/customview/b;->q:I

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/customview/b;->w:Landroid/graphics/Paint;

    iget v1, p0, Lcom/allinone/callerid/customview/b;->H:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    iget v2, p0, Lcom/allinone/callerid/customview/b;->H:I

    .line 6
    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    iget v3, p0, Lcom/allinone/callerid/customview/b;->H:I

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    .line 7
    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    iget-object v0, p0, Lcom/allinone/callerid/customview/b;->w:Landroid/graphics/Paint;

    iget v1, p0, Lcom/allinone/callerid/customview/b;->q:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 9
    iget-object v0, p0, Lcom/allinone/callerid/customview/b;->v:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 10
    iget v0, p0, Lcom/allinone/callerid/customview/b;->q:I

    iget v1, p0, Lcom/allinone/callerid/customview/b;->B:I

    div-int v1, v0, v1

    iput v1, p0, Lcom/allinone/callerid/customview/b;->r:I

    .line 11
    iget v2, p0, Lcom/allinone/callerid/customview/b;->C:I

    div-int/2addr v0, v2

    iput v0, p0, Lcom/allinone/callerid/customview/b;->s:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 12
    iput v2, p0, Lcom/allinone/callerid/customview/b;->r:I

    :cond_0
    if-ge v0, v2, :cond_1

    .line 13
    iput v2, p0, Lcom/allinone/callerid/customview/b;->s:I

    .line 14
    :cond_1
    iget v0, p0, Lcom/allinone/callerid/customview/b;->s:I

    iput v0, p0, Lcom/allinone/callerid/customview/b;->t:I

    return-void
.end method

.method private g()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/allinone/callerid/customview/b;->f:I

    if-eqz v0, :cond_9

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2
    iget v0, p0, Lcom/allinone/callerid/customview/b;->p:I

    iget v1, p0, Lcom/allinone/callerid/customview/b;->r:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/allinone/callerid/customview/b;->p:I

    .line 3
    iget v0, p0, Lcom/allinone/callerid/customview/b;->z:F

    iget v1, p0, Lcom/allinone/callerid/customview/b;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/allinone/callerid/customview/b;->z:F

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 4
    iget v0, p0, Lcom/allinone/callerid/customview/b;->p:I

    iget v1, p0, Lcom/allinone/callerid/customview/b;->s:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/allinone/callerid/customview/b;->p:I

    .line 5
    iget v0, p0, Lcom/allinone/callerid/customview/b;->z:F

    iget v1, p0, Lcom/allinone/callerid/customview/b;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/allinone/callerid/customview/b;->z:F

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 6
    iget v0, p0, Lcom/allinone/callerid/customview/b;->p:I

    iget v1, p0, Lcom/allinone/callerid/customview/b;->t:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/allinone/callerid/customview/b;->p:I

    .line 7
    iget v0, p0, Lcom/allinone/callerid/customview/b;->A:F

    iput v0, p0, Lcom/allinone/callerid/customview/b;->z:F

    .line 8
    :cond_3
    :goto_0
    iget v0, p0, Lcom/allinone/callerid/customview/b;->p:I

    iget v1, p0, Lcom/allinone/callerid/customview/b;->q:I

    if-lt v0, v1, :cond_4

    .line 9
    iput v1, p0, Lcom/allinone/callerid/customview/b;->p:I

    .line 10
    :cond_4
    iget v0, p0, Lcom/allinone/callerid/customview/b;->p:I

    if-gez v0, :cond_5

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/allinone/callerid/customview/b;->p:I

    .line 12
    :cond_5
    iget-object v0, p0, Lcom/allinone/callerid/customview/b;->v:Landroid/graphics/Paint;

    iget v1, p0, Lcom/allinone/callerid/customview/b;->p:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 13
    iget v0, p0, Lcom/allinone/callerid/customview/b;->z:F

    iget v1, p0, Lcom/allinone/callerid/customview/b;->A:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    .line 14
    iput v1, p0, Lcom/allinone/callerid/customview/b;->z:F

    .line 15
    :cond_6
    iget v0, p0, Lcom/allinone/callerid/customview/b;->p:I

    if-lez v0, :cond_7

    iget v1, p0, Lcom/allinone/callerid/customview/b;->q:I

    if-lt v0, v1, :cond_8

    .line 16
    :cond_7
    invoke-direct {p0}, Lcom/allinone/callerid/customview/b;->m()V

    .line 17
    :cond_8
    iget-object v0, p0, Lcom/allinone/callerid/customview/b;->L:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_9
    :goto_1
    return-void
.end method

.method private m()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/allinone/callerid/customview/b;->f:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/allinone/callerid/customview/b;->K:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/allinone/callerid/customview/b;->N:Z

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/customview/b;->M:Lcom/allinone/callerid/customview/a;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Lcom/allinone/callerid/customview/a;->a()V

    :cond_1
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/allinone/callerid/customview/b;->N:Z

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/allinone/callerid/customview/b;->n()V

    goto :goto_0

    .line 7
    :cond_3
    iput v3, p0, Lcom/allinone/callerid/customview/b;->f:I

    .line 8
    iget v0, p0, Lcom/allinone/callerid/customview/b;->J:I

    if-eq v0, v2, :cond_4

    if-ne v0, v4, :cond_6

    .line 9
    :cond_4
    invoke-direct {p0}, Lcom/allinone/callerid/customview/b;->d()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/allinone/callerid/customview/b;->z:F

    goto :goto_0

    .line 10
    :cond_5
    iget v0, p0, Lcom/allinone/callerid/customview/b;->A:F

    iput v0, p0, Lcom/allinone/callerid/customview/b;->z:F

    .line 11
    iput v1, p0, Lcom/allinone/callerid/customview/b;->f:I

    .line 12
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/allinone/callerid/customview/b;->L:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/allinone/callerid/customview/b;->z:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/allinone/callerid/customview/b;->A:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/allinone/callerid/customview/b;->e()V

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/customview/b;->I:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/customview/b;->n:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 6
    invoke-direct {p0}, Lcom/allinone/callerid/customview/b;->d()I

    move-result v2

    invoke-direct {p0}, Lcom/allinone/callerid/customview/b;->b()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/customview/b;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 8
    :cond_2
    iget v0, p0, Lcom/allinone/callerid/customview/b;->o:I

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 10
    :cond_3
    :goto_0
    iget v0, p0, Lcom/allinone/callerid/customview/b;->f:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v0, v3, :cond_10

    if-eq v0, v4, :cond_10

    if-eq v0, v2, :cond_a

    const/4 v5, 0x4

    if-eq v0, v5, :cond_4

    goto/16 :goto_5

    .line 11
    :cond_4
    iget v0, p0, Lcom/allinone/callerid/customview/b;->J:I

    if-eqz v0, :cond_8

    if-eq v0, v3, :cond_7

    if-eq v0, v4, :cond_6

    if-eq v0, v2, :cond_5

    goto/16 :goto_5

    .line 12
    :cond_5
    invoke-direct {p0}, Lcom/allinone/callerid/customview/b;->d()I

    move-result v0

    div-int/2addr v0, v4

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/allinone/callerid/customview/b;->b()I

    move-result v1

    div-int/2addr v1, v4

    int-to-float v1, v1

    iget v2, p0, Lcom/allinone/callerid/customview/b;->z:F

    iget-object v3, p0, Lcom/allinone/callerid/customview/b;->v:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 13
    :cond_6
    invoke-direct {p0}, Lcom/allinone/callerid/customview/b;->d()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/allinone/callerid/customview/b;->b()I

    move-result v1

    div-int/2addr v1, v4

    int-to-float v1, v1

    iget v2, p0, Lcom/allinone/callerid/customview/b;->z:F

    iget-object v3, p0, Lcom/allinone/callerid/customview/b;->v:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 14
    :cond_7
    invoke-direct {p0}, Lcom/allinone/callerid/customview/b;->b()I

    move-result v0

    div-int/2addr v0, v4

    int-to-float v0, v0

    iget v2, p0, Lcom/allinone/callerid/customview/b;->z:F

    iget-object v3, p0, Lcom/allinone/callerid/customview/b;->v:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 15
    :cond_8
    iget v0, p0, Lcom/allinone/callerid/customview/b;->j:I

    if-nez v0, :cond_9

    .line 16
    invoke-direct {p0}, Lcom/allinone/callerid/customview/b;->d()I

    move-result v0

    div-int/2addr v0, v4

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/allinone/callerid/customview/b;->b()I

    move-result v1

    div-int/2addr v1, v4

    int-to-float v1, v1

    iget v2, p0, Lcom/allinone/callerid/customview/b;->z:F

    iget-object v3, p0, Lcom/allinone/callerid/customview/b;->v:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 17
    :cond_9
    iget-object v0, p0, Lcom/allinone/callerid/customview/b;->v:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 18
    :cond_a
    iget v0, p0, Lcom/allinone/callerid/customview/b;->J:I

    if-eqz v0, :cond_e

    if-eq v0, v3, :cond_d

    if-eq v0, v4, :cond_c

    if-eq v0, v2, :cond_b

    goto/16 :goto_5

    .line 19
    :cond_b
    invoke-direct {p0}, Lcom/allinone/callerid/customview/b;->d()I

    move-result v0

    div-int/2addr v0, v4

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/allinone/callerid/customview/b;->b()I

    move-result v1

    div-int/2addr v1, v4

    int-to-float v1, v1

    .line 20
    invoke-direct {p0}, Lcom/allinone/callerid/customview/b;->d()I

    move-result v2

    invoke-direct {p0}, Lcom/allinone/callerid/customview/b;->b()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    div-int/2addr v2, v4

    int-to-float v2, v2

    iget-object v3, p0, Lcom/allinone/callerid/customview/b;->v:Landroid/graphics/Paint;

    .line 21
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 22
    :cond_c
    invoke-direct {p0}, Lcom/allinone/callerid/customview/b;->d()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/allinone/callerid/customview/b;->b()I

    move-result v1

    div-int/2addr v1, v4

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/allinone/callerid/customview/b;->d()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/allinone/callerid/customview/b;->v:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 23
    :cond_d
    invoke-direct {p0}, Lcom/allinone/callerid/customview/b;->b()I

    move-result v0

    div-int/2addr v0, v4

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/allinone/callerid/customview/b;->d()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/allinone/callerid/customview/b;->v:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 24
    :cond_e
    iget v0, p0, Lcom/allinone/callerid/customview/b;->j:I

    if-nez v0, :cond_f

    .line 25
    invoke-direct {p0}, Lcom/allinone/callerid/customview/b;->d()I

    move-result v0

    div-int/2addr v0, v4

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/allinone/callerid/customview/b;->b()I

    move-result v1

    div-int/2addr v1, v4

    int-to-float v1, v1

    .line 26
    invoke-direct {p0}, Lcom/allinone/callerid/customview/b;->d()I

    move-result v2

    invoke-direct {p0}, Lcom/allinone/callerid/customview/b;->b()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    div-int/2addr v2, v4

    int-to-float v2, v2

    iget-object v3, p0, Lcom/allinone/callerid/customview/b;->v:Landroid/graphics/Paint;

    .line 27
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 28
    :cond_f
    iget-object v0, p0, Lcom/allinone/callerid/customview/b;->v:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 29
    :cond_10
    iget v0, p0, Lcom/allinone/callerid/customview/b;->J:I

    const/16 v5, 0x1a

    if-eqz v0, :cond_17

    if-eq v0, v3, :cond_15

    if-eq v0, v4, :cond_13

    if-eq v0, v2, :cond_11

    goto/16 :goto_5

    .line 30
    :cond_11
    iget-object v0, p0, Lcom/allinone/callerid/customview/b;->u:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 31
    iget-object v0, p0, Lcom/allinone/callerid/customview/b;->u:Landroid/graphics/Path;

    invoke-direct {p0}, Lcom/allinone/callerid/customview/b;->d()I

    move-result v1

    div-int/2addr v1, v4

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/allinone/callerid/customview/b;->b()I

    move-result v2

    div-int/2addr v2, v4

    int-to-float v2, v2

    iget v3, p0, Lcom/allinone/callerid/customview/b;->z:F

    sget-object v6, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 32
    iget-object v0, p0, Lcom/allinone/callerid/customview/b;->u:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/allinone/callerid/customview/b;->w:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 33
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_12

    .line 34
    iget-object v0, p0, Lcom/allinone/callerid/customview/b;->u:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    goto :goto_1

    .line 35
    :cond_12
    iget-object v0, p0, Lcom/allinone/callerid/customview/b;->u:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Region$Op;->XOR:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 36
    :goto_1
    invoke-direct {p0}, Lcom/allinone/callerid/customview/b;->d()I

    move-result v0

    div-int/2addr v0, v4

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/allinone/callerid/customview/b;->b()I

    move-result v1

    div-int/2addr v1, v4

    int-to-float v1, v1

    iget v2, p0, Lcom/allinone/callerid/customview/b;->A:F

    iget-object v3, p0, Lcom/allinone/callerid/customview/b;->v:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 37
    :cond_13
    iget-object v0, p0, Lcom/allinone/callerid/customview/b;->u:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 38
    iget-object v0, p0, Lcom/allinone/callerid/customview/b;->u:Landroid/graphics/Path;

    invoke-direct {p0}, Lcom/allinone/callerid/customview/b;->d()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/allinone/callerid/customview/b;->b()I

    move-result v2

    div-int/2addr v2, v4

    int-to-float v2, v2

    iget v3, p0, Lcom/allinone/callerid/customview/b;->z:F

    sget-object v6, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 39
    iget-object v0, p0, Lcom/allinone/callerid/customview/b;->u:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/allinone/callerid/customview/b;->w:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 40
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_14

    .line 41
    iget-object v0, p0, Lcom/allinone/callerid/customview/b;->u:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    goto :goto_2

    .line 42
    :cond_14
    iget-object v0, p0, Lcom/allinone/callerid/customview/b;->u:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Region$Op;->XOR:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 43
    :goto_2
    invoke-direct {p0}, Lcom/allinone/callerid/customview/b;->d()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/allinone/callerid/customview/b;->b()I

    move-result v1

    div-int/2addr v1, v4

    int-to-float v1, v1

    iget v2, p0, Lcom/allinone/callerid/customview/b;->A:F

    iget-object v3, p0, Lcom/allinone/callerid/customview/b;->v:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 44
    :cond_15
    iget-object v0, p0, Lcom/allinone/callerid/customview/b;->u:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 45
    iget-object v0, p0, Lcom/allinone/callerid/customview/b;->u:Landroid/graphics/Path;

    invoke-direct {p0}, Lcom/allinone/callerid/customview/b;->b()I

    move-result v2

    div-int/2addr v2, v4

    int-to-float v2, v2

    iget v3, p0, Lcom/allinone/callerid/customview/b;->z:F

    sget-object v6, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 46
    iget-object v0, p0, Lcom/allinone/callerid/customview/b;->u:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/allinone/callerid/customview/b;->w:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 47
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_16

    .line 48
    iget-object v0, p0, Lcom/allinone/callerid/customview/b;->u:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    goto :goto_3

    .line 49
    :cond_16
    iget-object v0, p0, Lcom/allinone/callerid/customview/b;->u:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Region$Op;->XOR:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 50
    :goto_3
    invoke-direct {p0}, Lcom/allinone/callerid/customview/b;->b()I

    move-result v0

    div-int/2addr v0, v4

    int-to-float v0, v0

    iget v2, p0, Lcom/allinone/callerid/customview/b;->A:F

    iget-object v3, p0, Lcom/allinone/callerid/customview/b;->v:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_5

    .line 51
    :cond_17
    iget-object v0, p0, Lcom/allinone/callerid/customview/b;->u:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 52
    iget-object v0, p0, Lcom/allinone/callerid/customview/b;->u:Landroid/graphics/Path;

    iget v1, p0, Lcom/allinone/callerid/customview/b;->D:F

    iget v2, p0, Lcom/allinone/callerid/customview/b;->E:F

    iget v3, p0, Lcom/allinone/callerid/customview/b;->z:F

    sget-object v6, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 53
    iget-object v0, p0, Lcom/allinone/callerid/customview/b;->u:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/allinone/callerid/customview/b;->w:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 54
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_18

    .line 55
    iget-object v0, p0, Lcom/allinone/callerid/customview/b;->u:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    goto :goto_4

    .line 56
    :cond_18
    iget-object v0, p0, Lcom/allinone/callerid/customview/b;->u:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Region$Op;->XOR:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 57
    :goto_4
    iget v0, p0, Lcom/allinone/callerid/customview/b;->j:I

    if-nez v0, :cond_19

    .line 58
    invoke-direct {p0}, Lcom/allinone/callerid/customview/b;->d()I

    move-result v0

    div-int/2addr v0, v4

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/allinone/callerid/customview/b;->b()I

    move-result v1

    div-int/2addr v1, v4

    int-to-float v1, v1

    iget v2, p0, Lcom/allinone/callerid/customview/b;->A:F

    iget-object v3, p0, Lcom/allinone/callerid/customview/b;->v:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_5

    .line 59
    :cond_19
    iget-object v0, p0, Lcom/allinone/callerid/customview/b;->v:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 60
    :goto_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 61
    invoke-direct {p0}, Lcom/allinone/callerid/customview/b;->g()V

    return-void
.end method

.method public c(II)[I
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 3
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 4
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    .line 5
    iget v0, p0, Lcom/allinone/callerid/customview/b;->F:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    .line 6
    :cond_1
    iget p1, p0, Lcom/allinone/callerid/customview/b;->F:I

    :goto_0
    if-ne v1, v3, :cond_2

    goto :goto_1

    :cond_2
    if-ne v1, v2, :cond_3

    .line 7
    iget v0, p0, Lcom/allinone/callerid/customview/b;->G:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_1

    .line 8
    :cond_3
    iget p2, p0, Lcom/allinone/callerid/customview/b;->G:I

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

    .line 1
    iget v0, p0, Lcom/allinone/callerid/customview/b;->F:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/allinone/callerid/customview/b;->G:I

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

    .line 1
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

    .line 2
    :cond_0
    iget v0, p0, Lcom/allinone/callerid/customview/b;->f:I

    if-ne v0, v2, :cond_1

    .line 3
    iput v1, p0, Lcom/allinone/callerid/customview/b;->f:I

    .line 4
    :cond_1
    iget v0, p0, Lcom/allinone/callerid/customview/b;->f:I

    if-ne v0, p1, :cond_2

    .line 5
    invoke-direct {p0}, Lcom/allinone/callerid/customview/b;->m()V

    goto :goto_1

    :cond_2
    if-ne v0, v2, :cond_8

    .line 6
    iput v1, p0, Lcom/allinone/callerid/customview/b;->f:I

    goto :goto_1

    .line 7
    :cond_3
    iget v0, p0, Lcom/allinone/callerid/customview/b;->f:I

    if-eqz v0, :cond_4

    .line 8
    invoke-virtual {p0}, Lcom/allinone/callerid/customview/b;->n()V

    .line 9
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/customview/b;->D:F

    .line 10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/allinone/callerid/customview/b;->E:F

    .line 11
    iget p1, p0, Lcom/allinone/callerid/customview/b;->j:I

    if-eqz p1, :cond_7

    if-eq p1, v1, :cond_6

    if-eq p1, v2, :cond_5

    goto :goto_0

    .line 12
    :cond_5
    invoke-direct {p0}, Lcom/allinone/callerid/customview/b;->d()I

    move-result p1

    div-int/2addr p1, v2

    int-to-float p1, p1

    iput p1, p0, Lcom/allinone/callerid/customview/b;->D:F

    goto :goto_0

    .line 13
    :cond_6
    invoke-direct {p0}, Lcom/allinone/callerid/customview/b;->b()I

    move-result p1

    div-int/2addr p1, v2

    int-to-float p1, p1

    iput p1, p0, Lcom/allinone/callerid/customview/b;->E:F

    goto :goto_0

    .line 14
    :cond_7
    invoke-direct {p0}, Lcom/allinone/callerid/customview/b;->d()I

    move-result p1

    div-int/2addr p1, v2

    int-to-float p1, p1

    iput p1, p0, Lcom/allinone/callerid/customview/b;->D:F

    .line 15
    invoke-direct {p0}, Lcom/allinone/callerid/customview/b;->b()I

    move-result p1

    div-int/2addr p1, v2

    int-to-float p1, p1

    iput p1, p0, Lcom/allinone/callerid/customview/b;->E:F

    .line 16
    :goto_0
    iput v2, p0, Lcom/allinone/callerid/customview/b;->f:I

    .line 17
    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/allinone/callerid/customview/b;->L:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public j(Landroid/view/View;I)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/allinone/callerid/customview/b;->n()V

    :cond_0
    return-void
.end method

.method public k(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/allinone/callerid/customview/b;->n()V

    :cond_0
    return-void
.end method

.method public l()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/allinone/callerid/customview/b;->f:I

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    .line 2
    iput v1, p0, Lcom/allinone/callerid/customview/b;->f:I

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/allinone/callerid/customview/b;->K:Z

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/customview/b;->M:Lcom/allinone/callerid/customview/a;

    if-eqz v0, :cond_3

    .line 5
    invoke-interface {v0}, Lcom/allinone/callerid/customview/a;->a()V

    goto :goto_0

    .line 6
    :cond_1
    iget v0, p0, Lcom/allinone/callerid/customview/b;->f:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/customview/b;->M:Lcom/allinone/callerid/customview/a;

    if-eqz v0, :cond_3

    .line 8
    invoke-interface {v0}, Lcom/allinone/callerid/customview/a;->a()V

    goto :goto_0

    .line 9
    :cond_2
    iput-boolean v1, p0, Lcom/allinone/callerid/customview/b;->N:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public n()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/allinone/callerid/customview/b;->f:I

    .line 2
    iput-boolean v0, p0, Lcom/allinone/callerid/customview/b;->N:Z

    .line 3
    invoke-direct {p0}, Lcom/allinone/callerid/customview/b;->b()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    iput v1, p0, Lcom/allinone/callerid/customview/b;->z:F

    .line 4
    iput v0, p0, Lcom/allinone/callerid/customview/b;->p:I

    return-void
.end method

.method public o(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/customview/b;->n:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/allinone/callerid/customview/b;->o:I

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iput p1, p0, Lcom/allinone/callerid/customview/b;->F:I

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/customview/b;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lcom/allinone/callerid/customview/b;->G:I

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/customview/b;->L:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/customview/b;->L:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public p(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/allinone/callerid/customview/b;->n:Landroid/graphics/drawable/Drawable;

    .line 2
    iput p1, p0, Lcom/allinone/callerid/customview/b;->o:I

    return-void
.end method

.method public q(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/customview/b;->H:I

    .line 2
    invoke-direct {p0}, Lcom/allinone/callerid/customview/b;->f()V

    return-void
.end method

.method public r(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/customview/b;->K:Z

    return-void
.end method

.method public s(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/customview/b;->J:I

    .line 2
    invoke-direct {p0}, Lcom/allinone/callerid/customview/b;->e()V

    return-void
.end method
