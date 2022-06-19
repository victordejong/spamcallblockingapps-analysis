.class public Lcom/callapp/contacts/activity/blocked/BlockedFragment;
.super Lcom/callapp/contacts/activity/base/BaseCallAppFragment;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedAdapterEvents;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/base/BaseCallAppFragment<",
        "Ljava/util/List<",
        "Lcom/callapp/contacts/activity/base/BaseViewTypeData;",
        ">;>;",
        "Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedAdapterEvents;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;-><init>()V

    return-void
.end method

.method private synthetic a()V
    .locals 13

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    invoke-static {}, Lcom/callapp/contacts/manager/BlockManager;->getAllBlockedRules()Ljava/util/List;

    move-result-object v1

    .line 87
    new-instance v2, Lcom/callapp/contacts/activity/base/HeaderSectionData;

    invoke-direct {v2}, Lcom/callapp/contacts/activity/base/HeaderSectionData;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance v2, Lcom/callapp/contacts/activity/contact/list/search/AddEntryItemData;

    const v3, 0x7f120238

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/callapp/contacts/activity/contact/list/search/AddEntryItemData;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/model/objectbox/BlockedRule;

    .line 91
    new-instance v12, Lcom/callapp/contacts/model/ReminderData;

    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/BlockedRule;->getBlockRuleType()Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;

    move-result-object v3

    iget v3, v3, Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;->type:I

    int-to-long v4, v3

    new-instance v6, Ljava/util/Date;

    const-wide/16 v7, 0x0

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v3

    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/BlockedRule;->getRawNumber()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v9

    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/BlockedRule;->getTitle()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/callapp/contacts/model/ReminderType;->BLOCKED_RULE:Lcom/callapp/contacts/model/ReminderType;

    move-object v3, v12

    invoke-direct/range {v3 .. v11}, Lcom/callapp/contacts/model/ReminderData;-><init>(JLjava/util/Date;JLcom/callapp/framework/phone/Phone;Ljava/lang/String;Lcom/callapp/contacts/model/ReminderType;)V

    .line 92
    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 94
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->getBlockedContacts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 95
    iget-object v1, p0, Lcom/callapp/contacts/activity/blocked/BlockedFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    if-eqz v1, :cond_1

    .line 96
    iget-object v1, p0, Lcom/callapp/contacts/activity/blocked/BlockedFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;->c()V

    .line 98
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/activity/blocked/-$$Lambda$BlockedFragment$pn3wIKXCuTBK89LPaAWAffcsryA;

    invoke-direct {v2, p0, v0}, Lcom/callapp/contacts/activity/blocked/-$$Lambda$BlockedFragment$pn3wIKXCuTBK89LPaAWAffcsryA;-><init>(Lcom/callapp/contacts/activity/blocked/BlockedFragment;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic a(Ljava/util/List;)V
    .locals 0

    .line 98
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/blocked/BlockedFragment;->setData(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$_hlxykDoNhgFWrNmevXTWw9DjWI(Lcom/callapp/contacts/activity/blocked/BlockedFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/callapp/contacts/activity/blocked/BlockedFragment;->a()V

    return-void
.end method

.method public static synthetic lambda$pn3wIKXCuTBK89LPaAWAffcsryA(Lcom/callapp/contacts/activity/blocked/BlockedFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/blocked/BlockedFragment;->a(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/framework/phone/Phone;)V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 4

    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/blocked/BlockedFragment;->isDataLoaded:Z

    .line 106
    sget-object v1, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v2, Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v3, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->BLOCK:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    .line 1091
    invoke-virtual {v1, v2, v3, v0}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    return-void
.end method

.method public getDataChangeOrigin()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public getEmptyViewData()Lcom/callapp/contacts/activity/base/BaseCallAppFragment$EmptyViewData;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFragmentType()[I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 66
    sget-object v1, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->BLOCK:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    invoke-virtual {v1}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    sget-object v1, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->CONTACTS:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    invoke-virtual {v1}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    return-object v0
.end method

.method public getLayoutResId()I
    .locals 1

    const v0, 0x7f0d01b6

    return v0
.end method

.method public synthetic getNewAdapter(Ljava/lang/Object;)Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;
    .locals 2

    .line 34
    check-cast p1, Ljava/util/List;

    .line 2048
    new-instance v0, Lcom/callapp/contacts/activity/blocked/BlockedAdapter;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/blocked/BlockedFragment;->getScrollEvents()Lcom/callapp/contacts/activity/base/ScrollEvents;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1}, Lcom/callapp/contacts/activity/blocked/BlockedAdapter;-><init>(Ljava/util/List;Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedAdapterEvents;Lcom/callapp/contacts/activity/base/ScrollEvents;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/blocked/BlockedFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    .line 2050
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/blocked/BlockedFragment;->getAdUnitIdsConfiguration()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/blocked/BlockedFragment;->getExperimentRemoteConfigName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/ListsUtils;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/util/ads/AdSettings;

    move-result-object p1

    .line 2051
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/blocked/BlockedFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/blocked/BlockedFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    invoke-static {v0, p1, v1}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Landroid/app/Activity;Lcom/callapp/contacts/util/ads/AdSettings;Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;)Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;

    move-result-object p1

    return-object p1
.end method

.method public isPartOfViewPagerActivity()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 39
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/blocked/BlockedFragment;->hideLoadingProgress()V

    .line 42
    iget-object p1, p0, Lcom/callapp/contacts/activity/blocked/BlockedFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 43
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/blocked/BlockedFragment;->refreshData()V

    return-void
.end method

.method public refreshData()V
    .locals 2

    .line 81
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/blocked/BlockedFragment;->isDataLoaded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/blocked/BlockedFragment;->isDataLoaded:Z

    .line 83
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/blocked/-$$Lambda$BlockedFragment$_hlxykDoNhgFWrNmevXTWw9DjWI;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/blocked/-$$Lambda$BlockedFragment$_hlxykDoNhgFWrNmevXTWw9DjWI;-><init>(Lcom/callapp/contacts/activity/blocked/BlockedFragment;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
