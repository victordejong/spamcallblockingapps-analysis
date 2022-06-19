.class public Lcom/rey/material/widget/TabPageIndicator;
.super Landroid/widget/HorizontalScrollView;
.source ""

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$i;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/rey/material/app/b$c;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rey/material/widget/TabPageIndicator$c;
    }
.end annotation


# instance fields
.field protected b:I

.field protected c:I

.field private d:Lcom/rey/material/widget/TabPageIndicator$c;

.field private e:Landroidx/viewpager/widget/ViewPager;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Z

.field private k:I

.field private l:I

.field private m:I

.field private n:Landroid/graphics/Paint;

.field private o:I

.field private p:Z

.field private q:Z

.field private r:Ljava/lang/Runnable;

.field private s:Landroidx/viewpager/widget/ViewPager$i;

.field private t:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/rey/material/widget/TabPageIndicator;->c:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/rey/material/widget/TabPageIndicator;->g:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/rey/material/widget/TabPageIndicator;->h:I

    iput v1, p0, Lcom/rey/material/widget/TabPageIndicator;->i:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/rey/material/widget/TabPageIndicator;->j:Z

    iput v0, p0, Lcom/rey/material/widget/TabPageIndicator;->m:I

    iput-boolean v1, p0, Lcom/rey/material/widget/TabPageIndicator;->p:Z

    iput-boolean v1, p0, Lcom/rey/material/widget/TabPageIndicator;->q:Z

    new-instance v0, Lcom/rey/material/widget/TabPageIndicator$a;

    invoke-direct {v0, p0}, Lcom/rey/material/widget/TabPageIndicator$a;-><init>(Lcom/rey/material/widget/TabPageIndicator;)V

    iput-object v0, p0, Lcom/rey/material/widget/TabPageIndicator;->t:Landroid/database/DataSetObserver;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/rey/material/widget/TabPageIndicator;->y(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/rey/material/widget/TabPageIndicator;->c:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/rey/material/widget/TabPageIndicator;->g:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/rey/material/widget/TabPageIndicator;->h:I

    iput v1, p0, Lcom/rey/material/widget/TabPageIndicator;->i:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/rey/material/widget/TabPageIndicator;->j:Z

    iput v0, p0, Lcom/rey/material/widget/TabPageIndicator;->m:I

    iput-boolean v1, p0, Lcom/rey/material/widget/TabPageIndicator;->p:Z

    iput-boolean v1, p0, Lcom/rey/material/widget/TabPageIndicator;->q:Z

    new-instance v0, Lcom/rey/material/widget/TabPageIndicator$a;

    invoke-direct {v0, p0}, Lcom/rey/material/widget/TabPageIndicator$a;-><init>(Lcom/rey/material/widget/TabPageIndicator;)V

    iput-object v0, p0, Lcom/rey/material/widget/TabPageIndicator;->t:Landroid/database/DataSetObserver;

    invoke-direct {p0, p1, p2, v1, v1}, Lcom/rey/material/widget/TabPageIndicator;->y(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/rey/material/widget/TabPageIndicator;->c:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/rey/material/widget/TabPageIndicator;->g:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/rey/material/widget/TabPageIndicator;->h:I

    iput v1, p0, Lcom/rey/material/widget/TabPageIndicator;->i:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/rey/material/widget/TabPageIndicator;->j:Z

    iput v0, p0, Lcom/rey/material/widget/TabPageIndicator;->m:I

    iput-boolean v1, p0, Lcom/rey/material/widget/TabPageIndicator;->p:Z

    iput-boolean v1, p0, Lcom/rey/material/widget/TabPageIndicator;->q:Z

    new-instance v0, Lcom/rey/material/widget/TabPageIndicator$a;

    invoke-direct {v0, p0}, Lcom/rey/material/widget/TabPageIndicator$a;-><init>(Lcom/rey/material/widget/TabPageIndicator;)V

    iput-object v0, p0, Lcom/rey/material/widget/TabPageIndicator;->t:Landroid/database/DataSetObserver;

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/rey/material/widget/TabPageIndicator;->y(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private A()V
    .locals 5

    iget-object v0, p0, Lcom/rey/material/widget/TabPageIndicator;->e:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->e()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-direct {p0, v2}, Lcom/rey/material/widget/TabPageIndicator;->x(I)Landroid/widget/CheckedTextView;

    move-result-object v3

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/a;->g(I)Ljava/lang/CharSequence;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v4, "NULL"

    :cond_0
    invoke-virtual {v3, v4}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    return-void
.end method

.method private B(II)V
    .locals 0

    iput p1, p0, Lcom/rey/material/widget/TabPageIndicator;->k:I

    iput p2, p0, Lcom/rey/material/widget/TabPageIndicator;->l:I

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method static synthetic f(Lcom/rey/material/widget/TabPageIndicator;)V
    .locals 0

    invoke-direct {p0}, Lcom/rey/material/widget/TabPageIndicator;->z()V

    return-void
.end method

.method static synthetic g(Lcom/rey/material/widget/TabPageIndicator;)V
    .locals 0

    invoke-direct {p0}, Lcom/rey/material/widget/TabPageIndicator;->A()V

    return-void
.end method

.method static synthetic i(Lcom/rey/material/widget/TabPageIndicator;I)Landroid/widget/CheckedTextView;
    .locals 0

    invoke-direct {p0, p1}, Lcom/rey/material/widget/TabPageIndicator;->x(I)Landroid/widget/CheckedTextView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic l(Lcom/rey/material/widget/TabPageIndicator;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/rey/material/widget/TabPageIndicator;->p:Z

    return p0
.end method

.method static synthetic m(Lcom/rey/material/widget/TabPageIndicator;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/rey/material/widget/TabPageIndicator;->B(II)V

    return-void
.end method

.method static synthetic o(Lcom/rey/material/widget/TabPageIndicator;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/rey/material/widget/TabPageIndicator;->r:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic r(Lcom/rey/material/widget/TabPageIndicator;)I
    .locals 0

    iget p0, p0, Lcom/rey/material/widget/TabPageIndicator;->f:I

    return p0
.end method

.method static synthetic s(Lcom/rey/material/widget/TabPageIndicator;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/rey/material/widget/TabPageIndicator;->q:Z

    return p0
.end method

.method private t()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_7

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    const-string v4, "TAB ONE"

    goto :goto_1

    :cond_0
    if-ne v1, v3, :cond_1

    const-string v4, "TAB TWO"

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    const-string v4, "TAB THREE"

    goto :goto_1

    :cond_2
    move-object v4, v2

    :goto_1
    new-instance v5, Landroid/widget/CheckedTextView;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v2}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v4}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x11

    invoke-virtual {v5, v2}, Landroid/widget/CheckedTextView;->setGravity(I)V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v2, :cond_3

    const/4 v2, 0x4

    invoke-virtual {v5, v2}, Landroid/widget/CheckedTextView;->setTextAlignment(I)V

    :cond_3
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v4, p0, Lcom/rey/material/widget/TabPageIndicator;->i:I

    invoke-virtual {v5, v2, v4}, Landroid/widget/CheckedTextView;->setTextAppearance(Landroid/content/Context;I)V

    invoke-virtual {v5, v3}, Landroid/widget/CheckedTextView;->setSingleLine(Z)V

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v2}, Landroid/widget/CheckedTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/CheckedTextView;->setTag(Ljava/lang/Object;)V

    if-nez v1, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v5, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget v2, p0, Lcom/rey/material/widget/TabPageIndicator;->f:I

    const/4 v4, -0x1

    if-nez v2, :cond_5

    iget v2, p0, Lcom/rey/material/widget/TabPageIndicator;->g:I

    invoke-virtual {v5, v2, v0, v2, v0}, Landroid/widget/CheckedTextView;->setPadding(IIII)V

    iget-object v2, p0, Lcom/rey/material/widget/TabPageIndicator;->d:Lcom/rey/material/widget/TabPageIndicator$c;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v3, v6, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    :cond_5
    if-ne v2, v3, :cond_6

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v3, p0, Lcom/rey/material/widget/TabPageIndicator;->d:Lcom/rey/material/widget/TabPageIndicator$c;

    invoke-virtual {v3, v5, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method private u(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/rey/material/widget/TabPageIndicator;->x(I)Landroid/widget/CheckedTextView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/rey/material/widget/TabPageIndicator;->r:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    new-instance v0, Lcom/rey/material/widget/TabPageIndicator$b;

    invoke-direct {v0, p0, p1}, Lcom/rey/material/widget/TabPageIndicator$b;-><init>(Lcom/rey/material/widget/TabPageIndicator;I)V

    iput-object v0, p0, Lcom/rey/material/widget/TabPageIndicator;->r:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private x(I)Landroid/widget/CheckedTextView;
    .locals 1

    iget-object v0, p0, Lcom/rey/material/widget/TabPageIndicator;->d:Lcom/rey/material/widget/TabPageIndicator$c;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckedTextView;

    return-object p1
.end method

.method private y(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/rey/material/widget/TabPageIndicator;->n:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/rey/material/widget/TabPageIndicator;->n:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-static {p1, v1}, Le/g/a/b/b;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Lcom/rey/material/widget/TabPageIndicator$c;

    invoke-direct {v0, p0, p1}, Lcom/rey/material/widget/TabPageIndicator$c;-><init>(Lcom/rey/material/widget/TabPageIndicator;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rey/material/widget/TabPageIndicator;->d:Lcom/rey/material/widget/TabPageIndicator$c;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/rey/material/widget/TabPageIndicator;->w(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/rey/material/widget/TabPageIndicator;->t()V

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/rey/material/app/b;->f(Landroid/content/Context;Landroid/util/AttributeSet;II)I

    move-result p1

    iput p1, p0, Lcom/rey/material/widget/TabPageIndicator;->b:I

    return-void
.end method

.method private z()V
    .locals 9

    iget-object v0, p0, Lcom/rey/material/widget/TabPageIndicator;->d:Lcom/rey/material/widget/TabPageIndicator$c;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/rey/material/widget/TabPageIndicator;->e:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->e()I

    move-result v1

    iget v2, p0, Lcom/rey/material/widget/TabPageIndicator;->o:I

    if-le v2, v1, :cond_0

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/rey/material/widget/TabPageIndicator;->o:I

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_5

    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/a;->g(I)Ljava/lang/CharSequence;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v4, "NULL"

    :cond_1
    new-instance v5, Landroid/widget/CheckedTextView;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v4}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v4, 0x11

    invoke-virtual {v5, v4}, Landroid/widget/CheckedTextView;->setGravity(I)V

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v4, :cond_2

    const/4 v4, 0x4

    invoke-virtual {v5, v4}, Landroid/widget/CheckedTextView;->setTextAlignment(I)V

    :cond_2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v6, p0, Lcom/rey/material/widget/TabPageIndicator;->i:I

    invoke-virtual {v5, v4, v6}, Landroid/widget/CheckedTextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-boolean v4, p0, Lcom/rey/material/widget/TabPageIndicator;->j:Z

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Landroid/widget/CheckedTextView;->setSingleLine(Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {v5, v2}, Landroid/widget/CheckedTextView;->setSingleLine(Z)V

    const/4 v4, 0x2

    invoke-virtual {v5, v4}, Landroid/widget/CheckedTextView;->setMaxLines(I)V

    :goto_1
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v4}, Landroid/widget/CheckedTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v5, p0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/CheckedTextView;->setTag(Ljava/lang/Object;)V

    new-instance v4, Le/g/a/a/f$b;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v6

    iget v7, p0, Lcom/rey/material/widget/TabPageIndicator;->h:I

    invoke-direct {v4, v6, v7}, Le/g/a/a/f$b;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4}, Le/g/a/a/f$b;->g()Le/g/a/a/f;

    move-result-object v4

    iget v6, p0, Lcom/rey/material/widget/TabPageIndicator;->h:I

    if-lez v6, :cond_4

    invoke-static {v5, v4}, Le/g/a/b/d;->h(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_4
    iget v4, p0, Lcom/rey/material/widget/TabPageIndicator;->g:I

    invoke-virtual {v5, v4, v2, v4, v2}, Landroid/widget/CheckedTextView;->setPadding(IIII)V

    iget-object v4, p0, Lcom/rey/material/widget/TabPageIndicator;->d:Lcom/rey/material/widget/TabPageIndicator$c;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x1

    invoke-direct {v6, v7, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/rey/material/widget/TabPageIndicator;->o:I

    invoke-virtual {p0, v0}, Lcom/rey/material/widget/TabPageIndicator;->setCurrentItem(I)V

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    return-void
.end method


# virtual methods
.method public a(IFI)V
    .locals 4

    iget-object v0, p0, Lcom/rey/material/widget/TabPageIndicator;->s:Landroidx/viewpager/widget/ViewPager$i;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$i;->a(IFI)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/rey/material/widget/TabPageIndicator;->x(I)Landroid/widget/CheckedTextView;

    move-result-object p3

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/rey/material/widget/TabPageIndicator;->x(I)Landroid/widget/CheckedTextView;

    move-result-object p1

    if-eqz p3, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p3}, Landroid/widget/CheckedTextView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/CheckedTextView;->getMeasuredWidth()I

    move-result p1

    add-int v1, v0, p1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    int-to-float v3, v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    mul-float p1, p1, p2

    add-float/2addr p1, v3

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p3}, Landroid/widget/CheckedTextView;->getLeft()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr v3, v2

    add-float/2addr p3, v3

    mul-float v1, v1, p2

    add-float/2addr p3, v1

    int-to-float p2, p1

    div-float/2addr p2, v2

    sub-float/2addr p3, p2

    add-float/2addr p3, v0

    float-to-int p2, p3

    invoke-direct {p0, p2, p1}, Lcom/rey/material/widget/TabPageIndicator;->B(II)V

    :cond_1
    return-void
.end method

.method public b(I)V
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rey/material/widget/TabPageIndicator;->p:Z

    iget v0, p0, Lcom/rey/material/widget/TabPageIndicator;->o:I

    invoke-direct {p0, v0}, Lcom/rey/material/widget/TabPageIndicator;->x(I)Landroid/widget/CheckedTextView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->getMeasuredWidth()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/rey/material/widget/TabPageIndicator;->B(II)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rey/material/widget/TabPageIndicator;->p:Z

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/rey/material/widget/TabPageIndicator;->s:Landroidx/viewpager/widget/ViewPager$i;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$i;->b(I)V

    :cond_2
    return-void
.end method

.method public c(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/rey/material/widget/TabPageIndicator;->setCurrentItem(I)V

    iget-object v0, p0, Lcom/rey/material/widget/TabPageIndicator;->s:Landroidx/viewpager/widget/ViewPager$i;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$i;->c(I)V

    :cond_0
    return-void
.end method

.method public d(Lcom/rey/material/app/b$b;)V
    .locals 1

    invoke-static {}, Lcom/rey/material/app/b;->c()Lcom/rey/material/app/b;

    move-result-object p1

    iget v0, p0, Lcom/rey/material/widget/TabPageIndicator;->b:I

    invoke-virtual {p1, v0}, Lcom/rey/material/app/b;->b(I)I

    move-result p1

    iget v0, p0, Lcom/rey/material/widget/TabPageIndicator;->c:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/rey/material/widget/TabPageIndicator;->c:I

    invoke-virtual {p0, p1}, Lcom/rey/material/widget/TabPageIndicator;->v(I)V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->draw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/rey/material/widget/TabPageIndicator;->k:I

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v2, v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v1

    iget v3, p0, Lcom/rey/material/widget/TabPageIndicator;->m:I

    sub-int/2addr v1, v3

    int-to-float v3, v1

    iget v1, p0, Lcom/rey/material/widget/TabPageIndicator;->l:I

    add-int/2addr v0, v1

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/rey/material/widget/TabPageIndicator;->n:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingLeft()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/rey/material/widget/TabPageIndicator;->m:I

    sub-int/2addr v0, v1

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/rey/material/widget/TabPageIndicator;->d:Lcom/rey/material/widget/TabPageIndicator$c;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/rey/material/widget/TabPageIndicator;->n:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/rey/material/widget/TabPageIndicator;->r:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget v0, p0, Lcom/rey/material/widget/TabPageIndicator;->b:I

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/rey/material/app/b;->c()Lcom/rey/material/app/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/rey/material/app/b;->j(Lcom/rey/material/app/b$c;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/rey/material/widget/TabPageIndicator;->d(Lcom/rey/material/app/b$b;)V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v0, p0, Lcom/rey/material/widget/TabPageIndicator;->o:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/rey/material/widget/TabPageIndicator;->s:Landroidx/viewpager/widget/ViewPager$i;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$i;->c(I)V

    :cond_0
    iget-object v0, p0, Lcom/rey/material/widget/TabPageIndicator;->e:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/rey/material/widget/TabPageIndicator;->r:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget v0, p0, Lcom/rey/material/widget/TabPageIndicator;->b:I

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/rey/material/app/b;->c()Lcom/rey/material/app/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/rey/material/app/b;->m(Lcom/rey/material/app/b$c;)V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingLeft()I

    move-result p1

    sub-int p1, v1, p1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingRight()I

    move-result v4

    sub-int/2addr p1, v4

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingTop()I

    move-result p2

    sub-int p2, v3, p2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr p2, v4

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_1
    iget-object v4, p0, Lcom/rey/material/widget/TabPageIndicator;->d:Lcom/rey/material/widget/TabPageIndicator$c;

    invoke-virtual {v4, p1, p2}, Landroid/widget/FrameLayout;->measure(II)V

    const/high16 p1, -0x80000000

    const/4 p2, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    if-eq v0, p1, :cond_3

    if-eqz v0, :cond_2

    if-eq v0, v4, :cond_4

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/rey/material/widget/TabPageIndicator;->d:Lcom/rey/material/widget/TabPageIndicator$c;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingRight()I

    move-result v1

    add-int/2addr v1, v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/rey/material/widget/TabPageIndicator;->d:Lcom/rey/material/widget/TabPageIndicator$c;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingRight()I

    move-result v5

    add-int/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_4
    :goto_0
    if-eq v2, p1, :cond_6

    if-eqz v2, :cond_5

    if-eq v2, v4, :cond_7

    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/rey/material/widget/TabPageIndicator;->d:Lcom/rey/material/widget/TabPageIndicator$c;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingTop()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingBottom()I

    move-result p2

    add-int v3, p1, p2

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/rey/material/widget/TabPageIndicator;->d:Lcom/rey/material/widget/TabPageIndicator$c;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingTop()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingBottom()I

    move-result p2

    add-int/2addr p1, p2

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/rey/material/widget/TabPageIndicator;->d:Lcom/rey/material/widget/TabPageIndicator$c;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingLeft()I

    move-result p2

    sub-int p2, v1, p2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingRight()I

    move-result v0

    sub-int/2addr p2, v0

    if-ne p1, p2, :cond_8

    iget-object p1, p0, Lcom/rey/material/widget/TabPageIndicator;->d:Lcom/rey/material/widget/TabPageIndicator$c;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingTop()I

    move-result p2

    sub-int p2, v3, p2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p2, v0

    if-eq p1, p2, :cond_9

    :cond_8
    iget-object p1, p0, Lcom/rey/material/widget/TabPageIndicator;->d:Lcom/rey/material/widget/TabPageIndicator$c;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingLeft()I

    move-result p2

    sub-int p2, v1, p2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingRight()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingTop()I

    move-result v0

    sub-int v0, v3, v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/widget/FrameLayout;->measure(II)V

    :cond_9
    invoke-virtual {p0, v1, v3}, Landroid/widget/HorizontalScrollView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean p1, p0, Lcom/rey/material/widget/TabPageIndicator;->q:Z

    if-eq p1, v0, :cond_1

    iput-boolean v0, p0, Lcom/rey/material/widget/TabPageIndicator;->q:Z

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onSizeChanged(IIII)V

    iget p1, p0, Lcom/rey/material/widget/TabPageIndicator;->o:I

    invoke-direct {p0, p1}, Lcom/rey/material/widget/TabPageIndicator;->x(I)Landroid/widget/CheckedTextView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/CheckedTextView;->getLeft()I

    move-result p2

    invoke-virtual {p1}, Landroid/widget/CheckedTextView;->getMeasuredWidth()I

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/rey/material/widget/TabPageIndicator;->B(II)V

    :cond_0
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2

    iget v0, p0, Lcom/rey/material/widget/TabPageIndicator;->o:I

    if-eq v0, p1, :cond_0

    invoke-direct {p0, v0}, Lcom/rey/material/widget/TabPageIndicator;->x(I)Landroid/widget/CheckedTextView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :cond_0
    iput p1, p0, Lcom/rey/material/widget/TabPageIndicator;->o:I

    invoke-direct {p0, p1}, Lcom/rey/material/widget/TabPageIndicator;->x(I)Landroid/widget/CheckedTextView;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :cond_1
    invoke-direct {p0, p1}, Lcom/rey/material/widget/TabPageIndicator;->u(I)V

    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$i;)V
    .locals 0

    iput-object p1, p0, Lcom/rey/material/widget/TabPageIndicator;->s:Landroidx/viewpager/widget/ViewPager$i;

    return-void
.end method

.method public setPageIcon([I)V
    .locals 0

    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 2

    iget-object v0, p0, Lcom/rey/material/widget/TabPageIndicator;->e:Landroidx/viewpager/widget/ViewPager;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/ViewPager;->N(Landroidx/viewpager/widget/ViewPager$i;)V

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/rey/material/widget/TabPageIndicator;->t:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/a;->t(Landroid/database/DataSetObserver;)V

    :cond_1
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/rey/material/widget/TabPageIndicator;->t:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/a;->l(Landroid/database/DataSetObserver;)V

    iput-object p1, p0, Lcom/rey/material/widget/TabPageIndicator;->e:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->c(Landroidx/viewpager/widget/ViewPager$i;)V

    invoke-direct {p0}, Lcom/rey/material/widget/TabPageIndicator;->z()V

    iget-object p1, p0, Lcom/rey/material/widget/TabPageIndicator;->e:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/rey/material/widget/TabPageIndicator;->c(I)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ViewPager does not have adapter instance."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/rey/material/widget/TabPageIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    invoke-virtual {p0, p2}, Lcom/rey/material/widget/TabPageIndicator;->setCurrentItem(I)V

    return-void
.end method

.method public v(I)V
    .locals 3

    invoke-static {p0, p1}, Le/g/a/b/d;->b(Landroid/view/View;I)V

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/rey/material/widget/TabPageIndicator;->w(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method protected w(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9

    sget-object v0, Lcom/callerid/block/R$styleable;->TabPageIndicator:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p3

    const/4 p4, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ge v1, p3, :cond_7

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_0

    invoke-virtual {p2, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/rey/material/widget/TabPageIndicator;->g:I

    goto :goto_1

    :cond_0
    const/4 v8, 0x5

    if-ne v7, v8, :cond_1

    invoke-virtual {p2, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    goto :goto_1

    :cond_1
    if-ne v7, v6, :cond_2

    iget-object v5, p0, Lcom/rey/material/widget/TabPageIndicator;->n:Landroid/graphics/Paint;

    invoke-virtual {p2, v7, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_2
    if-ne v7, v5, :cond_3

    invoke-virtual {p2, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/rey/material/widget/TabPageIndicator;->m:I

    goto :goto_1

    :cond_3
    const/4 v5, 0x6

    if-ne v7, v5, :cond_4

    invoke-virtual {p2, v7, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/rey/material/widget/TabPageIndicator;->j:Z

    goto :goto_1

    :cond_4
    if-nez v7, :cond_5

    invoke-virtual {p2, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    goto :goto_1

    :cond_5
    const/4 v5, 0x3

    if-ne v7, v5, :cond_6

    invoke-virtual {p2, v7, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    :cond_6
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    iget p2, p0, Lcom/rey/material/widget/TabPageIndicator;->g:I

    if-gez p2, :cond_8

    const/16 p2, 0xc

    invoke-static {p1, p2}, Le/g/a/b/b;->e(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/rey/material/widget/TabPageIndicator;->g:I

    :cond_8
    iget p2, p0, Lcom/rey/material/widget/TabPageIndicator;->m:I

    if-gez p2, :cond_9

    invoke-static {p1, v5}, Le/g/a/b/b;->e(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/rey/material/widget/TabPageIndicator;->m:I

    :cond_9
    if-ltz v2, :cond_c

    iget p2, p0, Lcom/rey/material/widget/TabPageIndicator;->f:I

    if-ne p2, v2, :cond_a

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result p2

    if-nez p2, :cond_c

    :cond_a
    iput v2, p0, Lcom/rey/material/widget/TabPageIndicator;->f:I

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->removeAllViews()V

    iget p2, p0, Lcom/rey/material/widget/TabPageIndicator;->f:I

    if-nez p2, :cond_b

    iget-object p2, p0, Lcom/rey/material/widget/TabPageIndicator;->d:Lcom/rey/material/widget/TabPageIndicator$c;

    new-instance p3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p3, v1, p4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2, p3}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    goto :goto_2

    :cond_b
    if-ne p2, v6, :cond_c

    iget-object p2, p0, Lcom/rey/material/widget/TabPageIndicator;->d:Lcom/rey/material/widget/TabPageIndicator$c;

    new-instance p3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p3, p4, p4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2, p3}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v6}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    :cond_c
    :goto_2
    if-eqz v3, :cond_d

    iget p2, p0, Lcom/rey/material/widget/TabPageIndicator;->i:I

    if-eq p2, v3, :cond_d

    iput v3, p0, Lcom/rey/material/widget/TabPageIndicator;->i:I

    iget-object p2, p0, Lcom/rey/material/widget/TabPageIndicator;->d:Lcom/rey/material/widget/TabPageIndicator$c;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p2

    const/4 p3, 0x0

    :goto_3
    if-ge p3, p2, :cond_d

    iget-object p4, p0, Lcom/rey/material/widget/TabPageIndicator;->d:Lcom/rey/material/widget/TabPageIndicator$c;

    invoke-virtual {p4, p3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/CheckedTextView;

    iget v1, p0, Lcom/rey/material/widget/TabPageIndicator;->i:I

    invoke-virtual {p4, p1, v1}, Landroid/widget/CheckedTextView;->setTextAppearance(Landroid/content/Context;I)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_d
    if-eqz v4, :cond_e

    iget p1, p0, Lcom/rey/material/widget/TabPageIndicator;->h:I

    if-eq v4, p1, :cond_e

    iput v4, p0, Lcom/rey/material/widget/TabPageIndicator;->h:I

    iget-object p1, p0, Lcom/rey/material/widget/TabPageIndicator;->d:Lcom/rey/material/widget/TabPageIndicator$c;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    :goto_4
    if-ge v0, p1, :cond_e

    iget-object p2, p0, Lcom/rey/material/widget/TabPageIndicator;->d:Lcom/rey/material/widget/TabPageIndicator$c;

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Le/g/a/a/f$b;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object p4

    iget v1, p0, Lcom/rey/material/widget/TabPageIndicator;->h:I

    invoke-direct {p3, p4, v1}, Le/g/a/a/f$b;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p3}, Le/g/a/a/f$b;->g()Le/g/a/a/f;

    move-result-object p3

    invoke-static {p2, p3}, Le/g/a/b/d;->h(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_e
    iget-object p1, p0, Lcom/rey/material/widget/TabPageIndicator;->e:Landroidx/viewpager/widget/ViewPager;

    if-eqz p1, :cond_f

    invoke-direct {p0}, Lcom/rey/material/widget/TabPageIndicator;->z()V

    :cond_f
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    return-void
.end method
