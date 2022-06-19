.class public final Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/GraphFragment;
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
        "Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/GraphFragment;",
        "Landroidx/fragment/app/Fragment;",
        "()V",
        "_binding",
        "Lcom/callapp/contacts/databinding/ProgressGraphLayoutBinding;",
        "adapter",
        "Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;",
        "getAdapter",
        "()Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;",
        "setAdapter",
        "(Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;)V",
        "binding",
        "getBinding",
        "()Lcom/callapp/contacts/databinding/ProgressGraphLayoutBinding;",
        "notifyDataSetChanged",
        "",
        "baseProgressBarData",
        "",
        "Lcom/callapp/contacts/activity/analytics/progressGraph/data/BaseProgressBarData;",
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
.field private a:Lcom/callapp/contacts/databinding/ProgressGraphLayoutBinding;

.field private b:Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 17
    new-instance v0, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/GraphFragment;->b:Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;

    return-void
.end method

.method private final getBinding()Lcom/callapp/contacts/databinding/ProgressGraphLayoutBinding;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/GraphFragment;->a:Lcom/callapp/contacts/databinding/ProgressGraphLayoutBinding;

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
            "+",
            "Lcom/callapp/contacts/activity/analytics/progressGraph/data/BaseProgressBarData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "baseProgressBarData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/GraphFragment;->b:Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;->a(Ljava/util/List;)V

    .line 22
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/GraphFragment;->b:Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-static {p1, p2}, Lcom/callapp/contacts/databinding/ProgressGraphLayoutBinding;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/callapp/contacts/databinding/ProgressGraphLayoutBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/GraphFragment;->a:Lcom/callapp/contacts/databinding/ProgressGraphLayoutBinding;

    .line 31
    invoke-direct {p0}, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/GraphFragment;->getBinding()Lcom/callapp/contacts/databinding/ProgressGraphLayoutBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/databinding/ProgressGraphLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    const-string p2, "binding.root"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public final onDestroyView()V
    .locals 1

    .line 41
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/GraphFragment;->a:Lcom/callapp/contacts/databinding/ProgressGraphLayoutBinding;

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 37
    invoke-direct {p0}, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/GraphFragment;->getBinding()Lcom/callapp/contacts/databinding/ProgressGraphLayoutBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/callapp/contacts/databinding/ProgressGraphLayoutBinding;->a:Landroidx/recyclerview/widget/RecyclerView;

    const-string p2, "binding.graphList"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/GraphFragment;->b:Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    return-void
.end method
