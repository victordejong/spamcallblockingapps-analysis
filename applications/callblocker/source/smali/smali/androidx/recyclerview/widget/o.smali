.class public abstract Landroidx/recyclerview/widget/o;
.super Landroidx/recyclerview/widget/RecyclerView$f;
.source "SimpleItemAnimator.java"


# instance fields
.field h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$f;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/o;->h:Z

    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView$x;Z)V
    .locals 0

    .prologue
    .line 316
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/o;->d(Landroidx/recyclerview/widget/RecyclerView$x;Z)V

    .line 317
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/o;->f(Landroidx/recyclerview/widget/RecyclerView$x;)V

    .line 318
    return-void
.end method

.method public abstract a(Landroidx/recyclerview/widget/RecyclerView$x;)Z
.end method

.method public abstract a(Landroidx/recyclerview/widget/RecyclerView$x;IIII)Z
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$x;Landroidx/recyclerview/widget/RecyclerView$f$c;Landroidx/recyclerview/widget/RecyclerView$f$c;)Z
    .locals 7

    .prologue
    .line 90
    iget v2, p2, Landroidx/recyclerview/widget/RecyclerView$f$c;->a:I

    .line 91
    iget v3, p2, Landroidx/recyclerview/widget/RecyclerView$f$c;->b:I

    .line 92
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$x;->a:Landroid/view/View;

    .line 93
    if-nez p3, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 94
    :goto_0
    if-nez p3, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    .line 95
    :goto_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$x;->q()Z

    move-result v1

    if-nez v1, :cond_3

    if-ne v2, v4, :cond_0

    if-eq v3, v5, :cond_3

    .line 97
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, v4

    .line 98
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v5

    .line 96
    invoke-virtual {v0, v4, v5, v1, v6}, Landroid/view/View;->layout(IIII)V

    move-object v0, p0

    move-object v1, p1

    .line 102
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/o;->a(Landroidx/recyclerview/widget/RecyclerView$x;IIII)Z

    move-result v0

    .line 107
    :goto_2
    return v0

    .line 93
    :cond_1
    iget v4, p3, Landroidx/recyclerview/widget/RecyclerView$f$c;->a:I

    goto :goto_0

    .line 94
    :cond_2
    iget v5, p3, Landroidx/recyclerview/widget/RecyclerView$f$c;->b:I

    goto :goto_1

    .line 107
    :cond_3
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/o;->a(Landroidx/recyclerview/widget/RecyclerView$x;)Z

    move-result v0

    goto :goto_2
.end method

.method public abstract a(Landroidx/recyclerview/widget/RecyclerView$x;Landroidx/recyclerview/widget/RecyclerView$x;IIII)Z
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$x;Landroidx/recyclerview/widget/RecyclerView$x;Landroidx/recyclerview/widget/RecyclerView$f$c;Landroidx/recyclerview/widget/RecyclerView$f$c;)Z
    .locals 7

    .prologue
    .line 151
    iget v3, p3, Landroidx/recyclerview/widget/RecyclerView$f$c;->a:I

    .line 152
    iget v4, p3, Landroidx/recyclerview/widget/RecyclerView$f$c;->b:I

    .line 154
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$x;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget v5, p3, Landroidx/recyclerview/widget/RecyclerView$f$c;->a:I

    .line 156
    iget v6, p3, Landroidx/recyclerview/widget/RecyclerView$f$c;->b:I

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 161
    invoke-virtual/range {v0 .. v6}, Landroidx/recyclerview/widget/o;->a(Landroidx/recyclerview/widget/RecyclerView$x;Landroidx/recyclerview/widget/RecyclerView$x;IIII)Z

    move-result v0

    return v0

    .line 158
    :cond_0
    iget v5, p4, Landroidx/recyclerview/widget/RecyclerView$f$c;->a:I

    .line 159
    iget v6, p4, Landroidx/recyclerview/widget/RecyclerView$f$c;->b:I

    goto :goto_0
.end method

.method public final b(Landroidx/recyclerview/widget/RecyclerView$x;Z)V
    .locals 0

    .prologue
    .line 357
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/o;->c(Landroidx/recyclerview/widget/RecyclerView$x;Z)V

    .line 358
    return-void
.end method

