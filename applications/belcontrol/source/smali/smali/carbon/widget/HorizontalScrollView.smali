.class public Lcarbon/widget/HorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source ""

# interfaces
.implements Lhe0;


# static fields
.field public static q:[I


# instance fields
.field public a:I

.field public b:Ltb0;

.field public c:Ltb0;

.field public d:Z

.field public f:F

.field public g:I

.field public h:J

.field public j:Landroid/content/res/ColorStateList;

.field public k:Landroid/graphics/PorterDuff$Mode;

.field public l:Landroid/content/res/ColorStateList;

.field public m:Landroid/graphics/PorterDuff$Mode;

.field public n:Z

.field public o:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field public p:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    sget v1, Lp80;->HorizontalScrollView_carbon_tint:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lp80;->HorizontalScrollView_carbon_tintMode:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lp80;->HorizontalScrollView_carbon_backgroundTint:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lp80;->HorizontalScrollView_carbon_backgroundTintMode:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sget v1, Lp80;->HorizontalScrollView_carbon_animateColorChanges:I

    const/4 v2, 0x4

    aput v1, v0, v2

    sput-object v0, Lcarbon/widget/HorizontalScrollView;->q:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Lf80;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcarbon/widget/HorizontalScrollView;->d:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcarbon/widget/HorizontalScrollView;->h:J

    new-instance p1, Lrf0;

    invoke-direct {p1, p0}, Lrf0;-><init>(Lcarbon/widget/HorizontalScrollView;)V

    iput-object p1, p0, Lcarbon/widget/HorizontalScrollView;->o:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance p1, Lsf0;

    invoke-direct {p1, p0}, Lsf0;-><init>(Lcarbon/widget/HorizontalScrollView;)V

    iput-object p1, p0, Lcarbon/widget/HorizontalScrollView;->p:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    const/4 p1, 0x0

    const v0, 0x1010353

    invoke-virtual {p0, p1, v0}, Lcarbon/widget/HorizontalScrollView;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    sget-object v0, Lp80;->HorizontalScrollView:[I

    sget v1, Lp80;->HorizontalScrollView_carbon_theme:I

    const v2, 0x1010353

    invoke-static {p1, p2, v0, v2, v1}, Ld80;->h(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcarbon/widget/HorizontalScrollView;->d:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcarbon/widget/HorizontalScrollView;->h:J

    new-instance p1, Lrf0;

    invoke-direct {p1, p0}, Lrf0;-><init>(Lcarbon/widget/HorizontalScrollView;)V

    iput-object p1, p0, Lcarbon/widget/HorizontalScrollView;->o:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance p1, Lsf0;

    invoke-direct {p1, p0}, Lsf0;-><init>(Lcarbon/widget/HorizontalScrollView;)V

    iput-object p1, p0, Lcarbon/widget/HorizontalScrollView;->p:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p0, p2, v2}, Lcarbon/widget/HorizontalScrollView;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    sget-object v0, Lp80;->HorizontalScrollView:[I

    sget v1, Lp80;->HorizontalScrollView_carbon_theme:I

    invoke-static {p1, p2, v0, p3, v1}, Ld80;->h(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcarbon/widget/HorizontalScrollView;->d:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcarbon/widget/HorizontalScrollView;->h:J

    new-instance p1, Lrf0;

    invoke-direct {p1, p0}, Lrf0;-><init>(Lcarbon/widget/HorizontalScrollView;)V

    iput-object p1, p0, Lcarbon/widget/HorizontalScrollView;->o:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance p1, Lsf0;

    invoke-direct {p1, p0}, Lsf0;-><init>(Lcarbon/widget/HorizontalScrollView;)V

    iput-object p1, p0, Lcarbon/widget/HorizontalScrollView;->p:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p0, p2, p3}, Lcarbon/widget/HorizontalScrollView;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private synthetic b(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0}, Lcarbon/widget/HorizontalScrollView;->g()V

    invoke-static {p0}, Ljb;->d0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic d(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0}, Lcarbon/widget/HorizontalScrollView;->f()V

    invoke-static {p0}, Ljb;->d0(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcarbon/widget/HorizontalScrollView;->a:I

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lp80;->HorizontalScrollView:[I

    sget v2, Lo80;->carbon_HorizontalScrollView:I

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    sget v2, Lp80;->HorizontalScrollView_carbon_overScroll:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcarbon/widget/HorizontalScrollView;->setOverScrollMode(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcarbon/widget/HorizontalScrollView;->q:[I

    invoke-static {p0, p1, v0}, Ld80;->t(Lhe0;Landroid/content/res/TypedArray;[I)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, p2}, Landroid/widget/HorizontalScrollView;->setWillNotDraw(Z)V

    return-void
.end method

.method public synthetic c(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcarbon/widget/HorizontalScrollView;->b(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_9

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_9

    goto/16 :goto_3

    :cond_0
    iget v0, p0, Lcarbon/widget/HorizontalScrollView;->f:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v0, v3

    iget-boolean v3, p0, Lcarbon/widget/HorizontalScrollView;->d:Z

    const/4 v4, 0x0

    if-nez v3, :cond_3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v5, p0, Lcarbon/widget/HorizontalScrollView;->a:I

    int-to-float v5, v5

    cmpl-float v3, v3, v5

    if-lez v3, :cond_3

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1
    iput-boolean v2, p0, Lcarbon/widget/HorizontalScrollView;->d:Z

    cmpl-float v3, v0, v4

    if-lez v3, :cond_2

    iget v3, p0, Lcarbon/widget/HorizontalScrollView;->a:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    goto :goto_0

    :cond_2
    iget v3, p0, Lcarbon/widget/HorizontalScrollView;->a:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    :cond_3
    :goto_0
    iget-boolean v3, p0, Lcarbon/widget/HorizontalScrollView;->d:Z

    if-eqz v3, :cond_a

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->computeHorizontalScrollRange()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcarbon/widget/HorizontalScrollView;->g:I

    if-eqz v6, :cond_4

    if-ne v6, v2, :cond_5

    if-lez v5, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    if-eqz v1, :cond_a

    int-to-float v1, v3

    add-float/2addr v1, v0

    cmpg-float v2, v1, v4

    if-gez v2, :cond_6

    iget-object v1, p0, Lcarbon/widget/HorizontalScrollView;->b:Ltb0;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Ltb0;->d(FF)V

    iget-object v0, p0, Lcarbon/widget/HorizontalScrollView;->c:Ltb0;

    invoke-virtual {v0}, Ltb0;->b()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcarbon/widget/HorizontalScrollView;->c:Ltb0;

    :goto_1
    invoke-virtual {v0}, Ltb0;->e()V

    goto :goto_2

    :cond_6
    int-to-float v2, v5

    cmpl-float v1, v1, v2

    if-lez v1, :cond_7

    iget-object v1, p0, Lcarbon/widget/HorizontalScrollView;->c:Ltb0;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Ltb0;->d(FF)V

    iget-object v0, p0, Lcarbon/widget/HorizontalScrollView;->b:Ltb0;

    invoke-virtual {v0}, Ltb0;->b()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcarbon/widget/HorizontalScrollView;->b:Ltb0;

    goto :goto_1

    :cond_7
    :goto_2
    iget-object v0, p0, Lcarbon/widget/HorizontalScrollView;->b:Ltb0;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ltb0;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcarbon/widget/HorizontalScrollView;->c:Ltb0;

    invoke-virtual {v0}, Ltb0;->b()Z

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->postInvalidate()V

    goto :goto_3

    :cond_9
    iget-boolean v0, p0, Lcarbon/widget/HorizontalScrollView;->d:Z

    if-eqz v0, :cond_a

    iput-boolean v1, p0, Lcarbon/widget/HorizontalScrollView;->d:Z

    iget-object v0, p0, Lcarbon/widget/HorizontalScrollView;->b:Ltb0;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ltb0;->e()V

    iget-object v0, p0, Lcarbon/widget/HorizontalScrollView;->c:Ltb0;

    invoke-virtual {v0}, Ltb0;->e()V

    :cond_a
    :goto_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcarbon/widget/HorizontalScrollView;->f:F

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcarbon/widget/HorizontalScrollView;->b:Ltb0;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lcarbon/widget/HorizontalScrollView;->b:Ltb0;

    invoke-virtual {v1}, Ltb0;->b()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    const/high16 v3, 0x43870000    # 270.0f

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v3, v2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, Lcarbon/widget/HorizontalScrollView;->b:Ltb0;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Ltb0;->g(II)V

    iget-object v2, p0, Lcarbon/widget/HorizontalScrollView;->b:Ltb0;

    invoke-virtual {v2, p1}, Ltb0;->a(Landroid/graphics/Canvas;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->postInvalidate()V

    :cond_0
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_1
    iget-object v1, p0, Lcarbon/widget/HorizontalScrollView;->c:Ltb0;

    invoke-virtual {v1}, Ltb0;->b()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    const/high16 v4, 0x42b40000    # 90.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingTop()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->computeHorizontalScrollRange()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v2

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcarbon/widget/HorizontalScrollView;->c:Ltb0;

    invoke-virtual {v0, v3, v2}, Ltb0;->g(II)V

    iget-object v0, p0, Lcarbon/widget/HorizontalScrollView;->c:Ltb0;

    invoke-virtual {v0, p1}, Ltb0;->a(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->postInvalidate()V

    :cond_2
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    return-void
.end method

.method public drawableStateChanged()V
    .locals 0

    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->drawableStateChanged()V

    invoke-virtual {p0}, Lcarbon/widget/HorizontalScrollView;->g()V

    return-void
.end method

.method public synthetic e(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcarbon/widget/HorizontalScrollView;->d(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public final f()V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcarbon/widget/HorizontalScrollView;->l:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcarbon/widget/HorizontalScrollView;->m:Landroid/graphics/PorterDuff$Mode;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getDrawableState()[I

    move-result-object v1

    iget-object v2, p0, Lcarbon/widget/HorizontalScrollView;->l:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    iget-object v3, p0, Lcarbon/widget/HorizontalScrollView;->k:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_0
    return-void
.end method

.method public final g()V
    .locals 3

    iget-object v0, p0, Lcarbon/widget/HorizontalScrollView;->j:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getDrawableState()[I

    move-result-object v1

    iget-object v2, p0, Lcarbon/widget/HorizontalScrollView;->j:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iget-object v1, p0, Lcarbon/widget/HorizontalScrollView;->b:Ltb0;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Ltb0;->f(I)V

    :cond_1
    iget-object v1, p0, Lcarbon/widget/HorizontalScrollView;->c:Ltb0;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Ltb0;->f(I)V

    :cond_2
    return-void
.end method

.method public getBackgroundTint()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/HorizontalScrollView;->l:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/HorizontalScrollView;->m:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getTint()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/HorizontalScrollView;->j:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/HorizontalScrollView;->k:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public onScrollChanged(IIII)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    iget-boolean p2, p0, Lcarbon/widget/HorizontalScrollView;->d:Z

    if-nez p2, :cond_5

    iget-object p2, p0, Lcarbon/widget/HorizontalScrollView;->b:Ltb0;

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->computeHorizontalScrollRange()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result p4

    sub-int/2addr p2, p4

    iget p4, p0, Lcarbon/widget/HorizontalScrollView;->g:I

    const/4 v0, 0x1

    if-eqz p4, :cond_2

    if-ne p4, v0, :cond_1

    if-lez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-eqz v0, :cond_5

    sub-int/2addr p1, p3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    int-to-float v0, p1

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float v0, v0, v1

    iget-wide v1, p0, Lcarbon/widget/HorizontalScrollView;->h:J

    sub-long v1, p3, v1

    long-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->computeHorizontalScrollOffset()I

    move-result v1

    if-nez v1, :cond_3

    if-gez p1, :cond_3

    iget-object p1, p0, Lcarbon/widget/HorizontalScrollView;->b:Ltb0;

    neg-int p2, v0

    invoke-virtual {p1, p2}, Ltb0;->c(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->computeHorizontalScrollOffset()I

    move-result v1

    if-ne v1, p2, :cond_4

    if-lez p1, :cond_4

    iget-object p1, p0, Lcarbon/widget/HorizontalScrollView;->c:Ltb0;

    invoke-virtual {p1, v0}, Ltb0;->c(I)V

    :cond_4
    :goto_1
    iput-wide p3, p0, Lcarbon/widget/HorizontalScrollView;->h:J

    :cond_5
    :goto_2
    return-void
.end method

.method public setAnimateColorChangesEnabled(Z)V
    .locals 1

    iput-boolean p1, p0, Lcarbon/widget/HorizontalScrollView;->n:Z

    iget-object p1, p0, Lcarbon/widget/HorizontalScrollView;->j:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcarbon/animation/AnimatedColorStateList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcarbon/widget/HorizontalScrollView;->o:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-static {p1, v0}, Lcarbon/animation/AnimatedColorStateList;->b(Landroid/content/res/ColorStateList;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Lcarbon/animation/AnimatedColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcarbon/widget/HorizontalScrollView;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    iget-object p1, p0, Lcarbon/widget/HorizontalScrollView;->l:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcarbon/animation/AnimatedColorStateList;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcarbon/widget/HorizontalScrollView;->p:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-static {p1, v0}, Lcarbon/animation/AnimatedColorStateList;->b(Landroid/content/res/ColorStateList;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Lcarbon/animation/AnimatedColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcarbon/widget/HorizontalScrollView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method

.method public setBackgroundTint(I)V
    .locals 0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcarbon/widget/HorizontalScrollView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-boolean v0, p0, Lcarbon/widget/HorizontalScrollView;->n:Z

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcarbon/animation/AnimatedColorStateList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcarbon/widget/HorizontalScrollView;->p:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-static {p1, v0}, Lcarbon/animation/AnimatedColorStateList;->b(Landroid/content/res/ColorStateList;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Lcarbon/animation/AnimatedColorStateList;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcarbon/widget/HorizontalScrollView;->l:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcarbon/widget/HorizontalScrollView;->f()V

    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    iput-object p1, p0, Lcarbon/widget/HorizontalScrollView;->m:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0}, Lcarbon/widget/HorizontalScrollView;->f()V

    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iget-object v1, p0, Lcarbon/widget/HorizontalScrollView;->b:Ltb0;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ltb0;

    invoke-direct {v2, v1}, Ltb0;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcarbon/widget/HorizontalScrollView;->b:Ltb0;

    new-instance v2, Ltb0;

    invoke-direct {v2, v1}, Ltb0;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcarbon/widget/HorizontalScrollView;->c:Ltb0;

    invoke-virtual {p0}, Lcarbon/widget/HorizontalScrollView;->g()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcarbon/widget/HorizontalScrollView;->b:Ltb0;

    iput-object v1, p0, Lcarbon/widget/HorizontalScrollView;->c:Ltb0;

    :cond_1
    :goto_0
    invoke-super {p0, v0}, Landroid/widget/HorizontalScrollView;->setOverScrollMode(I)V

    iput p1, p0, Lcarbon/widget/HorizontalScrollView;->g:I

    return-void
.end method

.method public setTint(I)V
    .locals 0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcarbon/widget/HorizontalScrollView;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcarbon/widget/HorizontalScrollView;->n:Z

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcarbon/animation/AnimatedColorStateList;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcarbon/widget/HorizontalScrollView;->o:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-static {p1, v0}, Lcarbon/animation/AnimatedColorStateList;->b(Landroid/content/res/ColorStateList;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Lcarbon/animation/AnimatedColorStateList;

    move-result-object p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcarbon/widget/HorizontalScrollView;->j:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcarbon/widget/HorizontalScrollView;->g()V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    iput-object p1, p0, Lcarbon/widget/HorizontalScrollView;->k:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0}, Lcarbon/widget/HorizontalScrollView;->g()V

    return-void
.end method
