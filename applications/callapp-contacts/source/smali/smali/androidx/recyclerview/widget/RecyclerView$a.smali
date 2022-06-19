.class public abstract Landroidx/recyclerview/widget/RecyclerView$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/RecyclerView$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroidx/recyclerview/widget/RecyclerView$v;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Landroidx/recyclerview/widget/RecyclerView$b;

.field private b:Z

.field private c:Landroidx/recyclerview/widget/RecyclerView$a$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7174
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$b;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$b;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a;->a:Landroidx/recyclerview/widget/RecyclerView$b;

    const/4 v0, 0x0

    .line 7175
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$a;->b:Z

    .line 7176
    sget-object v0, Landroidx/recyclerview/widget/RecyclerView$a$a;->ALLOW:Landroidx/recyclerview/widget/RecyclerView$a$a;

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a;->c:Landroidx/recyclerview/widget/RecyclerView$a$a;

    return-void
.end method


# virtual methods
.method final a()Z
    .locals 4

    .line 7813
    sget-object v0, Landroidx/recyclerview/widget/RecyclerView$7;->a:[I

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$a;->c:Landroidx/recyclerview/widget/RecyclerView$a$a;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$a$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    return v2

    .line 7817
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$a;->getItemCount()I

    move-result v0

    if-lez v0, :cond_1

    return v2

    :cond_1
    return v1
.end method

.method public final bindViewHolder(Landroidx/recyclerview/widget/RecyclerView$v;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .line 7325
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$v;->q:Landroidx/recyclerview/widget/RecyclerView$a;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 7327
    iput p2, p1, Landroidx/recyclerview/widget/RecyclerView$v;->b:I

    .line 7328
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$a;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7329
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$a;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p1, Landroidx/recyclerview/widget/RecyclerView$v;->d:J

    :cond_1
    const/16 v2, 0x207

    .line 7331
    invoke-virtual {p1, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$v;->setFlags(II)V

    const-string v2, "RV OnBindView"

    .line 7334
    invoke-static {v2}, Landroidx/core/os/g;->a(Ljava/lang/String;)V

    .line 7336
    :cond_2
    iput-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$v;->q:Landroidx/recyclerview/widget/RecyclerView$a;

    .line 7337
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$v;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, p1, p2, v2}, Landroidx/recyclerview/widget/RecyclerView$a;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$v;ILjava/util/List;)V

    if-eqz v0, :cond_4

    .line 7339
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$v;->i()V

    .line 7340
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$v;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 7341
    instance-of p2, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    if-eqz p2, :cond_3

    .line 7342
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iput-boolean v1, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->e:Z

    .line 7344
    :cond_3
    invoke-static {}, Landroidx/core/os/g;->a()V

    :cond_4
    return-void
.end method

.method public final createViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    :try_start_0
    const-string v0, "RV CreateView"

    .line 7294
    invoke-static {v0}, Landroidx/core/os/g;->a(Ljava/lang/String;)V

    .line 7295
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$a;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$v;

    move-result-object p1

    .line 7296
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$v;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 7301
    iput p2, p1, Landroidx/recyclerview/widget/RecyclerView$v;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7304
    invoke-static {}, Landroidx/core/os/g;->a()V

    return-object p1

    .line 7297
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ViewHolder views must not be attached when created. Ensure that you are not passing \'true\' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 7304
    invoke-static {}, Landroidx/core/os/g;->a()V

    .line 7305
    throw p1
.end method

.method public findRelativeAdapterPositionIn(Landroidx/recyclerview/widget/RecyclerView$a;Landroidx/recyclerview/widget/RecyclerView$v;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$a<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$v;",
            ">;",
            "Landroidx/recyclerview/widget/RecyclerView$v;",
            "I)I"
        }
    .end annotation

    if-ne p1, p0, :cond_0

    return p3

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public abstract getItemCount()I
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final getStateRestorationPolicy()Landroidx/recyclerview/widget/RecyclerView$a$a;
    .locals 1

    .line 7802
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a;->c:Landroidx/recyclerview/widget/RecyclerView$a$a;

    return-object v0
.end method

.method public final hasObservers()Z
    .locals 1

    .line 7499
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a;->a:Landroidx/recyclerview/widget/RecyclerView$b;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b;->a()Z

    move-result v0

    return v0
.end method

.method public final hasStableIds()Z
    .locals 1

    .line 7407
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$a;->b:Z

    return v0
.end method

.method public final notifyDataSetChanged()V
    .locals 1

    .line 7584
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a;->a:Landroidx/recyclerview/widget/RecyclerView$b;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b;->b()V

    return-void
.end method

.method public final notifyItemChanged(I)V
    .locals 2

    .line 7599
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a;->a:Landroidx/recyclerview/widget/RecyclerView$b;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$b;->a(II)V

    return-void
.end method

.method public final notifyItemChanged(ILjava/lang/Object;)V
    .locals 2

    .line 7626
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a;->a:Landroidx/recyclerview/widget/RecyclerView$b;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Landroidx/recyclerview/widget/RecyclerView$b;->a(IILjava/lang/Object;)V

    return-void
.end method

.method public final notifyItemInserted(I)V
    .locals 2

    .line 7689
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a;->a:Landroidx/recyclerview/widget/RecyclerView$b;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$b;->b(II)V

    return-void
.end method

.method public final notifyItemMoved(II)V
    .locals 1

    .line 7704
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a;->a:Landroidx/recyclerview/widget/RecyclerView$b;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$b;->d(II)V

    return-void
.end method

.method public final notifyItemRangeChanged(II)V
    .locals 1

    .line 7643
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a;->a:Landroidx/recyclerview/widget/RecyclerView$b;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$b;->a(II)V

    return-void
.end method

.method public final notifyItemRangeChanged(IILjava/lang/Object;)V
    .locals 1

    .line 7673
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a;->a:Landroidx/recyclerview/widget/RecyclerView$b;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$b;->a(IILjava/lang/Object;)V

    return-void
.end method

.method public final notifyItemRangeInserted(II)V
    .locals 1

    .line 7722
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a;->a:Landroidx/recyclerview/widget/RecyclerView$b;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$b;->b(II)V

    return-void
.end method

.method public final notifyItemRangeRemoved(II)V
    .locals 1

    .line 7755
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a;->a:Landroidx/recyclerview/widget/RecyclerView$b;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$b;->c(II)V

    return-void
.end method

.method public final notifyItemRemoved(I)V
    .locals 2

    .line 7738
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a;->a:Landroidx/recyclerview/widget/RecyclerView$b;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$b;->c(II)V

    return-void
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method public abstract onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$v;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$v;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 7254
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$a;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$v;I)V

    return-void
.end method

.method public abstract onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method public onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$v;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$v;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    return-void
.end method

.method public onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$v;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    return-void
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$v;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    return-void
.end method

.method public registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$c;)V
    .locals 1

    .line 7518
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a;->a:Landroidx/recyclerview/widget/RecyclerView$b;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$b;->registerObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public setHasStableIds(Z)V
    .locals 1

    .line 7373
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$a;->hasObservers()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7377
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$a;->b:Z

    return-void

    .line 7374
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot change whether this adapter has stable IDs while the adapter has registered observers."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setStateRestorationPolicy(Landroidx/recyclerview/widget/RecyclerView$a$a;)V
    .locals 0

    .line 7789
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$a;->c:Landroidx/recyclerview/widget/RecyclerView$a$a;

    .line 7790
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$a;->a:Landroidx/recyclerview/widget/RecyclerView$b;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b;->c()V

    return-void
.end method

.method public unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$c;)V
    .locals 1

    .line 7531
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a;->a:Landroidx/recyclerview/widget/RecyclerView$b;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$b;->unregisterObserver(Ljava/lang/Object;)V

    return-void
.end method
