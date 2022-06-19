.class public Lhd0;
.super Landroidx/recyclerview/widget/RecyclerView$n;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhd0$a;
    }
.end annotation


# instance fields
.field public a:Landroid/graphics/drawable/Drawable;

.field public b:I

.field public c:Lhd0$a;

.field public d:Lhd0$a;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    iput-object p1, p0, Lhd0;->a:Landroid/graphics/drawable/Drawable;

    iput p2, p0, Lhd0;->b:I

    return-void
.end method


# virtual methods
.method public final d(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "DividerItemDecoration can only be used with a LinearLayoutManager."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(Lhd0$a;)V
    .locals 0

    iput-object p1, p0, Lhd0;->d:Lhd0$a;

    return-void
.end method

.method public f(Lhd0$a;)V
    .locals 0

    iput-object p1, p0, Lhd0;->c:Lhd0$a;

    return-void
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$n;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V

    iget-object p4, p0, Lhd0;->a:Landroid/graphics/drawable/Drawable;

    if-nez p4, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    const/4 p4, -0x1

    if-ne p2, p4, :cond_1

    return-void

    :cond_1
    iget-object p4, p0, Lhd0;->d:Lhd0$a;

    const/4 v0, 0x1

    if-eqz p4, :cond_3

    invoke-interface {p4, p2}, Lhd0$a;->a(I)Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-virtual {p0, p3}, Lhd0;->d(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result p4

    if-ne p4, v0, :cond_2

    iget p4, p0, Lhd0;->b:I

    iput p4, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_2
    iget p4, p0, Lhd0;->b:I

    iput p4, p1, Landroid/graphics/Rect;->right:I

    :cond_3
    :goto_0
    iget-object p4, p0, Lhd0;->c:Lhd0$a;

    if-eqz p4, :cond_4

    invoke-interface {p4, p2}, Lhd0$a;->a(I)Z

    move-result p4

    if-nez p4, :cond_5

    :cond_4
    iget-object p4, p0, Lhd0;->d:Lhd0$a;

    if-nez p4, :cond_7

    iget-object p4, p0, Lhd0;->c:Lhd0$a;

    if-nez p4, :cond_7

    if-lez p2, :cond_7

    :cond_5
    invoke-virtual {p0, p3}, Lhd0;->d(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result p2

    if-ne p2, v0, :cond_6

    iget p2, p0, Lhd0;->b:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    goto :goto_1

    :cond_6
    iget p2, p0, Lhd0;->b:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    :cond_7
    :goto_1
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .locals 11

    iget-object v0, p0, Lhd0;->a:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$n;->onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lhd0;->d(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result p3

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p3, v1, :cond_1

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    move v5, v4

    const/4 v4, 0x0

    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    move v6, v4

    const/4 v5, 0x0

    move v4, v3

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_9

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    goto/16 :goto_3

    :cond_2
    iget-object v8, p0, Lhd0;->d:Lhd0$a;

    const/high16 v9, 0x437f0000    # 255.0f

    if-eqz v8, :cond_4

    invoke-interface {v8, v7}, Lhd0$a;->a(I)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    if-ne p3, v1, :cond_3

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v8}, Landroid/view/View;->getTranslationY()F

    move-result v6

    add-float/2addr v4, v6

    float-to-int v4, v4

    iget v6, p0, Lhd0;->b:I

    add-int/2addr v6, v4

    goto :goto_1

    :cond_3
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v8}, Landroid/view/View;->getTranslationX()F

    move-result v5

    add-float/2addr v3, v5

    float-to-int v3, v3

    iget v5, p0, Lhd0;->b:I

    add-int/2addr v5, v3

    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object v10, p0, Lhd0;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/view/View;->getAlpha()F

    move-result v8

    mul-float v8, v8, v9

    float-to-int v8, v8

    invoke-virtual {v10, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v8, p0, Lhd0;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v8, p0, Lhd0;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    iget-object v8, p0, Lhd0;->c:Lhd0$a;

    if-eqz v8, :cond_5

    invoke-interface {v8, v7}, Lhd0$a;->a(I)Z

    move-result v8

    if-nez v8, :cond_6

    :cond_5
    iget-object v8, p0, Lhd0;->d:Lhd0$a;

    if-nez v8, :cond_8

    iget-object v8, p0, Lhd0;->c:Lhd0$a;

    if-nez v8, :cond_8

    if-lez v7, :cond_8

    :cond_6
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-ne p3, v1, :cond_7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v7}, Landroid/view/View;->getTranslationY()F

    move-result v6

    add-float/2addr v4, v6

    float-to-int v6, v4

    iget v4, p0, Lhd0;->b:I

    sub-int v4, v6, v4

    goto :goto_2

    :cond_7
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v7}, Landroid/view/View;->getTranslationX()F

    move-result v5

    add-float/2addr v3, v5

    float-to-int v5, v3

    iget v3, p0, Lhd0;->b:I

    sub-int v3, v5, v3

    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object v8, p0, Lhd0;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v7

    mul-float v7, v7, v9

    float-to-int v7, v7

    invoke-virtual {v8, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v7, p0, Lhd0;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v7, p0, Lhd0;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_8
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_9
    return-void
.end method
