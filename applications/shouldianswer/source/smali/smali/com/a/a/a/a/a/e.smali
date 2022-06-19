.class public Lcom/a/a/a/a/a/e;
.super Landroidx/recyclerview/widget/RecyclerView$a;
.source "SimpleWrapperAdapter.java"

# interfaces
.implements Lcom/a/a/a/a/a/c$a;
.implements Lcom/a/a/a/a/a/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroidx/recyclerview/widget/RecyclerView$w;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$a<",
        "TVH;>;",
        "Lcom/a/a/a/a/a/c$a;",
        "Lcom/a/a/a/a/a/h<",
        "TVH;>;"
    }
.end annotation


# static fields
.field protected static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Landroidx/recyclerview/widget/RecyclerView$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/RecyclerView$a<",
            "TVH;>;"
        }
    .end annotation
.end field

.field private c:Lcom/a/a/a/a/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/a/a/a/a/a/e;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$a<",
            "TVH;>;)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/a/a/a/a/a/e;->b:Landroidx/recyclerview/widget/RecyclerView$a;

    .line 51
    new-instance p1, Lcom/a/a/a/a/a/c;

    iget-object v0, p0, Lcom/a/a/a/a/a/e;->b:Landroidx/recyclerview/widget/RecyclerView$a;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Lcom/a/a/a/a/a/c;-><init>(Lcom/a/a/a/a/a/c$a;Landroidx/recyclerview/widget/RecyclerView$a;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/a/a/a/a/a/e;->c:Lcom/a/a/a/a/a/c;

    .line 52
    iget-object p1, p0, Lcom/a/a/a/a/a/e;->b:Landroidx/recyclerview/widget/RecyclerView$a;

    iget-object v0, p0, Lcom/a/a/a/a/a/e;->c:Lcom/a/a/a/a/a/c;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$a;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$c;)V

    .line 54
    iget-object p1, p0, Lcom/a/a/a/a/a/e;->b:Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$a;->hasStableIds()Z

    move-result p1

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$a;->setHasStableIds(Z)V

    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/a/a/a/b;I)I
    .locals 1

    .line 270
    iget-object p1, p1, Lcom/a/a/a/a/a/b;->a:Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {p0}, Lcom/a/a/a/a/a/e;->b()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return p2

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method protected a(II)V
    .locals 0

    .line 287
    invoke-virtual {p0, p1, p2}, Lcom/a/a/a/a/a/e;->notifyItemRangeChanged(II)V

    return-void
.end method

.method protected a(III)V
    .locals 1

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 307
    invoke-virtual {p0, p1, p2}, Lcom/a/a/a/a/a/e;->notifyItemMoved(II)V

    return-void

    .line 304
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "itemCount should be always 1  (actual: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected a(IILjava/lang/Object;)V
    .locals 0

    .line 291
    invoke-virtual {p0, p1, p2, p3}, Lcom/a/a/a/a/a/e;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public final a(Landroidx/recyclerview/widget/RecyclerView$a;Ljava/lang/Object;)V
    .locals 0

    .line 316
    invoke-virtual {p0}, Lcom/a/a/a/a/a/e;->c()V

    return-void
.end method

.method public final a(Landroidx/recyclerview/widget/RecyclerView$a;Ljava/lang/Object;II)V
    .locals 0

    .line 325
    invoke-virtual {p0, p3, p4}, Lcom/a/a/a/a/a/e;->a(II)V

    return-void
.end method

.method public final a(Landroidx/recyclerview/widget/RecyclerView$a;Ljava/lang/Object;III)V
    .locals 0

    .line 361
    invoke-virtual {p0, p3, p4, p5}, Lcom/a/a/a/a/a/e;->a(III)V

    return-void
.end method

