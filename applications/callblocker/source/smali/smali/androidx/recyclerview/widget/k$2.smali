.class final Landroidx/recyclerview/widget/k$2;
.super Landroidx/recyclerview/widget/k;
.source "OrientationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/widget/k;->b(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView$i;)V
    .locals 1

    .prologue
    .line 356
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/k;-><init>(Landroidx/recyclerview/widget/RecyclerView$i;Landroidx/recyclerview/widget/k$1;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 402
    .line 403
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$j;

    .line 404
    iget-object v1, p0, Landroidx/recyclerview/widget/k$2;->a:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->i(Landroid/view/View;)I

    move-result v1

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$j;->topMargin:I

    sub-int v0, v1, v0

    return v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Landroidx/recyclerview/widget/k$2;->a:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->k(I)V

    .line 370
    return-void
.end method

.method public b(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 395
    .line 396
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$j;

    .line 397
    iget-object v1, p0, Landroidx/recyclerview/widget/k$2;->a:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->k(Landroid/view/View;)I

    move-result v1

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$j;->bottomMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Landroidx/recyclerview/widget/k$2;->a:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$i;->E()I

    move-result v0

    return v0
.end method

.method public c(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 409
    iget-object v0, p0, Landroidx/recyclerview/widget/k$2;->a:Landroidx/recyclerview/widget/RecyclerView$i;

    const/4 v1, 0x1

    iget-object v2, p0, Landroidx/recyclerview/widget/k$2;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 410
    iget-object v0, p0, Landroidx/recyclerview/widget/k$2;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public d()I
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Landroidx/recyclerview/widget/k$2;->a:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$i;->C()I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/k$2;->a:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$i;->G()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public d(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 415
    iget-object v0, p0, Landroidx/recyclerview/widget/k$2;->a:Landroidx/recyclerview/widget/RecyclerView$i;

    const/4 v1, 0x1

    iget-object v2, p0, Landroidx/recyclerview/widget/k$2;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 416
    iget-object v0, p0, Landroidx/recyclerview/widget/k$2;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Landroidx/recyclerview/widget/k$2;->a:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$i;->C()I

    move-result v0

    return v0
.end method

.method public e(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 379
    .line 380
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$j;

    .line 381
    iget-object v1, p0, Landroidx/recyclerview/widget/k$2;->a:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->g(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Landroidx/recyclerview/widget/RecyclerView$j;->topMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$j;->bottomMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public f()I
    .locals 2

    .prologue
    .line 421
    iget-object v0, p0, Landroidx/recyclerview/widget/k$2;->a:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$i;->C()I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/k$2;->a:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$i;->E()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroidx/recyclerview/widget/k$2;->a:Landroidx/recyclerview/widget/RecyclerView$i;

    .line 422
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$i;->G()I

    move-result v1

    sub-int/2addr v0, v1

    .line 421
    return v0
.end method

.method public f(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 387
    .line 388
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$j;

    .line 389
    iget-object v1, p0, Landroidx/recyclerview/widget/k$2;->a:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->f(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Landroidx/recyclerview/widget/RecyclerView$j;->leftMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$j;->rightMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Landroidx/recyclerview/widget/k$2;->a:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$i;->G()I

    move-result v0

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Landroidx/recyclerview/widget/k$2;->a:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$i;->A()I

    move-result v0

    return v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Landroidx/recyclerview/widget/k$2;->a:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$i;->z()I

    move-result v0

    return v0
.end method
