.class public Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;
.super Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/base/BaseCallAppFragment$OnScrollListener;
.implements Lcom/callapp/contacts/activity/base/BaseCallAppFragment$StoreItemAssetManagerProvider;
.implements Lcom/callapp/contacts/activity/calllog/CallLogFragment$ShowKeypadPromotionListener;
.implements Lcom/callapp/contacts/activity/contact/list/ViewPagerManager;
.implements Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadEvents;
.implements Lcom/callapp/contacts/activity/contact/list/search/ContactsClickEvents;
.implements Lcom/callapp/contacts/activity/interfaces/ContactScrollEvent;
.implements Lcom/callapp/contacts/activity/interfaces/KeypadParamsChanged;
.implements Lcom/callapp/contacts/activity/interfaces/KeypadVisibilityListener;
.implements Lcom/callapp/contacts/activity/interfaces/MultiSelectChangeListener;
.implements Lcom/callapp/contacts/activity/interfaces/SearchContactsEvents;
.implements Lcom/callapp/contacts/activity/marketplace/FreeStoreItemDialog$FreeStoreItemDialogEvents;
.implements Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController$Listener;
.implements Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuEvents;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$FirstTimeExperienceCallLogListener;,
        Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;,
        Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;,
        Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;

.field private static r:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;",
            ">;"
        }
    .end annotation
.end field

.field private D:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field private final E:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Ljava/lang/String;

.field private J:Lcom/callapp/contacts/activity/interfaces/KeypadVisibilityEvents;

.field private K:Z

.field private L:Lcom/callapp/contacts/event/bus/EventBus;

.field private M:Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController;

.field private N:Z

.field private O:Z

.field private P:Lcom/callapp/contacts/widget/CallAppToolbar;

.field private Q:Z

.field private R:Ljava/lang/String;

.field private S:Z

.field private T:Z

.field private U:Z

.field private final V:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

.field private W:Lcom/callapp/contacts/activity/interfaces/CallEventListener;

.field private X:Lcom/callapp/contacts/activity/interfaces/CallLogFirstTimeExperienceEventListener;

.field private Y:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

.field private b:Lcom/callapp/contacts/activity/contact/details/overlay/ImageAndTextPusherOverlayView;

.field private c:Z

.field private d:Landroidx/drawerlayout/widget/DrawerLayout;

.field private e:Lcom/callapp/contacts/manager/CallAppDrawerManager;

.field private f:Lcom/google/android/material/appbar/AppBarLayout;

.field private g:Landroid/view/ViewGroup;

.field private h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/activity/interfaces/SearchContactsFilter;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/activity/interfaces/KeypadLayoutChanges;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private l:Z

.field private m:I

.field private n:Landroid/content/Intent;

.field private final o:Lcom/callapp/contacts/activity/contact/details/PresenterManager;

.field private p:Lcom/callapp/contacts/activity/contact/list/TabsAdapter;

.field private q:Lcom/google/android/material/tabs/TabLayout;

.field private s:Lcom/callapp/contacts/widget/PagingTogglableViewPager;

.field private t:Landroid/widget/ImageView;

.field private u:Landroid/widget/ImageView;

.field private v:Lcom/callapp/contacts/manager/CallAppBarManager;

.field private w:Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;

.field private x:Lcom/callapp/contacts/activity/interfaces/SuperSkinWizardScrollListener;

.field private y:Lcom/callapp/contacts/widget/tutorial/TutorialViewController;

.field private z:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 322
    new-instance v0, Lcom/callapp/common/util/Objects;

    invoke-direct {v0}, Lcom/callapp/common/util/Objects;-><init>()V

    sput-object v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->a:Ljava/lang/Object;

    .line 339
    sget-object v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->UNSET:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    sput-object v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->r:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 250
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;-><init>()V

    const/4 v0, 0x1

    .line 324
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->c:Z

    .line 326
    new-instance v0, Lcom/callapp/contacts/manager/CallAppDrawerManager;

    invoke-direct {v0}, Lcom/callapp/contacts/manager/CallAppDrawerManager;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->e:Lcom/callapp/contacts/manager/CallAppDrawerManager;

    .line 329
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->h:Ljava/util/Set;

    .line 330
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->j:Ljava/util/Set;

    .line 331
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->k:Ljava/util/Set;

    const/4 v0, 0x0

    .line 333
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->l:Z

    .line 334
    iput v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->m:I

    .line 336
    new-instance v1, Lcom/callapp/contacts/activity/contact/details/PresenterManager;

    sget-object v2, Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;->CONTACT_LIST:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    invoke-direct {v1, v2}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;)V

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->o:Lcom/callapp/contacts/activity/contact/details/PresenterManager;

    const/4 v1, 0x0

    .line 347
    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->z:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    .line 348
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->A:Z

    .line 349
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->B:Z

    .line 352
    new-instance v2, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;

    invoke-direct {v2, p0, v1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$1;)V

    iput-object v2, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->E:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;

    .line 353
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->F:Z

    .line 354
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->G:Z

    .line 355
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->H:Z

    const-string v1, ""

    .line 356
    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->I:Ljava/lang/String;

    .line 358
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->K:Z

    .line 359
    new-instance v1, Lcom/callapp/contacts/event/bus/EventBus;

    invoke-direct {v1}, Lcom/callapp/contacts/event/bus/EventBus;-><init>()V

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->L:Lcom/callapp/contacts/event/bus/EventBus;

    .line 361
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->N:Z

    .line 362
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->O:Z

    .line 364
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->Q:Z

    .line 366
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->S:Z

    .line 367
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->T:Z

    .line 368
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->U:Z

    .line 370
    new-instance v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$1;

    sget-object v2, Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;->CONTACT_LIST:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    invoke-direct {v0, p0, v1, v2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$1;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;Lcom/callapp/contacts/event/bus/EventBus;Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->V:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    .line 413
    new-instance v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$2;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$2;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->W:Lcom/callapp/contacts/activity/interfaces/CallEventListener;

    .line 438
    new-instance v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$3;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$3;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->X:Lcom/callapp/contacts/activity/interfaces/CallLogFirstTimeExperienceEventListener;

    return-void
.end method

.method private A()V
    .locals 4

    .line 3484
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Permissions"

    const-string v2, "Default call screen"

    const-string v3, "Pop up Shown"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3485
    new-instance v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$36;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$36;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/app/Activity;ZLcom/callapp/contacts/manager/popup/ActivityResult;)V

    return-void
.end method

