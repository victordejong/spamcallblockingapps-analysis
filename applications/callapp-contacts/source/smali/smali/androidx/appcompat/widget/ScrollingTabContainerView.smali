.class public Landroidx/appcompat/widget/ScrollingTabContainerView;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ScrollingTabContainerView$c;,
        Landroidx/appcompat/widget/ScrollingTabContainerView$a;,
        Landroidx/appcompat/widget/ScrollingTabContainerView$b;
    }
.end annotation


# static fields
.field private static final k:Landroid/view/animation/Interpolator;


# instance fields
.field a:Ljava/lang/Runnable;

.field b:Landroidx/appcompat/widget/LinearLayoutCompat;

.field c:I

.field d:I

.field e:I

.field protected f:Landroid/view/ViewPropertyAnimator;

.field protected final g:Landroidx/appcompat/widget/ScrollingTabContainerView$c;

.field private h:Landroid/widget/Spinner;

.field private i:Z

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroidx/appcompat/widget/ScrollingTabContainerView;->k:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 83
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 76
    new-instance v0, Landroidx/appcompat/widget/ScrollingTabContainerView$c;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/ScrollingTabContainerView$c;-><init>(Landroidx/appcompat/widget/ScrollingTabContainerView;)V

    iput-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->g:Landroidx/appcompat/widget/ScrollingTabContainerView$c;

    const/4 v0, 0x0

    .line 85
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->setHorizontalScrollBarEnabled(Z)V

    .line 87
    invoke-static {p1}, Landroidx/appcompat/view/a;->a(Landroid/content/Context;)Landroidx/appcompat/view/a;

    move-result-object p1

    .line 88
    invoke-virtual {p1}, Landroidx/appcompat/view/a;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 89
    invoke-virtual {p1}, Landroidx/appcompat/view/a;->e()I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->d:I

    .line 1205
    new-instance p1, Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroidx/appcompat/a$a;->actionBarTabBarStyle:I

    const/4 v2, 0x0

    invoke-direct {p1, v0, v2, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 1207
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->setMeasureWithLargestChildEnabled(Z)V

    const/16 v0, 0x11

    .line 1208
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->setGravity(I)V

    .line 1209
    new-instance v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    iput-object p1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->b:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 92
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a()Z
    .locals 1

    .line 147
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->h:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private b()Z
    .locals 5

    .line 174
    invoke-direct {p0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 176
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->h:Landroid/widget/Spinner;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->removeView(Landroid/view/View;)V

    .line 177
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->b:Landroidx/appcompat/widget/LinearLayoutCompat;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v2}, Landroidx/appcompat/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->h:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->setTabSelected(I)V

    return v1
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    .line 278
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 279
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 226
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 228
    invoke-virtual {p0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/view/a;->a(Landroid/content/Context;)Landroidx/appcompat/view/a;

    move-result-object p1

    .line 231
    invoke-virtual {p1}, Landroidx/appcompat/view/a;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 232
    invoke-virtual {p1}, Landroidx/appcompat/view/a;->e()I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->d:I

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 287
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 288
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    return-void
.end method

.method public onMeasure(II)V
    .locals 7

    .line 98
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    if-ne p2, v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 100
    :goto_0
    invoke-virtual {p0, v3}, Landroidx/appcompat/widget/ScrollingTabContainerView;->setFillViewport(Z)V

    .line 102
    iget-object v4, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->b:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v4

    const/4 v5, -0x1

    if-le v4, v0, :cond_3

    if-eq p2, v2, :cond_1

    const/high16 v6, -0x80000000

    if-ne p2, v6, :cond_3

    :cond_1
    const/4 p2, 0x2

    if-le v4, p2, :cond_2

    .line 106
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    int-to-float p2, p2

    const v4, 0x3ecccccd    # 0.4f

    mul-float p2, p2, v4

    float-to-int p2, p2

    iput p2, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->c:I

    goto :goto_1

    .line 108
    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    div-int/2addr v4, p2

    iput v4, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->c:I

    .line 110
    :goto_1
    iget p2, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->c:I

    iget v4, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->d:I

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->c:I

    goto :goto_2

    .line 112
    :cond_3
    iput v5, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->c:I

    .line 115
    :goto_2
    iget p2, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->e:I

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    if-nez v3, :cond_4

    .line 117
    iget-boolean v2, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->i:Z

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_9

    .line 121
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->b:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v0, v1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->measure(II)V

    .line 122
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->b:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getMeasuredWidth()I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-le v0, v1, :cond_8

    .line 2155
    invoke-direct {p0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->a()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2157
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->h:Landroid/widget/Spinner;

    const/4 v1, 0x0

    const/4 v2, -0x2

    if-nez v0, :cond_5

    .line 2215
    new-instance v0, Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v6, Landroidx/appcompat/a$a;->actionDropDownStyle:I

    invoke-direct {v0, v4, v1, v6}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2217
    new-instance v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    invoke-direct {v4, v2, v5}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2220
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 2158
    iput-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->h:Landroid/widget/Spinner;

    .line 2160
    :cond_5
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->b:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->removeView(Landroid/view/View;)V

    .line 2161
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->h:Landroid/widget/Spinner;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v2, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v4}, Landroidx/appcompat/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2163
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->h:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-nez v0, :cond_6

    .line 2164
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->h:Landroid/widget/Spinner;

    new-instance v2, Landroidx/appcompat/widget/ScrollingTabContainerView$a;

    invoke-direct {v2, p0}, Landroidx/appcompat/widget/ScrollingTabContainerView$a;-><init>(Landroidx/appcompat/widget/ScrollingTabContainerView;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 2166
    :cond_6
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_7

    .line 2167
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2168
    iput-object v1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->a:Ljava/lang/Runnable;

    .line 2170
    :cond_7
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->h:Landroid/widget/Spinner;

    iget v1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_4

    .line 125
    :cond_8
    invoke-direct {p0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->b()Z

    goto :goto_4

    .line 128
    :cond_9
    invoke-direct {p0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->b()Z

    .line 131
    :cond_a
    :goto_4
    invoke-virtual {p0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v0

    .line 132
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 133
    invoke-virtual {p0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result p1

    if-eqz v3, :cond_b

    if-eq v0, p1, :cond_b

    .line 137
    iget p1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->j:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ScrollingTabContainerView;->setTabSelected(I)V

    :cond_b
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public setAllowCollapse(Z)V
    .locals 0

    .line 151
    iput-boolean p1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->i:Z

    return-void
.end method

.method public setContentHeight(I)V
    .locals 0

    .line 200
    iput p1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->e:I

    .line 201
    invoke-virtual {p0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->requestLayout()V

    return-void
.end method

.method public setTabSelected(I)V
    .locals 5

    .line 184
    iput p1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->j:I

    .line 185
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->b:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 187
    iget-object v3, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->b:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v3, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v2, p1, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 189
    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    if-eqz v4, :cond_2

    .line 2261
    iget-object v3, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->b:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v3, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2262
    iget-object v4, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->a:Ljava/lang/Runnable;

    if-eqz v4, :cond_1

    .line 2263
    invoke-virtual {p0, v4}, Landroidx/appcompat/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2265
    :cond_1
    new-instance v4, Landroidx/appcompat/widget/ScrollingTabContainerView$1;

    invoke-direct {v4, p0, v3}, Landroidx/appcompat/widget/ScrollingTabContainerView$1;-><init>(Landroidx/appcompat/widget/ScrollingTabContainerView;Landroid/view/View;)V

    iput-object v4, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->a:Ljava/lang/Runnable;

    .line 2273
    invoke-virtual {p0, v4}, Landroidx/appcompat/widget/ScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 194
    :cond_3
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->h:Landroid/widget/Spinner;

    if-eqz v0, :cond_4

    if-ltz p1, :cond_4

    .line 195
    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_4
    return-void
.end method
