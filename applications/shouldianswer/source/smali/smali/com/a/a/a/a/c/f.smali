.class Lcom/a/a/a/a/c/f;
.super Lcom/a/a/a/a/a/e;
.source "DraggableItemWrapperAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroidx/recyclerview/widget/RecyclerView$w;",
        ">",
        "Lcom/a/a/a/a/a/e<",
        "TVH;>;"
    }
.end annotation


# instance fields
.field private b:Lcom/a/a/a/a/c/l;

.field private c:Lcom/a/a/a/a/c/d;

.field private d:Landroidx/recyclerview/widget/RecyclerView$w;

.field private e:Lcom/a/a/a/a/c/i;

.field private f:Lcom/a/a/a/a/c/j;

.field private g:I

.field private h:I

.field private i:I

.field private j:Z


# direct methods
.method public constructor <init>(Lcom/a/a/a/a/c/l;Landroidx/recyclerview/widget/RecyclerView$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/a/a/c/l;",
            "Landroidx/recyclerview/widget/RecyclerView$a<",
            "TVH;>;)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p2}, Lcom/a/a/a/a/a/e;-><init>(Landroidx/recyclerview/widget/RecyclerView$a;)V

    const/4 p2, -0x1

    .line 51
    iput p2, p0, Lcom/a/a/a/a/c/f;->g:I

    .line 52
    iput p2, p0, Lcom/a/a/a/a/c/f;->h:I

    if-eqz p1, :cond_0

    .line 63
    iput-object p1, p0, Lcom/a/a/a/a/c/f;->b:Lcom/a/a/a/a/c/l;

    return-void

    .line 60
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "manager cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected static a(IIII)I
    .locals 1

    if-ltz p1, :cond_b

    if-gez p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-nez p3, :cond_7

    if-eq p1, p2, :cond_6

    if-ge p0, p1, :cond_1

    if-lt p0, p2, :cond_6

    :cond_1
    if-le p0, p1, :cond_2

    if-le p0, p2, :cond_2

    goto :goto_0

    :cond_2
    if-ge p2, p1, :cond_4

    if-ne p0, p2, :cond_3

    return p1

    :cond_3
    sub-int/2addr p0, v0

    return p0

    :cond_4
    if-ne p0, p2, :cond_5

    return p1

    :cond_5
    add-int/2addr p0, v0

    :cond_6
    :goto_0
    return p0

    :cond_7
    if-ne p3, v0, :cond_a

    if-ne p0, p2, :cond_8

    return p1

    :cond_8
    if-ne p0, p1, :cond_9

    return p2

    :cond_9
    return p0

    .line 173
    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "unexpected state"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    :goto_1
    return p0
.end method

.method private static f(Landroidx/recyclerview/widget/RecyclerView$w;I)V
    .locals 2

    .line 404
    instance-of v0, p0, Lcom/a/a/a/a/c/e;

    if-nez v0, :cond_0

    return-void

    .line 408
    :cond_0
    check-cast p0, Lcom/a/a/a/a/c/e;

    .line 410
    invoke-interface {p0}, Lcom/a/a/a/a/c/e;->a()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    xor-int/2addr v0, p1

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    :cond_1
    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    .line 418
    :cond_2
    invoke-interface {p0, p1}, Lcom/a/a/a/a/c/e;->a(I)V

    return-void
.end method

.method private h()Z
    .locals 1

    .line 227
    invoke-virtual {p0}, Lcom/a/a/a/a/c/f;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/a/a/a/a/c/f;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private i()V
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/a/a/a/a/c/f;->b:Lcom/a/a/a/a/c/l;

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v0}, Lcom/a/a/a/a/c/l;->d()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected a(II)V
    .locals 1

    .line 188
    invoke-direct {p0}, Lcom/a/a/a/a/c/f;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    invoke-direct {p0}, Lcom/a/a/a/a/c/f;->i()V

    goto :goto_0

    .line 191
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/a/a/a/a/a/e;->a(II)V

    :goto_0
    return-void
.end method

.method protected a(III)V
    .locals 1

    .line 215
    invoke-direct {p0}, Lcom/a/a/a/a/c/f;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    invoke-direct {p0}, Lcom/a/a/a/a/c/f;->i()V

    goto :goto_0

    .line 218
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/a/a/a/a/a/e;->a(III)V

    :goto_0
    return-void
.end method

