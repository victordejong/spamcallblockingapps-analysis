.class public Lcarbon/beta/BottomSheetLayout;
.super Lcarbon/widget/LinearLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcarbon/beta/BottomSheetLayout$a;
    }
.end annotation


# instance fields
.field public S:Lwc0;

.field public T:Lcarbon/widget/TextView;

.field public U:Lcarbon/widget/RecyclerView;

.field public V:Lcarbon/beta/BottomSheetLayout$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcarbon/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcarbon/beta/BottomSheetLayout$a;->a:Lcarbon/beta/BottomSheetLayout$a;

    iput-object p1, p0, Lcarbon/beta/BottomSheetLayout;->V:Lcarbon/beta/BottomSheetLayout$a;

    invoke-virtual {p0}, Lcarbon/beta/BottomSheetLayout;->s()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcarbon/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p1, Lcarbon/beta/BottomSheetLayout$a;->a:Lcarbon/beta/BottomSheetLayout$a;

    iput-object p1, p0, Lcarbon/beta/BottomSheetLayout;->V:Lcarbon/beta/BottomSheetLayout$a;

    invoke-virtual {p0}, Lcarbon/beta/BottomSheetLayout;->s()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcarbon/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object p1, Lcarbon/beta/BottomSheetLayout$a;->a:Lcarbon/beta/BottomSheetLayout$a;

    iput-object p1, p0, Lcarbon/beta/BottomSheetLayout;->V:Lcarbon/beta/BottomSheetLayout$a;

    invoke-virtual {p0}, Lcarbon/beta/BottomSheetLayout;->s()V

    return-void
.end method


# virtual methods
.method public getMenu()Landroid/view/Menu;
    .locals 1

    iget-object v0, p0, Lcarbon/beta/BottomSheetLayout;->S:Lwc0;

    return-object v0
.end method

.method public getStyle()Lcarbon/beta/BottomSheetLayout$a;
    .locals 1

    iget-object v0, p0, Lcarbon/beta/BottomSheetLayout;->V:Lcarbon/beta/BottomSheetLayout$a;

    return-object v0
.end method

.method public final s()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lm80;->carbon_bottomsheet:I

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    sget v0, Ll80;->carbon_bottomSheetTitle:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcarbon/widget/TextView;

    iput-object v0, p0, Lcarbon/beta/BottomSheetLayout;->T:Lcarbon/widget/TextView;

    sget v0, Ll80;->carbon_bottomSheetRecycler:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcarbon/widget/RecyclerView;

    iput-object v0, p0, Lcarbon/beta/BottomSheetLayout;->U:Lcarbon/widget/RecyclerView;

    return-void
.end method

.method public setMenu(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Ld80;->e(Landroid/content/Context;I)Lwc0;

    move-result-object p1

    iput-object p1, p0, Lcarbon/beta/BottomSheetLayout;->S:Lwc0;

    invoke-virtual {p0}, Lcarbon/beta/BottomSheetLayout;->t()V

    return-void
.end method

.method public setMenu(Landroid/view/Menu;)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Ld80;->f(Landroid/content/Context;Landroid/view/Menu;)Lwc0;

    move-result-object p1

    iput-object p1, p0, Lcarbon/beta/BottomSheetLayout;->S:Lwc0;

    invoke-virtual {p0}, Lcarbon/beta/BottomSheetLayout;->t()V

    return-void
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)V
    .locals 0

    return-void
.end method

.method public setStyle(Lcarbon/beta/BottomSheetLayout$a;)V
    .locals 0

    iput-object p1, p0, Lcarbon/beta/BottomSheetLayout;->V:Lcarbon/beta/BottomSheetLayout$a;

    invoke-virtual {p0}, Lcarbon/beta/BottomSheetLayout;->t()V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcarbon/beta/BottomSheetLayout;->T:Lcarbon/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcarbon/beta/BottomSheetLayout;->T:Lcarbon/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcarbon/beta/BottomSheetLayout;->t()V

    return-void
.end method

.method public final t()V
    .locals 5

    iget-object v0, p0, Lcarbon/beta/BottomSheetLayout;->S:Lwc0;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcarbon/beta/BottomSheetLayout;->U:Lcarbon/widget/RecyclerView;

    iget-object v1, p0, Lcarbon/beta/BottomSheetLayout;->V:Lcarbon/beta/BottomSheetLayout$a;

    sget-object v2, Lcarbon/beta/BottomSheetLayout$a;->a:Lcarbon/beta/BottomSheetLayout$a;

    if-ne v1, v2, :cond_1

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x3

    invoke-direct {v1, v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcarbon/beta/BottomSheetLayout;->S:Lwc0;

    invoke-virtual {v1}, Lwc0;->j()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcarbon/beta/BottomSheetLayout;->V:Lcarbon/beta/BottomSheetLayout$a;

    if-ne v1, v2, :cond_4

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->getGroupId()I

    move-result v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/MenuItem;

    invoke-interface {v4}, Landroid/view/MenuItem;->getGroupId()I

    move-result v4

    if-eq v2, v4, :cond_2

    new-instance v1, Lva0;

    invoke-direct {v1}, Lva0;-><init>()V

    invoke-virtual {v0, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v1, v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    new-instance v1, Ldb0;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lj80;->carbon_paddingHalf:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v1, v2}, Ldb0;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    new-instance v1, Lld0;

    const-class v2, Lbb0;

    iget-object v3, p0, Lcarbon/beta/BottomSheetLayout;->V:Lcarbon/beta/BottomSheetLayout$a;

    sget-object v4, Lcarbon/beta/BottomSheetLayout$a;->a:Lcarbon/beta/BottomSheetLayout$a;

    if-ne v3, v4, :cond_5

    sget-object v3, Lla0;->a:Lla0;

    goto :goto_2

    :cond_5
    sget-object v3, Lna0;->a:Lna0;

    :goto_2
    invoke-direct {v1, v2, v3}, Lld0;-><init>(Ljava/lang/Class;Lkd0;)V

    const-class v2, Ldb0;

    sget-object v3, Lma0;->a:Lma0;

    invoke-virtual {v1, v2, v3}, Lld0;->i(Ljava/lang/Class;Lkd0;)V

    const-class v2, Lva0;

    sget-object v3, Loa0;->a:Loa0;

    invoke-virtual {v1, v2, v3}, Lld0;->i(Ljava/lang/Class;Lkd0;)V

    invoke-virtual {v1, v0}, Lid0;->f(Ljava/util/List;)V

    iget-object v0, p0, Lcarbon/beta/BottomSheetLayout;->U:Lcarbon/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    return-void
.end method
