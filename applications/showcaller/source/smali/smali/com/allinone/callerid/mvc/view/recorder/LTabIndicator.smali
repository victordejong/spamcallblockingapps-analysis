.class public Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;
.super Landroid/widget/HorizontalScrollView;
.source "LTabIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator$c;,
        Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator$d;,
        Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator$b;
    }
.end annotation


# instance fields
.field public A:I

.field public B:I

.field private C:I

.field private D:F

.field private E:F

.field private F:I

.field private G:I

.field private H:Z

.field public d:Landroidx/viewpager/widget/ViewPager$i;

.field private e:Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator$b;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroidx/viewpager/widget/ViewPager;

.field private h:I

.field private i:I

.field private j:F

.field private k:Landroid/graphics/Paint;

.field private l:Landroid/graphics/Paint;

.field private m:Landroid/graphics/Paint;

.field private n:I

.field private o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 4
    iput p2, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->i:I

    const/4 p3, 0x0

    .line 5
    iput p3, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->j:F

    .line 6
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->k:Landroid/graphics/Paint;

    .line 7
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->l:Landroid/graphics/Paint;

    const/4 p3, -0x1

    .line 8
    iput p3, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->n:I

    const v0, 0xffffff

    .line 9
    iput v0, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->o:I

    const/high16 v0, 0x1a000000

    .line 10
    iput v0, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->p:I

    .line 11
    iput p3, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->q:I

    const v0, 0x66ffffff

    .line 12
    iput v0, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->r:I

    const/high16 v0, 0x19000000

    .line 13
    iput v0, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->s:I

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->t:Z

    .line 15
    iput-boolean p2, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->u:Z

    .line 16
    iput-boolean p2, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->v:Z

    .line 17
    iput-boolean v0, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->w:Z

    const/16 v1, 0xc

    .line 18
    iput v1, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->x:I

    const/16 v1, 0x18

    .line 19
    iput v1, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->y:I

    .line 20
    iput p2, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->z:I

    .line 21
    iput p2, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->A:I

    const/16 v1, 0xe

    .line 22
    iput v1, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->B:I

    const/16 v1, 0x34

    .line 23
    iput v1, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->C:I

    const/high16 v1, 0x40400000    # 3.0f

    .line 24
    iput v1, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->D:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 25
    iput v1, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->E:F

    .line 26
    iput v0, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->F:I

    .line 27
    iput p2, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->G:I

    .line 28
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    .line 29
    invoke-virtual {p0, p2}, Landroid/widget/HorizontalScrollView;->setWillNotDraw(Z)V

    .line 30
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 31
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->f:Landroid/widget/LinearLayout;

    .line 32
    invoke-virtual {v2, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 33
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, p3, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/high16 p2, 0x42480000    # 50.0f

    .line 34
    invoke-static {v0, p2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int p2, p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 35
    iget-object p2, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    iget-object p1, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 37
    iget p1, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->C:I

    int-to-float p1, p1

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->C:I

    .line 38
    iget p1, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->x:I

    int-to-float p1, p1

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->x:I

    .line 39
    iget p1, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->y:I

    int-to-float p1, p1

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->y:I

    .line 40
    iget p1, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->F:I

    int-to-float p1, p1

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->F:I

    .line 41
    iget p1, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->D:F

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->D:F

    .line 42
    iget p1, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->E:F

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->E:F

    .line 43
    iget-object p1, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 44
    iget-object p1, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->k:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 45
    iget-object p1, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->k:Landroid/graphics/Paint;

    iget p2, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->n:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    iget-object p1, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 47
    iget-object p1, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->l:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 48
    iget-object p1, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->l:Landroid/graphics/Paint;

    iget p2, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->o:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->m:Landroid/graphics/Paint;

    .line 50
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 51
    iget-object p1, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->m:Landroid/graphics/Paint;

    iget p2, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->F:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method static synthetic a(Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->H:Z

    return p0
.end method

.method static synthetic b(Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->g:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static synthetic c(Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;)Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->e:Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator$b;

    return-object p0
.end method

.method static synthetic d(Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->w:Z

    return p0
.end method

.method static synthetic e(Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->i:I

    return p1
.end method

.method static synthetic f(Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->j:F

    return p1
.end method

.method static synthetic g(Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->f:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic h(Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->l(II)V

    return-void
.end method

.method static synthetic i(Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->m(I)V

    return-void
.end method

.method private j(ILjava/lang/String;)V
    .locals 5

    .line 1
    new-instance v0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator$d;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator$d;-><init>(Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0}, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator$d;->b()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x1

    .line 3
    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 4
    new-instance p2, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator$a;

    invoke-direct {p2, p0, p1}, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator$a;-><init>(Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;I)V

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-boolean p2, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->t:Z

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 6
    iget p2, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->y:I

    invoke-virtual {v0, p2, v1, p2, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 7
    :cond_0
    iget-object p2, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->f:Landroid/widget/LinearLayout;

    .line 8
    iget-boolean v2, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->t:Z

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    goto :goto_0

    .line 9
    :cond_1
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v2, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 10
    :goto_0
    invoke-virtual {p2, v0, p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private l(II)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->h:I

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/2addr v0, p2

    if-gtz p1, :cond_1

    if-lez p2, :cond_2

    .line 3
    :cond_1
    iget p1, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->C:I

    sub-int/2addr v0, p1

    .line 4
    :cond_2
    iget p1, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->G:I

    if-eq v0, p1, :cond_3

    .line 5
    iput v0, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->G:I

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, v0, p1}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    :cond_3
    return-void
.end method

.method private m(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 2
    iget-object v3, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v2, p1, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 3
    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    if-eqz v4, :cond_1

    .line 4
    check-cast v3, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator$d;

    invoke-virtual {v3}, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator$d;->b()Landroid/widget/TextView;

    move-result-object v3

    iget v4, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->q:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 5
    :cond_1
    check-cast v3, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator$d;

    invoke-virtual {v3}, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator$d;->b()Landroid/widget/TextView;

    move-result-object v3

    iget v4, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->r:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private n()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget v2, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->h:I

    if-ge v1, v2, :cond_0

    .line 2
    iget-object v2, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->g:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->m(I)V

    return-void
.end method


# virtual methods
.method public getViewPagerScrollWithAnimation()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->w:Z

    return v0
.end method

.method public k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->g:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->e()I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->h:I

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget v1, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->h:I

    if-ge v0, v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->g:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/a;->g(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->j(ILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->n()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 1
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->h:I

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v0

    .line 4
    iget-boolean v1, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->v:Z

    if-eqz v1, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 5
    iget-object v1, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    int-to-float v5, v1

    iget v6, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->E:F

    iget-object v7, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->l:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    int-to-float v12, v0

    .line 6
    iget v1, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->E:F

    sub-float v10, v12, v1

    iget-object v1, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->f:Landroid/widget/LinearLayout;

    .line 7
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    int-to-float v11, v1

    iget-object v13, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->l:Landroid/graphics/Paint;

    move-object v8, p1

    .line 8
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 9
    :goto_0
    iget-object v1, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->f:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->i:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    .line 11
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    .line 12
    iget v3, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->j:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    iget v3, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->i:I

    iget v4, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->h:I

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_2

    .line 13
    iget-object v4, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->f:Landroid/widget/LinearLayout;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 14
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    .line 15
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    .line 16
    iget v5, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->j:F

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

    .line 17
    iget-boolean v1, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->v:Z

    if-eqz v1, :cond_3

    const/4 v5, 0x0

    .line 18
    iget v7, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->D:F

    iget-object v8, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->k:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_3
    int-to-float v7, v0

    .line 19
    iget v1, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->D:F

    sub-float v5, v7, v1

    iget-object v8, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->k:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 20
    :goto_1
    iget-boolean v1, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->u:Z

    if-eqz v1, :cond_4

    .line 21
    iget-object v1, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->m:Landroid/graphics/Paint;

    iget v2, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->p:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x0

    .line 22
    :goto_2
    iget v2, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->h:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_4

    .line 23
    iget-object v2, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 24
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v5, v3

    iget v3, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->x:I

    int-to-float v6, v3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v7, v2

    iget v2, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->x:I

    sub-int v2, v0, v2

    int-to-float v8, v2

    iget-object v9, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->m:Landroid/graphics/Paint;

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

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->g:Landroidx/viewpager/widget/ViewPager;

    iget-boolean v1, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->w:Z

    invoke-virtual {v0, p1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public setEnableDivider(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->u:Z

    return-void
.end method

.method public setEnableExpand(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->t:Z

    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setIndicatorOnTop(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->v:Z

    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->d:Landroidx/viewpager/widget/ViewPager$i;

    return-void
.end method

.method public setOnTabReselectedListener(Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->e:Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator$b;

    return-void
.end method

.method public setTabText(ILjava/lang/String;)V
    .locals 1

    if-ltz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 3
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "tabs does not have this position."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setUnderlineColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->g:Landroidx/viewpager/widget/ViewPager;

    .line 2
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator$c;-><init>(Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator$a;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$i;)V

    .line 4
    invoke-virtual {p0}, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->k()V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ViewPager does not have adapter instance."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setViewPagerScrollWithAnimation(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->w:Z

    return-void
.end method
