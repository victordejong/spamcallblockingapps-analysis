.class public Lld0;
.super Lid0;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Type::",
        "Ljava/io/Serializable;",
        ">",
        "Lid0<",
        "Lmd0<",
        "TType;>;TType;>;"
    }
.end annotation


# instance fields
.field public f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljd0<",
            "+TType;+TType;>;>;"
        }
    .end annotation
.end field

.field public g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+TType;>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lkd0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ItemType:TType;>(",
            "Ljava/lang/Class<",
            "TItemType;>;",
            "Lkd0<",
            "TItemType;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lid0;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lld0;->f:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lld0;->g:Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lld0;->i(Ljava/lang/Class;Lkd0;)V

    return-void
.end method

.method private synthetic j(Lta0;Lmd0;Landroid/view/View;)V
    .locals 0

    invoke-interface {p1}, Lta0;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAdapterPosition()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lid0;->d(Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lld0;->g:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lid0;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/Serializable;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public h(Ljava/lang/Class;Lab0;Lkd0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ItemType:TType;FactoryType:TType;>(",
            "Ljava/lang/Class<",
            "TItemType;>;",
            "Lab0<",
            "TItemType;TFactoryType;>;",
            "Lkd0<",
            "TFactoryType;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lld0;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Lld0;->f:Landroid/util/SparseArray;

    new-instance v2, Ljd0;

    invoke-direct {v2, p2, p3}, Ljd0;-><init>(Lab0;Lkd0;)V

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p2, p0, Lld0;->g:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public i(Ljava/lang/Class;Lkd0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ItemType:TType;>(",
            "Ljava/lang/Class<",
            "TItemType;>;",
            "Lkd0<",
            "TItemType;>;)V"
        }
    .end annotation

    sget-object v0, Lab0;->a:Lab0;

    invoke-virtual {p0, p1, v0, p2}, Lld0;->h(Ljava/lang/Class;Lab0;Lkd0;)V

    return-void
.end method

.method public synthetic k(Lta0;Lmd0;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lld0;->j(Lta0;Lmd0;Landroid/view/View;)V

    return-void
.end method

.method public l(Lmd0;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmd0<",
            "TType;>;I)V"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lid0;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {p1}, Lmd0;->b()Lta0;

    move-result-object v1

    iget-object v2, p0, Lld0;->f:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Lld0;->getItemViewType(I)I

    move-result p2

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljd0;

    iget-object p2, p2, Ljd0;->a:Lab0;

    invoke-interface {p2, v0}, Lab0;->a(Ljava/io/Serializable;)Ljava/io/Serializable;

    invoke-interface {v1, v0}, Lta0;->a(Ljava/lang/Object;)V

    invoke-interface {v1}, Lta0;->getView()Landroid/view/View;

    move-result-object p2

    new-instance v0, Ldd0;

    invoke-direct {v0, p0, v1, p1}, Ldd0;-><init>(Lld0;Lta0;Lmd0;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public m(Landroid/view/ViewGroup;I)Lmd0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lmd0<",
            "TType;>;"
        }
    .end annotation

    iget-object v0, p0, Lld0;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljd0;

    iget-object p2, p2, Ljd0;->b:Lkd0;

    invoke-interface {p2, p1}, Lkd0;->a(Landroid/view/ViewGroup;)Lta0;

    move-result-object p1

    new-instance p2, Lmd0;

    invoke-direct {p2, p1}, Lmd0;-><init>(Lta0;)V

    return-object p2
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 0

    check-cast p1, Lmd0;

    invoke-virtual {p0, p1, p2}, Lld0;->l(Lmd0;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lld0;->m(Landroid/view/ViewGroup;I)Lmd0;

    move-result-object p1

    return-object p1
.end method
