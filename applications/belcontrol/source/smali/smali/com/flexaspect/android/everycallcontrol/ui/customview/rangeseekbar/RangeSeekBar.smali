.class public Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;
.super Landroid/view/View;
.source ""


# instance fields
.field public A:F

.field public B:F

.field public C:I

.field public D:Z

.field public E:I

.field public F:F

.field public G:F

.field public H:Z

.field public I:F

.field public J:F

.field public K:Z

.field public L:Landroid/graphics/Paint;

.field public M:Landroid/graphics/RectF;

.field public N:Landroid/graphics/RectF;

.field public O:Landroid/graphics/Rect;

.field public P:Landroid/graphics/RectF;

.field public Q:Landroid/graphics/Rect;

.field public R:Lcw0;

.field public S:Lcw0;

.field public T:Lcw0;

.field public U:Landroid/graphics/Bitmap;

.field public V:Landroid/graphics/Bitmap;

.field public W:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public a:I

.field public a0:I

.field public b:I

.field public b0:Lbw0;

.field public c:I

.field public d:I

.field public f:I

.field public g:I

.field public h:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:[Ljava/lang/CharSequence;

.field public p:F

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:F

.field public x:I

.field public y:I

.field public z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->H:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->K:Z

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->L:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->M:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->N:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->O:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->P:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->Q:Landroid/graphics/Rect;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->W:Ljava/util/List;

    invoke-virtual {p0, p2}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->e(Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->f()V

    invoke-virtual {p0, p2}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->h(Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->i()V

    return-void
.end method


# virtual methods
.method public a(F)F
    .locals 4

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->T:Lcw0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->getProgressLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v0, v0, v2

    iget v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->v:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->getProgressLeft()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->getProgressRight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    iget p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->f:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->T:Lcw0;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->R:Lcw0;

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->S:Lcw0;

    iget p1, p1, Lcw0;->x:F

    iget v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->J:F

    sub-float v2, p1, v0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_4

    sub-float v1, p1, v0

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->S:Lcw0;

    if-ne p1, v2, :cond_4

    iget p1, v0, Lcw0;->x:F

    iget v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->J:F

    add-float v2, p1, v0

    cmpg-float v2, v1, v2

    if-gez v2, :cond_4

    add-float v1, p1, v0

    :cond_4
    :goto_1
    return v1
.end method

.method public final b(Z)V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->T:Lcw0;

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->R:Lcw0;

    const/4 v3, 0x1

    if-ne p1, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v2, v1}, Lcw0;->C(Z)V

    iget p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->f:I

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->S:Lcw0;

    xor-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v0}, Lcw0;->C(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->R:Lcw0;

    invoke-virtual {p1, v1}, Lcw0;->C(Z)V

    iget p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->f:I

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->S:Lcw0;

    invoke-virtual {p1, v1}, Lcw0;->C(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public c(Landroid/view/MotionEvent;)F
    .locals 0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    return p1
.end method

.method public d(Landroid/view/MotionEvent;)F
    .locals 0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    return p1
.end method

.method public final e(Landroid/util/AttributeSet;)V
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Ljq0;->RangeSeekBar:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 v0, 0x12

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->f:I

    const/16 v0, 0x10

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->F:F

    const/16 v0, 0xf

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->G:F

    const/16 v0, 0x11

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->w:F

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->x:I

    const/16 v3, 0x13

    const v4, -0xb4269e    # -2.70962E38f

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->q:I

    const/16 v3, 0x18

    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->p:F

    const/16 v3, 0x14

    const v4, -0x282829

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->r:I

    const/16 v3, 0x15

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->s:I

    const/16 v3, 0x16

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->t:I

    const/16 v3, 0x17

    invoke-static {v1}, Loe1;->c(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->u:I

    const/16 v1, 0x28

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->g:I

    const/16 v1, 0x25

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->k:I

    const/16 v1, 0x27

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->l:I

    const/16 v1, 0x2a

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->o:[Ljava/lang/CharSequence;

    const/16 v1, 0x2c

    const/4 v4, 0x7

    invoke-static {v4}, Loe1;->c(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->h:I

    const/16 v1, 0x2d

    const/16 v4, 0xc

    invoke-static {v4}, Loe1;->c(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->j:I

    iget v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->r:I

    const/16 v4, 0x2b

    invoke-virtual {p1, v4, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->m:I

    iget v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->q:I

    invoke-virtual {p1, v4, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->n:I

    const/16 v1, 0x1f

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->C:I

    const/16 v1, 0x1a

    const v4, -0x626263

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->y:I

    const/16 v1, 0x1d

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->B:F

    const/16 v1, 0x1e

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->z:F

    const/16 v1, 0x1c

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->A:F

    const/16 v1, 0x1b

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->E:I

    const/16 v0, 0x19

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->D:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->L:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->L:Landroid/graphics/Paint;

    iget v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->r:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->L:Landroid/graphics/Paint;

    iget v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->j:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method public final g()V
    .locals 4

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->U:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->v:I

    iget v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->u:I

    iget v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->s:I

    invoke-static {v0, v1, v2, v3}, Loe1;->g(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->U:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->V:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->v:I

    iget v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->u:I

    iget v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->t:I

    invoke-static {v0, v1, v2, v3}, Loe1;->g(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->V:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method public getGravity()I
    .locals 1

    iget v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->x:I

    return v0
.end method

.method public getLeftSeekBar()Lcw0;
    .locals 1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->R:Lcw0;

    return-object v0
.end method

.method public getMaxProgress()F
    .locals 1

    iget v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->G:F

    return v0
.end method

.method public getMinInterval()F
    .locals 1

    iget v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->w:F

    return v0
.end method

.method public getMinProgress()F
    .locals 1

    iget v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->F:F

    return v0
.end method

.method public getProgressBottom()I
    .locals 1

    iget v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->b:I

    return v0
.end method

.method public getProgressColor()I
    .locals 1

    iget v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->q:I

    return v0
.end method

.method public getProgressDefaultColor()I
    .locals 1

    iget v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->r:I

    return v0
.end method

.method public getProgressDefaultDrawableId()I
    .locals 1

    iget v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->t:I

    return v0
.end method

.method public getProgressDrawableId()I
    .locals 1

    iget v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->s:I

    return v0
.end method

.method public getProgressHeight()I
    .locals 1

    iget v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->u:I

    return v0
.end method

.method public getProgressLeft()I
    .locals 1

    iget v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->c:I

    return v0
.end method

.method public getProgressPaddingRight()I
    .locals 1

    iget v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->a0:I

    return v0
.end method

.method public getProgressRadius()F
    .locals 1

    iget v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->p:F

    return v0
.end method

.method public getProgressRight()I
    .locals 1

    iget v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->d:I

    return v0
.end method

.method public getProgressTop()I
    .locals 1

    iget v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->a:I

    return v0
.end method

.method public getProgressWidth()I
    .locals 1

    iget v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->v:I

    return v0
.end method

.method public getRangeSeekBarState()[Ldw0;
    .locals 6

    new-instance v0, Ldw0;

    invoke-direct {v0}, Ldw0;-><init>()V

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->R:Lcw0;

    invoke-virtual {v1}, Lcw0;->j()F

    move-result v1

    iput v1, v0, Ldw0;->b:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ldw0;->a:Ljava/lang/String;

    iget v1, v0, Ldw0;->b:F

    iget v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->F:F

    invoke-static {v1, v2}, Loe1;->b(FF)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iput-boolean v2, v0, Ldw0;->c:Z

    goto :goto_0

    :cond_0
    iget v1, v0, Ldw0;->b:F

    iget v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->G:F

    invoke-static {v1, v3}, Loe1;->b(FF)I

    move-result v1

    if-nez v1, :cond_1

    iput-boolean v2, v0, Ldw0;->d:Z

    :cond_1
    :goto_0
    new-instance v1, Ldw0;

    invoke-direct {v1}, Ldw0;-><init>()V

    iget v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->f:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->S:Lcw0;

    invoke-virtual {v3}, Lcw0;->j()F

    move-result v3

    iput v3, v1, Ldw0;->b:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Ldw0;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->S:Lcw0;

    iget v3, v3, Lcw0;->x:F

    iget v5, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->F:F

    invoke-static {v3, v5}, Loe1;->b(FF)I

    move-result v3

    if-nez v3, :cond_2

    iput-boolean v2, v1, Ldw0;->c:Z

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->S:Lcw0;

    iget v3, v3, Lcw0;->x:F

    iget v5, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->G:F

    invoke-static {v3, v5}, Loe1;->b(FF)I

    move-result v3

    if-nez v3, :cond_3

    iput-boolean v2, v1, Ldw0;->d:Z

    :cond_3
    :goto_1
    new-array v3, v4, [Ldw0;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    aput-object v1, v3, v2

    return-object v3
.end method

.method public getRawHeight()F
    .locals 5

    iget v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->f:I

    const/4 v1, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->R:Lcw0;

    invoke-virtual {v0}, Lcw0;->k()F

    move-result v0

    iget v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->l:I

    if-ne v3, v1, :cond_1

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->o:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->R:Lcw0;

    invoke-virtual {v1}, Lcw0;->n()F

    move-result v1

    iget v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->u:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->getTickMarkRawHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget-object v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->R:Lcw0;

    invoke-virtual {v3}, Lcw0;->n()F

    move-result v3

    div-float/2addr v3, v2

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->u:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    add-float/2addr v0, v3

    add-float/2addr v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->R:Lcw0;

    invoke-virtual {v0}, Lcw0;->k()F

    move-result v0

    iget-object v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->S:Lcw0;

    invoke-virtual {v3}, Lcw0;->k()F

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->l:I

    if-ne v3, v1, :cond_1

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->o:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->R:Lcw0;

    invoke-virtual {v1}, Lcw0;->n()F

    move-result v1

    iget-object v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->S:Lcw0;

    invoke-virtual {v3}, Lcw0;->n()F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->u:I

    int-to-float v3, v3

    sub-float v3, v1, v3

    div-float/2addr v3, v2

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->getTickMarkRawHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->u:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    add-float/2addr v0, v3

    :cond_1
    :goto_0
    return v0
.end method

.method public getRightSeekBar()Lcw0;
    .locals 1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->S:Lcw0;

    return-object v0
.end method

.method public getSeekBarMode()I
    .locals 1

    iget v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->f:I

    return v0
.end method

.method public getSteps()I
    .locals 1

    iget v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->C:I

    return v0
.end method

.method public getStepsBitmaps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->W:Ljava/util/List;

    return-object v0
.end method

.method public getStepsColor()I
    .locals 1

    iget v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->y:I

    return v0
.end method

.method public getStepsDrawableId()I
    .locals 1

    iget v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->E:I

    return v0
.end method

.method public getStepsHeight()F
    .locals 1

    iget v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->A:F

    return v0
.end method

.method public getStepsRadius()F
    .locals 1

    iget v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->B:F

    return v0
.end method

.method public getStepsWidth()F
    .locals 1

    iget v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->z:F

    return v0
.end method

.method public getTickMarkGravity()I
    .locals 1

    iget v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->k:I

    return v0
.end method

.method public getTickMarkInRangeTextColor()I
    .locals 1

    iget v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->n:I

    return v0
.end method

.method public getTickMarkLayoutGravity()I
    .locals 1

    iget v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->l:I

    return v0
.end method

.method public getTickMarkMode()I
    .locals 1

    iget v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->g:I

    return v0
.end method

.method public getTickMarkRawHeight()I
    .locals 3

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->o:[Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    iget v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->h:I

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->j:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Loe1;->R(Ljava/lang/String;F)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x3

    return v2

    :cond_0
    return v1
.end method

.method public getTickMarkTextArray()[Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->o:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTickMarkTextColor()I
    .locals 1

    iget v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->m:I

    return v0
.end method

.method public getTickMarkTextMargin()I
    .locals 1

    iget v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->h:I

    return v0
.end method

.method public getTickMarkTextSize()I
    .locals 1

    iget v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->j:I

    return v0
.end method

.method public final h(Landroid/util/AttributeSet;)V
    .locals 3

    new-instance v0, Lcw0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcw0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;Landroid/util/AttributeSet;Z)V

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->R:Lcw0;

    new-instance v0, Lcw0;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcw0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;Landroid/util/AttributeSet;Z)V

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->S:Lcw0;

    iget p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->f:I

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcw0;->K(Z)V

    return-void
.end method

.method public final i()V
    .locals 4

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->E:I

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->W:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->z:F

    float-to-int v1, v1

    iget v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->A:F

    float-to-int v2, v2

    iget v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->E:I

    invoke-static {v0, v1, v2, v3}, Loe1;->g(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->C:I

    if-gt v1, v2, :cond_1

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->W:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public j(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 7

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->V:Landroid/graphics/Bitmap;

    invoke-static {v0}, Loe1;->x0(Landroid/graphics/Bitmap;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->V:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->M:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->r:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->M:Landroid/graphics/RectF;

    iget v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->p:F

    invoke-virtual {p1, v0, v2, v2, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_0
    iget v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->f:I

    const/4 v2, 0x2

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->N:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->getProgressTop()I

    move-result v4

    int-to-float v4, v4

    iput v4, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->N:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->R:Lcw0;

    iget v5, v4, Lcw0;->t:I

    int-to-float v5, v5

    invoke-virtual {v4}, Lcw0;->p()F

    move-result v4

    div-float/2addr v4, v3

    add-float/2addr v5, v4

    iget v4, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->v:I

    int-to-float v4, v4

    iget-object v6, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->R:Lcw0;

    iget v6, v6, Lcw0;->x:F

    mul-float v4, v4, v6

    add-float/2addr v5, v4

    iput v5, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->N:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->S:Lcw0;

    iget v5, v4, Lcw0;->t:I

    int-to-float v5, v5

    invoke-virtual {v4}, Lcw0;->p()F

    move-result v4

    div-float/2addr v4, v3

    add-float/2addr v5, v4

    iget v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->v:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->S:Lcw0;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->N:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->getProgressTop()I

    move-result v4

    int-to-float v4, v4

    iput v4, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->N:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->R:Lcw0;

    iget v5, v4, Lcw0;->t:I

    int-to-float v5, v5

    invoke-virtual {v4}, Lcw0;->p()F

    move-result v4

    div-float/2addr v4, v3

    add-float/2addr v5, v4

    iput v5, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->N:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->R:Lcw0;

    iget v5, v4, Lcw0;->t:I

    int-to-float v5, v5

    invoke-virtual {v4}, Lcw0;->p()F

    move-result v4

    div-float/2addr v4, v3

    add-float/2addr v5, v4

    iget v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->v:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->R:Lcw0;

    :goto_1
    iget v4, v4, Lcw0;->x:F

    mul-float v3, v3, v4

    add-float/2addr v5, v3

    iput v5, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->N:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->getProgressBottom()I

    move-result v3

    int-to-float v3, v3

    iput v3, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->U:Landroid/graphics/Bitmap;

    invoke-static {v0}, Loe1;->x0(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->O:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->U:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, p2, Landroid/graphics/Rect;->bottom:I

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->U:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    iget v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->f:I

    if-ne v3, v2, :cond_2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->O:Landroid/graphics/Rect;

    int-to-float p2, p2

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->R:Lcw0;

    iget v2, v2, Lcw0;->x:F

    mul-float v2, v2, p2

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->S:Lcw0;

    iget v2, v2, Lcw0;->x:F

    mul-float p2, p2, v2

    float-to-int p2, p2

    iput p2, v0, Landroid/graphics/Rect;->right:I

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->O:Landroid/graphics/Rect;

    iput v0, v2, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->R:Lcw0;

    iget v0, v0, Lcw0;->x:F

    mul-float p2, p2, v0

    float-to-int p2, p2

    iput p2, v2, Landroid/graphics/Rect;->right:I

    :goto_2
    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->U:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->O:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->N:Landroid/graphics/RectF;

    invoke-virtual {p1, p2, v0, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_3

    :cond_3
    iget v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->q:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->N:Landroid/graphics/RectF;

    iget v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->p:F

    invoke-virtual {p1, v0, v1, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_3
    return-void
.end method

.method public k(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->R:Lcw0;

    invoke-virtual {v0}, Lcw0;->i()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->R:Lcw0;

    invoke-virtual {v0, v1}, Lcw0;->H(Z)V

    :cond_0
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->R:Lcw0;

    invoke-virtual {v0, p1}, Lcw0;->b(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->f:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->S:Lcw0;

    invoke-virtual {v0}, Lcw0;->i()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->S:Lcw0;

    invoke-virtual {v0, v1}, Lcw0;->H(Z)V

    :cond_1
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->S:Lcw0;

    invoke-virtual {v0, p1}, Lcw0;->b(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method public l(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 9

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->q()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->getProgressWidth()I

    move-result v0

    iget v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->C:I

    div-int/2addr v0, v1

    iget v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->A:F

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->getProgressHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->C:I

    if-gt v3, v4, :cond_3

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->getProgressLeft()I

    move-result v4

    mul-int v5, v3, v0

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->z:F

    div-float/2addr v5, v2

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->P:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->getProgressTop()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v1

    iget v7, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->z:F

    add-float/2addr v7, v4

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->getProgressBottom()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v1

    invoke-virtual {v5, v4, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v4, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->W:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->W:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gt v4, v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->W:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->P:Landroid/graphics/RectF;

    invoke-virtual {p1, v4, v5, v6, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_2

    :cond_2
    :goto_1
    iget v4, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->y:I

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->P:Landroid/graphics/RectF;

    iget v5, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->B:F

    invoke-virtual {p1, v4, v5, v5, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public m(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 11

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->o:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    iget v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->v:I

    array-length v0, v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    div-int/2addr v1, v0

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->o:[Ljava/lang/CharSequence;

    array-length v5, v4

    if-ge v3, v5, :cond_6

    aget-object v4, v4, v3

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->Q:Landroid/graphics/Rect;

    invoke-virtual {p2, v4, v0, v5, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget v5, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->m:I

    invoke-virtual {p2, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget v5, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->g:I

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v7, 0x2

    if-ne v5, v2, :cond_3

    iget v5, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->k:I

    if-ne v5, v7, :cond_1

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->getProgressLeft()I

    move-result v5

    mul-int v6, v3, v1

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->Q:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int/2addr v5, v6

    :goto_1
    int-to-float v5, v5

    goto :goto_2

    :cond_1
    if-ne v5, v2, :cond_2

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->getProgressLeft()I

    move-result v5

    mul-int v7, v3, v1

    add-int/2addr v5, v7

    int-to-float v5, v5

    iget-object v7, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->Q:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    sub-float/2addr v5, v7

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->getProgressLeft()I

    move-result v5

    mul-int v6, v3, v1

    add-int/2addr v5, v6

    goto :goto_1

    :cond_3
    invoke-static {v4}, Loe1;->U(Ljava/lang/String;)F

    move-result v5

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->getRangeSeekBarState()[Ldw0;

    move-result-object v8

    aget-object v9, v8, v0

    iget v9, v9, Ldw0;->b:F

    invoke-static {v5, v9}, Loe1;->b(FF)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_4

    aget-object v8, v8, v2

    iget v8, v8, Ldw0;->b:F

    invoke-static {v5, v8}, Loe1;->b(FF)I

    move-result v8

    if-eq v8, v2, :cond_4

    iget v8, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->f:I

    if-ne v8, v7, :cond_4

    iget v7, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->n:I

    invoke-virtual {p2, v7}, Landroid/graphics/Paint;->setColor(I)V

    :cond_4
    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->getProgressLeft()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->v:I

    int-to-float v8, v8

    iget v9, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->F:F

    sub-float/2addr v5, v9

    mul-float v8, v8, v5

    iget v5, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->G:F

    sub-float/2addr v5, v9

    div-float/2addr v8, v5

    add-float/2addr v7, v8

    iget-object v5, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->Q:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    sub-float v5, v7, v5

    :goto_2
    iget v6, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->l:I

    if-nez v6, :cond_5

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->getProgressTop()I

    move-result v6

    iget v7, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->h:I

    sub-int/2addr v6, v7

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->getProgressBottom()I

    move-result v6

    iget v7, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->h:I

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->Q:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    add-int/2addr v6, v7

    :goto_3
    int-to-float v6, v6

    invoke-virtual {p1, v4, v5, v6, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public n(II)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    if-gtz p2, :cond_0

    return-void

    :cond_0
    iget p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->x:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/high16 v3, 0x40000000    # 2.0f

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->R:Lcw0;

    invoke-virtual {p2}, Lcw0;->i()I

    move-result p2

    if-ne p2, v2, :cond_2

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->S:Lcw0;

    invoke-virtual {p2}, Lcw0;->i()I

    move-result p2

    if-eq p2, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->R:Lcw0;

    invoke-virtual {p2}, Lcw0;->h()I

    move-result p2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->S:Lcw0;

    invoke-virtual {v0}, Lcw0;->h()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    int-to-float p2, p2

    :goto_1
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->R:Lcw0;

    invoke-virtual {v0}, Lcw0;->n()F

    move-result v0

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->S:Lcw0;

    invoke-virtual {v2}, Lcw0;->n()F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->u:I

    int-to-float v4, v2

    div-float/2addr v4, v3

    sub-float/2addr v0, v4

    int-to-float v2, v2

    sub-float v2, v0, v2

    div-float/2addr v2, v3

    add-float/2addr v2, p2

    float-to-int v2, v2

    iput v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->a:I

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->o:[Ljava/lang/CharSequence;

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->l:I

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->getTickMarkRawHeight()I

    move-result v2

    int-to-float v2, v2

    iget v4, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->u:I

    int-to-float v4, v4

    sub-float/2addr v0, v4

    div-float/2addr v0, v3

    add-float/2addr p2, v0

    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->a:I

    :cond_3
    iget p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->a:I

    iget v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->u:I

    add-int/2addr p2, v0

    iput p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->b:I

    goto :goto_3

    :cond_4
    if-ne p2, v2, :cond_6

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->o:[Ljava/lang/CharSequence;

    if-eqz p2, :cond_5

    iget p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->l:I

    if-ne p2, v2, :cond_5

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->getTickMarkRawHeight()I

    move-result p2

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->b:I

    goto :goto_2

    :cond_5
    int-to-float p2, v0

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->R:Lcw0;

    invoke-virtual {v0}, Lcw0;->n()F

    move-result v0

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->S:Lcw0;

    invoke-virtual {v2}, Lcw0;->n()F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    div-float/2addr v0, v3

    sub-float/2addr p2, v0

    iget v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->u:I

    int-to-float v0, v0

    div-float/2addr v0, v3

    add-float/2addr p2, v0

    float-to-int p2, p2

    iput p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->b:I

    :goto_2
    iget p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->b:I

    iget v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->u:I

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->a:I

    goto :goto_3

    :cond_6
    iget p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->u:I

    sub-int/2addr v0, p2

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->a:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->b:I

    :goto_3
    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->R:Lcw0;

    invoke-virtual {p2}, Lcw0;->p()F

    move-result p2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->S:Lcw0;

    invoke-virtual {v0}, Lcw0;->p()F

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    float-to-int p2, p2

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    add-int/2addr v0, p2

    iput v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->c:I

    sub-int p2, p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->d:I

    iget v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->c:I

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->v:I

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->M:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->getProgressLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->getProgressTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->getProgressRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->getProgressBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2, v0, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->d:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->a0:I

    iget p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->p:F

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_7

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->getProgressBottom()I

    move-result p1

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->getProgressTop()I

    move-result p2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    const p2, 0x3ee66666    # 0.45f

    mul-float p1, p1, p2

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->p:F

    :cond_7
    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->g()V

    return-void
.end method

.method public final o()V
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->T:Lcw0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcw0;->o()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->K:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->K:Z

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->T:Lcw0;

    invoke-virtual {v0}, Lcw0;->A()V

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->L:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->m(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->L:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->j(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->L:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->l(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->k(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 4

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const/high16 v1, 0x40000000    # 2.0f

    if-ne p2, v1, :cond_0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_2

    :cond_0
    const/high16 v2, -0x80000000

    if-ne p2, v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of p2, p2, Landroid/view/ViewGroup;

    if-eqz p2, :cond_1

    const/4 p2, -0x1

    if-ne v0, p2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_2

    :cond_1
    iget p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->x:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->o:[Ljava/lang/CharSequence;

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p2, :cond_2

    iget p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->l:I

    const/4 v2, 0x1

    if-ne p2, v2, :cond_2

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->getRawHeight()F

    move-result p2

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->getTickMarkRawHeight()I

    move-result v2

    int-to-float v2, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->getRawHeight()F

    move-result p2

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->R:Lcw0;

    invoke-virtual {v2}, Lcw0;->n()F

    move-result v2

    iget-object v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->S:Lcw0;

    invoke-virtual {v3}, Lcw0;->n()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    div-float/2addr v2, v0

    :goto_0
    sub-float/2addr p2, v2

    mul-float p2, p2, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->getRawHeight()F

    move-result p2

    :goto_1
    float-to-int p2, p2

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :goto_2
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    :try_start_0
    check-cast p1, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/SavedState;

    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v0, p1, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/SavedState;->a:F

    iget v1, p1, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/SavedState;->b:F

    iget v2, p1, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/SavedState;->c:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->setRange(FFF)V

    iget v0, p1, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/SavedState;->f:F

    iget p1, p1, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/SavedState;->g:F

    invoke-virtual {p0, v0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->setProgress(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/SavedState;

    invoke-direct {v1, v0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->F:F

    iput v0, v1, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/SavedState;->a:F

    iget v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->G:F

    iput v0, v1, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/SavedState;->b:F

    iget v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->w:F

    iput v0, v1, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/SavedState;->c:F

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->getRangeSeekBarState()[Ldw0;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v2, v0, v2

    iget v2, v2, Ldw0;->b:F

    iput v2, v1, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/SavedState;->f:F

    const/4 v2, 0x1

    aget-object v0, v0, v2

    iget v0, v0, Ldw0;->b:F

    iput v0, v1, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/SavedState;->g:F

    return-object v1
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-virtual {p0, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->n(II)V

    iget p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->F:F

    iget p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->G:F

    iget p3, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->w:F

    invoke-virtual {p0, p1, p2, p3}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->setRange(FFF)V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->getProgressBottom()I

    move-result p1

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->getProgressTop()I

    move-result p2

    add-int/2addr p1, p2

    const/4 p2, 0x2

    div-int/2addr p1, p2

    iget-object p3, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->R:Lcw0;

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->getProgressLeft()I

    move-result p4

    invoke-virtual {p3, p4, p1}, Lcw0;->z(II)V

    iget p3, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->f:I

    if-ne p3, p2, :cond_0

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->S:Lcw0;

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->getProgressLeft()I

    move-result p3

    invoke-virtual {p2, p3, p1}, Lcw0;->z(II)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    iget-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->H:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v0, :cond_17

    if-eq v0, v1, :cond_10

    if-eq v0, v3, :cond_6

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    goto/16 :goto_8

    :cond_1
    iget v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->f:I

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->S:Lcw0;

    invoke-virtual {v0, v4}, Lcw0;->H(Z)V

    :cond_2
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->T:Lcw0;

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->R:Lcw0;

    if-ne v0, v2, :cond_3

    :goto_0
    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->o()V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->S:Lcw0;

    if-ne v0, v2, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->R:Lcw0;

    invoke-virtual {v0, v4}, Lcw0;->H(Z)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->b0:Lbw0;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->getRangeSeekBarState()[Ldw0;

    move-result-object v0

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->b0:Lbw0;

    aget-object v3, v0, v4

    iget v3, v3, Ldw0;->b:F

    aget-object v0, v0, v1

    iget v0, v0, Ldw0;->b:F

    invoke-interface {v2, p0, v3, v0, v4}, Lbw0;->b(Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;FFZ)V

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_7

    :cond_6
    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->c(Landroid/view/MotionEvent;)F

    move-result v0

    iget v5, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->f:I

    if-ne v5, v3, :cond_c

    iget-object v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->R:Lcw0;

    iget v3, v3, Lcw0;->x:F

    iget-object v5, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->S:Lcw0;

    iget v5, v5, Lcw0;->x:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_c

    iget-object v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->T:Lcw0;

    invoke-virtual {v3}, Lcw0;->w()V

    iget-object v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->b0:Lbw0;

    if-eqz v3, :cond_8

    iget-object v5, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->T:Lcw0;

    iget-object v6, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->R:Lcw0;

    if-ne v5, v6, :cond_7

    const/4 v5, 0x1

    goto :goto_2

    :cond_7
    const/4 v5, 0x0

    :goto_2
    invoke-interface {v3, p0, v5}, Lbw0;->a(Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;Z)V

    :cond_8
    iget v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->I:F

    sub-float v3, v0, v3

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_9

    iget-object v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->T:Lcw0;

    iget-object v5, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->S:Lcw0;

    if-eq v3, v5, :cond_a

    invoke-virtual {v3, v4}, Lcw0;->H(Z)V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->o()V

    iget-object v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->S:Lcw0;

    goto :goto_3

    :cond_9
    iget-object v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->T:Lcw0;

    iget-object v5, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->R:Lcw0;

    if-eq v3, v5, :cond_a

    invoke-virtual {v3, v4}, Lcw0;->H(Z)V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->o()V

    iget-object v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->R:Lcw0;

    :goto_3
    iput-object v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->T:Lcw0;

    :cond_a
    iget-object v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->b0:Lbw0;

    if-eqz v3, :cond_c

    iget-object v5, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->T:Lcw0;

    iget-object v6, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->R:Lcw0;

    if-ne v5, v6, :cond_b

    const/4 v5, 0x1

    goto :goto_4

    :cond_b
    const/4 v5, 0x0

    :goto_4
    invoke-interface {v3, p0, v5}, Lbw0;->c(Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;Z)V

    :cond_c
    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->p()V

    iget-object v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->T:Lcw0;

    iget v5, v3, Lcw0;->y:F

    cmpl-float v6, v5, v2

    if-ltz v6, :cond_d

    goto :goto_5

    :cond_d
    const v2, 0x3dcccccd    # 0.1f

    add-float/2addr v2, v5

    :goto_5
    iput v2, v3, Lcw0;->y:F

    iput v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->I:F

    invoke-virtual {p0, v0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->a(F)F

    move-result v0

    invoke-virtual {v3, v0}, Lcw0;->L(F)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->T:Lcw0;

    invoke-virtual {v0, v1}, Lcw0;->H(Z)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->b0:Lbw0;

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->getRangeSeekBarState()[Ldw0;

    move-result-object v0

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->b0:Lbw0;

    aget-object v3, v0, v4

    iget v3, v3, Ldw0;->b:F

    aget-object v0, v0, v1

    iget v0, v0, Ldw0;->b:F

    invoke-interface {v2, p0, v3, v0, v1}, Lbw0;->b(Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;FFZ)V

    :cond_e
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_f
    invoke-virtual {p0, v1}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->b(Z)V

    goto/16 :goto_8

    :cond_10
    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->q()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->D:Z

    if-eqz v0, :cond_11

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->c(Landroid/view/MotionEvent;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->a(F)F

    move-result v0

    iget v5, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->C:I

    int-to-float v5, v5

    div-float/2addr v2, v5

    new-instance v5, Ljava/math/BigDecimal;

    div-float/2addr v0, v2

    float-to-double v6, v0

    invoke-direct {v5, v6, v7}, Ljava/math/BigDecimal;-><init>(D)V

    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v5, v4, v0}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    iget-object v5, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->T:Lcw0;

    int-to-float v0, v0

    mul-float v0, v0, v2

    invoke-virtual {v5, v0}, Lcw0;->L(F)V

    :cond_11
    iget v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->f:I

    if-ne v0, v3, :cond_12

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->S:Lcw0;

    invoke-virtual {v0, v4}, Lcw0;->H(Z)V

    :cond_12
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->R:Lcw0;

    invoke-virtual {v0, v4}, Lcw0;->H(Z)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->T:Lcw0;

    invoke-virtual {v0}, Lcw0;->w()V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->o()V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->b0:Lbw0;

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->getRangeSeekBarState()[Ldw0;

    move-result-object v0

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->b0:Lbw0;

    aget-object v3, v0, v4

    iget v3, v3, Ldw0;->b:F

    aget-object v0, v0, v1

    iget v0, v0, Ldw0;->b:F

    invoke-interface {v2, p0, v3, v0, v4}, Lbw0;->b(Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;FFZ)V

    :cond_13
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_14
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->b0:Lbw0;

    if-eqz v0, :cond_16

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->T:Lcw0;

    iget-object v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->R:Lcw0;

    if-ne v2, v3, :cond_15

    goto :goto_6

    :cond_15
    const/4 v1, 0x0

    :goto_6
    invoke-interface {v0, p0, v1}, Lbw0;->a(Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;Z)V

    :cond_16
    :goto_7
    invoke-virtual {p0, v4}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->b(Z)V

    :goto_8
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_17
    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->c(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->I:F

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->d(Landroid/view/MotionEvent;)F

    iget v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->f:I

    if-ne v0, v3, :cond_1b

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->S:Lcw0;

    iget v0, v0, Lcw0;->x:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_18

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->R:Lcw0;

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->c(Landroid/view/MotionEvent;)F

    move-result v3

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->d(Landroid/view/MotionEvent;)F

    move-result v5

    invoke-virtual {v0, v3, v5}, Lcw0;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_a

    :cond_18
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->S:Lcw0;

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->c(Landroid/view/MotionEvent;)F

    move-result v3

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->d(Landroid/view/MotionEvent;)F

    move-result p1

    invoke-virtual {v0, v3, p1}, Lcw0;->a(FF)Z

    move-result p1

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->S:Lcw0;

    goto :goto_b

    :cond_19
    iget p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->I:F

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->getProgressLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    mul-float p1, p1, v2

    iget v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->v:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->R:Lcw0;

    iget v0, v0, Lcw0;->x:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->S:Lcw0;

    iget v2, v2, Lcw0;->x:F

    sub-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, v0, p1

    if-gez p1, :cond_1a

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->R:Lcw0;

    goto :goto_9

    :cond_1a
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->S:Lcw0;

    :goto_9
    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->T:Lcw0;

    iget p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->I:F

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->a(F)F

    move-result p1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->T:Lcw0;

    invoke-virtual {v0, p1}, Lcw0;->L(F)V

    goto :goto_c

    :cond_1b
    :goto_a
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->R:Lcw0;

    :goto_b
    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->T:Lcw0;

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->p()V

    :goto_c
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1c

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1c
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->b0:Lbw0;

    if-eqz p1, :cond_1e

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->T:Lcw0;

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->R:Lcw0;

    if-ne v0, v2, :cond_1d

    const/4 v4, 0x1

    :cond_1d
    invoke-interface {p1, p0, v4}, Lbw0;->c(Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;Z)V

    :cond_1e
    invoke-virtual {p0, v1}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->b(Z)V

    return v1
.end method

.method public final p()V
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->T:Lcw0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcw0;->o()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->K:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->K:Z

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->T:Lcw0;

    invoke-virtual {v0}, Lcw0;->B()V

    :cond_0
    return-void
.end method

.method public final q()Z
    .locals 3

    iget v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->C:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->A:F

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->z:F

    cmpg-float v0, v0, v2

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setEnableThumbOverlap(Z)V
    .locals 0

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    iput-boolean p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->H:Z

    return-void
.end method

.method public setGravity(I)V
    .locals 0

    iput p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->x:I

    return-void
.end method

.method public setIndicatorText(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->R:Lcw0;

    invoke-virtual {v0, p1}, Lcw0;->E(Ljava/lang/String;)V

    iget v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->S:Lcw0;

    invoke-virtual {v0, p1}, Lcw0;->E(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setIndicatorTextDecimalFormat(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->R:Lcw0;

    invoke-virtual {v0, p1}, Lcw0;->F(Ljava/lang/String;)V

    iget v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->S:Lcw0;

    invoke-virtual {v0, p1}, Lcw0;->F(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setIndicatorTextStringFormat(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->R:Lcw0;

    invoke-virtual {v0, p1}, Lcw0;->G(Ljava/lang/String;)V

    iget v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->S:Lcw0;

    invoke-virtual {v0, p1}, Lcw0;->G(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setOnRangeChangedListener(Lbw0;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->b0:Lbw0;

    return-void
.end method

.method public setProgress(F)V
    .locals 1

    iget v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->G:F

    invoke-virtual {p0, p1, v0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->setProgress(FF)V

    return-void
.end method

.method public setProgress(FF)V
    .locals 3

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    sub-float v0, p2, p1

    iget v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->w:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    sub-float p1, p2, v1

    :cond_0
    iget v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->F:F

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_4

    iget v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->G:F

    cmpl-float v2, p2, v1

    if-gtz v2, :cond_3

    sub-float/2addr v1, v0

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->R:Lcw0;

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v0, v1

    iput v0, v2, Lcw0;->x:F

    iget v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->f:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->S:Lcw0;

    iget v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->F:F

    sub-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v2, v1

    iput v2, v0, Lcw0;->x:F

    :cond_1
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->b0:Lbw0;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-interface {v0, p0, p1, p2, v1}, Lbw0;->b(Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;FFZ)V

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setProgress() max > (preset max - offsetValue) . #max:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " #preset max:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProgress() min < (preset min - offsetValue) . #min:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " #preset min:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProgressBottom(I)V
    .locals 0

    iput p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->b:I

    return-void
.end method

.method public setProgressColor(I)V
    .locals 0

    iput p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->q:I

    return-void
.end method

.method public setProgressColor(II)V
    .locals 0

    iput p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->r:I

    iput p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->q:I

    return-void
.end method

.method public setProgressDefaultColor(I)V
    .locals 0

    iput p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->r:I

    return-void
.end method

.method public setProgressDefaultDrawableId(I)V
    .locals 0

    iput p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->t:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->V:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->g()V

    return-void
.end method

.method public setProgressDrawableId(I)V
    .locals 0

    iput p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->s:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->U:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->g()V

    return-void
.end method

.method public setProgressHeight(I)V
    .locals 0

    iput p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->u:I

    return-void
.end method

.method public setProgressLeft(I)V
    .locals 0

    iput p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->c:I

    return-void
.end method

.method public setProgressRadius(F)V
    .locals 0

    iput p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->p:F

    return-void
.end method

.method public setProgressRight(I)V
    .locals 0

    iput p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->d:I

    return-void
.end method

.method public setProgressTop(I)V
    .locals 0

    iput p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->a:I

    return-void
.end method

.method public setProgressWidth(I)V
    .locals 0

    iput p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->v:I

    return-void
.end method

.method public setRange(FF)V
    .locals 1

    iget v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->w:F

    invoke-virtual {p0, p1, p2, v0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->setRange(FFF)V

    return-void
.end method

.method public setRange(FFF)V
    .locals 4

    cmpg-float v0, p2, p1

    if-lez v0, :cond_4

    const/4 v0, 0x0

    cmpg-float v1, p3, v0

    if-ltz v1, :cond_3

    sub-float v1, p2, p1

    cmpl-float v2, p3, v1

    if-gez v2, :cond_2

    iput p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->G:F

    iput p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->F:F

    iput p3, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->w:F

    div-float/2addr p3, v1

    iput p3, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->J:F

    iget p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->f:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->R:Lcw0;

    iget p2, p1, Lcw0;->x:F

    add-float v1, p2, p3

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    add-float v1, p2, p3

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->S:Lcw0;

    iget v3, v2, Lcw0;->x:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_0

    add-float/2addr p2, p3

    iput p2, v2, Lcw0;->x:F

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->S:Lcw0;

    iget v1, v1, Lcw0;->x:F

    sub-float v2, v1, p3

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_1

    sub-float v0, v1, p3

    cmpg-float p2, v0, p2

    if-gez p2, :cond_1

    sub-float/2addr v1, p3

    iput v1, p1, Lcw0;->x:F

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setRange() interval must be less than (max - min) ! #minInterval:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, " #max - min:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setRange() interval must be greater than zero ! #minInterval:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRange() max must be greater than min ! #max:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, " #min:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public setSeekBarMode(I)V
    .locals 2

    iput p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->f:I

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->S:Lcw0;

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcw0;->K(Z)V

    return-void
.end method

.method public setSteps(I)V
    .locals 0

    iput p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->C:I

    return-void
.end method

.method public setStepsAutoBonding(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->D:Z

    return-void
.end method

.method public setStepsBitmaps(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->C:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->W:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->W:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "stepsBitmaps must > steps !"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setStepsColor(I)V
    .locals 0

    iput p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->y:I

    return-void
.end method

.method public setStepsDrawable(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->C:I

    if-le v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->z:F

    float-to-int v3, v3

    iget v4, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->A:F

    float-to-int v4, v4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Loe1;->g(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->setStepsBitmaps(Ljava/util/List;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "stepsWidth must > 0, stepsHeight must > 0,steps must > 0 First!!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "stepsDrawableIds must > steps !"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setStepsDrawableId(I)V
    .locals 1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->W:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->E:I

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->i()V

    return-void
.end method

.method public setStepsHeight(F)V
    .locals 0

    iput p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->A:F

    return-void
.end method

.method public setStepsRadius(F)V
    .locals 0

    iput p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->B:F

    return-void
.end method

.method public setStepsWidth(F)V
    .locals 0

    iput p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->z:F

    return-void
.end method

.method public setTickMarkGravity(I)V
    .locals 0

    iput p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->k:I

    return-void
.end method

.method public setTickMarkInRangeTextColor(I)V
    .locals 0

    iput p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->n:I

    return-void
.end method

.method public setTickMarkLayoutGravity(I)V
    .locals 0

    iput p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->l:I

    return-void
.end method

.method public setTickMarkMode(I)V
    .locals 0

    iput p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->g:I

    return-void
.end method

.method public setTickMarkTextArray([Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->o:[Ljava/lang/CharSequence;

    return-void
.end method

.method public setTickMarkTextColor(I)V
    .locals 0

    iput p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->m:I

    return-void
.end method

.method public setTickMarkTextMargin(I)V
    .locals 0

    iput p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->h:I

    return-void
.end method

.method public setTickMarkTextSize(I)V
    .locals 0

    iput p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->j:I

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->L:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method
