.class public Lcom/balysv/materialmenu/MaterialMenuView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/balysv/materialmenu/MaterialMenuView$SavedState;
    }
.end annotation


# instance fields
.field public a:Lcom/balysv/materialmenu/a;

.field public b:Lcom/balysv/materialmenu/a$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/balysv/materialmenu/MaterialMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, v0}, Lcom/balysv/materialmenu/MaterialMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    sget-object p3, Lcom/balysv/materialmenu/a$b;->BURGER:Lcom/balysv/materialmenu/a$b;

    iput-object p3, p0, Lcom/balysv/materialmenu/MaterialMenuView;->b:Lcom/balysv/materialmenu/a$b;

    .line 1062
    sget-object p3, Lcom/balysv/materialmenu/b$a;->MaterialMenuView:[I

    const/4 v0, 0x0

    .line 1213
    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 1065
    :try_start_0
    sget p3, Lcom/balysv/materialmenu/b$a;->MaterialMenuView_mm_color:I

    const/4 v1, -0x1

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 1066
    sget p3, Lcom/balysv/materialmenu/b$a;->MaterialMenuView_mm_visible:I

    const/4 v1, 0x1

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 1067
    sget v2, Lcom/balysv/materialmenu/b$a;->MaterialMenuView_mm_scale:I

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    .line 1068
    sget v2, Lcom/balysv/materialmenu/b$a;->MaterialMenuView_mm_transformDuration:I

    const/16 v3, 0x320

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v7

    .line 1069
    sget v2, Lcom/balysv/materialmenu/b$a;->MaterialMenuView_mm_strokeWidth:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    invoke-static {v2}, Lcom/balysv/materialmenu/a$d;->valueOf(I)Lcom/balysv/materialmenu/a$d;

    move-result-object v5

    .line 1070
    sget v2, Lcom/balysv/materialmenu/b$a;->MaterialMenuView_mm_rtlEnabled:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 1071
    sget v2, Lcom/balysv/materialmenu/b$a;->MaterialMenuView_mm_iconState:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1084
    :cond_0
    sget-object v0, Lcom/balysv/materialmenu/a$b;->CHECK:Lcom/balysv/materialmenu/a$b;

    iput-object v0, p0, Lcom/balysv/materialmenu/MaterialMenuView;->b:Lcom/balysv/materialmenu/a$b;

    goto :goto_0

    .line 1081
    :cond_1
    sget-object v0, Lcom/balysv/materialmenu/a$b;->X:Lcom/balysv/materialmenu/a$b;

    iput-object v0, p0, Lcom/balysv/materialmenu/MaterialMenuView;->b:Lcom/balysv/materialmenu/a$b;

    goto :goto_0

    .line 1078
    :cond_2
    sget-object v0, Lcom/balysv/materialmenu/a$b;->ARROW:Lcom/balysv/materialmenu/a$b;

    iput-object v0, p0, Lcom/balysv/materialmenu/MaterialMenuView;->b:Lcom/balysv/materialmenu/a$b;

    goto :goto_0

    .line 1075
    :cond_3
    sget-object v0, Lcom/balysv/materialmenu/a$b;->BURGER:Lcom/balysv/materialmenu/a$b;

    iput-object v0, p0, Lcom/balysv/materialmenu/MaterialMenuView;->b:Lcom/balysv/materialmenu/a$b;

    .line 1088
    :goto_0
    new-instance v0, Lcom/balysv/materialmenu/a;

    move-object v2, v0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/balysv/materialmenu/a;-><init>(Landroid/content/Context;ILcom/balysv/materialmenu/a$d;II)V

    iput-object v0, p0, Lcom/balysv/materialmenu/MaterialMenuView;->a:Lcom/balysv/materialmenu/a;

    .line 1090
    iget-object p1, p0, Lcom/balysv/materialmenu/MaterialMenuView;->b:Lcom/balysv/materialmenu/a$b;

    invoke-virtual {v0, p1}, Lcom/balysv/materialmenu/a;->a(Lcom/balysv/materialmenu/a$b;)V

    .line 1091
    iget-object p1, p0, Lcom/balysv/materialmenu/MaterialMenuView;->a:Lcom/balysv/materialmenu/a;

    invoke-virtual {p1, p3}, Lcom/balysv/materialmenu/a;->a(Z)V

    .line 1092
    iget-object p1, p0, Lcom/balysv/materialmenu/MaterialMenuView;->a:Lcom/balysv/materialmenu/a;

    invoke-virtual {p1, v8}, Lcom/balysv/materialmenu/a;->b(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1094
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 1097
    iget-object p1, p0, Lcom/balysv/materialmenu/MaterialMenuView;->a:Lcom/balysv/materialmenu/a;

    invoke-virtual {p1, p0}, Lcom/balysv/materialmenu/a;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void

    :catchall_0
    move-exception p1

    .line 1094
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method private a()V
    .locals 4

    .line 203
    iget-object v0, p0, Lcom/balysv/materialmenu/MaterialMenuView;->a:Lcom/balysv/materialmenu/a;

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {v0}, Lcom/balysv/materialmenu/a;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/balysv/materialmenu/MaterialMenuView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/balysv/materialmenu/MaterialMenuView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/balysv/materialmenu/MaterialMenuView;->a:Lcom/balysv/materialmenu/a;

    .line 207
    invoke-virtual {v2}, Lcom/balysv/materialmenu/a;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/balysv/materialmenu/MaterialMenuView;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/balysv/materialmenu/MaterialMenuView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    const/4 v3, 0x0

    .line 204
    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/balysv/materialmenu/a;->setBounds(IIII)V

    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 101
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 102
    invoke-virtual {p0}, Lcom/balysv/materialmenu/MaterialMenuView;->getPaddingLeft()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/balysv/materialmenu/MaterialMenuView;->getPaddingTop()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/balysv/materialmenu/MaterialMenuView;->a:Lcom/balysv/materialmenu/a;

    invoke-virtual {v0, p1}, Lcom/balysv/materialmenu/a;->draw(Landroid/graphics/Canvas;)V

    return-void

    .line 103
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    .line 104
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 105
    invoke-virtual {p0}, Lcom/balysv/materialmenu/MaterialMenuView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/balysv/materialmenu/MaterialMenuView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 106
    iget-object v1, p0, Lcom/balysv/materialmenu/MaterialMenuView;->a:Lcom/balysv/materialmenu/a;

    invoke-virtual {v1, p1}, Lcom/balysv/materialmenu/a;->draw(Landroid/graphics/Canvas;)V

    .line 107
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 170
    invoke-virtual {p0}, Lcom/balysv/materialmenu/MaterialMenuView;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Lcom/balysv/materialmenu/MaterialMenuView;->getPaddingRight()I

    move-result p2

    add-int/2addr p1, p2

    .line 171
    invoke-virtual {p0}, Lcom/balysv/materialmenu/MaterialMenuView;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Lcom/balysv/materialmenu/MaterialMenuView;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    .line 173
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 174
    iget-object v0, p0, Lcom/balysv/materialmenu/MaterialMenuView;->a:Lcom/balysv/materialmenu/a;

    invoke-virtual {v0}, Lcom/balysv/materialmenu/a;->getIntrinsicWidth()I

    move-result v0

    add-int/2addr v0, p1

    const/high16 p1, 0x40000000    # 2.0f

    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 175
    iget-object v1, p0, Lcom/balysv/materialmenu/MaterialMenuView;->a:Lcom/balysv/materialmenu/a;

    invoke-virtual {v1}, Lcom/balysv/materialmenu/a;->getIntrinsicHeight()I

    move-result v1

    add-int/2addr v1, p2

    invoke-static {v1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 176
    invoke-virtual {p0, v0, p1}, Lcom/balysv/materialmenu/MaterialMenuView;->setMeasuredDimension(II)V

    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/balysv/materialmenu/MaterialMenuView;->a:Lcom/balysv/materialmenu/a;

    invoke-virtual {v0}, Lcom/balysv/materialmenu/a;->getIntrinsicWidth()I

    move-result v0

    add-int/2addr v0, p1

    iget-object p1, p0, Lcom/balysv/materialmenu/MaterialMenuView;->a:Lcom/balysv/materialmenu/a;

    invoke-virtual {p1}, Lcom/balysv/materialmenu/a;->getIntrinsicHeight()I

    move-result p1

    add-int/2addr p1, p2

    invoke-virtual {p0, v0, p1}, Lcom/balysv/materialmenu/MaterialMenuView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 196
    check-cast p1, Lcom/balysv/materialmenu/MaterialMenuView$SavedState;

    .line 197
    invoke-virtual {p1}, Lcom/balysv/materialmenu/MaterialMenuView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 198
    iget-object v0, p1, Lcom/balysv/materialmenu/MaterialMenuView$SavedState;->state:Lcom/balysv/materialmenu/a$b;

    invoke-virtual {p0, v0}, Lcom/balysv/materialmenu/MaterialMenuView;->setIconState(Lcom/balysv/materialmenu/a$b;)V

    .line 199
    iget-boolean p1, p1, Lcom/balysv/materialmenu/MaterialMenuView$SavedState;->visible:Z

    invoke-virtual {p0, p1}, Lcom/balysv/materialmenu/MaterialMenuView;->setVisible(Z)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 188
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 189
    new-instance v1, Lcom/balysv/materialmenu/MaterialMenuView$SavedState;

    invoke-direct {v1, v0}, Lcom/balysv/materialmenu/MaterialMenuView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 190
    iget-object v0, p0, Lcom/balysv/materialmenu/MaterialMenuView;->b:Lcom/balysv/materialmenu/a$b;

    iput-object v0, v1, Lcom/balysv/materialmenu/MaterialMenuView$SavedState;->state:Lcom/balysv/materialmenu/a$b;

    .line 191
    iget-object v0, p0, Lcom/balysv/materialmenu/MaterialMenuView;->a:Lcom/balysv/materialmenu/a;

    if-eqz v0, :cond_0

    .line 1698
    iget-boolean v0, v0, Lcom/balysv/materialmenu/a;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 191
    :goto_0
    iput-boolean v0, v1, Lcom/balysv/materialmenu/MaterialMenuView$SavedState;->visible:Z

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 183
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 184
    invoke-direct {p0}, Lcom/balysv/materialmenu/MaterialMenuView;->a()V

    return-void
.end method

.method public setAnimationListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/balysv/materialmenu/MaterialMenuView;->a:Lcom/balysv/materialmenu/a;

    .line 1612
    iget-object v1, v0, Lcom/balysv/materialmenu/a;->j:Landroid/animation/Animator$AnimatorListener;

    if-eqz v1, :cond_0

    .line 1613
    iget-object v1, v0, Lcom/balysv/materialmenu/a;->i:Landroid/animation/ObjectAnimator;

    iget-object v2, v0, Lcom/balysv/materialmenu/a;->j:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 1617
    iget-object v1, v0, Lcom/balysv/materialmenu/a;->i:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, p1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1620
    :cond_1
    iput-object p1, v0, Lcom/balysv/materialmenu/a;->j:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method public setColor(I)V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/balysv/materialmenu/MaterialMenuView;->a:Lcom/balysv/materialmenu/a;

    .line 1598
    iget-object v1, v0, Lcom/balysv/materialmenu/a;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1599
    iget-object v1, v0, Lcom/balysv/materialmenu/a;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1600
    invoke-virtual {v0}, Lcom/balysv/materialmenu/a;->invalidateSelf()V

    return-void
.end method

.method public setIconState(Lcom/balysv/materialmenu/a$b;)V
    .locals 1

    .line 123
    iput-object p1, p0, Lcom/balysv/materialmenu/MaterialMenuView;->b:Lcom/balysv/materialmenu/a$b;

    .line 124
    iget-object v0, p0, Lcom/balysv/materialmenu/MaterialMenuView;->a:Lcom/balysv/materialmenu/a;

    invoke-virtual {v0, p1}, Lcom/balysv/materialmenu/a;->a(Lcom/balysv/materialmenu/a$b;)V

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/balysv/materialmenu/MaterialMenuView;->a:Lcom/balysv/materialmenu/a;

    .line 1608
    iget-object v0, v0, Lcom/balysv/materialmenu/a;->i:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    .line 114
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 115
    invoke-direct {p0}, Lcom/balysv/materialmenu/MaterialMenuView;->a()V

    return-void
.end method

.method public setRTLEnabled(Z)V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/balysv/materialmenu/MaterialMenuView;->a:Lcom/balysv/materialmenu/a;

    invoke-virtual {v0, p1}, Lcom/balysv/materialmenu/a;->b(Z)V

    return-void
.end method

.method public setTransformationDuration(I)V
    .locals 3

    .line 145
    iget-object v0, p0, Lcom/balysv/materialmenu/MaterialMenuView;->a:Lcom/balysv/materialmenu/a;

    .line 1604
    iget-object v0, v0, Lcom/balysv/materialmenu/a;->i:Landroid/animation/ObjectAnimator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/balysv/materialmenu/MaterialMenuView;->a:Lcom/balysv/materialmenu/a;

    invoke-virtual {v0, p1}, Lcom/balysv/materialmenu/a;->a(Z)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/balysv/materialmenu/MaterialMenuView;->a:Lcom/balysv/materialmenu/a;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
