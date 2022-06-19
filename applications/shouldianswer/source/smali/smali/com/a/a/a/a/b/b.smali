.class public Lcom/a/a/a/a/b/b;
.super Lcom/a/a/a/a/b/d;
.source "DraggableItemAnimator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/a/a/a/a/b/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView$w;Landroidx/recyclerview/widget/RecyclerView$w;IIII)Z
    .locals 0

    if-ne p1, p2, :cond_0

    if-ne p3, p5, :cond_0

    if-ne p4, p6, :cond_0

    const/4 p2, 0x1

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/a/a/a/a/b/b;->a(Landroidx/recyclerview/widget/RecyclerView$w;Z)V

    const/4 p1, 0x0

    return p1

    .line 39
    :cond_0
    invoke-super/range {p0 .. p6}, Lcom/a/a/a/a/b/d;->a(Landroidx/recyclerview/widget/RecyclerView$w;Landroidx/recyclerview/widget/RecyclerView$w;IIII)Z

    move-result p1

    return p1
.end method

.method protected l()V
    .locals 1

    .line 27
    invoke-super {p0}, Lcom/a/a/a/a/b/d;->l()V

    const/4 v0, 0x0

    .line 28
    invoke-super {p0, v0}, Lcom/a/a/a/a/b/d;->a(Z)V

    return-void
.end method