.method public final a(Landroidx/recyclerview/widget/RecyclerView$a;Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 0

    .line 334
    invoke-virtual {p0, p3, p4, p5}, Lcom/a/a/a/a/a/e;->a(IILjava/lang/Object;)V

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$w;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .line 129
    invoke-virtual {p0}, Lcom/a/a/a/a/a/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/a/a/a/a/a/e;->b:Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-static {v0, p1, p2}, Lcom/a/a/a/a/d/b;->c(Landroidx/recyclerview/widget/RecyclerView$a;Landroidx/recyclerview/widget/RecyclerView$w;I)V

    :cond_0
    return-void
.end method

.method public a(Lcom/a/a/a/a/a/f;I)V
    .locals 1

    .line 261
    invoke-virtual {p0}, Lcom/a/a/a/a/a/e;->b()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v0

    iput-object v0, p1, Lcom/a/a/a/a/a/f;->a:Landroidx/recyclerview/widget/RecyclerView$a;

    .line 262
    iput p2, p1, Lcom/a/a/a/a/a/f;->c:I

    return-void
.end method

.method public a()Z
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/a/a/a/a/a/e;->b:Landroidx/recyclerview/widget/RecyclerView$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()Landroidx/recyclerview/widget/RecyclerView$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/recyclerview/widget/RecyclerView$a<",
            "TVH;>;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/a/a/a/a/a/e;->b:Landroidx/recyclerview/widget/RecyclerView$a;

    return-object v0
.end method

.method protected b(II)V
    .locals 0

    .line 295
    invoke-virtual {p0, p1, p2}, Lcom/a/a/a/a/a/e;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public final b(Landroidx/recyclerview/widget/RecyclerView$a;Ljava/lang/Object;II)V
    .locals 0

    .line 343
    invoke-virtual {p0, p3, p4}, Lcom/a/a/a/a/a/e;->b(II)V

    return-void
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$w;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .line 147
    invoke-virtual {p0}, Lcom/a/a/a/a/a/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/a/a/a/a/a/e;->b:Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-static {v0, p1, p2}, Lcom/a/a/a/a/d/b;->d(Landroidx/recyclerview/widget/RecyclerView$a;Landroidx/recyclerview/widget/RecyclerView$w;I)V

    :cond_0
    return-void
.end method

.method protected c()V
    .locals 0

    .line 283
    invoke-virtual {p0}, Lcom/a/a/a/a/a/e;->notifyDataSetChanged()V

    return-void
.end method

.method protected c(II)V
    .locals 0

    .line 299
    invoke-virtual {p0, p1, p2}, Lcom/a/a/a/a/a/e;->notifyItemRangeRemoved(II)V

    return-void
.end method

.method public final c(Landroidx/recyclerview/widget/RecyclerView$a;Ljava/lang/Object;II)V
    .locals 0

    .line 352
    invoke-virtual {p0, p3, p4}, Lcom/a/a/a/a/a/e;->c(II)V

    return-void
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView$w;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .line 165
    invoke-virtual {p0}, Lcom/a/a/a/a/a/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/a/a/a/a/a/e;->b:Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-static {v0, p1, p2}, Lcom/a/a/a/a/d/b;->a(Landroidx/recyclerview/widget/RecyclerView$a;Landroidx/recyclerview/widget/RecyclerView$w;I)V

    :cond_0
    return-void
.end method

.method public d(Landroidx/recyclerview/widget/RecyclerView$w;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)Z"
        }
    .end annotation

    .line 185
    invoke-virtual {p0}, Lcom/a/a/a/a/a/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/a/a/a/a/a/e;->b:Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-static {v0, p1, p2}, Lcom/a/a/a/a/d/b;->b(Landroidx/recyclerview/widget/RecyclerView$a;Landroidx/recyclerview/widget/RecyclerView$w;I)Z

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    const/4 p1, 0x1

    return p1

    .line 193
    :cond_1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$a;->onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$w;)Z

    move-result p1

    return p1
.end method

.method public getItemCount()I
    .locals 1

    .line 237
    invoke-virtual {p0}, Lcom/a/a/a/a/a/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/a/a/a/e;->b:Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$a;->getItemCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/a/a/a/a/a/e;->b:Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$a;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/a/a/a/a/a/e;->b:Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$a;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 103
    invoke-virtual {p0}, Lcom/a/a/a/a/a/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/a/a/a/a/a/e;->b:Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$a;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$w;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .line 220
    sget-object v0, Lcom/a/a/a/a/a/e;->a:Ljava/util/List;

    invoke-virtual {p0, p1, p2, v0}, Lcom/a/a/a/a/a/e;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$w;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$w;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 228
    invoke-virtual {p0}, Lcom/a/a/a/a/a/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/a/a/a/a/a/e;->b:Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$a;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$w;ILjava/util/List;)V

    :cond_0
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

    .line 212
    iget-object v0, p0, Lcom/a/a/a/a/a/e;->b:Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$a;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$w;

    move-result-object p1

    return-object p1
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 112
    invoke-virtual {p0}, Lcom/a/a/a/a/a/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/a/a/a/a/a/e;->b:Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$a;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_0
    return-void
.end method

.method public onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$w;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)Z"
        }
    .end annotation

    .line 175
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$w;->getItemViewType()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/a/a/a/a/a/e;->d(Landroidx/recyclerview/widget/RecyclerView$w;I)Z

    move-result p1

    return p1
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .line 121
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$w;->getItemViewType()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/a/a/a/a/a/e;->a(Landroidx/recyclerview/widget/RecyclerView$w;I)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .line 139
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$w;->getItemViewType()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/a/a/a/a/a/e;->b(Landroidx/recyclerview/widget/RecyclerView$w;I)V

    return-void
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .line 157
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$w;->getItemViewType()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/a/a/a/a/a/e;->c(Landroidx/recyclerview/widget/RecyclerView$w;I)V

    return-void
.end method

.method public setHasStableIds(Z)V
    .locals 1

    .line 201
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$a;->setHasStableIds(Z)V

    .line 203
    invoke-virtual {p0}, Lcom/a/a/a/a/a/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/a/a/a/a/a/e;->b:Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$a;->setHasStableIds(Z)V

    :cond_0
    return-void
.end method
