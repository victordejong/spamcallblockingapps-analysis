.class public Lcom/github/jdsjlzx/recyclerview/a;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "LRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/jdsjlzx/recyclerview/a$d;,
        Lcom/github/jdsjlzx/recyclerview/a$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$b0;",
        ">;"
    }
.end annotation


# static fields
.field private static d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private e:Lc/b/a/g/b;

.field private f:Lc/b/a/g/c;

.field private g:Lc/b/a/g/d;

.field private h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/github/jdsjlzx/recyclerview/a$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/github/jdsjlzx/recyclerview/a;->d:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/jdsjlzx/recyclerview/a;->i:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/jdsjlzx/recyclerview/a;->j:Ljava/util/ArrayList;

    .line 4
    iput-object p1, p0, Lcom/github/jdsjlzx/recyclerview/a;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-void
.end method

.method static synthetic A(Lcom/github/jdsjlzx/recyclerview/a;)Lc/b/a/g/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/github/jdsjlzx/recyclerview/a;->f:Lc/b/a/g/c;

    return-object p0
.end method

.method static synthetic B(Lcom/github/jdsjlzx/recyclerview/a;)Lc/b/a/g/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/github/jdsjlzx/recyclerview/a;->g:Lc/b/a/g/d;

    return-object p0
.end method

.method static synthetic C(Lcom/github/jdsjlzx/recyclerview/a;)Lcom/github/jdsjlzx/recyclerview/a$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/github/jdsjlzx/recyclerview/a;->k:Lcom/github/jdsjlzx/recyclerview/a$d;

    return-object p0
.end method

