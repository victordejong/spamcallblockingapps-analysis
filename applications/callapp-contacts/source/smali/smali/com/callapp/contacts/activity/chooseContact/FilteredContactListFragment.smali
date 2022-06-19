.class public Lcom/callapp/contacts/activity/chooseContact/FilteredContactListFragment;
.super Lcom/callapp/contacts/activity/base/BaseMultiSelectListFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/base/BaseMultiSelectListFragment<",
        "Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseMultiSelectListFragment;-><init>()V

    const-string v0, ""

    .line 23
    iput-object v0, p0, Lcom/callapp/contacts/activity/chooseContact/FilteredContactListFragment;->a:Ljava/lang/String;

    return-void
.end method

.method private synthetic a()V
    .locals 3

    .line 97
    invoke-static {}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->getContactsWithPhoneNumber()Ljava/util/List;

    move-result-object v0

    .line 98
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/chooseContact/FilteredContactListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/activity/chooseContact/-$$Lambda$FilteredContactListFragment$yctj-ZKtzgM6PDJkF2I9f-RBvro;

    invoke-direct {v2, p0, v0}, Lcom/callapp/contacts/activity/chooseContact/-$$Lambda$FilteredContactListFragment$yctj-ZKtzgM6PDJkF2I9f-RBvro;-><init>(Lcom/callapp/contacts/activity/chooseContact/FilteredContactListFragment;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/lang/CharSequence;Z)V
    .locals 0

    .line 50
    iget-object p2, p0, Lcom/callapp/contacts/activity/chooseContact/FilteredContactListFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    if-eqz p2, :cond_1

    .line 51
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 52
    iget-object p2, p0, Lcom/callapp/contacts/activity/chooseContact/FilteredContactListFragment;->a:Ljava/lang/String;

    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/callapp/contacts/activity/chooseContact/FilteredContactListFragment;->a:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 53
    :cond_0
    iget-object p2, p0, Lcom/callapp/contacts/activity/chooseContact/FilteredContactListFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    check-cast p2, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 57
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/callapp/contacts/activity/chooseContact/FilteredContactListFragment;->a:Ljava/lang/String;

    return-void
.end method

.method private synthetic a(Ljava/util/List;)V
    .locals 0

    .line 98
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/chooseContact/FilteredContactListFragment;->setData(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$qjcxKTra7-ZAzPhgOmbOuokoQmE(Lcom/callapp/contacts/activity/chooseContact/FilteredContactListFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/callapp/contacts/activity/chooseContact/FilteredContactListFragment;->a()V

    return-void
.end method

.method public static synthetic lambda$yctj-ZKtzgM6PDJkF2I9f-RBvro(Lcom/callapp/contacts/activity/chooseContact/FilteredContactListFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/chooseContact/FilteredContactListFragment;->a(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public filterReq(Ljava/lang/CharSequence;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1086
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/chooseContact/FilteredContactListFragment;->scrollToTop()V

    .line 1089
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/chooseContact/FilteredContactListFragment;->getCurrentFilterText()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    .line 1090
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/chooseContact/FilteredContactListFragment;->a(Ljava/lang/CharSequence;Z)V

    :cond_1
    return-void
.end method

.method public getCurrentFilterText()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/callapp/contacts/activity/chooseContact/FilteredContactListFragment;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getDataChangeOrigin()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEmptyViewData()Lcom/callapp/contacts/activity/base/BaseCallAppFragment$EmptyViewData;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFragmentType()[I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 104
    sget-object v1, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->CONTACTS:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    .line 105
    invoke-virtual {v1}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    return-object v0
.end method

.method public synthetic getNewAdapter(Ljava/lang/Object;)Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;
    .locals 4

    .line 21
    check-cast p1, Ljava/util/List;

    .line 2027
    new-instance v0, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/chooseContact/FilteredContactListFragment;->getScrollEvents()Lcom/callapp/contacts/activity/base/ScrollEvents;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/chooseContact/FilteredContactListFragment;->itemClickListener:Lcom/callapp/contacts/activity/interfaces/OnListItemInteractionsListener;

    const/4 v3, 0x0

    invoke-direct {v0, v1, p1, v3, v2}, Lcom/callapp/contacts/activity/chooseContact/ChooseContactAdapter;-><init>(Lcom/callapp/contacts/activity/base/ScrollEvents;Ljava/util/List;ZLcom/callapp/contacts/activity/interfaces/OnListItemInteractionsListener;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/chooseContact/FilteredContactListFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    .line 2029
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/chooseContact/FilteredContactListFragment;->getAdUnitIdsConfiguration()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/chooseContact/FilteredContactListFragment;->getExperimentRemoteConfigName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/ListsUtils;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/util/ads/AdSettings;

    move-result-object p1

    .line 2030
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/chooseContact/FilteredContactListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/chooseContact/FilteredContactListFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

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

    .line 35
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/activity/base/BaseMultiSelectListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/chooseContact/FilteredContactListFragment;->refreshData()V

    return-void
.end method

.method public refreshData()V
    .locals 2

    .line 96
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/chooseContact/-$$Lambda$FilteredContactListFragment$qjcxKTra7-ZAzPhgOmbOuokoQmE;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/chooseContact/-$$Lambda$FilteredContactListFragment$qjcxKTra7-ZAzPhgOmbOuokoQmE;-><init>(Lcom/callapp/contacts/activity/chooseContact/FilteredContactListFragment;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic setData(Ljava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/chooseContact/FilteredContactListFragment;->setData(Ljava/util/List;)V

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;",
            ">;)V"
        }
    .end annotation

    .line 76
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseMultiSelectListFragment;->setData(Ljava/util/List;)V

    .line 77
    iget-object p1, p0, Lcom/callapp/contacts/activity/chooseContact/FilteredContactListFragment;->a:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/chooseContact/FilteredContactListFragment;->a(Ljava/lang/CharSequence;Z)V

    return-void
.end method