.method static synthetic A(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V
    .locals 1

    .line 24967
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->t:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 24968
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private synthetic B()V
    .locals 2

    .line 3506
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->getSlideMenuFragment()Lcom/callapp/contacts/widget/SlideMenuFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3508
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 3509
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->a()Landroidx/fragment/app/s;

    move-result-object v1

    .line 3510
    invoke-virtual {v1, v0}, Landroidx/fragment/app/s;->a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    move-result-object v0

    .line 3511
    invoke-virtual {v0}, Landroidx/fragment/app/s;->e()V

    :cond_0
    return-void
.end method

.method static synthetic B(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V
    .locals 1

    const/4 v0, 0x1

    .line 250
    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->d(Z)V

    return-void
.end method

.method private synthetic C()V
    .locals 1

    .line 2261
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->b:Lcom/callapp/contacts/activity/contact/details/overlay/ImageAndTextPusherOverlayView;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/overlay/ImageAndTextPusherOverlayView;->onCreate()V

    return-void
.end method

.method static synthetic C(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V
    .locals 1

    const/4 v0, 0x0

    .line 250
    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->setSlideMenuLockState(Z)V

    return-void
.end method

.method private synthetic D()V
    .locals 2

    .line 2171
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->b:Lcom/callapp/contacts/activity/contact/details/overlay/ImageAndTextPusherOverlayView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2172
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/details/overlay/ImageAndTextPusherOverlayView;->finishViewContainer(Z)V

    const/4 v0, 0x0

    .line 2173
    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->b:Lcom/callapp/contacts/activity/contact/details/overlay/ImageAndTextPusherOverlayView;

    :cond_0
    return-void
.end method

.method static synthetic D(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Z
    .locals 1

    const/4 v0, 0x0

    .line 250
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->Q:Z

    return v0
.end method

.method private static synthetic E()V
    .locals 3

    .line 578
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Permissions"

    const-string v2, "SMS reminder - Permission not granted"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic E(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Z
    .locals 0

    .line 250
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->G:Z

    return p0
.end method

.method static synthetic F(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Landroidx/drawerlayout/widget/DrawerLayout;
    .locals 0

    .line 250
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->d:Landroidx/drawerlayout/widget/DrawerLayout;

    return-object p0
.end method

.method private static synthetic F()V
    .locals 3

    .line 577
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Permissions"

    const-string v2, "SMS reminder - Permission granted"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic G(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;
    .locals 0

    .line 250
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->Y:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    return-object p0
.end method

.method static synthetic H(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .locals 0

    .line 250
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->D:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    return-object p0
.end method

.method static synthetic I(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V
    .locals 1

    .line 25325
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->j:Ljava/util/Set;

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25326
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->j:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/interfaces/KeypadLayoutChanges;

    .line 25327
    invoke-interface {v0}, Lcom/callapp/contacts/activity/interfaces/KeypadLayoutChanges;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic J(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V
    .locals 0

    .line 250
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->x()V

    return-void
.end method

.method static synthetic K(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V
    .locals 3

    .line 25353
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->s:Lcom/callapp/contacts/widget/PagingTogglableViewPager;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/PagingTogglableViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->getFragmentByPosition(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 25354
    instance-of v1, v0, Lcom/callapp/contacts/activity/interfaces/MultiSelectEvents;

    if-eqz v1, :cond_2

    .line 25356
    check-cast v0, Lcom/callapp/contacts/activity/interfaces/MultiSelectEvents;

    .line 25357
    invoke-interface {v0}, Lcom/callapp/contacts/activity/interfaces/MultiSelectEvents;->getSelectedContacts()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 25359
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 25364
    :cond_0
    new-instance v2, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$34;

    invoke-direct {v2, p0, v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$34;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;Lcom/callapp/contacts/activity/interfaces/MultiSelectEvents;)V

    invoke-static {p0, v1, v2}, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper;->a(Landroid/content/Context;Ljava/util/List;Lcom/callapp/contacts/action/ActionDoneListener;)V

    goto :goto_1

    .line 25360
    :cond_1
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p0

    const v0, 0x7f120493

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 26111
    invoke-virtual {p0, v0, v1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic L(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V
    .locals 9

    .line 26387
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->s:Lcom/callapp/contacts/widget/PagingTogglableViewPager;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/PagingTogglableViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->getFragmentByPosition(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 26389
    instance-of v1, v0, Lcom/callapp/contacts/activity/interfaces/MultiSelectEvents;

    if-eqz v1, :cond_4

    .line 26390
    check-cast v0, Lcom/callapp/contacts/activity/interfaces/MultiSelectEvents;

    .line 26391
    invoke-interface {v0}, Lcom/callapp/contacts/activity/interfaces/MultiSelectEvents;->getSelectedContacts()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 26393
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 26398
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 26399
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    .line 26400
    check-cast v3, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;

    .line 26401
    invoke-virtual {v3}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->getCallLogs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData$CallLogData;

    .line 26402
    invoke-virtual {v5}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData$CallLogData;->getCallId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 26405
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$35;

    invoke-direct {v8, p0, v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$35;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;Lcom/callapp/contacts/activity/interfaces/MultiSelectEvents;)V

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper;->a(Landroid/app/Activity;Ljava/util/List;IZZLcom/callapp/contacts/action/ActionDoneListener;)V

    goto :goto_2

    .line 26394
    :cond_3
    :goto_1
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p0

    const v0, 0x7f120493

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 27111
    invoke-virtual {p0, v0, v1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_4
    :goto_2
    return-void
.end method

.method static synthetic M(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Ljava/lang/String;
    .locals 0

    .line 250
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->I:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic N(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Z
    .locals 0

    .line 250
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->isTooltipShowing()Z

    move-result p0

    return p0
.end method

.method public static a(Landroid/app/Application;)Landroid/content/Intent;
    .locals 2

    .line 14299
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p0, 0x10000000

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "com.android.phone.action.BLOCKED"

    .line 2321
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/callapp/contacts/model/objectbox/BirthdayData;)Landroid/content/Intent;
    .locals 7

    .line 2304
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p0, 0x10000000

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p0

    .line 2305
    invoke-static {p1}, Lcom/callapp/contacts/model/objectbox/BirthdayData;->birthdayPojoToReminder(Lcom/callapp/contacts/model/objectbox/BirthdayData;)Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;

    move-result-object v0

    const-string v1, "reminder"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "com.callapp.contacts/reexecuteIntent"

    .line 2306
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "tab"

    const-string v1, "REMINDERS"

    .line 2307
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "START_BIRTHDAY_POPUP"

    const/4 v1, 0x1

    .line 2308
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2309
    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/BirthdayData;->getContactId()J

    move-result-wide v2

    const/4 v0, 0x0

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    new-array v1, v1, [Ljava/lang/Object;

    .line 2310
    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/BirthdayData;->getContactId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "callapp://reminder/%s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    .line 2312
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/BirthdayData;->getSocialNetId()I

    move-result v2

    .line 2313
    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/BirthdayData;->getSocialProfileId()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 2314
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v0

    aput-object p1, v3, v1

    const-string p1, "callapp://reminder/%s/%s"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :goto_0
    return-object p0
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->u:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;I)Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;
    .locals 0

    .line 250
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->getStateByPageIndex(I)Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/callapp/contacts/event/bus/EventBus;
    .locals 0

    .line 250
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->L:Lcom/callapp/contacts/event/bus/EventBus;

    return-object p0
.end method

.method private a(IIILjava/lang/String;Lcom/callapp/contacts/activity/contact/list/PusherManager$PusherStates;)V
    .locals 19

    move-object/from16 v10, p0

    .line 2211
    new-instance v11, Lcom/callapp/contacts/activity/contact/details/overlay/ImageAndTextPusherOverlayView;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    new-instance v8, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$27;

    move-object/from16 v15, p4

    move-object/from16 v0, p5

    invoke-direct {v8, v10, v0, v15}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$27;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;Lcom/callapp/contacts/activity/contact/list/PusherManager$PusherStates;Ljava/lang/String;)V

    new-instance v9, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$28;

    invoke-direct {v9, v10}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$28;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V

    const v2, 0x7f08034f

    const/4 v3, -0x1

    move-object v0, v11

    move-object/from16 v1, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    invoke-direct/range {v0 .. v9}, Lcom/callapp/contacts/activity/contact/details/overlay/ImageAndTextPusherOverlayView;-><init>(Landroid/content/Context;IILandroid/graphics/PorterDuff$Mode;IIILandroid/view/View$OnClickListener;Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$OverlayViewListener;)V

    iput-object v11, v10, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->b:Lcom/callapp/contacts/activity/contact/details/overlay/ImageAndTextPusherOverlayView;

    .line 2260
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/list/-$$Lambda$ContactsListActivity$irBiqFjtu7ZftO5OlZl9TG_BD_8;

    invoke-direct {v1, v10}, Lcom/callapp/contacts/activity/contact/list/-$$Lambda$ContactsListActivity$irBiqFjtu7ZftO5OlZl9TG_BD_8;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    .line 2263
    iput-boolean v0, v10, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->c:Z

    .line 2265
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v12

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v13, "Pusher"

    const-string v14, "Pusher created"

    const-wide/16 v16, 0x0

    move-object/from16 v18, v0

    invoke-virtual/range {v12 .. v18}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    return-void
.end method

.method private synthetic a(Landroid/app/Activity;)V
    .locals 0

    .line 22020
    new-instance p1, Lcom/callapp/contacts/activity/contact/list/-$$Lambda$ContactsListActivity$_CG-2GQ4VtH1Zijq23sIjy4AMME;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/activity/contact/list/-$$Lambda$ContactsListActivity$_CG-2GQ4VtH1Zijq23sIjy4AMME;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V

    invoke-static {p0, p1}, Lcom/callapp/contacts/util/Activities;->c(Landroid/app/Activity;Lcom/callapp/contacts/manager/popup/PopupDoneListener;)V

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "EXTRA_BRING_TO_FRONT_RETRY"

    const/4 v1, 0x0

    .line 1207
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1210
    :cond_0
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->b(Landroid/content/Intent;)V

    const-string v0, "future_target_index_key"

    .line 1211
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1212
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager;->get()Lcom/callapp/contacts/manager/NotificationManager;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/callapp/contacts/manager/NotificationManager;->c(I)V

    .line 1215
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extra_default_phone_app_from_watch"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1216
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->A()V

    .line 1219
    :cond_2
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->p()Z

    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 5

    if-eqz p1, :cond_5

    const-string v0, "from_sync_progress"

    const/4 v1, 0x0

    .line 1621
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "sync_progress_no_internet"

    .line 1623
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 1624
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "sync_progress_screen_on"

    .line 1625
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "sync_progress_low_battery"

    .line 1626
    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/callapp/contacts/util/PowerUtils;->isConnectedToPower()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz v0, :cond_2

    const p1, 0x7f120692

    .line 1627
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    if-eqz v3, :cond_3

    const p1, 0x7f120695

    .line 1628
    :goto_1
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    const p1, 0x7f120690

    goto :goto_1

    :cond_4
    const p1, 0x7f120696

    .line 1629
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1631
    :goto_2
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->a(Ljava/lang/String;Z)V

    :cond_5
    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 768
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->j()V

    return-void
.end method

.method private a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;Z)V
    .locals 5

    .line 1964
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->getState()Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->c(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;)Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->CALL_LOG:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->c(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;)Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->CALL_LOG:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    if-eq v0, v1, :cond_0

    .line 1967
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->da:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->set(Ljava/lang/Object;)V

    .line 1968
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/CallLogLastSeenTimestampEventListener;->c:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v2, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->LAST_SEEN_CALL_LOG_TIMESTAMP:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/event/bus/EventBus;->c(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 1972
    :cond_0
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->isSlideMenuOpen()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1973
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->d:Landroidx/drawerlayout/widget/DrawerLayout;

    const v2, 0x800003

    invoke-virtual {v0, v2, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->a(IZ)V

    .line 1976
    :cond_1
    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->e(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->r:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->e(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1977
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->E:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;

    sget-object v2, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->ON_LIST_MULTI_SELECT_ENDED:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    invoke-static {v0, v2, p2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;Z)V

    .line 1982
    :cond_2
    sget-object v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$37;->a:[I

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const-string v2, "CL Screen - with keypad"

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 1985
    :pswitch_1
    invoke-direct {p0, v4}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->setupContentContainer(I)V

    .line 1986
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->P:Lcom/callapp/contacts/widget/CallAppToolbar;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/CallAppToolbar;->a()V

    .line 1987
    invoke-direct {p0, p2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->d(Z)V

    goto/16 :goto_2

    .line 2003
    :pswitch_2
    invoke-direct {p0, v4}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->setupContentContainer(I)V

    .line 2004
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->E:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;

    sget-object v2, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->ON_CONTACT_LIST_MULTI_SELECT_STARTED:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    invoke-static {v0, v2, p2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;Z)V

    const-string v2, "CL Screen - multi select"

    goto/16 :goto_2

    .line 2007
    :pswitch_3
    invoke-direct {p0, v1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->setupContentContainer(I)V

    .line 2008
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->E:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;

    sget-object v2, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->ON_CALL_LOG_FIRST_EXPERIENCE_START:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    invoke-static {v0, v2, p2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;Z)V

    .line 2009
    invoke-direct {p0, v1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->f(Z)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_3

    const v0, 0x7f0a0823

    .line 2011
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 2012
    invoke-static {p2, v3}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 2013
    invoke-static {p2}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->c(Landroid/view/View;)V

    .line 2015
    :cond_3
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->s:Lcom/callapp/contacts/widget/PagingTogglableViewPager;

    invoke-virtual {p2, v1}, Lcom/callapp/contacts/widget/PagingTogglableViewPager;->setPagingEnabled(Z)V

    .line 2016
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->getBottomBarPresenter()Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->b()V

    .line 2017
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->x()V

    .line 2018
    invoke-static {}, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLog;->get()Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLog;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLog;->b()V

    goto :goto_1

    .line 2042
    :pswitch_4
    invoke-direct {p0, v1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->setupContentContainer(I)V

    .line 2043
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->E:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;

    sget-object v2, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->ON_CALL_LOG_LIST_MULTI_SELECT_STARTED:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    invoke-static {v0, v2, p2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;Z)V

    .line 2044
    invoke-direct {p0, v4}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->h(Z)V

    const-string v2, "CL Screen - History multi"

    goto :goto_2

    .line 2024
    :pswitch_5
    invoke-direct {p0, v1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->setupContentContainer(I)V

    .line 2026
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->E:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;

    sget-object v2, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->ON_CALL_LOG_FIRST_EXPERIENCE_FINISH:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    invoke-static {v0, v2, p2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;Z)V

    .line 2028
    new-instance p2, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$25;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$25;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V

    .line 2035
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$25;->execute()Lcom/callapp/contacts/manager/task/Task;

    .line 2037
    invoke-direct {p0, v1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->h(Z)V

    const-string v2, "CL Screen - History"

    goto :goto_0

    .line 1996
    :pswitch_6
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->E:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;

    sget-object v2, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->ON_TAB_CHANGED_TO_CONTACTS_WITHOUT_KEYPAD:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    invoke-static {v0, v2, p2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;Z)V

    .line 1997
    invoke-direct {p0, v4}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->setupContentContainer(I)V

    .line 1999
    invoke-direct {p0, v1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->h(Z)V

    const-string v2, "CL Screen - without keypad"

    :goto_0
    const/4 v1, 0x1

    goto :goto_2

    .line 1991
    :pswitch_7
    invoke-direct {p0, v4}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->setupContentContainer(I)V

    .line 1992
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->E:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;

    sget-object v3, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->ON_DIALER_PRESSED:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    invoke-static {v0, v3, p2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;Z)V

    goto :goto_2

    :goto_1
    move-object v2, v3

    .line 2053
    :goto_2
    sget-object p2, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->r:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    if-eq p1, p2, :cond_4

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 2054
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->b(Ljava/lang/String;)V

    .line 2057
    :cond_4
    sput-object p1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->r:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    if-eqz v1, :cond_5

    .line 2060
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->c()V

    return-void

    .line 2062
    :cond_5
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->b()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;Landroid/content/Intent;)V
    .locals 0

    .line 250
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->a(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;)V
    .locals 0

    .line 250
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->setState(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;Ljava/lang/String;)V
    .locals 0

    .line 250
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 250
    invoke-direct {p0, p1, v0, p2, v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->a(Ljava/lang/String;ZZZ)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;ZZ)V
    .locals 6

    .line 28093
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->a()Landroidx/fragment/app/s;

    move-result-object v0

    .line 28095
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "KEYPAD_FRAGMENT_TAG"

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;

    if-nez v1, :cond_0

    xor-int/lit8 v1, p2, 0x1

    .line 28097
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->D:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->D:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v4}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v1, v3, v4, v5}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a(ZIII)Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;

    move-result-object v1

    :cond_0
    if-eqz p1, :cond_3

    const p1, 0x7f0a0547

    .line 28100
    invoke-virtual {v0, p1, v1, v2}, Landroidx/fragment/app/s;->b(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/s;

    .line 28101
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->f()Z

    move-result p1

    if-nez p1, :cond_1

    .line 28102
    invoke-virtual {v0}, Landroidx/fragment/app/s;->b()I

    goto :goto_0

    .line 28104
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/s;->c()I

    .line 28106
    :goto_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 28169
    iget-boolean p1, p1, Landroidx/fragment/app/FragmentManager;->v:Z

    if-nez p1, :cond_2

    .line 28107
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->b()Z

    .line 28109
    :cond_2
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->y:Lcom/callapp/contacts/widget/tutorial/TutorialViewController;

    if-eqz p0, :cond_4

    .line 28110
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->c()V

    return-void

    .line 28113
    :cond_3
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->J:Lcom/callapp/contacts/activity/interfaces/KeypadVisibilityEvents;

    if-eqz p1, :cond_4

    xor-int/lit8 p2, p2, 0x1

    .line 28115
    new-instance v2, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$26;

    invoke-direct {v2, p0, v0, v1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$26;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;Landroidx/fragment/app/s;Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;)V

    invoke-interface {p1, p2, v2}, Lcom/callapp/contacts/activity/interfaces/KeypadVisibilityEvents;->a(ZLandroid/animation/Animator$AnimatorListener;)V

    :cond_4
    return-void
.end method

.method private static a(Lcom/callapp/contacts/widget/ImageViewWithTopMark;Z)V
    .locals 0

    if-eqz p0, :cond_0

    .line 2163
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/ImageViewWithTopMark;->setDrawCircle(Z)V

    .line 2164
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/ImageViewWithTopMark;->requestLayout()V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/Class;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1580
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1581
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->startActivity(Landroid/content/Intent;)V

    .line 1583
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->finish()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 992
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->F:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 993
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->F:Z

    .line 994
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Keypad Usage"

    invoke-virtual {v0, v1, p1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 734
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p2

    new-instance v0, Lcom/callapp/contacts/activity/contact/list/-$$Lambda$ContactsListActivity$_9Xp4ZKYwIhwhmH63uHPvbGtLmE;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/contact/list/-$$Lambda$ContactsListActivity$_9Xp4ZKYwIhwhmH63uHPvbGtLmE;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 9

    const v0, 0x7f120242

    if-eqz p2, :cond_0

    .line 1639
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p2

    new-instance v8, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$19;

    invoke-direct {v6, p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$19;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V

    new-instance v7, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$20;

    invoke-direct {v7, p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$20;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V

    const-string v4, "Visit Setting & Enable Internet"

    const-string v5, "Later"

    move-object v1, v8

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    invoke-virtual {p2, p0, v8}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void

    .line 1654
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p2

    new-instance v8, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f1204ea

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$21;

    invoke-direct {v6, p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$21;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V

    const/4 v7, 0x0

    move-object v1, v8

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    invoke-virtual {p2, p0, v8}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method

.method private a(Ljava/lang/String;ZZZ)V
    .locals 2

    .line 977
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->h:Ljava/util/Set;

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 980
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->I:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 983
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/interfaces/SearchContactsFilter;

    .line 984
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/callapp/contacts/activity/interfaces/SearchContactsFilter;->a(Ljava/lang/String;ZZZ)V

    goto :goto_0

    .line 987
    :cond_0
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->I:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3105
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3106
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/activity/contact/list/ContactListFragmentMarker;

    .line 3107
    invoke-interface {v2}, Lcom/callapp/contacts/activity/contact/list/ContactListFragmentMarker;->getFragmentIconResId()I

    move-result v3

    if-eqz v3, :cond_0

    .line 3109
    iget-object v4, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->q:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v4, v1}, Lcom/google/android/material/tabs/TabLayout;->a(I)Lcom/google/android/material/tabs/TabLayout$f;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 3111
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0d00b3

    iget-object v7, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->q:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v5, v6, v7, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_0

    const v6, 0x7f0a08d3

    .line 3113
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/callapp/contacts/widget/ImageViewWithTopMark;

    .line 3114
    invoke-virtual {v6, v3}, Lcom/callapp/contacts/widget/ImageViewWithTopMark;->setImageResource(I)V

    .line 3115
    invoke-virtual {v4, v5}, Lcom/google/android/material/tabs/TabLayout$f;->a(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout$f;

    .line 20149
    invoke-interface {p1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 3116
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 20998
    iput-object v2, v4, Lcom/google/android/material/tabs/TabLayout$f;->a:Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;)Z
    .locals 0

    .line 250
    invoke-static {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->e(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;Z)Z
    .locals 0

    .line 250
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->K:Z

    return p1
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;I)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 250
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->getFragmentByPosition(I)Landroidx/fragment/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;)Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;
    .locals 0

    .line 250
    invoke-static {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->d(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;)Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->I:Ljava/lang/String;

    return-object p1
.end method

.method private b(Landroid/content/Intent;)V
    .locals 14

    .line 1227
    const-class v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1228
    invoke-virtual {v1}, Landroid/net/Uri;->isHierarchical()Z

    move-result v2

    if-eqz v2, :cond_4

    :try_start_0
    const-string v2, "callapp-source"

    .line 1230
    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1231
    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1232
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->fj:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v3, v2}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    :cond_0
    const-string v3, "callapp-medium"

    .line 1235
    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1236
    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1237
    sget-object v4, Lcom/callapp/contacts/manager/preferences/Prefs;->fk:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v4, v3}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    :cond_1
    const-string v4, "callapp-campaign"

    .line 1240
    invoke-virtual {v1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1241
    invoke-static {v4}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1242
    sget-object v5, Lcom/callapp/contacts/manager/preferences/Prefs;->fl:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v5, v4}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    :cond_2
    const-string v5, "callapp-term"

    .line 1245
    invoke-virtual {v1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1246
    invoke-static {v5}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1247
    sget-object v6, Lcom/callapp/contacts/manager/preferences/Prefs;->fm:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v6, v5}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 1250
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Deeplink tracking - source: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", medium: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", campaign: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", term: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "Error while trying to read deeplink parameters"

    .line 1252
    invoke-static {v0, v2, v3}, Lcom/callapp/contacts/util/CLog;->b(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1256
    :cond_4
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1257
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->r()V

    return-void

    .line 1261
    :cond_5
    new-instance v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$16;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$16;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V

    .line 1272
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$16;->execute()Lcom/callapp/contacts/manager/task/Task;

    .line 1275
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->z:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    if-nez v0, :cond_6

    .line 1277
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/popup/PopupManager;->a()V

    .line 1280
    :cond_6
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    .line 1281
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 1282
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 1284
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->d(Landroid/content/Intent;)Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_8

    .line 1288
    sget-object v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->DIALER:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    invoke-static {v4, v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1289
    iput-boolean v5, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->B:Z

    .line 1290
    invoke-direct {p0, v4, v5}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;Z)V

    goto/16 :goto_5

    .line 1292
    :cond_7
    invoke-direct {p0, v4}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->setState(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;)V

    goto/16 :goto_5

    :cond_8
    const-string v4, "android.intent.action.MAIN"

    .line 1294
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    if-eqz v3, :cond_a

    const-string v0, "from"

    .line 1297
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1298
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1299
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1300
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1301
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1303
    :cond_9
    invoke-static {v0, v1}, Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 1308
    :cond_a
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->cZ:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    invoke-direct {p0, v0, v5}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;Z)V

    goto/16 :goto_5

    :cond_b
    if-eqz v1, :cond_e

    .line 1309
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v7, "tel"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v7, "voicemail"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1310
    :cond_c
    iput-boolean v6, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->K:Z

    .line 1311
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_d

    .line 1313
    invoke-static {}, Lcom/callapp/contacts/activity/contact/list/search/T9Helper;->getT9TextFilter()Landroid/text/InputFilter;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-interface/range {v7 .. v13}, Landroid/text/InputFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1314
    invoke-direct {p0, v0, v6, v6, v5}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->a(Ljava/lang/String;ZZZ)V

    .line 1316
    :cond_d
    sget-object v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->DIALER:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    invoke-direct {p0, v0, v5}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;Z)V

    goto/16 :goto_5

    :cond_e
    const-string v1, "android.intent.action.DIAL"

    .line 1317
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "android.intent.action.CALL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto/16 :goto_4

    :cond_f
    const-string v1, "com.callapp.contacts/reexecuteIntent"

    .line 1323
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1324
    sget-object v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->CALL_LOG:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->setState(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;)V

    goto/16 :goto_5

    :cond_10
    const-string v1, "vnd.android.cursor.dir/calls"

    .line 1325
    invoke-static {v1, v0}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "com.android.phone.action.RECENT_CALLS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_3

    :cond_11
    const-string v0, "com.callapp.contacts/showTutorial"

    .line 1346
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1347
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->y:Lcom/callapp/contacts/widget/tutorial/TutorialViewController;

    if-eqz v0, :cond_19

    .line 1348
    invoke-virtual {v0, p0}, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->a(Landroid/app/Activity;)V

    goto/16 :goto_5

    .line 1353
    :cond_12
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->z:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    if-eqz v0, :cond_13

    goto :goto_2

    .line 1356
    :cond_13
    sget-object v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->CONTACTS_NONE:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    .line 1357
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v7

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v1, 0x2

    new-array v13, v1, [Ljava/lang/String;

    const-string v1, "source"

    aput-object v1, v13, v6

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->R:Ljava/lang/String;

    aput-object v1, v13, v5

    const-string v8, "CallApp Icon"

    const-string v9, "ContactList Icon Clicked"

    invoke-virtual/range {v7 .. v13}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    .line 1360
    :goto_2
    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->setState(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;)V

    .line 1362
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->z:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    if-nez v0, :cond_19

    .line 1363
    invoke-direct {p0, v3}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->a(Landroid/os/Bundle;)V

    goto :goto_5

    :cond_14
    :goto_3
    const-string v0, "Missed Call Actions"

    if-eqz v3, :cond_15

    const-string v1, "EXTRA_MISSED_CALL_NOTIFICATION_CLICKED"

    .line 1327
    invoke-virtual {v3, v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1328
    invoke-static {v6}, Lcom/callapp/contacts/util/MissedCallUtils;->b(Z)V

    .line 1329
    invoke-virtual {p1, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1330
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v1

    const-string v2, "User clicked the missed call notification"

    invoke-virtual {v1, v0, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1331
    invoke-static {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->showDialogToAllowNotificationAccessAfterMissedCall(Landroid/app/Activity;)V

    :cond_15
    if-eqz v3, :cond_16

    const-string v1, "EXTRA_NOT_ANSWERED_NOTIFICATION_CLICKED"

    .line 1333
    invoke-virtual {v3, v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1334
    invoke-static {v6}, Lcom/callapp/contacts/util/MissedCallUtils;->a(Z)V

    .line 1335
    invoke-virtual {p1, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1336
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v1

    const-string v2, "User clicked the not answered notification"

    invoke-virtual {v1, v0, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "phone"

    .line 1337
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1338
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1339
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;->DELETE:Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    const/16 v2, 0x28

    const-wide/16 v3, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/callapp/contacts/activity/missedcall/MissedCallManager;->a(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;IJ)V

    .line 1342
    :cond_16
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->q()Z

    move-result v0

    if-nez v0, :cond_19

    .line 1344
    sget-object v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->CALL_LOG:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->setState(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;)V

    goto :goto_5

    .line 1318
    :cond_17
    :goto_4
    iput-boolean v6, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->K:Z

    .line 1319
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->isSearchContactFragmentVisible()Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, ""

    .line 1320
    invoke-direct {p0, v0, v5, v5, v6}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->a(Ljava/lang/String;ZZZ)V

    .line 1322
    :cond_18
    sget-object v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->DIALER_INCALL:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    invoke-direct {p0, v0, v5}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;Z)V

    :cond_19
    :goto_5
    const/4 v0, 0x0

    .line 1367
    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->z:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    const-string v0, "tab"

    .line 1368
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1369
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.callapp.contacts.FROM_SUB_ACTIVITY"

    invoke-static {v1, v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "START_BIRTHDAY_POPUP"

    .line 1370
    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "reminder"

    .line 1372
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/model/ReminderData;

    .line 1373
    invoke-static {v0}, Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;->a(Lcom/callapp/contacts/model/ReminderData;)V

    .line 1378
    :cond_1a
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->c(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;Z)V
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 24452
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->isActivityVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 24453
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->D:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 24455
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->D:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setTranslationY(F)V

    .line 24457
    :goto_0
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->D:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .line 2412
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->v:Lcom/callapp/contacts/manager/CallAppBarManager;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/CallAppBarManager;->b()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2413
    invoke-direct {p0, p1, v0, v1, v1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->a(Ljava/lang/String;ZZZ)V

    return-void
.end method

.method private b(Z)V
    .locals 1

    .line 1188
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->v:Lcom/callapp/contacts/manager/CallAppBarManager;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/manager/CallAppBarManager;->a(Z)V

    .line 1189
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->q:Lcom/google/android/material/tabs/TabLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->setTranslationY(F)V

    .line 1190
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->q:Lcom/google/android/material/tabs/TabLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->setVisibility(I)V

    .line 1191
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->s:Lcom/callapp/contacts/widget/PagingTogglableViewPager;

    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->s()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/widget/PagingTogglableViewPager;->setPagingEnabled(Z)V

    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Z
    .locals 0

    .line 250
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->isKeypadOpenedOrOpening()Z

    move-result p0

    return p0
.end method

.method private static c(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;)Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;
    .locals 1

    .line 1588
    sget-object v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$37;->a:[I

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 1598
    sget-object p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->CONTACTS_NONE:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    return-object p0

    .line 1592
    :cond_0
    sget-object p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->CALL_LOG:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    return-object p0
.end method

.method private c(Landroid/content/Intent;)V
    .locals 11

    if-eqz p1, :cond_2a

    .line 1384
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 1386
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "RETURN_TO_PREVIOUS_CLASS"

    .line 1387
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 1390
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/applink"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_29

    const-string v3, "command"

    .line 1392
    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1394
    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_28

    const-string v4, "open_menu"

    .line 1395
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1396
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->d:Landroidx/drawerlayout/widget/DrawerLayout;

    new-instance v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$17;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$17;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    const-string v4, "tab_contacts"

    .line 1402
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "source"

    if-eqz v4, :cond_1

    .line 1403
    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->R:Ljava/lang/String;

    .line 1404
    sget-object p1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->CONTACTS_NONE:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->setState(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;)V

    return-void

    :cond_1
    const-string v4, "tab_recent"

    .line 1405
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1406
    sget-object p1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->CALL_LOG:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->setState(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;)V

    return-void

    :cond_2
    const-string v4, "open_search"

    .line 1407
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    .line 1408
    invoke-direct {p0, v6}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->d(Z)V

    return-void

    :cond_3
    const-string v4, "open_cover"

    .line 1409
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const-string v7, "store promotional dialog"

    const-string v8, "CTA clicked"

    const-string v9, "Personal Store Item"

    if-eqz v4, :cond_6

    const-string p1, "coverName"

    .line 1410
    invoke-virtual {v0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1411
    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1413
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1414
    sget-object v1, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;->COVER:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    invoke-static {v1}, Lcom/callapp/contacts/activity/marketplace/PersonalStoreItemHelper;->a(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1415
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;->COVER:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    invoke-static {v4}, Lcom/callapp/contacts/activity/marketplace/PersonalStoreItemHelper;->a(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v9, v8, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1416
    sget-object v1, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity;->f:Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity$Companion;

    invoke-static {p0, p1, v2, v0}, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity$Companion;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    return-void

    .line 1418
    :cond_4
    invoke-static {p0, p1, v0, v2}, Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    :cond_5
    return-void

    :cond_6
    const-string v4, "open_theme"

    .line 1421
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string p1, "themeName"

    .line 1422
    invoke-virtual {v0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1423
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1424
    invoke-static {p0, p1, v2}, Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;)V

    :cond_7
    return-void

    :cond_8
    const-string v4, "open_bundle"

    .line 1426
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string p1, "bundleName"

    .line 1427
    invoke-virtual {v0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1428
    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1430
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1431
    sget-object v1, Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity;->o:Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity$Companion;

    invoke-static {p0, p1, v2, v0}, Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity$Companion;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    :cond_9
    return-void

    :cond_a
    const-string v4, "open_superskin"

    .line 1433
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string p1, "superSkinName"

    .line 1434
    invoke-virtual {v0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1435
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1436
    invoke-static {p0, p1, v2}, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;)V

    :cond_b
    return-void

    :cond_c
    const-string v4, "open_keypad"

    .line 1438
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    const-string p1, "keypadName"

    .line 1439
    invoke-virtual {v0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1440
    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1441
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1442
    invoke-static {p0, p1, v2, v0}, Lcom/callapp/contacts/activity/marketplace/KeypadDownloaderActivity;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    :cond_d
    return-void

    :cond_e
    const-string v4, "open_callscreentheme"

    .line 1444
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v10, 0x0

    if-eqz v4, :cond_11

    const-string p1, "callScreenThemeName"

    .line 1445
    invoke-virtual {v0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1446
    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1447
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1448
    sget-object v1, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;->VIDEO_RINGTONE:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    invoke-static {v1}, Lcom/callapp/contacts/activity/marketplace/PersonalStoreItemHelper;->a(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1449
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;->VIDEO_RINGTONE:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    invoke-static {v4}, Lcom/callapp/contacts/activity/marketplace/PersonalStoreItemHelper;->a(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v9, v8, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1450
    sget-object v1, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->n:Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity$Companion;

    invoke-static {p0, p1, v2, v10, v0}, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity$Companion;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Landroid/net/Uri;Ljava/lang/String;)V

    return-void

    .line 1452
    :cond_f
    invoke-static {p0, p1, v2, v0}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    :cond_10
    return-void

    :cond_11
    const-string v4, "open_callscreenthemelist"

    .line 1455
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1456
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    const-class v4, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz v2, :cond_12

    .line 1458
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1460
    :cond_12
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_13
    const-string v4, "open_ad_free_with_skus"

    .line 1461
    invoke-static {v3, v4}, Lcom/callapp/framework/util/StringUtils;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    const/4 v7, 0x0

    if-eqz v4, :cond_1b

    const-string p1, "sku1"

    .line 1462
    invoke-virtual {v0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "sku2"

    .line 1463
    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "sku3"

    .line 1464
    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1465
    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1466
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_14

    const-string v0, "premiumPlanDeepLink"

    :cond_14
    const-string v5, "inapp"

    .line 1470
    invoke-static {v5}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    const-string v8, "subs"

    .line 1471
    invoke-static {v8}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 1474
    sget-object v9, Lcom/callapp/contacts/manager/preferences/Prefs;->cJ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v9}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_18

    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_15

    invoke-interface {v5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_17

    invoke-interface {v8, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    .line 1475
    :cond_15
    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_16

    invoke-interface {v5, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    invoke-interface {v8, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    .line 1476
    :cond_16
    invoke-static {v4}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_18

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    invoke-interface {v8, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    :cond_17
    const/4 v6, 0x0

    :cond_18
    if-eqz v6, :cond_1a

    .line 1481
    new-instance p1, Landroid/content/Intent;

    const-class v3, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;

    invoke-direct {p1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "PLAN_PAGE_SOURCE"

    .line 1482
    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v2, :cond_19

    .line 1484
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1486
    :cond_19
    invoke-static {p0, p1}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_1a
    return-void

    :cond_1b
    const-string v1, "show_free_gift_dialog"

    .line 1488
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v4, "FreeGiftEnabled"

    if-eqz v1, :cond_1c

    iget-boolean v1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->O:Z

    if-nez v1, :cond_1c

    .line 1490
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 1491
    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1492
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->cO:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0, v6}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->a(I)Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    .line 1493
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1494
    invoke-virtual {v0, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1495
    invoke-static {p0, v0}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    :cond_1c
    const-string v1, "all_store_free_gift"

    .line 1497
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-boolean v1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->O:Z

    if-nez v1, :cond_1d

    .line 1499
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 1500
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->cP:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 1501
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->cO:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {p1, v6}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->a(I)Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    .line 1502
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1503
    invoke-static {p0, p1}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    :cond_1d
    const-string v1, "show_free_gift_dialog_call_screen"

    .line 1505
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-boolean v1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->O:Z

    if-nez v1, :cond_1e

    .line 1507
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 1508
    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1509
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->cT:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0, v6}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->a(I)Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    .line 1510
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1511
    invoke-virtual {v0, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1512
    invoke-static {p0, v0}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    :cond_1e
    const-string v1, "show_free_gift_dialog_personal_call_screen"

    .line 1514
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-boolean v1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->O:Z

    if-nez v1, :cond_1f

    .line 1516
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 1517
    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1518
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->cU:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0, v6}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->a(I)Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    .line 1519
    sget-object v0, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->n:Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity$Companion;

    sget-object v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;->VIDEO_RINGTONE:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/PersonalStoreItemHelper;->a(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2, v10, p1}, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity$Companion;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Landroid/net/Uri;Ljava/lang/String;)V

    return-void

    :cond_1f
    const-string v1, "show_free_gift_dialog_personal_cover"

    .line 1521
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    iget-boolean v1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->O:Z

    if-nez v1, :cond_20

    .line 1523
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 1524
    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1525
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->cV:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0, v6}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->a(I)Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    .line 1526
    sget-object v0, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity;->f:Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity$Companion;

    sget-object v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;->COVER:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/PersonalStoreItemHelper;->a(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2, p1}, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity$Companion;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    return-void

    :cond_20
    const-string v1, "open_insights"

    .line 1528
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-boolean v1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->O:Z

    if-nez v1, :cond_21

    .line 1529
    new-instance p1, Landroid/content/Intent;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    const-class v2, Lcom/callapp/contacts/activity/analytics/ui/InsightActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1530
    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1531
    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1532
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_21
    const-string v1, "upgrade_for_free_gift"

    .line 1533
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1534
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object p1

    const-string v1, "UpgradeGiftEnabled"

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 1535
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    invoke-static {}, Lcom/callapp/contacts/util/AppRater;->getRateIntent$7ec49240()Landroid/content/Intent;

    move-result-object p1

    .line 1536
    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_22

    .line 1538
    new-instance v10, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;

    const v2, 0x7f080082

    const v1, 0x7f1207f5

    .line 1539
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/util/HtmlUtils;->b(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v3

    const v1, 0x7f1207f4

    .line 1540
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/util/HtmlUtils;->b(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v4

    const v1, 0x7f1204ea

    .line 1541
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$18;

    invoke-direct {v6, p0, p1, v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$18;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;Landroid/content/Intent;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Ljava/lang/String;ILcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    .line 1550
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p1

    invoke-virtual {p1, p0, v10}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void

    .line 1552
    :cond_22
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p1

    const v0, 0x7f1207f3

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;)V

    return-void

    :cond_23
    const-string v1, "callapp_plus_premium"

    .line 1555
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1556
    invoke-static {v7}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->setPremiumFlow(Z)V

    return-void

    :cond_24
    const-string v1, "promotion"

    .line 1557
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    const-string v1, "EXTRA_ALREADY_GOT_THIS_PROMOTION"

    .line 1559
    invoke-virtual {p1, v1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_25

    invoke-static {v0}, Lcom/callapp/contacts/manager/PromotionManager;->a(Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_25

    .line 1561
    invoke-virtual {p1, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1562
    invoke-static {v0, p0}, Lcom/callapp/contacts/manager/PromotionManager;->a(Landroid/net/Uri;Landroid/content/Context;)V

    return-void

    :cond_25
    if-eqz v2, :cond_26

    .line 1564
    invoke-direct {p0, v2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->a(Ljava/lang/Class;)V

    :cond_26
    return-void

    :cond_27
    if-eqz v2, :cond_28

    .line 1567
    invoke-direct {p0, v2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->a(Ljava/lang/Class;)V

    :cond_28
    return-void

    .line 1573
    :cond_29
    invoke-static {p0, p1, v2}, Lcom/callapp/contacts/model/DeepLinkManager;->handleDeepLink(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Class;)Z

    :cond_2a
    return-void
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;I)V
    .locals 0

    .line 250
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->e(I)V

    return-void
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;Z)V
    .locals 0

    .line 250
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->h(Z)V

    return-void
.end method

.method private synthetic c(Ljava/lang/String;)V
    .locals 4

    .line 735
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->t:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 736
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->o()V

    .line 738
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->x:Lcom/callapp/contacts/activity/interfaces/SuperSkinWizardScrollListener;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->t:Landroid/widget/ImageView;

    .line 23028
    new-instance v2, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1, p1}, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/callapp/contacts/activity/interfaces/SuperSkinWizardScrollListener;->a:Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;

    return-void
.end method

.method private c(Z)V
    .locals 2

    .line 1896
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->b(Z)V

    .line 1897
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->E:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;

    sget-object v1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->ON_BACK_PRESSED_SEARCH_OPEN:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    invoke-static {v0, v1, p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;Z)V

    return-void
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Z
    .locals 0

    .line 250
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->isUserEnteredSomeOfTheTextInKeypad()Z

    move-result p0

    return p0
.end method

.method private d(Landroid/content/Intent;)Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;
    .locals 3

    .line 1902
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.callapp.contacts.FROM_SUB_ACTIVITY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1903
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "tab"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1904
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1905
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Icon Clicked"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CallApp Icon"

    invoke-virtual {v0, v2, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1906
    sget-object v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->DIALER:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    invoke-static {p1, v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1907
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->F:Z

    .line 1911
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->C:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private static d(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;)Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;
    .locals 2

    .line 1938
    sget-object v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$37;->a:[I

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    return-object p0

    .line 1940
    :cond_0
    sget-object p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->CONTACTS_NONE:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    return-object p0

    .line 1942
    :cond_1
    sget-object p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->CALL_LOG:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    return-object p0
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V
    .locals 1

    const/4 v0, 0x1

    .line 250
    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->c(Z)V

    return-void
.end method

.method private d(Z)V
    .locals 2

    .line 2071
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->E:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;

    sget-object v1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->ON_SEARCH_CONTACTS_START:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    invoke-static {v0, v1, p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;Z)V

    .line 2072
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->e(Z)V

    return-void
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;Z)Z
    .locals 0

    .line 250
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->c:Z

    return p1
.end method

.method private e(I)V
    .locals 1

    .line 3432
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->getFragmentByPosition(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 3433
    instance-of v0, p1, Lcom/callapp/contacts/activity/interfaces/DataFragmentsEvents;

    if-eqz v0, :cond_0

    .line 3434
    check-cast p1, Lcom/callapp/contacts/activity/interfaces/DataFragmentsEvents;

    invoke-interface {p1}, Lcom/callapp/contacts/activity/interfaces/DataFragmentsEvents;->refreshData()V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V
    .locals 0

    .line 250
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->v()V

    return-void
.end method

.method private e(Z)V
    .locals 3

    .line 2076
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->isSearchContactFragmentVisible()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2077
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->a()Landroidx/fragment/app/s;

    move-result-object v0

    if-nez p1, :cond_0

    .line 2078
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->isActivityVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2079
    invoke-virtual {v0}, Landroidx/fragment/app/s;->i()Landroidx/fragment/app/s;

    .line 2082
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v1, "SEARCH_BAR_TAG"

    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentManager;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;

    if-nez p1, :cond_1

    .line 2084
    const-class p1, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;

    :cond_1
    const v2, 0x7f0a07ad

    .line 2086
    invoke-virtual {v0, v2, p1, v1}, Landroidx/fragment/app/s;->b(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/s;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/s;->c()I

    const/4 p1, 0x1

    .line 2087
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->setSlideMenuLockState(Z)V

    const/4 p1, 0x0

    .line 2088
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->c:Z

    :cond_2
    return-void
.end method

.method private static e(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;)Z
    .locals 1

    .line 1949
    sget-object v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$37;->a:[I

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic e(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;Z)Z
    .locals 0

    .line 250
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->G:Z

    return p1
.end method

.method private f(Z)Landroid/view/View;
    .locals 2

    .line 2145
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->q:Lcom/google/android/material/tabs/TabLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->a(I)Lcom/google/android/material/tabs/TabLayout$f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 14031
    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout$f;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    const v1, 0x7f0a08d3

    .line 2149
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/widget/ImageViewWithTopMark;

    if-eqz v1, :cond_0

    .line 2151
    invoke-static {v1, p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->a(Lcom/callapp/contacts/widget/ImageViewWithTopMark;Z)V

    .line 2152
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->H:Z

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic f(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;Z)V
    .locals 0

    .line 250
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->e(Z)V

    return-void
.end method

.method static synthetic f(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Z
    .locals 1

    const/4 v0, 0x1

    .line 250
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->S:Z

    return v0
.end method

.method static synthetic g(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V
    .locals 8

    .line 23661
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fT:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23662
    sget-object p0, Lcom/callapp/contacts/manager/preferences/Prefs;->fY:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    return-void

    .line 23666
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v0

    const-string v1, "showTutorialWidget"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 23668
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v0

    const-string v1, "tutorialPagesNumber"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->b(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v1, v0

    .line 23669
    new-instance v4, Lcom/callapp/contacts/event/bus/EventBus;

    invoke-direct {v4}, Lcom/callapp/contacts/event/bus/EventBus;-><init>()V

    .line 23670
    new-instance v3, Lcom/callapp/contacts/widget/tutorial/TutorialPageManager;

    new-instance v0, Lcom/callapp/contacts/widget/tutorial/TutorialPageRepository;

    invoke-direct {v0, v1, v4}, Lcom/callapp/contacts/widget/tutorial/TutorialPageRepository;-><init>(ILcom/callapp/contacts/event/bus/EventBus;)V

    invoke-direct {v3, v0}, Lcom/callapp/contacts/widget/tutorial/TutorialPageManager;-><init>(Lcom/callapp/contacts/widget/tutorial/TutorialPageManager$TutorialPagesProvider;)V

    .line 23671
    invoke-virtual {v3}, Lcom/callapp/contacts/widget/tutorial/TutorialPageManager;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 23672
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fV:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 23674
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fV:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->set(Ljava/lang/Object;)V

    :cond_1
    const v0, 0x7f0a077f

    .line 23676
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/view/ViewGroup;

    .line 23677
    new-instance v0, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;

    new-instance v7, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$7;

    invoke-direct {v7, p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$7;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V

    move-object v2, v0

    move-object v6, p0

    invoke-direct/range {v2 .. v7}, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;-><init>(Lcom/callapp/contacts/widget/tutorial/TutorialPageManager;Lcom/callapp/contacts/event/bus/EventBus;Landroid/view/ViewGroup;Landroid/app/Activity;Lcom/callapp/contacts/widget/tutorial/TutorialViewController$OnWidgetAddedListener;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->y:Lcom/callapp/contacts/widget/tutorial/TutorialViewController;

    .line 23686
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object v0

    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->y:Lcom/callapp/contacts/widget/tutorial/TutorialViewController;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/j;->addObserver(Landroidx/lifecycle/o;)V

    :cond_2
    return-void
.end method

.method private g(Z)V
    .locals 2

    .line 3211
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$33;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$33;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;Z)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getBottomBarPresenter()Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;
    .locals 2

    .line 2516
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->o:Lcom/callapp/contacts/activity/contact/details/PresenterManager;

    const-class v1, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;

    return-object v0
.end method

.method private getFragmentByPosition(I)Landroidx/fragment/app/Fragment;
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2428
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "android:switcher:2131364054:"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2429
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method private getSlideMenuFragment()Lcom/callapp/contacts/widget/SlideMenuFragment;
    .locals 2

    .line 2683
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "slide_menu_frag"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2685
    check-cast v0, Lcom/callapp/contacts/widget/SlideMenuFragment;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getStateByPageIndex(I)Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 3163
    sget-object p1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->CONTACTS_NONE:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    return-object p1

    .line 3155
    :cond_0
    sget-object p1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->CONTACTS_NONE:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    return-object p1

    .line 3157
    :cond_1
    iget-boolean p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->H:Z

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->y()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3158
    sget-object p1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->CALL_LOG_FIRST_EXPERIENCE:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    return-object p1

    .line 3160
    :cond_2
    sget-object p1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->CALL_LOG:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    return-object p1
.end method

.method static synthetic h(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V
    .locals 3

    .line 24060
    new-instance v0, Lcom/callapp/contacts/util/servermessage/ValidateClientTask;

    new-instance v1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V

    const-string v2, "Contact List"

    invoke-direct {v0, v1, p0, v2}, Lcom/callapp/contacts/util/servermessage/ValidateClientTask;-><init>(Lcom/callapp/contacts/util/servermessage/ValidateClientTask$OnResultListener;Landroid/content/Context;Ljava/lang/String;)V

    .line 24136
    invoke-virtual {v0}, Lcom/callapp/contacts/util/servermessage/ValidateClientTask;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method

.method private h(Z)V
    .locals 2

    .line 3333
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->setSlideMenuLockState(Z)V

    .line 3334
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->s:Lcom/callapp/contacts/widget/PagingTogglableViewPager;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/PagingTogglableViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->getFragmentByPosition(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 3336
    instance-of v1, v0, Lcom/callapp/contacts/activity/interfaces/MultiSelectEvents;

    if-eqz v1, :cond_0

    .line 3337
    check-cast v0, Lcom/callapp/contacts/activity/interfaces/MultiSelectEvents;

    invoke-interface {v0, p1}, Lcom/callapp/contacts/activity/interfaces/MultiSelectEvents;->setMultiSelectModeEnable(Z)V

    if-nez p1, :cond_0

    .line 3341
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->v:Lcom/callapp/contacts/manager/CallAppBarManager;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/CallAppBarManager;->k()V

    :cond_0
    return-void
.end method

.method private synthetic i(Z)V
    .locals 0

    .line 1021
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->e()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1022
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->p()Z

    return-void

    .line 1024
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->b()V

    .line 1025
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->c()V

    return-void
.end method

.method static synthetic i(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Z
    .locals 0

    .line 250
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->U:Z

    return p0
.end method

.method private isFromRecorderTest()Z
    .locals 3

    .line 1223
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_from_recorder_test"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isKeypadOpenedOrOpening()Z
    .locals 2

    .line 1183
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "KEYPAD_FRAGMENT_TAG"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;

    if-eqz v0, :cond_0

    .line 1184
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->isKeypadOpenedOrOpenning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isSearchContactFragmentVisible()Z
    .locals 2

    .line 467
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "SEARCH_BAR_TAG"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;

    if-eqz v0, :cond_0

    .line 468
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isSearchState()Z
    .locals 1

    .line 973
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->isSearchContactFragmentVisible()Z

    move-result v0

    return v0
.end method

.method private isSlideMenuOpen()Z
    .locals 3

    .line 3233
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->d:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const v2, 0x800003

    .line 21836
    invoke-virtual {v0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->b(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 21838
    invoke-static {v0}, Landroidx/drawerlayout/widget/DrawerLayout;->e(Landroid/view/View;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method private isTooltipShowing()Z
    .locals 1

    .line 3228
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->getContactsFragment()Lcom/callapp/contacts/activity/contact/list/ContactsFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3229
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->isTooltipShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isUserEnteredSomeOfTheTextInKeypad()Z
    .locals 2

    .line 3259
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "KEYPAD_FRAGMENT_TAG"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;

    if-eqz v0, :cond_0

    .line 3260
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->isUserEnteredSomeOfTheText()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic j(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Z
    .locals 1

    const/4 v0, 0x0

    .line 250
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->U:Z

    return v0
.end method

.method static synthetic k(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Z
    .locals 0

    .line 250
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->T:Z

    return p0
.end method

.method static synthetic l(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Z
    .locals 1

    const/4 v0, 0x0

    .line 250
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->T:Z

    return v0
.end method

.method public static synthetic lambda$03RmOv9BrPl1D9_e4KDh7l5XZVg(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$70XIPOyAMGMPPjarvJWhJ0CMh2s()V
    .locals 0

    invoke-static {}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->F()V

    return-void
.end method

.method public static synthetic lambda$NsbSh-T9h9hJsdBXLfEOH6kxOXQ(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic lambda$PONjvP7NMdppnbSbu0X1cuqbjW4(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->D()V

    return-void
.end method

.method public static synthetic lambda$_9Xp4ZKYwIhwhmH63uHPvbGtLmE(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$_CG-2GQ4VtH1Zijq23sIjy4AMME(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->i(Z)V

    return-void
.end method

.method public static synthetic lambda$a3Wu9gUmISynWi1KmNOFzqbsUAU()V
    .locals 0

    invoke-static {}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->E()V

    return-void
.end method

.method public static synthetic lambda$irBiqFjtu7ZftO5OlZl9TG_BD_8(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->C()V

    return-void
.end method

.method public static synthetic lambda$uwCcGDh5KriB2TY7hBV3CaTxfn4(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->B()V

    return-void
.end method

.method public static synthetic lambda$vLLbZL4rXN62KnxS_TqkM8lm_zU(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic m(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V
    .locals 0

    .line 250
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->t()V

    return-void
.end method

.method static synthetic n(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/callapp/contacts/activity/contact/list/TabsAdapter;
    .locals 0

    .line 250
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->p:Lcom/callapp/contacts/activity/contact/list/TabsAdapter;

    return-object p0
.end method

.method static synthetic n()Z
    .locals 1

    .line 250
    invoke-static {}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->y()Z

    move-result v0

    return v0
.end method

.method static synthetic o(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/google/android/material/appbar/AppBarLayout;
    .locals 0

    .line 250
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->f:Lcom/google/android/material/appbar/AppBarLayout;

    return-object p0
.end method

.method private o()V
    .locals 4

    const v0, 0x7f0a041b

    .line 760
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 761
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->t:Landroid/widget/ImageView;

    .line 762
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07037f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 763
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x10

    const v3, 0x7f0a03d4

    .line 764
    invoke-virtual {v2, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v1, 0x2

    const v3, 0x7f0a0145

    .line 765
    invoke-virtual {v2, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 766
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->t:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 767
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->t:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 768
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->t:Landroid/widget/ImageView;

    new-instance v1, Lcom/callapp/contacts/activity/contact/list/-$$Lambda$ContactsListActivity$vLLbZL4rXN62KnxS_TqkM8lm_zU;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/list/-$$Lambda$ContactsListActivity$vLLbZL4rXN62KnxS_TqkM8lm_zU;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic p(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;
    .locals 0

    .line 250
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->getBottomBarPresenter()Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;

    move-result-object p0

    return-object p0
.end method

.method private p()Z
    .locals 4

    .line 1031
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->Q:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultSystemPhoneApp()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/callapp/contacts/util/Activities;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1032
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->Q:Z

    .line 1034
    new-instance v2, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$14;

    new-instance v3, Lcom/callapp/contacts/activity/contact/list/-$$Lambda$ContactsListActivity$NsbSh-T9h9hJsdBXLfEOH6kxOXQ;

    invoke-direct {v3, p0}, Lcom/callapp/contacts/activity/contact/list/-$$Lambda$ContactsListActivity$NsbSh-T9h9hJsdBXLfEOH6kxOXQ;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V

    invoke-direct {v2, p0, v3}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$14;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    .line 1041
    invoke-virtual {v2, v1}, Lcom/callapp/contacts/popup/contact/DrawOverAppsRequestDialog;->setCancelable(Z)V

    .line 1042
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v1

    invoke-virtual {v1, p0, v2}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return v0

    :cond_0
    return v1
.end method

.method static synthetic q(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 250
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->u:Landroid/widget/ImageView;

    return-object p0
.end method

.method private q()Z
    .locals 1

    .line 1665
    invoke-static {p0}, Lcom/callapp/contacts/util/Activities;->c(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1666
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->A:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic r(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/callapp/contacts/manager/CallAppBarManager;
    .locals 0

    .line 250
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->v:Lcom/callapp/contacts/manager/CallAppBarManager;

    return-object p0
.end method

.method private r()V
    .locals 2

    .line 1687
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1688
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->getIntentFlagForNewDocument()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1689
    invoke-static {p0, v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 1690
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->finish()V

    return-void
.end method

.method static synthetic s(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/google/android/material/tabs/TabLayout;
    .locals 0

    .line 250
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->q:Lcom/google/android/material/tabs/TabLayout;

    return-object p0
.end method

.method private s()Z
    .locals 2

    .line 1763
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->t:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->isTabsVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->getState()Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->CALL_LOG_FIRST_EXPERIENCE:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private setMultiSelectBarTitle(Ljava/lang/String;)V
    .locals 1

    .line 869
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->v:Lcom/callapp/contacts/manager/CallAppBarManager;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/manager/CallAppBarManager;->setActionModeText(Ljava/lang/String;)V

    return-void
.end method

.method private setSlideMenuLockState(Z)V
    .locals 2

    .line 3243
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->d:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v0, :cond_1

    const v1, 0x800003

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 3245
    invoke-virtual {v0, p1, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(II)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 3247
    invoke-virtual {v0, p1, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(II)V

    :cond_1
    return-void
.end method

.method private setState(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;)V
    .locals 1

    const/4 v0, 0x0

    .line 1960
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;Z)V

    return-void
.end method

.method private setupContentContainer(I)V
    .locals 7

    const v0, 0x7f060244

    .line 16125
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    .line 16126
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->getTheme()Lcom/callapp/contacts/util/ThemeUtils$THEME;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/util/ThemeUtils$THEME;->DARK_DEFAULT:Lcom/callapp/contacts/util/ThemeUtils$THEME;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 16127
    :goto_0
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->q:Lcom/google/android/material/tabs/TabLayout;

    .line 16887
    iget-object v2, v2, Lcom/google/android/material/tabs/TabLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_5

    if-eqz v1, :cond_2

    if-ne v3, p1, :cond_1

    :goto_1
    move v2, v0

    goto :goto_2

    :cond_1
    const v2, 0x7f0600f2

    .line 16129
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    goto :goto_2

    :cond_2
    if-ne v3, p1, :cond_3

    goto :goto_1

    :cond_3
    const v2, 0x7f06008a

    .line 16131
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    .line 16135
    :goto_2
    iget-object v5, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->q:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v5, v3}, Lcom/google/android/material/tabs/TabLayout;->a(I)Lcom/google/android/material/tabs/TabLayout$f;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 17031
    iget-object v5, v5, Lcom/google/android/material/tabs/TabLayout$f;->f:Landroid/view/View;

    if-eqz v5, :cond_4

    const v6, 0x7f0a08d3

    .line 16139
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_4

    .line 16141
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v2, v6}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2418
    :cond_5
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->s:Lcom/callapp/contacts/widget/PagingTogglableViewPager;

    invoke-virtual {v0, p1, v4}, Lcom/callapp/contacts/widget/PagingTogglableViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method static synthetic t(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 250
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->t:Landroid/widget/ImageView;

    return-object p0
.end method

.method private t()V
    .locals 4

    .line 1778
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->L:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/event/listener/ResumeListener;->d:Lcom/callapp/contacts/event/bus/EventType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 13091
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    .line 1779
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->K:Z

    if-eqz v0, :cond_0

    .line 1780
    iput-boolean v3, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->K:Z

    .line 1781
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->v:Lcom/callapp/contacts/manager/CallAppBarManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1782
    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->c(Z)V

    .line 1783
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->v:Lcom/callapp/contacts/manager/CallAppBarManager;

    invoke-virtual {v0, v3}, Lcom/callapp/contacts/manager/CallAppBarManager;->a(Z)V

    .line 1787
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1788
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->v()V

    .line 1791
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/util/ads/AdUtils;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1792
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->u()V

    .line 1795
    :cond_2
    invoke-static {p0}, Lcom/callapp/contacts/activity/identify/IdentifyContactsDialog;->b(Landroid/content/Context;)V

    .line 1797
    invoke-static {}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->get()Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->isRecorderTestRunning()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->isFromRecorderTest()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1799
    invoke-static {}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->get()Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->setInRecorderTestMode(Z)V

    return-void

    .line 1801
    :cond_3
    invoke-static {}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->get()Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->isInRecorderTestMode()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->get()Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->isRecorderTestRunning()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1802
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->E:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;

    sget-object v1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->ON_DIALER_PRESSED:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;)V

    :cond_4
    return-void
.end method

.method private u()V
    .locals 2

    .line 1813
    new-instance v0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    new-instance v1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$23;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$23;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V

    invoke-direct {v0, v1}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;-><init>(Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->Y:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    return-void
.end method

.method static synthetic u(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V
    .locals 0

    .line 250
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->o()V

    return-void
.end method

.method static synthetic v(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;
    .locals 0

    .line 250
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->E:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;

    return-object p0
.end method

.method private v()V
    .locals 2

    const/4 v0, 0x1

    .line 2136
    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->f(Z)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f0a0823

    .line 2138
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0805a5

    .line 2139
    invoke-static {v1}, Lcom/callapp/contacts/util/ViewUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 2140
    invoke-static {v0}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->b(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method static synthetic w(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/callapp/contacts/widget/SlideMenuFragment;
    .locals 0

    .line 250
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->getSlideMenuFragment()Lcom/callapp/contacts/widget/SlideMenuFragment;

    move-result-object p0

    return-object p0
.end method

.method private w()Z
    .locals 2

    .line 2444
    sget-object v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->r:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    sget-object v1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->CONTACTS_NONE:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->r:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    sget-object v1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->CALL_LOG:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->isKeypadOpenedOrOpening()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private x()V
    .locals 2

    .line 3019
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->t:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 3020
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic x(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Z
    .locals 0

    .line 250
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->s()Z

    move-result p0

    return p0
.end method

.method static synthetic y(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/callapp/contacts/widget/PagingTogglableViewPager;
    .locals 0

    .line 250
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->s:Lcom/callapp/contacts/widget/PagingTogglableViewPager;

    return-object p0
.end method

.method private static y()Z
    .locals 2

    .line 3083
    sget-object v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->r:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    sget-object v1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->CALL_LOG_FIRST_EXPERIENCE:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->r:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    sget-object v1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->CALL_LOG:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->r:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    sget-object v1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->CALL_LOG_MULTI_SELECT:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    if-eq v0, v1, :cond_0

    .line 3086
    invoke-static {}, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLog;->get()Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLog;

    invoke-static {}, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLog;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic z(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/callapp/contacts/widget/tutorial/TutorialViewController;
    .locals 0

    .line 250
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->y:Lcom/callapp/contacts/widget/tutorial/TutorialViewController;

    return-object p0
.end method

.method private z()V
    .locals 1

    .line 3237
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->d:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v0, :cond_0

    .line 3238
    invoke-virtual {v0}, Landroidx/drawerlayout/widget/DrawerLayout;->a()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const v0, 0x7f0a044a

    .line 2526
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2527
    new-instance v1, Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController;

    invoke-direct {v1, p0, v0}, Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->M:Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController;

    if-eqz v1, :cond_0

    .line 2529
    invoke-virtual {v1, p0}, Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController;->setListener(Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController$Listener;)V

    .line 2530
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->M:Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController;

    .line 19062
    iget-object v1, v0, Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController;->b:Landroid/view/View;

    new-instance v2, Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController$3;

    invoke-direct {v2, v0}, Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController$3;-><init>(Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2531
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->M:Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController;->b()V

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 3

    .line 3440
    sget-object v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 3441
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->k:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge p1, v1, :cond_1

    .line 3444
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->k:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3445
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->e(I)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 3448
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(II)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 3348
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2, v0}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->setMultiSelectBarTitle(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/callapp/contacts/activity/interfaces/KeypadLayoutChanges;)V
    .locals 1

    .line 3316
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->j:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$StoreItemType;)V
    .locals 1

    .line 2556
    sget-object v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$37;->e:[I

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$StoreItemType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2569
    :pswitch_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/callapp/contacts/activity/marketplace/ThemeStoreItemsListActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 2566
    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/callapp/contacts/activity/marketplace/KeypadStoreItemsListActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 2563
    :pswitch_2
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 2559
    :pswitch_3
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/callapp/contacts/activity/marketplace/CoverStoreItemsListActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_0
    if-eqz p1, :cond_0

    .line 2573
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Z)V
    .locals 2

    const-string v0, "Menu"

    if-eqz p1, :cond_0

    .line 2705
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v1, "ClickMenuModeButtonToLight"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2707
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v1, "ClickMenuModeButtonToDark"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 2170
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/list/-$$Lambda$ContactsListActivity$PONjvP7NMdppnbSbu0X1cuqbjW4;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/list/-$$Lambda$ContactsListActivity$PONjvP7NMdppnbSbu0X1cuqbjW4;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(I)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "Clicked"

    const-string v4, "Contact List"

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    :pswitch_1
    const-string p1, "menu"

    .line 2671
    invoke-static {p1}, Lcom/callapp/contacts/api/helper/backup/BackupUtils;->a(Ljava/lang/String;)V

    return-void

    .line 2666
    :pswitch_2
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "ViewProfile"

    const-string v1, "ClickMenuViewProfile"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2667
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2668
    invoke-static {p0, p1}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    .line 2674
    :pswitch_3
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Open upgrade to professional from slide menu"

    invoke-virtual {p1, v4, v0, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2675
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "PLAN_PAGE_SOURCE"

    const-string v1, "goPremiumSlideMenu"

    .line 2676
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2677
    invoke-static {p0, p1}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 2661
    :pswitch_4
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2662
    invoke-static {p0, p1}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2663
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "ReferAndEarn"

    const-string v1, "ClickInviteReferEarn"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2656
    :pswitch_5
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Open About from slide menu"

    invoke-virtual {p1, v4, v0, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2657
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/callapp/contacts/activity/AboutActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2658
    invoke-static {p0, p1}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    .line 2639
    :pswitch_6
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v5, "Open Contact us from slide menu"

    invoke-virtual {p1, v4, v5, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-array p1, v2, [Ljava/lang/String;

    .line 2640
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->cJ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f120335

    goto :goto_0

    :cond_0
    const v3, 0x7f120334

    :goto_0
    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v0

    const v3, 0x7f120338

    new-array v2, v2, [Ljava/lang/Object;

    .line 2641
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/CallAppApplication;->getVersion()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    invoke-static {v3, v2}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2645
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/callapp/contacts/util/IoUtils;->getCacheFolder()Ljava/io/File;

    move-result-object v3

    const-string v4, "callapp_device_info.txt"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2646
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 2647
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->getDeviceDataString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 2648
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V

    .line 2649
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".fileprovider"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, v2}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 2651
    const-class v3, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "unable to write file: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;)V

    move-object v2, v1

    .line 2653
    :goto_1
    invoke-static {p0, p1, v0, v1, v2}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    return-void

    .line 2625
    :pswitch_7
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Open Feedback from slide menu"

    invoke-virtual {p1, v4, v0, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2626
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2627
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object p1

    const-string v0, "feedbackUrl"

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2628
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2629
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2630
    invoke-static {p0, v0}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    .line 2632
    :cond_1
    invoke-static {p0, p1}, Lcom/callapp/contacts/util/Activities;->c(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 2635
    :cond_2
    invoke-static {p0}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Landroid/content/Context;)V

    return-void

    .line 2621
    :pswitch_8
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v1, "Open Help from slide menu"

    invoke-virtual {p1, v4, v1, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f120377

    new-array v1, v2, [Ljava/lang/Object;

    .line 2622
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->getCallAppDomain()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {p1, v1}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Ljava/lang/String;)Z

    return-void

    .line 2616
    :pswitch_9
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Open New in this version from slide menu"

    invoke-virtual {p1, v4, v0, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2617
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/popup/WhatsNewPopup;

    invoke-direct {v0}, Lcom/callapp/contacts/popup/WhatsNewPopup;-><init>()V

    invoke-virtual {p1, p0, v0}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    .line 2618
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->el:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    return-void

    .line 2611
    :pswitch_a
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Open Rate Us from slide menu"

    invoke-virtual {p1, v4, v0, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2612
    invoke-static {}, Lcom/callapp/contacts/util/AppRater;->getRateIntent$7ec49240()Landroid/content/Intent;

    move-result-object p1

    .line 2613
    invoke-static {p0, p1}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    :pswitch_b
    const-string p1, "ref"

    .line 2599
    invoke-static {v1, v2, p1}, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;->a(Lcom/callapp/contacts/model/contact/ContactData;ILjava/lang/String;)Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;

    move-result-object p1

    .line 2600
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {}, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;->getTAG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;->a(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void

    .line 2607
    :pswitch_c
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Open Birthday from slide menu"

    invoke-virtual {p1, v4, v0, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2608
    invoke-static {p0}, Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;->a(Landroid/content/Context;)V

    return-void

    .line 2603
    :pswitch_d
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Open Call Reminders from slide menu"

    invoke-virtual {p1, v4, v0, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2604
    invoke-static {p0}, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;->a(Landroid/content/Context;)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final b(Lcom/callapp/contacts/activity/interfaces/KeypadLayoutChanges;)V
    .locals 1

    .line 3321
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->j:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c()V
    .locals 8

    .line 2180
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->c:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->w()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->b:Lcom/callapp/contacts/activity/contact/details/overlay/ImageAndTextPusherOverlayView;

    if-nez v0, :cond_3

    const v0, 0x7f120730

    .line 2182
    invoke-static {}, Lcom/callapp/contacts/activity/contact/list/PusherManager;->getPusherStateByRules()Lcom/callapp/contacts/activity/contact/list/PusherManager$PusherStates;

    move-result-object v6

    const/4 v1, 0x0

    .line 2184
    sget-object v2, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$37;->b:[I

    invoke-virtual {v6}, Lcom/callapp/contacts/activity/contact/list/PusherManager$PusherStates;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    const v4, 0x7f120573

    const v5, 0x7f120575

    const/4 v7, 0x0

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    move-object v5, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const v4, 0x7f120730

    goto :goto_2

    :cond_0
    const-string v1, "allow draw overlay"

    goto :goto_1

    :cond_1
    const-string v1, "huawei protected apps"

    :goto_1
    move-object v5, v1

    const v2, 0x7f120575

    const v3, 0x7f120573

    goto :goto_0

    :cond_2
    const v0, 0x7f120576

    const v1, 0x7f120574

    const v2, 0x7f120570

    const-string v3, "auto start permission"

    move-object v5, v3

    const v2, 0x7f120576

    const v3, 0x7f120574

    const v4, 0x7f120570

    :goto_2
    if-eqz v2, :cond_3

    move-object v1, p0

    .line 2204
    invoke-direct/range {v1 .. v6}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->a(IIILjava/lang/String;Lcom/callapp/contacts/activity/contact/list/PusherManager$PusherStates;)V

    :cond_3
    return-void
.end method

.method public final c(I)V
    .locals 1

    .line 3253
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->g:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 3254
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 4

    .line 2269
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$29;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$29;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public final d(I)V
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 3280
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->d()V

    goto :goto_0

    .line 3267
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->d()V

    .line 3268
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->isKeypadOpenedOrOpening()Z

    move-result p1

    .line 3269
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->isUserEnteredSomeOfTheTextInKeypad()Z

    move-result v1

    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    .line 3271
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v1, "Contact List"

    const-string v2, "User called after searching with keypad"

    const-string v3, "Called from contact list"

    invoke-virtual {p1, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3274
    :cond_2
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->v:Lcom/callapp/contacts/manager/CallAppBarManager;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/CallAppBarManager;->isInSearchMode()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3275
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->K:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const v0, 0x7f0a03e6

    .line 3174
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 3175
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 3177
    invoke-direct {p0, v2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->g(Z)V

    .line 21204
    invoke-static {}, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLog;->get()Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLog;->getFirstTimeExperienceCallLogRootContainer()Landroid/view/View;

    move-result-object v1

    .line 21205
    sget-object v3, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->r:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    sget-object v4, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->CALL_LOG_FIRST_EXPERIENCE:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    const/4 v5, 0x0

    if-ne v3, v4, :cond_0

    if-eqz v1, :cond_0

    .line 21207
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-static {v1, v3, v4}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;FF)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    return v2

    :cond_1
    if-eqz v0, :cond_2

    .line 3186
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-static {v0, v1, v3}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3187
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->s:Lcom/callapp/contacts/widget/PagingTogglableViewPager;

    if-eqz v0, :cond_2

    .line 3188
    invoke-virtual {v0, v5}, Lcom/callapp/contacts/widget/PagingTogglableViewPager;->setPagingEnabled(Z)V

    .line 3193
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 3194
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->s:Lcom/callapp/contacts/widget/PagingTogglableViewPager;

    if-eqz v0, :cond_3

    .line 3195
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->s()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/PagingTogglableViewPager;->setPagingEnabled(Z)V

    .line 3200
    :cond_3
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final e()V
    .locals 2

    .line 2537
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->M:Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController;

    if-eqz v0, :cond_0

    const v0, 0x7f0a044a

    .line 2538
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2539
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->M:Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2540
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2541
    invoke-static {p0, v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 2

    const v0, 0x7f0a044a

    .line 2547
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2548
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->M:Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2549
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->M:Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController;->setListener(Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController$Listener;)V

    .line 2550
    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->M:Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController;

    return-void
.end method

.method public final g()V
    .locals 2

    .line 2579
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->cR:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public getBottomBarScrollListener()Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/BottomBarScrollListener$Listener;
    .locals 1

    .line 2507
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->getBottomBarPresenter()Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;

    move-result-object v0

    return-object v0
.end method

.method public getContactsFragment()Lcom/callapp/contacts/activity/contact/list/ContactsFragment;
    .locals 1

    const/4 v0, 0x1

    .line 2067
    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->getFragmentByPosition(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;

    return-object v0
.end method

.method public getCurrentFilter()Ljava/lang/String;
    .locals 1

    .line 3302
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->I:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentPage()I
    .locals 1

    .line 3428
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->s:Lcom/callapp/contacts/widget/PagingTogglableViewPager;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/PagingTogglableViewPager;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d002e

    return v0
.end method

.method public getState()Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;
    .locals 2

    .line 453
    sget-object v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$37;->a:[I

    sget-object v1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->r:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 462
    sget-object v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->r:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    return-object v0

    .line 456
    :cond_0
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->isKeypadOpenedOrOpening()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 457
    sget-object v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->DIALER:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    return-object v0

    .line 459
    :cond_1
    sget-object v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->CONTACTS_NONE:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    return-object v0
.end method

.method public getStatusBarColor()I
    .locals 1

    .line 809
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f060088

    goto :goto_0

    :cond_0
    const v0, 0x7f060026

    :goto_0
    invoke-static {p0, v0}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public getStoreItemAssetManager()Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;
    .locals 1

    .line 2521
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->w:Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;

    return-object v0
.end method

.method public getSuperSkinWizardScrollListener()Lcom/callapp/contacts/activity/interfaces/SuperSkinWizardScrollListener;
    .locals 1

    .line 2512
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->x:Lcom/callapp/contacts/activity/interfaces/SuperSkinWizardScrollListener;

    return-object v0
.end method

.method public final h()V
    .locals 0

    .line 2692
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->j()V

    return-void
.end method

.method public final i()V
    .locals 3

    .line 2697
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Menu"

    const-string v2, "ClickMenuOrangeStoreButton"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2698
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2699
    invoke-static {p0, v0}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public isTabsVisible()Z
    .locals 1

    .line 1920
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->q:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final j()V
    .locals 2

    .line 2713
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->N:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2714
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->N:Z

    .line 2715
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/callapp/contacts/activity/EditUserProfileActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x1b58

    invoke-virtual {p0, v0, v1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public final k()V
    .locals 4

    .line 2721
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Contact List"

    const-string v2, "Open Settings from slide menu"

    const-string v3, "Clicked"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2722
    invoke-static {p0}, Lcom/callapp/contacts/util/Activities;->d(Landroid/app/Activity;)V

    return-void
.end method

.method public final l()V
    .locals 7

    const/4 v0, 0x0

    .line 3025
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->G:Z

    .line 3028
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v1

    const-string v2, "UpdatedFromPlayEnabled"

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->c(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const v1, 0x7f120688

    .line 3029
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Google Play"

    invoke-static {v1, v3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3030
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->gS:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v3, v1

    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v1

    const-string v5, "UpdatedFromPlayIntervals"

    invoke-virtual {v1, v5}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->b(Ljava/lang/String;)J

    move-result-wide v5

    rem-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    .line 3031
    invoke-static {p0}, Lcom/callapp/contacts/activity/contact/list/UpdateManager;->a(Landroid/app/Activity;)V

    goto :goto_0

    .line 3033
    :cond_0
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->gS:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    .line 20039
    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->b(I)Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    .line 3038
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->p()Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_3

    .line 3041
    :cond_2
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->eY:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3042
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->eY:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 3043
    new-instance v1, Lcom/callapp/contacts/popup/contact/callrecorder/AccessibilityServiceDialog;

    new-instance v3, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$32;

    invoke-direct {v3, p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$32;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V

    invoke-direct {v1, v3}, Lcom/callapp/contacts/popup/contact/callrecorder/AccessibilityServiceDialog;-><init>(Lcom/callapp/contacts/manager/popup/PopupDoneListener;)V

    .line 3049
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v3

    invoke-virtual {v3, p0, v1}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    goto :goto_1

    .line 3051
    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v1, v3, :cond_6

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->R:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    .line 3052
    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->isNotNull()Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->R:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    .line 3053
    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->T:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v1, v3, :cond_6

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->eM:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    .line 3054
    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    .line 3056
    invoke-static {}, Lcom/callapp/contacts/recorder/CallRecorderManager;->get()Lcom/callapp/contacts/recorder/CallRecorderManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/recorder/CallRecorderManager;->isTermsAccepted()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/callapp/contacts/manager/permission/PermissionManager;->get()Lcom/callapp/contacts/manager/permission/PermissionManager;

    const-string v3, "android.permission.RECORD_AUDIO"

    invoke-static {v3}, Lcom/callapp/contacts/manager/permission/PermissionManager;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3057
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v3

    if-nez v3, :cond_4

    .line 3058
    new-instance v1, Lcom/callapp/contacts/popup/contact/callrecorder/CallRecordingUpdateDialog;

    invoke-direct {v1}, Lcom/callapp/contacts/popup/contact/callrecorder/CallRecordingUpdateDialog;-><init>()V

    :cond_4
    if-eqz v1, :cond_5

    .line 3062
    invoke-virtual {v1, v0}, Lcom/callapp/contacts/manager/popup/DialogPopup;->setCancelable(Z)V

    .line 3063
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v3

    invoke-virtual {v3, p0, v1}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 3067
    :goto_2
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->eM:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :goto_3
    if-nez v1, :cond_7

    .line 3069
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->hR:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v1, ""

    .line 3071
    invoke-static {v1}, Lcom/callapp/contacts/api/helper/backup/BackupUtils;->a(Ljava/lang/String;)V

    .line 3072
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->hR:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    goto :goto_4

    :cond_7
    move v2, v1

    :goto_4
    if-nez v2, :cond_8

    .line 20050
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->cO:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_8

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->cR:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 20051
    new-instance v1, Lcom/callapp/contacts/activity/marketplace/FreeStoreItemDialog;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/marketplace/FreeStoreItemDialog;-><init>(Lcom/callapp/contacts/activity/marketplace/FreeStoreItemDialog$FreeStoreItemDialogEvents;)V

    .line 20052
    invoke-virtual {v1, v0}, Lcom/callapp/contacts/activity/marketplace/FreeStoreItemDialog;->setCancelable(Z)V

    .line 20053
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    :cond_8
    return-void
.end method

.method public final m()V
    .locals 2

    .line 3287
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->E:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;

    sget-object v1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->ON_LIST_SCROLLED:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .line 2326
    invoke-super {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2327
    invoke-static {p1, p2, p3}, Lcom/callapp/contacts/api/helper/common/SocialNetworksSearchUtil;->a(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x3a98

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    const v0, -0x10f447

    if-ne p2, v0, :cond_1

    .line 2332
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->finish()V

    .line 2333
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    return-void

    :cond_1
    const/16 v0, 0x22b

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq p1, v0, :cond_9

    const/16 v0, 0x1388

    const/16 v4, 0x1770

    if-eq p1, v0, :cond_8

    if-eq p1, v4, :cond_8

    const/16 v0, 0x1b58

    if-eq p1, v0, :cond_3

    const/16 p3, 0x3039

    if-eq p1, p3, :cond_2

    goto/16 :goto_1

    :cond_2
    if-ne p2, v3, :cond_c

    .line 2340
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->recreate()V

    const/high16 p1, 0x10a0000

    const p2, 0x10a0001

    .line 2341
    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->overridePendingTransition(II)V

    return-void

    .line 2345
    :cond_3
    iput-boolean v1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->N:Z

    if-ne p2, v3, :cond_c

    .line 2347
    const-class p1, Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {p1, p3}, Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler;->a(Ljava/lang/Class;Landroid/content/Intent;)Ljava/util/List;

    move-result-object p1

    .line 2348
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->getSlideMenuFragment()Lcom/callapp/contacts/widget/SlideMenuFragment;

    move-result-object p2

    .line 2349
    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 2350
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/callapp/contacts/model/contact/ContactField;

    .line 2351
    sget-object v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$37;->c:[I

    invoke-virtual {p3}, Lcom/callapp/contacts/model/contact/ContactField;->ordinal()I

    move-result p3

    aget p3, v0, p3

    if-eq p3, v2, :cond_6

    const/4 v0, 0x2

    if-eq p3, v0, :cond_5

    goto :goto_0

    :cond_5
    if-eqz p2, :cond_4

    .line 16108
    iget-object p3, p2, Lcom/callapp/contacts/widget/SlideMenuFragment;->a:Lcom/callapp/contacts/widget/SlideMenuAdapter;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/callapp/contacts/widget/SlideMenuAdapter;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    if-eqz p2, :cond_4

    .line 15112
    iget-object p3, p2, Lcom/callapp/contacts/widget/SlideMenuFragment;->a:Lcom/callapp/contacts/widget/SlideMenuAdapter;

    invoke-virtual {p3}, Lcom/callapp/contacts/widget/SlideMenuAdapter;->b()V

    goto :goto_0

    :cond_7
    return-void

    :cond_8
    if-ne p2, v3, :cond_c

    .line 2369
    iput v4, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->m:I

    .line 2370
    iput-boolean v2, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->l:Z

    .line 2371
    iput-object p3, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->n:Landroid/content/Intent;

    return-void

    :cond_9
    const-string p1, "UpgradeVersion"

    if-ne p2, v3, :cond_a

    .line 2376
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p2

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p3

    invoke-virtual {p3}, Lcom/callapp/contacts/CallAppApplication;->getVersionCode()I

    move-result p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "ClickOKUpgradePopup"

    invoke-virtual {p2, p1, v0, p3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    if-nez p2, :cond_b

    .line 2378
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p2

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p3

    invoke-virtual {p3}, Lcom/callapp/contacts/CallAppApplication;->getVersionCode()I

    move-result p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "ClickCancelUpgradePopup"

    invoke-virtual {p2, p1, v0, p3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_b
    if-ne p2, v2, :cond_c

    .line 2380
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p2

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p3

    invoke-virtual {p3}, Lcom/callapp/contacts/CallAppApplication;->getVersionCode()I

    move-result p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "FailUpgradePopup"

    invoke-virtual {p2, p1, v0, p3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_1
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 1141
    invoke-static {}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->get()Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->isRecorderTestRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1142
    invoke-static {}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->get()Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->isInRecorderTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->isKeypadOpenedOrOpening()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1143
    invoke-static {p0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->a(Landroid/content/Context;)V

    .line 1144
    invoke-static {}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->get()Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->setInRecorderTestMode(Z)V

    .line 1145
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;->onBackPressed()V

    return-void

    .line 1149
    :cond_0
    sget-object v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->r:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    sget-object v2, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->CALL_LOG_FIRST_EXPERIENCE:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    if-ne v0, v2, :cond_1

    .line 1150
    invoke-static {}, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLog;->get()Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLog;->e()V

    return-void

    .line 1153
    :cond_1
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->isSlideMenuOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1154
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->z()V

    return-void

    .line 1155
    :cond_2
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->getState()Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->e(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1156
    invoke-direct {p0, v1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->h(Z)V

    .line 1157
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->getState()Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->d(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;)Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->setState(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;)V

    return-void

    .line 1158
    :cond_3
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->isKeypadOpenedOrOpening()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1159
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->E:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;

    sget-object v1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->ON_BACK_PRESSED_KEYPAD_OPEN:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;)V

    return-void

    .line 1160
    :cond_4
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->S:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->v:Lcom/callapp/contacts/manager/CallAppBarManager;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/CallAppBarManager;->isInSearchMode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1161
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->v:Lcom/callapp/contacts/manager/CallAppBarManager;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/CallAppBarManager;->getCurrentSearchText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1162
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->v:Lcom/callapp/contacts/manager/CallAppBarManager;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/CallAppBarManager;->a()V

    const/4 v0, 0x1

    const-string v2, ""

    .line 1165
    invoke-direct {p0, v2, v1, v0, v1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->a(Ljava/lang/String;ZZZ)V

    return-void

    .line 1168
    :cond_5
    invoke-direct {p0, v1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->c(Z)V

    return-void

    .line 1172
    :cond_6
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->getState()Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->c(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;)Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->CALL_LOG:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    if-ne v0, v1, :cond_7

    .line 1173
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->da:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->set(Ljava/lang/Object;)V

    .line 1174
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/CallLogLastSeenTimestampEventListener;->c:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v2, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->LAST_SEEN_CALL_LOG_TIMESTAMP:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/event/bus/EventBus;->c(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 1178
    :cond_7
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;->onBackPressed()V

    return-void
.end method

.method public onCloseKeypadRequestedByUser(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2465
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->I:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->b(Ljava/lang/String;)V

    .line 2466
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->v:Lcom/callapp/contacts/manager/CallAppBarManager;

    .line 18286
    iget-object p1, p1, Lcom/callapp/contacts/manager/CallAppBarManager;->c:Lcom/callapp/contacts/widget/CallAppToolbar;

    .line 18441
    iget-object p1, p1, Lcom/callapp/contacts/widget/CallAppToolbar;->b:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView;->requestFocus()Z

    return-void

    .line 2468
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->E:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;

    sget-object v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->ON_KEYPAD_CLOSE_PRESSED:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    invoke-static {p1, v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 504
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x23

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    if-eqz v1, :cond_0

    const-string v2, "android:support:fragments"

    .line 4496
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v2, "android:fragments"

    .line 4497
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 506
    :cond_0
    invoke-super/range {p0 .. p1}, Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 508
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->getLastCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->O:Z

    .line 510
    invoke-static {}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 511
    invoke-direct/range {p0 .. p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->r()V

    return-void

    .line 515
    :cond_2
    invoke-static {}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 516
    invoke-direct/range {p0 .. p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->r()V

    return-void

    .line 4549
    :cond_3
    iget-object v2, v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->o:Lcom/callapp/contacts/activity/contact/details/PresenterManager;

    iget-object v5, v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->V:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    invoke-virtual {v2, v5}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->c(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    .line 4799
    new-instance v2, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$11;

    invoke-direct {v2, v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$11;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V

    .line 4804
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$11;->execute()Lcom/callapp/contacts/manager/task/Task;

    .line 4552
    invoke-static {}, Lcom/callapp/contacts/activity/contact/list/RetentionAnalytics;->get()Lcom/callapp/contacts/activity/contact/list/RetentionAnalytics;

    move-result-object v2

    .line 5028
    sget-object v5, Lcom/callapp/contacts/manager/preferences/Prefs;->bq:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v5}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 5029
    new-instance v5, Lcom/callapp/contacts/activity/contact/list/RetentionAnalytics$1;

    invoke-direct {v5, v2}, Lcom/callapp/contacts/activity/contact/list/RetentionAnalytics$1;-><init>(Lcom/callapp/contacts/activity/contact/list/RetentionAnalytics;)V

    .line 5055
    invoke-virtual {v5}, Lcom/callapp/contacts/activity/contact/list/RetentionAnalytics$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    :cond_4
    const v2, 0x7f12023e

    .line 4553
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->setTitle(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    const v2, 0x7f0a034f

    .line 5813
    invoke-virtual {v0, v2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/drawerlayout/widget/DrawerLayout;

    iput-object v2, v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->d:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 5814
    new-instance v5, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$12;

    invoke-direct {v5, v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$12;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V

    invoke-virtual {v2, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Landroidx/drawerlayout/widget/DrawerLayout$c;)V

    .line 5855
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f070373

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 5856
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->getScreenOrientation()I

    move-result v5

    invoke-static {v5}, Lcom/callapp/contacts/util/Activities;->getScreenWidth(I)I

    move-result v5

    sub-int/2addr v5, v2

    const v2, 0x7f0a083b

    .line 5857
    invoke-virtual {v0, v2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/callapp/contacts/util/ViewUtils;->h(Landroid/view/View;I)V

    .line 5859
    iget-object v5, v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->e:Lcom/callapp/contacts/manager/CallAppDrawerManager;

    invoke-virtual {v5}, Lcom/callapp/contacts/manager/CallAppDrawerManager;->getDrawerItems()Ljava/util/ArrayList;

    move-result-object v5

    .line 5861
    invoke-static {v5, v0, v1}, Lcom/callapp/contacts/widget/SlideMenuFragment;->a(Ljava/util/ArrayList;Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuEvents;Z)Lcom/callapp/contacts/widget/SlideMenuFragment;

    move-result-object v1

    .line 5862
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v5

    .line 5863
    invoke-virtual {v5}, Landroidx/fragment/app/FragmentManager;->a()Landroidx/fragment/app/s;

    move-result-object v5

    const-string v6, "slide_menu_frag"

    .line 5864
    invoke-virtual {v5, v2, v1, v6}, Landroidx/fragment/app/s;->b(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/s;

    move-result-object v1

    .line 5865
    invoke-virtual {v1}, Landroidx/fragment/app/s;->c()I

    const v1, 0x7f0a0199

    .line 5873
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/widget/CallAppToolbar;

    iput-object v1, v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->P:Lcom/callapp/contacts/widget/CallAppToolbar;

    .line 5874
    new-instance v2, Lcom/callapp/contacts/manager/CallAppBarManager;

    iget-object v5, v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->d:Landroidx/drawerlayout/widget/DrawerLayout;

    new-instance v6, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$13;

    invoke-direct {v6, v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$13;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V

    invoke-direct {v2, v0, v5, v1, v6}, Lcom/callapp/contacts/manager/CallAppBarManager;-><init>(Landroidx/appcompat/app/AppCompatActivity;Landroidx/drawerlayout/widget/DrawerLayout;Lcom/callapp/contacts/widget/CallAppToolbar;Lcom/callapp/contacts/manager/CallAppBarManager$CallAppBarEvents;)V

    iput-object v2, v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->v:Lcom/callapp/contacts/manager/CallAppBarManager;

    const v1, 0x7f0a03d4

    .line 6924
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iput-object v1, v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->D:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const v2, 0x7f060088

    .line 6925
    invoke-static {v0, v2}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 6927
    iget-object v1, v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->D:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance v2, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$24;

    invoke-direct {v2, v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$24;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V

    invoke-virtual {v1, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7000
    invoke-direct {v0, v3}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->getFragmentByPosition(I)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;

    if-nez v1, :cond_6

    .line 7002
    new-instance v1, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;

    invoke-direct {v1}, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;-><init>()V

    .line 7004
    :cond_6
    invoke-direct {v0, v4}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->getFragmentByPosition(I)Landroidx/fragment/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/activity/calllog/CallLogFragment;

    if-nez v2, :cond_7

    .line 7006
    new-instance v2, Lcom/callapp/contacts/activity/calllog/CallLogFragment;

    invoke-direct {v2}, Lcom/callapp/contacts/activity/calllog/CallLogFragment;-><init>()V

    .line 7009
    :cond_7
    invoke-static {}, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLog;->get()Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLog;

    invoke-static {}, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLog;->d()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 7010
    invoke-static {}, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLog;->get()Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLog;

    move-result-object v5

    new-instance v6, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$FirstTimeExperienceCallLogListener;

    invoke-direct {v6, v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$FirstTimeExperienceCallLogListener;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V

    .line 7055
    iget-object v7, v5, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLog;->a:Ljava/util/List;

    if-nez v7, :cond_8

    .line 7056
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v5, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLog;->a:Ljava/util/List;

    .line 7059
    :cond_8
    iget-object v5, v5, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLog;->a:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7013
    :cond_9
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 7014
    invoke-interface {v5, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 7015
    invoke-interface {v5, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 7090
    new-instance v1, Lcom/callapp/contacts/activity/contact/list/TabsAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, v2, v5}, Lcom/callapp/contacts/activity/contact/list/TabsAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    iput-object v1, v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->p:Lcom/callapp/contacts/activity/contact/list/TabsAdapter;

    const v1, 0x7f0a08d6

    .line 7091
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/widget/PagingTogglableViewPager;

    iput-object v1, v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->s:Lcom/callapp/contacts/widget/PagingTogglableViewPager;

    const v1, 0x7f0a07ad

    .line 7092
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->g:Landroid/view/ViewGroup;

    const v2, 0x7f060026

    .line 7093
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    const/16 v1, 0x8

    .line 7094
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->c(I)V

    .line 7095
    iget-object v1, v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->s:Lcom/callapp/contacts/widget/PagingTogglableViewPager;

    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->t:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/widget/PagingTogglableViewPager;->setPagingEnabled(Z)V

    .line 7096
    iget-object v1, v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->s:Lcom/callapp/contacts/widget/PagingTogglableViewPager;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/widget/PagingTogglableViewPager;->setOffscreenPageLimit(I)V

    .line 7097
    iget-object v1, v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->s:Lcom/callapp/contacts/widget/PagingTogglableViewPager;

    iget-object v2, v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->p:Lcom/callapp/contacts/activity/contact/list/TabsAdapter;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/widget/PagingTogglableViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    const v1, 0x7f0a08d4

    .line 7099
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/tabs/TabLayout;

    iput-object v1, v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->q:Lcom/google/android/material/tabs/TabLayout;

    .line 7100
    iget-object v2, v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->s:Lcom/callapp/contacts/widget/PagingTogglableViewPager;

    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 7101
    invoke-direct {v0, v5}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->a(Ljava/util/List;)V

    .line 4559
    iget-object v1, v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->q:Lcom/google/android/material/tabs/TabLayout;

    const v2, 0x7f060127

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/google/android/material/tabs/TabLayout;->setBackgroundColor(I)V

    .line 4560
    new-instance v1, Lcom/callapp/contacts/activity/interfaces/SuperSkinWizardScrollListener;

    invoke-direct {v1}, Lcom/callapp/contacts/activity/interfaces/SuperSkinWizardScrollListener;-><init>()V

    iput-object v1, v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->x:Lcom/callapp/contacts/activity/interfaces/SuperSkinWizardScrollListener;

    .line 7692
    new-instance v1, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;

    invoke-direct {v1}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;-><init>()V

    sget-object v5, Lcom/callapp/contacts/manager/preferences/Prefs;->dW:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    new-instance v7, Lcom/callapp/contacts/manager/asset/mappers/AssetListenerMapper;

    new-instance v8, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$9;

    invoke-direct {v8, v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$9;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V

    invoke-direct {v7, v8}, Lcom/callapp/contacts/manager/asset/mappers/AssetListenerMapper;-><init>(Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;)V

    .line 7693
    invoke-virtual {v1, v5, v7}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;->b(Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;)Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;

    move-result-object v1

    sget-object v5, Lcom/callapp/contacts/manager/preferences/Prefs;->dV:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    new-instance v7, Lcom/callapp/contacts/manager/asset/mappers/AssetListenerMapper;

    new-instance v8, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$8;

    invoke-direct {v8, v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$8;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V

    invoke-direct {v7, v8}, Lcom/callapp/contacts/manager/asset/mappers/AssetListenerMapper;-><init>(Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;)V

    .line 7716
    invoke-virtual {v1, v5, v7}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;->a(Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;)Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;

    move-result-object v1

    .line 7733
    sget-object v5, Lcom/callapp/contacts/manager/preferences/Prefs;->dM:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v5}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->isNotNull()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 7734
    sget-object v5, Lcom/callapp/contacts/manager/preferences/Prefs;->dX:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    new-instance v7, Lcom/callapp/contacts/activity/contact/list/-$$Lambda$ContactsListActivity$03RmOv9BrPl1D9_e4KDh7l5XZVg;

    invoke-direct {v7, v0}, Lcom/callapp/contacts/activity/contact/list/-$$Lambda$ContactsListActivity$03RmOv9BrPl1D9_e4KDh7l5XZVg;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V

    invoke-virtual {v1, v5, v7}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;->d(Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;)Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;

    goto :goto_2

    .line 7741
    :cond_a
    sget-object v5, Lcom/callapp/contacts/manager/preferences/Prefs;->dX:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    new-instance v7, Lcom/callapp/contacts/manager/asset/mappers/AssetListenerMapper;

    new-instance v8, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$10;

    invoke-direct {v8, v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$10;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V

    invoke-direct {v7, v8}, Lcom/callapp/contacts/manager/asset/mappers/AssetListenerMapper;-><init>(Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;)V

    invoke-virtual {v1, v5, v7}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;->c(Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;)Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;

    .line 7755
    :goto_2
    invoke-virtual {v1}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;->a()Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;

    move-result-object v1

    iput-object v1, v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->w:Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;

    .line 7756
    invoke-virtual {v1}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;->getAssets()V

    .line 8603
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->C:Ljava/util/Map;

    .line 8605
    sget-object v5, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->CONTACTS_NONE:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    const-string v7, "CONTACTS"

    invoke-interface {v1, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8606
    iget-object v1, v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->C:Ljava/util/Map;

    sget-object v5, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->CONTACTS_NONE:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    const-string v7, "KEYBOARD"

    invoke-interface {v1, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8607
    iget-object v1, v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->C:Ljava/util/Map;

    sget-object v5, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->CONTACTS_NONE:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    const-string v7, "KEYPAD"

    invoke-interface {v1, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8608
    iget-object v1, v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->C:Ljava/util/Map;

    sget-object v5, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->CALL_LOG:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    const-string v7, "CALL_LOG"

    invoke-interface {v1, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8609
    iget-object v1, v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->C:Ljava/util/Map;

    sget-object v5, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->FAVORITES:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    const-string v7, "FAVORITES"

    invoke-interface {v1, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8612
    iget-object v1, v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->C:Ljava/util/Map;

    sget-object v5, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->DIALER:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    invoke-virtual {v5}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->name()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->DIALER:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    invoke-interface {v1, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8613
    iget-object v1, v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->C:Ljava/util/Map;

    sget-object v5, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->FAVORITES:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    invoke-virtual {v5}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->name()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->FAVORITES:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    invoke-interface {v1, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8614
    iget-object v1, v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->C:Ljava/util/Map;

    sget-object v5, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->CALL_LOG:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    invoke-virtual {v5}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->name()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->CALL_LOG:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    invoke-interface {v1, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8615
    iget-object v1, v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->C:Ljava/util/Map;

    sget-object v5, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->CONTACTS_NONE:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    invoke-virtual {v5}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->name()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->CONTACTS_NONE:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    invoke-interface {v1, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f0a00e4

    .line 4563
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v1, v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->f:Lcom/google/android/material/appbar/AppBarLayout;

    .line 4564
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/appbar/AppBarLayout;->setBackgroundColor(I)V

    .line 4565
    sget-object v1, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v2, Lcom/callapp/contacts/activity/interfaces/CallEventListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    iget-object v5, v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->W:Lcom/callapp/contacts/activity/interfaces/CallEventListener;

    invoke-virtual {v1, v2, v5}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 4566
    sget-object v1, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v2, Lcom/callapp/contacts/activity/interfaces/CallLogFirstTimeExperienceEventListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    iget-object v5, v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->X:Lcom/callapp/contacts/activity/interfaces/CallLogFirstTimeExperienceEventListener;

    invoke-virtual {v1, v2, v5}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 4567
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->b(Landroid/content/Intent;)V

    .line 4568
    invoke-direct/range {p0 .. p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->z()V

    .line 9597
    iget-object v1, v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->q:Lcom/google/android/material/tabs/TabLayout;

    new-instance v2, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$5;

    iget-object v5, v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->s:Lcom/callapp/contacts/widget/PagingTogglableViewPager;

    invoke-direct {v2, v0, v5}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$5;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;Landroidx/viewpager/widget/ViewPager;)V

    .line 9801
    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout;->a(Lcom/google/android/material/tabs/TabLayout$b;)V

    .line 9622
    iget-object v1, v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->s:Lcom/callapp/contacts/widget/PagingTogglableViewPager;

    new-instance v2, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$6;

    invoke-direct {v2, v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$6;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/widget/PagingTogglableViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$e;)V

    .line 10789
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->fv:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->ai:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_b

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->ah:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 10790
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->ah:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v2, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/date/DateUtils;->b(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v1

    const-wide/16 v7, 0x1

    cmp-long v5, v1, v7

    if-ltz v5, :cond_b

    .line 10791
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->fv:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 10792
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v1

    const-string v2, "Permissions"

    const-string v5, "Run in background"

    const-string v7, "show after 1 day"

    invoke-virtual {v1, v2, v5, v7}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 10793
    invoke-static {v0, v1}, Lcom/callapp/contacts/util/PowerUtils;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/task/Task$DoneListener;)V

    .line 4573
    :cond_b
    invoke-static {}, Lcom/callapp/contacts/manager/permission/PermissionManager;->get()Lcom/callapp/contacts/manager/permission/PermissionManager;

    const-string v1, "android.permission.READ_SMS"

    invoke-static {v1}, Lcom/callapp/contacts/manager/permission/PermissionManager;->a(Ljava/lang/String;)Z

    move-result v1

    const-wide/16 v7, 0x8

    if-nez v1, :cond_e

    .line 4574
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->bG:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_c

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->bF:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    sget-object v5, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v2, v5}, Lcom/callapp/contacts/util/date/DateUtils;->a(Ljava/util/Date;Ljava/util/Date;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    const-wide/16 v9, 0x4

    cmp-long v5, v1, v9

    if-gez v5, :cond_d

    :cond_c
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->bG:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    .line 4575
    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_e

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->bF:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    sget-object v5, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v2, v5}, Lcom/callapp/contacts/util/date/DateUtils;->a(Ljava/util/Date;Ljava/util/Date;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    cmp-long v5, v1, v7

    if-ltz v5, :cond_e

    .line 4576
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->getPermissionManager()Lcom/callapp/contacts/manager/permission/PermissionManager;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/activity/contact/list/-$$Lambda$ContactsListActivity$70XIPOyAMGMPPjarvJWhJ0CMh2s;->INSTANCE:Lcom/callapp/contacts/activity/contact/list/-$$Lambda$ContactsListActivity$70XIPOyAMGMPPjarvJWhJ0CMh2s;

    sget-object v5, Lcom/callapp/contacts/activity/contact/list/-$$Lambda$ContactsListActivity$a3Wu9gUmISynWi1KmNOFzqbsUAU;->INSTANCE:Lcom/callapp/contacts/activity/contact/list/-$$Lambda$ContactsListActivity$a3Wu9gUmISynWi1KmNOFzqbsUAU;

    new-array v3, v3, [Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

    sget-object v9, Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;->SMS:Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

    aput-object v9, v3, v4

    invoke-virtual {v1, v0, v2, v5, v3}, Lcom/callapp/contacts/manager/permission/PermissionManager;->a(Lcom/callapp/contacts/activity/base/BaseActivity;Ljava/lang/Runnable;Ljava/lang/Runnable;[Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;)V

    .line 4579
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->bG:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v1, v6}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->a(I)Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    .line 4580
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->bF:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->set(Ljava/lang/Object;)V

    .line 4584
    :cond_e
    invoke-static {}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->isBillingAvailable()Z

    move-result v1

    if-eqz v1, :cond_f

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->cJ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_f

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->aL:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_f

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->aO:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_f

    .line 4585
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->aM:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    sget-object v3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v2, v3}, Lcom/callapp/contacts/util/date/DateUtils;->a(Ljava/util/Date;Ljava/util/Date;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    cmp-long v3, v1, v7

    if-nez v3, :cond_f

    const v1, 0x7f12018d

    .line 11278
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12018b

    .line 11279
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 11280
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->aO:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 11281
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v2

    new-instance v3, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;

    const v6, 0x7f0800aa

    const/4 v7, 0x0

    const v8, 0x7f080079

    new-array v4, v4, [C

    invoke-static {v1, v4}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f060088

    const v1, 0x7f120187

    .line 11282
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$30;

    invoke-direct {v13, v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$30;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V

    const/4 v15, 0x1

    const v16, 0x7f0601cc

    new-instance v1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$31;

    invoke-direct {v1, v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$31;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V

    const-string v14, ""

    move-object v5, v3

    move-object/from16 v17, v1

    invoke-direct/range {v5 .. v17}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;-><init>(IIILjava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Ljava/lang/String;ZILcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    .line 11281
    invoke-virtual {v2, v0, v3}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    .line 4591
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "extra_default_phone_app_from_watch"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 4592
    invoke-direct/range {p0 .. p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->A()V

    .line 522
    :cond_10
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$4;

    invoke-direct {v2, v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$4;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->setDefaultsIfNeeded(Lcom/callapp/contacts/manager/task/Task$DoneListener;)V

    .line 541
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->aR:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->aR:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null"

    invoke-static {v1, v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->aV:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    .line 542
    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->aV:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 543
    :cond_11
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->aR:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->aV:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Registration"

    const-string v4, "Empty callappid or token"

    invoke-virtual {v1, v3, v4, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 1717
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/CallEventListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->W:Lcom/callapp/contacts/activity/interfaces/CallEventListener;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/event/bus/EventBus;->b(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 1718
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/CallLogFirstTimeExperienceEventListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->X:Lcom/callapp/contacts/activity/interfaces/CallLogFirstTimeExperienceEventListener;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/event/bus/EventBus;->b(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 1719
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Screen"

    const-string v2, "ScreenClose"

    const-string v3, "Contact List Screen "

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1720
    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->g(Z)V

    .line 1721
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->v:Lcom/callapp/contacts/manager/CallAppBarManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v3, "CallAppBarManager"

    .line 12072
    invoke-static {v3}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 12073
    iget-object v3, v1, Lcom/callapp/contacts/manager/CallAppBarManager;->d:Lcom/callapp/contacts/activity/interfaces/SearchContactsEvents;

    if-eqz v3, :cond_0

    .line 12074
    iget-object v3, v1, Lcom/callapp/contacts/manager/CallAppBarManager;->d:Lcom/callapp/contacts/activity/interfaces/SearchContactsEvents;

    invoke-interface {v3, v1}, Lcom/callapp/contacts/activity/interfaces/SearchContactsEvents;->unRegisterFilteredEvents(Lcom/callapp/contacts/activity/interfaces/SearchContactsFilter;)V

    .line 12075
    iput-object v2, v1, Lcom/callapp/contacts/manager/CallAppBarManager;->d:Lcom/callapp/contacts/activity/interfaces/SearchContactsEvents;

    .line 12077
    :cond_0
    iput-object v2, v1, Lcom/callapp/contacts/manager/CallAppBarManager;->b:Landroidx/appcompat/app/AppCompatActivity;

    .line 1724
    :cond_1
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->L:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v3, Lcom/callapp/contacts/event/listener/DestroyListener;->d:Lcom/callapp/contacts/event/bus/EventType;

    .line 12091
    invoke-virtual {v1, v3, v2, v0}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    .line 1725
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->o:Lcom/callapp/contacts/activity/contact/details/PresenterManager;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->a()V

    .line 1726
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->V:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->onDestroy()V

    .line 1728
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->y:Lcom/callapp/contacts/widget/tutorial/TutorialViewController;

    if-eqz v0, :cond_2

    .line 1729
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->y:Lcom/callapp/contacts/widget/tutorial/TutorialViewController;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/j;->removeObserver(Landroidx/lifecycle/o;)V

    .line 1732
    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->w:Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;

    if-eqz v0, :cond_3

    .line 1733
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;->b()V

    .line 1736
    :cond_3
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->y:Lcom/callapp/contacts/widget/tutorial/TutorialViewController;

    if-eqz v0, :cond_4

    .line 1737
    invoke-virtual {v0}, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->onDestroy()V

    .line 1740
    :cond_4
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->Y:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    if-eqz v0, :cond_5

    .line 1741
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->b()V

    .line 1744
    :cond_5
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->x:Lcom/callapp/contacts/activity/interfaces/SuperSkinWizardScrollListener;

    if-eqz v0, :cond_7

    .line 13032
    iget-object v1, v0, Lcom/callapp/contacts/activity/interfaces/SuperSkinWizardScrollListener;->a:Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;

    if-eqz v1, :cond_6

    .line 13033
    iget-object v0, v0, Lcom/callapp/contacts/activity/interfaces/SuperSkinWizardScrollListener;->a:Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;->b()V

    .line 1746
    :cond_6
    iput-object v2, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->x:Lcom/callapp/contacts/activity/interfaces/SuperSkinWizardScrollListener;

    .line 1749
    :cond_7
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;->onDestroy()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 1754
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1755
    invoke-static {p0}, Lcom/callapp/contacts/util/Activities;->d(Landroid/app/Activity;)V

    const/4 p1, 0x1

    return p1

    .line 1759
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeypadStateChanged(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;)V
    .locals 2

    .line 2449
    sget-object v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$37;->d:[I

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 2455
    :cond_0
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->isSearchState()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->E:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->getPrevEvent()Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    move-result-object p1

    sget-object v1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->ON_BACK_PRESSED_SEARCH_OPEN:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    if-eq p1, v1, :cond_1

    .line 2456
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->E:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;

    sget-object v1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->ON_KEYPAD_CLOSING:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    invoke-static {p1, v1, v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;Z)V

    :cond_1
    :goto_0
    return-void

    .line 2451
    :cond_2
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->E:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;

    sget-object v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->ON_KEYPAD_OPENED:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    invoke-static {p1, v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 1196
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 1197
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->setIntent(Landroid/content/Intent;)V

    .line 1199
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->S:Z

    if-eqz v0, :cond_0

    .line 1200
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->a(Landroid/content/Intent;)V

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 1202
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->U:Z

    return-void
.end method

.method public onNumberChanged(Ljava/lang/String;IIIZ)V
    .locals 0

    if-eqz p5, :cond_3

    .line 2476
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2477
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->v:Lcom/callapp/contacts/manager/CallAppBarManager;

    invoke-virtual {p2}, Lcom/callapp/contacts/manager/CallAppBarManager;->a()V

    :cond_0
    const/4 p2, 0x0

    const/4 p5, 0x1

    if-gtz p4, :cond_2

    if-lez p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p3, 0x1

    .line 2480
    :goto_1
    invoke-direct {p0, p1, p3, p2, p5}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->a(Ljava/lang/String;ZZZ)V

    .line 2483
    :cond_3
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "Keypad numbers buttons clicked"

    .line 2484
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->a(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public onPause()V
    .locals 4

    .line 2434
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;->onPause()V

    .line 2435
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->L:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/event/listener/PauseListener;->a:Lcom/callapp/contacts/event/bus/EventType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 17091
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    .line 2436
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->A:Z

    if-eqz v0, :cond_0

    .line 2437
    iput-boolean v3, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->A:Z

    .line 17674
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.callapp.contacts/reexecuteIntent"

    .line 17675
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000

    .line 17676
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 17677
    new-instance v1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$22;

    invoke-direct {v1, p0, v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$22;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;Landroid/content/Intent;)V

    const/16 v0, 0x96

    .line 17683
    invoke-virtual {v1, v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$22;->schedule(I)Lcom/callapp/contacts/manager/task/Task;

    :cond_0
    return-void
.end method

.method public onPostResume()V
    .locals 5

    .line 2389
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;->onPostResume()V

    .line 2390
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->l:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2391
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->l:Z

    .line 2393
    iget v1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->m:I

    const/16 v2, 0x1388

    if-eq v1, v2, :cond_0

    const/16 v2, 0x1770

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 2396
    :cond_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->n:Landroid/content/Intent;

    if-eqz v1, :cond_1

    const-string v2, "android.speech.extra.RESULTS"

    .line 2397
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2398
    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2400
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v2

    const-string v3, "Contact List"

    const-string v4, "Voice search successfully finished"

    invoke-virtual {v2, v3, v4}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 2401
    iput-boolean v2, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->B:Z

    .line 2402
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->b(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 484
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 486
    iget-boolean p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->S:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 489
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->c(Z)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1768
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;->onResume()V

    .line 1770
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->S:Z

    if-eqz v0, :cond_0

    .line 1771
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->t()V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1773
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->T:Z

    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .line 474
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public onStop()V
    .locals 2

    .line 1695
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->cZ:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->getState()Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->c(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;)Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    .line 1697
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;->onStop()V

    return-void
.end method

.method public onThemeChanged()V
    .locals 2

    .line 3505
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/list/-$$Lambda$ContactsListActivity$uwCcGDh5KriB2TY7hBV3CaTxfn4;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/list/-$$Lambda$ContactsListActivity$uwCcGDh5KriB2TY7hBV3CaTxfn4;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    .line 3516
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;->onThemeChanged()V

    return-void
.end method

.method public onUserLeaveHint()V
    .locals 3

    .line 1702
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->getState()Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->c(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;)Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->CALL_LOG:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    if-ne v0, v1, :cond_0

    .line 1703
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->da:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->set(Ljava/lang/Object;)V

    .line 1704
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/CallLogLastSeenTimestampEventListener;->c:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v2, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->LAST_SEEN_CALL_LOG_TIMESTAMP:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/event/bus/EventBus;->c(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 1706
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->RECENT_CALLS:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    invoke-virtual {v0}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->ordinal()I

    move-result v0

    sget v1, Lcom/callapp/contacts/model/DataChangedInfo;->POSITION_ALL:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/model/DataChangedInfo;->create(III)Lcom/callapp/contacts/model/DataChangedInfo;

    move-result-object v0

    .line 1709
    sget-object v1, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v2, Lcom/callapp/contacts/activity/interfaces/NotifyDataChangedListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {v1, v2, v0}, Lcom/callapp/contacts/event/bus/EventBus;->c(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 1712
    :cond_0
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;->onUserLeaveHint()V

    return-void
.end method

.method public onVoiceSearchRequested()V
    .locals 1

    const/16 v0, 0x1770

    .line 2490
    invoke-static {p0, v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/app/Activity;I)V

    return-void
.end method

.method public registerFilteredEvents(Lcom/callapp/contacts/activity/interfaces/KeypadVisibilityEvents;)V
    .locals 0

    .line 2495
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->J:Lcom/callapp/contacts/activity/interfaces/KeypadVisibilityEvents;

    return-void
.end method

.method public registerFilteredEvents(Lcom/callapp/contacts/activity/interfaces/SearchContactsFilter;)V
    .locals 1

    .line 3292
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public shouldAssertPermissions()Z
    .locals 1

    .line 3169
    invoke-static {}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public shouldSkipEmptyView()Z
    .locals 2

    .line 3307
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->B:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3308
    iput-boolean v1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->B:Z

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public unRegisterFilteredEvents(Lcom/callapp/contacts/activity/interfaces/KeypadVisibilityEvents;)V
    .locals 1

    .line 2500
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->J:Lcom/callapp/contacts/activity/interfaces/KeypadVisibilityEvents;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 2501
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->J:Lcom/callapp/contacts/activity/interfaces/KeypadVisibilityEvents;

    :cond_0
    return-void
.end method

.method public unRegisterFilteredEvents(Lcom/callapp/contacts/activity/interfaces/SearchContactsFilter;)V
    .locals 1

    .line 3297
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
