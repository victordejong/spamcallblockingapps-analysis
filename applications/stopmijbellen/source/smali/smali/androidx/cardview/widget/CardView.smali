.class public Landroidx/cardview/widget/CardView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field public static final h:[I

.field public static final i:Lr/b;


# instance fields
.field public a:Z

.field public b:Z

.field public c:I

.field public d:I

.field public final e:Landroid/graphics/Rect;

.field public final f:Landroid/graphics/Rect;

.field public final g:Lr/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010031

    aput v2, v0, v1

    .line 1
    sput-object v0, Landroidx/cardview/widget/CardView;->h:[I

    .line 2
    new-instance v0, Lc4/e;

    invoke-direct {v0}, Lc4/e;-><init>()V

    sput-object v0, Landroidx/cardview/widget/CardView;->i:Lr/b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    const v0, 0x7f04009e

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroidx/cardview/widget/CardView;->e:Landroid/graphics/Rect;

    .line 3
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroidx/cardview/widget/CardView;->f:Landroid/graphics/Rect;

    .line 4
    new-instance v2, Landroidx/cardview/widget/CardView$a;

    invoke-direct {v2, p0}, Landroidx/cardview/widget/CardView$a;-><init>(Landroidx/cardview/widget/CardView;)V

    iput-object v2, p0, Landroidx/cardview/widget/CardView;->g:Lr/a;

    .line 5
    sget-object v3, Lb0/a;->d:[I

    const v4, 0x7f12012a

    invoke-virtual {p1, p2, v3, v0, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    .line 6
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v5, Landroidx/cardview/widget/CardView;->h:[I

    invoke-virtual {v0, v5}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 9
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    .line 10
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-array v0, v3, [F

    .line 11
    invoke-static {v5, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 12
    aget p2, v0, p2

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float p2, p2, v0

    if-lez p2, :cond_1

    .line 13
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f06004a

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f060047

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    .line 15
    :goto_0
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    :goto_1
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    const/4 v5, 0x4

    .line 17
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    const/4 v6, 0x5

    .line 18
    invoke-virtual {p1, v6, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    const/4 v6, 0x7

    .line 19
    invoke-virtual {p1, v6, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Landroidx/cardview/widget/CardView;->a:Z

    const/4 v6, 0x6

    const/4 v7, 0x1

    .line 20
    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Landroidx/cardview/widget/CardView;->b:Z

    const/16 v6, 0x8

    .line 21
    invoke-virtual {p1, v6, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    const/16 v8, 0xa

    .line 22
    invoke-virtual {p1, v8, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v1, Landroid/graphics/Rect;->left:I

    const/16 v8, 0xc

    .line 23
    invoke-virtual {p1, v8, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v1, Landroid/graphics/Rect;->top:I

    const/16 v8, 0xb

    .line 24
    invoke-virtual {p1, v8, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v1, Landroid/graphics/Rect;->right:I

    const/16 v8, 0x9

    .line 25
    invoke-virtual {p1, v8, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v1, Landroid/graphics/Rect;->bottom:I

    cmpl-float v1, v5, v0

    if-lez v1, :cond_2

    move v0, v5

    .line 26
    :cond_2
    invoke-virtual {p1, v4, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroidx/cardview/widget/CardView;->c:I

    .line 27
    invoke-virtual {p1, v7, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroidx/cardview/widget/CardView;->d:I

    .line 28
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 29
    sget-object p1, Landroidx/cardview/widget/CardView;->i:Lr/b;

    check-cast p1, Lc4/e;

    .line 30
    new-instance v1, Lr/c;

    invoke-direct {v1, p2, v3}, Lr/c;-><init>(Landroid/content/res/ColorStateList;F)V

    .line 31
    iput-object v1, v2, Landroidx/cardview/widget/CardView$a;->a:Landroid/graphics/drawable/Drawable;

    .line 32
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 33
    invoke-virtual {p0, v7}, Landroid/view/View;->setClipToOutline(Z)V

    .line 34
    invoke-virtual {p0, v5}, Landroid/view/View;->setElevation(F)V

    .line 35
    invoke-virtual {p1, v2, v0}, Lc4/e;->n(Lr/a;F)V

    return-void
.end method

.method public static synthetic c(Landroidx/cardview/widget/CardView;IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public getCardBackgroundColor()Landroid/content/res/ColorStateList;
    .locals 2

    .line 1
    sget-object v0, Landroidx/cardview/widget/CardView;->i:Lr/b;

    iget-object v1, p0, Landroidx/cardview/widget/CardView;->g:Lr/a;

    check-cast v0, Lc4/e;

    .line 2
    invoke-virtual {v0, v1}, Lc4/e;->e(Lr/a;)Lr/c;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lr/c;->h:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getCardElevation()F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/cardview/widget/CardView;->g:Lr/a;

    .line 2
    check-cast v0, Landroidx/cardview/widget/CardView$a;

    .line 3
    iget-object v0, v0, Landroidx/cardview/widget/CardView$a;->b:Landroidx/cardview/widget/CardView;

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getElevation()F

    move-result v0

    return v0
.end method

.method public getContentPaddingBottom()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/cardview/widget/CardView;->e:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getContentPaddingLeft()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/cardview/widget/CardView;->e:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getContentPaddingRight()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/cardview/widget/CardView;->e:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getContentPaddingTop()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/cardview/widget/CardView;->e:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getMaxCardElevation()F
    .locals 2

    .line 1
    sget-object v0, Landroidx/cardview/widget/CardView;->i:Lr/b;

    iget-object v1, p0, Landroidx/cardview/widget/CardView;->g:Lr/a;

    check-cast v0, Lc4/e;

    invoke-virtual {v0, v1}, Lc4/e;->g(Lr/a;)F

    move-result v0

    return v0
.end method

.method public getPreventCornerOverlap()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/cardview/widget/CardView;->b:Z

    return v0
.end method

.method public getRadius()F
    .locals 2

    .line 1
    sget-object v0, Landroidx/cardview/widget/CardView;->i:Lr/b;

    iget-object v1, p0, Landroidx/cardview/widget/CardView;->g:Lr/a;

    check-cast v0, Lc4/e;

    invoke-virtual {v0, v1}, Lc4/e;->h(Lr/a;)F

    move-result v0

    return v0
.end method

.method public getUseCompatPadding()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/cardview/widget/CardView;->a:Z

    return v0
.end method

.method public onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setCardBackgroundColor(I)V
    .locals 2

    .line 1
    sget-object v0, Landroidx/cardview/widget/CardView;->i:Lr/b;

    iget-object v1, p0, Landroidx/cardview/widget/CardView;->g:Lr/a;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    check-cast v0, Lc4/e;

    .line 2
    invoke-virtual {v0, v1}, Lc4/e;->e(Lr/a;)Lr/c;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Lr/c;->b(Landroid/content/res/ColorStateList;)V

    .line 4
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setCardBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 5
    sget-object v0, Landroidx/cardview/widget/CardView;->i:Lr/b;

    iget-object v1, p0, Landroidx/cardview/widget/CardView;->g:Lr/a;

    check-cast v0, Lc4/e;

    .line 6
    invoke-virtual {v0, v1}, Lc4/e;->e(Lr/a;)Lr/c;

    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lr/c;->b(Landroid/content/res/ColorStateList;)V

    .line 8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setCardElevation(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/cardview/widget/CardView;->g:Lr/a;

    .line 2
    check-cast v0, Landroidx/cardview/widget/CardView$a;

    .line 3
    iget-object v0, v0, Landroidx/cardview/widget/CardView$a;->b:Landroidx/cardview/widget/CardView;

    .line 4
    invoke-virtual {v0, p1}, Landroid/view/View;->setElevation(F)V

    return-void
.end method

.method public setMaxCardElevation(F)V
    .locals 2

    .line 1
    sget-object v0, Landroidx/cardview/widget/CardView;->i:Lr/b;

    iget-object v1, p0, Landroidx/cardview/widget/CardView;->g:Lr/a;

    check-cast v0, Lc4/e;

    invoke-virtual {v0, v1, p1}, Lc4/e;->n(Lr/a;F)V

    return-void
.end method

.method public setMinimumHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/cardview/widget/CardView;->d:I

    .line 2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    return-void
.end method

.method public setMinimumWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/cardview/widget/CardView;->c:I

    .line 2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 0

    return-void
.end method

.method public setPreventCornerOverlap(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/cardview/widget/CardView;->b:Z

    if-eq p1, v0, :cond_0

    .line 2
    iput-boolean p1, p0, Landroidx/cardview/widget/CardView;->b:Z

    .line 3
    sget-object p1, Landroidx/cardview/widget/CardView;->i:Lr/b;

    iget-object v0, p0, Landroidx/cardview/widget/CardView;->g:Lr/a;

    check-cast p1, Lc4/e;

    .line 4
    invoke-virtual {p1, v0}, Lc4/e;->e(Lr/a;)Lr/c;

    move-result-object v1

    .line 5
    iget v1, v1, Lr/c;->e:F

    .line 6
    invoke-virtual {p1, v0, v1}, Lc4/e;->n(Lr/a;F)V

    :cond_0
    return-void
.end method

.method public setRadius(F)V
    .locals 2

    .line 1
    sget-object v0, Landroidx/cardview/widget/CardView;->i:Lr/b;

    iget-object v1, p0, Landroidx/cardview/widget/CardView;->g:Lr/a;

    check-cast v0, Lc4/e;

    .line 2
    invoke-virtual {v0, v1}, Lc4/e;->e(Lr/a;)Lr/c;

    move-result-object v0

    .line 3
    iget v1, v0, Lr/c;->a:F

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iput p1, v0, Lr/c;->a:F

    const/4 p1, 0x0

    .line 5
    invoke-virtual {v0, p1}, Lr/c;->c(Landroid/graphics/Rect;)V

    .line 6
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :goto_0
    return-void
.end method

.method public setUseCompatPadding(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/cardview/widget/CardView;->a:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Landroidx/cardview/widget/CardView;->a:Z

    .line 3
    sget-object p1, Landroidx/cardview/widget/CardView;->i:Lr/b;

    iget-object v0, p0, Landroidx/cardview/widget/CardView;->g:Lr/a;

    check-cast p1, Lc4/e;

    .line 4
    invoke-virtual {p1, v0}, Lc4/e;->e(Lr/a;)Lr/c;

    move-result-object v1

    .line 5
    iget v1, v1, Lr/c;->e:F

    .line 6
    invoke-virtual {p1, v0, v1}, Lc4/e;->n(Lr/a;F)V

    :cond_0
    return-void
.end method
