.class public abstract Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/interfaces/CallAppFilter;
.implements Lcom/callapp/contacts/activity/invite/OnSelectChangeListener;
.implements Lcom/callapp/contacts/widget/SimpleSearchBarFragment$SearchBarEvents;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$InviteFilter;,
        Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00c6\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\r\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008&\u0018\u0000 h2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0002hiB\u0005\u00a2\u0006\u0002\u0010\u0005J\n\u00108\u001a\u0004\u0018\u000109H&J\n\u0010:\u001a\u0004\u0018\u00010;H&J\u0008\u0010<\u001a\u00020=H\u0016J\n\u0010>\u001a\u0004\u0018\u000109H&J$\u0010?\u001a\u001e\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\u000e\u0018\u00010@H&J\n\u0010A\u001a\u0004\u0018\u00010;H&J\u0008\u0010B\u001a\u00020CH&J\u0006\u0010D\u001a\u00020EJ\u0006\u0010F\u001a\u00020EJ$\u0010G\u001a\u0002092\u0006\u0010H\u001a\u00020I2\u0008\u0010J\u001a\u0004\u0018\u00010K2\u0008\u0010L\u001a\u0004\u0018\u00010MH\u0016J\u0008\u0010N\u001a\u00020EH\u0016J\u0018\u0010O\u001a\u00020E2\u0006\u0010P\u001a\u00020\u000f2\u0006\u0010Q\u001a\u000209H\u0016J\u0010\u0010R\u001a\u00020E2\u0006\u0010P\u001a\u00020SH\u0016J\u0008\u0010T\u001a\u00020EH\u0016J\u0008\u0010U\u001a\u00020EH\u0016J\u0008\u0010V\u001a\u00020EH\u0016J(\u0010W\u001a\u00020E2\u0006\u0010X\u001a\u00020Y2\u0006\u0010Z\u001a\u00020C2\u0006\u0010[\u001a\u00020C2\u0006\u0010\\\u001a\u00020CH\u0016J\u0008\u0010]\u001a\u00020EH\u0016J\u0010\u0010^\u001a\u00020E2\u0006\u0010_\u001a\u00020`H\u0016J\u001a\u0010a\u001a\u00020E2\u0006\u0010Q\u001a\u0002092\u0008\u0010L\u001a\u0004\u0018\u00010MH\u0016J\u0008\u0010b\u001a\u00020EH\u0016J\u0018\u0010c\u001a\u00020E2\u0006\u0010d\u001a\u0002022\u0006\u0010e\u001a\u000200H\u0016J\u0008\u0010f\u001a\u000200H&J\u0008\u0010g\u001a\u000200H&R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u00020\u00078BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\"\u0010\u0015\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u000eX\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0011\"\u0004\u0008\u0017\u0010\u0018R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u001b\u001a\u00020\u001cX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u001a\u0010!\u001a\u00020\"X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R\u001a\u0010\'\u001a\u00020(X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010*\"\u0004\u0008+\u0010,R\u000e\u0010-\u001a\u00020.X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u000200X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u00101\u001a\u0004\u0018\u000102X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00083\u00104\"\u0004\u00085\u00106R\u0016\u00107\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006j"
    }
    d2 = {
        "Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Lcom/callapp/contacts/activity/interfaces/CallAppFilter;",
        "Lcom/callapp/contacts/activity/invite/OnSelectChangeListener;",
        "Lcom/callapp/contacts/widget/SimpleSearchBarFragment$SearchBarEvents;",
        "()V",
        "_binding",
        "Lcom/callapp/contacts/databinding/FragmentSearchAndSelectBinding;",
        "adapter",
        "Lcom/callapp/contacts/activity/invite/adapter/InviteVerticalItemsAdapter;",
        "binding",
        "getBinding",
        "()Lcom/callapp/contacts/databinding/FragmentSearchAndSelectBinding;",
        "checkedItems",
        "",
        "Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;",
        "getCheckedItems",
        "()Ljava/util/List;",
        "dataArray",
        "",
        "Lcom/callapp/contacts/activity/base/BaseViewTypeData;",
        "filterableVerticalItems",
        "getFilterableVerticalItems",
        "setFilterableVerticalItems",
        "(Ljava/util/List;)V",
        "filterableVerticalItemsLock",
        "",
        "mainRecyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "getMainRecyclerView",
        "()Landroidx/recyclerview/widget/RecyclerView;",
        "setMainRecyclerView",
        "(Landroidx/recyclerview/widget/RecyclerView;)V",
        "popupViewStub",
        "Landroid/view/ViewStub;",
        "getPopupViewStub",
        "()Landroid/view/ViewStub;",
        "setPopupViewStub",
        "(Landroid/view/ViewStub;)V",
        "progressBar",
        "Landroid/widget/ProgressBar;",
        "getProgressBar",
        "()Landroid/widget/ProgressBar;",
        "setProgressBar",
        "(Landroid/widget/ProgressBar;)V",
        "scrollStateTracker",
        "Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;",
        "shouldShowSuggestionItems",
        "",
        "source",
        "",
        "getSource",
        "()Ljava/lang/String;",
        "setSource",
        "(Ljava/lang/String;)V",
        "suggestionItems",
        "getBottomLayout",
        "Landroid/view/View;",
        "getBottomSectionData",
        "Lcom/callapp/contacts/model/SectionData;",
        "getFilter",
        "Landroid/widget/Filter;",
        "getHeaderLayout",
        "getSuggestionsAndContacts",
        "Landroid/util/Pair;",
        "getTopSectionData",
        "getViewType",
        "",
        "initView",
        "",
        "notifyDataChanged",
        "onCreateView",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroyView",
        "onGreySelectChange",
        "memoryContactItem",
        "view",
        "onInviteClicked",
        "Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;",
        "onOverflowRequested",
        "onSearchActionRequested",
        "onSearchBoxClicked",
        "onSearchTextChanged",
        "s",
        "",
        "start",
        "before",
        "count",
        "onSelectChange",
        "onStateIconClicked",
        "iconState",
        "Lcom/callapp/contacts/widget/TopBarFragment$TopBarIconStates;",
        "onViewCreated",
        "onVoiceSearchRequested",
        "performFilter",
        "text",
        "scrollToTop",
        "showSearchBox",
        "showShowAllButton",
        "Companion",
        "InviteFilter",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final e:Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$Companion;


# instance fields
.field private final a:Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;

.field public b:Landroidx/recyclerview/widget/RecyclerView;

.field public c:Landroid/widget/ProgressBar;

.field public d:Landroid/view/ViewStub;

.field private f:Lcom/callapp/contacts/activity/invite/adapter/InviteVerticalItemsAdapter;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/base/BaseViewTypeData;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/lang/Object;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Lcom/callapp/contacts/databinding/FragmentSearchAndSelectBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->e:Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 44
    new-instance v0, Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->a:Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->g:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->h:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->i:Ljava/lang/Object;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->j:Ljava/util/List;

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->l:Z

    return-void
.end method

.method public static final synthetic a(Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;)Ljava/lang/Object;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->i:Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic a(Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;Lcom/callapp/contacts/activity/invite/adapter/InviteVerticalItemsAdapter;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->f:Lcom/callapp/contacts/activity/invite/adapter/InviteVerticalItemsAdapter;

    return-void
.end method

.method public static final synthetic a(Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;Ljava/util/List;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->h:Ljava/util/List;

    return-void
.end method

.method public static final synthetic b(Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;)Ljava/util/List;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->g:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic c(Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->l:Z

    return p0
.end method

.method public static final synthetic d(Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;)Ljava/util/List;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->h:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic e(Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;)Lcom/callapp/contacts/activity/invite/adapter/InviteVerticalItemsAdapter;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->f:Lcom/callapp/contacts/activity/invite/adapter/InviteVerticalItemsAdapter;

    return-object p0
.end method

.method public static final synthetic f(Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;)Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->a:Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;

    return-object p0
.end method

.method public static final synthetic g(Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;)Lcom/callapp/contacts/databinding/FragmentSearchAndSelectBinding;
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->getBinding()Lcom/callapp/contacts/databinding/FragmentSearchAndSelectBinding;

    move-result-object p0

    return-object p0
.end method

.method private final getBinding()Lcom/callapp/contacts/databinding/FragmentSearchAndSelectBinding;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->m:Lcom/callapp/contacts/databinding/FragmentSearchAndSelectBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public a(Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;)V
    .locals 1

    const-string v0, "memoryContactItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;Landroid/view/View;)V
    .locals 1

    const-string v0, "memoryContactItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "view"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/callapp/contacts/widget/TopBarFragment$TopBarIconStates;)V
    .locals 1

    const-string v0, "iconState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/CharSequence;I)V
    .locals 0

    const-string p2, "s"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->getFilter()Landroid/widget/Filter;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 221
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->l:Z

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 4

    .line 196
    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 197
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;

    .line 198
    invoke-static {v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 203
    :goto_0
    sget-object v2, Lkotlin/v;->a:Lkotlin/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    monitor-exit v0

    .line 204
    invoke-direct {p0}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->getBinding()Lcom/callapp/contacts/databinding/FragmentSearchAndSelectBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/callapp/contacts/databinding/FragmentSearchAndSelectBinding;->a:Landroid/widget/FrameLayout;

    const-string v2, "binding.bottomContainer"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void

    :catchall_0
    move-exception v1

    .line 196
    monitor-exit v0

    throw v1
.end method

.method public abstract d()Z
.end method

.method public final e()V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->f:Lcom/callapp/contacts/activity/invite/adapter/InviteVerticalItemsAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/invite/adapter/InviteVerticalItemsAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public abstract getBottomLayout()Landroid/view/View;
.end method

.method public abstract getBottomSectionData()Lcom/callapp/contacts/model/SectionData;
.end method

.method public final getCheckedItems()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;",
            ">;"
        }
    .end annotation

    .line 290
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 291
    iget-object v1, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 292
    :try_start_0
    iget-object v2, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->j:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 293
    iget-object v2, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;

    .line 294
    invoke-static {v3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 295
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 299
    :cond_1
    sget-object v2, Lkotlin/v;->a:Lkotlin/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 187
    new-instance v0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$InviteFilter;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$InviteFilter;-><init>(Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;)V

    check-cast v0, Landroid/widget/Filter;

    return-object v0
.end method

.method protected final getFilterableVerticalItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->j:Ljava/util/List;

    return-object v0
.end method

.method public abstract getHeaderLayout()Landroid/view/View;
.end method

.method public final getMainRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    const-string v1, "mainRecyclerView"

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getProgressBar()Landroid/widget/ProgressBar;
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->c:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    const-string v1, "progressBar"

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public abstract getSuggestionsAndContacts()Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getTopSectionData()Lcom/callapp/contacts/model/SectionData;
.end method

.method public abstract getViewType()I
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-static {p1, p2}, Lcom/callapp/contacts/databinding/FragmentSearchAndSelectBinding;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/callapp/contacts/databinding/FragmentSearchAndSelectBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->m:Lcom/callapp/contacts/databinding/FragmentSearchAndSelectBinding;

    .line 65
    invoke-direct {p0}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->getBinding()Lcom/callapp/contacts/databinding/FragmentSearchAndSelectBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/databinding/FragmentSearchAndSelectBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    const-string p2, "binding.root"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 312
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 313
    iput-object v0, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->m:Lcom/callapp/contacts/databinding/FragmentSearchAndSelectBinding;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string v0, "EXTRA_SOURCE"

    .line 71
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->k:Ljava/lang/String;

    .line 73
    :cond_0
    invoke-direct {p0}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->getBinding()Lcom/callapp/contacts/databinding/FragmentSearchAndSelectBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/callapp/contacts/databinding/FragmentSearchAndSelectBinding;->e:Landroid/widget/ProgressBar;

    const-string v0, "binding.progressBar"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->c:Landroid/widget/ProgressBar;

    .line 74
    invoke-direct {p0}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->getBinding()Lcom/callapp/contacts/databinding/FragmentSearchAndSelectBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/callapp/contacts/databinding/FragmentSearchAndSelectBinding;->d:Landroid/view/ViewStub;

    const-string v0, "binding.popupViewStub"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->d:Landroid/view/ViewStub;

    const p2, 0x7f0a05a0

    .line 76
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string/jumbo p2, "view.findViewById(R.id.mainRecyclerView)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->b:Landroidx/recyclerview/widget/RecyclerView;

    const-string p2, "mainRecyclerView"

    if-nez p1, :cond_1

    .line 77
    invoke-static {p2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    .line 78
    :cond_1
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 79
    sget-object v0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$onViewCreated$2$1;->a:Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$onViewCreated$2$1;

    check-cast v0, Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 85
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$f;

    move-result-object p1

    .line 86
    instance-of v0, p1, Landroidx/recyclerview/widget/n;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 87
    check-cast p1, Landroidx/recyclerview/widget/n;

    .line 1071
    iput-boolean v1, p1, Landroidx/recyclerview/widget/n;->l:Z

    .line 91
    :cond_2
    iget-object p1, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->a:Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;

    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_3

    invoke-static {p2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 1109
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->getHeaderLayout()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1110
    invoke-direct {p0}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->getBinding()Lcom/callapp/contacts/databinding/FragmentSearchAndSelectBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/callapp/contacts/databinding/FragmentSearchAndSelectBinding;->b:Landroid/widget/FrameLayout;

    .line 1111
    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1112
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1115
    :cond_4
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->getBottomLayout()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1116
    invoke-direct {p0}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->getBinding()Lcom/callapp/contacts/databinding/FragmentSearchAndSelectBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/callapp/contacts/databinding/FragmentSearchAndSelectBinding;->a:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1120
    :cond_5
    new-instance p1, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;

    invoke-direct {p1}, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;-><init>()V

    .line 1121
    move-object p2, p0

    check-cast p2, Lcom/callapp/contacts/widget/SimpleSearchBarFragment$SearchBarEvents;

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->setSearchBarEventsListener(Lcom/callapp/contacts/widget/SimpleSearchBarFragment$SearchBarEvents;)V

    .line 1122
    invoke-virtual {p1, v1}, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->b(Z)V

    const/4 p2, 0x1

    .line 1123
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->setVoiceSearchHidden(Z)V

    const v0, 0x7f1205fc

    .line 1124
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->setSearchHintText(Ljava/lang/String;)V

    const v0, 0x7f060111

    .line 1125
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->setBackgroundColor(I)V

    const v0, 0x7f0805cd

    .line 1126
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->setBackgroundResource(I)V

    const v0, 0x7f06010e

    .line 1127
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->setSearchBoxTextColor(I)V

    .line 1128
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->a()Landroidx/fragment/app/s;

    move-result-object v0

    check-cast p1, Landroidx/fragment/app/Fragment;

    const v2, 0x7f0a07ae

    const/4 v3, 0x0

    .line 1293
    invoke-virtual {v0, v2, p1, v3}, Landroidx/fragment/app/s;->b(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/s;

    move-result-object p1

    .line 1128
    invoke-virtual {p1}, Landroidx/fragment/app/s;->b()I

    .line 1129
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->getView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0805ab

    const v2, 0x7f060026

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    const v4, 0x7f0600f3

    invoke-static {v4}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    invoke-static {p1, v0, v3, v4, p2}, Lcom/callapp/contacts/util/ViewUtils;->b(Landroid/view/View;IIII)V

    .line 1132
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->d()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1133
    invoke-direct {p0}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->getBinding()Lcom/callapp/contacts/databinding/FragmentSearchAndSelectBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/callapp/contacts/databinding/FragmentSearchAndSelectBinding;->g:Landroid/widget/TextView;

    .line 1134
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1135
    sget-object p2, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->a:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion;

    .line 1137
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const p2, 0x7f060088

    .line 1138
    invoke-static {p2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 1139
    invoke-static {p2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 p2, 0x2

    .line 1140
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1141
    new-instance v9, Landroid/text/SpannableString;

    const p2, 0x7f120604

    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-direct {v9, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const p2, 0x7f08058d

    .line 1143
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v3, p1

    .line 1135
    invoke-static/range {v3 .. v9}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion;->a(Landroid/widget/TextView;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/text/SpannableString;)V

    .line 1147
    new-instance p2, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$initView$$inlined$apply$lambda$1;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$initView$$inlined$apply$lambda$1;-><init>(Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1163
    :cond_6
    new-instance p1, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$initView$4;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$initView$4;-><init>(Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;)V

    .line 1179
    invoke-virtual {p1}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$initView$4;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method

.method protected final setFilterableVerticalItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->j:Ljava/util/List;

    return-void
.end method
