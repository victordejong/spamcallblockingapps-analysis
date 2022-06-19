.class public Lcom/callapp/contacts/activity/records/AllRecordingsFragment;
.super Lcom/callapp/contacts/activity/base/BaseCallAppFragmentWithHint;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/interfaces/MultiSelectEvents;
.implements Lcom/callapp/contacts/activity/records/StickyCallRecorder$StickyCallRecordingActions;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/records/AllRecordingsFragment$AccessibilityStickyClicked;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/base/BaseCallAppFragmentWithHint<",
        "Lcom/callapp/contacts/model/objectbox/CallRecorder;",
        ">;",
        "Lcom/callapp/contacts/activity/interfaces/MultiSelectEvents;",
        "Lcom/callapp/contacts/activity/records/StickyCallRecorder$StickyCallRecordingActions;"
    }
.end annotation


# instance fields
.field private a:Lcom/callapp/contacts/activity/records/RecordsActivityActions;

.field private b:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;

.field private c:Lcom/callapp/contacts/activity/records/StickyCallRecorder;

.field private final d:I

.field private final e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseCallAppFragmentWithHint;-><init>()V

    const/4 v0, 0x7

    .line 44
    iput v0, p0, Lcom/callapp/contacts/activity/records/AllRecordingsFragment;->d:I

    const/4 v0, 0x3

    .line 45
    iput v0, p0, Lcom/callapp/contacts/activity/records/AllRecordingsFragment;->e:I

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/records/AllRecordingsFragment;)Lcom/callapp/contacts/activity/records/RecordsActivityActions;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/callapp/contacts/activity/records/AllRecordingsFragment;->a:Lcom/callapp/contacts/activity/records/RecordsActivityActions;

    return-object p0
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/records/AllRecordingsFragment;Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;)Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/callapp/contacts/activity/records/AllRecordingsFragment;->b:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;

    return-object p1
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/records/AllRecordingsFragment;)Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/callapp/contacts/activity/records/AllRecordingsFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    return-object p0
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/records/AllRecordingsFragment;)Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/callapp/contacts/activity/records/AllRecordingsFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    return-object p0
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/records/AllRecordingsFragment;)V
    .locals 0

    .line 40
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/records/AllRecordingsFragment;->toggleEmptyViewIfNeeded()V

    return-void
.end method

.method static synthetic e(Lcom/callapp/contacts/activity/records/AllRecordingsFragment;)V
    .locals 0

    .line 40
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/records/AllRecordingsFragment;->hideLoadingProgress()V

    return-void
.end method

.method static synthetic f(Lcom/callapp/contacts/activity/records/AllRecordingsFragment;)Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/callapp/contacts/activity/records/AllRecordingsFragment;->b:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;

    return-object p0
.end method

