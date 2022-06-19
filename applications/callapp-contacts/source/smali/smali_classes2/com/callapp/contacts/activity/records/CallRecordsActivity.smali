.class public Lcom/callapp/contacts/activity/records/CallRecordsActivity;
.super Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter$MultiSelectEvents;
.implements Lcom/callapp/contacts/activity/contact/list/ViewPagerManager;
.implements Lcom/callapp/contacts/activity/interfaces/SearchBarFilterEvents;
.implements Lcom/callapp/contacts/activity/records/AllRecordingsFragment$AccessibilityStickyClicked;
.implements Lcom/callapp/contacts/activity/records/RecordsActivityActions;
.implements Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$RecorderTestFragmentEvents;
.implements Lcom/callapp/contacts/widget/SearchAnimationToolbar$OnSearchQueryChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/records/CallRecordsActivity$StarUnstarActionDoneListener;,
        Lcom/callapp/contacts/activity/records/CallRecordsActivity$CallRecorderDialogWelcomeDialogDismissListener;,
        Lcom/callapp/contacts/activity/records/CallRecordsActivity$CallRecorderWelcomeDialogListener;
    }
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field private d:Lcom/callapp/contacts/activity/records/SearchRecordsFragment;

.field private e:Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/activity/interfaces/SearchBarFilter;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/objectbox/CallRecorder;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/objectbox/CallRecorder;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/objectbox/CallRecorder;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/lang/String;

.field private m:Lcom/callapp/contacts/activity/interfaces/CallRecordChangedListener;

.field private n:Landroid/view/Menu;

.field private o:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 107
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity;-><init>()V

    .line 116
    new-instance v0, Lcom/callapp/contacts/activity/records/SearchRecordsFragment;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/records/SearchRecordsFragment;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->d:Lcom/callapp/contacts/activity/records/SearchRecordsFragment;

    .line 119
    const-class v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->a:Ljava/lang/String;

    .line 123
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->g:Ljava/util/Set;

    .line 128
    new-instance v0, Lcom/callapp/contacts/activity/records/CallRecordsActivity$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity$1;-><init>(Lcom/callapp/contacts/activity/records/CallRecordsActivity;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->m:Lcom/callapp/contacts/activity/interfaces/CallRecordChangedListener;

    const/4 v0, 0x0

    .line 138
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->o:Z

    return-void
.end method

.method private a(ILjava/lang/String;)Landroidx/appcompat/app/ActionBar;
    .locals 2

    .line 386
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/util/TopBarUtils$TopBarTitle;->TITLE_TOP_BAR:Lcom/callapp/contacts/util/TopBarUtils$TopBarTitle;

    invoke-static {p0, v0, v1, p1}, Lcom/callapp/contacts/util/TopBarUtils;->a(Landroid/app/Activity;Landroidx/appcompat/app/ActionBar;Lcom/callapp/contacts/util/TopBarUtils$TopBarTitle;I)Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    .line 387
    invoke-static {p1, p2}, Lcom/callapp/contacts/util/TopBarUtils;->a(Landroidx/appcompat/app/ActionBar;Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 2

    .line 144
    invoke-static {}, Lcom/callapp/contacts/recorder/CallRecorderManager;->get()Lcom/callapp/contacts/recorder/CallRecorderManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/CallRecorderManager;->isTermsAccepted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->ej:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->set(Ljava/lang/Object;)V

    .line 146
    invoke-static {p0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->d(Landroid/app/Activity;)V

    return-void

    .line 147
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultSystemPhoneApp()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 148
    new-instance v1, Lcom/callapp/contacts/activity/records/CallRecordsActivity$2;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity$2;-><init>(Landroid/app/Activity;)V

    invoke-static {p0, v0, v1}, Lcom/callapp/contacts/util/Activities;->a(Landroid/app/Activity;ZLcom/callapp/contacts/manager/popup/ActivityResult;)V

    return-void

    .line 163
    :cond_1
    invoke-static {p0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .line 112
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/callapp/contacts/activity/records/CallRecordsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v0}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/records/CallRecordsActivity;)V
    .locals 2

    .line 6774
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/records/CallRecordsActivity$11;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity$11;-><init>(Lcom/callapp/contacts/activity/records/CallRecordsActivity;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/records/CallRecordsActivity;Z)V
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->b(Z)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/objectbox/CallRecorder;",
            ">;)V"
        }
    .end annotation

    .line 476
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 477
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/model/objectbox/CallRecorder;

    .line 478
    iget-object v5, v2, Lcom/callapp/contacts/model/objectbox/CallRecorder;->displayName:Ljava/lang/String;

    invoke-static {v5}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->getContactId()J

    move-result-wide v5

    cmp-long v7, v5, v3

    if-lez v7, :cond_0

    .line 479
    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->getContactId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 483
    :cond_1
    invoke-static {v0}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    .line 485
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/model/objectbox/CallRecorder;

    .line 486
    iget-object v2, v1, Lcom/callapp/contacts/model/objectbox/CallRecorder;->displayName:Ljava/lang/String;

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->getContactId()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-lez v2, :cond_3

    .line 487
    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->getContactId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    if-eqz v2, :cond_3

    .line 489
    iget-object v2, v2, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->displayName:Ljava/lang/String;

    iput-object v2, v1, Lcom/callapp/contacts/model/objectbox/CallRecorder;->displayName:Ljava/lang/String;

    .line 494
    :cond_3
    iget-object v2, v1, Lcom/callapp/contacts/model/objectbox/CallRecorder;->displayName:Ljava/lang/String;

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->getPhoneText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/contacts/util/CallLogUtils;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 495
    iget-object v2, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->l:Ljava/lang/String;

    iput-object v2, v1, Lcom/callapp/contacts/model/objectbox/CallRecorder;->displayName:Ljava/lang/String;

    goto :goto_1

    :cond_4
    return-void
.end method

.method private a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 279
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->getSearchAnimationToolbar()Lcom/callapp/contacts/widget/SearchAnimationToolbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    const/16 v0, 0x15

    .line 2155
    iput v0, p1, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->a:I

    return-void

    .line 281
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->getSearchAnimationToolbar()Lcom/callapp/contacts/widget/SearchAnimationToolbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    const/4 v0, 0x4

    .line 3155
    iput v0, p1, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->a:I

    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/records/CallRecordsActivity;)Lcom/callapp/contacts/widget/SearchAnimationToolbar;
    .locals 0

    .line 107
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->getSearchAnimationToolbar()Lcom/callapp/contacts/widget/SearchAnimationToolbar;

    move-result-object p0

    return-object p0
