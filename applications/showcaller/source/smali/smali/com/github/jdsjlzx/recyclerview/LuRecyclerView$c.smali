.class Lcom/github/jdsjlzx/recyclerview/LuRecyclerView$c;
.super Landroidx/recyclerview/widget/RecyclerView$i;
.source "LuRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;


# direct methods
.method private constructor <init>(Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/jdsjlzx/recyclerview/LuRecyclerView$c;->a:Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$i;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;Lcom/github/jdsjlzx/recyclerview/LuRecyclerView$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/github/jdsjlzx/recyclerview/LuRecyclerView$c;-><init>(Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/LuRecyclerView$c;->a:Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/github/jdsjlzx/recyclerview/a;

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/github/jdsjlzx/recyclerview/a;

    .line 4
    invoke-virtual {v0}, Lcom/github/jdsjlzx/recyclerview/a;->I()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/github/jdsjlzx/recyclerview/LuRecyclerView$c;->a:Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;

    invoke-static {v1}, Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;->y1(Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 5
    invoke-virtual {v0}, Lcom/github/jdsjlzx/recyclerview/a;->I()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->d()I

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/LuRecyclerView$c;->a:Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;

    invoke-static {v0}, Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;->y1(Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/LuRecyclerView$c;->a:Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/LuRecyclerView$c;->a:Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;

    invoke-static {v0}, Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;->y1(Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/LuRecyclerView$c;->a:Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_3

    .line 10
    iget-object v1, p0, Lcom/github/jdsjlzx/recyclerview/LuRecyclerView$c;->a:Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;

    invoke-static {v1}, Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;->y1(Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 11
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->d()I

    move-result v0

    if-nez v0, :cond_2

    .line 12
    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/LuRecyclerView$c;->a:Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;

    invoke-static {v0}, Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;->y1(Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/LuRecyclerView$c;->a:Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/LuRecyclerView$c;->a:Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;

    invoke-static {v0}, Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;->y1(Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 15
    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/LuRecyclerView$c;->a:Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 16
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/LuRecyclerView$c;->a:Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;

    invoke-static {v0}, Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;->z1(Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;)Lcom/github/jdsjlzx/recyclerview/b;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 17
    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/LuRecyclerView$c;->a:Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;

    invoke-static {v0}, Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;->z1(Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;)Lcom/github/jdsjlzx/recyclerview/b;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->i()V

    .line 18
    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/LuRecyclerView$c;->a:Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;

    invoke-static {v0}, Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;->z1(Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;)Lcom/github/jdsjlzx/recyclerview/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/jdsjlzx/recyclerview/b;->I()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->d()I

    move-result v0

    iget-object v1, p0, Lcom/github/jdsjlzx/recyclerview/LuRecyclerView$c;->a:Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;

    invoke-static {v1}, Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;->A1(Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;)I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 19
    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/LuRecyclerView$c;->a:Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;

    invoke-static {v0}, Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;->B1(Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method public b(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/LuRecyclerView$c;->a:Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;

    invoke-static {v0}, Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;->z1(Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;)Lcom/github/jdsjlzx/recyclerview/b;

    move-result-object v0

    iget-object v1, p0, Lcom/github/jdsjlzx/recyclerview/LuRecyclerView$c;->a:Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;

    invoke-static {v1}, Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;->z1(Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;)Lcom/github/jdsjlzx/recyclerview/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/jdsjlzx/recyclerview/b;->H()I

    move-result v1

    add-int/2addr p1, v1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->k(II)V

    return-void
.end method

.method public d(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/LuRecyclerView$c;->a:Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;

    invoke-static {v0}, Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;->z1(Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;)Lcom/github/jdsjlzx/recyclerview/b;

    move-result-object v0

    iget-object v1, p0, Lcom/github/jdsjlzx/recyclerview/LuRecyclerView$c;->a:Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;

    invoke-static {v1}, Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;->z1(Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;)Lcom/github/jdsjlzx/recyclerview/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/jdsjlzx/recyclerview/b;->H()I

    move-result v1

    add-int/2addr p1, v1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->l(II)V

    return-void
.end method

.method public e(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/LuRecyclerView$c;->a:Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;

    invoke-static {v0}, Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;->z1(Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;)Lcom/github/jdsjlzx/recyclerview/b;

    move-result-object v0

    iget-object v1, p0, Lcom/github/jdsjlzx/recyclerview/LuRecyclerView$c;->a:Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;

    invoke-static {v1}, Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;->z1(Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;)Lcom/github/jdsjlzx/recyclerview/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/jdsjlzx/recyclerview/b;->H()I

    move-result v1

    add-int/2addr p1, v1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->m(II)V

    .line 2
    iget-object p1, p0, Lcom/github/jdsjlzx/recyclerview/LuRecyclerView$c;->a:Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;

    invoke-static {p1}, Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;->z1(Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;)Lcom/github/jdsjlzx/recyclerview/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/jdsjlzx/recyclerview/b;->I()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->d()I

    move-result p1

    iget-object p2, p0, Lcom/github/jdsjlzx/recyclerview/LuRecyclerView$c;->a:Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;

    invoke-static {p2}, Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;->A1(Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;)I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/github/jdsjlzx/recyclerview/LuRecyclerView$c;->a:Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;

    invoke-static {p1}, Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;->B1(Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
