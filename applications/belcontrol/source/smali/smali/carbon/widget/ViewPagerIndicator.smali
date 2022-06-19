.class public Lcarbon/widget/ViewPagerIndicator;
.super Landroid/view/View;
.source ""

# interfaces
.implements Lhe0;


# static fields
.field public static q:[I


# instance fields
.field public a:Lcarbon/widget/ViewPager;

.field public b:Landroid/graphics/Paint;

.field public c:F

.field public d:I

.field public f:Landroid/view/animation/DecelerateInterpolator;

.field public g:Landroid/animation/ValueAnimator;

.field public h:Landroidx/viewpager/widget/ViewPager$i;

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

    sget v1, Lp80;->ViewPagerIndicator_carbon_tint:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lp80;->ViewPagerIndicator_carbon_tintMode:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lp80;->ViewPagerIndicator_carbon_backgroundTint:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lp80;->ViewPagerIndicator_carbon_backgroundTintMode:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sget v1, Lp80;->ViewPagerIndicator_carbon_animateColorChanges:I

    const/4 v2, 0x4

    aput v1, v0, v2

    sput-object v0, Lcarbon/widget/ViewPagerIndicator;->q:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    sget v0, Lh80;->carbon_viewPagerIndicatorStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {p1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcarbon/widget/ViewPagerIndicator;->b:Landroid/graphics/Paint;

    const/4 p1, 0x0

    iput p1, p0, Lcarbon/widget/ViewPagerIndicator;->c:F

    const/4 p1, 0x0

    iput p1, p0, Lcarbon/widget/ViewPagerIndicator;->d:I

    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcarbon/widget/ViewPagerIndicator;->f:Landroid/view/animation/DecelerateInterpolator;

    new-instance p1, Lcarbon/widget/ViewPagerIndicator$a;

    invoke-direct {p1, p0}, Lcarbon/widget/ViewPagerIndicator$a;-><init>(Lcarbon/widget/ViewPagerIndicator;)V

    iput-object p1, p0, Lcarbon/widget/ViewPagerIndicator;->h:Landroidx/viewpager/widget/ViewPager$i;

    new-instance p1, Lbh0;

    invoke-direct {p1, p0}, Lbh0;-><init>(Lcarbon/widget/ViewPagerIndicator;)V

    iput-object p1, p0, Lcarbon/widget/ViewPagerIndicator;->o:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance p1, Lch0;

    invoke-direct {p1, p0}, Lch0;-><init>(Lcarbon/widget/ViewPagerIndicator;)V

    iput-object p1, p0, Lcarbon/widget/ViewPagerIndicator;->p:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p0, v1, v0}, Lcarbon/widget/ViewPagerIndicator;->g(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    sget-object v0, Lp80;->ViewPagerIndicator:[I

    sget v1, Lh80;->carbon_viewPagerIndicatorStyle:I

    sget v2, Lp80;->ViewPagerIndicator_carbon_theme:I

    invoke-static {p1, p2, v0, v1, v2}, Ld80;->h(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, v1}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcarbon/widget/ViewPagerIndicator;->b:Landroid/graphics/Paint;

    const/4 p1, 0x0

    iput p1, p0, Lcarbon/widget/ViewPagerIndicator;->c:F

    const/4 p1, 0x0

    iput p1, p0, Lcarbon/widget/ViewPagerIndicator;->d:I

    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcarbon/widget/ViewPagerIndicator;->f:Landroid/view/animation/DecelerateInterpolator;

    new-instance p1, Lcarbon/widget/ViewPagerIndicator$a;

    invoke-direct {p1, p0}, Lcarbon/widget/ViewPagerIndicator$a;-><init>(Lcarbon/widget/ViewPagerIndicator;)V

    iput-object p1, p0, Lcarbon/widget/ViewPagerIndicator;->h:Landroidx/viewpager/widget/ViewPager$i;

    new-instance p1, Lbh0;

    invoke-direct {p1, p0}, Lbh0;-><init>(Lcarbon/widget/ViewPagerIndicator;)V

    iput-object p1, p0, Lcarbon/widget/ViewPagerIndicator;->o:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance p1, Lch0;

    invoke-direct {p1, p0}, Lch0;-><init>(Lcarbon/widget/ViewPagerIndicator;)V

    iput-object p1, p0, Lcarbon/widget/ViewPagerIndicator;->p:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p0, p2, v1}, Lcarbon/widget/ViewPagerIndicator;->g(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    sget-object v0, Lp80;->ViewPagerIndicator:[I

    sget v1, Lp80;->ViewPagerIndicator_carbon_theme:I

    invoke-static {p1, p2, v0, p3, v1}, Ld80;->h(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcarbon/widget/ViewPagerIndicator;->b:Landroid/graphics/Paint;

    const/4 p1, 0x0

    iput p1, p0, Lcarbon/widget/ViewPagerIndicator;->c:F

    const/4 p1, 0x0

    iput p1, p0, Lcarbon/widget/ViewPagerIndicator;->d:I

    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcarbon/widget/ViewPagerIndicator;->f:Landroid/view/animation/DecelerateInterpolator;

    new-instance p1, Lcarbon/widget/ViewPagerIndicator$a;

    invoke-direct {p1, p0}, Lcarbon/widget/ViewPagerIndicator$a;-><init>(Lcarbon/widget/ViewPagerIndicator;)V

    iput-object p1, p0, Lcarbon/widget/ViewPagerIndicator;->h:Landroidx/viewpager/widget/ViewPager$i;

    new-instance p1, Lbh0;

    invoke-direct {p1, p0}, Lbh0;-><init>(Lcarbon/widget/ViewPagerIndicator;)V

    iput-object p1, p0, Lcarbon/widget/ViewPagerIndicator;->o:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance p1, Lch0;

    invoke-direct {p1, p0}, Lch0;-><init>(Lcarbon/widget/ViewPagerIndicator;)V

    iput-object p1, p0, Lcarbon/widget/ViewPagerIndicator;->p:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p0, p2, p3}, Lcarbon/widget/ViewPagerIndicator;->g(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Lcarbon/widget/ViewPagerIndicator;)I
    .locals 0

    iget p0, p0, Lcarbon/widget/ViewPagerIndicator;->d:I

    return p0
.end method

.method public static synthetic b(Lcarbon/widget/ViewPagerIndicator;I)I
    .locals 0

    iput p1, p0, Lcarbon/widget/ViewPagerIndicator;->d:I

    return p1
.end method

.method public static synthetic c(Lcarbon/widget/ViewPagerIndicator;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcarbon/widget/ViewPagerIndicator;->g:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static synthetic d(Lcarbon/widget/ViewPagerIndicator;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcarbon/widget/ViewPagerIndicator;->g:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method public static synthetic e(Lcarbon/widget/ViewPagerIndicator;)F
    .locals 0

    iget p0, p0, Lcarbon/widget/ViewPagerIndicator;->c:F

    return p0
.end method

.method public static synthetic f(Lcarbon/widget/ViewPagerIndicator;F)F
    .locals 0

    iput p1, p0, Lcarbon/widget/ViewPagerIndicator;->c:F

    return p1
.end method

.method private synthetic h(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0}, Lcarbon/widget/ViewPagerIndicator;->m()V

    invoke-static {p0}, Ljb;->d0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic j(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0}, Lcarbon/widget/ViewPagerIndicator;->l()V

    invoke-static {p0}, Ljb;->d0(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 13

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcarbon/widget/ViewPagerIndicator;->a:Lcarbon/widget/ViewPager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Lg40;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcarbon/widget/ViewPagerIndicator;->a:Lcarbon/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Lg40;

    move-result-object v0

    invoke-virtual {v0}, Lg40;->e()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    iget-object v1, p0, Lcarbon/widget/ViewPagerIndicator;->b:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v1, v3

    const/4 v4, 0x1

    if-le v0, v4, :cond_4

    invoke-virtual {p0}, Lcarbon/widget/ViewPagerIndicator;->getTint()Landroid/content/res/ColorStateList;

    move-result-object v5

    new-array v6, v4, [I

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    const v7, 0x101009e

    goto :goto_1

    :cond_1
    const v7, -0x101009e

    :goto_1
    const/4 v8, 0x0

    aput v7, v6, v8

    invoke-virtual {p0}, Lcarbon/widget/ViewPagerIndicator;->getTint()Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v5

    iget-object v6, p0, Lcarbon/widget/ViewPagerIndicator;->b:Landroid/graphics/Paint;

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v9

    sub-int/2addr v7, v9

    mul-int v7, v7, v5

    add-int/lit8 v9, v0, -0x1

    div-int/2addr v7, v9

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v2

    iget-object v9, p0, Lcarbon/widget/ViewPagerIndicator;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v1, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcarbon/widget/ViewPagerIndicator;->b:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Lcarbon/widget/ViewPagerIndicator;->getTint()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x2

    new-array v6, v6, [I

    fill-array-data v6, :array_0

    goto :goto_3

    :cond_3
    new-array v6, v4, [I

    const v7, -0x10100a1

    aput v7, v6, v8

    :goto_3
    invoke-virtual {p0}, Lcarbon/widget/ViewPagerIndicator;->getTint()Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v5

    iget-object v6, p0, Lcarbon/widget/ViewPagerIndicator;->b:Landroid/graphics/Paint;

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget v6, p0, Lcarbon/widget/ViewPagerIndicator;->c:F

    float-to-double v7, v6

    float-to-double v9, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    sub-double/2addr v7, v9

    double-to-float v6, v7

    iget-object v7, p0, Lcarbon/widget/ViewPagerIndicator;->b:Landroid/graphics/Paint;

    sub-float/2addr v3, v6

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    int-to-float v8, v8

    mul-float v3, v3, v8

    float-to-int v3, v3

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    float-to-double v7, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v9

    sub-int/2addr v3, v9

    int-to-double v9, v3

    iget v3, p0, Lcarbon/widget/ViewPagerIndicator;->c:F

    float-to-double v11, v3

    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    mul-double v9, v9, v11

    sub-int/2addr v0, v4

    int-to-double v3, v0

    div-double/2addr v9, v3

    add-double/2addr v7, v9

    double-to-float v0, v7

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v2

    iget-object v8, p0, Lcarbon/widget/ViewPagerIndicator;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v7, v1, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcarbon/widget/ViewPagerIndicator;->b:Landroid/graphics/Paint;

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    int-to-float v5, v5

    mul-float v6, v6, v5

    float-to-int v5, v6

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    float-to-double v5, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    sub-int/2addr v0, v7

    int-to-double v7, v0

    iget v0, p0, Lcarbon/widget/ViewPagerIndicator;->c:F

    float-to-double v9, v0

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    mul-double v7, v7, v9

    div-double/2addr v7, v3

    add-double/2addr v5, v7

    double-to-float v0, v5

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcarbon/widget/ViewPagerIndicator;->getTint()Landroid/content/res/ColorStateList;

    move-result-object v0

    const v3, 0x10100a1

    new-array v3, v3, [I

    invoke-virtual {p0}, Lcarbon/widget/ViewPagerIndicator;->getTint()Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iget-object v3, p0, Lcarbon/widget/ViewPagerIndicator;->b:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcarbon/widget/ViewPagerIndicator;->b:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    iget-object v2, p0, Lcarbon/widget/ViewPagerIndicator;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void

    :array_0
    .array-data 4
        0x10100a1
        0x101009e
    .end array-data
.end method

.method public final g(Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lp80;->ViewPagerIndicator:[I

    sget v2, Lo80;->carbon_ViewPagerIndicator:I

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget-object p2, Lcarbon/widget/ViewPagerIndicator;->q:[I

    invoke-static {p0, p1, p2}, Ld80;->t(Lhe0;Landroid/content/res/TypedArray;[I)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public getBackgroundTint()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/ViewPagerIndicator;->l:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/ViewPagerIndicator;->m:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getTint()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/ViewPagerIndicator;->j:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/ViewPagerIndicator;->k:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getViewPager()Lcarbon/widget/ViewPager;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/ViewPagerIndicator;->a:Lcarbon/widget/ViewPager;

    return-object v0
.end method

.method public synthetic i(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcarbon/widget/ViewPagerIndicator;->h(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public synthetic k(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcarbon/widget/ViewPagerIndicator;->j(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public final l()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcarbon/widget/ViewPagerIndicator;->l:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcarbon/widget/ViewPagerIndicator;->m:Landroid/graphics/PorterDuff$Mode;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    iget-object v2, p0, Lcarbon/widget/ViewPagerIndicator;->l:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    iget-object v3, p0, Lcarbon/widget/ViewPagerIndicator;->k:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_0
    return-void
.end method

.method public final m()V
    .locals 3

    iget-object v0, p0, Lcarbon/widget/ViewPagerIndicator;->j:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    iget-object v2, p0, Lcarbon/widget/ViewPagerIndicator;->j:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    return-void
.end method

.method public setAnimateColorChangesEnabled(Z)V
    .locals 1

    iput-boolean p1, p0, Lcarbon/widget/ViewPagerIndicator;->n:Z

    iget-object p1, p0, Lcarbon/widget/ViewPagerIndicator;->j:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcarbon/animation/AnimatedColorStateList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcarbon/widget/ViewPagerIndicator;->o:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-static {p1, v0}, Lcarbon/animation/AnimatedColorStateList;->b(Landroid/content/res/ColorStateList;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Lcarbon/animation/AnimatedColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcarbon/widget/ViewPagerIndicator;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    iget-object p1, p0, Lcarbon/widget/ViewPagerIndicator;->l:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcarbon/animation/AnimatedColorStateList;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcarbon/widget/ViewPagerIndicator;->p:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-static {p1, v0}, Lcarbon/animation/AnimatedColorStateList;->b(Landroid/content/res/ColorStateList;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Lcarbon/animation/AnimatedColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcarbon/widget/ViewPagerIndicator;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method

.method public setBackgroundTint(I)V
    .locals 0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcarbon/widget/ViewPagerIndicator;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-boolean v0, p0, Lcarbon/widget/ViewPagerIndicator;->n:Z

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcarbon/animation/AnimatedColorStateList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcarbon/widget/ViewPagerIndicator;->p:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-static {p1, v0}, Lcarbon/animation/AnimatedColorStateList;->b(Landroid/content/res/ColorStateList;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Lcarbon/animation/AnimatedColorStateList;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcarbon/widget/ViewPagerIndicator;->l:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcarbon/widget/ViewPagerIndicator;->l()V

    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    iput-object p1, p0, Lcarbon/widget/ViewPagerIndicator;->m:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0}, Lcarbon/widget/ViewPagerIndicator;->l()V

    return-void
.end method

.method public setTint(I)V
    .locals 0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcarbon/widget/ViewPagerIndicator;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcarbon/widget/ViewPagerIndicator;->n:Z

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcarbon/animation/AnimatedColorStateList;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcarbon/widget/ViewPagerIndicator;->o:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-static {p1, v0}, Lcarbon/animation/AnimatedColorStateList;->b(Landroid/content/res/ColorStateList;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Lcarbon/animation/AnimatedColorStateList;

    move-result-object p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcarbon/widget/ViewPagerIndicator;->j:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcarbon/widget/ViewPagerIndicator;->m()V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    iput-object p1, p0, Lcarbon/widget/ViewPagerIndicator;->k:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0}, Lcarbon/widget/ViewPagerIndicator;->m()V

    return-void
.end method

.method public setViewPager(Lcarbon/widget/ViewPager;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcarbon/widget/ViewPagerIndicator;->h:Landroidx/viewpager/widget/ViewPager$i;

    invoke-virtual {p1, v0}, Lcarbon/widget/ViewPager;->J(Landroidx/viewpager/widget/ViewPager$i;)V

    :cond_0
    iput-object p1, p0, Lcarbon/widget/ViewPagerIndicator;->a:Lcarbon/widget/ViewPager;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcarbon/widget/ViewPagerIndicator;->h:Landroidx/viewpager/widget/ViewPager$i;

    invoke-virtual {p1, v0}, Lcarbon/widget/ViewPager;->c(Landroidx/viewpager/widget/ViewPager$i;)V

    :cond_1
    return-void
.end method
