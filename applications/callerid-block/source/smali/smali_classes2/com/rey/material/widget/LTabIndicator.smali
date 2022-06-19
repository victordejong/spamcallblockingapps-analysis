.class public Lcom/rey/material/widget/LTabIndicator;
.super Landroid/widget/HorizontalScrollView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rey/material/widget/LTabIndicator$c;,
        Lcom/rey/material/widget/LTabIndicator$d;,
        Lcom/rey/material/widget/LTabIndicator$b;
    }
.end annotation


# instance fields
.field private A:I

.field private B:F

.field private C:F

.field private D:I

.field private E:I

.field private F:Z

.field public b:Landroidx/viewpager/widget/ViewPager$i;

.field private c:Lcom/rey/material/widget/LTabIndicator$b;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroidx/viewpager/widget/ViewPager;

.field private f:I

.field private g:I

.field private h:F

.field private i:Landroid/graphics/Paint;

.field private j:Landroid/graphics/Paint;

.field private k:Landroid/graphics/Paint;

.field private l:I

.field private m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/rey/material/widget/LTabIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/rey/material/widget/LTabIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/rey/material/widget/LTabIndicator;->g:I

    const/4 p3, 0x0

    iput p3, p0, Lcom/rey/material/widget/LTabIndicator;->h:F

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/rey/material/widget/LTabIndicator;->i:Landroid/graphics/Paint;

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/rey/material/widget/LTabIndicator;->j:Landroid/graphics/Paint;

    const/4 p3, -0x1

    iput p3, p0, Lcom/rey/material/widget/LTabIndicator;->l:I

    const v0, 0xffffff

    iput v0, p0, Lcom/rey/material/widget/LTabIndicator;->m:I

    const/high16 v0, 0x1a000000

    iput v0, p0, Lcom/rey/material/widget/LTabIndicator;->n:I

    iput p3, p0, Lcom/rey/material/widget/LTabIndicator;->o:I

    const v0, 0x66ffffff

    iput v0, p0, Lcom/rey/material/widget/LTabIndicator;->p:I

    const/high16 v0, 0x19000000

    iput v0, p0, Lcom/rey/material/widget/LTabIndicator;->q:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rey/material/widget/LTabIndicator;->r:Z

    iput-boolean p2, p0, Lcom/rey/material/widget/LTabIndicator;->s:Z

    iput-boolean p2, p0, Lcom/rey/material/widget/LTabIndicator;->t:Z

    iput-boolean v0, p0, Lcom/rey/material/widget/LTabIndicator;->u:Z

    const/16 v1, 0xc

    iput v1, p0, Lcom/rey/material/widget/LTabIndicator;->v:I

    const/16 v1, 0x18

    iput v1, p0, Lcom/rey/material/widget/LTabIndicator;->w:I

    iput p2, p0, Lcom/rey/material/widget/LTabIndicator;->x:I

    iput p2, p0, Lcom/rey/material/widget/LTabIndicator;->y:I

    const/16 v1, 0xe

    iput v1, p0, Lcom/rey/material/widget/LTabIndicator;->z:I

    const/16 v1, 0x34

    iput v1, p0, Lcom/rey/material/widget/LTabIndicator;->A:I

    const/high16 v1, 0x40400000    # 3.0f

    iput v1, p0, Lcom/rey/material/widget/LTabIndicator;->B:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/rey/material/widget/LTabIndicator;->C:F

    iput v0, p0, Lcom/rey/material/widget/LTabIndicator;->D:I

    iput p2, p0, Lcom/rey/material/widget/LTabIndicator;->E:I

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    invoke-virtual {p0, p2}, Landroid/widget/HorizontalScrollView;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/rey/material/widget/LTabIndicator;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, p3, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/high16 p2, 0x42480000    # 50.0f

    invoke-static {v0, p2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int p2, p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object p2, p0, Lcom/rey/material/widget/LTabIndicator;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/rey/material/widget/LTabIndicator;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    iget p1, p0, Lcom/rey/material/widget/LTabIndicator;->A:I

    int-to-float p1, p1

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/rey/material/widget/LTabIndicator;->A:I

    iget p1, p0, Lcom/rey/material/widget/LTabIndicator;->v:I

    int-to-float p1, p1

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/rey/material/widget/LTabIndicator;->v:I

    iget p1, p0, Lcom/rey/material/widget/LTabIndicator;->w:I

    int-to-float p1, p1

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/rey/material/widget/LTabIndicator;->w:I

    iget p1, p0, Lcom/rey/material/widget/LTabIndicator;->D:I

    int-to-float p1, p1

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/rey/material/widget/LTabIndicator;->D:I

    iget p1, p0, Lcom/rey/material/widget/LTabIndicator;->B:F

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/rey/material/widget/LTabIndicator;->B:F

    iget p1, p0, Lcom/rey/material/widget/LTabIndicator;->C:F

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/rey/material/widget/LTabIndicator;->C:F

    iget-object p1, p0, Lcom/rey/material/widget/LTabIndicator;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/rey/material/widget/LTabIndicator;->i:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/rey/material/widget/LTabIndicator;->i:Landroid/graphics/Paint;

    iget p2, p0, Lcom/rey/material/widget/LTabIndicator;->l:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/rey/material/widget/LTabIndicator;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/rey/material/widget/LTabIndicator;->j:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/rey/material/widget/LTabIndicator;->j:Landroid/graphics/Paint;

    iget p2, p0, Lcom/rey/material/widget/LTabIndicator;->m:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/rey/material/widget/LTabIndicator;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/rey/material/widget/LTabIndicator;->k:Landroid/graphics/Paint;

    iget p2, p0, Lcom/rey/material/widget/LTabIndicator;->D:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method static synthetic a(Lcom/rey/material/widget/LTabIndicator;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/rey/material/widget/LTabIndicator;->F:Z

    return p0
.end method

.method static synthetic b(Lcom/rey/material/widget/LTabIndicator;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    iget-object p0, p0, Lcom/rey/material/widget/LTabIndicator;->e:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static synthetic c(Lcom/rey/material/widget/LTabIndicator;)Lcom/rey/material/widget/LTabIndicator$b;
    .locals 0

    iget-object p0, p0, Lcom/rey/material/widget/LTabIndicator;->c:Lcom/rey/material/widget/LTabIndicator$b;

    return-object p0
.end method

.method static synthetic d(Lcom/rey/material/widget/LTabIndicator;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/rey/material/widget/LTabIndicator;->u:Z

    return p0
.end method

.method static synthetic e(Lcom/rey/material/widget/LTabIndicator;I)I
    .locals 0

    iput p1, p0, Lcom/rey/material/widget/LTabIndicator;->g:I

    return p1
.end method

.method static synthetic f(Lcom/rey/material/widget/LTabIndicator;F)F
    .locals 0

    iput p1, p0, Lcom/rey/material/widget/LTabIndicator;->h:F

    return p1
.end method

.method static synthetic g(Lcom/rey/material/widget/LTabIndicator;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/rey/material/widget/LTabIndicator;->d:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic h(Lcom/rey/material/widget/LTabIndicator;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/rey/material/widget/LTabIndicator;->l(II)V

    return-void
.end method

.method static synthetic i(Lcom/rey/material/widget/LTabIndicator;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rey/material/widget/LTabIndicator;->m(I)V

    return-void
.end method

.method private j(ILjava/lang/String;)V
    .locals 5

    new-instance v0, Lcom/rey/material/widget/LTabIndicator$d;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/rey/material/widget/LTabIndicator$d;-><init>(Lcom/rey/material/widget/LTabIndicator;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/rey/material/widget/LTabIndicator$d;->b()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x1

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    new-instance p2, Lcom/rey/material/widget/LTabIndicator$a;

    invoke-direct {p2, p0, p1}, Lcom/rey/material/widget/LTabIndicator$a;-><init>(Lcom/rey/material/widget/LTabIndicator;I)V

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean p2, p0, Lcom/rey/material/widget/LTabIndicator;->r:Z

    const/4 v1, 0x0

    if-nez p2, :cond_0

    iget p2, p0, Lcom/rey/material/widget/LTabIndicator;->w:I

    invoke-virtual {v0, p2, v1, p2, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :cond_0
    iget-object p2, p0, Lcom/rey/material/widget/LTabIndicator;->d:Landroid/widget/LinearLayout;

    iget-boolean v2, p0, Lcom/rey/material/widget/LTabIndicator;->r:Z

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v2, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :goto_0
    invoke-virtual {p2, v0, p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private l(II)V
    .locals 1

    iget v0, p0, Lcom/rey/material/widget/LTabIndicator;->f:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/rey/material/widget/LTabIndicator;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/2addr v0, p2

    if-gtz p1, :cond_1

    if-lez p2, :cond_2

    :cond_1
    iget p1, p0, Lcom/rey/material/widget/LTabIndicator;->A:I

    sub-int/2addr v0, p1

    :cond_2
    iget p1, p0, Lcom/rey/material/widget/LTabIndicator;->E:I

    if-eq v0, p1, :cond_3

    iput v0, p0, Lcom/rey/material/widget/LTabIndicator;->E:I

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    :cond_3
    return-void
.end method

.method private m(I)V
    .locals 5

    iget-object v0, p0, Lcom/rey/material/widget/LTabIndicator;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/rey/material/widget/LTabIndicator;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v2, p1, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    check-cast v3, Lcom/rey/material/widget/LTabIndicator$d;

    invoke-virtual {v3}, Lcom/rey/material/widget/LTabIndicator$d;->b()Landroid/widget/TextView;

    move-result-object v3

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/rey/material/widget/LTabIndicator;->o:I

    goto :goto_2

    :cond_1
    iget v4, p0, Lcom/rey/material/widget/LTabIndicator;->p:I

    :goto_2
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private n()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/rey/material/widget/LTabIndicator;->f:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/rey/material/widget/LTabIndicator;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/rey/material/widget/LTabIndicator;->e:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/rey/material/widget/LTabIndicator;->m(I)V

    return-void
.end method


# virtual methods
.method public getViewPagerScrollWithAnimation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/rey/material/widget/LTabIndicator;->u:Z

    return v0
.end method

.method public k()V
    .locals 2

    iget-object v0, p0, Lcom/rey/material/widget/LTabIndicator;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/rey/material/widget/LTabIndicator;->e:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->e()I

    move-result v0

    iput v0, p0, Lcom/rey/material/widget/LTabIndicator;->f:I

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/rey/material/widget/LTabIndicator;->f:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/rey/material/widget/LTabIndicator;->e:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/a;->g(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/rey/material/widget/LTabIndicator;->j(ILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/rey/material/widget/LTabIndicator;->n()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/rey/material/widget/LTabIndicator;->f:I

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v0

    iget-boolean v1, p0, Lcom/rey/material/widget/LTabIndicator;->t:Z

    if-eqz v1, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/rey/material/widget/LTabIndicator;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    int-to-float v5, v1

    iget v6, p0, Lcom/rey/material/widget/LTabIndicator;->C:F

    iget-object v7, p0, Lcom/rey/material/widget/LTabIndicator;->j:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    int-to-float v12, v0

    iget v1, p0, Lcom/rey/material/widget/LTabIndicator;->C:F

    sub-float v10, v12, v1

    iget-object v1, p0, Lcom/rey/material/widget/LTabIndicator;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    int-to-float v11, v1

    iget-object v13, p0, Lcom/rey/material/widget/LTabIndicator;->j:Landroid/graphics/Paint;

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_0
    iget-object v1, p0, Lcom/rey/material/widget/LTabIndicator;->d:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/rey/material/widget/LTabIndicator;->g:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lcom/rey/material/widget/LTabIndicator;->h:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    iget v3, p0, Lcom/rey/material/widget/LTabIndicator;->g:I

    iget v4, p0, Lcom/rey/material/widget/LTabIndicator;->f:I

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lcom/rey/material/widget/LTabIndicator;->d:Landroid/widget/LinearLayout;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    iget v5, p0, Lcom/rey/material/widget/LTabIndicator;->h:F

    mul-float v4, v4, v5

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v7, v6, v5

    mul-float v7, v7, v2

    add-float v2, v4, v7

    mul-float v3, v3, v5

    sub-float/2addr v6, v5

    mul-float v6, v6, v1

    add-float v1, v3, v6

    :cond_2
    move v6, v1

    move v4, v2

    iget-boolean v1, p0, Lcom/rey/material/widget/LTabIndicator;->t:Z

    if-eqz v1, :cond_3

    const/4 v5, 0x0

    iget v7, p0, Lcom/rey/material/widget/LTabIndicator;->B:F

    goto :goto_1

    :cond_3
    int-to-float v7, v0

    iget v1, p0, Lcom/rey/material/widget/LTabIndicator;->B:F

    sub-float v5, v7, v1

    :goto_1
    iget-object v8, p0, Lcom/rey/material/widget/LTabIndicator;->i:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-boolean v1, p0, Lcom/rey/material/widget/LTabIndicator;->s:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/rey/material/widget/LTabIndicator;->k:Landroid/graphics/Paint;

    iget v2, p0, Lcom/rey/material/widget/LTabIndicator;->n:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x0

    :goto_2
    iget v2, p0, Lcom/rey/material/widget/LTabIndicator;->f:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/rey/material/widget/LTabIndicator;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v5, v3

    iget v3, p0, Lcom/rey/material/widget/LTabIndicator;->v:I

    int-to-float v6, v3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v7, v2

    iget v2, p0, Lcom/rey/material/widget/LTabIndicator;->v:I

    sub-int v2, v0, v2

    int-to-float v8, v2

    iget-object v9, p0, Lcom/rey/material/widget/LTabIndicator;->k:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2

    iget-object v0, p0, Lcom/rey/material/widget/LTabIndicator;->e:Landroidx/viewpager/widget/ViewPager;

    iget-boolean v1, p0, Lcom/rey/material/widget/LTabIndicator;->u:Z

    invoke-virtual {v0, p1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public setEnableDivider(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/rey/material/widget/LTabIndicator;->s:Z

    return-void
.end method

.method public setEnableExpand(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/rey/material/widget/LTabIndicator;->r:Z

    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/rey/material/widget/LTabIndicator;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setIndicatorOnTop(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/rey/material/widget/LTabIndicator;->t:Z

    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$i;)V
    .locals 0

    iput-object p1, p0, Lcom/rey/material/widget/LTabIndicator;->b:Landroidx/viewpager/widget/ViewPager$i;

    return-void
.end method

.method public setOnTabReselectedListener(Lcom/rey/material/widget/LTabIndicator$b;)V
    .locals 0

    iput-object p1, p0, Lcom/rey/material/widget/LTabIndicator;->c:Lcom/rey/material/widget/LTabIndicator$b;

    return-void
.end method

.method public setTabText(ILjava/lang/String;)V
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/rey/material/widget/LTabIndicator;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_1

    iget-object v0, p0, Lcom/rey/material/widget/LTabIndicator;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "tabs does not have this position."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setUnderlineColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/rey/material/widget/LTabIndicator;->j:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 2

    iput-object p1, p0, Lcom/rey/material/widget/LTabIndicator;->e:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/rey/material/widget/LTabIndicator$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/rey/material/widget/LTabIndicator$c;-><init>(Lcom/rey/material/widget/LTabIndicator;Lcom/rey/material/widget/LTabIndicator$a;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$i;)V

    invoke-virtual {p0}, Lcom/rey/material/widget/LTabIndicator;->k()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ViewPager does not have adapter instance."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setViewPagerScrollWithAnimation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/rey/material/widget/LTabIndicator;->u:Z

    return-void
.end method
