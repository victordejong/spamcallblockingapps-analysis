.class public Lnu0;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Lou0;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkq0;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lst0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnu0;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public d(I)Lkq0;
    .locals 1

    iget-object v0, p0, Lnu0;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkq0;

    return-object p1
.end method

.method public e(Lou0;I)V
    .locals 2

    iget-object v0, p0, Lnu0;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkq0;

    iget-object v0, p0, Lnu0;->b:Lst0;

    iget-object v1, p0, Lnu0;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, p2, v0, v1}, Lou0;->c(Lkq0;Lst0;I)V

    return-void
.end method

.method public f(Landroid/view/ViewGroup;I)Lou0;
    .locals 0

    invoke-static {p1}, Lou0;->b(Landroid/view/ViewGroup;)Lou0;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/util/List;Lst0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkq0;",
            ">;",
            "Lst0;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lnu0;->a:Ljava/util/List;

    iput-object p2, p0, Lnu0;->b:Lst0;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lnu0;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 0

    check-cast p1, Lou0;

    invoke-virtual {p0, p1, p2}, Lnu0;->e(Lou0;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lnu0;->f(Landroid/view/ViewGroup;I)Lou0;

    move-result-object p1

    return-object p1
.end method
