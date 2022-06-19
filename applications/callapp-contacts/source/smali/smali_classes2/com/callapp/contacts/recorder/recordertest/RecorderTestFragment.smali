.class public final Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroidx/lifecycle/u;
.implements Lcom/callapp/contacts/activity/interfaces/RecorderTestChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$RecorderTestFragmentEvents;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/fragment/app/Fragment;",
        "Landroid/view/View$OnTouchListener;",
        "Landroidx/lifecycle/u<",
        "Ljava/util/List<",
        "+",
        "Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;",
        ">;>;",
        "Lcom/callapp/contacts/activity/interfaces/RecorderTestChangedListener;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00c2\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u00002\u00020\u00012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00030\u00022\u00020\u00052\u00020\u0006:\u0001]B\u0005\u00a2\u0006\u0002\u0010\u0007J\u0008\u00102\u001a\u000203H\u0002J\u0008\u00104\u001a\u000205H\u0002J\u0010\u00106\u001a\u0002032\u0006\u00107\u001a\u000208H\u0016J\u0016\u00109\u001a\u0002032\u000c\u0010:\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u0016J$\u0010;\u001a\u00020<2\u0006\u0010=\u001a\u00020>2\u0008\u0010?\u001a\u0004\u0018\u00010@2\u0008\u0010A\u001a\u0004\u0018\u00010BH\u0016J\u0008\u0010C\u001a\u000203H\u0016J\u0008\u0010D\u001a\u000203H\u0016J\u0008\u0010E\u001a\u000203H\u0016J\u0006\u0010F\u001a\u000203J\u0008\u0010G\u001a\u000203H\u0016J\u001e\u0010H\u001a\u0002032\u0014\u0010:\u001a\u0010\u0012\u0004\u0012\u00020J\u0012\u0004\u0012\u00020K\u0018\u00010IH\u0016J\u001e\u0010L\u001a\u0002032\u0014\u0010M\u001a\u0010\u0012\u0004\u0012\u00020J\u0012\u0004\u0012\u00020N\u0018\u00010IH\u0016J\u0012\u0010O\u001a\u0002032\u0008\u0010P\u001a\u0004\u0018\u00010QH\u0016J\u0008\u0010R\u001a\u000203H\u0016J\u001c\u0010S\u001a\u00020+2\u0008\u0010T\u001a\u0004\u0018\u00010<2\u0008\u0010U\u001a\u0004\u0018\u00010VH\u0016J\u001a\u0010W\u001a\u0002032\u0006\u0010X\u001a\u00020<2\u0008\u0010A\u001a\u0004\u0018\u00010BH\u0016J\u0014\u0010Y\u001a\u0002032\u000c\u0010:\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003J\u000e\u0010Z\u001a\u0002032\u0006\u0010[\u001a\u00020\\R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u00020\t8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001a\u0010\u001b\u001a\u00020\u001cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u001a\u0010!\u001a\u00020\"X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R\u0014\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010(\u001a\u0004\u0018\u00010)X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010*\u001a\u00020+X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/R\u000e\u00100\u001a\u000201X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006^"
    }
    d2 = {
        "Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Landroidx/lifecycle/Observer;",
        "",
        "Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;",
        "Lcom/callapp/contacts/activity/interfaces/RecorderTestChangedListener;",
        "Landroid/view/View$OnTouchListener;",
        "()V",
        "_binding",
        "Lcom/callapp/contacts/databinding/RecorderTestFragmentBinding;",
        "binding",
        "getBinding",
        "()Lcom/callapp/contacts/databinding/RecorderTestFragmentBinding;",
        "callBarPresenter",
        "Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;",
        "cardsAdapter",
        "Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;",
        "getCardsAdapter",
        "()Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;",
        "setCardsAdapter",
        "(Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;)V",
        "eventBus",
        "Lcom/callapp/contacts/event/bus/EventBus;",
        "getEventBus",
        "()Lcom/callapp/contacts/event/bus/EventBus;",
        "setEventBus",
        "(Lcom/callapp/contacts/event/bus/EventBus;)V",
        "presenterContainer",
        "Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;",
        "getPresenterContainer",
        "()Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;",
        "setPresenterContainer",
        "(Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;)V",
        "presenterManager",
        "Lcom/callapp/contacts/activity/contact/details/PresenterManager;",
        "getPresenterManager",
        "()Lcom/callapp/contacts/activity/contact/details/PresenterManager;",
        "setPresenterManager",
        "(Lcom/callapp/contacts/activity/contact/details/PresenterManager;)V",
        "recorderTestDataList",
        "recorderTestFragmentEvents",
        "Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$RecorderTestFragmentEvents;",
        "shouldScroll",
        "",
        "getShouldScroll",
        "()Z",
        "setShouldScroll",
        "(Z)V",
        "viewModel",
        "Lcom/callapp/contacts/recorder/recordertest/RecorderTestViewModel;",
        "congratsPopUp",
        "",
        "getHangUpText",
        "Landroid/text/SpannableStringBuilder;",
        "onAttach",
        "context",
        "Landroid/content/Context;",
        "onChanged",
        "recorderTestData",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "onDestroyView",
        "onDetach",
        "onHangButtonClicked",
        "onPause",
        "onRecorderTestChanged",
        "Lkotlin/Pair;",
        "",
        "Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;",
        "onRecorderTestProgressChanged",
        "testProgressCounter",
        "",
        "onRecorderTestStatusChanged",
        "testStatus",
        "Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;",
        "onResume",
        "onTouch",
        "p0",
        "p1",
        "Landroid/view/MotionEvent;",
        "onViewCreated",
        "view",
        "scrollToNextTest",
        "smoothScrollToPosition",
        "index",
        "",
        "RecorderTestFragmentEvents",
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
.field private d:Lcom/callapp/contacts/recorder/recordertest/RecorderTestViewModel;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

.field private g:Lcom/callapp/contacts/event/bus/EventBus;

.field private h:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;

.field private i:Lcom/callapp/contacts/activity/contact/details/PresenterManager;

.field private j:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

.field private k:Z

.field private l:Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$RecorderTestFragmentEvents;

.field private m:Lcom/callapp/contacts/databinding/RecorderTestFragmentBinding;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 49
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 54
    new-instance v0, Lcom/callapp/contacts/event/bus/EventBus;

    invoke-direct {v0}, Lcom/callapp/contacts/event/bus/EventBus;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->g:Lcom/callapp/contacts/event/bus/EventBus;

    const/4 v1, 0x1

    .line 58
    iput-boolean v1, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->k:Z

    .line 84
    new-instance v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$1;

    sget-object v2, Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;->RECORDER_TEST_SCREEN:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    invoke-direct {v1, p0, v0, v2}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$1;-><init>(Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;Lcom/callapp/contacts/event/bus/EventBus;Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;)V

    check-cast v1, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    iput-object v1, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->j:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    .line 121
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->getContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;)V

    iput-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->i:Lcom/callapp/contacts/activity/contact/details/PresenterManager;

    .line 122
    sget-object v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager$Companion;

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager$Companion;->getAllRecordTest()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->e:Ljava/util/List;

    .line 124
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->g:Lcom/callapp/contacts/event/bus/EventBus;

    .line 125
    sget-object v1, Lcom/callapp/contacts/activity/interfaces/RecorderTestChangedListener;->c:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {v0, v1, p0}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 126
    sget-object v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->b:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$Companion;

    invoke-virtual {v1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$Companion;->get()Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    move-result-object v1

    .line 6102
    iput-object v0, v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    return-void
.end method

.method public static final synthetic a(Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;)Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->h:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;

    return-object p0
.end method

.method public static final synthetic a(Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;Lcom/callapp/contacts/recorder/recordertest/RecorderTestViewModel;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->d:Lcom/callapp/contacts/recorder/recordertest/RecorderTestViewModel;

    return-void
.end method

.method public static final synthetic b(Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;)Ljava/util/List;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->e:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic c(Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;)Lcom/callapp/contacts/recorder/recordertest/RecorderTestViewModel;
    .locals 1

    .line 49
    iget-object p0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->d:Lcom/callapp/contacts/recorder/recordertest/RecorderTestViewModel;

    if-nez p0, :cond_0

    const-string v0, "viewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic d(Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;)Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$RecorderTestFragmentEvents;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->l:Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$RecorderTestFragmentEvents;

    return-object p0
.end method

.method public static final synthetic e(Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;)Lcom/callapp/contacts/databinding/RecorderTestFragmentBinding;
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->getBinding()Lcom/callapp/contacts/databinding/RecorderTestFragmentBinding;

    move-result-object p0

    return-object p0
.end method

.method private final getBinding()Lcom/callapp/contacts/databinding/RecorderTestFragmentBinding;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->m:Lcom/callapp/contacts/databinding/RecorderTestFragmentBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    .line 293
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->l:Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$RecorderTestFragmentEvents;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$RecorderTestFragmentEvents;->getParallax()Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;->CLOSED:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->a(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;Z)V

    .line 294
    :cond_0
    invoke-direct {p0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->getBinding()Lcom/callapp/contacts/databinding/RecorderTestFragmentBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/callapp/contacts/databinding/RecorderTestFragmentBinding;->a:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->d(I)V

    return-void
.end method

.method public final getCardsAdapter()Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->f:Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

    return-object v0
.end method

.method public final getEventBus()Lcom/callapp/contacts/event/bus/EventBus;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->g:Lcom/callapp/contacts/event/bus/EventBus;

    return-object v0
.end method

.method final getHangUpText()Landroid/text/SpannableStringBuilder;
    .locals 8

    .line 236
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->e:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 400
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 401
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    .line 236
    invoke-virtual {v5}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->getTestStatus()Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

    move-result-object v6

    sget-object v7, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;->IDLE:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

    if-eq v6, v7, :cond_2

    invoke-virtual {v5}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->getTestStatus()Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

    move-result-object v5

    sget-object v6, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;->STARTED:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

    if-ne v5, v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :cond_2
    :goto_1
    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 402
    :cond_3
    check-cast v1, Ljava/util/List;

    .line 237
    check-cast v1, Ljava/lang/Iterable;

    .line 404
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 405
    check-cast v2, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    .line 237
    invoke-virtual {v2}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->getRecordTime()J

    move-result-wide v5

    long-to-int v2, v5

    add-int/2addr v1, v2

    goto :goto_2

    :cond_4
    const v0, 0xea60

    .line 239
    div-int v0, v1, v0

    .line 240
    div-int/lit16 v1, v1, 0x3e8

    rem-int/lit8 v1, v1, 0x3c

    .line 241
    sget-object v2, Lkotlin/jvm/internal/ag;->a:Lkotlin/jvm/internal/ag;

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v3

    invoke-static {v5, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v5, "%d:%02d"

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "java.lang.String.format(format, *args)"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez v0, :cond_5

    const v0, 0x7f120639

    .line 243
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    const v0, 0x7f12063a

    .line 245
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 247
    :goto_3
    new-instance v5, Landroid/text/SpannableStringBuilder;

    const v6, 0x7f12059a

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v4

    aput-object v0, v2, v3

    invoke-static {v6, v2}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-direct {v5, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 248
    new-instance v0, Landroid/text/SpannableString;

    const v1, 0x7f12059b

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 249
    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const-string v1, "line.separator"

    .line 250
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v5, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 251
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v5, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object v5
.end method

.method public final getPresenterContainer()Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->j:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    return-object v0
.end method

.method public final getPresenterManager()Lcom/callapp/contacts/activity/contact/details/PresenterManager;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->i:Lcom/callapp/contacts/activity/contact/details/PresenterManager;

    return-object v0
.end method

.method public final getShouldScroll()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->k:Z

    return v0
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 72
    :try_start_0
    invoke-virtual {p0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$RecorderTestFragmentEvents;

    iput-object p1, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->l:Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$RecorderTestFragmentEvents;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type com.callapp.contacts.recorder.recordertest.RecorderTestFragment.RecorderTestFragmentEvents"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :catch_0
    new-instance p1, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " must implement RecorderTestFragmentEvents "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final synthetic onChanged(Ljava/lang/Object;)V
    .locals 7

    .line 49
    check-cast p1, Ljava/util/List;

    const-string v0, "recorderTestData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4257
    sget-object v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->b:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$Companion;

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$Companion;->get()Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->isRecorderTestFinished()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 4258
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->g:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v3, Lcom/callapp/contacts/activity/interfaces/RecorderTestChangedListener;->c:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v4, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;->FINISHED:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;

    invoke-virtual {v0, v3, v4}, Lcom/callapp/contacts/event/bus/EventBus;->c(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 4259
    check-cast p1, Ljava/lang/Iterable;

    .line 4408
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 4409
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    .line 4259
    invoke-virtual {v4}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->getTestStatus()Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

    move-result-object v5

    sget-object v6, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;->DELETED:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

    if-eq v5, v6, :cond_1

    invoke-virtual {v4}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->getTestStatus()Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

    move-result-object v4

    sget-object v5, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;->FAILED:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

    if-eq v4, v5, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_0

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4410
    :cond_2
    check-cast v0, Ljava/util/List;

    goto :goto_4

    .line 4261
    :cond_3
    check-cast p1, Ljava/lang/Iterable;

    .line 4411
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 4412
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    .line 4261
    invoke-virtual {v4}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->getTestStatus()Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

    move-result-object v4

    sget-object v5, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;->DELETED:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

    if-eq v4, v5, :cond_5

    const/4 v4, 0x1

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_4

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 4413
    :cond_6
    check-cast v0, Ljava/util/List;

    .line 4257
    :goto_4
    iput-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->e:Ljava/util/List;

    .line 4264
    new-instance p1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onChanged$$inlined$let$lambda$1;

    invoke-direct {p1, v0, p0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onChanged$$inlined$let$lambda$1;-><init>(Ljava/util/List;Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;)V

    .line 4277
    invoke-virtual {p1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onChanged$$inlined$let$lambda$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-static {p1, p2}, Lcom/callapp/contacts/databinding/RecorderTestFragmentBinding;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/callapp/contacts/databinding/RecorderTestFragmentBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->m:Lcom/callapp/contacts/databinding/RecorderTestFragmentBinding;

    .line 137
    invoke-direct {p0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->getBinding()Lcom/callapp/contacts/databinding/RecorderTestFragmentBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/databinding/RecorderTestFragmentBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    const-string p2, "binding.root"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public final onDestroy()V
    .locals 4

    .line 217
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 218
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->g:Lcom/callapp/contacts/event/bus/EventBus;

    .line 219
    sget-object v1, Lcom/callapp/contacts/activity/interfaces/RecorderTestChangedListener;->c:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {v0, v1, p0}, Lcom/callapp/contacts/event/bus/EventBus;->b(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 220
    sget-object v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->b:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$Companion;

    invoke-virtual {v1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$Companion;->get()Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 1106
    iput-object v2, v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    .line 221
    sget-object v1, Lcom/callapp/contacts/event/listener/DestroyListener;->d:Lcom/callapp/contacts/event/bus/EventType;

    iget-object v2, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->j:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    const/4 v3, 0x0

    .line 2091
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    return-void
.end method

.method public final onDestroyView()V
    .locals 1

    .line 141
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 142
    iput-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->m:Lcom/callapp/contacts/databinding/RecorderTestFragmentBinding;

    return-void
.end method

.method public final onDetach()V
    .locals 1

    .line 79
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->l:Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$RecorderTestFragmentEvents;

    return-void
.end method

.method public final onPause()V
    .locals 4

    .line 226
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 227
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->g:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/event/listener/PauseListener;->a:Lcom/callapp/contacts/event/bus/EventType;

    iget-object v2, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->j:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    const/4 v3, 0x0

    .line 3091
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    return-void
.end method

.method public final onRecorderTestChanged(Lkotlin/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/n<",
            "Ljava/lang/Long;",
            "+",
            "Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final onRecorderTestProgressChanged(Lkotlin/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/n<",
            "Ljava/lang/Long;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final onRecorderTestStatusChanged(Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;)V
    .locals 7

    if-eqz p1, :cond_c

    .line 339
    sget-object v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;->IDLE:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_6

    sget-object v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->b:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$Companion;

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$Companion;->get()Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->isInRecorderTestMode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 340
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->l:Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$RecorderTestFragmentEvents;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$RecorderTestFragmentEvents;->getCallBarPresenter()Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->e()V

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->e:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    invoke-virtual {v4}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->getTestStatus()Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

    move-result-object v5

    sget-object v6, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;->APPLIED:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

    if-eq v5, v6, :cond_3

    invoke-virtual {v4}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->getTestStatus()Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

    move-result-object v4

    sget-object v5, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;->DONE:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

    if-ne v4, v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v4, 0x1

    :goto_1
    if-eqz v4, :cond_1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    check-cast v2, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    .line 344
    new-instance v0, Lkotlin/jvm/internal/ab$c;

    invoke-direct {v0}, Lkotlin/jvm/internal/ab$c;-><init>()V

    iget-object v4, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->e:Ljava/util/List;

    const-string v5, "$this$indexOf"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5297
    invoke-interface {v4, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 344
    iput v2, v0, Lkotlin/jvm/internal/ab$c;->a:I

    .line 346
    iget v2, v0, Lkotlin/jvm/internal/ab$c;->a:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_5

    .line 347
    iput v3, v0, Lkotlin/jvm/internal/ab$c;->a:I

    .line 349
    :cond_5
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    new-instance v3, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onRecorderTestStatusChanged$$inlined$let$lambda$1;

    invoke-direct {v3, v0, p0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onRecorderTestStatusChanged$$inlined$let$lambda$1;-><init>(Lkotlin/jvm/internal/ab$c;Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;)V

    check-cast v3, Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;J)V

    .line 356
    :cond_6
    sget-object v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;->FINISHED:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;

    if-ne p1, v0, :cond_9

    .line 357
    sget-object v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->b:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$Companion;

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$Companion;->get()Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->isInRecorderTestMode()Z

    move-result v0

    if-eqz v0, :cond_7

    const-wide/16 v2, 0x1f4

    goto :goto_3

    :cond_7
    const-wide/16 v2, 0xbb8

    .line 362
    :goto_3
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->l:Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$RecorderTestFragmentEvents;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$RecorderTestFragmentEvents;->getCallBarPresenter()Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 363
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->setHangButton(Z)V

    .line 365
    :cond_8
    invoke-direct {p0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->getBinding()Lcom/callapp/contacts/databinding/RecorderTestFragmentBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/callapp/contacts/databinding/RecorderTestFragmentBinding;->b:Landroid/widget/TextView;

    const-string v1, "binding.recorderTestTopTitle"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f120597

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onRecorderTestStatusChanged$$inlined$let$lambda$2;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onRecorderTestStatusChanged$$inlined$let$lambda$2;-><init>(Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;J)V

    .line 374
    :cond_9
    sget-object v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;->APPLIED:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;

    if-ne p1, v0, :cond_a

    .line 5330
    new-instance v0, Lcom/callapp/contacts/popup/contact/CongratsPopUp;

    new-instance v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$congratsPopUp$congratsPopUp$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$congratsPopUp$congratsPopUp$1;-><init>(Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-direct {v0, v1}, Lcom/callapp/contacts/popup/contact/CongratsPopUp;-><init>(Landroid/view/View$OnClickListener;)V

    .line 5334
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v0, Lcom/callapp/contacts/manager/popup/DialogPopup;

    invoke-virtual {v1, v2, v0}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    .line 377
    :cond_a
    sget-object v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;->STOPPED:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;

    if-ne p1, v0, :cond_b

    .line 378
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onRecorderTestStatusChanged$$inlined$let$lambda$3;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onRecorderTestStatusChanged$$inlined$let$lambda$3;-><init>(Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    .line 382
    :cond_b
    sget-object v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;->EMPTY:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;

    if-ne p1, v0, :cond_c

    .line 383
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onRecorderTestStatusChanged$$inlined$let$lambda$4;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onRecorderTestStatusChanged$$inlined$let$lambda$4;-><init>(Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    :cond_c
    return-void
.end method

.method public final onResume()V
    .locals 4

    .line 231
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 232
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->g:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/event/listener/ResumeListener;->d:Lcom/callapp/contacts/event/bus/EventType;

    iget-object v2, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->j:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    const/4 v3, 0x0

    .line 4091
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 395
    sget-object p1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->b:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$Companion;

    invoke-virtual {p1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$Companion;->get()Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->isInRecorderTestMode()Z

    move-result p1

    iput-boolean p1, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->k:Z

    return p1
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 148
    iget-object p1, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->l:Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$RecorderTestFragmentEvents;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$RecorderTestFragmentEvents;->getCallBarPresenter()Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    iput-object p1, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->h:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;

    .line 149
    invoke-direct {p0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->getBinding()Lcom/callapp/contacts/databinding/RecorderTestFragmentBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/callapp/contacts/databinding/RecorderTestFragmentBinding;->b:Landroid/widget/TextView;

    const v0, 0x7f0601ec

    .line 150
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f1205a0

    .line 151
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object p1, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->h:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onViewCreated$2;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onViewCreated$2;-><init>(Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;)V

    check-cast v0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/RecorderTestListener;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->setRecorderTestListener(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/RecorderTestListener;)V

    .line 160
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->i:Lcom/callapp/contacts/activity/contact/details/PresenterManager;

    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->j:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    check-cast v0, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->c(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    .line 161
    new-instance p1, Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

    invoke-virtual {p0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    invoke-direct {p1, v0, v1, p2}, Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority$CardEventsListener;)V

    iput-object p1, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->f:Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

    .line 164
    invoke-direct {p0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->getBinding()Lcom/callapp/contacts/databinding/RecorderTestFragmentBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/callapp/contacts/databinding/RecorderTestFragmentBinding;->a:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    .line 165
    move-object p2, p0

    check-cast p2, Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 166
    new-instance p2, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onViewCreated$3$1;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onViewCreated$3$1;-><init>(Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;Landroid/content/Context;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 192
    iget-object p2, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->f:Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

    check-cast p2, Lit/gmariotti/cardslib/library/recyclerview/a/a;

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->setAdapter(Lit/gmariotti/cardslib/library/recyclerview/a/a;)V

    .line 196
    new-instance p1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onViewCreated$4;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onViewCreated$4;-><init>(Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;)V

    .line 213
    invoke-virtual {p1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onViewCreated$4;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method

.method public final setShouldScroll(Z)V
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->k:Z

    return-void
.end method