.method a(IIZ)V
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/a/a/a/a/c/f;->c:Lcom/a/a/a/a/c/d;

    const/4 v1, -0x1

    .line 284
    iput v1, p0, Lcom/a/a/a/a/c/f;->g:I

    .line 285
    iput v1, p0, Lcom/a/a/a/a/c/f;->h:I

    const/4 v1, 0x0

    .line 286
    iput-object v1, p0, Lcom/a/a/a/a/c/f;->f:Lcom/a/a/a/a/c/j;

    .line 287
    iput-object v1, p0, Lcom/a/a/a/a/c/f;->e:Lcom/a/a/a/a/c/i;

    .line 288
    iput-object v1, p0, Lcom/a/a/a/a/c/f;->d:Landroidx/recyclerview/widget/RecyclerView$w;

    .line 289
    iput-object v1, p0, Lcom/a/a/a/a/c/f;->c:Lcom/a/a/a/a/c/d;

    if-eqz p3, :cond_0

    if-eq p2, p1, :cond_0

    .line 293
    invoke-interface {v0, p1, p2}, Lcom/a/a/a/a/c/d;->a(II)V

    .line 296
    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/a/a/a/a/c/d;->a(IIZ)V

    return-void
.end method

.method a(Lcom/a/a/a/a/c/i;Landroidx/recyclerview/widget/RecyclerView$w;Lcom/a/a/a/a/c/j;II)V
    .locals 4

    .line 246
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$w;->getItemId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 250
    const-class v0, Lcom/a/a/a/a/c/d;

    invoke-static {p0, v0, p4}, Lcom/a/a/a/a/d/c;->a(Landroidx/recyclerview/widget/RecyclerView$a;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/a/c/d;

    iput-object v0, p0, Lcom/a/a/a/a/c/f;->c:Lcom/a/a/a/a/c/d;

    .line 252
    iget-object v0, p0, Lcom/a/a/a/a/c/f;->c:Lcom/a/a/a/a/c/d;

    if-eqz v0, :cond_0

    .line 256
    iput p4, p0, Lcom/a/a/a/a/c/f;->h:I

    iput p4, p0, Lcom/a/a/a/a/c/f;->g:I

    .line 257
    iput-object p1, p0, Lcom/a/a/a/a/c/f;->e:Lcom/a/a/a/a/c/i;

    .line 258
    iput-object p2, p0, Lcom/a/a/a/a/c/f;->d:Landroidx/recyclerview/widget/RecyclerView$w;

    .line 259
    iput-object p3, p0, Lcom/a/a/a/a/c/f;->f:Lcom/a/a/a/a/c/j;

    .line 260
    iput p5, p0, Lcom/a/a/a/a/c/f;->i:I

    return-void

    .line 253
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "DraggableItemAdapter not found!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 247
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "dragging target must provides valid ID"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a(Landroidx/recyclerview/widget/RecyclerView$w;III)Z
    .locals 1

    .line 317
    const-class v0, Lcom/a/a/a/a/c/d;

    invoke-static {p0, v0, p2}, Lcom/a/a/a/a/d/c;->a(Landroidx/recyclerview/widget/RecyclerView$a;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/a/c/d;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 323
    :cond_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/a/a/a/a/c/d;->a(Landroidx/recyclerview/widget/RecyclerView$w;III)Z

    move-result p1

    return p1
.end method

.method protected b(II)V
    .locals 1

    .line 197
    invoke-direct {p0}, Lcom/a/a/a/a/c/f;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-direct {p0}, Lcom/a/a/a/a/c/f;->i()V

    goto :goto_0

    .line 200
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/a/a/a/a/a/e;->b(II)V

    :goto_0
    return-void
.end method

.method b(III)V
    .locals 3

    .line 365
    iget v0, p0, Lcom/a/a/a/a/c/f;->g:I

    iget v1, p0, Lcom/a/a/a/a/c/f;->h:I

    iget v2, p0, Lcom/a/a/a/a/c/f;->i:I

    invoke-static {p1, v0, v1, v2}, Lcom/a/a/a/a/c/f;->a(IIII)I

    move-result v0

    .line 368
    iget v1, p0, Lcom/a/a/a/a/c/f;->g:I

    if-ne v0, v1, :cond_1

    .line 378
    iput p2, p0, Lcom/a/a/a/a/c/f;->h:I

    .line 384
    iget v0, p0, Lcom/a/a/a/a/c/f;->i:I

    if-nez v0, :cond_0

    invoke-static {p3}, Lcom/a/a/a/a/d/a;->b(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 385
    invoke-virtual {p0, p1, p2}, Lcom/a/a/a/a/c/f;->notifyItemMoved(II)V

    goto :goto_0

    .line 387
    :cond_0
    invoke-virtual {p0}, Lcom/a/a/a/a/c/f;->notifyDataSetChanged()V

    :goto_0
    return-void

    .line 369
    :cond_1
    new-instance p3, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMoveItem() - may be a bug or has duplicate IDs  --- mDraggingItemInitialPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/a/a/a/a/c/f;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mDraggingItemCurrentPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/a/a/a/a/c/f;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", origFromPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", fromPosition = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", toPosition = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method protected c()V
    .locals 1

    .line 179
    invoke-direct {p0}, Lcom/a/a/a/a/c/f;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-direct {p0}, Lcom/a/a/a/a/c/f;->i()V

    goto :goto_0

    .line 182
    :cond_0
    invoke-super {p0}, Lcom/a/a/a/a/a/e;->c()V

    :goto_0
    return-void
.end method

.method protected c(II)V
    .locals 1

    .line 206
    invoke-direct {p0}, Lcom/a/a/a/a/c/f;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    invoke-direct {p0}, Lcom/a/a/a/a/c/f;->i()V

    goto :goto_0

    .line 209
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/a/a/a/a/a/e;->c(II)V

    :goto_0
    return-void
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView$w;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .line 301
    invoke-virtual {p0}, Lcom/a/a/a/a/c/f;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/a/a/a/a/c/f;->b:Lcom/a/a/a/a/c/l;

    invoke-virtual {v0, p1}, Lcom/a/a/a/a/c/l;->a(Landroidx/recyclerview/widget/RecyclerView$w;)V

    .line 303
    iget-object v0, p0, Lcom/a/a/a/a/c/f;->b:Lcom/a/a/a/a/c/l;

    invoke-virtual {v0}, Lcom/a/a/a/a/c/l;->g()Landroidx/recyclerview/widget/RecyclerView$w;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/a/c/f;->d:Landroidx/recyclerview/widget/RecyclerView$w;

    .line 306
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/a/a/a/a/a/e;->c(Landroidx/recyclerview/widget/RecyclerView$w;I)V

    return-void
.end method

.method d()V
    .locals 2

    const/4 v0, 0x1

    .line 265
    iput-boolean v0, p0, Lcom/a/a/a/a/c/f;->j:Z

    .line 266
    iget-object v0, p0, Lcom/a/a/a/a/c/f;->c:Lcom/a/a/a/a/c/d;

    invoke-virtual {p0}, Lcom/a/a/a/a/c/f;->f()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/a/a/a/a/c/d;->a(I)V

    const/4 v0, 0x0

    .line 267
    iput-boolean v0, p0, Lcom/a/a/a/a/c/f;->j:Z

    return-void
.end method

.method d(II)Z
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/a/a/a/a/c/f;->c:Lcom/a/a/a/a/c/d;

    invoke-interface {v0, p1, p2}, Lcom/a/a/a/a/c/d;->b(II)Z

    move-result p1

    return p1
.end method

.method e(Landroidx/recyclerview/widget/RecyclerView$w;I)Lcom/a/a/a/a/c/j;
    .locals 1

    .line 345
    const-class v0, Lcom/a/a/a/a/c/d;

    invoke-static {p0, v0, p2}, Lcom/a/a/a/a/d/c;->a(Landroidx/recyclerview/widget/RecyclerView$a;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/a/c/d;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 351
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/a/a/a/a/c/d;->a(Landroidx/recyclerview/widget/RecyclerView$w;I)Lcom/a/a/a/a/c/j;

    move-result-object p1

    return-object p1
.end method

.method protected e()Z
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/a/a/a/a/c/f;->e:Lcom/a/a/a/a/c/i;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method f()I
    .locals 1

    .line 396
    iget v0, p0, Lcom/a/a/a/a/c/f;->g:I

    return v0
.end method

.method g()I
    .locals 1

    .line 400
    iget v0, p0, Lcom/a/a/a/a/c/f;->h:I

    return v0
.end method

.method public getItemId(I)J
    .locals 3

    .line 122
    invoke-virtual {p0}, Lcom/a/a/a/a/c/f;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget v0, p0, Lcom/a/a/a/a/c/f;->g:I

    iget v1, p0, Lcom/a/a/a/a/c/f;->h:I

    iget v2, p0, Lcom/a/a/a/a/c/f;->i:I

    invoke-static {p1, v0, v1, v2}, Lcom/a/a/a/a/c/f;->a(IIII)I

    move-result p1

    .line 125
    invoke-super {p0, p1}, Lcom/a/a/a/a/a/e;->getItemId(I)J

    move-result-wide v0

    return-wide v0

    .line 127
    :cond_0
    invoke-super {p0, p1}, Lcom/a/a/a/a/a/e;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3

    .line 133
    invoke-virtual {p0}, Lcom/a/a/a/a/c/f;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget v0, p0, Lcom/a/a/a/a/c/f;->g:I

    iget v1, p0, Lcom/a/a/a/a/c/f;->h:I

    iget v2, p0, Lcom/a/a/a/a/c/f;->i:I

    invoke-static {p1, v0, v1, v2}, Lcom/a/a/a/a/c/f;->a(IIII)I

    move-result p1

    .line 136
    invoke-super {p0, p1}, Lcom/a/a/a/a/a/e;->getItemViewType(I)I

    move-result p1

    return p1

    .line 138
    :cond_0
    invoke-super {p0, p1}, Lcom/a/a/a/a/a/e;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$w;ILjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 87
    invoke-virtual {p0}, Lcom/a/a/a/a/c/f;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 88
    iget-object v0, p0, Lcom/a/a/a/a/c/f;->e:Lcom/a/a/a/a/c/i;

    iget-wide v0, v0, Lcom/a/a/a/a/c/i;->c:J

    .line 89
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$w;->getItemId()J

    move-result-wide v2

    .line 91
    iget v4, p0, Lcom/a/a/a/a/c/f;->g:I

    iget v5, p0, Lcom/a/a/a/a/c/f;->h:I

    iget v6, p0, Lcom/a/a/a/a/c/f;->i:I

    invoke-static {p2, v4, v5, v6}, Lcom/a/a/a/a/c/f;->a(IIII)I

    move-result v4

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    .line 94
    iget-object v1, p0, Lcom/a/a/a/a/c/f;->d:Landroidx/recyclerview/widget/RecyclerView$w;

    if-eq p1, v1, :cond_0

    const-string v1, "ARVDraggableWrapper"

    const-string v2, "a new view holder object for the currently dragging item is assigned"

    .line 96
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iput-object p1, p0, Lcom/a/a/a/a/c/f;->d:Landroidx/recyclerview/widget/RecyclerView$w;

    .line 100
    iget-object v1, p0, Lcom/a/a/a/a/c/f;->b:Lcom/a/a/a/a/c/l;

    invoke-virtual {v1, p1}, Lcom/a/a/a/a/c/l;->b(Landroidx/recyclerview/widget/RecyclerView$w;)V

    :cond_0
    const/4 v1, 0x1

    if-nez v0, :cond_1

    const/4 v1, 0x3

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/a/a/a/a/c/f;->f:Lcom/a/a/a/a/c/j;

    invoke-virtual {v0, p2}, Lcom/a/a/a/a/c/j;->a(I)Z

    move-result p2

    if-eqz p2, :cond_2

    or-int/lit8 v1, v1, 0x4

    .line 112
    :cond_2
    invoke-static {p1, v1}, Lcom/a/a/a/a/c/f;->f(Landroidx/recyclerview/widget/RecyclerView$w;I)V

    .line 113
    invoke-super {p0, p1, v4, p3}, Lcom/a/a/a/a/a/e;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$w;ILjava/util/List;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 115
    invoke-static {p1, v0}, Lcom/a/a/a/a/c/f;->f(Landroidx/recyclerview/widget/RecyclerView$w;I)V

    .line 116
    invoke-super {p0, p1, p2, p3}, Lcom/a/a/a/a/a/e;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$w;ILjava/util/List;)V

    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    .line 76
    invoke-super {p0, p1, p2}, Lcom/a/a/a/a/a/e;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$w;

    move-result-object p1

    .line 78
    instance-of p2, p1, Lcom/a/a/a/a/c/e;

    if-eqz p2, :cond_0

    .line 79
    move-object p2, p1

    check-cast p2, Lcom/a/a/a/a/c/e;

    const/4 v0, -0x1

    invoke-interface {p2, v0}, Lcom/a/a/a/a/c/e;->a(I)V

    :cond_0
    return-object p1
.end method
