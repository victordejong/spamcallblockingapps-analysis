.class public Lcarbon/widget/PagerTabStrip;
.super Landroid/widget/HorizontalScrollView;
.source ""

# interfaces
.implements Lhe0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcarbon/widget/PagerTabStrip$SavedState;
    }
.end annotation


# static fields
.field public static v:[I


# instance fields
.field public a:Lcarbon/widget/ViewPager;

.field public b:Landroid/graphics/Paint;

.field public c:Landroid/widget/LinearLayout;

.field public d:F

.field public f:I

.field public g:F

.field public h:F

.field public j:Landroid/view/animation/DecelerateInterpolator;

.field public k:Landroid/animation/ValueAnimator;

.field public l:Landroid/animation/ValueAnimator;

.field public m:Landroidx/viewpager/widget/ViewPager$i;

.field public n:Llh0;

.field public o:Landroid/content/res/ColorStateList;

.field public p:Landroid/graphics/PorterDuff$Mode;

.field public q:Landroid/content/res/ColorStateList;

.field public r:Landroid/graphics/PorterDuff$Mode;

.field public s:Z

.field public t:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field public u:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    sget v1, Lp80;->PagerTabStrip_carbon_tint:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lp80;->PagerTabStrip_carbon_tintMode:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lp80;->PagerTabStrip_carbon_backgroundTint:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lp80;->PagerTabStrip_carbon_backgroundTintMode:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sget v1, Lp80;->PagerTabStrip_carbon_animateColorChanges:I

    const/4 v2, 0x4

    aput v1, v0, v2

    sput-object v0, Lcarbon/widget/PagerTabStrip;->v:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    sget v0, Lh80;->carbon_pagerTabStripStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {p1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcarbon/widget/PagerTabStrip;->b:Landroid/graphics/Paint;

    const/4 p1, 0x0

    iput p1, p0, Lcarbon/widget/PagerTabStrip;->d:F

    const/4 v2, 0x0

    iput v2, p0, Lcarbon/widget/PagerTabStrip;->f:I

    iput p1, p0, Lcarbon/widget/PagerTabStrip;->g:F

    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcarbon/widget/PagerTabStrip;->j:Landroid/view/animation/DecelerateInterpolator;

    new-instance p1, Lcarbon/widget/PagerTabStrip$a;

    invoke-direct {p1, p0}, Lcarbon/widget/PagerTabStrip$a;-><init>(Lcarbon/widget/PagerTabStrip;)V

    iput-object p1, p0, Lcarbon/widget/PagerTabStrip;->m:Landroidx/viewpager/widget/ViewPager$i;

    new-instance p1, Lgg0;

    invoke-direct {p1, p0}, Lgg0;-><init>(Lcarbon/widget/PagerTabStrip;)V

    iput-object p1, p0, Lcarbon/widget/PagerTabStrip;->t:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance p1, Leg0;

    invoke-direct {p1, p0}, Leg0;-><init>(Lcarbon/widget/PagerTabStrip;)V

    iput-object p1, p0, Lcarbon/widget/PagerTabStrip;->u:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p0, v1, v0}, Lcarbon/widget/PagerTabStrip;->j(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    sget-object v0, Lp80;->PagerTabStrip:[I

    sget v1, Lh80;->carbon_pagerTabStripStyle:I

    sget v2, Lp80;->PagerTabStrip_carbon_theme:I

    invoke-static {p1, p2, v0, v1, v2}, Ld80;->h(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, v1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcarbon/widget/PagerTabStrip;->b:Landroid/graphics/Paint;

    const/4 p1, 0x0

    iput p1, p0, Lcarbon/widget/PagerTabStrip;->d:F

    const/4 v0, 0x0

    iput v0, p0, Lcarbon/widget/PagerTabStrip;->f:I

    iput p1, p0, Lcarbon/widget/PagerTabStrip;->g:F

    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcarbon/widget/PagerTabStrip;->j:Landroid/view/animation/DecelerateInterpolator;

    new-instance p1, Lcarbon/widget/PagerTabStrip$a;

    invoke-direct {p1, p0}, Lcarbon/widget/PagerTabStrip$a;-><init>(Lcarbon/widget/PagerTabStrip;)V

    iput-object p1, p0, Lcarbon/widget/PagerTabStrip;->m:Landroidx/viewpager/widget/ViewPager$i;

    new-instance p1, Lgg0;

    invoke-direct {p1, p0}, Lgg0;-><init>(Lcarbon/widget/PagerTabStrip;)V

    iput-object p1, p0, Lcarbon/widget/PagerTabStrip;->t:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance p1, Leg0;

    invoke-direct {p1, p0}, Leg0;-><init>(Lcarbon/widget/PagerTabStrip;)V

    iput-object p1, p0, Lcarbon/widget/PagerTabStrip;->u:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p0, p2, v1}, Lcarbon/widget/PagerTabStrip;->j(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    sget-object v0, Lp80;->PagerTabStrip:[I

    sget v1, Lp80;->PagerTabStrip_carbon_theme:I

    invoke-static {p1, p2, v0, p3, v1}, Ld80;->h(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcarbon/widget/PagerTabStrip;->b:Landroid/graphics/Paint;

    const/4 p1, 0x0

    iput p1, p0, Lcarbon/widget/PagerTabStrip;->d:F

    const/4 v0, 0x0

    iput v0, p0, Lcarbon/widget/PagerTabStrip;->f:I

    iput p1, p0, Lcarbon/widget/PagerTabStrip;->g:F

    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcarbon/widget/PagerTabStrip;->j:Landroid/view/animation/DecelerateInterpolator;

    new-instance p1, Lcarbon/widget/PagerTabStrip$a;

    invoke-direct {p1, p0}, Lcarbon/widget/PagerTabStrip$a;-><init>(Lcarbon/widget/PagerTabStrip;)V

    iput-object p1, p0, Lcarbon/widget/PagerTabStrip;->m:Landroidx/viewpager/widget/ViewPager$i;

    new-instance p1, Lgg0;

    invoke-direct {p1, p0}, Lgg0;-><init>(Lcarbon/widget/PagerTabStrip;)V

    iput-object p1, p0, Lcarbon/widget/PagerTabStrip;->t:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance p1, Leg0;

    invoke-direct {p1, p0}, Leg0;-><init>(Lcarbon/widget/PagerTabStrip;)V

    iput-object p1, p0, Lcarbon/widget/PagerTabStrip;->u:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p0, p2, p3}, Lcarbon/widget/PagerTabStrip;->j(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Lcarbon/widget/PagerTabStrip;)I
    .locals 0

    iget p0, p0, Lcarbon/widget/PagerTabStrip;->f:I

    return p0
.end method

.method public static synthetic b(Lcarbon/widget/PagerTabStrip;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcarbon/widget/PagerTabStrip;->k:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static synthetic c(Lcarbon/widget/PagerTabStrip;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcarbon/widget/PagerTabStrip;->k:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method public static synthetic d(Lcarbon/widget/PagerTabStrip;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcarbon/widget/PagerTabStrip;->l:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static synthetic e(Lcarbon/widget/PagerTabStrip;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcarbon/widget/PagerTabStrip;->l:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method public static synthetic f(Lcarbon/widget/PagerTabStrip;)F
    .locals 0

    iget p0, p0, Lcarbon/widget/PagerTabStrip;->d:F

    return p0
.end method

.method public static synthetic g(Lcarbon/widget/PagerTabStrip;F)F
    .locals 0

    iput p1, p0, Lcarbon/widget/PagerTabStrip;->d:F

    return p1
.end method

.method public static synthetic h(Lcarbon/widget/PagerTabStrip;)F
    .locals 0

    iget p0, p0, Lcarbon/widget/PagerTabStrip;->g:F

    return p0
.end method

.method public static synthetic i(Lcarbon/widget/PagerTabStrip;F)F
    .locals 0

    iput p1, p0, Lcarbon/widget/PagerTabStrip;->g:F

    return p1
.end method

.method private synthetic l(I)Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lm80;->carbon_tab:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v1, Ll80;->carbon_tabText:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcarbon/widget/TextView;

    invoke-virtual {p0}, Lcarbon/widget/PagerTabStrip;->getViewPager()Lcarbon/widget/ViewPager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Lg40;

    move-result-object v2

    invoke-virtual {v2, p1}, Lg40;->g(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private synthetic n(ILandroid/view/View;)V
    .locals 0

    iget-object p2, p0, Lcarbon/widget/PagerTabStrip;->a:Lcarbon/widget/ViewPager;

    invoke-virtual {p2, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method private synthetic p(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0}, Lcarbon/widget/PagerTabStrip;->u()V

    invoke-static {p0}, Ljb;->d0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic r(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0}, Lcarbon/widget/PagerTabStrip;->t()V

    invoke-static {p0}, Ljb;->d0(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcarbon/widget/PagerTabStrip;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcarbon/widget/PagerTabStrip;->d:F

    iget v1, p0, Lcarbon/widget/PagerTabStrip;->g:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcarbon/widget/PagerTabStrip;->c:Landroid/widget/LinearLayout;

    iget v1, p0, Lcarbon/widget/PagerTabStrip;->f:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcarbon/widget/PagerTabStrip;->g:F

    :cond_1
    iget-object v0, p0, Lcarbon/widget/PagerTabStrip;->b:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcarbon/widget/PagerTabStrip;->getTint()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {p0}, Lcarbon/widget/PagerTabStrip;->getTint()Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v3, p0, Lcarbon/widget/PagerTabStrip;->d:F

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcarbon/widget/PagerTabStrip;->h:F

    sub-float v4, v0, v1

    iget v5, p0, Lcarbon/widget/PagerTabStrip;->g:F

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lcarbon/widget/PagerTabStrip;->b:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getBackgroundTint()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/PagerTabStrip;->q:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/PagerTabStrip;->r:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getIndicatorHeight()F
    .locals 1

    iget v0, p0, Lcarbon/widget/PagerTabStrip;->h:F

    return v0
.end method

.method public getTint()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/PagerTabStrip;->o:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/PagerTabStrip;->p:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getViewPager()Lcarbon/widget/ViewPager;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/PagerTabStrip;->a:Lcarbon/widget/ViewPager;

    return-object v0
.end method

.method public final j(Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lp80;->PagerTabStrip:[I

    sget v2, Lo80;->carbon_PagerTabStrip:I

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lp80;->PagerTabStrip_carbon_indicatorWidth:I

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lcarbon/widget/PagerTabStrip;->setIndicatorHeight(F)V

    sget p2, Lp80;->PagerTabStrip_carbon_fixedTabs:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcarbon/widget/PagerTabStrip;->setFixed(Z)V

    sget-object p2, Lcarbon/widget/PagerTabStrip;->v:[I

    invoke-static {p0, p1, p2}, Ld80;->t(Lhe0;Landroid/content/res/TypedArray;[I)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->setHorizontalFadingEdgeEnabled(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    new-instance p1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcarbon/widget/PagerTabStrip;->c:Landroid/widget/LinearLayout;

    const/4 p2, -0x1

    invoke-virtual {p0, p1, p2, p2}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;II)V

    invoke-virtual {p0}, Lcarbon/widget/PagerTabStrip;->k()V

    return-void
.end method

.method public final k()V
    .locals 8

    iget-object v0, p0, Lcarbon/widget/PagerTabStrip;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcarbon/widget/PagerTabStrip;->a:Lcarbon/widget/ViewPager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Lg40;

    move-result-object v0

    iget-object v1, p0, Lcarbon/widget/PagerTabStrip;->a:Lcarbon/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Lg40;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcarbon/widget/PagerTabStrip;->n:Llh0;

    if-nez v1, :cond_2

    new-instance v1, Lfg0;

    invoke-direct {v1, p0}, Lfg0;-><init>(Lcarbon/widget/PagerTabStrip;)V

    iput-object v1, p0, Lcarbon/widget/PagerTabStrip;->n:Llh0;

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Lg40;->e()I

    move-result v3

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Lcarbon/widget/PagerTabStrip;->n:Llh0;

    invoke-interface {v3, v2}, Llh0;->a(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcarbon/widget/PagerTabStrip;->c:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v5, v1, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-nez v2, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    new-instance v4, Lbg0;

    invoke-direct {v4, p0, v2}, Lbg0;-><init>(Lcarbon/widget/PagerTabStrip;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public synthetic m(I)Landroid/view/View;
    .locals 0

    invoke-direct {p0, p1}, Lcarbon/widget/PagerTabStrip;->l(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic o(ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcarbon/widget/PagerTabStrip;->n(ILandroid/view/View;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    check-cast p1, Lcarbon/widget/PagerTabStrip$SavedState;

    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/HorizontalScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    invoke-virtual {p1}, Lcarbon/widget/PagerTabStrip$SavedState;->d()I

    move-result v0

    invoke-virtual {p0, v0}, Lcarbon/widget/PagerTabStrip;->setSelectedPage(I)V

    invoke-virtual {p1}, Lcarbon/widget/PagerTabStrip$SavedState;->a()F

    move-result v0

    iput v0, p0, Lcarbon/widget/PagerTabStrip;->d:F

    invoke-virtual {p1}, Lcarbon/widget/PagerTabStrip$SavedState;->b()F

    move-result v0

    iput v0, p0, Lcarbon/widget/PagerTabStrip;->g:F

    new-instance v0, Lcarbon/widget/PagerTabStrip$b;

    invoke-direct {v0, p0, p1}, Lcarbon/widget/PagerTabStrip$b;-><init>(Lcarbon/widget/PagerTabStrip;Lcarbon/widget/PagerTabStrip$SavedState;)V

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 8

    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    new-instance v7, Lcarbon/widget/PagerTabStrip$SavedState;

    iget v2, p0, Lcarbon/widget/PagerTabStrip;->f:I

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v3

    iget v4, p0, Lcarbon/widget/PagerTabStrip;->d:F

    iget v5, p0, Lcarbon/widget/PagerTabStrip;->g:F

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcarbon/widget/PagerTabStrip$SavedState;-><init>(Landroid/os/Parcelable;IIFFLcarbon/widget/PagerTabStrip$a;)V

    return-object v7
.end method

.method public synthetic q(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcarbon/widget/PagerTabStrip;->p(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public synthetic s(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcarbon/widget/PagerTabStrip;->r(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public setAnimateColorChangesEnabled(Z)V
    .locals 1

    iput-boolean p1, p0, Lcarbon/widget/PagerTabStrip;->s:Z

    iget-object p1, p0, Lcarbon/widget/PagerTabStrip;->o:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcarbon/animation/AnimatedColorStateList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcarbon/widget/PagerTabStrip;->t:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-static {p1, v0}, Lcarbon/animation/AnimatedColorStateList;->b(Landroid/content/res/ColorStateList;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Lcarbon/animation/AnimatedColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcarbon/widget/PagerTabStrip;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    iget-object p1, p0, Lcarbon/widget/PagerTabStrip;->q:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcarbon/animation/AnimatedColorStateList;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcarbon/widget/PagerTabStrip;->u:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-static {p1, v0}, Lcarbon/animation/AnimatedColorStateList;->b(Landroid/content/res/ColorStateList;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Lcarbon/animation/AnimatedColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcarbon/widget/PagerTabStrip;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method

.method public setBackgroundTint(I)V
    .locals 0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcarbon/widget/PagerTabStrip;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-boolean v0, p0, Lcarbon/widget/PagerTabStrip;->s:Z

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcarbon/animation/AnimatedColorStateList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcarbon/widget/PagerTabStrip;->u:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-static {p1, v0}, Lcarbon/animation/AnimatedColorStateList;->b(Landroid/content/res/ColorStateList;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Lcarbon/animation/AnimatedColorStateList;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcarbon/widget/PagerTabStrip;->q:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcarbon/widget/PagerTabStrip;->t()V

    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    iput-object p1, p0, Lcarbon/widget/PagerTabStrip;->r:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0}, Lcarbon/widget/PagerTabStrip;->t()V

    return-void
.end method

.method public setFixed(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    return-void
.end method

.method public setIndicatorHeight(F)V
    .locals 0

    iput p1, p0, Lcarbon/widget/PagerTabStrip;->h:F

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->postInvalidate()V

    return-void
.end method

.method public setSelectedPage(I)V
    .locals 2

    iget-object v0, p0, Lcarbon/widget/PagerTabStrip;->a:Lcarbon/widget/ViewPager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcarbon/widget/PagerTabStrip;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    iget v1, p0, Lcarbon/widget/PagerTabStrip;->f:I

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcarbon/widget/PagerTabStrip;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_1
    iput p1, p0, Lcarbon/widget/PagerTabStrip;->f:I

    iget-object p1, p0, Lcarbon/widget/PagerTabStrip;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    iget v0, p0, Lcarbon/widget/PagerTabStrip;->f:I

    if-le p1, v0, :cond_2

    iget-object p1, p0, Lcarbon/widget/PagerTabStrip;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    :cond_2
    return-void
.end method

.method public setTabBuilder(Llh0;)V
    .locals 0

    iput-object p1, p0, Lcarbon/widget/PagerTabStrip;->n:Llh0;

    invoke-virtual {p0}, Lcarbon/widget/PagerTabStrip;->k()V

    return-void
.end method

.method public setTint(I)V
    .locals 0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcarbon/widget/PagerTabStrip;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcarbon/widget/PagerTabStrip;->s:Z

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcarbon/animation/AnimatedColorStateList;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcarbon/widget/PagerTabStrip;->t:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-static {p1, v0}, Lcarbon/animation/AnimatedColorStateList;->b(Landroid/content/res/ColorStateList;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Lcarbon/animation/AnimatedColorStateList;

    move-result-object p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcarbon/widget/PagerTabStrip;->o:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcarbon/widget/PagerTabStrip;->u()V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    iput-object p1, p0, Lcarbon/widget/PagerTabStrip;->p:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0}, Lcarbon/widget/PagerTabStrip;->u()V

    return-void
.end method

.method public setViewPager(Lcarbon/widget/ViewPager;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcarbon/widget/PagerTabStrip;->m:Landroidx/viewpager/widget/ViewPager$i;

    invoke-virtual {p1, v0}, Lcarbon/widget/ViewPager;->J(Landroidx/viewpager/widget/ViewPager$i;)V

    :cond_0
    iput-object p1, p0, Lcarbon/widget/PagerTabStrip;->a:Lcarbon/widget/ViewPager;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcarbon/widget/PagerTabStrip;->m:Landroidx/viewpager/widget/ViewPager$i;

    invoke-virtual {p1, v0}, Lcarbon/widget/ViewPager;->c(Landroidx/viewpager/widget/ViewPager$i;)V

    :cond_1
    invoke-virtual {p0}, Lcarbon/widget/PagerTabStrip;->k()V

    return-void
.end method

.method public final t()V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcarbon/widget/PagerTabStrip;->q:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcarbon/widget/PagerTabStrip;->r:Landroid/graphics/PorterDuff$Mode;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getDrawableState()[I

    move-result-object v1

    iget-object v2, p0, Lcarbon/widget/PagerTabStrip;->q:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    iget-object v3, p0, Lcarbon/widget/PagerTabStrip;->p:Landroid/graphics/PorterDuff$Mode;

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

.method public final u()V
    .locals 0

    return-void
.end method
