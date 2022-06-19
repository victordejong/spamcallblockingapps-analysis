.class public Lcarbon/widget/NavigationView;
.super Lcarbon/widget/RecyclerView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcarbon/widget/NavigationView$c;,
        Lcarbon/widget/NavigationView$b;
    }
.end annotation


# instance fields
.field public h0:Lcarbon/widget/RecyclerView$d;

.field public i0:Lwc0;

.field public j0:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcarbon/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcarbon/widget/NavigationView;->w()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcarbon/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcarbon/widget/NavigationView;->w()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcarbon/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lcarbon/widget/NavigationView;->w()V

    return-void
.end method

.method private setMenuInternal(Lwc0;)V
    .locals 6

    iput-object p1, p0, Lcarbon/widget/NavigationView;->i0:Lwc0;

    new-instance v0, Lld0;

    const-class v1, Lbb0;

    sget-object v2, Lle0;->a:Lle0;

    invoke-direct {v0, v1, v2}, Lld0;-><init>(Ljava/lang/Class;Lkd0;)V

    const-class v1, Ldb0;

    sget-object v2, Lme0;->a:Lme0;

    invoke-virtual {v0, v1, v2}, Lld0;->i(Ljava/lang/Class;Lkd0;)V

    const-class v1, Lva0;

    sget-object v2, Leh0;->a:Leh0;

    invoke-virtual {v0, v1, v2}, Lld0;->i(Ljava/lang/Class;Lkd0;)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lwc0;->j()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/MenuItem;

    invoke-interface {v3}, Landroid/view/MenuItem;->getGroupId()I

    move-result v3

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/MenuItem;

    invoke-interface {v5}, Landroid/view/MenuItem;->getGroupId()I

    move-result v5

    if-eq v3, v5, :cond_0

    new-instance v2, Lva0;

    invoke-direct {v2}, Lva0;-><init>()V

    invoke-virtual {v1, v4, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v2, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Ldb0;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lj80;->carbon_paddingHalf:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v2, v3}, Ldb0;-><init>(I)V

    invoke-virtual {v1, p1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    new-instance p1, Ldb0;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {p1, v2}, Ldb0;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcarbon/widget/NavigationView;->j0:Landroid/view/View;

    if-eqz p1, :cond_2

    new-instance p1, Lcarbon/widget/NavigationView$b;

    const/4 v2, 0x0

    invoke-direct {p1, p0, v2}, Lcarbon/widget/NavigationView$b;-><init>(Lcarbon/widget/NavigationView;Lcarbon/widget/NavigationView$a;)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class p1, Lcarbon/widget/NavigationView$b;

    new-instance v2, Lag0;

    invoke-direct {v2, p0}, Lag0;-><init>(Lcarbon/widget/NavigationView;)V

    invoke-virtual {v0, p1, v2}, Lld0;->i(Ljava/lang/Class;Lkd0;)V

    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object p1

    check-cast p1, Lld0;

    invoke-virtual {p1, v1}, Lid0;->f(Ljava/util/List;)V

    return-void
.end method

.method private synthetic x(Landroid/view/ViewGroup;)Lta0;
    .locals 1

    new-instance p1, Lcarbon/widget/NavigationView$c;

    iget-object v0, p0, Lcarbon/widget/NavigationView;->j0:Landroid/view/View;

    invoke-direct {p1, p0, v0}, Lcarbon/widget/NavigationView$c;-><init>(Lcarbon/widget/NavigationView;Landroid/view/View;)V

    return-object p1
.end method


# virtual methods
.method public getMenu()Landroid/view/Menu;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/NavigationView;->i0:Lwc0;

    return-object v0
.end method

.method public setMenu(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Ld80;->e(Landroid/content/Context;I)Lwc0;

    move-result-object p1

    invoke-direct {p0, p1}, Lcarbon/widget/NavigationView;->setMenuInternal(Lwc0;)V

    return-void
.end method

.method public setMenu(Landroid/view/Menu;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Ld80;->f(Landroid/content/Context;Landroid/view/Menu;)Lwc0;

    move-result-object p1

    invoke-direct {p0, p1}, Lcarbon/widget/NavigationView;->setMenuInternal(Lwc0;)V

    return-void
.end method

.method public setOnItemClickedListener(Lcarbon/widget/RecyclerView$d;)V
    .locals 0

    iput-object p1, p0, Lcarbon/widget/NavigationView;->h0:Lcarbon/widget/RecyclerView$d;

    return-void
.end method

.method public final w()V
    .locals 2

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    return-void
.end method

.method public synthetic y(Landroid/view/ViewGroup;)Lta0;
    .locals 0

    invoke-direct {p0, p1}, Lcarbon/widget/NavigationView;->x(Landroid/view/ViewGroup;)Lta0;

    move-result-object p1

    return-object p1
.end method