.method public abstract b(Landroidx/recyclerview/widget/RecyclerView$x;)Z
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$x;Landroidx/recyclerview/widget/RecyclerView$f$c;Landroidx/recyclerview/widget/RecyclerView$f$c;)Z
    .locals 6

    .prologue
    .line 114
    if-eqz p2, :cond_1

    iget v0, p2, Landroidx/recyclerview/widget/RecyclerView$f$c;->a:I

    iget v1, p3, Landroidx/recyclerview/widget/RecyclerView$f$c;->a:I

    if-ne v0, v1, :cond_0

    iget v0, p2, Landroidx/recyclerview/widget/RecyclerView$f$c;->b:I

    iget v1, p3, Landroidx/recyclerview/widget/RecyclerView$f$c;->b:I

    if-eq v0, v1, :cond_1

    .line 120
    :cond_0
    iget v2, p2, Landroidx/recyclerview/widget/RecyclerView$f$c;->a:I

    iget v3, p2, Landroidx/recyclerview/widget/RecyclerView$f$c;->b:I

    iget v4, p3, Landroidx/recyclerview/widget/RecyclerView$f$c;->a:I

    iget v5, p3, Landroidx/recyclerview/widget/RecyclerView$f$c;->b:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/o;->a(Landroidx/recyclerview/widget/RecyclerView$x;IIII)Z

    move-result v0

    .line 126
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/o;->b(Landroidx/recyclerview/widget/RecyclerView$x;)Z

    move-result v0

    goto :goto_0
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView$x;Z)V
    .locals 0

    .prologue
    .line 441
    return-void
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView$x;Landroidx/recyclerview/widget/RecyclerView$f$c;Landroidx/recyclerview/widget/RecyclerView$f$c;)Z
    .locals 6

    .prologue
    .line 133
    iget v0, p2, Landroidx/recyclerview/widget/RecyclerView$f$c;->a:I

    iget v1, p3, Landroidx/recyclerview/widget/RecyclerView$f$c;->a:I

    if-ne v0, v1, :cond_0

    iget v0, p2, Landroidx/recyclerview/widget/RecyclerView$f$c;->b:I

    iget v1, p3, Landroidx/recyclerview/widget/RecyclerView$f$c;->b:I

    if-eq v0, v1, :cond_1

    .line 138
    :cond_0
    iget v2, p2, Landroidx/recyclerview/widget/RecyclerView$f$c;->a:I

    iget v3, p2, Landroidx/recyclerview/widget/RecyclerView$f$c;->b:I

    iget v4, p3, Landroidx/recyclerview/widget/RecyclerView$f$c;->a:I

    iget v5, p3, Landroidx/recyclerview/widget/RecyclerView$f$c;->b:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/o;->a(Landroidx/recyclerview/widget/RecyclerView$x;IIII)Z

    move-result v0

    .line 142
    :goto_0
    return v0

    .line 141
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/o;->j(Landroidx/recyclerview/widget/RecyclerView$x;)V

    .line 142
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Landroidx/recyclerview/widget/RecyclerView$x;Z)V
    .locals 0

    .prologue
    .line 454
    return-void
.end method

.method public h(Landroidx/recyclerview/widget/RecyclerView$x;)Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Landroidx/recyclerview/widget/o;->h:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$x;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i(Landroidx/recyclerview/widget/RecyclerView$x;)V
    .locals 0

    .prologue
    .line 276
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/o;->p(Landroidx/recyclerview/widget/RecyclerView$x;)V

    .line 277
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/o;->f(Landroidx/recyclerview/widget/RecyclerView$x;)V

    .line 278
    return-void
.end method

.method public final j(Landroidx/recyclerview/widget/RecyclerView$x;)V
    .locals 0

    .prologue
    .line 291
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/o;->t(Landroidx/recyclerview/widget/RecyclerView$x;)V

    .line 292
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/o;->f(Landroidx/recyclerview/widget/RecyclerView$x;)V

    .line 293
    return-void
.end method

.method public final k(Landroidx/recyclerview/widget/RecyclerView$x;)V
    .locals 0

    .prologue
    .line 301
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/o;->r(Landroidx/recyclerview/widget/RecyclerView$x;)V

    .line 302
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/o;->f(Landroidx/recyclerview/widget/RecyclerView$x;)V

    .line 303
    return-void
.end method

.method public final l(Landroidx/recyclerview/widget/RecyclerView$x;)V
    .locals 0

    .prologue
    .line 326
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/o;->o(Landroidx/recyclerview/widget/RecyclerView$x;)V

    .line 327
    return-void
.end method

.method public final m(Landroidx/recyclerview/widget/RecyclerView$x;)V
    .locals 0

    .prologue
    .line 335
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/o;->s(Landroidx/recyclerview/widget/RecyclerView$x;)V

    .line 336
    return-void
.end method

.method public final n(Landroidx/recyclerview/widget/RecyclerView$x;)V
    .locals 0

    .prologue
    .line 344
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/o;->q(Landroidx/recyclerview/widget/RecyclerView$x;)V

    .line 345
    return-void
.end method

.method public o(Landroidx/recyclerview/widget/RecyclerView$x;)V
    .locals 0

    .prologue
    .line 370
    return-void
.end method

.method public p(Landroidx/recyclerview/widget/RecyclerView$x;)V
    .locals 0

    .prologue
    .line 381
    return-void
.end method

.method public q(Landroidx/recyclerview/widget/RecyclerView$x;)V
    .locals 0

    .prologue
    .line 393
    return-void
.end method

.method public r(Landroidx/recyclerview/widget/RecyclerView$x;)V
    .locals 0

    .prologue
    .line 404
    return-void
.end method

.method public s(Landroidx/recyclerview/widget/RecyclerView$x;)V
    .locals 0

    .prologue
    .line 416
    return-void
.end method

.method public t(Landroidx/recyclerview/widget/RecyclerView$x;)V
    .locals 0

    .prologue
    .line 427
    return-void
.end method