.method private G(I)Landroid/view/View;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/github/jdsjlzx/recyclerview/a;->L(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/a;->i:Ljava/util/ArrayList;

    add-int/lit16 p1, p1, -0x2712

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method private L(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/a;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/github/jdsjlzx/recyclerview/a;->d:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public D(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/github/jdsjlzx/recyclerview/a;->N()V

    .line 2
    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/a;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "footer is null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public E()Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/github/jdsjlzx/recyclerview/a;->F()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/a;->j:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public F()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/a;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public H()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/a;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public I()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/a;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-object v0
.end method

.method public J(I)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/github/jdsjlzx/recyclerview/a;->d()I

    move-result v0

    invoke-virtual {p0}, Lcom/github/jdsjlzx/recyclerview/a;->F()I

    move-result v1

    sub-int/2addr v0, v1

    .line 2
    invoke-virtual {p0}, Lcom/github/jdsjlzx/recyclerview/a;->F()I

    move-result v1

    if-lez v1, :cond_0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public K(I)Z
    .locals 2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 1
    iget-object v1, p0, Lcom/github/jdsjlzx/recyclerview/a;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, v0

    if-ge p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public M(I)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public N()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/github/jdsjlzx/recyclerview/a;->F()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/github/jdsjlzx/recyclerview/a;->E()Landroid/view/View;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/github/jdsjlzx/recyclerview/a;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->i()V

    :cond_0
    return-void
.end method

.method public O(Lc/b/a/g/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/jdsjlzx/recyclerview/a;->e:Lc/b/a/g/b;

    return-void
.end method

.method public P(Lcom/github/jdsjlzx/recyclerview/a$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/jdsjlzx/recyclerview/a;->k:Lcom/github/jdsjlzx/recyclerview/a$d;

    return-void
.end method

.method public d()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/a;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/github/jdsjlzx/recyclerview/a;->H()I

    move-result v0

    invoke-virtual {p0}, Lcom/github/jdsjlzx/recyclerview/a;->F()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/github/jdsjlzx/recyclerview/a;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->d()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/github/jdsjlzx/recyclerview/a;->H()I

    move-result v0

    invoke-virtual {p0}, Lcom/github/jdsjlzx/recyclerview/a;->F()I

    move-result v1

    goto :goto_0
.end method

.method public e(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/a;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/github/jdsjlzx/recyclerview/a;->H()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/github/jdsjlzx/recyclerview/a;->H()I

    move-result v0

    sub-int/2addr p1, v0

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/a;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->d()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/a;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->e(I)J

    move-result-wide v0

    return-wide v0

    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public f(I)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/github/jdsjlzx/recyclerview/a;->H()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sub-int v0, p1, v0

    .line 2
    invoke-virtual {p0, p1}, Lcom/github/jdsjlzx/recyclerview/a;->M(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 p1, 0x2710

    return p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/github/jdsjlzx/recyclerview/a;->K(I)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 4
    sget-object v0, Lcom/github/jdsjlzx/recyclerview/a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 5
    :cond_1
    invoke-virtual {p0, p1}, Lcom/github/jdsjlzx/recyclerview/a;->J(I)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x2711

    return p1

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/github/jdsjlzx/recyclerview/a;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz p1, :cond_3

    .line 7
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->d()I

    move-result p1

    if-ge v0, p1, :cond_3

    .line 8
    iget-object p1, p0, Lcom/github/jdsjlzx/recyclerview/a;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->f(I)I

    move-result p1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public o(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->o(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object v0

    .line 3
    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 5
    new-instance v1, Lcom/github/jdsjlzx/recyclerview/a$c;

    invoke-direct {v1, p0, v0}, Lcom/github/jdsjlzx/recyclerview/a$c;-><init>(Lcom/github/jdsjlzx/recyclerview/a;Landroidx/recyclerview/widget/GridLayoutManager;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->d3(Landroidx/recyclerview/widget/GridLayoutManager$b;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/a;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->o(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public p(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 2

    .line 1
    invoke-virtual {p0, p2}, Lcom/github/jdsjlzx/recyclerview/a;->K(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p2}, Lcom/github/jdsjlzx/recyclerview/a;->M(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/github/jdsjlzx/recyclerview/a;->H()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sub-int/2addr p2, v0

    .line 3
    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/a;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->d()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/a;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->p(Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    .line 6
    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/a;->f:Lc/b/a/g/c;

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->b:Landroid/view/View;

    new-instance v1, Lcom/github/jdsjlzx/recyclerview/a$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/github/jdsjlzx/recyclerview/a$a;-><init>(Lcom/github/jdsjlzx/recyclerview/a;Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/a;->g:Lc/b/a/g/d;

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->b:Landroid/view/View;

    new-instance v1, Lcom/github/jdsjlzx/recyclerview/a$b;

    invoke-direct {v1, p0, p1, p2}, Lcom/github/jdsjlzx/recyclerview/a$b;-><init>(Lcom/github/jdsjlzx/recyclerview/a;Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public q(Landroidx/recyclerview/widget/RecyclerView$b0;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$b0;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/github/jdsjlzx/recyclerview/a;->p(Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p2}, Lcom/github/jdsjlzx/recyclerview/a;->K(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p2}, Lcom/github/jdsjlzx/recyclerview/a;->M(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/github/jdsjlzx/recyclerview/a;->H()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sub-int/2addr p2, v0

    .line 5
    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/a;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->d()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/a;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->q(Landroidx/recyclerview/widget/RecyclerView$b0;ILjava/util/List;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public r(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 1

    const/16 v0, 0x2710

    if-ne p2, v0, :cond_0

    .line 1
    new-instance p1, Lcom/github/jdsjlzx/recyclerview/a$e;

    iget-object p2, p0, Lcom/github/jdsjlzx/recyclerview/a;->e:Lc/b/a/g/b;

    invoke-interface {p2}, Lc/b/a/g/b;->getHeaderView()Landroid/view/View;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/github/jdsjlzx/recyclerview/a$e;-><init>(Landroid/view/View;)V

    return-object p1

    .line 2
    :cond_0
    invoke-direct {p0, p2}, Lcom/github/jdsjlzx/recyclerview/a;->L(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    new-instance p1, Lcom/github/jdsjlzx/recyclerview/a$e;

    invoke-direct {p0, p2}, Lcom/github/jdsjlzx/recyclerview/a;->G(I)Landroid/view/View;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/github/jdsjlzx/recyclerview/a$e;-><init>(Landroid/view/View;)V

    return-object p1

    :cond_1
    const/16 v0, 0x2711

    if-ne p2, v0, :cond_2

    .line 4
    new-instance p1, Lcom/github/jdsjlzx/recyclerview/a$e;

    iget-object p2, p0, Lcom/github/jdsjlzx/recyclerview/a;->j:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-direct {p1, p2}, Lcom/github/jdsjlzx/recyclerview/a$e;-><init>(Landroid/view/View;)V

    return-object p1

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/a;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->r(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;

    move-result-object p1

    return-object p1
.end method

.method public s(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/a;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->s(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public u(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->u(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 2
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    instance-of v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->m()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/github/jdsjlzx/recyclerview/a;->K(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->m()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/github/jdsjlzx/recyclerview/a;->M(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->m()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/github/jdsjlzx/recyclerview/a;->J(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    :cond_0
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->f(Z)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/a;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->u(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    return-void
.end method

.method public v(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/a;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->v(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    return-void
.end method

.method public w(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/a;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->w(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    return-void
.end method
