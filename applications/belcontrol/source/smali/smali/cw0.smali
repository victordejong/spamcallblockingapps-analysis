.class public Lcw0;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public A:Z

.field public B:Landroid/graphics/Bitmap;

.field public C:Landroid/graphics/Bitmap;

.field public D:Landroid/graphics/Bitmap;

.field public E:Lqi1;

.field public F:Ljava/lang/String;

.field public G:Z

.field public H:Z

.field public I:Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;

.field public J:Ljava/lang/String;

.field public K:Landroid/graphics/Path;

.field public L:Landroid/graphics/Rect;

.field public M:Landroid/graphics/Rect;

.field public N:Landroid/graphics/Paint;

.field public O:Ljava/text/DecimalFormat;

.field public P:I

.field public Q:I

.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:F

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:F

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:F

.field public y:F

.field public z:Z


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;Landroid/util/AttributeSet;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcw0;->y:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcw0;->G:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcw0;->H:Z

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcw0;->K:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcw0;->L:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcw0;->M:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcw0;->N:Landroid/graphics/Paint;

    iput-object p1, p0, Lcw0;->I:Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;

    iput-boolean p3, p0, Lcw0;->A:Z

    invoke-virtual {p0, p2}, Lcw0;->r(Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcw0;->s()V

    invoke-virtual {p0}, Lcw0;->t()V

    return-void
.end method

.method private synthetic u(Lqi1;)V
    .locals 0

    invoke-virtual {p1}, Lqi1;->x()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcw0;->y:F

    iget-object p1, p0, Lcw0;->I:Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method


# virtual methods
.method public A()V
    .locals 3

    invoke-virtual {p0}, Lcw0;->q()I

    move-result v0

    iput v0, p0, Lcw0;->P:I

    invoke-virtual {p0}, Lcw0;->m()I

    move-result v0

    iput v0, p0, Lcw0;->Q:I

    iget-object v0, p0, Lcw0;->I:Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;

    invoke-virtual {v0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->getProgressBottom()I

    move-result v0

    iget v1, p0, Lcw0;->Q:I

    div-int/lit8 v2, v1, 0x2

    sub-int v2, v0, v2

    iput v2, p0, Lcw0;->v:I

    div-int/lit8 v2, v1, 0x2

    add-int/2addr v0, v2

    iput v0, p0, Lcw0;->w:I

    iget v0, p0, Lcw0;->o:I

    iget v2, p0, Lcw0;->P:I

    invoke-virtual {p0, v0, v2, v1}, Lcw0;->I(III)V

    return-void
.end method

.method public B()V
    .locals 3

    invoke-virtual {p0}, Lcw0;->p()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcw0;->P:I

    invoke-virtual {p0}, Lcw0;->n()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcw0;->Q:I

    iget-object v0, p0, Lcw0;->I:Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;

    invoke-virtual {v0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->getProgressBottom()I

    move-result v0

    iget v1, p0, Lcw0;->Q:I

    div-int/lit8 v2, v1, 0x2

    sub-int v2, v0, v2

    iput v2, p0, Lcw0;->v:I

    div-int/lit8 v2, v1, 0x2

    add-int/2addr v0, v2

    iput v0, p0, Lcw0;->w:I

    iget v0, p0, Lcw0;->o:I

    iget v2, p0, Lcw0;->P:I

    invoke-virtual {p0, v0, v2, v1}, Lcw0;->I(III)V

    return-void
.end method

.method public C(Z)V
    .locals 0

    iput-boolean p1, p0, Lcw0;->G:Z

    return-void
.end method

.method public D(I)V
    .locals 1

    if-eqz p1, :cond_0

    iput p1, p0, Lcw0;->e:I

    invoke-virtual {p0}, Lcw0;->l()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcw0;->D:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public E(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcw0;->F:Ljava/lang/String;

    return-void
.end method

.method public F(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0, p1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcw0;->O:Ljava/text/DecimalFormat;

    return-void
.end method

.method public G(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcw0;->J:Ljava/lang/String;

    return-void
.end method

.method public H(Z)V
    .locals 2

    iget v0, p0, Lcw0;->a:I

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    if-eq v0, p1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    iput-boolean p1, p0, Lcw0;->z:Z

    :goto_0
    return-void
.end method

.method public I(III)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcw0;->l()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_1

    if-lez p2, :cond_1

    if-lez p3, :cond_1

    iput p1, p0, Lcw0;->o:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcw0;->l()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcw0;->l()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    invoke-static {p2, p3, p1}, Loe1;->f(IILandroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcw0;->B:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method public J(III)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcw0;->l()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_1

    iput p1, p0, Lcw0;->p:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcw0;->l()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcw0;->l()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    invoke-static {p2, p3, p1}, Loe1;->f(IILandroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcw0;->C:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method public K(Z)V
    .locals 0

    iput-boolean p1, p0, Lcw0;->H:Z

    return-void
.end method

.method public L(F)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-gez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_1
    :goto_0
    iput p1, p0, Lcw0;->x:F

    return-void
.end method

.method public a(FF)Z
    .locals 2

    iget-object v0, p0, Lcw0;->I:Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;

    invoke-virtual {v0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->getProgressWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcw0;->x:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcw0;->t:I

    add-int/2addr v1, v0

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    iget v1, p0, Lcw0;->u:I

    add-int/2addr v1, v0

    int-to-float v0, v1

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    iget p1, p0, Lcw0;->v:I

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_0

    iget p1, p0, Lcw0;->w:I

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b(Landroid/graphics/Canvas;)V
    .locals 2

    iget-boolean v0, p0, Lcw0;->H:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcw0;->I:Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;

    invoke-virtual {v0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->getProgressWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcw0;->x:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget v0, p0, Lcw0;->t:I

    int-to-float v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-boolean v0, p0, Lcw0;->z:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcw0;->N:Landroid/graphics/Paint;

    iget-object v1, p0, Lcw0;->F:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcw0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcw0;->x(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, p1}, Lcw0;->y(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcw0;->I:Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;

    invoke-virtual {v0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->getRangeSeekBarState()[Ldw0;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    iget-boolean p1, p0, Lcw0;->A:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcw0;->O:Ljava/text/DecimalFormat;

    if-eqz p1, :cond_0

    aget-object v0, v0, v2

    goto :goto_0

    :cond_0
    aget-object p1, v0, v2

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcw0;->O:Ljava/text/DecimalFormat;

    if-eqz p1, :cond_2

    aget-object v0, v0, v3

    :goto_0
    iget v0, v0, Ldw0;->b:F

    float-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    aget-object p1, v0, v3

    :goto_1
    iget-object p1, p1, Ldw0;->a:Ljava/lang/String;

    :cond_3
    :goto_2
    iget-object v0, p0, Lcw0;->J:Ljava/lang/String;

    if-eqz v0, :cond_4

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_4
    return-object p1
.end method

.method public d()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcw0;->I:Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcw0;->f:I

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcw0;->b:I

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcw0;->d:I

    return v0
.end method

.method public h()I
    .locals 2

    iget v0, p0, Lcw0;->b:I

    if-lez v0, :cond_1

    iget-object v1, p0, Lcw0;->D:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    :goto_0
    iget v1, p0, Lcw0;->d:I

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget v1, p0, Lcw0;->f:I

    :goto_2
    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcw0;->D:Landroid/graphics/Bitmap;

    const-string v1, "8"

    if-eqz v0, :cond_2

    iget v0, p0, Lcw0;->g:I

    int-to-float v0, v0

    invoke-static {v1, v0}, Loe1;->R(Ljava/lang/String;F)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Lcw0;->m:I

    add-int/2addr v0, v1

    iget v1, p0, Lcw0;->n:I

    goto :goto_2

    :cond_2
    iget v0, p0, Lcw0;->g:I

    int-to-float v0, v0

    invoke-static {v1, v0}, Loe1;->R(Ljava/lang/String;F)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Lcw0;->m:I

    add-int/2addr v0, v1

    iget v1, p0, Lcw0;->n:I

    add-int/2addr v0, v1

    iget v1, p0, Lcw0;->d:I

    add-int/2addr v0, v1

    iget v1, p0, Lcw0;->f:I

    goto :goto_1
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcw0;->a:I

    return v0
.end method

.method public j()F
    .locals 3

    iget-object v0, p0, Lcw0;->I:Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;

    invoke-virtual {v0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->getMaxProgress()F

    move-result v0

    iget-object v1, p0, Lcw0;->I:Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;

    invoke-virtual {v1}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->getMinProgress()F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcw0;->I:Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;

    invoke-virtual {v1}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->getMinProgress()F

    move-result v1

    iget v2, p0, Lcw0;->x:F

    mul-float v0, v0, v2

    add-float/2addr v1, v0

    return v1
.end method

.method public k()F
    .locals 2

    invoke-virtual {p0}, Lcw0;->f()I

    move-result v0

    invoke-virtual {p0}, Lcw0;->e()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcw0;->g()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcw0;->n()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public l()Landroid/content/res/Resources;
    .locals 1

    invoke-virtual {p0}, Lcw0;->d()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcw0;->d()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lcw0;->r:I

    return v0
.end method

.method public n()F
    .locals 2

    iget v0, p0, Lcw0;->r:I

    int-to-float v0, v0

    iget v1, p0, Lcw0;->s:F

    mul-float v0, v0, v1

    return v0
.end method

.method public o()F
    .locals 1

    iget v0, p0, Lcw0;->s:F

    return v0
.end method

.method public p()F
    .locals 2

    iget v0, p0, Lcw0;->q:I

    int-to-float v0, v0

    iget v1, p0, Lcw0;->s:F

    mul-float v0, v0, v1

    return v0
.end method

.method public q()I
    .locals 1

    iget v0, p0, Lcw0;->q:I

    return v0
.end method

.method public final r(Landroid/util/AttributeSet;)V
    .locals 6

    invoke-virtual {p0}, Lcw0;->d()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Ljq0;->RangeSeekBar:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcw0;->d:I

    const/4 v0, 0x3

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcw0;->e:I

    const/16 v0, 0xb

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcw0;->a:I

    const/4 v0, 0x4

    const/4 v4, -0x1

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, p0, Lcw0;->b:I

    const/16 v0, 0xe

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v5

    iput v5, p0, Lcw0;->c:I

    const/16 v5, 0xd

    invoke-static {v0}, Loe1;->c(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcw0;->g:I

    const/16 v0, 0xc

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcw0;->h:I

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcw0;->d()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f060191

    invoke-static {v4, v5}, Lg8;->d(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcw0;->j:I

    const/4 v0, 0x7

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcw0;->k:I

    const/16 v0, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcw0;->l:I

    const/16 v0, 0x9

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcw0;->m:I

    const/4 v0, 0x6

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcw0;->n:I

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcw0;->f:I

    const/16 v0, 0x20

    const v3, 0x7f08042c

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcw0;->o:I

    const/16 v0, 0x22

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcw0;->p:I

    const/16 v0, 0x24

    const/16 v2, 0x1a

    invoke-static {v2}, Loe1;->c(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcw0;->q:I

    const/16 v0, 0x21

    invoke-static {v2}, Loe1;->c(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcw0;->r:I

    const/16 v0, 0x23

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcw0;->s:F

    const/16 v0, 0xa

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcw0;->i:F

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public final s()V
    .locals 3

    iget v0, p0, Lcw0;->e:I

    invoke-virtual {p0, v0}, Lcw0;->D(I)V

    iget v0, p0, Lcw0;->o:I

    iget v1, p0, Lcw0;->q:I

    iget v2, p0, Lcw0;->r:I

    invoke-virtual {p0, v0, v1, v2}, Lcw0;->I(III)V

    iget v0, p0, Lcw0;->p:I

    iget v1, p0, Lcw0;->q:I

    iget v2, p0, Lcw0;->r:I

    invoke-virtual {p0, v0, v1, v2}, Lcw0;->J(III)V

    return-void
.end method

.method public t()V
    .locals 2

    iget v0, p0, Lcw0;->q:I

    iput v0, p0, Lcw0;->P:I

    iget v0, p0, Lcw0;->r:I

    iput v0, p0, Lcw0;->Q:I

    iget v0, p0, Lcw0;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcw0;->g:I

    int-to-float v0, v0

    const-string v1, "8"

    invoke-static {v1, v0}, Loe1;->R(Ljava/lang/String;F)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Lcw0;->m:I

    add-int/2addr v0, v1

    iget v1, p0, Lcw0;->n:I

    add-int/2addr v0, v1

    iput v0, p0, Lcw0;->b:I

    :cond_0
    iget v0, p0, Lcw0;->f:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcw0;->q:I

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcw0;->f:I

    :cond_1
    return-void
.end method

.method public synthetic v(Lqi1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcw0;->u(Lqi1;)V

    return-void
.end method

.method public w()V
    .locals 3

    iget-object v0, p0, Lcw0;->E:Lqi1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lqi1;->c()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcw0;->y:F

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-static {v0}, Lqi1;->A([F)Lqi1;

    move-result-object v0

    iput-object v0, p0, Lcw0;->E:Lqi1;

    new-instance v1, Law0;

    invoke-direct {v1, p0}, Law0;-><init>(Lcw0;)V

    invoke-virtual {v0, v1}, Lqi1;->q(Lqi1$g;)V

    iget-object v0, p0, Lcw0;->E:Lqi1;

    new-instance v1, Lcw0$a;

    invoke-direct {v1, p0}, Lcw0$a;-><init>(Lcw0;)V

    invoke-virtual {v0, v1}, Lhi1;->b(Lhi1$a;)V

    iget-object v0, p0, Lcw0;->E:Lqi1;

    invoke-virtual {v0}, Lqi1;->H()V

    return-void
.end method

.method public x(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;)V
    .locals 9

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcw0;->g:I

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v0, p0, Lcw0;->j:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcw0;->L:Landroid/graphics/Rect;

    invoke-virtual {p2, p3, v0, v1, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v0, p0, Lcw0;->L:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, p0, Lcw0;->k:I

    add-int/2addr v0, v1

    iget v1, p0, Lcw0;->l:I

    add-int/2addr v0, v1

    iget v1, p0, Lcw0;->c:I

    if-le v1, v0, :cond_1

    move v0, v1

    :cond_1
    iget-object v1, p0, Lcw0;->L:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p0, Lcw0;->m:I

    add-int/2addr v1, v2

    iget v2, p0, Lcw0;->n:I

    add-int/2addr v1, v2

    iget v2, p0, Lcw0;->b:I

    if-le v2, v1, :cond_2

    move v1, v2

    :cond_2
    iget-object v2, p0, Lcw0;->M:Landroid/graphics/Rect;

    iget v3, p0, Lcw0;->P:I

    int-to-float v4, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    int-to-float v6, v0

    div-float/2addr v6, v5

    sub-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcw0;->w:I

    sub-int/2addr v5, v1

    iget v6, p0, Lcw0;->Q:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcw0;->d:I

    sub-int/2addr v5, v6

    iput v5, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v0

    iput v4, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v1

    iput v5, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcw0;->D:Landroid/graphics/Bitmap;

    if-nez v2, :cond_3

    div-int/lit8 v3, v3, 0x2

    iget v2, p0, Lcw0;->f:I

    sub-int v4, v3, v2

    sub-int v6, v5, v2

    add-int/2addr v2, v3

    iget-object v7, p0, Lcw0;->K:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    iget-object v7, p0, Lcw0;->K:Landroid/graphics/Path;

    int-to-float v3, v3

    int-to-float v5, v5

    invoke-virtual {v7, v3, v5}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v3, p0, Lcw0;->K:Landroid/graphics/Path;

    int-to-float v4, v4

    int-to-float v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, p0, Lcw0;->K:Landroid/graphics/Path;

    int-to-float v2, v2

    invoke-virtual {v3, v2, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lcw0;->K:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    iget-object v2, p0, Lcw0;->K:Landroid/graphics/Path;

    invoke-virtual {p1, v2, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v2, p0, Lcw0;->M:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcw0;->f:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    :cond_3
    const/4 v2, 0x1

    invoke-static {v2}, Loe1;->c(I)I

    move-result v3

    iget-object v4, p0, Lcw0;->M:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcw0;->I:Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;

    invoke-virtual {v5}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->getProgressWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcw0;->x:F

    mul-float v5, v5, v6

    float-to-int v5, v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcw0;->I:Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;

    invoke-virtual {v5}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->getProgressLeft()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v4, v3

    iget-object v5, p0, Lcw0;->M:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lcw0;->I:Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;

    invoke-virtual {v6}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->getProgressWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x3f800000    # 1.0f

    iget v8, p0, Lcw0;->x:F

    sub-float/2addr v7, v8

    mul-float v6, v6, v7

    float-to-int v6, v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcw0;->I:Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;

    invoke-virtual {v6}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->getProgressPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v5, v3

    if-lez v4, :cond_4

    iget-object v3, p0, Lcw0;->M:Landroid/graphics/Rect;

    iget v5, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v4

    iput v5, v3, Landroid/graphics/Rect;->left:I

    iget v5, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v4

    iput v5, v3, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_4
    if-lez v5, :cond_5

    iget-object v3, p0, Lcw0;->M:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->left:I

    iget v4, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    :cond_5
    :goto_0
    iget-object v3, p0, Lcw0;->D:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_6

    iget-object v4, p0, Lcw0;->M:Landroid/graphics/Rect;

    invoke-static {p1, p2, v3, v4}, Loe1;->d(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_6
    iget v3, p0, Lcw0;->i:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_7

    new-instance v3, Landroid/graphics/RectF;

    iget-object v4, p0, Lcw0;->M:Landroid/graphics/Rect;

    invoke-direct {v3, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget v4, p0, Lcw0;->i:F

    invoke-virtual {p1, v3, v4, v4, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_7
    iget-object v3, p0, Lcw0;->M:Landroid/graphics/Rect;

    invoke-virtual {p1, v3, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_1
    iget v3, p0, Lcw0;->k:I

    if-lez v3, :cond_8

    iget-object v0, p0, Lcw0;->M:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v3

    goto :goto_2

    :cond_8
    iget v3, p0, Lcw0;->l:I

    if-lez v3, :cond_9

    iget-object v0, p0, Lcw0;->M:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v3

    iget-object v3, p0, Lcw0;->L:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v0, v3

    goto :goto_2

    :cond_9
    iget-object v3, p0, Lcw0;->M:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcw0;->L:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v3

    :goto_2
    iget v3, p0, Lcw0;->m:I

    if-lez v3, :cond_a

    iget-object v1, p0, Lcw0;->M:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcw0;->L:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcw0;->m:I

    add-int/2addr v1, v2

    goto :goto_3

    :cond_a
    iget v3, p0, Lcw0;->n:I

    if-lez v3, :cond_b

    iget-object v1, p0, Lcw0;->M:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcw0;->L:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcw0;->n:I

    sub-int/2addr v1, v2

    goto :goto_3

    :cond_b
    iget-object v3, p0, Lcw0;->M:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcw0;->L:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v3, v1

    add-int/lit8 v1, v3, 0x1

    :goto_3
    iget v2, p0, Lcw0;->h:I

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {p1, p3, v0, v1, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public y(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v0, p0, Lcw0;->C:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-boolean v4, p0, Lcw0;->G:Z

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcw0;->B:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    :goto_0
    iget-object v4, p0, Lcw0;->I:Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;

    invoke-virtual {v4}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->getProgressTop()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcw0;->I:Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;

    invoke-virtual {v5}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->getProgressHeight()I

    move-result v5

    iget v6, p0, Lcw0;->Q:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v2

    add-float/2addr v4, v5

    invoke-virtual {p1, v0, v3, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public z(II)V
    .locals 2

    invoke-virtual {p0}, Lcw0;->t()V

    invoke-virtual {p0}, Lcw0;->s()V

    int-to-float p1, p1

    invoke-virtual {p0}, Lcw0;->p()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float v0, p1, v0

    float-to-int v0, v0

    iput v0, p0, Lcw0;->t:I

    invoke-virtual {p0}, Lcw0;->p()F

    move-result v0

    div-float/2addr v0, v1

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcw0;->u:I

    invoke-virtual {p0}, Lcw0;->m()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    sub-int p1, p2, p1

    iput p1, p0, Lcw0;->v:I

    invoke-virtual {p0}, Lcw0;->m()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p2, p1

    iput p2, p0, Lcw0;->w:I

    return-void
.end method
