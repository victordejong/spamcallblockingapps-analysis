.class public Landroidx/appcompat/widget/LinearLayoutCompat;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/LinearLayoutCompat$a;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:F

.field public h:Z

.field public i:[I

.field public j:[I

.field public k:Landroid/graphics/drawable/Drawable;

.field public l:I

.field public m:I

.field public n:I

.field public o:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->a:Z

    const/4 v1, -0x1

    .line 5
    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->b:I

    const/4 v2, 0x0

    .line 6
    iput v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->c:I

    const v3, 0x800033

    .line 7
    iput v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    .line 8
    sget-object v6, Lh8/k;->o:[I

    .line 9
    invoke-virtual {p1, p2, v6, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    const/4 v10, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move-object v8, v3

    move v9, p3

    .line 10
    invoke-static/range {v4 .. v10}, Lm0/v;->t(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 11
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-ltz p2, :cond_0

    .line 12
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->setOrientation(I)V

    .line 13
    :cond_0
    invoke-virtual {v3, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-ltz p2, :cond_1

    .line 14
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->setGravity(I)V

    :cond_1
    const/4 p2, 0x2

    .line 15
    invoke-virtual {v3, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    if-nez p2, :cond_2

    .line 16
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->setBaselineAligned(Z)V

    :cond_2
    const/4 p2, 0x4

    const/high16 p3, -0x40800000    # -1.0f

    .line 17
    invoke-virtual {v3, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    .line 18
    iput p2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->g:F

    const/4 p2, 0x3

    .line 19
    invoke-virtual {v3, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 20
    iput p2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->b:I

    const/4 p2, 0x7

    .line 21
    invoke-virtual {v3, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 22
    iput-boolean p2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->h:Z

    const/4 p2, 0x5

    .line 23
    invoke-virtual {v3, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 24
    invoke-virtual {v3, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    if-eqz p3, :cond_3

    .line 25
    invoke-static {p1, p3}, Lg/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    .line 26
    :cond_3
    invoke-virtual {v3, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 27
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 p1, 0x8

    .line 28
    invoke-virtual {v3, p1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 29
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->n:I

    const/4 p1, 0x6

    .line 30
    invoke-virtual {v3, p1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    .line 31
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->o:I

    .line 32
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    return p1
.end method

.method public f(Landroid/graphics/Canvas;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->o:I

    add-int/2addr v1, v2

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->o:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->m:I

    add-int/2addr v3, p2

    .line 3
    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4
    iget-object p2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public g(Landroid/graphics/Canvas;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->o:I

    add-int/2addr v1, v2

    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->l:I

    add-int/2addr v2, p2

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->o:I

    sub-int/2addr v3, v4

    .line 3
    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4
    iget-object p2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->h()Landroidx/appcompat/widget/LinearLayoutCompat$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->i(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/LinearLayoutCompat$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->j(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/LinearLayoutCompat$a;

    move-result-object p1

    return-object p1
.end method

.method public getBaseline()I
    .locals 5

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->b:I

    if-gez v0, :cond_0

    .line 2
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->b:I

    if-le v0, v1, :cond_6

    .line 4
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 6
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->b:I

    if-nez v0, :cond_1

    return v2

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_2
    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->c:I

    .line 9
    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->d:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 10
    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    and-int/lit8 v3, v3, 0x70

    const/16 v4, 0x30

    if-eq v3, v4, :cond_5

    const/16 v4, 0x10

    if-eq v3, v4, :cond_4

    const/16 v4, 0x50

    if-eq v3, v4, :cond_3

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    sub-int/2addr v2, v3

    goto :goto_0

    .line 12
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 13
    :cond_5
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    .line 14
    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v0

    add-int/2addr v2, v1

    return v2

    .line 15
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBaselineAlignedChildIndex()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->b:I

    return v0
.end method

.method public getDividerDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->k:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerPadding()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->o:I

    return v0
.end method

.method public getDividerWidth()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->l:I

    return v0
.end method

.method public getGravity()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->d:I

    return v0
.end method

.method public getShowDividers()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->n:I

    return v0
.end method

.method public getVirtualChildCount()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getWeightSum()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->g:F

    return v0
.end method

.method public h()Landroidx/appcompat/widget/LinearLayoutCompat$a;
    .locals 3

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->d:I

    const/4 v1, -0x2

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    invoke-direct {v0, v1, v1}, Landroidx/appcompat/widget/LinearLayoutCompat$a;-><init>(II)V

    return-object v0

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 3
    new-instance v0, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroidx/appcompat/widget/LinearLayoutCompat$a;-><init>(II)V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public i(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/LinearLayoutCompat$a;
    .locals 2

    .line 1
    new-instance v0, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/widget/LinearLayoutCompat$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public j(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/LinearLayoutCompat$a;
    .locals 1

    .line 1
    new-instance v0, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public k(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 1
    iget p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->n:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 2
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ne p1, v2, :cond_3

    .line 3
    iget p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->n:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    .line 4
    :cond_3
    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->n:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_5

    sub-int/2addr p1, v1

    :goto_0
    if-ltz p1, :cond_5

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_5
    :goto_1
    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->k:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->d:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 4
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v1, :cond_1

    .line 6
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->k(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    .line 8
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->m:I

    sub-int/2addr v3, v4

    .line 9
    invoke-virtual {p0, p1, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->f(Landroid/graphics/Canvas;I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->k(I)Z

    move-result v1

    if-eqz v1, :cond_b

    add-int/lit8 v0, v0, -0x1

    .line 11
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->m:I

    sub-int/2addr v0, v1

    goto :goto_1

    .line 13
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    .line 15
    :goto_1
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->f(Landroid/graphics/Canvas;I)V

    goto/16 :goto_6

    .line 16
    :cond_4
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v0

    .line 17
    invoke-static {p0}, Landroidx/appcompat/widget/h1;->a(Landroid/view/View;)Z

    move-result v3

    :goto_2
    if-ge v2, v0, :cond_7

    .line 18
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 19
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v1, :cond_6

    .line 20
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->k(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 21
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    if-eqz v3, :cond_5

    .line 22
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    goto :goto_3

    .line 23
    :cond_5
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->l:I

    sub-int/2addr v4, v5

    .line 24
    :goto_3
    invoke-virtual {p0, p1, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->g(Landroid/graphics/Canvas;I)V

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 25
    :cond_7
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->k(I)Z

    move-result v1

    if-eqz v1, :cond_b

    add-int/lit8 v0, v0, -0x1

    .line 26
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_9

    if-eqz v3, :cond_8

    .line 27
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    goto :goto_5

    .line 28
    :cond_8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->l:I

    goto :goto_4

    .line 29
    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    if-eqz v3, :cond_a

    .line 30
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->l:I

    :goto_4
    sub-int/2addr v0, v1

    goto :goto_5

    .line 31
    :cond_a
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    .line 32
    :goto_5
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->g(Landroid/graphics/Canvas;I)V

    :cond_b
    :goto_6
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-string v0, "androidx.appcompat.widget.LinearLayoutCompat"

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string v0, "androidx.appcompat.widget.LinearLayoutCompat"

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->d:I

    const/16 v2, 0x50

    const/16 v3, 0x10

    const/16 v4, 0x8

    const/4 v5, 0x5

    const v6, 0x800007

    const/4 v7, 0x1

    if-ne v1, v7, :cond_8

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    sub-int v8, p4, p2

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v9

    sub-int v9, v8, v9

    sub-int/2addr v8, v1

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v10

    sub-int/2addr v8, v10

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v10

    .line 6
    iget v11, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    and-int/lit8 v12, v11, 0x70

    and-int/2addr v6, v11

    if-eq v12, v3, :cond_1

    if-eq v12, v2, :cond_0

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    add-int v2, v2, p5

    sub-int v2, v2, p3

    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    sub-int/2addr v2, v3

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    sub-int v3, p5, p3

    iget v11, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    sub-int/2addr v3, v11

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v10, :cond_17

    .line 10
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    if-nez v11, :cond_2

    add-int/lit8 v2, v2, 0x0

    goto :goto_4

    .line 11
    :cond_2
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-eq v12, v4, :cond_7

    .line 12
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 13
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 14
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    .line 15
    iget v14, v13, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v14, :cond_3

    move v14, v6

    .line 16
    :cond_3
    sget-object v15, Lm0/v;->a:Ljava/util/WeakHashMap;

    .line 17
    invoke-static/range {p0 .. p0}, Lm0/v$e;->d(Landroid/view/View;)I

    move-result v15

    .line 18
    invoke-static {v14, v15}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v14

    and-int/lit8 v14, v14, 0x7

    if-eq v14, v7, :cond_5

    if-eq v14, v5, :cond_4

    .line 19
    iget v5, v13, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v5, v1

    goto :goto_3

    :cond_4
    sub-int v5, v9, v4

    .line 20
    iget v14, v13, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_2

    :cond_5
    sub-int v5, v8, v4

    .line 21
    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v1

    iget v14, v13, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v5, v14

    iget v14, v13, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :goto_2
    sub-int/2addr v5, v14

    .line 22
    :goto_3
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->k(I)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 23
    iget v14, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->m:I

    add-int/2addr v2, v14

    .line 24
    :cond_6
    iget v14, v13, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v14

    add-int/lit8 v14, v2, 0x0

    add-int/2addr v4, v5

    add-int v15, v12, v14

    .line 25
    invoke-virtual {v11, v5, v14, v4, v15}, Landroid/view/View;->layout(IIII)V

    .line 26
    iget v4, v13, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    const/4 v5, 0x0

    invoke-static {v12, v4, v5, v2}, La6/h;->g(IIII)I

    move-result v2

    add-int/lit8 v3, v3, 0x0

    :cond_7
    :goto_4
    add-int/2addr v3, v7

    const/16 v4, 0x8

    const/4 v5, 0x5

    goto :goto_1

    .line 27
    :cond_8
    invoke-static/range {p0 .. p0}, Landroidx/appcompat/widget/h1;->a(Landroid/view/View;)Z

    move-result v1

    .line 28
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    sub-int v3, p5, p3

    .line 29
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    sub-int v4, v3, v4

    sub-int/2addr v3, v2

    .line 30
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v3, v5

    .line 31
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v5

    .line 32
    iget v8, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    and-int/2addr v6, v8

    and-int/lit8 v8, v8, 0x70

    .line 33
    iget-boolean v9, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->a:Z

    .line 34
    iget-object v10, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->i:[I

    .line 35
    iget-object v11, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->j:[I

    .line 36
    sget-object v12, Lm0/v;->a:Ljava/util/WeakHashMap;

    .line 37
    invoke-static/range {p0 .. p0}, Lm0/v$e;->d(Landroid/view/View;)I

    move-result v12

    .line 38
    invoke-static {v6, v12}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v6

    if-eq v6, v7, :cond_a

    const/4 v7, 0x5

    if-eq v6, v7, :cond_9

    .line 39
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v6

    goto :goto_5

    .line 40
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v6

    add-int v6, v6, p4

    sub-int v6, v6, p2

    iget v7, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    sub-int/2addr v6, v7

    goto :goto_5

    .line 41
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v6

    sub-int v7, p4, p2

    iget v12, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    sub-int/2addr v7, v12

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    :goto_5
    if-eqz v1, :cond_b

    add-int/lit8 v1, v5, -0x1

    const/4 v7, -0x1

    goto :goto_6

    :cond_b
    const/4 v1, 0x0

    const/4 v7, 0x1

    :goto_6
    const/4 v12, 0x0

    :goto_7
    if-ge v12, v5, :cond_17

    mul-int v13, v7, v12

    add-int/2addr v13, v1

    .line 42
    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    if-nez v14, :cond_c

    add-int/lit8 v6, v6, 0x0

    move/from16 p1, v1

    goto/16 :goto_a

    .line 43
    :cond_c
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v15

    move/from16 p1, v1

    const/16 v1, 0x8

    if-eq v15, v1, :cond_16

    .line 44
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 45
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    .line 46
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    move/from16 p3, v5

    move-object/from16 v5, v16

    check-cast v5, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    if-eqz v9, :cond_d

    move/from16 p2, v7

    .line 47
    iget v7, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move/from16 p5, v8

    const/4 v8, -0x1

    if-eq v7, v8, :cond_e

    .line 48
    invoke-virtual {v14}, Landroid/view/View;->getBaseline()I

    move-result v7

    goto :goto_8

    :cond_d
    move/from16 p2, v7

    move/from16 p5, v8

    :cond_e
    const/4 v7, -0x1

    .line 49
    :goto_8
    iget v8, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v8, :cond_f

    move/from16 v8, p5

    :cond_f
    and-int/lit8 v8, v8, 0x70

    move/from16 v16, v9

    const/16 v9, 0x10

    if-eq v8, v9, :cond_13

    const/16 v9, 0x30

    if-eq v8, v9, :cond_11

    const/16 v9, 0x50

    if-eq v8, v9, :cond_10

    move v8, v2

    goto :goto_9

    :cond_10
    sub-int v8, v4, v15

    .line 50
    iget v9, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v8, v9

    const/4 v9, -0x1

    if-eq v7, v9, :cond_14

    .line 51
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    sub-int/2addr v9, v7

    const/4 v7, 0x2

    .line 52
    aget v7, v11, v7

    sub-int/2addr v7, v9

    sub-int/2addr v8, v7

    goto :goto_9

    :cond_11
    const/4 v8, -0x1

    .line 53
    iget v9, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v9, v2

    if-eq v7, v8, :cond_12

    const/4 v8, 0x1

    .line 54
    aget v8, v10, v8

    sub-int/2addr v8, v7

    add-int/2addr v8, v9

    goto :goto_9

    :cond_12
    move v8, v9

    goto :goto_9

    :cond_13
    sub-int v7, v3, v15

    .line 55
    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v2

    iget v8, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v7, v8

    iget v8, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sub-int v8, v7, v8

    .line 56
    :cond_14
    :goto_9
    invoke-virtual {v0, v13}, Landroidx/appcompat/widget/LinearLayoutCompat;->k(I)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 57
    iget v7, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->l:I

    add-int/2addr v6, v7

    .line 58
    :cond_15
    iget v7, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v6, v7

    add-int/lit8 v7, v6, 0x0

    add-int v9, v1, v7

    add-int/2addr v15, v8

    .line 59
    invoke-virtual {v14, v7, v8, v9, v15}, Landroid/view/View;->layout(IIII)V

    .line 60
    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    const/4 v7, 0x0

    invoke-static {v1, v5, v7, v6}, La6/h;->g(IIII)I

    move-result v1

    add-int/lit8 v12, v12, 0x0

    move v6, v1

    goto :goto_b

    :cond_16
    :goto_a
    move/from16 p3, v5

    move/from16 p2, v7

    move/from16 p5, v8

    move/from16 v16, v9

    :goto_b
    add-int/lit8 v12, v12, 0x1

    move/from16 v1, p1

    move/from16 v7, p2

    move/from16 v5, p3

    move/from16 v8, p5

    move/from16 v9, v16

    goto/16 :goto_7

    :cond_17
    return-void
.end method

.method public onMeasure(II)V
    .locals 33

    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    .line 1
    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->d:I

    const/4 v1, -0x2

    const/high16 v2, -0x80000000

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-ne v0, v9, :cond_2a

    .line 2
    iput v10, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v9

    .line 4
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 5
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 6
    iget v13, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->b:I

    .line 7
    iget-boolean v14, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->h:Z

    const/4 v0, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/high16 v15, -0x80000000

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_0
    if-ge v10, v9, :cond_10

    .line 8
    invoke-virtual {v6, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    if-nez v18, :cond_0

    .line 9
    iget v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    add-int/2addr v1, v0

    iput v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_1

    add-int/lit8 v10, v10, 0x0

    :goto_1
    move/from16 v23, v9

    move/from16 v25, v12

    goto/16 :goto_b

    .line 11
    :cond_1
    invoke-virtual {v6, v10}, Landroidx/appcompat/widget/LinearLayoutCompat;->k(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    iget v3, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->m:I

    add-int/2addr v0, v3

    iput v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 13
    :cond_2
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    .line 14
    iget v0, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    add-float v19, v19, v0

    if-ne v12, v5, :cond_3

    .line 15
    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-nez v5, :cond_3

    cmpl-float v5, v0, v4

    if-lez v5, :cond_3

    .line 16
    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 17
    iget v1, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v0

    iget v4, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    const/16 v20, 0x1

    move/from16 v26, v2

    move/from16 v23, v9

    move/from16 v25, v12

    move-object v12, v3

    goto :goto_4

    .line 18
    :cond_3
    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-nez v5, :cond_4

    cmpl-float v0, v0, v4

    if-lez v0, :cond_4

    .line 19
    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v0, 0x0

    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    const/high16 v0, -0x80000000

    const/high16 v5, -0x80000000

    :goto_2
    const/16 v23, 0x0

    cmpl-float v0, v19, v4

    if-nez v0, :cond_5

    .line 20
    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    move/from16 v24, v0

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    const/16 v24, 0x0

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move v4, v2

    move/from16 v2, p1

    move/from16 v25, v12

    move-object v12, v3

    move/from16 v3, v23

    move/from16 v26, v4

    move/from16 v4, p2

    move/from16 v23, v9

    move v9, v5

    move/from16 v5, v24

    .line 21
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    if-eq v9, v15, :cond_6

    .line 22
    iput v9, v12, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 23
    :cond_6
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 24
    iget v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    add-int v2, v1, v0

    .line 25
    iget v3, v12, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v12, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    if-eqz v14, :cond_7

    .line 26
    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    :cond_7
    :goto_4
    if-ltz v13, :cond_8

    add-int/lit8 v0, v10, 0x1

    if-ne v13, v0, :cond_8

    .line 27
    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    iput v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->c:I

    :cond_8
    if-ge v10, v13, :cond_a

    .line 28
    iget v0, v12, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_9

    goto :goto_5

    .line 29
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_5
    const/high16 v0, 0x40000000    # 2.0f

    if-eq v11, v0, :cond_b

    .line 30
    iget v0, v12, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    const/16 v22, 0x1

    goto :goto_6

    :cond_b
    const/4 v0, 0x0

    .line 31
    :goto_6
    iget v1, v12, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v2, v12, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    .line 32
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v1

    move/from16 v15, v26

    .line 33
    invoke-static {v15, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 34
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredState()I

    move-result v4

    .line 35
    invoke-static {v8, v4}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v4

    if-eqz v21, :cond_c

    .line 36
    iget v5, v12, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v8, -0x1

    if-ne v5, v8, :cond_c

    const/4 v5, 0x1

    goto :goto_7

    :cond_c
    const/4 v5, 0x0

    .line 37
    :goto_7
    iget v8, v12, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_e

    if-eqz v0, :cond_d

    goto :goto_8

    :cond_d
    move v1, v2

    :goto_8
    move/from16 v9, v17

    .line 38
    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v8

    move v9, v8

    move/from16 v8, v16

    goto :goto_a

    :cond_e
    move/from16 v9, v17

    if-eqz v0, :cond_f

    goto :goto_9

    :cond_f
    move v1, v2

    :goto_9
    move/from16 v0, v16

    .line 39
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v8

    :goto_a
    add-int/lit8 v10, v10, 0x0

    move v2, v3

    move/from16 v21, v5

    move/from16 v16, v8

    move/from16 v17, v9

    move v8, v4

    :goto_b
    add-int/lit8 v10, v10, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x2

    const/high16 v15, -0x80000000

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    move/from16 v9, v23

    move/from16 v12, v25

    goto/16 :goto_0

    :cond_10
    move v15, v2

    move/from16 v23, v9

    move/from16 v25, v12

    move/from16 v0, v16

    move/from16 v9, v17

    .line 40
    iget v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    move/from16 v10, v23

    if-lez v1, :cond_11

    invoke-virtual {v6, v10}, Landroidx/appcompat/widget/LinearLayoutCompat;->k(I)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 41
    iget v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    iget v2, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->m:I

    add-int/2addr v1, v2

    iput v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    :cond_11
    if-eqz v14, :cond_15

    const/high16 v1, -0x80000000

    move/from16 v2, v25

    if-eq v2, v1, :cond_12

    if-nez v2, :cond_16

    :cond_12
    const/4 v1, 0x0

    .line 42
    iput v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v10, :cond_16

    .line 43
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_13

    .line 44
    iget v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    add-int/2addr v4, v1

    iput v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    goto :goto_d

    .line 45
    :cond_13
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v5, 0x8

    if-ne v1, v5, :cond_14

    add-int/lit8 v3, v3, 0x0

    goto :goto_d

    .line 46
    :cond_14
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    .line 47
    iget v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    add-int v5, v4, v7

    .line 48
    iget v12, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v12

    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    :goto_d
    add-int/lit8 v3, v3, 0x1

    const/4 v1, 0x0

    goto :goto_c

    :cond_15
    move/from16 v2, v25

    .line 49
    :cond_16
    iget v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    add-int/2addr v4, v3

    add-int/2addr v4, v1

    iput v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 50
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v3, 0x0

    move/from16 v12, p2

    .line 51
    invoke-static {v1, v12, v3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    const v3, 0xffffff

    and-int/2addr v3, v1

    .line 52
    iget v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    sub-int/2addr v3, v4

    if-nez v20, :cond_1b

    if-eqz v3, :cond_17

    const/4 v4, 0x0

    cmpl-float v4, v19, v4

    if-lez v4, :cond_17

    goto :goto_10

    .line 53
    :cond_17
    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz v14, :cond_1a

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v2, v3, :cond_1a

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v10, :cond_1a

    .line 54
    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_19

    .line 55
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_18

    goto :goto_f

    .line 56
    :cond_18
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    .line 57
    iget v4, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_19

    .line 58
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 59
    invoke-static {v7, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 60
    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    :cond_19
    :goto_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1a
    move/from16 v12, p1

    move v2, v15

    goto/16 :goto_1b

    .line 61
    :cond_1b
    :goto_10
    iget v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->g:F

    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-lez v5, :cond_1c

    move/from16 v19, v4

    :cond_1c
    const/4 v4, 0x0

    .line 62
    iput v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    move/from16 v32, v8

    move v8, v0

    move/from16 v0, v32

    :goto_11
    if-ge v4, v10, :cond_27

    .line 63
    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 64
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v9, 0x8

    if-ne v7, v9, :cond_1d

    move/from16 v12, p1

    goto/16 :goto_1a

    .line 65
    :cond_1d
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    .line 66
    iget v9, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v13, 0x0

    cmpl-float v13, v9, v13

    if-lez v13, :cond_22

    int-to-float v13, v3

    mul-float v13, v13, v9

    div-float v13, v13, v19

    float-to-int v13, v13

    sub-float v19, v19, v9

    sub-int/2addr v3, v13

    .line 67
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v14

    add-int/2addr v14, v9

    iget v9, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v14, v9

    iget v9, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v14, v9

    iget v9, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move/from16 v12, p1

    .line 68
    invoke-static {v12, v14, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v9

    .line 69
    iget v14, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-nez v14, :cond_20

    const/high16 v14, 0x40000000    # 2.0f

    if-eq v2, v14, :cond_1e

    goto :goto_13

    :cond_1e
    if-lez v13, :cond_1f

    goto :goto_12

    :cond_1f
    const/4 v13, 0x0

    .line 70
    :goto_12
    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 71
    invoke-virtual {v5, v9, v13}, Landroid/view/View;->measure(II)V

    goto :goto_15

    :cond_20
    const/high16 v14, 0x40000000    # 2.0f

    .line 72
    :goto_13
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v16, v16, v13

    if-gez v16, :cond_21

    const/16 v16, 0x0

    const/4 v13, 0x0

    goto :goto_14

    :cond_21
    move/from16 v13, v16

    .line 73
    :goto_14
    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 74
    invoke-virtual {v5, v9, v13}, Landroid/view/View;->measure(II)V

    .line 75
    :goto_15
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredState()I

    move-result v9

    and-int/lit16 v9, v9, -0x100

    .line 76
    invoke-static {v0, v9}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v0

    goto :goto_16

    :cond_22
    move/from16 v12, p1

    .line 77
    :goto_16
    iget v9, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v13, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v9, v13

    .line 78
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    add-int/2addr v13, v9

    .line 79
    invoke-static {v15, v13}, Ljava/lang/Math;->max(II)I

    move-result v14

    const/high16 v15, 0x40000000    # 2.0f

    if-eq v11, v15, :cond_23

    .line 80
    iget v15, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move/from16 v16, v0

    const/4 v0, -0x1

    if-ne v15, v0, :cond_24

    const/4 v15, 0x1

    goto :goto_17

    :cond_23
    move/from16 v16, v0

    const/4 v0, -0x1

    :cond_24
    const/4 v15, 0x0

    :goto_17
    if-eqz v15, :cond_25

    goto :goto_18

    :cond_25
    move v9, v13

    .line 81
    :goto_18
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    if-eqz v21, :cond_26

    .line 82
    iget v9, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-ne v9, v0, :cond_26

    const/4 v0, 0x1

    goto :goto_19

    :cond_26
    const/4 v0, 0x0

    .line 83
    :goto_19
    iget v9, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 84
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v9

    iget v13, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v13

    iget v7, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v7

    add-int/lit8 v5, v5, 0x0

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    move/from16 v21, v0

    move v15, v14

    move/from16 v0, v16

    :goto_1a
    add-int/lit8 v4, v4, 0x1

    move/from16 v12, p2

    goto/16 :goto_11

    :cond_27
    move/from16 v12, p1

    .line 85
    iget v2, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    add-int/2addr v4, v3

    add-int/2addr v4, v2

    iput v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    move v2, v15

    move/from16 v32, v8

    move v8, v0

    move/from16 v0, v32

    :goto_1b
    if-nez v21, :cond_28

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v11, v3, :cond_28

    goto :goto_1c

    :cond_28
    move v0, v2

    .line 86
    :goto_1c
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    add-int/2addr v3, v2

    add-int/2addr v3, v0

    .line 87
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 88
    invoke-static {v0, v12, v8}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    invoke-virtual {v6, v0, v1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    if-eqz v22, :cond_64

    .line 89
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    const/4 v0, 0x0

    const/4 v8, 0x0

    :goto_1d
    if-ge v8, v10, :cond_64

    .line 90
    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 91
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_29

    .line 92
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    .line 93
    iget v0, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_29

    .line 94
    iget v11, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 95
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v2, v7

    move/from16 v4, p2

    .line 96
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 97
    iput v11, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :cond_29
    add-int/lit8 v8, v8, 0x1

    goto :goto_1d

    :cond_2a
    move v12, v7

    const/4 v7, 0x1

    const/4 v0, 0x0

    .line 98
    iput v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 99
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v8

    .line 100
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 101
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 102
    iget-object v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->i:[I

    const/4 v1, 0x4

    if-eqz v0, :cond_2b

    iget-object v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->j:[I

    if-nez v0, :cond_2c

    :cond_2b
    new-array v0, v1, [I

    .line 103
    iput-object v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->i:[I

    new-array v0, v1, [I

    .line 104
    iput-object v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->j:[I

    .line 105
    :cond_2c
    iget-object v11, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->i:[I

    .line 106
    iget-object v13, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->j:[I

    const/4 v0, 0x3

    const/4 v1, -0x1

    .line 107
    aput v1, v11, v0

    const/4 v14, 0x2

    aput v1, v11, v14

    aput v1, v11, v7

    const/4 v2, 0x0

    aput v1, v11, v2

    .line 108
    aput v1, v13, v0

    aput v1, v13, v14

    aput v1, v13, v7

    aput v1, v13, v2

    .line 109
    iget-boolean v15, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->a:Z

    .line 110
    iget-boolean v5, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->h:Z

    const/high16 v0, 0x40000000    # 2.0f

    if-ne v9, v0, :cond_2d

    const/4 v0, 0x1

    const/16 v16, 0x1

    goto :goto_1e

    :cond_2d
    const/4 v0, 0x0

    const/16 v16, 0x0

    :goto_1e
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v14, 0x0

    :goto_1f
    if-ge v2, v8, :cond_41

    move/from16 v22, v5

    .line 111
    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_2e

    .line 112
    iget v5, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    add-int/lit8 v5, v5, 0x0

    iput v5, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    move/from16 v23, v0

    move/from16 v24, v3

    goto :goto_20

    :cond_2e
    move/from16 v23, v0

    .line 113
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v0

    move/from16 v24, v3

    const/16 v3, 0x8

    if-ne v0, v3, :cond_2f

    add-int/lit8 v2, v2, 0x0

    :goto_20
    move/from16 v0, v23

    move/from16 v3, v24

    move/from16 v24, v9

    goto/16 :goto_2f

    .line 114
    :cond_2f
    invoke-virtual {v6, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->k(I)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 115
    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    iget v3, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->l:I

    add-int/2addr v0, v3

    iput v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 116
    :cond_30
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    .line 117
    iget v0, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    add-float v25, v1, v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v9, v1, :cond_33

    .line 118
    iget v1, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-nez v1, :cond_33

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_33

    if-eqz v16, :cond_31

    .line 119
    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    iget v1, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move/from16 v26, v2

    iget v2, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    iput v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    goto :goto_21

    :cond_31
    move/from16 v26, v2

    .line 120
    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 121
    iget v1, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v0

    iget v2, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    :goto_21
    if-eqz v15, :cond_32

    const/4 v0, 0x0

    .line 122
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 123
    invoke-virtual {v5, v0, v0}, Landroid/view/View;->measure(II)V

    move-object v0, v3

    move/from16 v12, v23

    move/from16 v30, v24

    move/from16 v23, v26

    move-object/from16 v26, v5

    move/from16 v24, v9

    move v9, v4

    goto/16 :goto_26

    :cond_32
    const/high16 v0, 0x40000000    # 2.0f

    const/16 v19, 0x1

    move-object v0, v3

    move/from16 v1, v23

    move/from16 v30, v24

    move/from16 v23, v26

    const/high16 v2, 0x40000000    # 2.0f

    move-object/from16 v26, v5

    move/from16 v24, v9

    move v9, v4

    goto/16 :goto_28

    :cond_33
    move/from16 v26, v2

    .line 124
    iget v1, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-nez v1, :cond_34

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_35

    const/4 v0, -0x2

    .line 125
    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v0, 0x0

    const/4 v2, 0x0

    goto :goto_22

    :cond_34
    const/4 v1, 0x0

    :cond_35
    const/high16 v0, -0x80000000

    const/high16 v2, -0x80000000

    :goto_22
    cmpl-float v0, v25, v1

    if-nez v0, :cond_36

    .line 126
    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    move/from16 v27, v0

    goto :goto_23

    :cond_36
    const/4 v0, 0x0

    const/16 v27, 0x0

    :goto_23
    const/16 v28, 0x0

    move/from16 v1, v23

    move-object/from16 v0, p0

    move v12, v1

    move-object v1, v5

    move/from16 v29, v2

    move/from16 v23, v26

    move/from16 v2, p1

    move-object/from16 v31, v3

    move/from16 v30, v24

    move/from16 v3, v27

    move/from16 v24, v9

    move v9, v4

    move/from16 v4, p2

    move-object/from16 v26, v5

    move/from16 v5, v28

    .line 127
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    const/high16 v0, -0x80000000

    move/from16 v1, v29

    if-eq v1, v0, :cond_37

    move-object/from16 v0, v31

    .line 128
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_24

    :cond_37
    move-object/from16 v0, v31

    .line 129
    :goto_24
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-eqz v16, :cond_38

    .line 130
    iget v2, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v1

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    const/4 v5, 0x0

    invoke-static {v3, v4, v5, v2}, La6/h;->g(IIII)I

    move-result v2

    .line 131
    iput v2, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    goto :goto_25

    .line 132
    :cond_38
    iget v2, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    add-int v3, v2, v1

    .line 133
    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    :goto_25
    if-eqz v22, :cond_39

    .line 134
    invoke-static {v1, v12}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_27

    :cond_39
    :goto_26
    move v1, v12

    :goto_27
    const/high16 v2, 0x40000000    # 2.0f

    :goto_28
    if-eq v10, v2, :cond_3a

    .line 135
    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3a

    const/4 v2, 0x1

    const/16 v21, 0x1

    goto :goto_29

    :cond_3a
    const/4 v2, 0x0

    .line 136
    :goto_29
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    .line 137
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v3

    .line 138
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredState()I

    move-result v5

    invoke-static {v14, v5}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v5

    if-eqz v15, :cond_3c

    .line 139
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getBaseline()I

    move-result v12

    const/4 v14, -0x1

    if-eq v12, v14, :cond_3c

    .line 140
    iget v14, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v14, :cond_3b

    iget v14, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    :cond_3b
    and-int/lit8 v14, v14, 0x70

    shr-int/lit8 v14, v14, 0x4

    and-int/lit8 v14, v14, -0x2

    shr-int/lit8 v14, v14, 0x1

    move/from16 v26, v1

    .line 141
    aget v1, v11, v14

    invoke-static {v1, v12}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v11, v14

    .line 142
    aget v1, v13, v14

    sub-int v12, v4, v12

    invoke-static {v1, v12}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v13, v14

    goto :goto_2a

    :cond_3c
    move/from16 v26, v1

    .line 143
    :goto_2a
    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-eqz v20, :cond_3d

    .line 144
    iget v7, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v12, -0x1

    if-ne v7, v12, :cond_3d

    const/4 v7, 0x1

    goto :goto_2b

    :cond_3d
    const/4 v7, 0x0

    .line 145
    :goto_2b
    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v12, 0x0

    cmpl-float v0, v0, v12

    if-lez v0, :cond_3f

    if-eqz v2, :cond_3e

    goto :goto_2c

    :cond_3e
    move v3, v4

    .line 146
    :goto_2c
    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    move/from16 v3, v30

    goto :goto_2e

    :cond_3f
    if-eqz v2, :cond_40

    goto :goto_2d

    :cond_40
    move v3, v4

    :goto_2d
    move/from16 v2, v30

    .line 147
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v4, v9

    :goto_2e
    add-int/lit8 v2, v23, 0x0

    move v14, v5

    move/from16 v20, v7

    move/from16 v0, v26

    move v7, v1

    move/from16 v1, v25

    :goto_2f
    add-int/lit8 v2, v2, 0x1

    move/from16 v12, p1

    move/from16 v5, v22

    move/from16 v9, v24

    goto/16 :goto_1f

    :cond_41
    move v12, v0

    move v2, v3

    move/from16 v22, v5

    move/from16 v24, v9

    move v9, v4

    .line 148
    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    if-lez v0, :cond_42

    invoke-virtual {v6, v8}, Landroidx/appcompat/widget/LinearLayoutCompat;->k(I)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 149
    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    iget v3, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->l:I

    add-int/2addr v0, v3

    iput v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    :cond_42
    const/4 v0, 0x1

    .line 150
    aget v3, v11, v0

    const/4 v0, -0x1

    if-ne v3, v0, :cond_44

    const/4 v3, 0x0

    aget v3, v11, v3

    if-ne v3, v0, :cond_44

    const/4 v3, 0x2

    aget v4, v11, v3

    if-ne v4, v0, :cond_44

    const/4 v3, 0x3

    aget v4, v11, v3

    if-eq v4, v0, :cond_43

    goto :goto_30

    :cond_43
    move/from16 v23, v14

    goto :goto_31

    :cond_44
    const/4 v3, 0x3

    .line 151
    :goto_30
    aget v0, v11, v3

    const/4 v3, 0x0

    aget v3, v11, v3

    const/4 v4, 0x1

    aget v5, v11, v4

    const/16 v17, 0x2

    aget v4, v11, v17

    .line 152
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 153
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 154
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v3, 0x3

    .line 155
    aget v3, v13, v3

    const/4 v4, 0x0

    aget v4, v13, v4

    move/from16 v23, v14

    const/4 v5, 0x1

    aget v14, v13, v5

    aget v5, v13, v17

    .line 156
    invoke-static {v14, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 157
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 158
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v3, v0

    .line 159
    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v7

    :goto_31
    if-eqz v22, :cond_49

    const/high16 v0, -0x80000000

    move/from16 v3, v24

    if-eq v3, v0, :cond_45

    if-nez v3, :cond_4a

    :cond_45
    const/4 v0, 0x0

    .line 160
    iput v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    const/4 v4, 0x0

    :goto_32
    if-ge v4, v8, :cond_4a

    .line 161
    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_46

    .line 162
    iget v5, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    add-int/2addr v5, v0

    iput v5, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    move/from16 v24, v4

    goto :goto_33

    .line 163
    :cond_46
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v14, 0x8

    if-ne v0, v14, :cond_47

    add-int/lit8 v4, v4, 0x0

    goto :goto_34

    .line 164
    :cond_47
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    if-eqz v16, :cond_48

    .line 165
    iget v5, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    iget v14, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v14, v12

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move/from16 v24, v4

    const/4 v4, 0x0

    invoke-static {v14, v0, v4, v5}, La6/h;->g(IIII)I

    move-result v0

    .line 166
    iput v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    goto :goto_33

    :cond_48
    move/from16 v24, v4

    .line 167
    iget v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    add-int v5, v4, v12

    .line 168
    iget v14, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v5, v14

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v5, v0

    add-int/lit8 v5, v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    :goto_33
    move/from16 v4, v24

    :goto_34
    add-int/lit8 v4, v4, 0x1

    const/4 v0, 0x0

    goto :goto_32

    :cond_49
    move/from16 v3, v24

    .line 169
    :cond_4a
    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    add-int/2addr v5, v4

    add-int/2addr v5, v0

    iput v5, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 170
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v4, 0x0

    move/from16 v5, p1

    .line 171
    invoke-static {v0, v5, v4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    const v4, 0xffffff

    and-int/2addr v4, v0

    .line 172
    iget v14, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    sub-int/2addr v4, v14

    if-nez v19, :cond_4f

    if-eqz v4, :cond_4b

    const/4 v14, 0x0

    cmpl-float v14, v1, v14

    if-lez v14, :cond_4b

    goto :goto_37

    .line 173
    :cond_4b
    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-eqz v22, :cond_4e

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v3, v2, :cond_4e

    const/4 v2, 0x0

    :goto_35
    if-ge v2, v8, :cond_4e

    .line 174
    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_4d

    .line 175
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v9, 0x8

    if-ne v4, v9, :cond_4c

    goto :goto_36

    .line 176
    :cond_4c
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    .line 177
    iget v4, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v9, 0x0

    cmpl-float v4, v4, v9

    if-lez v4, :cond_4d

    const/high16 v4, 0x40000000    # 2.0f

    .line 178
    invoke-static {v12, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 179
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    invoke-static {v11, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 180
    invoke-virtual {v3, v9, v4}, Landroid/view/View;->measure(II)V

    :cond_4d
    :goto_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    :cond_4e
    move/from16 v4, p2

    move/from16 v22, v0

    move/from16 v19, v8

    move/from16 v14, v23

    goto/16 :goto_44

    .line 181
    :cond_4f
    :goto_37
    iget v7, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->g:F

    const/4 v9, 0x0

    cmpl-float v9, v7, v9

    if-lez v9, :cond_50

    move v1, v7

    :cond_50
    const/4 v7, 0x3

    const/4 v9, -0x1

    .line 182
    aput v9, v11, v7

    const/4 v12, 0x2

    aput v9, v11, v12

    const/4 v14, 0x1

    aput v9, v11, v14

    const/4 v14, 0x0

    aput v9, v11, v14

    .line 183
    aput v9, v13, v7

    aput v9, v13, v12

    const/4 v7, 0x1

    aput v9, v13, v7

    aput v9, v13, v14

    .line 184
    iput v14, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    const/4 v7, -0x1

    const/4 v9, 0x0

    move/from16 v14, v23

    :goto_38
    if-ge v9, v8, :cond_5f

    .line 185
    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_5e

    .line 186
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v5

    move/from16 v19, v8

    const/16 v8, 0x8

    if-ne v5, v8, :cond_51

    move/from16 v22, v0

    move/from16 v25, v3

    move v0, v4

    goto/16 :goto_42

    .line 187
    :cond_51
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    .line 188
    iget v8, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/16 v22, 0x0

    cmpl-float v22, v8, v22

    if-lez v22, :cond_56

    move/from16 v22, v0

    int-to-float v0, v4

    mul-float v0, v0, v8

    div-float/2addr v0, v1

    float-to-int v0, v0

    sub-float/2addr v1, v8

    sub-int/2addr v4, v0

    .line 189
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v23

    add-int v23, v23, v8

    iget v8, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int v23, v23, v8

    iget v8, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v8, v23, v8

    move/from16 v23, v1

    iget v1, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move/from16 v24, v4

    move/from16 v4, p2

    .line 190
    invoke-static {v4, v8, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 191
    iget v8, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-nez v8, :cond_54

    const/high16 v8, 0x40000000    # 2.0f

    if-eq v3, v8, :cond_52

    goto :goto_3a

    :cond_52
    if-lez v0, :cond_53

    goto :goto_39

    :cond_53
    const/4 v0, 0x0

    .line 192
    :goto_39
    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v12, v0, v1}, Landroid/view/View;->measure(II)V

    goto :goto_3c

    :cond_54
    const/high16 v8, 0x40000000    # 2.0f

    .line 193
    :goto_3a
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v25

    add-int v25, v25, v0

    if-gez v25, :cond_55

    const/16 v25, 0x0

    const/4 v0, 0x0

    goto :goto_3b

    :cond_55
    move/from16 v0, v25

    .line 194
    :goto_3b
    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 195
    invoke-virtual {v12, v0, v1}, Landroid/view/View;->measure(II)V

    .line 196
    :goto_3c
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    .line 197
    invoke-static {v14, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v14

    move/from16 v1, v23

    move/from16 v0, v24

    goto :goto_3d

    :cond_56
    move/from16 v22, v0

    move v0, v4

    move/from16 v4, p2

    :goto_3d
    if-eqz v16, :cond_57

    .line 198
    iget v8, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    move/from16 v24, v0

    iget v0, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int v0, v23, v0

    move/from16 v23, v1

    iget v1, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move/from16 v25, v3

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v8}, La6/h;->g(IIII)I

    move-result v0

    .line 199
    iput v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    goto :goto_3e

    :cond_57
    move/from16 v24, v0

    move/from16 v23, v1

    move/from16 v25, v3

    .line 200
    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 201
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v0

    iget v3, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v3

    iget v3, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    :goto_3e
    const/high16 v0, 0x40000000    # 2.0f

    if-eq v10, v0, :cond_58

    .line 202
    iget v0, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_58

    const/4 v0, 0x1

    goto :goto_3f

    :cond_58
    const/4 v0, 0x0

    .line 203
    :goto_3f
    iget v1, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v3, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v3

    .line 204
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v1

    .line 205
    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v7

    if-eqz v0, :cond_59

    goto :goto_40

    :cond_59
    move v1, v3

    .line 206
    :goto_40
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz v20, :cond_5a

    .line 207
    iget v1, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5b

    const/4 v1, 0x1

    goto :goto_41

    :cond_5a
    const/4 v2, -0x1

    :cond_5b
    const/4 v1, 0x0

    :goto_41
    if-eqz v15, :cond_5d

    .line 208
    invoke-virtual {v12}, Landroid/view/View;->getBaseline()I

    move-result v8

    if-eq v8, v2, :cond_5d

    .line 209
    iget v2, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v2, :cond_5c

    iget v2, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    :cond_5c
    and-int/lit8 v2, v2, 0x70

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, -0x2

    shr-int/lit8 v2, v2, 0x1

    .line 210
    aget v5, v11, v2

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    aput v5, v11, v2

    .line 211
    aget v5, v13, v2

    sub-int/2addr v3, v8

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v13, v2

    :cond_5d
    move v2, v0

    move/from16 v20, v1

    move/from16 v1, v23

    move/from16 v0, v24

    goto :goto_43

    :cond_5e
    move/from16 v22, v0

    move/from16 v25, v3

    move v0, v4

    move/from16 v19, v8

    :goto_42
    move/from16 v4, p2

    :goto_43
    add-int/lit8 v9, v9, 0x1

    move/from16 v5, p1

    move v4, v0

    move/from16 v8, v19

    move/from16 v0, v22

    move/from16 v3, v25

    goto/16 :goto_38

    :cond_5f
    move/from16 v4, p2

    move/from16 v22, v0

    move/from16 v19, v8

    .line 212
    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    add-int/2addr v3, v1

    add-int/2addr v3, v0

    iput v3, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    const/4 v0, 0x1

    .line 213
    aget v1, v11, v0

    const/4 v0, -0x1

    if-ne v1, v0, :cond_61

    const/4 v1, 0x0

    aget v1, v11, v1

    if-ne v1, v0, :cond_61

    const/4 v1, 0x2

    aget v3, v11, v1

    if-ne v3, v0, :cond_61

    const/4 v1, 0x3

    aget v3, v11, v1

    if-eq v3, v0, :cond_60

    goto :goto_45

    :cond_60
    move v1, v2

    :goto_44
    move v2, v1

    goto :goto_46

    :cond_61
    const/4 v1, 0x3

    .line 214
    :goto_45
    aget v0, v11, v1

    const/4 v3, 0x0

    aget v5, v11, v3

    const/4 v8, 0x1

    aget v9, v11, v8

    const/4 v12, 0x2

    aget v11, v11, v12

    .line 215
    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 216
    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 217
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 218
    aget v1, v13, v1

    aget v3, v13, v3

    aget v5, v13, v8

    aget v8, v13, v12

    .line 219
    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 220
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 221
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, v0

    .line 222
    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    :goto_46
    if-nez v20, :cond_62

    const/high16 v0, 0x40000000    # 2.0f

    if-eq v10, v0, :cond_62

    goto :goto_47

    :cond_62
    move v2, v7

    .line 223
    :goto_47
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    add-int/2addr v1, v0

    add-int/2addr v1, v2

    .line 224
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v1, -0x1000000

    and-int/2addr v1, v14

    or-int v1, v1, v22

    shl-int/lit8 v2, v14, 0x10

    .line 225
    invoke-static {v0, v4, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    .line 226
    invoke-virtual {v6, v1, v0}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    if-eqz v21, :cond_64

    .line 227
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    const/4 v0, 0x0

    move/from16 v9, v19

    const/4 v8, 0x0

    :goto_48
    if-ge v8, v9, :cond_64

    .line 228
    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 229
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_63

    .line 230
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    .line 231
    iget v0, v10, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_63

    .line 232
    iget v11, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 233
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v4, v7

    .line 234
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 235
    iput v11, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    :cond_63
    add-int/lit8 v8, v8, 0x1

    goto :goto_48

    :cond_64
    return-void
.end method

.method public setBaselineAligned(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->a:Z

    return-void
.end method

.method public setBaselineAlignedChildIndex(I)V
    .locals 2

    if-ltz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->b:I

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "base aligned child index out of range (0, "

    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->k:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->k:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->l:I

    .line 4
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->m:I

    goto :goto_0

    .line 5
    :cond_1
    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->l:I

    .line 6
    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->m:I

    :goto_0
    if-nez p1, :cond_2

    const/4 v0, 0x1

    .line 7
    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setDividerPadding(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->o:I

    return-void
.end method

.method public setGravity(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    if-eq v0, p1, :cond_2

    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    const v0, 0x800003

    or-int/2addr p1, v0

    :cond_0
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1

    or-int/lit8 p1, p1, 0x30

    .line 2
    :cond_1
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_2
    return-void
.end method

.method public setHorizontalGravity(I)V
    .locals 2

    const v0, 0x800007

    and-int/2addr p1, v0

    .line 1
    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    and-int/2addr v0, v1

    if-eq v0, p1, :cond_0

    const v0, -0x800008

    and-int/2addr v0, v1

    or-int/2addr p1, v0

    .line 2
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setMeasureWithLargestChildEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->h:Z

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->d:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->d:I

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setShowDividers(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->n:I

    if-eq p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3
    :cond_0
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->n:I

    return-void
.end method

.method public setVerticalGravity(I)V
    .locals 2

    and-int/lit8 p1, p1, 0x70

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    and-int/lit8 v1, v0, 0x70

    if-eq v1, p1, :cond_0

    and-int/lit8 v0, v0, -0x71

    or-int/2addr p1, v0

    .line 2
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setWeightSum(F)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->g:F

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
