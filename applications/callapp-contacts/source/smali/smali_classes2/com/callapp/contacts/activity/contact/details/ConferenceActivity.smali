.class public Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;
.super Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/interfaces/DialpadToggleListener;
.implements Lcom/callapp/contacts/activity/interfaces/KeypadVisibilityListener;
.implements Lcom/callapp/contacts/manager/phone/CallDetailsListener;
.implements Lcom/callapp/contacts/manager/phone/CallStateListener;
.implements Lcom/callapp/contacts/model/contact/ContactDataChangeListener;
.implements Lcom/callapp/contacts/recorder/interfaces/CallRecorderEvent;


# static fields
.field public static final EXTRA_SUPPRESS_ACTIVITY_CREATION_ANIMATION:Ljava/lang/String; = "shouldSuppressAnimation"

.field public static final ONE_SEC_IN_MILLIS:I = 0x3e8

.field public static final SNACK_BAR_DURATION:I = 0xfa0


# instance fields
.field private audioModeChangedListener:Lcom/callapp/contacts/manager/ProximityManager$AudioModeChanged;

.field private classSimpleName:Ljava/lang/String;

.field private final contactDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            ">;"
        }
    .end annotation
.end field

.field private keypadShown:Z

.field private keypadVisiblityEvents:Lcom/callapp/contacts/activity/interfaces/KeypadVisibilityEvents;

