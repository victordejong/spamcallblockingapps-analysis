.class public final Lp40;
.super Landroidx/recyclerview/widget/RecyclerView$s;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp40$a;
    }
.end annotation


# instance fields
.field public a:Landroidx/viewpager2/widget/ViewPager2$i;

.field public final b:Landroidx/viewpager2/widget/ViewPager2;

.field public final c:Landroidx/recyclerview/widget/RecyclerView;

.field public final d:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public e:I

.field public f:I

.field public g:Lp40$a;

.field public h:I

.field public i:I

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z


# direct methods
.method public constructor <init>(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$s;-><init>()V

    iput-object p1, p0, Lp40;->b:Landroidx/viewpager2/widget/ViewPager2;

    iget-object p1, p1, Landroidx/viewpager2/widget/ViewPager2;->l:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lp40;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iput-object p1, p0, Lp40;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    new-instance p1, Lp40$a;

    invoke-direct {p1}, Lp40$a;-><init>()V

    iput-object p1, p0, Lp40;->g:Lp40$a;

    invoke-virtual {p0}, Lp40;->l()V

    return-void
.end method


# virtual methods
.method public final a(IFI)V
    .locals 1

    iget-object v0, p0, Lp40;->a:Landroidx/viewpager2/widget/ViewPager2$i;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Landroidx/viewpager2/widget/ViewPager2$i;->onPageScrolled(IFI)V

    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 1

    iget-object v0, p0, Lp40;->a:Landroidx/viewpager2/widget/ViewPager2$i;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2$i;->onPageSelected(I)V

    :cond_0
    return-void
.end method

.method public final c(I)V
    .locals 2

    iget v0, p0, Lp40;->e:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v0, p0, Lp40;->f:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lp40;->f:I

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iput p1, p0, Lp40;->f:I

    iget-object v0, p0, Lp40;->a:Landroidx/viewpager2/widget/ViewPager2$i;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2$i;->onPageScrollStateChanged(I)V

    :cond_2
    return-void
.end method

.method public final d()I
    .locals 1

    iget-object v0, p0, Lp40;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    return v0
.end method

.method public e()D
    .locals 5

    invoke-virtual {p0}, Lp40;->o()V

    iget-object v0, p0, Lp40;->g:Lp40$a;

    iget v1, v0, Lp40$a;->a:I

    int-to-double v1, v1

    iget v0, v0, Lp40$a;->b:F

    float-to-double v3, v0

    add-double/2addr v1, v3

    return-wide v1
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lp40;->f:I

    return v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lp40;->m:Z

    return v0
.end method

.method public h()Z
    .locals 1

    iget v0, p0, Lp40;->f:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final i()Z
    .locals 3

    iget v0, p0, Lp40;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lp40;->l:Z

    return-void
.end method

.method public k(IZ)V
    .locals 2

    const/4 v0, 0x2

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto :goto_0

    :cond_0
    const/4 p2, 0x3

    :goto_0
    iput p2, p0, Lp40;->e:I

    const/4 p2, 0x0

    iput-boolean p2, p0, Lp40;->m:Z

    iget v1, p0, Lp40;->i:I

    if-eq v1, p1, :cond_1

    const/4 p2, 0x1

    :cond_1
    iput p1, p0, Lp40;->i:I

    invoke-virtual {p0, v0}, Lp40;->c(I)V

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Lp40;->b(I)V

    :cond_2
    return-void
.end method

.method public final l()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lp40;->e:I

    iput v0, p0, Lp40;->f:I

    iget-object v1, p0, Lp40;->g:Lp40$a;

    invoke-virtual {v1}, Lp40$a;->a()V

    const/4 v1, -0x1

    iput v1, p0, Lp40;->h:I

    iput v1, p0, Lp40;->i:I

    iput-boolean v0, p0, Lp40;->j:Z

    iput-boolean v0, p0, Lp40;->k:Z

    iput-boolean v0, p0, Lp40;->m:Z

    iput-boolean v0, p0, Lp40;->l:Z

    return-void
.end method

.method public m(Landroidx/viewpager2/widget/ViewPager2$i;)V
    .locals 0

    iput-object p1, p0, Lp40;->a:Landroidx/viewpager2/widget/ViewPager2$i;

    return-void
.end method

.method public final n(Z)V
    .locals 2

    iput-boolean p1, p0, Lp40;->m:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    iput p1, p0, Lp40;->e:I

    iget p1, p0, Lp40;->i:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    iput p1, p0, Lp40;->h:I

    iput v1, p0, Lp40;->i:I

    goto :goto_1

    :cond_1
    iget p1, p0, Lp40;->h:I

    if-ne p1, v1, :cond_2

    invoke-virtual {p0}, Lp40;->d()I

    move-result p1

    iput p1, p0, Lp40;->h:I

    :cond_2
    :goto_1
    invoke-virtual {p0, v0}, Lp40;->c(I)V

    return-void
.end method

.method public final o()V
    .locals 9

    iget-object v0, p0, Lp40;->g:Lp40$a;

    iget-object v1, p0, Lp40;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    iput v1, v0, Lp40$a;->a:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lp40$a;->a()V

    return-void

    :cond_0
    iget-object v2, p0, Lp40;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lp40$a;->a()V

    return-void

    :cond_1
    iget-object v2, p0, Lp40;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView$o;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lp40;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView$o;->getRightDecorationWidth(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lp40;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/RecyclerView$o;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v4

    iget-object v5, p0, Lp40;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v5, v1}, Landroidx/recyclerview/widget/RecyclerView$o;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    instance-of v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v7, :cond_2

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v7

    iget v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v7

    iget v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, v7

    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v4

    add-int/2addr v6, v5

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v2

    add-int/2addr v5, v3

    iget-object v3, p0, Lp40;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v3

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v1, v2

    iget-object v2, p0, Lp40;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lp40;->b:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v2}, Landroidx/viewpager2/widget/ViewPager2;->d()Z

    move-result v2

    if-eqz v2, :cond_4

    neg-int v1, v1

    :cond_4
    move v6, v5

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v4

    iget-object v2, p0, Lp40;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    :goto_1
    neg-int v1, v1

    iput v1, v0, Lp40$a;->c:I

    if-gez v1, :cond_7

    new-instance v1, Ll40;

    iget-object v2, p0, Lp40;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, v2}, Ll40;-><init>(Landroidx/recyclerview/widget/LinearLayoutManager;)V

    invoke-virtual {v1}, Ll40;->d()Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Page(s) contain a ViewGroup with a LayoutTransition (or animateLayoutChanges=\"true\"), which interferes with the scrolling animation. Make sure to call getLayoutTransition().setAnimateParentHierarchy(false) on all ViewGroups with a LayoutTransition before an animation is started."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v7, [Ljava/lang/Object;

    iget v0, v0, Lp40$a;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v8

    const-string v0, "Page can only be offset by a positive amount, not by %d"

    invoke-static {v2, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    if-nez v6, :cond_8

    const/4 v1, 0x0

    goto :goto_2

    :cond_8
    int-to-float v1, v1

    int-to-float v2, v6

    div-float/2addr v1, v2

    :goto_2
    iput v1, v0, Lp40$a;->b:F

    return-void
.end method

.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 5

    iget p1, p0, Lp40;->e:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget p1, p0, Lp40;->f:I

    if-eq p1, v1, :cond_1

    :cond_0
    if-ne p2, v1, :cond_1

    invoke-virtual {p0, v0}, Lp40;->n(Z)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lp40;->i()Z

    move-result p1

    const/4 v2, 0x2

    if-eqz p1, :cond_3

    if-ne p2, v2, :cond_3

    iget-boolean p1, p0, Lp40;->k:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0, v2}, Lp40;->c(I)V

    iput-boolean v1, p0, Lp40;->j:Z

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0}, Lp40;->i()Z

    move-result p1

    const/4 v3, -0x1

    if-eqz p1, :cond_7

    if-nez p2, :cond_7

    invoke-virtual {p0}, Lp40;->o()V

    iget-boolean p1, p0, Lp40;->k:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lp40;->g:Lp40$a;

    iget p1, p1, Lp40$a;->a:I

    if-eq p1, v3, :cond_6

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4, v0}, Lp40;->a(IFI)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lp40;->g:Lp40$a;

    iget v4, p1, Lp40$a;->c:I

    if-nez v4, :cond_5

    iget v4, p0, Lp40;->h:I

    iget p1, p1, Lp40$a;->a:I

    if-eq v4, p1, :cond_6

    invoke-virtual {p0, p1}, Lp40;->b(I)V

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :cond_6
    :goto_0
    if-eqz v1, :cond_7

    invoke-virtual {p0, v0}, Lp40;->c(I)V

    invoke-virtual {p0}, Lp40;->l()V

    :cond_7
    iget p1, p0, Lp40;->e:I

    if-ne p1, v2, :cond_a

    if-nez p2, :cond_a

    iget-boolean p1, p0, Lp40;->l:Z

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lp40;->o()V

    iget-object p1, p0, Lp40;->g:Lp40$a;

    iget p2, p1, Lp40$a;->c:I

    if-nez p2, :cond_a

    iget p2, p0, Lp40;->i:I

    iget p1, p1, Lp40$a;->a:I

    if-eq p2, p1, :cond_9

    if-ne p1, v3, :cond_8

    const/4 p1, 0x0

    :cond_8
    invoke-virtual {p0, p1}, Lp40;->b(I)V

    :cond_9
    invoke-virtual {p0, v0}, Lp40;->c(I)V

    invoke-virtual {p0}, Lp40;->l()V

    :cond_a
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 3

    const/4 p1, 0x1

    iput-boolean p1, p0, Lp40;->k:Z

    invoke-virtual {p0}, Lp40;->o()V

    iget-boolean v0, p0, Lp40;->j:Z

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iput-boolean v2, p0, Lp40;->j:Z

    if-gtz p3, :cond_2

    if-nez p3, :cond_1

    if-gez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-object p3, p0, Lp40;->b:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p3}, Landroidx/viewpager2/widget/ViewPager2;->d()Z

    move-result p3

    if-ne p2, p3, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p2, 0x1

    :goto_2
    if-eqz p2, :cond_3

    iget-object p2, p0, Lp40;->g:Lp40$a;

    iget p3, p2, Lp40$a;->c:I

    if-eqz p3, :cond_3

    iget p2, p2, Lp40$a;->a:I

    add-int/2addr p2, p1

    goto :goto_3

    :cond_3
    iget-object p2, p0, Lp40;->g:Lp40$a;

    iget p2, p2, Lp40$a;->a:I

    :goto_3
    iput p2, p0, Lp40;->i:I

    iget p3, p0, Lp40;->h:I

    if-eq p3, p2, :cond_6

    goto :goto_4

    :cond_4
    iget p2, p0, Lp40;->e:I

    if-nez p2, :cond_6

    iget-object p2, p0, Lp40;->g:Lp40$a;

    iget p2, p2, Lp40$a;->a:I

    if-ne p2, v1, :cond_5

    const/4 p2, 0x0

    :cond_5
    :goto_4
    invoke-virtual {p0, p2}, Lp40;->b(I)V

    :cond_6
    iget-object p2, p0, Lp40;->g:Lp40$a;

    iget p3, p2, Lp40$a;->a:I

    if-ne p3, v1, :cond_7

    const/4 p3, 0x0

    :cond_7
    iget v0, p2, Lp40$a;->b:F

    iget p2, p2, Lp40$a;->c:I

    invoke-virtual {p0, p3, v0, p2}, Lp40;->a(IFI)V

    iget-object p2, p0, Lp40;->g:Lp40$a;

    iget p3, p2, Lp40$a;->a:I

    iget v0, p0, Lp40;->i:I

    if-eq p3, v0, :cond_8

    if-ne v0, v1, :cond_9

    :cond_8
    iget p2, p2, Lp40$a;->c:I

    if-nez p2, :cond_9

    iget p2, p0, Lp40;->f:I

    if-eq p2, p1, :cond_9

    invoke-virtual {p0, v2}, Lp40;->c(I)V

    invoke-virtual {p0}, Lp40;->l()V

    :cond_9
    return-void
.end method
