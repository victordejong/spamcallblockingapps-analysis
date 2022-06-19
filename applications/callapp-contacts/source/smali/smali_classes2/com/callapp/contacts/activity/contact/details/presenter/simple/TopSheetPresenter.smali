.class public Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;
.super Lcom/callapp/contacts/activity/contact/details/presenter/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter$TopSheetListener;
    }
.end annotation


# instance fields
.field private a:Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;

.field private b:Lcom/callapp/contacts/widget/ShadowBackGroundAnimationView;

.field private c:Lcom/callapp/contacts/popup/contact/AdapterGridView;

.field private d:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

.field private e:Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter$TopSheetListener;

.field private final f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/BasePresenter;-><init>()V

    .line 42
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter$1;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;->f:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;)Lcom/callapp/contacts/widget/ShadowBackGroundAnimationView;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;->b:Lcom/callapp/contacts/widget/ShadowBackGroundAnimationView;

    return-object p0
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;->setTopSheetState(I)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/widget/WidgetMetaData;",
            ">;)V"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;->c:Lcom/callapp/contacts/popup/contact/AdapterGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/popup/contact/AdapterGridView;->setNotifyOnChange(Z)V

    .line 174
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;->c:Lcom/callapp/contacts/popup/contact/AdapterGridView;

    invoke-virtual {v0}, Lcom/callapp/contacts/popup/contact/AdapterGridView;->clear()V

    .line 175
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;->c:Lcom/callapp/contacts/popup/contact/AdapterGridView;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/popup/contact/AdapterGridView;->addAll(Ljava/util/Collection;)V

    .line 176
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;->c:Lcom/callapp/contacts/popup/contact/AdapterGridView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/popup/contact/AdapterGridView;->setNotifyOnChange(Z)V

    .line 177
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;->c:Lcom/callapp/contacts/popup/contact/AdapterGridView;

    invoke-virtual {p1}, Lcom/callapp/contacts/popup/contact/AdapterGridView;->notifyDataSetChanged()V

    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;->d:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method private d()V
    .locals 5

    .line 166
    invoke-static {}, Lcom/callapp/contacts/manager/ActionsManager;->get()Lcom/callapp/contacts/manager/ActionsManager;

    move-result-object v0

    .line 167
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;->d:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/action/Action$ContextType;->CONTACT_DETAILS_ACTION_BOTTOM_SHEET:Lcom/callapp/contacts/action/Action$ContextType;

    .line 168
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/ActionsManager;->getContactDetailsBottomActionList()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    .line 167
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/callapp/contacts/manager/ActionsManager;->a(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/action/Action$ContextType;Ljava/util/Collection;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)Ljava/util/List;

    move-result-object v0

    .line 169
    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;->a(Ljava/util/List;)V

    return-void
.end method

.method private setTopSheetState(I)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;->a:Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->setState(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;->a:Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    return-void

    .line 64
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->c(Ljava/lang/Runnable;)V

    .line 65
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;->d:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter$2;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter$2;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;)V

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()V
    .locals 4

    .line 84
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;->d:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    if-eqz v0, :cond_2

    const v1, 0x7f0a0953

    .line 85
    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f08008f

    const v2, 0x7f060026

    .line 86
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-static {v0, v1, v3}, Lcom/callapp/contacts/util/ViewUtils;->c(Landroid/view/View;II)V

    .line 88
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;->d:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    const v3, 0x7f0a008d

    invoke-interface {v1, v3}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 89
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;->d:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    const v2, 0x7f0a0445

    invoke-interface {v1, v2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/widget/ShadowBackGroundAnimationView;

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;->b:Lcom/callapp/contacts/widget/ShadowBackGroundAnimationView;

    .line 90
    invoke-static {v1}, Lcom/callapp/contacts/util/ViewUtils;->d(Landroid/view/View;)V

    .line 91
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;->d:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;->CONTACT_DETAILS_SCREEN:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    if-ne v1, v2, :cond_0

    .line 92
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;->b:Lcom/callapp/contacts/widget/ShadowBackGroundAnimationView;

    new-instance v2, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter$3;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter$3;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;)V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/widget/ShadowBackGroundAnimationView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 102
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;->b:Lcom/callapp/contacts/widget/ShadowBackGroundAnimationView;

    new-instance v2, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter$4;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter$4;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;)V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/widget/ShadowBackGroundAnimationView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_0
    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 111
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setSoundEffectsEnabled(Z)V

    .line 112
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    .line 113
    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->a(Landroid/view/View;)Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;->a:Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;

    .line 114
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->setAllowUserDragging(Z)V

    .line 116
    new-instance v0, Lcom/callapp/contacts/popup/contact/AdapterGridView;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter$5;

    invoke-direct {v3, p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter$5;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;)V

    invoke-direct {v0, v1, v3}, Lcom/callapp/contacts/popup/contact/AdapterGridView;-><init>(Ljava/util/List;Lcom/callapp/contacts/popup/contact/AdapterGridView$onActionClickedListener;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;->c:Lcom/callapp/contacts/popup/contact/AdapterGridView;

    if-eqz v2, :cond_1

    .line 132
    invoke-virtual {v2, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;->d:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    const v1, 0x7f0a0248

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter$6;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter$6;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method public final c()V
    .locals 2

    .line 146
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;->d()V

    .line 147
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->b(Ljava/lang/Runnable;)V

    .line 148
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;->e:Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter$TopSheetListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 149
    invoke-interface {v0, v1, v1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter$TopSheetListener;->animateBottomBar(ZZ)V

    :cond_0
    return-void
.end method

.method public isTopSheetClosed()Z
    .locals 3

    .line 159
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;->a:Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 162
    :cond_0
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->getState()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;->d:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-void
.end method

.method public setTopSheetListener(Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter$TopSheetListener;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;->e:Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter$TopSheetListener;

    return-void
.end method