.method private static f()Z
    .locals 7

    .line 109
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_4

    invoke-static {}, Lcom/callapp/contacts/util/Activities;->isCallAppAccessibilityServiceEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 111
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eZ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hZ:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hZ:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->hZ:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Date;

    invoke-static {v0, v3}, Lcom/callapp/contacts/util/date/DateUtils;->b(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v3

    const-wide/16 v5, 0x3

    cmp-long v0, v3, v5

    if-ltz v0, :cond_1

    :cond_0
    return v2

    .line 115
    :cond_1
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hY:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hY:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->hY:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Date;

    invoke-static {v0, v3}, Lcom/callapp/contacts/util/date/DateUtils;->b(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v3

    const-wide/16 v5, 0x7

    cmp-long v0, v3, v5

    if-ltz v0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v2

    :cond_4
    return v1
.end method

.method private static synthetic g()V
    .locals 2

    .line 179
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->ff:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$KBa0Q8LwY-kQxmQQLpM5ADx-SSk()V
    .locals 0

    invoke-static {}, Lcom/callapp/contacts/activity/records/AllRecordingsFragment;->g()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 192
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->ff:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/callapp/contacts/activity/records/AllRecordingsFragment;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()V
    .locals 3

    .line 49
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/records/AllRecordingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    instance-of v1, v0, Lcom/callapp/contacts/activity/records/AllRecordingsFragment$AccessibilityStickyClicked;

    if-eqz v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/callapp/contacts/activity/records/AllRecordingsFragment;->c:Lcom/callapp/contacts/activity/records/StickyCallRecorder;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/activity/records/StickyCallRecorder;->setVisibility(I)V

    .line 52
    check-cast v0, Lcom/callapp/contacts/activity/records/AllRecordingsFragment$AccessibilityStickyClicked;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/records/AllRecordingsFragment$AccessibilityStickyClicked;->a()V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/callapp/contacts/activity/records/AllRecordingsFragment;->c:Lcom/callapp/contacts/activity/records/StickyCallRecorder;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/records/StickyCallRecorder;->setVisibility(I)V

    .line 59
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hY:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->set(Ljava/lang/Object;)V

    .line 60
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hZ:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public getAdUnitIdsConfiguration()Ljava/lang/String;
    .locals 2

    .line 197
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDataChangeOrigin()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getEmptyViewData()Lcom/callapp/contacts/activity/base/BaseCallAppFragment$EmptyViewData;
    .locals 3

    .line 239
    new-instance v0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$EmptyViewData;

    const v1, 0x7f120144

    .line 240
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f080294

    invoke-direct {v0, v2, v1}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$EmptyViewData;-><init>(ILjava/lang/CharSequence;)V

    return-object v0
.end method

.method public getExperimentRemoteConfigName()Ljava/lang/String;
    .locals 1

    const-string v0, "AllRecordingsListExperiments"

    return-object v0
.end method

.method public getFragmentType()[I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 76
    sget-object v1, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->CALL_RECORDERS:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    invoke-virtual {v1}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    sget-object v1, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->RECENT_CALLS:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    invoke-virtual {v1}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    sget-object v1, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->CONTACTS:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    invoke-virtual {v1}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    return-object v0
.end method

.method public getHintBuilder()Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder;
    .locals 2

    .line 177
    new-instance v0, Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder;-><init>()V

    const v1, 0x7f080475

    .line 3090
    iput v1, v0, Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder;->a:I

    .line 178
    sget-object v1, Lcom/callapp/contacts/activity/records/-$$Lambda$AllRecordingsFragment$KBa0Q8LwY-kQxmQQLpM5ADx-SSk;->INSTANCE:Lcom/callapp/contacts/activity/records/-$$Lambda$AllRecordingsFragment$KBa0Q8LwY-kQxmQQLpM5ADx-SSk;

    .line 3100
    iput-object v1, v0, Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder;->e:Ljava/lang/Runnable;

    const v1, 0x7f12014c

    .line 180
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4080
    iput-object v1, v0, Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder;->b:Ljava/lang/CharSequence;

    const v1, 0x7f12014b

    .line 181
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4085
    iput-object v1, v0, Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder;->c:Ljava/lang/CharSequence;

    const v1, 0x7f0601ec

    .line 4095
    iput v1, v0, Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder;->d:I

    return-object v0
.end method

.method public getHintType()Lcom/callapp/contacts/activity/base/BaseCallAppFragmentWithHint$HintType;
    .locals 1

    .line 187
    sget-object v0, Lcom/callapp/contacts/activity/base/BaseCallAppFragmentWithHint$HintType;->REGULAR:Lcom/callapp/contacts/activity/base/BaseCallAppFragmentWithHint$HintType;

    return-object v0
.end method

.method public getLayoutResId()I
    .locals 1

    const v0, 0x7f0d0180

    return v0
.end method

.method public synthetic getNewAdapter(Ljava/lang/Object;)Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;
    .locals 3

    .line 40
    check-cast p1, Ljava/util/List;

    .line 4207
    new-instance v0, Lcom/callapp/contacts/activity/records/CallRecordsAdapter;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/records/AllRecordingsFragment;->getScrollEvents()Lcom/callapp/contacts/activity/base/ScrollEvents;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/activity/records/AllRecordingsFragment$2;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/activity/records/AllRecordingsFragment$2;-><init>(Lcom/callapp/contacts/activity/records/AllRecordingsFragment;)V

    invoke-direct {v0, v1, p1, v2}, Lcom/callapp/contacts/activity/records/CallRecordsAdapter;-><init>(Lcom/callapp/contacts/activity/base/ScrollEvents;Ljava/util/List;Lcom/callapp/contacts/activity/records/CallRecordsAdapter$CallRecordRowListener;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/records/AllRecordingsFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    .line 4224
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/records/AllRecordingsFragment;->getAdUnitIdsConfiguration()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/records/AllRecordingsFragment;->getExperimentRemoteConfigName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/ListsUtils;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/util/ads/AdSettings;

    move-result-object p1

    .line 4225
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/records/AllRecordingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/records/AllRecordingsFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    invoke-static {v0, p1, v1}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Landroid/app/Activity;Lcom/callapp/contacts/util/ads/AdSettings;Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;)Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;

    move-result-object p1

    return-object p1
.end method

.method public getSelectedContacts()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/activity/base/BaseAdapterItemData;",
            ">;"
        }
    .end annotation

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/records/AllRecordingsFragment;->getCheckedRows()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public isPartOfViewPagerActivity()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 156
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseCallAppFragmentWithHint;->onAttach(Landroid/content/Context;)V

    .line 159
    :try_start_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/records/AllRecordingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/records/RecordsActivityActions;

    iput-object p1, p0, Lcom/callapp/contacts/activity/records/AllRecordingsFragment;->a:Lcom/callapp/contacts/activity/records/RecordsActivityActions;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 162
    :catch_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Parent activity must implement RecordsActivityActions"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onDestroy()V
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/callapp/contacts/activity/records/AllRecordingsFragment;->b:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {v0}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->dismiss()V

    .line 234
    :cond_0
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseCallAppFragmentWithHint;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 168
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseCallAppFragmentWithHint;->onPause()V

    .line 170
    iget-object v0, p0, Lcom/callapp/contacts/activity/records/AllRecordingsFragment;->b:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->pausePlayer()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8

    .line 69
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/activity/base/BaseCallAppFragmentWithHint;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0a095e

    .line 1085
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/records/StickyCallRecorder;

    iput-object p1, p0, Lcom/callapp/contacts/activity/records/AllRecordingsFragment;->c:Lcom/callapp/contacts/activity/records/StickyCallRecorder;

    .line 1086
    invoke-virtual {p1, p0}, Lcom/callapp/contacts/activity/records/StickyCallRecorder;->setListener(Lcom/callapp/contacts/activity/records/StickyCallRecorder$StickyCallRecordingActions;)V

    .line 1087
    iget-object p1, p0, Lcom/callapp/contacts/activity/records/AllRecordingsFragment;->c:Lcom/callapp/contacts/activity/records/StickyCallRecorder;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/records/AllRecordingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    .line 2060
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/records/StickyCallRecorder;->getLayout()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0a0922

    .line 2061
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/records/StickyCallRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a08ad

    .line 2062
    invoke-virtual {p1, v1}, Lcom/callapp/contacts/activity/records/StickyCallRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a04d6

    .line 2063
    invoke-virtual {p1, v2}, Lcom/callapp/contacts/activity/records/StickyCallRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f12013d

    .line 2064
    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f12013c

    .line 2065
    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f0a0ada

    .line 2066
    invoke-virtual {p1, v3}, Lcom/callapp/contacts/activity/records/StickyCallRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 2067
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result v4

    const/4 v5, 0x2

    const v6, 0x7f0805aa

    if-eqz v4, :cond_0

    const v4, 0x7f0601de

    .line 2068
    invoke-static {v4}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    const v7, 0x7f0601e0

    invoke-static {v7}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v7

    invoke-static {v3, v6, v4, v7, v5}, Lcom/callapp/contacts/util/ViewUtils;->b(Landroid/view/View;IIII)V

    goto :goto_0

    :cond_0
    const v4, 0x7f0601dd

    .line 2070
    invoke-static {v4}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    const v7, 0x7f0601df

    invoke-static {v7}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v7

    invoke-static {v3, v6, v4, v7, v5}, Lcom/callapp/contacts/util/ViewUtils;->b(Landroid/view/View;IIII)V

    :goto_0
    const v3, 0x7f0805d3

    .line 2073
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const v2, 0x7f0a0222

    .line 2074
    invoke-virtual {p1, v2}, Lcom/callapp/contacts/activity/records/StickyCallRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a0243

    .line 2075
    invoke-virtual {p1, v3}, Lcom/callapp/contacts/activity/records/StickyCallRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f06010d

    .line 2076
    invoke-static {v4}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    const/4 v4, 0x0

    .line 2077
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const v5, 0x7f0601ec

    .line 2078
    invoke-static {v5}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0601cc

    .line 2079
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2080
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f060244

    invoke-static {p2, v0}, Landroidx/core/content/b;->c(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const p2, 0x7f0805d2

    const v0, 0x7f060088

    .line 2082
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-static {v2, p2, v0}, Lcom/callapp/contacts/util/ViewUtils;->c(Landroid/view/View;II)V

    const p2, 0x7f120097

    .line 2083
    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2084
    new-instance p2, Lcom/callapp/contacts/activity/records/StickyCallRecorder$1;

    invoke-direct {p2, p1, v2}, Lcom/callapp/contacts/activity/records/StickyCallRecorder$1;-><init>(Lcom/callapp/contacts/activity/records/StickyCallRecorder;Landroid/widget/TextView;)V

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2095
    new-instance p2, Lcom/callapp/contacts/activity/records/StickyCallRecorder$2;

    invoke-direct {p2, p1, v3}, Lcom/callapp/contacts/activity/records/StickyCallRecorder$2;-><init>(Lcom/callapp/contacts/activity/records/StickyCallRecorder;Landroid/widget/ImageView;)V

    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1088
    invoke-static {}, Lcom/callapp/contacts/activity/records/AllRecordingsFragment;->f()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1089
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->id:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1090
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string p2, "Permissions"

    const-string v0, "ViewAccessibilityStickyBanner"

    invoke-virtual {p1, p2, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->id:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 1093
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/records/AllRecordingsFragment;->c()V

    .line 1094
    iget-object p1, p0, Lcom/callapp/contacts/activity/records/AllRecordingsFragment;->c:Lcom/callapp/contacts/activity/records/StickyCallRecorder;

    invoke-virtual {p1, v4}, Lcom/callapp/contacts/activity/records/StickyCallRecorder;->setVisibility(I)V

    goto :goto_1

    .line 1096
    :cond_2
    iget-object p1, p0, Lcom/callapp/contacts/activity/records/AllRecordingsFragment;->c:Lcom/callapp/contacts/activity/records/StickyCallRecorder;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/records/StickyCallRecorder;->setVisibility(I)V

    .line 1097
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/records/AllRecordingsFragment;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1098
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/records/AllRecordingsFragment;->n_()V

    goto :goto_1

    .line 1100
    :cond_3
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/records/AllRecordingsFragment;->c()V

    .line 71
    :goto_1
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/records/AllRecordingsFragment;->refreshData()V

    return-void
.end method

.method public refreshData()V
    .locals 2

    .line 128
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/records/AllRecordingsFragment;->showLoadingProgress()V

    .line 129
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/records/AllRecordingsFragment$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/records/AllRecordingsFragment$1;-><init>(Lcom/callapp/contacts/activity/records/AllRecordingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setMultiSelectModeEnable(Z)V
    .locals 0

    const/4 p1, 0x1

    .line 250
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/records/AllRecordingsFragment;->showMultiSelect(Z)V

    return-void
.end method

.method public showMultiSelect(Z)V
    .locals 1

    .line 265
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseCallAppFragmentWithHint;->showMultiSelect(Z)V

    .line 266
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/records/AllRecordingsFragment;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 268
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/records/AllRecordingsFragment;->c()V

    return-void

    .line 270
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/records/AllRecordingsFragment;->n_()V

    :cond_1
    return-void
.end method
