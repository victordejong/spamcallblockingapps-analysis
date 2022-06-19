.class public abstract Lcarbon/widget/ExpandableRecyclerView$b;
.super Lfd0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcarbon/widget/ExpandableRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CVH:",
        "Landroidx/recyclerview/widget/RecyclerView$b0;",
        "GVH:",
        "Landroidx/recyclerview/widget/RecyclerView$b0;",
        "C:",
        "Ljava/lang/Object;",
        "G:",
        "Ljava/lang/Object;",
        ">",
        "Lfd0<",
        "Landroidx/recyclerview/widget/RecyclerView$b0;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public b:Landroid/util/SparseBooleanArray;

.field public c:Lcarbon/widget/ExpandableRecyclerView$d;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lfd0;-><init>()V

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcarbon/widget/ExpandableRecyclerView$b;->b:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method private synthetic m(IILandroid/view/View;)V
    .locals 0

    iget-object p3, p0, Lcarbon/widget/ExpandableRecyclerView$b;->c:Lcarbon/widget/ExpandableRecyclerView$d;

    if-eqz p3, :cond_0

    invoke-interface {p3, p1, p2}, Lcarbon/widget/ExpandableRecyclerView$d;->a(II)V

    :cond_0
    return-void
.end method

.method private synthetic o(ILandroidx/recyclerview/widget/RecyclerView$b0;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcarbon/widget/ExpandableRecyclerView$b;->l(I)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1}, Lcarbon/widget/ExpandableRecyclerView$b;->d(I)V

    instance-of p1, p2, Lcarbon/widget/ExpandableRecyclerView$c;

    if-eqz p1, :cond_1

    check-cast p2, Lcarbon/widget/ExpandableRecyclerView$c;

    invoke-virtual {p2}, Lcarbon/widget/ExpandableRecyclerView$c;->b()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcarbon/widget/ExpandableRecyclerView$b;->e(I)V

    instance-of p1, p2, Lcarbon/widget/ExpandableRecyclerView$c;

    if-eqz p1, :cond_1

    check-cast p2, Lcarbon/widget/ExpandableRecyclerView$c;

    invoke-virtual {p2}, Lcarbon/widget/ExpandableRecyclerView$c;->c()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public d(I)V
    .locals 4

    invoke-virtual {p0, p1}, Lcarbon/widget/ExpandableRecyclerView$b;->l(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v2, v2, 0x1

    if-ge v1, p1, :cond_2

    invoke-virtual {p0, v1}, Lcarbon/widget/ExpandableRecyclerView$b;->l(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v1}, Lcarbon/widget/ExpandableRecyclerView$b;->g(I)I

    move-result v3

    add-int/2addr v2, v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcarbon/widget/ExpandableRecyclerView$b;->g(I)I

    move-result v1

    invoke-virtual {p0, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemRangeRemoved(II)V

    iget-object v1, p0, Lcarbon/widget/ExpandableRecyclerView$b;->b:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method

.method public e(I)V
    .locals 3

    invoke-virtual {p0, p1}, Lcarbon/widget/ExpandableRecyclerView$b;->l(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0}, Lcarbon/widget/ExpandableRecyclerView$b;->l(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0}, Lcarbon/widget/ExpandableRecyclerView$b;->g(I)I

    move-result v2

    add-int/2addr v1, v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    add-int/2addr v1, v0

    invoke-virtual {p0, p1}, Lcarbon/widget/ExpandableRecyclerView$b;->g(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemRangeInserted(II)V

    iget-object v1, p0, Lcarbon/widget/ExpandableRecyclerView$b;->b:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method

.method public abstract f(II)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TC;"
        }
    .end annotation
.end method

.method public abstract g(I)I
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcarbon/widget/ExpandableRecyclerView$b;->k()I

    move-result v1

    if-ge v0, v1, :cond_4

    if-lez p1, :cond_1

    invoke-virtual {p0, v0}, Lcarbon/widget/ExpandableRecyclerView$b;->l(I)Z

    move-result v1

    if-nez v1, :cond_1

    add-int/lit8 p1, p1, -0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-lez p1, :cond_3

    invoke-virtual {p0, v0}, Lcarbon/widget/ExpandableRecyclerView$b;->l(I)Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, v0}, Lcarbon/widget/ExpandableRecyclerView$b;->g(I)I

    move-result v1

    if-ge p1, v1, :cond_2

    invoke-virtual {p0, v0, p1}, Lcarbon/widget/ExpandableRecyclerView$b;->f(II)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p0, v0}, Lcarbon/widget/ExpandableRecyclerView$b;->g(I)I

    move-result v1

    sub-int/2addr p1, v1

    goto :goto_1

    :cond_3
    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Lcarbon/widget/ExpandableRecyclerView$b;->j(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public getItemCount()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcarbon/widget/ExpandableRecyclerView$b;->k()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Lcarbon/widget/ExpandableRecyclerView$b;->l(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lcarbon/widget/ExpandableRecyclerView$b;->g(I)I

    move-result v2

    add-int/2addr v3, v2

    :cond_0
    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getItemViewType(I)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcarbon/widget/ExpandableRecyclerView$b;->k()I

    move-result v2

    if-ge v1, v2, :cond_4

    if-lez p1, :cond_1

    invoke-virtual {p0, v1}, Lcarbon/widget/ExpandableRecyclerView$b;->l(I)Z

    move-result v2

    if-nez v2, :cond_1

    add-int/lit8 p1, p1, -0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-lez p1, :cond_3

    invoke-virtual {p0, v1}, Lcarbon/widget/ExpandableRecyclerView$b;->l(I)Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, v1}, Lcarbon/widget/ExpandableRecyclerView$b;->g(I)I

    move-result v2

    if-ge p1, v2, :cond_2

    invoke-virtual {p0, v1, p1}, Lcarbon/widget/ExpandableRecyclerView$b;->h(II)I

    move-result p1

    return p1

    :cond_2
    invoke-virtual {p0, v1}, Lcarbon/widget/ExpandableRecyclerView$b;->g(I)I

    move-result v2

    sub-int/2addr p1, v2

    goto :goto_1

    :cond_3
    if-nez p1, :cond_0

    return v0

    :cond_4
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public abstract h(II)I
.end method

.method public i()Landroid/util/SparseBooleanArray;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/ExpandableRecyclerView$b;->b:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method public abstract j(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TG;"
        }
    .end annotation
.end method

.method public abstract k()I
.end method

.method public l(I)Z
    .locals 1

    iget-object v0, p0, Lcarbon/widget/ExpandableRecyclerView$b;->b:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    return p1
.end method

.method public synthetic n(IILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcarbon/widget/ExpandableRecyclerView$b;->m(IILandroid/view/View;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 2

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcarbon/widget/ExpandableRecyclerView$b;->k()I

    move-result v1

    if-ge v0, v1, :cond_4

    if-lez p2, :cond_1

    invoke-virtual {p0, v0}, Lcarbon/widget/ExpandableRecyclerView$b;->l(I)Z

    move-result v1

    if-nez v1, :cond_1

    add-int/lit8 p2, p2, -0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-lez p2, :cond_3

    invoke-virtual {p0, v0}, Lcarbon/widget/ExpandableRecyclerView$b;->l(I)Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p0, v0}, Lcarbon/widget/ExpandableRecyclerView$b;->g(I)I

    move-result v1

    if-ge p2, v1, :cond_2

    invoke-virtual {p0, p1, v0, p2}, Lcarbon/widget/ExpandableRecyclerView$b;->q(Landroidx/recyclerview/widget/RecyclerView$b0;II)V

    return-void

    :cond_2
    invoke-virtual {p0, v0}, Lcarbon/widget/ExpandableRecyclerView$b;->g(I)I

    move-result v1

    sub-int/2addr p2, v1

    goto :goto_1

    :cond_3
    if-nez p2, :cond_0

    invoke-virtual {p0, p1, v0}, Lcarbon/widget/ExpandableRecyclerView$b;->r(Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 0

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcarbon/widget/ExpandableRecyclerView$b;->t(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$b0;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcarbon/widget/ExpandableRecyclerView$b;->s(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public synthetic p(ILandroidx/recyclerview/widget/RecyclerView$b0;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcarbon/widget/ExpandableRecyclerView$b;->o(ILandroidx/recyclerview/widget/RecyclerView$b0;Landroid/view/View;)V

    return-void
.end method

.method public q(Landroidx/recyclerview/widget/RecyclerView$b0;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCVH;II)V"
        }
    .end annotation

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    new-instance v0, Lhf0;

    invoke-direct {v0, p0, p2, p3}, Lhf0;-><init>(Lcarbon/widget/ExpandableRecyclerView$b;II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public r(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TGVH;I)V"
        }
    .end annotation

    instance-of v0, p1, Lcarbon/widget/ExpandableRecyclerView$c;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcarbon/widget/ExpandableRecyclerView$c;

    invoke-virtual {p0, p2}, Lcarbon/widget/ExpandableRecyclerView$b;->l(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcarbon/widget/ExpandableRecyclerView$c;->d(Z)V

    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    new-instance v1, Lif0;

    invoke-direct {v1, p0, p2, p1}, Lif0;-><init>(Lcarbon/widget/ExpandableRecyclerView$b;ILandroidx/recyclerview/widget/RecyclerView$b0;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public abstract s(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TCVH;"
        }
    .end annotation
.end method

.method public abstract t(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")TGVH;"
        }
    .end annotation
.end method

.method public u(Landroid/util/SparseBooleanArray;)V
    .locals 0

    iput-object p1, p0, Lcarbon/widget/ExpandableRecyclerView$b;->b:Landroid/util/SparseBooleanArray;

    return-void
.end method
