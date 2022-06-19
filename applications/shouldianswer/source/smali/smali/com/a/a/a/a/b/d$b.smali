.class public Lcom/a/a/a/a/b/d$b;
.super Lcom/a/a/a/a/b/a/f;
.source "RefactoredDefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/a/a/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Lcom/a/a/a/a/b/a;)V
    .locals 0

    .line 166
    invoke-direct {p0, p1}, Lcom/a/a/a/a/b/a/f;-><init>(Lcom/a/a/a/a/b/a;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/a/a/a/a/b/a/c;)V
    .locals 3

    .line 171
    iget-object v0, p1, Lcom/a/a/a/a/b/a/c;->b:Landroidx/recyclerview/widget/RecyclerView$w;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/g/u;->n(Landroid/view/View;)Landroidx/core/g/y;

    move-result-object v0

    .line 173
    invoke-virtual {p0}, Lcom/a/a/a/a/b/d$b;->h()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/core/g/y;->a(J)Landroidx/core/g/y;

    .line 174
    iget v1, p1, Lcom/a/a/a/a/b/a/c;->e:I

    iget v2, p1, Lcom/a/a/a/a/b/a/c;->c:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroidx/core/g/y;->b(F)Landroidx/core/g/y;

    .line 175
    iget v1, p1, Lcom/a/a/a/a/b/a/c;->f:I

    iget v2, p1, Lcom/a/a/a/a/b/a/c;->d:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroidx/core/g/y;->c(F)Landroidx/core/g/y;

    const/4 v1, 0x0

    .line 176
    invoke-virtual {v0, v1}, Landroidx/core/g/y;->a(F)Landroidx/core/g/y;

    .line 178
    iget-object v1, p1, Lcom/a/a/a/a/b/a/c;->b:Landroidx/recyclerview/widget/RecyclerView$w;

    invoke-virtual {p0, p1, v1, v0}, Lcom/a/a/a/a/b/d$b;->a(Lcom/a/a/a/a/b/a/e;Landroidx/recyclerview/widget/RecyclerView$w;Landroidx/core/g/y;)V

    return-void
.end method

.method protected a(Lcom/a/a/a/a/b/a/c;Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 0

    .line 196
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    const/high16 p2, 0x3f800000    # 1.0f

    .line 197
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    const/4 p2, 0x0

    .line 198
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 199
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method protected synthetic a(Lcom/a/a/a/a/b/a/e;Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 0

    .line 164
    check-cast p1, Lcom/a/a/a/a/b/a/c;

    invoke-virtual {p0, p1, p2}, Lcom/a/a/a/a/b/d$b;->c(Lcom/a/a/a/a/b/a/c;Landroidx/recyclerview/widget/RecyclerView$w;)V

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$w;Landroidx/recyclerview/widget/RecyclerView$w;IIII)Z
    .locals 9

    .line 216
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    .line 217
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    .line 218
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    .line 220
    invoke-virtual {p0, p1}, Lcom/a/a/a/a/b/d$b;->f(Landroidx/recyclerview/widget/RecyclerView$w;)V

    sub-int v3, p5, p3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    float-to-int v3, v3

    sub-int v4, p6, p4

    int-to-float v4, v4

    sub-float/2addr v4, v1

    float-to-int v4, v4

    .line 226
    iget-object v5, p1, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 227
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 228
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    if-eqz p2, :cond_0

    .line 232
    invoke-virtual {p0, p2}, Lcom/a/a/a/a/b/d$b;->f(Landroidx/recyclerview/widget/RecyclerView$w;)V

    .line 233
    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    neg-int v1, v3

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 234
    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    neg-int v1, v4

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 235
    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 238
    :cond_0
    new-instance v0, Lcom/a/a/a/a/b/a/c;

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/a/a/a/a/b/a/c;-><init>(Landroidx/recyclerview/widget/RecyclerView$w;Landroidx/recyclerview/widget/RecyclerView$w;IIII)V

    invoke-virtual {p0, v0}, Lcom/a/a/a/a/b/d$b;->c(Lcom/a/a/a/a/b/a/e;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected b(Lcom/a/a/a/a/b/a/c;)V
    .locals 3

    .line 184
    iget-object v0, p1, Lcom/a/a/a/a/b/a/c;->a:Landroidx/recyclerview/widget/RecyclerView$w;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/g/u;->n(Landroid/view/View;)Landroidx/core/g/y;

    move-result-object v0

    const/4 v1, 0x0

    .line 186
    invoke-virtual {v0, v1}, Landroidx/core/g/y;->b(F)Landroidx/core/g/y;

    .line 187
    invoke-virtual {v0, v1}, Landroidx/core/g/y;->c(F)Landroidx/core/g/y;

    .line 188
    invoke-virtual {p0}, Lcom/a/a/a/a/b/d$b;->h()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/core/g/y;->a(J)Landroidx/core/g/y;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 189
    invoke-virtual {v0, v1}, Landroidx/core/g/y;->a(F)Landroidx/core/g/y;

    .line 191
    iget-object v1, p1, Lcom/a/a/a/a/b/a/c;->a:Landroidx/recyclerview/widget/RecyclerView$w;

    invoke-virtual {p0, p1, v1, v0}, Lcom/a/a/a/a/b/d$b;->a(Lcom/a/a/a/a/b/a/e;Landroidx/recyclerview/widget/RecyclerView$w;Landroidx/core/g/y;)V

    return-void
.end method

.method protected b(Lcom/a/a/a/a/b/a/c;Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 0

    .line 204
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    const/high16 p2, 0x3f800000    # 1.0f

    .line 205
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    const/4 p2, 0x0

    .line 206
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 207
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method protected bridge synthetic b(Lcom/a/a/a/a/b/a/e;Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 0

    .line 164
    check-cast p1, Lcom/a/a/a/a/b/a/c;

    invoke-virtual {p0, p1, p2}, Lcom/a/a/a/a/b/d$b;->b(Lcom/a/a/a/a/b/a/c;Landroidx/recyclerview/widget/RecyclerView$w;)V

    return-void
.end method

.method protected c(Lcom/a/a/a/a/b/a/c;Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 0

    return-void
.end method

.method protected synthetic c(Lcom/a/a/a/a/b/a/e;Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 0

    .line 164
    check-cast p1, Lcom/a/a/a/a/b/a/c;

    invoke-virtual {p0, p1, p2}, Lcom/a/a/a/a/b/d$b;->a(Lcom/a/a/a/a/b/a/c;Landroidx/recyclerview/widget/RecyclerView$w;)V

    return-void
.end method
