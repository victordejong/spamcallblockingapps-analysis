.class public abstract Ls0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld1;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/content/Context;

.field public c:Lx0;

.field public d:Landroid/view/LayoutInflater;

.field public f:Ld1$a;

.field public g:I

.field public h:I

.field public j:Le1;

.field public k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls0;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Ls0;->d:Landroid/view/LayoutInflater;

    iput p2, p0, Ls0;->g:I

    iput p3, p0, Ls0;->h:I

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Ls0;->j:Le1;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public abstract c(Lz0;Le1$a;)V
.end method

.method public collapseItemActionView(Lx0;Lz0;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public d(Landroid/view/ViewGroup;)Le1$a;
    .locals 3

    iget-object v0, p0, Ls0;->d:Landroid/view/LayoutInflater;

    iget v1, p0, Ls0;->h:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Le1$a;

    return-object p1
.end method

.method public e(Landroid/view/ViewGroup;I)Z
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public expandItemActionView(Lx0;Lz0;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public f()Ld1$a;
    .locals 1

    iget-object v0, p0, Ls0;->f:Ld1$a;

    return-object v0
.end method

.method public g(Lz0;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    instance-of v0, p2, Le1$a;

    if-eqz v0, :cond_0

    check-cast p2, Le1$a;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3}, Ls0;->d(Landroid/view/ViewGroup;)Le1$a;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p1, p2}, Ls0;->c(Lz0;Le1$a;)V

    check-cast p2, Landroid/view/View;

    return-object p2
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Ls0;->k:I

    return v0
.end method

.method public h(Landroid/view/ViewGroup;)Le1;
    .locals 3

    iget-object v0, p0, Ls0;->j:Le1;

    if-nez v0, :cond_0

    iget-object v0, p0, Ls0;->d:Landroid/view/LayoutInflater;

    iget v1, p0, Ls0;->g:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Le1;

    iput-object p1, p0, Ls0;->j:Le1;

    iget-object v0, p0, Ls0;->c:Lx0;

    invoke-interface {p1, v0}, Le1;->initialize(Lx0;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ls0;->updateMenuView(Z)V

    :cond_0
    iget-object p1, p0, Ls0;->j:Le1;

    return-object p1
.end method

.method public i(I)V
    .locals 0

    iput p1, p0, Ls0;->k:I

    return-void
.end method

.method public initForMenu(Landroid/content/Context;Lx0;)V
    .locals 0

    iput-object p1, p0, Ls0;->b:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    iput-object p2, p0, Ls0;->c:Lx0;

    return-void
.end method

.method public abstract j(ILz0;)Z
.end method

.method public onCloseMenu(Lx0;Z)V
    .locals 1

    iget-object v0, p0, Ls0;->f:Ld1$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Ld1$a;->onCloseMenu(Lx0;Z)V

    :cond_0
    return-void
.end method

.method public onSubMenuSelected(Li1;)Z
    .locals 1

    iget-object v0, p0, Ls0;->f:Ld1$a;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ls0;->c:Lx0;

    :goto_0
    invoke-interface {v0, p1}, Ld1$a;->a(Lx0;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public setCallback(Ld1$a;)V
    .locals 0

    iput-object p1, p0, Ls0;->f:Ld1$a;

    return-void
.end method

.method public updateMenuView(Z)V
    .locals 9

    iget-object p1, p0, Ls0;->j:Le1;

    check-cast p1, Landroid/view/ViewGroup;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ls0;->c:Lx0;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lx0;->flagActionItems()V

    iget-object v0, p0, Ls0;->c:Lx0;

    invoke-virtual {v0}, Lx0;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lz0;

    invoke-virtual {p0, v4, v5}, Ls0;->j(ILz0;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v7, v6, Le1$a;

    if-eqz v7, :cond_1

    move-object v7, v6

    check-cast v7, Le1$a;

    invoke-interface {v7}, Le1$a;->getItemData()Lz0;

    move-result-object v7

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    invoke-virtual {p0, v5, v6, p1}, Ls0;->g(Lz0;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    if-eq v5, v7, :cond_2

    invoke-virtual {v8, v1}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {v8}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    :cond_2
    if-eq v8, v6, :cond_3

    invoke-virtual {p0, v8, v4}, Ls0;->b(Landroid/view/View;I)V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    move v1, v4

    :cond_6
    :goto_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_7

    invoke-virtual {p0, p1, v1}, Ls0;->e(Landroid/view/ViewGroup;I)Z

    move-result v0

    if-nez v0, :cond_6

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method
