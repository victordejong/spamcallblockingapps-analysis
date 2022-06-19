.class public Lcom/a/a/a/a/d/b;
.super Ljava/lang/Object;
.source "WrappedAdapterUtils.java"


# direct methods
.method public static a(Landroidx/recyclerview/widget/RecyclerView$a;Landroidx/recyclerview/widget/RecyclerView$w;I)V
    .locals 1

    .line 31
    instance-of v0, p0, Lcom/a/a/a/a/a/h;

    if-eqz v0, :cond_0

    .line 32
    check-cast p0, Lcom/a/a/a/a/a/h;

    invoke-interface {p0, p1, p2}, Lcom/a/a/a/a/a/h;->c(Landroidx/recyclerview/widget/RecyclerView$w;I)V

    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$a;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$w;)V

    :goto_0
    return-void
.end method

.method public static b(Landroidx/recyclerview/widget/RecyclerView$a;Landroidx/recyclerview/widget/RecyclerView$w;I)Z
    .locals 1

    .line 40
    instance-of v0, p0, Lcom/a/a/a/a/a/g;

    if-eqz v0, :cond_0

    .line 41
    check-cast p0, Lcom/a/a/a/a/a/g;

    invoke-interface {p0, p1, p2}, Lcom/a/a/a/a/a/g;->d(Landroidx/recyclerview/widget/RecyclerView$w;I)Z

    move-result p0

    return p0

    .line 43
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$a;->onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$w;)Z

    move-result p0

    return p0
.end method

.method public static c(Landroidx/recyclerview/widget/RecyclerView$a;Landroidx/recyclerview/widget/RecyclerView$w;I)V
    .locals 1

    .line 49
    instance-of v0, p0, Lcom/a/a/a/a/a/g;

    if-eqz v0, :cond_0

    .line 50
    check-cast p0, Lcom/a/a/a/a/a/g;

    invoke-interface {p0, p1, p2}, Lcom/a/a/a/a/a/g;->a(Landroidx/recyclerview/widget/RecyclerView$w;I)V

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$a;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$w;)V

    :goto_0
    return-void
.end method

.method public static d(Landroidx/recyclerview/widget/RecyclerView$a;Landroidx/recyclerview/widget/RecyclerView$w;I)V
    .locals 1

    .line 58
    instance-of v0, p0, Lcom/a/a/a/a/a/g;

    if-eqz v0, :cond_0

    .line 59
    check-cast p0, Lcom/a/a/a/a/a/g;

    invoke-interface {p0, p1, p2}, Lcom/a/a/a/a/a/g;->b(Landroidx/recyclerview/widget/RecyclerView$w;I)V

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$a;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$w;)V

    :goto_0
    return-void
.end method
