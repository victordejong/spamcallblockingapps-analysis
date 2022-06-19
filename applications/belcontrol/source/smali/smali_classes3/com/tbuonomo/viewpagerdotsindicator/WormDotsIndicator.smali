.class public Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;
.super Landroid/widget/FrameLayout;
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

.field public b:Landroid/widget/ImageView;

.field public c:Landroid/view/View;

.field public d:Landroidx/viewpager/widget/ViewPager;

.field public f:I

.field public g:I

.field public h:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:Lzc;

.field public o:Lzc;

.field public p:Landroid/widget/LinearLayout;

.field public q:Z

.field public r:Landroidx/viewpager/widget/ViewPager$i;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->a:Ljava/util/List;

    new-instance p3, Landroid/widget/LinearLayout;

    invoke-direct {p3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->p:Landroid/widget/LinearLayout;

    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p3, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->l(I)I

    move-result v0

    iput v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->m:I

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p3, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->p:Landroid/widget/LinearLayout;

    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object p3, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->p:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/16 p3, 0x10

    invoke-virtual {p0, p3}, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->l(I)I

    move-result p3

    iput p3, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->f:I

    const/4 p3, 0x4

    invoke-virtual {p0, p3}, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->l(I)I

    move-result p3

    iput p3, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->g:I

    const/4 p3, 0x2

    invoke-virtual {p0, p3}, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->l(I)I

    move-result v0

    iput v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->h:I

    iget v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->f:I

    div-int/2addr v0, p3

    iput v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->j:I

    invoke-static {p1}, Lej1;->a(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->k:I

    iput p1, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->l:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->q:Z

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Ldj1;->WormDotsIndicator:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Ldj1;->WormDotsIndicator_dotsColor:I

    iget v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->k:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->k:I

    sget v0, Ldj1;->WormDotsIndicator_dotsStrokeColor:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->l:I

    sget p2, Ldj1;->WormDotsIndicator_dotsSize:I

    iget v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->f:I

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->f:I

    sget p2, Ldj1;->WormDotsIndicator_dotsSpacing:I

    iget v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->g:I

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->g:I

    sget p2, Ldj1;->WormDotsIndicator_dotsCornerRadius:I

    iget v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->f:I

    div-int/2addr v0, p3

    int-to-float p3, v0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->j:I

    sget p2, Ldj1;->WormDotsIndicator_dotsStrokeWidth:I

    iget p3, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->h:I

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->h:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->j(I)V

    invoke-virtual {p0, v1}, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->k(Z)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->b:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic b(Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->q:Z

    return p0
.end method

.method public static synthetic c(Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    iget-object p0, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->d:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method public static synthetic d(Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;)I
    .locals 0

    iget p0, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->f:I

    return p0
.end method

.method public static synthetic e(Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;)I
    .locals 0

    iget p0, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->g:I

    return p0
.end method

.method public static synthetic f(Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;)I
    .locals 0

    iget p0, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->m:I

    return p0
.end method

.method public static synthetic g(Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;)Lzc;
    .locals 0

    iget-object p0, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->n:Lzc;

    return-object p0
.end method

.method public static synthetic h(Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;)Lzc;
    .locals 0

    iget-object p0, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->o:Lzc;

    return-object p0
.end method

.method public static synthetic i(Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;)V
    .locals 0

    invoke-virtual {p0}, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->m()V

    return-void
.end method


# virtual methods
.method public final j(I)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->k(Z)Landroid/view/ViewGroup;

    move-result-object v1

    new-instance v2, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator$b;

    invoke-direct {v2, p0, v0}, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator$b;-><init>(Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->a:Ljava/util/List;

    sget v3, Lbj1;->worm_dot:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final k(Z)Landroid/view/ViewGroup;
    .locals 6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcj1;->worm_dot_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget v1, Lbj1;->worm_dot:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz p1, :cond_0

    sget v4, Laj1;->worm_dot_stroke_background:I

    goto :goto_0

    :cond_0
    sget v4, Laj1;->worm_dot_background:I

    :goto_0
    invoke-static {v3, v4}, Lg8;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->f:I

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const/16 v4, 0xf

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget v4, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->g:I

    invoke-virtual {v3, v4, v2, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, p1, v1}, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->o(ZLandroid/view/View;)V

    return-object v0
.end method

.method public final l(I)I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

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

.method public final m()V
    .locals 2

    iget-object v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->c:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->p()V

    :cond_0
    iget-object v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->d:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Lg40;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->d:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Lg40;

    move-result-object v1

    invoke-virtual {v1}, Lg40;->e()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->d:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Lg40;

    move-result-object v0

    invoke-virtual {v0}, Lg40;->e()I

    move-result v0

    iget-object v1, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->j(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->d:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Lg40;

    move-result-object v1

    invoke-virtual {v1}, Lg40;->e()I

    move-result v1

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->d:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Lg40;

    move-result-object v1

    invoke-virtual {v1}, Lg40;->e()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->n(I)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->q()V

    goto :goto_1

    :cond_3
    const-class v0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "You have to set an adapter to the view pager before !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public final n(I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    iget-object v1, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final o(ZLandroid/view/View;)V
    .locals 1

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/GradientDrawable;

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->h:I

    iget v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->l:I

    invoke-virtual {p2, p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->k:I

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :goto_0
    iget p1, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->j:I

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->m()V

    return-void
.end method

.method public final p()V
    .locals 6

    iget-object v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->d:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Lg40;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->d:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Lg40;

    move-result-object v0

    invoke-virtual {v0}, Lg40;->e()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->k(Z)Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->c:Landroid/view/View;

    sget v1, Lbj1;->worm_dot:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->c:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lzc;

    iget-object v1, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->c:Landroid/view/View;

    sget-object v2, Lxc;->m:Lxc$r;

    invoke-direct {v0, v1, v2}, Lzc;-><init>(Ljava/lang/Object;Lyc;)V

    iput-object v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->n:Lzc;

    new-instance v0, Lad;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lad;-><init>(F)V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lad;->d(F)Lad;

    const/high16 v3, 0x43960000    # 300.0f

    invoke-virtual {v0, v3}, Lad;->f(F)Lad;

    iget-object v4, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->n:Lzc;

    invoke-virtual {v4, v0}, Lzc;->q(Lad;)Lzc;

    new-instance v0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator$a;

    const-string v4, "DotsWidth"

    invoke-direct {v0, p0, v4}, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator$a;-><init>(Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;Ljava/lang/String;)V

    new-instance v4, Lzc;

    iget-object v5, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->c:Landroid/view/View;

    invoke-direct {v4, v5, v0}, Lzc;-><init>(Ljava/lang/Object;Lyc;)V

    iput-object v4, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->o:Lzc;

    new-instance v0, Lad;

    invoke-direct {v0, v1}, Lad;-><init>(F)V

    invoke-virtual {v0, v2}, Lad;->d(F)Lad;

    invoke-virtual {v0, v3}, Lad;->f(F)Lad;

    iget-object v1, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->o:Lzc;

    invoke-virtual {v1, v0}, Lzc;->q(Lad;)Lzc;

    return-void
.end method

.method public final q()V
    .locals 3

    iget-object v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->d:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Lg40;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->d:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Lg40;

    move-result-object v0

    invoke-virtual {v0}, Lg40;->e()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->r:Landroidx/viewpager/widget/ViewPager$i;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->d:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->J(Landroidx/viewpager/widget/ViewPager$i;)V

    :cond_0
    invoke-virtual {p0}, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->r()V

    iget-object v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->d:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->r:Landroidx/viewpager/widget/ViewPager$i;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->c(Landroidx/viewpager/widget/ViewPager$i;)V

    iget-object v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->r:Landroidx/viewpager/widget/ViewPager$i;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1, v2}, Landroidx/viewpager/widget/ViewPager$i;->onPageScrolled(IFI)V

    :cond_1
    return-void
.end method

.method public final r()V
    .locals 1

    new-instance v0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator$c;

    invoke-direct {v0, p0}, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator$c;-><init>(Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;)V

    iput-object v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->r:Landroidx/viewpager/widget/ViewPager$i;

    return-void
.end method

.method public final s()V
    .locals 2

    iget-object v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->d:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Lg40;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->d:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Lg40;

    move-result-object v0

    new-instance v1, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator$d;

    invoke-direct {v1, p0}, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator$d;-><init>(Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;)V

    invoke-virtual {v0, v1}, Lg40;->l(Landroid/database/DataSetObserver;)V

    :cond_0
    return-void
.end method

.method public setDotIndicatorColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->k:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->o(ZLandroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setDotsClickable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->q:Z

    return-void
.end method

.method public setStrokeDotsIndicatorColor(I)V
    .locals 2

    iget-object v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iput p1, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->l:I

    iget-object p1, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->o(ZLandroid/view/View;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 0

    iput-object p1, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->d:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0}, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->s()V

    invoke-virtual {p0}, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->m()V

    return-void
.end method
