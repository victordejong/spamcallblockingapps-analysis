.class public final Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\u000e\u001a\u00020\u000f2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011J$\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016J\u0008\u0010\u001b\u001a\u00020\u000fH\u0016J\u001a\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\u001d\u001a\u00020\u00142\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\u00048BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;",
        "Landroidx/fragment/app/Fragment;",
        "()V",
        "_binding",
        "Lcom/callapp/contacts/databinding/CircleGraphLayoutBinding;",
        "adapter",
        "Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter;",
        "getAdapter",
        "()Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter;",
        "setAdapter",
        "(Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter;)V",
        "binding",
        "getBinding",
        "()Lcom/callapp/contacts/databinding/CircleGraphLayoutBinding;",
        "notifyDataSetChanged",
        "",
        "circleGraphData",
        "",
        "Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroyView",
        "onViewCreated",
        "view",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private a:Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter;

.field private b:Lcom/callapp/contacts/databinding/CircleGraphLayoutBinding;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 18
    new-instance v0, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;->a:Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter;

    return-void
.end method

.method private final getBinding()Lcom/callapp/contacts/databinding/CircleGraphLayoutBinding;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;->b:Lcom/callapp/contacts/databinding/CircleGraphLayoutBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "circleGraphData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;->a:Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter;->a(Ljava/util/List;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-static {p1, p2}, Lcom/callapp/contacts/databinding/CircleGraphLayoutBinding;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/callapp/contacts/databinding/CircleGraphLayoutBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;->b:Lcom/callapp/contacts/databinding/CircleGraphLayoutBinding;

    .line 32
    invoke-direct {p0}, Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;->getBinding()Lcom/callapp/contacts/databinding/CircleGraphLayoutBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/databinding/CircleGraphLayoutBinding;->getRoot()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const-string p2, "binding.root"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public final onDestroyView()V
    .locals 1

    .line 48
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;->b:Lcom/callapp/contacts/databinding/CircleGraphLayoutBinding;

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 37
    invoke-direct {p0}, Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;->getBinding()Lcom/callapp/contacts/databinding/CircleGraphLayoutBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/callapp/contacts/databinding/CircleGraphLayoutBinding;->a:Landroidx/recyclerview/widget/RecyclerView;

    const-string p2, "binding.baseCircleGraph"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 38
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    .line 37
    invoke-direct {v0, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 42
    invoke-direct {p0}, Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;->getBinding()Lcom/callapp/contacts/databinding/CircleGraphLayoutBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/callapp/contacts/databinding/CircleGraphLayoutBinding;->a:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/EqualSpacingItemDecoration;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    const-string v2, "CallAppApplication.get()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070170

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {v0, v1}, Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/EqualSpacingItemDecoration;-><init>(I)V

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$h;

    const/4 v1, -0x1

    .line 2665
    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView$h;I)V

    .line 44
    invoke-direct {p0}, Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;->getBinding()Lcom/callapp/contacts/databinding/CircleGraphLayoutBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/callapp/contacts/databinding/CircleGraphLayoutBinding;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;->a:Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter;

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    return-void
.end method
