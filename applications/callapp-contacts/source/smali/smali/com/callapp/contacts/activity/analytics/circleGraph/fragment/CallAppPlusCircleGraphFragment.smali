.class public final Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CallAppPlusCircleGraphFragment;
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
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J(\u0010\u0014\u001a\u00020\u00152\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u00172\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001c0\u001aJ$\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0008\u0010!\u001a\u0004\u0018\u00010\"2\u0008\u0010#\u001a\u0004\u0018\u00010$H\u0016J\u0008\u0010%\u001a\u00020\u0015H\u0016J\u001a\u0010&\u001a\u00020\u00152\u0006\u0010\'\u001a\u00020\u001e2\u0008\u0010#\u001a\u0004\u0018\u00010$H\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u00020\u00048BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013\u00a8\u0006("
    }
    d2 = {
        "Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CallAppPlusCircleGraphFragment;",
        "Landroidx/fragment/app/Fragment;",
        "()V",
        "_binding",
        "Lcom/callapp/contacts/databinding/CallappPlusCircleGraphLayoutBinding;",
        "binding",
        "getBinding",
        "()Lcom/callapp/contacts/databinding/CallappPlusCircleGraphLayoutBinding;",
        "callAppPlusAdapter",
        "Lcom/callapp/contacts/activity/analytics/circleGraph/CallAppPlusCircleGraphAdapter;",
        "getCallAppPlusAdapter",
        "()Lcom/callapp/contacts/activity/analytics/circleGraph/CallAppPlusCircleGraphAdapter;",
        "setCallAppPlusAdapter",
        "(Lcom/callapp/contacts/activity/analytics/circleGraph/CallAppPlusCircleGraphAdapter;)V",
        "circleGraphAdapter",
        "Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter;",
        "getCircleGraphAdapter",
        "()Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter;",
        "setCircleGraphAdapter",
        "(Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter;)V",
        "notifyDataSetChanged",
        "",
        "circleGraphData",
        "",
        "Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;",
        "callAppPlusData",
        "",
        "Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;",
        "Lcom/callapp/contacts/activity/analytics/circleGraph/data/CallAppPlusData;",
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

.field private b:Lcom/callapp/contacts/activity/analytics/circleGraph/CallAppPlusCircleGraphAdapter;

.field private c:Lcom/callapp/contacts/databinding/CallappPlusCircleGraphLayoutBinding;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 20
    new-instance v0, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CallAppPlusCircleGraphFragment;->a:Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter;

    .line 21
    new-instance v0, Lcom/callapp/contacts/activity/analytics/circleGraph/CallAppPlusCircleGraphAdapter;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/analytics/circleGraph/CallAppPlusCircleGraphAdapter;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CallAppPlusCircleGraphFragment;->b:Lcom/callapp/contacts/activity/analytics/circleGraph/CallAppPlusCircleGraphAdapter;

    return-void
.end method

.method private final getBinding()Lcom/callapp/contacts/databinding/CallappPlusCircleGraphLayoutBinding;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CallAppPlusCircleGraphFragment;->c:Lcom/callapp/contacts/databinding/CallappPlusCircleGraphLayoutBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/List;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;",
            "Lcom/callapp/contacts/activity/analytics/circleGraph/data/CallAppPlusData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "circleGraphData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callAppPlusData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CallAppPlusCircleGraphFragment;->a:Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter;->a(Ljava/util/List;)V

    .line 27
    invoke-static {p2}, Lkotlin/a/ai;->d(Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 60
    new-instance p2, Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CallAppPlusCircleGraphFragment$notifyDataSetChanged$$inlined$sortedByDescending$1;

    invoke-direct {p2}, Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CallAppPlusCircleGraphFragment$notifyDataSetChanged$$inlined$sortedByDescending$1;-><init>()V

    check-cast p2, Ljava/util/Comparator;

    invoke-static {p1, p2}, Lkotlin/a/n;->a(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 27
    invoke-static {p1}, Lkotlin/a/ai;->a(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p1

    .line 28
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 29
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CallAppPlusData;

    .line 30
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CallAppPlusData;->getMustShow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 31
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CallAppPlusData;->getNumberOfIdentification()I

    move-result v1

    if-lez v1, :cond_0

    .line 33
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 36
    :cond_2
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CallAppPlusCircleGraphFragment;->b:Lcom/callapp/contacts/activity/analytics/circleGraph/CallAppPlusCircleGraphAdapter;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/analytics/circleGraph/CallAppPlusCircleGraphAdapter;->a(Ljava/util/List;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-static {p1, p2}, Lcom/callapp/contacts/databinding/CallappPlusCircleGraphLayoutBinding;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/callapp/contacts/databinding/CallappPlusCircleGraphLayoutBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CallAppPlusCircleGraphFragment;->c:Lcom/callapp/contacts/databinding/CallappPlusCircleGraphLayoutBinding;

    .line 45
    invoke-direct {p0}, Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CallAppPlusCircleGraphFragment;->getBinding()Lcom/callapp/contacts/databinding/CallappPlusCircleGraphLayoutBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/databinding/CallappPlusCircleGraphLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    const-string p2, "binding.root"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public final onDestroyView()V
    .locals 1

    .line 56
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CallAppPlusCircleGraphFragment;->c:Lcom/callapp/contacts/databinding/CallappPlusCircleGraphLayoutBinding;

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 50
    invoke-direct {p0}, Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CallAppPlusCircleGraphFragment;->getBinding()Lcom/callapp/contacts/databinding/CallappPlusCircleGraphLayoutBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/callapp/contacts/databinding/CallappPlusCircleGraphLayoutBinding;->b:Landroidx/recyclerview/widget/RecyclerView;

    const-string p2, "binding.callAppPlusDataList"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CallAppPlusCircleGraphFragment;->a:Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter;

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 51
    invoke-direct {p0}, Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CallAppPlusCircleGraphFragment;->getBinding()Lcom/callapp/contacts/databinding/CallappPlusCircleGraphLayoutBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/callapp/contacts/databinding/CallappPlusCircleGraphLayoutBinding;->a:Landroidx/recyclerview/widget/RecyclerView;

    const-string p2, "binding.callAppPlusCircleGraph"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CallAppPlusCircleGraphFragment;->b:Lcom/callapp/contacts/activity/analytics/circleGraph/CallAppPlusCircleGraphAdapter;

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 52
    invoke-direct {p0}, Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CallAppPlusCircleGraphFragment;->getBinding()Lcom/callapp/contacts/databinding/CallappPlusCircleGraphLayoutBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/callapp/contacts/databinding/CallappPlusCircleGraphLayoutBinding;->c:Landroid/view/View;

    const p2, 0x7f0600f3

    invoke-static {p2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method
