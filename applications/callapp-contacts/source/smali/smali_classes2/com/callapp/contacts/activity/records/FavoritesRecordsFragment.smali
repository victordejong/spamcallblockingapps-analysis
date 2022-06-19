.class public Lcom/callapp/contacts/activity/records/FavoritesRecordsFragment;
.super Lcom/callapp/contacts/activity/base/BaseMultiSelectListFragment;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/interfaces/MultiSelectEvents;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/base/BaseMultiSelectListFragment<",
        "Lcom/callapp/contacts/model/objectbox/CallRecorder;",
        ">;",
        "Lcom/callapp/contacts/activity/interfaces/MultiSelectEvents;"
    }
.end annotation


# instance fields
.field private a:Lcom/callapp/contacts/activity/records/RecordsActivityActions;

.field private b:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseMultiSelectListFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/records/FavoritesRecordsFragment;)Lcom/callapp/contacts/activity/records/RecordsActivityActions;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/callapp/contacts/activity/records/FavoritesRecordsFragment;->a:Lcom/callapp/contacts/activity/records/RecordsActivityActions;

    return-object p0
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/records/FavoritesRecordsFragment;Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;)Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/callapp/contacts/activity/records/FavoritesRecordsFragment;->b:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;

    return-object p1
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/records/FavoritesRecordsFragment;)Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/callapp/contacts/activity/records/FavoritesRecordsFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    return-object p0
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/records/FavoritesRecordsFragment;)Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/callapp/contacts/activity/records/FavoritesRecordsFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    return-object p0
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/records/FavoritesRecordsFragment;)V
    .locals 0

    .line 29
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/records/FavoritesRecordsFragment;->toggleEmptyViewIfNeeded()V

    return-void
.end method

.method static synthetic e(Lcom/callapp/contacts/activity/records/FavoritesRecordsFragment;)V
    .locals 0

    .line 29
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/records/FavoritesRecordsFragment;->hideLoadingProgress()V

    return-void
.end method

.method static synthetic f(Lcom/callapp/contacts/activity/records/FavoritesRecordsFragment;)Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/callapp/contacts/activity/records/FavoritesRecordsFragment;->b:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;

    return-object p0
.end method


# virtual methods
.method public filterReq(Ljava/lang/CharSequence;Z)V
    .locals 0

    return-void
.end method

.method public getDataChangeOrigin()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getEmptyViewData()Lcom/callapp/contacts/activity/base/BaseCallAppFragment$EmptyViewData;
    .locals 3

    .line 134
    new-instance v0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$EmptyViewData;

    const v1, 0x7f120149

    .line 135
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f080294

    invoke-direct {v0, v2, v1}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$EmptyViewData;-><init>(ILjava/lang/CharSequence;)V

    return-object v0
.end method

.method public getFragmentType()[I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 46
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

.method public getLayoutResId()I
    .locals 1

    const v0, 0x7f0d01b6

    return v0
.end method

.method public synthetic getNewAdapter(Ljava/lang/Object;)Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;
    .locals 3

    .line 29
    check-cast p1, Ljava/util/List;

    .line 1111
    new-instance v0, Lcom/callapp/contacts/activity/records/CallRecordsAdapter;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/records/FavoritesRecordsFragment;->getScrollEvents()Lcom/callapp/contacts/activity/base/ScrollEvents;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/activity/records/FavoritesRecordsFragment$2;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/activity/records/FavoritesRecordsFragment$2;-><init>(Lcom/callapp/contacts/activity/records/FavoritesRecordsFragment;)V

    invoke-direct {v0, v1, p1, v2}, Lcom/callapp/contacts/activity/records/CallRecordsAdapter;-><init>(Lcom/callapp/contacts/activity/base/ScrollEvents;Ljava/util/List;Lcom/callapp/contacts/activity/records/CallRecordsAdapter$CallRecordRowListener;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/records/FavoritesRecordsFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    .line 1128
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/records/FavoritesRecordsFragment;->getAdUnitIdsConfiguration()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/records/FavoritesRecordsFragment;->getExperimentRemoteConfigName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/ListsUtils;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/util/ads/AdSettings;

    move-result-object p1

    .line 1129
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/records/FavoritesRecordsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/records/FavoritesRecordsFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

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

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/records/FavoritesRecordsFragment;->getCheckedRows()Ljava/util/List;

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

    .line 81
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseMultiSelectListFragment;->onAttach(Landroid/content/Context;)V

    .line 84
    :try_start_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/records/FavoritesRecordsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/records/RecordsActivityActions;

    iput-object p1, p0, Lcom/callapp/contacts/activity/records/FavoritesRecordsFragment;->a:Lcom/callapp/contacts/activity/records/RecordsActivityActions;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 86
    :catch_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Parent activity must implement RecordsActivityActions"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onDestroy()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/callapp/contacts/activity/records/FavoritesRecordsFragment;->b:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->dismiss()V

    .line 97
    :cond_0
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseMultiSelectListFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 102
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseMultiSelectListFragment;->onPause()V

    .line 104
    iget-object v0, p0, Lcom/callapp/contacts/activity/records/FavoritesRecordsFragment;->b:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->pausePlayer()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 35
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/activity/base/BaseMultiSelectListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/records/FavoritesRecordsFragment;->refreshData()V

    return-void
.end method

.method public refreshData()V
    .locals 2

    .line 51
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/records/FavoritesRecordsFragment;->showLoadingProgress()V

    .line 53
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/records/FavoritesRecordsFragment$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/records/FavoritesRecordsFragment$1;-><init>(Lcom/callapp/contacts/activity/records/FavoritesRecordsFragment;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setMultiSelectModeEnable(Z)V
    .locals 0

    const/4 p1, 0x1

    .line 145
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/records/FavoritesRecordsFragment;->showMultiSelect(Z)V

    return-void
.end method
