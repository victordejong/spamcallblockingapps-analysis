.class public Lcom/viewpagerindicator/IconPageIndicator;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"

# interfaces
.implements Lcom/viewpagerindicator/c;


# instance fields
.field private final a:Lcom/viewpagerindicator/b;

.field private b:Landroidx/viewpager/widget/ViewPager;

.field private c:Landroidx/viewpager/widget/ViewPager$e;

.field private d:Ljava/lang/Runnable;

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/viewpagerindicator/IconPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 50
    invoke-virtual {p0, p2}, Lcom/viewpagerindicator/IconPageIndicator;->setHorizontalScrollBarEnabled(Z)V

    .line 52
    new-instance p2, Lcom/viewpagerindicator/b;

    sget v0, Lcom/viewpagerindicator/d$a;->vpiIconPageIndicatorStyle:I

    invoke-direct {p2, p1, v0}, Lcom/viewpagerindicator/b;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/viewpagerindicator/IconPageIndicator;->a:Lcom/viewpagerindicator/b;

    .line 53
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, -0x1

    const/16 v2, 0x11

    invoke-direct {p1, v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, p2, p1}, Lcom/viewpagerindicator/IconPageIndicator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcom/viewpagerindicator/IconPageIndicator;)Ljava/lang/Runnable;
    .locals 1

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/viewpagerindicator/IconPageIndicator;->d:Ljava/lang/Runnable;

    return-object v0
.end method

.method private a()V
    .locals 7

    .line 128
    iget-object v0, p0, Lcom/viewpagerindicator/IconPageIndicator;->a:Lcom/viewpagerindicator/b;

    invoke-virtual {v0}, Lcom/viewpagerindicator/b;->removeAllViews()V

    .line 129
    iget-object v0, p0, Lcom/viewpagerindicator/IconPageIndicator;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/a;

    .line 130
    invoke-interface {v0}, Lcom/viewpagerindicator/a;->b()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 132
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/viewpagerindicator/IconPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    sget v6, Lcom/viewpagerindicator/d$a;->vpiIconPageIndicatorStyle:I

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 133
    invoke-interface {v0}, Lcom/viewpagerindicator/a;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 134
    iget-object v4, p0, Lcom/viewpagerindicator/IconPageIndicator;->a:Lcom/viewpagerindicator/b;

    invoke-virtual {v4, v3}, Lcom/viewpagerindicator/b;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 136
    :cond_0
    iget v0, p0, Lcom/viewpagerindicator/IconPageIndicator;->e:I

    if-le v0, v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    .line 137
    iput v1, p0, Lcom/viewpagerindicator/IconPageIndicator;->e:I

    .line 139
    :cond_1
    iget v0, p0, Lcom/viewpagerindicator/IconPageIndicator;->e:I

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/IconPageIndicator;->setCurrentItem(I)V

    .line 140
    invoke-virtual {p0}, Lcom/viewpagerindicator/IconPageIndicator;->requestLayout()V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    .line 73
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 74
    iget-object v0, p0, Lcom/viewpagerindicator/IconPageIndicator;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/IconPageIndicator;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 82
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 83
    iget-object v0, p0, Lcom/viewpagerindicator/IconPageIndicator;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/IconPageIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/viewpagerindicator/IconPageIndicator;->c:Landroidx/viewpager/widget/ViewPager$e;

    if-eqz v0, :cond_0

    .line 91
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$e;->onPageScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/viewpagerindicator/IconPageIndicator;->c:Landroidx/viewpager/widget/ViewPager$e;

    if-eqz v0, :cond_0

    .line 98
    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$e;->onPageScrolled(IFI)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 104
    invoke-virtual {p0, p1}, Lcom/viewpagerindicator/IconPageIndicator;->setCurrentItem(I)V

    .line 105
    iget-object v0, p0, Lcom/viewpagerindicator/IconPageIndicator;->c:Landroidx/viewpager/widget/ViewPager$e;

    if-eqz v0, :cond_0

    .line 106
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$e;->onPageSelected(I)V

    :cond_0
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 5

    .line 151
    iget-object v0, p0, Lcom/viewpagerindicator/IconPageIndicator;->b:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_4

    .line 154
    iput p1, p0, Lcom/viewpagerindicator/IconPageIndicator;->e:I

    .line 155
    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 157
    iget-object v0, p0, Lcom/viewpagerindicator/IconPageIndicator;->a:Lcom/viewpagerindicator/b;

    invoke-virtual {v0}, Lcom/viewpagerindicator/b;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 159
    iget-object v3, p0, Lcom/viewpagerindicator/IconPageIndicator;->a:Lcom/viewpagerindicator/b;

    invoke-virtual {v3, v2}, Lcom/viewpagerindicator/b;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v2, p1, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 161
    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    if-eqz v4, :cond_2

    .line 1057
    iget-object v3, p0, Lcom/viewpagerindicator/IconPageIndicator;->a:Lcom/viewpagerindicator/b;

    invoke-virtual {v3, p1}, Lcom/viewpagerindicator/b;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1058
    iget-object v4, p0, Lcom/viewpagerindicator/IconPageIndicator;->d:Ljava/lang/Runnable;

    if-eqz v4, :cond_1

    .line 1059
    invoke-virtual {p0, v4}, Lcom/viewpagerindicator/IconPageIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1061
    :cond_1
    new-instance v4, Lcom/viewpagerindicator/IconPageIndicator$1;

    invoke-direct {v4, p0, v3}, Lcom/viewpagerindicator/IconPageIndicator$1;-><init>(Lcom/viewpagerindicator/IconPageIndicator;Landroid/view/View;)V

    iput-object v4, p0, Lcom/viewpagerindicator/IconPageIndicator;->d:Ljava/lang/Runnable;

    .line 1068
    invoke-virtual {p0, v4}, Lcom/viewpagerindicator/IconPageIndicator;->post(Ljava/lang/Runnable;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void

    .line 152
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ViewPager has not been bound."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$e;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/viewpagerindicator/IconPageIndicator;->c:Landroidx/viewpager/widget/ViewPager$e;

    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/viewpagerindicator/IconPageIndicator;->b:Landroidx/viewpager/widget/ViewPager;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 116
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$e;)V

    .line 118
    :cond_1
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 122
    iput-object p1, p0, Lcom/viewpagerindicator/IconPageIndicator;->b:Landroidx/viewpager/widget/ViewPager;

    .line 123
    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$e;)V

    .line 124
    invoke-direct {p0}, Lcom/viewpagerindicator/IconPageIndicator;->a()V

    return-void

    .line 120
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ViewPager does not have adapter instance."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;I)V
    .locals 0

    .line 145
    invoke-virtual {p0, p1}, Lcom/viewpagerindicator/IconPageIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 146
    invoke-virtual {p0, p2}, Lcom/viewpagerindicator/IconPageIndicator;->setCurrentItem(I)V

    return-void
.end method
