.class public abstract Lcom/a/a/a/a/b/a/h;
.super Lcom/a/a/a/a/b/a/b;
.source "ItemRemoveAnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/a/a/b/a/b<",
        "Lcom/a/a/a/a/b/a/j;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/a/a/a/a/b/a;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/a/a/a/a/b/a/b;-><init>(Lcom/a/a/a/a/b/a;)V

    return-void
.end method


# virtual methods
.method public abstract a(Landroidx/recyclerview/widget/RecyclerView$w;)Z
.end method

.method public bridge synthetic d(Lcom/a/a/a/a/b/a/e;Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 0

    .line 24
    check-cast p1, Lcom/a/a/a/a/b/a/j;

    invoke-virtual {p0, p1, p2}, Lcom/a/a/a/a/b/a/h;->d(Lcom/a/a/a/a/b/a/j;Landroidx/recyclerview/widget/RecyclerView$w;)V

    return-void
.end method

.method public d(Lcom/a/a/a/a/b/a/j;Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/a/a/a/a/b/a/h;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 44
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "dispatchRemoveStarting("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ARVItemRemoveAnimMgr"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_0
    iget-object p1, p0, Lcom/a/a/a/a/b/a/h;->a:Lcom/a/a/a/a/b/a;

    invoke-virtual {p1, p2}, Lcom/a/a/a/a/b/a;->l(Landroidx/recyclerview/widget/RecyclerView$w;)V

    return-void
.end method

.method public bridge synthetic e(Lcom/a/a/a/a/b/a/e;Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 0

    .line 24
    check-cast p1, Lcom/a/a/a/a/b/a/j;

    invoke-virtual {p0, p1, p2}, Lcom/a/a/a/a/b/a/h;->e(Lcom/a/a/a/a/b/a/j;Landroidx/recyclerview/widget/RecyclerView$w;)V

    return-void
.end method

.method public e(Lcom/a/a/a/a/b/a/j;Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/a/a/a/a/b/a/h;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 52
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "dispatchRemoveFinished("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ARVItemRemoveAnimMgr"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_0
    iget-object p1, p0, Lcom/a/a/a/a/b/a/h;->a:Lcom/a/a/a/a/b/a;

    invoke-virtual {p1, p2}, Lcom/a/a/a/a/b/a;->i(Landroidx/recyclerview/widget/RecyclerView$w;)V

    return-void
.end method

.method protected bridge synthetic f(Lcom/a/a/a/a/b/a/e;Landroidx/recyclerview/widget/RecyclerView$w;)Z
    .locals 0

    .line 24
    check-cast p1, Lcom/a/a/a/a/b/a/j;

    invoke-virtual {p0, p1, p2}, Lcom/a/a/a/a/b/a/h;->f(Lcom/a/a/a/a/b/a/j;Landroidx/recyclerview/widget/RecyclerView$w;)Z

    move-result p1

    return p1
.end method

.method protected f(Lcom/a/a/a/a/b/a/j;Landroidx/recyclerview/widget/RecyclerView$w;)Z
    .locals 1

    .line 59
    iget-object v0, p1, Lcom/a/a/a/a/b/a/j;->a:Landroidx/recyclerview/widget/RecyclerView$w;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    iget-object v0, p1, Lcom/a/a/a/a/b/a/j;->a:Landroidx/recyclerview/widget/RecyclerView$w;

    if-ne v0, p2, :cond_1

    .line 60
    :cond_0
    iget-object p2, p1, Lcom/a/a/a/a/b/a/j;->a:Landroidx/recyclerview/widget/RecyclerView$w;

    invoke-virtual {p0, p1, p2}, Lcom/a/a/a/a/b/a/h;->b(Lcom/a/a/a/a/b/a/e;Landroidx/recyclerview/widget/RecyclerView$w;)V

    .line 61
    iget-object p2, p1, Lcom/a/a/a/a/b/a/j;->a:Landroidx/recyclerview/widget/RecyclerView$w;

    invoke-virtual {p0, p1, p2}, Lcom/a/a/a/a/b/a/h;->e(Lcom/a/a/a/a/b/a/j;Landroidx/recyclerview/widget/RecyclerView$w;)V

    .line 62
    iget-object p2, p1, Lcom/a/a/a/a/b/a/j;->a:Landroidx/recyclerview/widget/RecyclerView$w;

    invoke-virtual {p1, p2}, Lcom/a/a/a/a/b/a/j;->a(Landroidx/recyclerview/widget/RecyclerView$w;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public h()J
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/a/a/a/a/b/a/h;->a:Lcom/a/a/a/a/b/a;

    invoke-virtual {v0}, Lcom/a/a/a/a/b/a;->g()J

    move-result-wide v0

    return-wide v0
.end method
