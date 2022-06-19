.class public Lyt0;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Landroidx/recyclerview/widget/RecyclerView$b0;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lrt0;

.field public b:J

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc71$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrt0;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lyt0;->c:Ljava/util/ArrayList;

    iput-object p1, p0, Lyt0;->a:Lrt0;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    iget-object v0, p0, Lyt0;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method

.method public e(Ljava/util/ArrayList;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lc71$b;",
            ">;J)V"
        }
    .end annotation

    iput-wide p2, p0, Lyt0;->b:J

    iget-object p2, p0, Lyt0;->c:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance p1, Ljava/util/TreeSet;

    iget-object p2, p0, Lyt0;->c:Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lyt0;->c:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lyt0;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lyt0;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 2

    instance-of v0, p1, Lau0;

    if-eqz v0, :cond_0

    check-cast p1, Lau0;

    iget-object p2, p0, Lyt0;->a:Lrt0;

    iget-wide v0, p0, Lyt0;->b:J

    invoke-virtual {p1, p2, v0, v1}, Lau0;->d(Lrt0;J)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lzt0;

    if-eqz v0, :cond_1

    check-cast p1, Lzt0;

    iget-object v0, p0, Lyt0;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lc71$b;

    invoke-virtual {p1, p2}, Lzt0;->c(Lc71$b;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-static {p1}, Lau0;->b(Landroid/view/ViewGroup;)Lau0;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Lzt0;->b(Landroid/view/ViewGroup;)Lzt0;

    move-result-object p1

    return-object p1
.end method
