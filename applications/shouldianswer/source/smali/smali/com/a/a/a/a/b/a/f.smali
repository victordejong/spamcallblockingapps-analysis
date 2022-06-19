.class public abstract Lcom/a/a/a/a/b/a/f;
.super Lcom/a/a/a/a/b/a/b;
.source "ItemChangeAnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/a/a/b/a/b<",
        "Lcom/a/a/a/a/b/a/c;",
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
.method protected abstract a(Lcom/a/a/a/a/b/a/c;)V
.end method

.method protected synthetic a(Lcom/a/a/a/a/b/a/e;)V
    .locals 0

    .line 24
    check-cast p1, Lcom/a/a/a/a/b/a/c;

    invoke-virtual {p0, p1}, Lcom/a/a/a/a/b/a/f;->c(Lcom/a/a/a/a/b/a/c;)V

    return-void
.end method

.method public abstract a(Landroidx/recyclerview/widget/RecyclerView$w;Landroidx/recyclerview/widget/RecyclerView$w;IIII)Z
.end method

.method protected abstract b(Lcom/a/a/a/a/b/a/c;)V
.end method

.method protected c(Lcom/a/a/a/a/b/a/c;)V
    .locals 1

    .line 59
    iget-object v0, p1, Lcom/a/a/a/a/b/a/c;->b:Landroidx/recyclerview/widget/RecyclerView$w;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/a/a/a/a/b/a/c;->b:Landroidx/recyclerview/widget/RecyclerView$w;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0, p1}, Lcom/a/a/a/a/b/a/f;->a(Lcom/a/a/a/a/b/a/c;)V

    .line 63
    :cond_0
    iget-object v0, p1, Lcom/a/a/a/a/b/a/c;->a:Landroidx/recyclerview/widget/RecyclerView$w;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/a/a/a/a/b/a/c;->a:Landroidx/recyclerview/widget/RecyclerView$w;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 64
    invoke-virtual {p0, p1}, Lcom/a/a/a/a/b/a/f;->b(Lcom/a/a/a/a/b/a/c;)V

    :cond_1
    return-void
.end method

