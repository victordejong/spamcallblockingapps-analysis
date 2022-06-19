.class Landroidx/recyclerview/widget/RecyclerView$b;
.super Landroid/database/Observable;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/database/Observable",
        "<",
        "Landroidx/recyclerview/widget/RecyclerView$c;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 12242
    invoke-direct {p0}, Landroid/database/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    .prologue
    .line 12258
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$b;->a(IILjava/lang/Object;)V

    .line 12259
    return-void
.end method

.method public a(IILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 12267
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 12268
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$c;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$c;->a(IILjava/lang/Object;)V

    .line 12267
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 12270
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 12244
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 12252
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 12253
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$c;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$c;->a()V

    .line 12252
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 12255
    :cond_0
    return-void
.end method

.method public b(II)V
    .locals 2

    .prologue
    .line 12287
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 12288
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$c;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$c;->b(II)V

    .line 12287
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 12290
    :cond_0
    return-void
.end method