.field private rootView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;-><init>()V

    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->classSimpleName:Ljava/lang/String;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->contactDataList:Ljava/util/List;

    .line 99
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity$1;-><init>(Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->audioModeChangedListener:Lcom/callapp/contacts/manager/ProximityManager$AudioModeChanged;

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->requestUpdateUI()V

    return-void
.end method

.method static synthetic access$100(Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->showLockedNotificationOnScreen()V

    return-void
.end method

.method static synthetic access$200(Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;)Ljava/util/List;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->contactDataList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;Z)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->setScreenLocked(Z)V

    return-void
.end method

.method private addCards()V
    .locals 1

    .line 254
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity$4;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity$4;-><init>(Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;)V

    .line 276
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity$4;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method

.method private getRecyclerViewAdapter()Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;
    .locals 1

    .line 339
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->getRecyclerView()Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

    return-object v0
.end method

.method private removeContactDetailsListeners()V
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->contactDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/model/contact/ContactData;

    .line 281
    invoke-direct {p0, v1}, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->unRegisterForContactDataChanges(Lcom/callapp/contacts/model/contact/ContactData;)V

    goto :goto_0

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->contactDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private requestUpdateUI()V
    .locals 4

    .line 488
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity$8;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity$8;-><init>(Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private setScreenLocked(Z)V
    .locals 1

    .line 332
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->getRecyclerViewAdapter()Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;->setIsScreenLocked(Z)V

    :cond_0
    return-void
.end method

.method private showLockedNotificationOnScreen()V
    .locals 6

    .line 291
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->rootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const v1, 0x7f0a0840

    .line 292
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f120545

    .line 294
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/material/snackbar/Snackbar;->a(Landroid/view/View;Ljava/lang/CharSequence;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    .line 295
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->b()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;

    const v3, 0x7f0a0843

    .line 297
    invoke-virtual {v2, v3}, Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 300
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0d00b2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a0a83

    .line 301
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 302
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f060244

    .line 303
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v1, 0x7f0a0a82

    .line 305
    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v4, 0x7f1207ed

    .line 306
    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f060088

    .line 307
    invoke-static {v4}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 308
    new-instance v4, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity$5;

    invoke-direct {v4, p0, v0}, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity$5;-><init>(Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;Lcom/google/android/material/snackbar/Snackbar;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x0

    .line 316
    invoke-virtual {v2, v3, v1}, Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;->addView(Landroid/view/View;I)V

    .line 317
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->c()V

    .line 319
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity$6;

    invoke-direct {v2, p0, v0}, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity$6;-><init>(Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;Lcom/google/android/material/snackbar/Snackbar;)V

    const-wide/16 v3, 0xfa0

    invoke-virtual {v1, v2, v3, v4}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public static startConferenceActivity(Landroid/content/Context;Z)V
    .locals 2

    .line 91
    const-class v0, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;

    const-string v1, "starting conference activity"

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 92
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    .line 93
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x20050000

    .line 94
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_SHOW_KEYPAD"

    .line 95
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 96
    invoke-static {p0, v0}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private unRegisterCall(Lcom/callapp/contacts/model/call/CallData;)V
    .locals 1

    .line 530
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/call/CallState;->isDisconnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getContactDataByCallData(Lcom/callapp/contacts/model/call/CallData;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p1

    .line 532
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->unRegisterForContactDataChanges(Lcom/callapp/contacts/model/contact/ContactData;)V

    :cond_0
    return-void
.end method

.method private unRegisterForContactDataChanges(Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 1

    .line 287
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getContactLoaderManager()Lcom/callapp/contacts/manager/ContactLoaderManager;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/callapp/contacts/manager/ContactLoaderManager;->unRegisterForContactDetailsStack(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactDataChangeListener;)V

    return-void
.end method

.method private updateScreenLockState(Z)V
    .locals 2

    .line 499
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity$9;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity$9;-><init>(Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;Z)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 462
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 463
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 464
    iget-boolean p1, p0, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->keypadShown:Z

    if-eqz p1, :cond_0

    .line 465
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v1, "KEYPAD_FRAGMENT_TAG"

    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentManager;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;

    if-eqz p1, :cond_0

    .line 467
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a()V

    :cond_0
    return v0
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d002b

    return v0
.end method

.method protected getParallaxImpl(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$FlingListener;)Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;
    .locals 9

    .line 118
    new-instance v8, Lcom/callapp/contacts/activity/contact/details/ContactDetailsParallaxImpl;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    const v0, 0x7f0a025c

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->getPositionChangedListener()Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$PositionChangedListener;

    move-result-object v3

    .line 3083
    invoke-static {}, Lcom/callapp/contacts/manager/asset/managers/CoverAssetManager;->b()Z

    move-result v5

    .line 118
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, v8

    move-object v4, p1

    invoke-direct/range {v0 .. v7}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsParallaxImpl;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;Landroid/view/View;Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$PositionChangedListener;Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$FlingListener;ZLandroidx/lifecycle/j;Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController$contactDetailsThemeChangeListener;)V

    return-object v8
.end method

.method protected getPositionChangedListener()Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$PositionChangedListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getPresenterContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;
    .locals 1

    .line 113
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;->CONFERENCE_SCREEN:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    return-object v0
.end method

.method public getThemeResId()I
    .locals 3

    .line 123
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "shouldSuppressAnimation"

    .line 125
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->getNoTitleThemeNoTransitions()I

    move-result v0

    return v0

    .line 130
    :cond_0
    invoke-super {p0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->getThemeResId()I

    move-result v0

    return v0
.end method

.method protected isSnapOnUpRulesOk()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$onCreate$0$ConferenceActivity(Landroid/view/View;)V
    .locals 0

    .line 182
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->onBackPressed()V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 394
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->presenterManager:Lcom/callapp/contacts/activity/contact/details/PresenterManager;

    const-class v1, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;

    if-eqz v0, :cond_0

    .line 395
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 399
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->finish()V

    return-void
.end method

.method protected onButtonBarIconClicked(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onCallDetailsChanged([I)V
    .locals 4

    .line 422
    invoke-static {p1}, Lcom/callapp/contacts/util/ArrayUtils;->a([I)[Z

    move-result-object v0

    .line 423
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->eventBus:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v2, Lcom/callapp/contacts/manager/phone/CallDetailsListener;->d:Lcom/callapp/contacts/event/bus/EventType;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p1, v3}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    .line 425
    sget-object p1, Lcom/callapp/contacts/model/Constants;->CALL_ON_HOLD:[Z

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/callapp/contacts/model/Constants;->CALL_ADDED:[Z

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/callapp/contacts/model/Constants;->CALL_BEFORE_MERGE:[Z

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 428
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->setHoldContactData(Z)V

    return-void

    .line 426
    :cond_1
    :goto_0
    invoke-virtual {p0, v3}, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->setHoldContactData(Z)V

    return-void
.end method

.method public onCallStateChanged(Lcom/callapp/contacts/model/call/CallData;)V
    .locals 3

    .line 509
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    .line 511
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->shouldConferenceScreenAppear()Z

    move-result v0

    if-nez v0, :cond_0

    .line 513
    const-class p1, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;

    const-string v0, "conference activity onCallStateChanged finish"

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 515
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity$10;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity$10;-><init>(Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;J)V

    return-void

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->eventBus:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/manager/phone/CallStateListener;->d:Lcom/callapp/contacts/event/bus/EventType;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    .line 524
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/call/CallState;->isTalking()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-direct {p0, v2}, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->updateScreenLockState(Z)V

    .line 525
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->unRegisterCall(Lcom/callapp/contacts/model/call/CallData;)V

    return-void
.end method

.method public onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 247
    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->photoUrl:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2, v1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->hasAnyPhotoUrl()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    invoke-virtual {v1, p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->a(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-array v0, v0, [Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->googleMap:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v1, v0, v3

    .line 248
    invoke-static {p2, v0}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getGoogleMapsLatLng()Lcom/callapp/contacts/model/contact/AddressGeoCodeLatLng;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 249
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->getParallax()Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->b(Z)V

    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 159
    const-class v0, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;

    const-string v1, "conference activity onCreate"

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->setKeyguardDismissAndScreenWindowFlags()V

    .line 165
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 167
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 169
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Conference Screen"

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->b(Ljava/lang/String;)V

    .line 171
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->getEventBus()Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object p1

    sget-object v0, Lcom/callapp/contacts/activity/interfaces/DialpadToggleListener;->a:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {p1, v0, p0}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 172
    invoke-static {}, Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;->get()Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->classSimpleName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 175
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->showActionBar(Z)V

    const v0, 0x7f0a025c

    .line 178
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->rootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const v1, 0x7f060026

    .line 180
    invoke-static {p0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    const v0, 0x7f0a0274

    .line 181
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a0101

    .line 182
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/callapp/contacts/activity/contact/details/-$$Lambda$ConferenceActivity$i5DxTiYISW3gM9SdUuVE7B_XWP4;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/activity/contact/details/-$$Lambda$ConferenceActivity$i5DxTiYISW3gM9SdUuVE7B_XWP4;-><init>(Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->rootView:Landroid/view/ViewGroup;

    const v2, 0x7f0a027d

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->rootView:Landroid/view/ViewGroup;

    const v2, 0x7f0a027b

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->rootView:Landroid/view/ViewGroup;

    const v2, 0x7f0a0297

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const v0, 0x7f0a00e3

    .line 188
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$d;

    .line 3952
    iget-object v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$d;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 189
    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    .line 190
    new-instance v1, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity$2;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity$2;-><init>(Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->setDragCallback(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$a;)V

    const v0, 0x7f0a0614

    .line 197
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f120222

    .line 198
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a06e8

    .line 199
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/widget/ProfilePictureView;

    .line 201
    new-instance v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    const v2, 0x7f0800f8

    invoke-direct {v1, v2}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(I)V

    const/4 v2, 0x1

    .line 4371
    iput-boolean v2, v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->l:Z

    .line 202
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700cb

    .line 203
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    const/4 v4, -0x1

    .line 202
    invoke-virtual {v1, v3, v4}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->b(II)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    move-result-object v1

    .line 5307
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;)Z

    .line 205
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->presenterManager:Lcom/callapp/contacts/activity/contact/details/PresenterManager;

    const-class v1, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 206
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity$3;

    invoke-direct {v3, p0}, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity$3;-><init>(Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;)V

    invoke-direct {v0, p0, v1, v3}, Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority$CardEventsListener;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->cardsAdapter:Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

    .line 218
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v0

    const v1, 0x7f080377

    invoke-virtual {v0, v1, p0}, Lcom/callapp/contacts/manager/FeedbackManager;->a(ILandroid/content/Context;)V

    .line 221
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->getRecyclerView()Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->cardsAdapter:Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->setAdapter(Lit/gmariotti/cardslib/library/recyclerview/a/a;)V

    .line 223
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->presenterManager:Lcom/callapp/contacts/activity/contact/details/PresenterManager;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->c(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    .line 225
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->addListenerIfNotPreCall(Lcom/callapp/contacts/manager/phone/CallStateListener;Z)Z

    .line 226
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->addDetailsListener(Lcom/callapp/contacts/manager/phone/CallDetailsListener;)V

    .line 228
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->addCards()V

    .line 230
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 232
    invoke-static {}, Lcom/callapp/contacts/recorder/CallRecorderManager;->get()Lcom/callapp/contacts/recorder/CallRecorderManager;

    move-result-object p1

    invoke-static {}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->get()Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->isInRecorderTestMode()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {p1, p0, v0}, Lcom/callapp/contacts/recorder/CallRecorderManager;->a(Lcom/callapp/contacts/recorder/interfaces/CallRecorderEvent;Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 377
    const-class v0, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 379
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->removeDetailsListener(Lcom/callapp/contacts/manager/phone/CallDetailsListener;)V

    .line 380
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->removeListener(Lcom/callapp/contacts/manager/phone/CallStateListener;)V

    .line 382
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->getEventBus()Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/DialpadToggleListener;->a:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {v0, v1, p0}, Lcom/callapp/contacts/event/bus/EventBus;->b(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 383
    invoke-static {}, Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;->get()Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->classSimpleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;->b(Ljava/lang/String;)V

    .line 385
    invoke-static {}, Lcom/callapp/contacts/recorder/CallRecorderManager;->get()Lcom/callapp/contacts/recorder/CallRecorderManager;

    move-result-object v0

    invoke-static {}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->get()Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->isInRecorderTestMode()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/callapp/contacts/recorder/CallRecorderManager;->b(Lcom/callapp/contacts/recorder/interfaces/CallRecorderEvent;Z)V

    .line 386
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->removeContactDetailsListeners()V

    .line 387
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Screen"

    const-string v2, "ScreenClose"

    const-string v3, "Conference Screen"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    invoke-super {p0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->onDestroy()V

    return-void
.end method

.method public synthetic onError(Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/recorder/interfaces/CallRecorderEvent$-CC;->$default$onError(Lcom/callapp/contacts/recorder/interfaces/CallRecorderEvent;Landroid/os/Bundle;)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3

    .line 237
    const-class v0, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;

    const-string v1, "conference activity onNewIntent"

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 238
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "EXTRA_SHOW_KEYPAD"

    const/4 v1, 0x0

    .line 239
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 240
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->getEventBus()Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object p1

    sget-object v0, Lcom/callapp/contacts/activity/interfaces/ShowKeypadListener;->d:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 6091
    invoke-virtual {p1, v0, v2, v1}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 362
    invoke-static {}, Lcom/callapp/contacts/manager/ProximityManager;->get()Lcom/callapp/contacts/manager/ProximityManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/ProximityManager;->setAudioModeChangedListener(Lcom/callapp/contacts/manager/ProximityManager$AudioModeChanged;)V

    .line 364
    invoke-super {p0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->onPause()V

    .line 365
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->setConferencesActivityVisible(Z)V

    .line 366
    invoke-static {}, Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;->get()Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->classSimpleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onPreRecord(Landroid/os/Bundle;)V
    .locals 3

    .line 416
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->eventBus:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/RecorderStateListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    const/4 v2, 0x0

    .line 10091
    invoke-virtual {v0, v1, p1, v2}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    return-void
.end method

.method public synthetic onRecordFileReady(Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/recorder/interfaces/CallRecorderEvent$-CC;->$default$onRecordFileReady(Lcom/callapp/contacts/recorder/interfaces/CallRecorderEvent;Landroid/os/Bundle;)V

    return-void
.end method

.method public onRecorderStarted(Landroid/os/Bundle;)V
    .locals 3

    .line 404
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->eventBus:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/RecorderStateListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    const/4 v2, 0x0

    .line 8091
    invoke-virtual {v0, v1, p1, v2}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    return-void
.end method

.method public onRecorderStopped(Landroid/os/Bundle;)V
    .locals 3

    .line 409
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-static {v0}, Lcom/callapp/contacts/recorder/loader/CallRecorderLoader;->a(Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 410
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->eventBus:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/RecorderStateListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    const/4 v2, 0x0

    .line 9091
    invoke-virtual {v0, v1, p1, v2}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 349
    invoke-super {p0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->onResume()V

    .line 351
    invoke-static {}, Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;->get()Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->classSimpleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;->c(Ljava/lang/String;)V

    .line 352
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->setConferencesActivityVisible(Z)V

    .line 354
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->requestUpdateUI()V

    .line 355
    invoke-static {}, Lcom/callapp/contacts/manager/ProximityManager;->get()Lcom/callapp/contacts/manager/ProximityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->audioModeChangedListener:Lcom/callapp/contacts/manager/ProximityManager$AudioModeChanged;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/ProximityManager;->setAudioModeChangedListener(Lcom/callapp/contacts/manager/ProximityManager$AudioModeChanged;)V

    .line 356
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/FinishActivityListener;->a:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v3, 0x0

    .line 7091
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .line 344
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method protected onTopBarIconClicked(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 371
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->onWindowFocusChanged(Z)V

    .line 372
    invoke-static {}, Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;->get()Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->classSimpleName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public registerFilteredEvents(Lcom/callapp/contacts/activity/interfaces/KeypadVisibilityEvents;)V
    .locals 0

    .line 476
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->keypadVisiblityEvents:Lcom/callapp/contacts/activity/interfaces/KeypadVisibilityEvents;

    return-void
.end method

.method public toggleDialpad(ZZII)V
    .locals 3

    .line 434
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->keypadShown:Z

    .line 436
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->a()Landroidx/fragment/app/s;

    move-result-object p2

    .line 438
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "KEYPAD_FRAGMENT_TAG"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 440
    invoke-static {v2, p4, p3, v2}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a(ZIII)Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;

    move-result-object v0

    :cond_0
    if-eqz p1, :cond_1

    const p1, 0x7f0a0547

    .line 444
    invoke-virtual {p2, p1, v0, v1}, Landroidx/fragment/app/s;->b(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/s;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/s;->b()I

    .line 445
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->b()Z

    return-void

    .line 447
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->keypadVisiblityEvents:Lcom/callapp/contacts/activity/interfaces/KeypadVisibilityEvents;

    if-eqz p1, :cond_2

    .line 449
    new-instance p3, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity$7;

    invoke-direct {p3, p0, p2, v0}, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity$7;-><init>(Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;Landroidx/fragment/app/s;Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;)V

    invoke-interface {p1, v2, p3}, Lcom/callapp/contacts/activity/interfaces/KeypadVisibilityEvents;->a(ZLandroid/animation/Animator$AnimatorListener;)V

    :cond_2
    return-void
.end method

.method public unRegisterFilteredEvents(Lcom/callapp/contacts/activity/interfaces/KeypadVisibilityEvents;)V
    .locals 1

    .line 481
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->keypadVisiblityEvents:Lcom/callapp/contacts/activity/interfaces/KeypadVisibilityEvents;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 482
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->keypadVisiblityEvents:Lcom/callapp/contacts/activity/interfaces/KeypadVisibilityEvents;

    :cond_0
    return-void
.end method