.method public d(Lcom/a/a/a/a/b/a/c;Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 2

    .line 33
    invoke-virtual {p0}, Lcom/a/a/a/a/b/a/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchChangeStarting("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ARVItemChangeAnimMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/a/a/a/a/b/a/f;->a:Lcom/a/a/a/a/b/a;

    iget-object p1, p1, Lcom/a/a/a/a/b/a/c;->b:Landroidx/recyclerview/widget/RecyclerView$w;

    if-ne p2, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p2, p1}, Lcom/a/a/a/a/b/a;->b(Landroidx/recyclerview/widget/RecyclerView$w;Z)V

    return-void
.end method

.method public bridge synthetic d(Lcom/a/a/a/a/b/a/e;Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 0

    .line 24
    check-cast p1, Lcom/a/a/a/a/b/a/c;

    invoke-virtual {p0, p1, p2}, Lcom/a/a/a/a/b/a/f;->d(Lcom/a/a/a/a/b/a/c;Landroidx/recyclerview/widget/RecyclerView$w;)V

    return-void
.end method

.method public e(Lcom/a/a/a/a/b/a/c;Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 2

    .line 41
    invoke-virtual {p0}, Lcom/a/a/a/a/b/a/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchChangeFinished("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ARVItemChangeAnimMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/a/a/a/a/b/a/f;->a:Lcom/a/a/a/a/b/a;

    iget-object p1, p1, Lcom/a/a/a/a/b/a/c;->b:Landroidx/recyclerview/widget/RecyclerView$w;

    if-ne p2, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p2, p1}, Lcom/a/a/a/a/b/a;->a(Landroidx/recyclerview/widget/RecyclerView$w;Z)V

    return-void
.end method

.method public bridge synthetic e(Lcom/a/a/a/a/b/a/e;Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 0

    .line 24
    check-cast p1, Lcom/a/a/a/a/b/a/c;

    invoke-virtual {p0, p1, p2}, Lcom/a/a/a/a/b/a/f;->e(Lcom/a/a/a/a/b/a/c;Landroidx/recyclerview/widget/RecyclerView$w;)V

    return-void
.end method

.method protected f(Lcom/a/a/a/a/b/a/c;Landroidx/recyclerview/widget/RecyclerView$w;)Z
    .locals 1

    .line 70
    iget-object v0, p1, Lcom/a/a/a/a/b/a/c;->b:Landroidx/recyclerview/widget/RecyclerView$w;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    iget-object v0, p1, Lcom/a/a/a/a/b/a/c;->b:Landroidx/recyclerview/widget/RecyclerView$w;

    if-ne v0, p2, :cond_1

    .line 71
    :cond_0
    iget-object v0, p1, Lcom/a/a/a/a/b/a/c;->b:Landroidx/recyclerview/widget/RecyclerView$w;

    invoke-virtual {p0, p1, v0}, Lcom/a/a/a/a/b/a/f;->b(Lcom/a/a/a/a/b/a/e;Landroidx/recyclerview/widget/RecyclerView$w;)V

    .line 72
    iget-object v0, p1, Lcom/a/a/a/a/b/a/c;->b:Landroidx/recyclerview/widget/RecyclerView$w;

    invoke-virtual {p0, p1, v0}, Lcom/a/a/a/a/b/a/f;->e(Lcom/a/a/a/a/b/a/c;Landroidx/recyclerview/widget/RecyclerView$w;)V

    .line 73
    iget-object v0, p1, Lcom/a/a/a/a/b/a/c;->b:Landroidx/recyclerview/widget/RecyclerView$w;

    invoke-virtual {p1, v0}, Lcom/a/a/a/a/b/a/c;->a(Landroidx/recyclerview/widget/RecyclerView$w;)V

    .line 76
    :cond_1
    iget-object v0, p1, Lcom/a/a/a/a/b/a/c;->a:Landroidx/recyclerview/widget/RecyclerView$w;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    iget-object v0, p1, Lcom/a/a/a/a/b/a/c;->a:Landroidx/recyclerview/widget/RecyclerView$w;

    if-ne v0, p2, :cond_3

    .line 77
    :cond_2
    iget-object p2, p1, Lcom/a/a/a/a/b/a/c;->a:Landroidx/recyclerview/widget/RecyclerView$w;

    invoke-virtual {p0, p1, p2}, Lcom/a/a/a/a/b/a/f;->b(Lcom/a/a/a/a/b/a/e;Landroidx/recyclerview/widget/RecyclerView$w;)V

    .line 78
    iget-object p2, p1, Lcom/a/a/a/a/b/a/c;->a:Landroidx/recyclerview/widget/RecyclerView$w;

    invoke-virtual {p0, p1, p2}, Lcom/a/a/a/a/b/a/f;->e(Lcom/a/a/a/a/b/a/c;Landroidx/recyclerview/widget/RecyclerView$w;)V

    .line 79
    iget-object p2, p1, Lcom/a/a/a/a/b/a/c;->a:Landroidx/recyclerview/widget/RecyclerView$w;

    invoke-virtual {p1, p2}, Lcom/a/a/a/a/b/a/c;->a(Landroidx/recyclerview/widget/RecyclerView$w;)V

    .line 82
    :cond_3
    iget-object p2, p1, Lcom/a/a/a/a/b/a/c;->b:Landroidx/recyclerview/widget/RecyclerView$w;

    if-nez p2, :cond_4

    iget-object p1, p1, Lcom/a/a/a/a/b/a/c;->a:Landroidx/recyclerview/widget/RecyclerView$w;

    if-nez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected bridge synthetic f(Lcom/a/a/a/a/b/a/e;Landroidx/recyclerview/widget/RecyclerView$w;)Z
    .locals 0

    .line 24
    check-cast p1, Lcom/a/a/a/a/b/a/c;

    invoke-virtual {p0, p1, p2}, Lcom/a/a/a/a/b/a/f;->f(Lcom/a/a/a/a/b/a/c;Landroidx/recyclerview/widget/RecyclerView$w;)Z

    move-result p1

    return p1
.end method

.method public h()J
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/a/a/a/a/b/a/f;->a:Lcom/a/a/a/a/b/a;

    invoke-virtual {v0}, Lcom/a/a/a/a/b/a;->h()J

    move-result-wide v0

    return-wide v0
.end method
