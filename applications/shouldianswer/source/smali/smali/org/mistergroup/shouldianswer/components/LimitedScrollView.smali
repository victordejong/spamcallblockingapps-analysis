.class public final Lorg/mistergroup/shouldianswer/components/LimitedScrollView;
.super Landroid/widget/ScrollView;
.source "LimitedScrollView.kt"


# instance fields
.field private a:I

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final getMaxHeight()I
    .locals 1

    .line 16
    iget v0, p0, Lorg/mistergroup/shouldianswer/components/LimitedScrollView;->a:I

    return v0
.end method

.method public final getScrollDisabled()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/components/LimitedScrollView;->b:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 30
    iget v0, p0, Lorg/mistergroup/shouldianswer/components/LimitedScrollView;->a:I

    if-lez v0, :cond_3

    .line 31
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 32
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_2

    if-eqz v1, :cond_1

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    iget p2, p0, Lorg/mistergroup/shouldianswer/components/LimitedScrollView;->a:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    .line 36
    :cond_1
    iget p2, p0, Lorg/mistergroup/shouldianswer/components/LimitedScrollView;->a:I

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    .line 35
    :cond_2
    iget p2, p0, Lorg/mistergroup/shouldianswer/components/LimitedScrollView;->a:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 41
    :cond_3
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/components/LimitedScrollView;->b:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public final setMaxHeight(I)V
    .locals 0

    .line 16
    iput p1, p0, Lorg/mistergroup/shouldianswer/components/LimitedScrollView;->a:I

    return-void
.end method

.method public final setScrollDisabled(Z)V
    .locals 0

    .line 17
    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/components/LimitedScrollView;->b:Z

    return-void
.end method