.end method

.method private b(I)V
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->n:Landroid/view/Menu;

    invoke-interface {v0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 266
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method static synthetic b(Landroid/app/Activity;)V
    .locals 2

    .line 7196
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/callapp/contacts/util/Activities;->isCallAppAccessibilityServiceEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7198
    new-instance v0, Lcom/callapp/contacts/popup/contact/callrecorder/AccessibilityServiceDialog;

    new-instance v1, Lcom/callapp/contacts/activity/records/CallRecordsActivity$4;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity$4;-><init>(Landroid/app/Activity;)V

    invoke-direct {v0, v1}, Lcom/callapp/contacts/popup/contact/callrecorder/AccessibilityServiceDialog;-><init>(Lcom/callapp/contacts/manager/popup/PopupDoneListener;)V

    .line 7204
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void

    .line 7206
    :cond_0
    invoke-static {p0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->a(Landroid/content/Context;)V

    return-void
.end method

.method private b(Z)V
    .locals 5

    .line 658
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->a()Landroidx/fragment/app/s;

    move-result-object v0

    .line 659
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;

    const v2, 0x7f0a05c7

    const v3, 0x7f0a05c6

    if-eqz p1, :cond_2

    .line 661
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->getSearchContainer()Landroid/view/ViewGroup;

    move-result-object p1

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-nez v1, :cond_4

    .line 664
    new-instance p1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;

    invoke-direct {p1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;-><init>()V

    .line 665
    invoke-virtual {p1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/callapp/contacts/util/Fragments;->a(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f0a07ad

    .line 666
    iget-object v4, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v4}, Landroidx/fragment/app/s;->a(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/s;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/s;->e()V

    :cond_0
    const/4 p1, 0x0

    .line 668
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->a(Lcom/callapp/contacts/util/animation/AnimationListenerAdapter;)V

    .line 669
    invoke-direct {p0, v2}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->b(I)V

    .line 670
    invoke-direct {p0, v3}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->b(I)V

    const p1, 0x7f0d001f

    const v0, 0x7f12070e

    .line 671
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->a(ILjava/lang/String;)Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 673
    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->b()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a0097

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a0096

    .line 674
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f12059f

    .line 675
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 676
    new-instance v0, Lcom/callapp/contacts/activity/records/CallRecordsActivity$8;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity$8;-><init>(Lcom/callapp/contacts/activity/records/CallRecordsActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void

    :cond_2
    const p1, 0x7f0d001d

    const v4, 0x7f1205a2

    .line 5692
    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->a(ILjava/lang/String;)Landroidx/appcompat/app/ActionBar;

    .line 5693
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->getSearchContainer()Landroid/view/ViewGroup;

    move-result-object p1

    const/16 v4, 0x8

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-eqz v1, :cond_3

    .line 5694
    invoke-virtual {v1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 5695
    invoke-virtual {v0, v1}, Landroidx/fragment/app/s;->a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/s;->c()I

    .line 5697
    :cond_3
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->d()V

    .line 5698
    invoke-direct {p0, v3}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->c(I)V

    .line 5699
    invoke-direct {p0, v2}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->c(I)V

    :cond_4
    return-void
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/records/CallRecordsActivity;)Ljava/util/List;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->k:Ljava/util/List;

    return-object p0
.end method

.method private c(I)V
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->n:Landroid/view/Menu;

    invoke-interface {v0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 273
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method static synthetic c(Landroid/app/Activity;)V
    .locals 0

    .line 107
    invoke-static {p0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->d(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/records/CallRecordsActivity;)Ljava/util/List;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->h:Ljava/util/List;

    return-object p0
.end method

.method private static d(Landroid/app/Activity;)V
    .locals 3

    .line 168
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/records/CallRecordsActivity$3;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity$3;-><init>(Landroid/app/Activity;)V

    sget-object v2, Lcom/callapp/contacts/activity/records/-$$Lambda$CallRecordsActivity$0J1tyVX-qok5KcVUox3OZVPE-R0;->INSTANCE:Lcom/callapp/contacts/activity/records/-$$Lambda$CallRecordsActivity$0J1tyVX-qok5KcVUox3OZVPE-R0;

    invoke-static {v1, v2}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderFactory;->a(Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderWelcome;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method

.method static synthetic e(Lcom/callapp/contacts/activity/records/CallRecordsActivity;)Lcom/callapp/contacts/widget/PagingTogglableViewPager;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->c:Lcom/callapp/contacts/widget/PagingTogglableViewPager;

    return-object p0
.end method

.method private e()V
    .locals 7

    .line 392
    new-instance v6, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;

    const-string v0, "CallRecorderListInterstitialBidding"

    const-string v1, "CallRecorderListInterstitialAdUnitId"

    .line 393
    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ads/AdUtils;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    new-instance v4, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$BottomBarActivityInterstitialAdEvents;

    invoke-direct {v4}, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$BottomBarActivityInterstitialAdEvents;-><init>()V

    sget-object v5, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$BottomBarActivityInterstitialAdEvents;->a:Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$ShouldLoadIntervalPredicate;

    const-string v3, "CallRecorderListInterstitialPreferences"

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;-><init>(Landroid/app/Activity;Landroid/util/Pair;Ljava/lang/String;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$ShouldLoadIntervalPredicate;)V

    iput-object v6, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->e:Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;

    .line 395
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->e:Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/j;->addObserver(Landroidx/lifecycle/o;)V

    .line 400
    invoke-static {}, Lcom/callapp/contacts/recorder/CallRecorderManager;->get()Lcom/callapp/contacts/recorder/CallRecorderManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/CallRecorderManager;->isTermsAccepted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 401
    new-instance v0, Lcom/callapp/contacts/activity/records/CallRecordsActivity$CallRecorderWelcomeDialogListener;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Lcom/callapp/contacts/activity/records/CallRecordsActivity$CallRecorderWelcomeDialogListener;-><init>(Ljava/lang/Boolean;)V

    new-instance v1, Lcom/callapp/contacts/activity/records/CallRecordsActivity$CallRecorderWelcomeDialogListener;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, v2}, Lcom/callapp/contacts/activity/records/CallRecordsActivity$CallRecorderWelcomeDialogListener;-><init>(Ljava/lang/Boolean;)V

    invoke-static {v0, v1}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderFactory;->a(Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderWelcome;

    move-result-object v0

    .line 402
    new-instance v1, Lcom/callapp/contacts/activity/records/CallRecordsActivity$CallRecorderDialogWelcomeDialogDismissListener;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/callapp/contacts/activity/records/CallRecordsActivity$CallRecorderDialogWelcomeDialogDismissListener;-><init>(Lcom/callapp/contacts/activity/records/CallRecordsActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderWelcome;->setDialogCustomListener(Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;)V

    .line 404
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    .line 407
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Recording screen"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->b(Ljava/lang/String;)V

    const v0, 0x7f120198

    .line 408
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->l:Ljava/lang/String;

    .line 409
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/records/-$$Lambda$CallRecordsActivity$ALi3Olmg6b2Ivpq8fGsxayjTuvA;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/records/-$$Lambda$CallRecordsActivity$ALi3Olmg6b2Ivpq8fGsxayjTuvA;-><init>(Lcom/callapp/contacts/activity/records/CallRecordsActivity;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;)V

    .line 414
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/CallRecordChangedListener;->a:Lcom/callapp/contacts/event/bus/EventType;

    iget-object v2, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->m:Lcom/callapp/contacts/activity/interfaces/CallRecordChangedListener;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic e(Landroid/app/Activity;)V
    .locals 3

    .line 189
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p0

    const-string v0, "Permissions"

    const-string v1, "Recording get permission popup action"

    const-string v2, "Decline"

    invoke-virtual {p0, v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    sget-object p0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v0, Lcom/callapp/contacts/activity/interfaces/OnBadgeNotificationDataChangeListener;->b_:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v1, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->CALL_RECORDING_LAST_SHOWN_MESSAGE_CHANGED:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    const/4 v2, 0x0

    .line 6091
    invoke-virtual {p0, v0, v1, v2}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    return-void
.end method

.method static synthetic f(Lcom/callapp/contacts/activity/records/CallRecordsActivity;)Ljava/util/List;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->j:Ljava/util/List;

    return-object p0
.end method

.method private f()V
    .locals 5

    .line 448
    invoke-static {}, Lcom/callapp/contacts/recorder/CallRecorderManager;->get()Lcom/callapp/contacts/recorder/CallRecorderManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/CallRecorderManager;->getAllRecords()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->h:Ljava/util/List;

    .line 449
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->j:Ljava/util/List;

    .line 450
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->k:Ljava/util/List;

    .line 452
    invoke-static {}, Lcom/callapp/contacts/loader/FastCacheDataManager;->getAllFastCacheDataWithName()Ljava/util/Map;

    move-result-object v0

    .line 454
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 455
    iget-object v1, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->h:Ljava/util/List;

    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 456
    iget-object v1, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/model/objectbox/CallRecorder;

    .line 457
    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->getStarred()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 458
    iget-object v3, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->j:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 460
    :cond_1
    iget-object v3, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->k:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    :goto_1
    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->getPhoneOrIdKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/model/objectbox/FastCacheData;

    if-eqz v3, :cond_0

    .line 466
    invoke-virtual {v3}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->getFullName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v3, ""

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->getFullName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-static {v3}, Lcom/callapp/common/util/RegexUtils;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/callapp/contacts/model/objectbox/CallRecorder;->displayName:Ljava/lang/String;

    goto :goto_0

    .line 472
    :cond_3
    iget-object v0, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->h:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->a(Ljava/util/List;)V

    return-void
.end method

.method private synthetic g()V
    .locals 1

    .line 419
    new-instance v0, Lcom/callapp/contacts/activity/records/-$$Lambda$CallRecordsActivity$wXkRjfCGq7Q8WMibPTWid6y-5DY;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/records/-$$Lambda$CallRecordsActivity$wXkRjfCGq7Q8WMibPTWid6y-5DY;-><init>(Lcom/callapp/contacts/activity/records/CallRecordsActivity;)V

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic g(Lcom/callapp/contacts/activity/records/CallRecordsActivity;)V
    .locals 2

    .line 7418
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/records/-$$Lambda$CallRecordsActivity$o_SUKJsL9ACYA6nOKSd6PdHvxFI;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/records/-$$Lambda$CallRecordsActivity$o_SUKJsL9ACYA6nOKSd6PdHvxFI;-><init>(Lcom/callapp/contacts/activity/records/CallRecordsActivity;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getRecordsFragment()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 430
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/util/Pair;

    new-instance v2, Landroid/util/Pair;

    new-instance v3, Lcom/callapp/contacts/activity/records/AllRecordingsFragment;

    invoke-direct {v3}, Lcom/callapp/contacts/activity/records/AllRecordingsFragment;-><init>()V

    const v4, 0x7f1206ee

    .line 431
    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Landroid/util/Pair;

    new-instance v3, Lcom/callapp/contacts/activity/records/FavoritesRecordsFragment;

    invoke-direct {v3}, Lcom/callapp/contacts/activity/records/FavoritesRecordsFragment;-><init>()V

    const v4, 0x7f1206fb

    .line 432
    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 430
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private synthetic h()V
    .locals 1

    .line 419
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->getViewPagerAdapter()Landroidx/fragment/app/q;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->a(Landroidx/fragment/app/q;)V

    return-void
.end method

.method static synthetic h(Lcom/callapp/contacts/activity/records/CallRecordsActivity;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->f()V

    return-void
.end method

.method private synthetic i()V
    .locals 1

    .line 410
    invoke-direct {p0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->f()V

    .line 411
    new-instance v0, Lcom/callapp/contacts/activity/records/-$$Lambda$CallRecordsActivity$E2LwzosudPQF-AfxGJf4uni7_Pw;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/records/-$$Lambda$CallRecordsActivity$E2LwzosudPQF-AfxGJf4uni7_Pw;-><init>(Lcom/callapp/contacts/activity/records/CallRecordsActivity;)V

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic j()V
    .locals 1

    .line 411
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->getViewPagerAdapter()Landroidx/fragment/app/q;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->a(Landroidx/fragment/app/q;)V

    return-void
.end method

.method private synthetic k()V
    .locals 3

    .line 373
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Permissions"

    const-string v2, "Call Recording Screen - Permission Denied"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v0

    const v1, 0x7f1201ae

    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;)V

    .line 375
    invoke-direct {p0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->e()V

    return-void
.end method

.method private synthetic l()V
    .locals 3

    .line 369
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Permissions"

    const-string v2, "Call Recording Screen - Permission Granted"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-direct {p0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->e()V

    return-void
.end method

.method public static synthetic lambda$0J1tyVX-qok5KcVUox3OZVPE-R0(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->e(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic lambda$ALi3Olmg6b2Ivpq8fGsxayjTuvA(Lcom/callapp/contacts/activity/records/CallRecordsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->i()V

    return-void
.end method

.method public static synthetic lambda$CN_Cn9eu8bwOW_njwbUK6NcerpY(Lcom/callapp/contacts/activity/records/CallRecordsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->l()V

    return-void
.end method

.method public static synthetic lambda$E2LwzosudPQF-AfxGJf4uni7_Pw(Lcom/callapp/contacts/activity/records/CallRecordsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->j()V

    return-void
.end method

.method public static synthetic lambda$d2ZTSPDa6Dlu-Xeitu1qky5Sdro(Lcom/callapp/contacts/activity/records/CallRecordsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->k()V

    return-void
.end method

.method public static synthetic lambda$o_SUKJsL9ACYA6nOKSd6PdHvxFI(Lcom/callapp/contacts/activity/records/CallRecordsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->g()V

    return-void
.end method

.method public static synthetic lambda$wXkRjfCGq7Q8WMibPTWid6y-5DY(Lcom/callapp/contacts/activity/records/CallRecordsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->h()V

    return-void
.end method

.method private setToolbarTitleToShowSelectedCount(I)V
    .locals 2

    .line 256
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->getSearchAnimationToolbar()Lcom/callapp/contacts/widget/SearchAnimationToolbar;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f12024f

    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->setTitle(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 302
    new-instance v0, Lcom/callapp/contacts/activity/records/CallRecordsActivity$5;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity$5;-><init>(Lcom/callapp/contacts/activity/records/CallRecordsActivity;)V

    invoke-static {p0, v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/app/Activity;Lcom/callapp/contacts/manager/popup/PopupDoneListener;)V

    return-void
.end method

.method public final a(Lcom/callapp/contacts/activity/interfaces/SearchBarFilter;)V
    .locals 1

    .line 748
    iget-object v0, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 4763
    iget-object v0, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->g:Ljava/util/Set;

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4765
    iget-object v0, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/interfaces/SearchBarFilter;

    .line 4766
    invoke-interface {v1, p1}, Lcom/callapp/contacts/activity/interfaces/SearchBarFilter;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 4769
    :cond_0
    iput-object p1, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->f:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 2

    .line 539
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->d()V

    .line 540
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->getSearchContainer()Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 541
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->a()Landroidx/fragment/app/s;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->d:Lcom/callapp/contacts/activity/records/SearchRecordsFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/s;->a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/s;->b()I

    return-void
.end method

.method public final b(Lcom/callapp/contacts/activity/interfaces/SearchBarFilter;)V
    .locals 1

    .line 754
    iget-object v0, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c()V
    .locals 4

    const/4 v0, 0x0

    .line 551
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->a(Lcom/callapp/contacts/util/animation/AnimationListenerAdapter;)V

    .line 552
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->getSearchContainer()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 553
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->a()Landroidx/fragment/app/s;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->d:Lcom/callapp/contacts/activity/records/SearchRecordsFragment;

    const v3, 0x7f0a07ad

    .line 5293
    invoke-virtual {v1, v3, v2, v0}, Landroidx/fragment/app/s;->b(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/s;

    move-result-object v0

    .line 553
    invoke-virtual {v0}, Landroidx/fragment/app/s;->b()I

    return-void
.end method

.method public getActivityTitleResource()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAllRecords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/objectbox/CallRecorder;",
            ">;"
        }
    .end annotation

    .line 786
    iget-object v0, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->h:Ljava/util/List;

    return-object v0
.end method

.method public getAnalyticsCategory()Ljava/lang/String;
    .locals 1

    const-string v0, "Call recorders list"

    return-object v0
.end method

.method public getCallBarPresenter()Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getParallax()Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStarredRecords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/objectbox/CallRecorder;",
            ">;"
        }
    .end annotation

    .line 791
    iget-object v0, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->j:Ljava/util/List;

    return-object v0
.end method

.method public getUnStarredRecords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/objectbox/CallRecorder;",
            ">;"
        }
    .end annotation

    .line 796
    iget-object v0, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->k:Ljava/util/List;

    return-object v0
.end method

.method public getViewPagerAdapter()Landroidx/fragment/app/q;
    .locals 3

    .line 425
    new-instance v0, Lcom/callapp/contacts/activity/records/RecordsViewPagerAdapter;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {p0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->getRecordsFragment()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/callapp/contacts/activity/records/RecordsViewPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    return-object v0
.end method

.method public getViewPagerOnTabSelectedListener()Lcom/google/android/material/tabs/TabLayout$c;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onAppliedConfiguration()V
    .locals 0

    .line 297
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 835
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 836
    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 837
    invoke-direct {p0, v1}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->b(Z)V

    return-void

    .line 839
    :cond_0
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->o:Z

    if-eqz v0, :cond_1

    .line 840
    invoke-virtual {p0, v1, v1}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->onMultiSelectModeToggled(ZI)V

    return-void

    .line 842
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 843
    invoke-static {p0, v0}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Landroid/content/Intent;)V

    .line 844
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 361
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity;->onCreate(Landroid/os/Bundle;)V

    .line 363
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 364
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->getPermissionManager()Lcom/callapp/contacts/manager/permission/PermissionManager;

    const-string p1, "android.permission.RECORD_AUDIO"

    invoke-static {p1}, Lcom/callapp/contacts/manager/permission/PermissionManager;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 367
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->getPermissionManager()Lcom/callapp/contacts/manager/permission/PermissionManager;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/activity/records/-$$Lambda$CallRecordsActivity$CN_Cn9eu8bwOW_njwbUK6NcerpY;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/records/-$$Lambda$CallRecordsActivity$CN_Cn9eu8bwOW_njwbUK6NcerpY;-><init>(Lcom/callapp/contacts/activity/records/CallRecordsActivity;)V

    new-instance v1, Lcom/callapp/contacts/activity/records/-$$Lambda$CallRecordsActivity$d2ZTSPDa6Dlu-Xeitu1qky5Sdro;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/records/-$$Lambda$CallRecordsActivity$d2ZTSPDa6Dlu-Xeitu1qky5Sdro;-><init>(Lcom/callapp/contacts/activity/records/CallRecordsActivity;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

    const/4 v3, 0x0

    sget-object v4, Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;->MICROPHONE:Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

    aput-object v4, v2, v3

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/callapp/contacts/manager/permission/PermissionManager;->a(Lcom/callapp/contacts/activity/base/BaseActivity;Ljava/lang/Runnable;Ljava/lang/Runnable;[Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;)V

    goto :goto_0

    .line 380
    :cond_0
    invoke-direct {p0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->e()V

    :goto_0
    const p1, 0x7f0d001d

    const v0, 0x7f1205a2

    .line 382
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->a(ILjava/lang/String;)Landroidx/appcompat/app/ActionBar;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 502
    iput-object p1, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->n:Landroid/view/Menu;

    .line 503
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 504
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onDestroy()V
    .locals 4

    .line 569
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->e:Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/j;->removeObserver(Landroidx/lifecycle/o;)V

    .line 570
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Screen"

    const-string v2, "ScreenClose"

    const-string v3, "Recording screen"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/CallRecordChangedListener;->a:Lcom/callapp/contacts/event/bus/EventType;

    iget-object v2, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->m:Lcom/callapp/contacts/activity/interfaces/CallRecordChangedListener;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/event/bus/EventBus;->b(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 572
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity;->onDestroy()V

    return-void
.end method

.method public onMultiSelectModeToggled(ZI)V
    .locals 7

    .line 212
    iget-object p2, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->c:Lcom/callapp/contacts/widget/PagingTogglableViewPager;

    invoke-virtual {p2}, Lcom/callapp/contacts/widget/PagingTogglableViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object p2

    check-cast p2, Lcom/callapp/contacts/activity/records/RecordsViewPagerAdapter;

    iget-object v0, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->c:Lcom/callapp/contacts/widget/PagingTogglableViewPager;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/PagingTogglableViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/activity/records/RecordsViewPagerAdapter;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object p2

    .line 213
    instance-of v0, p2, Lcom/callapp/contacts/activity/base/BaseMultiSelectListFragment;

    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->o:Z

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    const v1, 0x7f0a05c6

    const v2, 0x7f0a05c7

    const v3, 0x7f0a05c5

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    const/4 v6, 0x0

    .line 220
    invoke-virtual {p0, v6}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->a(Lcom/callapp/contacts/util/animation/AnimationListenerAdapter;)V

    .line 221
    invoke-direct {p0, v2}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->b(I)V

    .line 222
    invoke-direct {p0, v1}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->b(I)V

    .line 223
    invoke-direct {p0, v3}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->c(I)V

    .line 225
    invoke-direct {p0, v5}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->setToolbarTitleToShowSelectedCount(I)V

    .line 226
    iget-object v1, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->c:Lcom/callapp/contacts/widget/PagingTogglableViewPager;

    invoke-virtual {v1, v5}, Lcom/callapp/contacts/widget/PagingTogglableViewPager;->setPagingEnabled(Z)V

    .line 227
    invoke-direct {p0, v5}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->a(Z)V

    if-eqz v0, :cond_2

    .line 230
    check-cast p2, Lcom/callapp/contacts/activity/base/BaseMultiSelectListFragment;

    invoke-virtual {p2, v4}, Lcom/callapp/contacts/activity/base/BaseMultiSelectListFragment;->showMultiSelect(Z)V

    .line 231
    invoke-virtual {p2, p0}, Lcom/callapp/contacts/activity/base/BaseMultiSelectListFragment;->setMultiSelectListener(Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter$MultiSelectEvents;)V

    goto :goto_0

    .line 235
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->d()V

    .line 236
    invoke-direct {p0, v3}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->b(I)V

    .line 237
    invoke-direct {p0, v2}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->c(I)V

    .line 238
    invoke-direct {p0, v1}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->c(I)V

    .line 1260
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->getSearchAnimationToolbar()Lcom/callapp/contacts/widget/SearchAnimationToolbar;

    move-result-object v1

    const v2, 0x7f1205a2

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->setTitle(Ljava/lang/String;)V

    .line 240
    invoke-direct {p0, v4}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->a(Z)V

    .line 241
    iget-object v1, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->c:Lcom/callapp/contacts/widget/PagingTogglableViewPager;

    invoke-virtual {v1, v4}, Lcom/callapp/contacts/widget/PagingTogglableViewPager;->setPagingEnabled(Z)V

    if-eqz v0, :cond_2

    .line 244
    check-cast p2, Lcom/callapp/contacts/activity/base/BaseMultiSelectListFragment;

    invoke-virtual {p2, v5}, Lcom/callapp/contacts/activity/base/BaseMultiSelectListFragment;->showMultiSelect(Z)V

    .line 247
    :cond_2
    :goto_0
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->o:Z

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10

    .line 510
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x7f0a05c7

    if-ne v0, v2, :cond_0

    .line 512
    new-instance p1, Lcom/callapp/contacts/activity/records/CallRecordsActivity$6;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity$6;-><init>(Lcom/callapp/contacts/activity/records/CallRecordsActivity;)V

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->a(Lcom/callapp/contacts/util/animation/AnimationListenerAdapter;)V

    return v1

    :cond_0
    const v2, 0x7f0a05c6

    const/4 v3, 0x0

    if-ne v0, v2, :cond_3

    .line 3576
    new-instance p1, Lcom/callapp/contacts/popup/contact/DialogList;

    invoke-direct {p1, v3}, Lcom/callapp/contacts/popup/contact/DialogList;-><init>(Ljava/lang/String;)V

    .line 3577
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3578
    new-instance v2, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;

    const v3, 0x7f080369

    const v4, 0x7f1206f4

    invoke-direct {v2, v3, v4}, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;-><init>(II)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3579
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_1

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3580
    new-instance v2, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;

    const v3, 0x7f080486

    const v4, 0x7f120663

    invoke-direct {v2, v3, v4}, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;-><init>(II)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3582
    :cond_1
    new-instance v2, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;

    const v3, 0x7f0802b2

    const v4, 0x7f120143

    invoke-direct {v2, v3, v4}, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;-><init>(II)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3583
    new-instance v2, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;

    const v3, 0x7f080396

    const v4, 0x7f1200d4

    invoke-direct {v2, v3, v4}, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;-><init>(II)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3584
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->gM:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->isNotNull()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->gM:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3585
    new-instance v2, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;

    const v3, 0x7f080474

    const v4, 0x7f12070e

    invoke-direct {v2, v3, v4}, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;-><init>(II)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3588
    :cond_2
    new-instance v2, Lcom/callapp/contacts/popup/contact/AdapterIconAndText;

    const v3, 0x7f0d00aa

    invoke-direct {v2, p0, v3, v0}, Lcom/callapp/contacts/popup/contact/AdapterIconAndText;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 3589
    new-instance v0, Lcom/callapp/contacts/activity/records/CallRecordsActivity$7;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/records/CallRecordsActivity$7;-><init>(Lcom/callapp/contacts/activity/records/CallRecordsActivity;Lcom/callapp/contacts/popup/contact/DialogList;)V

    invoke-virtual {v2, v0}, Lcom/callapp/contacts/popup/contact/AdapterIconAndText;->setListener(Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;)V

    .line 3653
    invoke-virtual {p1, v2}, Lcom/callapp/contacts/popup/contact/DialogList;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3654
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return v1

    :cond_3
    const v2, 0x7f0a05c5

    if-ne v0, v2, :cond_6

    .line 524
    iget-object v0, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->c:Lcom/callapp/contacts/widget/PagingTogglableViewPager;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/PagingTogglableViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/records/RecordsViewPagerAdapter;

    iget-object v2, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->c:Lcom/callapp/contacts/widget/PagingTogglableViewPager;

    invoke-virtual {v2}, Lcom/callapp/contacts/widget/PagingTogglableViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/activity/records/RecordsViewPagerAdapter;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 525
    instance-of v2, v0, Lcom/callapp/contacts/activity/base/BaseMultiSelectListFragment;

    if-eqz v2, :cond_6

    .line 526
    check-cast v0, Lcom/callapp/contacts/activity/base/BaseMultiSelectListFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/base/BaseMultiSelectListFragment;->getCheckedRows()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 527
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v0

    const v1, 0x7f120493

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4111
    invoke-virtual {v0, v1, v3}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 529
    :cond_4
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/base/BaseMultiSelectListFragment;->getCheckedRows()Ljava/util/List;

    move-result-object v0

    .line 4703
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_5

    const v2, 0x7f120568

    goto :goto_0

    :cond_5
    const v2, 0x7f120565

    .line 4704
    :goto_0
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v2, 0x7f120569

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 4705
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    invoke-static {v2, v1}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 4707
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;

    const v3, 0x7f120878

    .line 4708
    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v3, 0x7f1204c5

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/callapp/contacts/activity/records/CallRecordsActivity$9;

    invoke-direct {v8, p0, v0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity$9;-><init>(Lcom/callapp/contacts/activity/records/CallRecordsActivity;Ljava/util/List;)V

    new-instance v9, Lcom/callapp/contacts/activity/records/CallRecordsActivity$10;

    invoke-direct {v9, p0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity$10;-><init>(Lcom/callapp/contacts/activity/records/CallRecordsActivity;)V

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    .line 4707
    invoke-virtual {v1, p0, v2}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    .line 534
    :cond_6
    :goto_1
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeableActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onSelectedAmountChanged(I)V
    .locals 0

    .line 252
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->setToolbarTitleToShowSelectedCount(I)V

    return-void
.end method
