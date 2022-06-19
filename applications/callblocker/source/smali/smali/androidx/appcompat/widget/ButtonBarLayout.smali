.class public Landroidx/appcompat/widget/ButtonBarLayout;
.super Landroid/widget/LinearLayout;
.source "ButtonBarLayout.java"


# instance fields
.field private a:Z

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Landroidx/appcompat/widget/ButtonBarLayout;->b:I

    .line 48
    iput v5, p0, Landroidx/appcompat/widget/ButtonBarLayout;->c:I

    .line 52
    sget-object v0, Landroidx/appcompat/a$j;->ButtonBarLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 53
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 54
    sget-object v2, Landroidx/appcompat/a$j;->ButtonBarLayout:[I

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/widget/ButtonBarLayout;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 56
    :cond_0
    sget v0, Landroidx/appcompat/a$j;->ButtonBarLayout_allowStacking:I

    const/4 v1, 0x1

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/appcompat/widget/ButtonBarLayout;->a:Z

    .line 57
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 58
    return-void
.end method

.method private a(I)I
    .locals 3

    .prologue
    .line 144
    invoke-virtual {p0}, Landroidx/appcompat/widget/ButtonBarLayout;->getChildCount()I

    move-result v1

    move v0, p1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 145
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 149
    :goto_1
    return v0

    .line 144
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private a()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 175
    invoke-virtual {p0}, Landroidx/appcompat/widget/ButtonBarLayout;->getOrientation()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setStacked(Z)V
    .locals 2

    .prologue
    .line 158
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ButtonBarLayout;->setOrientation(I)V

    .line 159
    if-eqz p1, :cond_2

    const/4 v0, 0x5

    :goto_1
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ButtonBarLayout;->setGravity(I)V

    .line 161
    sget v0, Landroidx/appcompat/a$f;->spacer:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ButtonBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 162
    if-eqz v1, :cond_0

    .line 163
    if-eqz p1, :cond_3

    const/16 v0, 0x8

    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 168
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/ButtonBarLayout;->getChildCount()I

    move-result v0

    .line 169
    add-int/lit8 v0, v0, -0x2

    :goto_3
    if-ltz v0, :cond_4

    .line 170
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/ButtonBarLayout;->bringChildToFront(Landroid/view/View;)V

    .line 169
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 158
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 159
    :cond_2
    const/16 v0, 0x50

    goto :goto_1

    .line 163
    :cond_3
    const/4 v0, 0x4

    goto :goto_2

    .line 172
    :cond_4
    return-void
.end method


# virtual methods
.method public getMinimumHeight()I
    .locals 2

    .prologue
    .line 154
    iget v0, p0, Landroidx/appcompat/widget/ButtonBarLayout;->c:I

    invoke-super {p0}, Landroid/widget/LinearLayout;->getMinimumHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 72
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 74
    iget-boolean v1, p0, Landroidx/appcompat/widget/ButtonBarLayout;->a:Z

    if-eqz v1, :cond_1

    .line 75
    iget v1, p0, Landroidx/appcompat/widget/ButtonBarLayout;->b:I

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Landroidx/appcompat/widget/ButtonBarLayout;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    invoke-direct {p0, v3}, Landroidx/appcompat/widget/ButtonBarLayout;->setStacked(Z)V

    .line 80
    :cond_0
    iput v0, p0, Landroidx/appcompat/widget/ButtonBarLayout;->b:I

    .line 89
    :cond_1
    invoke-direct {p0}, Landroidx/appcompat/widget/ButtonBarLayout;->a()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v1, v4, :cond_6

    .line 90
    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    move v1, v2

    .line 98
    :goto_0
    invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 100
    iget-boolean v0, p0, Landroidx/appcompat/widget/ButtonBarLayout;->a:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroidx/appcompat/widget/ButtonBarLayout;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 103
    invoke-virtual {p0}, Landroidx/appcompat/widget/ButtonBarLayout;->getMeasuredWidthAndState()I

    move-result v0

    .line 104
    const/high16 v4, -0x1000000

    and-int/2addr v0, v4

    .line 105
    const/high16 v4, 0x1000000

    if-ne v0, v4, :cond_7

    move v0, v2

    .line 107
    :goto_1
    if-eqz v0, :cond_2

    .line 108
    invoke-direct {p0, v2}, Landroidx/appcompat/widget/ButtonBarLayout;->setStacked(Z)V

    move v1, v2

    .line 114
    :cond_2
    if-eqz v1, :cond_3

    .line 115
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 121
    :cond_3
    invoke-direct {p0, v3}, Landroidx/appcompat/widget/ButtonBarLayout;->a(I)I

    move-result v1

    .line 122
    if-ltz v1, :cond_9

    .line 123
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 124
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 125
    invoke-virtual {p0}, Landroidx/appcompat/widget/ButtonBarLayout;->getPaddingTop()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v4

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v4

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v2

    add-int/2addr v0, v3

    .line 127
    invoke-direct {p0}, Landroidx/appcompat/widget/ButtonBarLayout;->a()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 128
    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Landroidx/appcompat/widget/ButtonBarLayout;->a(I)I

    move-result v1

    .line 129
    if-ltz v1, :cond_4

    .line 130
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    const/high16 v2, 0x41800000    # 16.0f

    .line 131
    invoke-virtual {p0}, Landroidx/appcompat/widget/ButtonBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 138
    :cond_4
    :goto_2
    invoke-static {p0}, Landroidx/core/h/u;->l(Landroid/view/View;)I

    move-result v1

    if-eq v1, v0, :cond_5

    .line 139
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ButtonBarLayout;->setMinimumHeight(I)V

    .line 141
    :cond_5
    return-void

    :cond_6
    move v0, p1

    move v1, v3

    .line 95
    goto :goto_0

    :cond_7
    move v0, v3

    .line 105
    goto :goto_1

    .line 134
    :cond_8
    invoke-virtual {p0}, Landroidx/appcompat/widget/ButtonBarLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_2

    :cond_9
    move v0, v3

    goto :goto_2
.end method

.method public setAllowStacking(Z)V
    .locals 2

    .prologue
    .line 61
    iget-boolean v0, p0, Landroidx/appcompat/widget/ButtonBarLayout;->a:Z

    if-eq v0, p1, :cond_1

    .line 62
    iput-boolean p1, p0, Landroidx/appcompat/widget/ButtonBarLayout;->a:Z

    .line 63
    iget-boolean v0, p0, Landroidx/appcompat/widget/ButtonBarLayout;->a:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/ButtonBarLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/ButtonBarLayout;->setStacked(Z)V

    .line 66
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/ButtonBarLayout;->requestLayout()V

    .line 68
    :cond_1
    return-void
.end method
