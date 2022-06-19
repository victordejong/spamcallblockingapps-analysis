.class public Lcom/github/jdsjlzx/recyclerview/ExStaggeredGridLayoutManager;
.super Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
.source "ExStaggeredGridLayoutManager.java"


# instance fields
.field private Q:Lcom/github/jdsjlzx/recyclerview/a;


# virtual methods
.method public G0(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$o;->G0(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public Z0(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/ExStaggeredGridLayoutManager;->Q:Lcom/github/jdsjlzx/recyclerview/a;

    invoke-virtual {v0}, Lcom/github/jdsjlzx/recyclerview/a;->d()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$o;->Z0(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;II)V

    return-void
.end method
