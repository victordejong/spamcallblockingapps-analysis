.class public Lcom/a/a/a/a/b/d$c;
.super Lcom/a/a/a/a/b/a/g;
.source "RefactoredDefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/a/a/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "c"
.end annotation


# direct methods
.method public constructor <init>(Lcom/a/a/a/a/b/a;)V
    .locals 0

    .line 250
    invoke-direct {p0, p1}, Lcom/a/a/a/a/b/a/g;-><init>(Lcom/a/a/a/a/b/a;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/a/a/a/a/b/a/e;)V
    .locals 0

    .line 247
    check-cast p1, Lcom/a/a/a/a/b/a/i;

    invoke-virtual {p0, p1}, Lcom/a/a/a/a/b/d$c;->a(Lcom/a/a/a/a/b/a/i;)V

    return-void
.end method

.method protected synthetic a(Lcom/a/a/a/a/b/a/e;Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 0

    .line 247
    check-cast p1, Lcom/a/a/a/a/b/a/i;

    invoke-virtual {p0, p1, p2}, Lcom/a/a/a/a/b/d$c;->c(Lcom/a/a/a/a/b/a/i;Landroidx/recyclerview/widget/RecyclerView$w;)V

    return-void
.end method

.method protected a(Lcom/a/a/a/a/b/a/i;)V
    .locals 4

    .line 255
    iget-object v0, p1, Lcom/a/a/a/a/b/a/i;->a:Landroidx/recyclerview/widget/RecyclerView$w;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    .line 256
    iget v1, p1, Lcom/a/a/a/a/b/a/i;->d:I

    iget v2, p1, Lcom/a/a/a/a/b/a/i;->b:I

    sub-int/2addr v1, v2

    .line 257
    iget v2, p1, Lcom/a/a/a/a/b/a/i;->e:I

    iget v3, p1, Lcom/a/a/a/a/b/a/i;->c:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 260
    invoke-static {v0}, Landroidx/core/g/u;->n(Landroid/view/View;)Landroidx/core/g/y;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroidx/core/g/y;->b(F)Landroidx/core/g/y;

    :cond_0
    if-eqz v2, :cond_1

    .line 263
    invoke-static {v0}, Landroidx/core/g/u;->n(Landroid/view/View;)Landroidx/core/g/y;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroidx/core/g/y;->c(F)Landroidx/core/g/y;

    .line 266
    :cond_1
    invoke-static {v0}, Landroidx/core/g/u;->n(Landroid/view/View;)Landroidx/core/g/y;

    move-result-object v0

    .line 268
    invoke-virtual {p0}, Lcom/a/a/a/a/b/d$c;->h()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/core/g/y;->a(J)Landroidx/core/g/y;

    .line 270
    iget-object v1, p1, Lcom/a/a/a/a/b/a/i;->a:Landroidx/recyclerview/widget/RecyclerView$w;

    invoke-virtual {p0, p1, v1, v0}, Lcom/a/a/a/a/b/d$c;->a(Lcom/a/a/a/a/b/a/e;Landroidx/recyclerview/widget/RecyclerView$w;Landroidx/core/g/y;)V

    return-void
.end method

.method protected a(Lcom/a/a/a/a/b/a/i;Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 0

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$w;IIII)Z
    .locals 8

    .line 307
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    int-to-float p2, p2

    .line 309
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    add-float/2addr p2, v1

    float-to-int v3, p2

    int-to-float p2, p3

    .line 310
    iget-object p3, p1, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getTranslationY()F

    move-result p3

    add-float/2addr p2, p3

    float-to-int v4, p2

    .line 312
    invoke-virtual {p0, p1}, Lcom/a/a/a/a/b/d$c;->f(Landroidx/recyclerview/widget/RecyclerView$w;)V

    sub-int p2, p4, v3

    sub-int p3, p5, v4

    .line 317
    new-instance v7, Lcom/a/a/a/a/b/a/i;

    move-object v1, v7

    move-object v2, p1

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/a/a/a/a/b/a/i;-><init>(Landroidx/recyclerview/widget/RecyclerView$w;IIII)V

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 320
    iget-object p1, v7, Lcom/a/a/a/a/b/a/i;->a:Landroidx/recyclerview/widget/RecyclerView$w;

    invoke-virtual {p0, v7, p1}, Lcom/a/a/a/a/b/d$c;->e(Lcom/a/a/a/a/b/a/i;Landroidx/recyclerview/widget/RecyclerView$w;)V

    .line 321
    iget-object p1, v7, Lcom/a/a/a/a/b/a/i;->a:Landroidx/recyclerview/widget/RecyclerView$w;

    invoke-virtual {v7, p1}, Lcom/a/a/a/a/b/a/i;->a(Landroidx/recyclerview/widget/RecyclerView$w;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    if-eqz p2, :cond_1

    neg-int p1, p2

    int-to-float p1, p1

    .line 326
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    :cond_1
    if-eqz p3, :cond_2

    neg-int p1, p3

    int-to-float p1, p1

    .line 329
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 332
    :cond_2
    invoke-virtual {p0, v7}, Lcom/a/a/a/a/b/d$c;->c(Lcom/a/a/a/a/b/a/e;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected bridge synthetic b(Lcom/a/a/a/a/b/a/e;Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 0

    .line 247
    check-cast p1, Lcom/a/a/a/a/b/a/i;

    invoke-virtual {p0, p1, p2}, Lcom/a/a/a/a/b/d$c;->b(Lcom/a/a/a/a/b/a/i;Landroidx/recyclerview/widget/RecyclerView$w;)V

    return-void
.end method

.method protected b(Lcom/a/a/a/a/b/a/i;Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 0

    .line 279
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    const/4 p2, 0x0

    .line 280
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 281
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method protected synthetic c(Lcom/a/a/a/a/b/a/e;Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 0

    .line 247
    check-cast p1, Lcom/a/a/a/a/b/a/i;

    invoke-virtual {p0, p1, p2}, Lcom/a/a/a/a/b/d$c;->a(Lcom/a/a/a/a/b/a/i;Landroidx/recyclerview/widget/RecyclerView$w;)V

    return-void
.end method

.method protected c(Lcom/a/a/a/a/b/a/i;Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 3

    .line 286
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    .line 287
    iget v0, p1, Lcom/a/a/a/a/b/a/i;->d:I

    iget v1, p1, Lcom/a/a/a/a/b/a/i;->b:I

    sub-int/2addr v0, v1

    .line 288
    iget v1, p1, Lcom/a/a/a/a/b/a/i;->e:I

    iget p1, p1, Lcom/a/a/a/a/b/a/i;->c:I

    sub-int/2addr v1, p1

    const/4 p1, 0x0

    if-eqz v0, :cond_0

    .line 291
    invoke-static {p2}, Landroidx/core/g/u;->n(Landroid/view/View;)Landroidx/core/g/y;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/core/g/y;->b(F)Landroidx/core/g/y;

    :cond_0
    if-eqz v1, :cond_1

    .line 294
    invoke-static {p2}, Landroidx/core/g/u;->n(Landroid/view/View;)Landroidx/core/g/y;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/core/g/y;->c(F)Landroidx/core/g/y;

    :cond_1
    if-eqz v0, :cond_2

    .line 298
    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationX(F)V

    :cond_2
    if-eqz v1, :cond_3

    .line 301
    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_3
    return-void
.end method
