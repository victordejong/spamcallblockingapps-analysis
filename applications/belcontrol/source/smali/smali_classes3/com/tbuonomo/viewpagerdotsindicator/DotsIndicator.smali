.class public Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;
.super Landroid/widget/LinearLayout;
.source ""


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field public b:Landroidx/viewpager/widget/ViewPager;

.field public c:F

.field public d:F

.field public f:F

.field public g:F

.field public h:I

.field public j:I

.field public k:Z

.field public l:Z

.field public m:Landroid/animation/ArgbEvaluator;

.field public n:Lyi1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/animation/ArgbEvaluator;

    invoke-direct {p1}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object p1, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->m:Landroid/animation/ArgbEvaluator;

    invoke-virtual {p0, p2}, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->s(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic a(Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;)V
    .locals 0

    invoke-virtual {p0}, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->v()V

    return-void
.end method

.method public static synthetic b(Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;)V
    .locals 0

    invoke-virtual {p0}, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->u()V

    return-void
.end method

.method public static synthetic c(Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;)I
    .locals 0

    iget p0, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->j:I

    return p0
.end method

.method public static synthetic d(Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;)I
    .locals 0

    iget p0, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->h:I

    return p0
.end method

.method public static synthetic e(Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;)Landroid/animation/ArgbEvaluator;
    .locals 0

    iget-object p0, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->m:Landroid/animation/ArgbEvaluator;

    return-object p0
.end method

.method public static synthetic f(Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->k:Z

    return p0
.end method

.method public static synthetic g(Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;)V
    .locals 0

    invoke-virtual {p0}, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->t()V

    return-void
.end method

.method public static synthetic h(Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;)V
    .locals 0

    invoke-virtual {p0}, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->w()V

    return-void
.end method

.method public static synthetic i(Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;)V
    .locals 0

    invoke-virtual {p0}, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->x()V

    return-void
.end method

.method public static synthetic j(Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->l:Z

    return p0
.end method

.method public static synthetic k(Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    iget-object p0, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->b:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method public static synthetic l(Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->a:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic m(Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;)F
    .locals 0

    iget p0, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->c:F

    return p0
.end method

.method public static synthetic n(Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;)F
    .locals 0

    iget p0, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->g:F

    return p0
.end method

.method public static synthetic o(Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;Landroid/widget/ImageView;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->z(Landroid/widget/ImageView;I)V

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 2

    iget-object v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Lg40;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Lg40;

    move-result-object v0

    new-instance v1, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator$d;

    invoke-direct {v1, p0}, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator$d;-><init>(Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;)V

    invoke-virtual {v0, v1}, Lg40;->l(Landroid/database/DataSetObserver;)V

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->t()V

    return-void
.end method

.method public final p(I)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcj1;->dot_layout:I

    invoke-virtual {v2, v3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    sget v3, Lbj1;->dot:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->c:F

    float-to-int v5, v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v5, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->f:F

    float-to-int v6, v5

    float-to-int v5, v5

    invoke-virtual {v4, v6, v0, v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    new-instance v4, Lxi1;

    invoke-direct {v4}, Lxi1;-><init>()V

    iget v5, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->d:F

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isInEditMode()Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez v1, :cond_1

    goto :goto_1

    :cond_0
    iget-object v5, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v5}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v5

    if-ne v5, v1, :cond_1

    :goto_1
    iget v5, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->j:I

    goto :goto_2

    :cond_1
    iget v5, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->h:I

    :goto_2
    invoke-virtual {v4, v5}, Lxi1;->setColor(I)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v4, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator$b;

    invoke-direct {v4, p0, v1}, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator$b;-><init>(Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;I)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->a:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final q()Lyi1;
    .locals 1

    new-instance v0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator$c;

    invoke-direct {v0, p0}, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator$c;-><init>(Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;)V

    return-object v0
.end method

.method public final r(I)I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float v0, v0, p1

    float-to-int p1, v0

    return p1
.end method

.method public final s(Landroid/util/AttributeSet;)V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->a:Ljava/util/List;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->r(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->c:F

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->r(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->f:F

    iget v1, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->c:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->d:F

    const/high16 v1, 0x40200000    # 2.5f

    iput v1, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->g:F

    const v3, -0xff0001

    iput v3, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->h:I

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->l:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Ldj1;->DotsIndicator:[I

    invoke-virtual {v4, p1, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v4, Ldj1;->DotsIndicator_dotsColor:I

    invoke-virtual {p1, v4, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->h:I

    sget v4, Ldj1;->DotsIndicator_selectedDotColor:I

    invoke-virtual {p1, v4, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->j:I

    sget v3, Ldj1;->DotsIndicator_dotsWidthFactor:I

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->g:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    iput v1, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->g:F

    :cond_0
    sget v1, Ldj1;->DotsIndicator_dotsSize:I

    iget v3, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->c:F

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->c:F

    sget v3, Ldj1;->DotsIndicator_dotsCornerRadius:I

    div-float/2addr v1, v2

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->d:F

    sget v1, Ldj1;->DotsIndicator_dotsSpacing:I

    iget v2, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->f:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->f:F

    sget v1, Ldj1;->DotsIndicator_progressMode:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->k:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->p(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->t()V

    return-void
.end method

.method public setDotsClickable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->l:Z

    return-void
.end method

.method public setPointsColor(I)V
    .locals 0

    iput p1, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->h:I

    invoke-virtual {p0}, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->u()V

    return-void
.end method

.method public setSelectedPointColor(I)V
    .locals 0

    iput p1, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->j:I

    invoke-virtual {p0}, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->u()V

    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 0

    iput-object p1, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0}, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->A()V

    invoke-virtual {p0}, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->t()V

    return-void
.end method

.method public final t()V
    .locals 2

    iget-object v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->b:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Lg40;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator$a;

    invoke-direct {v0, p0}, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator$a;-><init>(Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const-class v0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "You have to set an adapter to the view pager before !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final u()V
    .locals 4

    iget-object v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->a:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Lxi1;

    iget-object v3, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v3}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v3

    if-eq v0, v3, :cond_2

    iget-boolean v3, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->k:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v3}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v3

    if-ge v0, v3, :cond_1

    goto :goto_1

    :cond_1
    iget v3, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->h:I

    goto :goto_2

    :cond_2
    :goto_1
    iget v3, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->j:I

    :goto_2
    invoke-virtual {v2, v3}, Lxi1;->setColor(I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final v()V
    .locals 2

    iget-object v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Lg40;

    move-result-object v1

    invoke-virtual {v1}, Lg40;->e()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Lg40;

    move-result-object v0

    invoke-virtual {v0}, Lg40;->e()I

    move-result v0

    iget-object v1, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->p(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Lg40;

    move-result-object v1

    invoke-virtual {v1}, Lg40;->e()I

    move-result v1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Lg40;

    move-result-object v1

    invoke-virtual {v1}, Lg40;->e()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->y(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final w()V
    .locals 3

    iget-object v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->a:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget v2, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->c:F

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->z(Landroid/widget/ImageView;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final x()V
    .locals 4

    iget-object v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->b:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Lg40;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Lg40;

    move-result-object v0

    invoke-virtual {v0}, Lg40;->e()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->b:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->n:Lyi1;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->J(Landroidx/viewpager/widget/ViewPager$i;)V

    invoke-virtual {p0}, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->q()Lyi1;

    move-result-object v0

    iput-object v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->n:Lyi1;

    iget-object v1, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->c(Landroidx/viewpager/widget/ViewPager$i;)V

    iget-object v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->n:Lyi1;

    iget-object v1, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lyi1;->b(IIF)V

    :cond_0
    return-void
.end method

.method public final y(I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    iget-object v1, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final z(Landroid/widget/ImageView;I)V
    .locals 1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
