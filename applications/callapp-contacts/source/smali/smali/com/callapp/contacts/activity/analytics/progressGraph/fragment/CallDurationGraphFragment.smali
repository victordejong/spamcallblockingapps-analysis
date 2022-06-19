.class public final Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDurationGraphFragment;
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
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\"\u0010\u0011\u001a\u00020\u00122\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00142\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0014J$\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016J\u0008\u0010 \u001a\u00020\u0012H\u0016J\u001a\u0010!\u001a\u00020\u00122\u0006\u0010\"\u001a\u00020\u00192\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\u0008\"\u0004\u0008\r\u0010\nR\u0014\u0010\u000e\u001a\u00020\u00048BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006#"
    }
    d2 = {
        "Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDurationGraphFragment;",
        "Landroidx/fragment/app/Fragment;",
        "()V",
        "_binding",
        "Lcom/callapp/contacts/databinding/CallDurationGraphLayoutBinding;",
        "adapterA",
        "Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;",
        "getAdapterA",
        "()Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;",
        "setAdapterA",
        "(Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;)V",
        "adapterB",
        "getAdapterB",
        "setAdapterB",
        "binding",
        "getBinding",
        "()Lcom/callapp/contacts/databinding/CallDurationGraphLayoutBinding;",
        "notifyDataSetChanged",
        "",
        "profilePictureProgressBarData",
        "Ljava/util/ArrayList;",
        "Lcom/callapp/contacts/activity/analytics/progressGraph/data/ProfilePictureProgressBarData;",
        "callDurationData",
        "Lcom/callapp/contacts/activity/analytics/progressGraph/data/FavoriteCallersData;",
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
.field private a:Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;

.field private b:Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;

.field private c:Lcom/callapp/contacts/databinding/CallDurationGraphLayoutBinding;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 19
    new-instance v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDurationGraphFragment;->a:Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;

    .line 20
    new-instance v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDurationGraphFragment;->b:Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;

    return-void
.end method

.method private final getBinding()Lcom/callapp/contacts/databinding/CallDurationGraphLayoutBinding;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDurationGraphFragment;->c:Lcom/callapp/contacts/databinding/CallDurationGraphLayoutBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/activity/analytics/progressGraph/data/ProfilePictureProgressBarData;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/activity/analytics/progressGraph/data/FavoriteCallersData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "profilePictureProgressBarData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callDurationData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDurationGraphFragment;->a:Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;

    check-cast p2, Ljava/util/List;

    invoke-virtual {v0, p2}, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;->a(Ljava/util/List;)V

    .line 26
    iget-object p2, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDurationGraphFragment;->a:Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;->notifyDataSetChanged()V

    .line 27
    iget-object p2, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDurationGraphFragment;->b:Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;

    check-cast p1, Ljava/util/List;

    invoke-virtual {p2, p1}, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;->a(Ljava/util/List;)V

    .line 28
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDurationGraphFragment;->b:Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-static {p1, p2}, Lcom/callapp/contacts/databinding/CallDurationGraphLayoutBinding;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/callapp/contacts/databinding/CallDurationGraphLayoutBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDurationGraphFragment;->c:Lcom/callapp/contacts/databinding/CallDurationGraphLayoutBinding;

    .line 37
    invoke-direct {p0}, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDurationGraphFragment;->getBinding()Lcom/callapp/contacts/databinding/CallDurationGraphLayoutBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/databinding/CallDurationGraphLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    const-string p2, "binding.root"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public final onDestroyView()V
    .locals 1

    .line 49
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDurationGraphFragment;->c:Lcom/callapp/contacts/databinding/CallDurationGraphLayoutBinding;

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 43
    invoke-direct {p0}, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDurationGraphFragment;->getBinding()Lcom/callapp/contacts/databinding/CallDurationGraphLayoutBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/callapp/contacts/databinding/CallDurationGraphLayoutBinding;->c:Landroid/view/View;

    const p2, 0x7f0600f3

    invoke-static {p2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 44
    invoke-direct {p0}, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDurationGraphFragment;->getBinding()Lcom/callapp/contacts/databinding/CallDurationGraphLayoutBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/callapp/contacts/databinding/CallDurationGraphLayoutBinding;->b:Landroidx/recyclerview/widget/RecyclerView;

    const-string p2, "binding.callTimeList"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDurationGraphFragment;->a:Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 45
    invoke-direct {p0}, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDurationGraphFragment;->getBinding()Lcom/callapp/contacts/databinding/CallDurationGraphLayoutBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/callapp/contacts/databinding/CallDurationGraphLayoutBinding;->a:Landroidx/recyclerview/widget/RecyclerView;

    const-string p2, "binding.callTimeGraph"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDurationGraphFragment;->b:Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    return-void
.end method
