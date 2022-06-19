.class public Lcom/a/a/a/a/b/d$a;
.super Lcom/a/a/a/a/b/a/d;
.source "RefactoredDefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/a/a/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lcom/a/a/a/a/b/a;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/a/a/a/a/b/a/d;-><init>(Lcom/a/a/a/a/b/a;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/a/a/a/a/b/a/a;)V
    .locals 3

    .line 83
    iget-object v0, p1, Lcom/a/a/a/a/b/a/a;->a:Landroidx/recyclerview/widget/RecyclerView$w;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/g/u;->n(Landroid/view/View;)Landroidx/core/g/y;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 85
    invoke-virtual {v0, v1}, Landroidx/core/g/y;->a(F)Landroidx/core/g/y;

    .line 86
    invoke-virtual {p0}, Lcom/a/a/a/a/b/d$a;->h()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/core/g/y;->a(J)Landroidx/core/g/y;

    .line 88
    iget-object v1, p1, Lcom/a/a/a/a/b/a/a;->a:Landroidx/recyclerview/widget/RecyclerView$w;

    invoke-virtual {p0, p1, v1, v0}, Lcom/a/a/a/a/b/d$a;->a(Lcom/a/a/a/a/b/a/e;Landroidx/recyclerview/widget/RecyclerView$w;Landroidx/core/g/y;)V

    return-void
.end method

.method protected a(Lcom/a/a/a/a/b/a/a;Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic a(Lcom/a/a/a/a/b/a/e;)V
    .locals 0

    .line 75
    check-cast p1, Lcom/a/a/a/a/b/a/a;

    invoke-virtual {p0, p1}, Lcom/a/a/a/a/b/d$a;->a(Lcom/a/a/a/a/b/a/a;)V

    return-void
.end method

.method protected synthetic a(Lcom/a/a/a/a/b/a/e;Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 0

    .line 75
    check-cast p1, Lcom/a/a/a/a/b/a/a;

    invoke-virtual {p0, p1, p2}, Lcom/a/a/a/a/b/d$a;->c(Lcom/a/a/a/a/b/a/a;Landroidx/recyclerview/widget/RecyclerView$w;)V

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$w;)Z
    .locals 2

    .line 107
    invoke-virtual {p0, p1}, Lcom/a/a/a/a/b/d$a;->f(Landroidx/recyclerview/widget/RecyclerView$w;)V

    .line 109
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 111
    new-instance v0, Lcom/a/a/a/a/b/a/a;

    invoke-direct {v0, p1}, Lcom/a/a/a/a/b/a/a;-><init>(Landroidx/recyclerview/widget/RecyclerView$w;)V

    invoke-virtual {p0, v0}, Lcom/a/a/a/a/b/d$a;->c(Lcom/a/a/a/a/b/a/e;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected b(Lcom/a/a/a/a/b/a/a;Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 0

    .line 97
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method protected bridge synthetic b(Lcom/a/a/a/a/b/a/e;Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 0

    .line 75
    check-cast p1, Lcom/a/a/a/a/b/a/a;

    invoke-virtual {p0, p1, p2}, Lcom/a/a/a/a/b/d$a;->b(Lcom/a/a/a/a/b/a/a;Landroidx/recyclerview/widget/RecyclerView$w;)V

    return-void
.end method

.method protected c(Lcom/a/a/a/a/b/a/a;Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 0

    .line 102
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method protected synthetic c(Lcom/a/a/a/a/b/a/e;Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 0

    .line 75
    check-cast p1, Lcom/a/a/a/a/b/a/a;

    invoke-virtual {p0, p1, p2}, Lcom/a/a/a/a/b/d$a;->a(Lcom/a/a/a/a/b/a/a;Landroidx/recyclerview/widget/RecyclerView$w;)V

    return-void
.end method
