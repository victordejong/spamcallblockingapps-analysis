.class public Lku0;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Llu0;",
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
.method public constructor <init>(Ljava/util/List;Lst0;)V
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

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    iput-object p1, p0, Lku0;->a:Ljava/util/List;

    iput-object p2, p0, Lku0;->b:Lst0;

    return-void
.end method


# virtual methods
.method public d(Llu0;I)V
    .locals 1

    iget-object v0, p0, Lku0;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkq0;

    iget-object v0, p0, Lku0;->b:Lst0;

    invoke-virtual {p1, p2, v0}, Llu0;->e(Lkq0;Lst0;)V

    return-void
.end method

.method public e(Landroid/view/ViewGroup;I)Llu0;
    .locals 0

    invoke-static {p1}, Llu0;->b(Landroid/view/ViewGroup;)Llu0;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lku0;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 0

    check-cast p1, Llu0;

    invoke-virtual {p0, p1, p2}, Lku0;->d(Llu0;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lku0;->e(Landroid/view/ViewGroup;I)Llu0;

    move-result-object p1

    return-object p1
.end method
