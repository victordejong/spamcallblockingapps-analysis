.class public Lcom/callapp/contacts/activity/contact/list/ContactsFragment;
.super Lcom/callapp/contacts/activity/base/BaseCallAppFragment;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/contact/list/ContactListFragmentMarker;
.implements Lcom/callapp/contacts/activity/fastscroll/FastScroller$SectionIndexer;
.implements Lcom/callapp/contacts/activity/interfaces/MultiSelectEvents;
.implements Lcom/callapp/contacts/activity/interfaces/OnSelectChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/base/BaseCallAppFragment<",
        "Lcom/callapp/contacts/manager/cursor/ContactsAggregatorCursor;",
        ">;",
        "Lcom/callapp/contacts/activity/contact/list/ContactListFragmentMarker;",
        "Lcom/callapp/contacts/activity/fastscroll/FastScroller$SectionIndexer;",
        "Lcom/callapp/contacts/activity/interfaces/MultiSelectEvents;",
        "Lcom/callapp/contacts/activity/interfaces/OnSelectChangeListener;"
    }
.end annotation


# instance fields
.field a:Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;

.field private b:Lcom/callapp/contacts/activity/contact/list/search/ContactsClickEvents;

.field private c:Lcom/callapp/contacts/manager/usecase/UseCase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/callapp/contacts/manager/usecase/UseCase<",
            "Lcom/callapp/contacts/manager/cursor/ContactsAggregatorCursor;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Lcom/callapp/contacts/activity/interfaces/MultiSelectChangeListener;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;-><init>()V

    const-string v0, ""

    .line 54
    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->f:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/list/ContactsFragment;)Lcom/callapp/contacts/activity/contact/list/search/ContactsClickEvents;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->b:Lcom/callapp/contacts/activity/contact/list/search/ContactsClickEvents;

    return-object p0
.end method

.method private a()V
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    instance-of v0, v0, Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    check-cast v0, Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;->d()V

    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;Ljava/lang/String;)V
    .locals 3

    .line 185
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->a:Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const v0, 0x7f0a0533

    .line 186
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 188
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07038e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 189
    new-instance v2, Lcom/callapp/contacts/activity/contact/list/ContactsFragment$2;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/activity/contact/list/ContactsFragment$2;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsFragment;)V

    invoke-static {p1, p2, v1, v2, v0}, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->a(Landroid/view/View;Ljava/lang/String;ILandroid/widget/PopupWindow$OnDismissListener;Landroid/view/View;)Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->a:Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;

    :cond_0
    return-void
.end method

.method private synthetic a(Lcom/callapp/contacts/manager/cursor/ContactsAggregatorCursor;)V
    .locals 2

    .line 293
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;->c()V

    .line 296
    :cond_0
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->setData(Ljava/lang/Object;)V

    .line 297
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->a()V

    .line 299
    iget-boolean p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->d:Z

    if-eqz p1, :cond_2

    .line 300
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->getSelectedContacts()Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 301
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 302
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->e:Lcom/callapp/contacts/activity/interfaces/MultiSelectChangeListener;

    const v1, 0x7f120239

    invoke-interface {v0, p1, v1}, Lcom/callapp/contacts/activity/interfaces/MultiSelectChangeListener;->a(II)V

    .line 305
    :cond_2
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->viewPagerManager:Lcom/callapp/contacts/activity/contact/list/ViewPagerManager;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/callapp/contacts/activity/contact/list/ViewPagerManager;->a(I)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    invoke-direct {p0, v0, p1}, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->a(Landroid/view/View;Ljava/lang/String;)V

    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/callapp/contacts/activity/contact/list/-$$Lambda$ContactsFragment$26LfbTLZlr-ZjxiidqZIXeboaLw;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/contact/list/-$$Lambda$ContactsFragment$26LfbTLZlr-ZjxiidqZIXeboaLw;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsFragment;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Lcom/callapp/contacts/api/ContextRunnable;)V

    :cond_1
    return-void
.end method

.method private synthetic a(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 179
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$26LfbTLZlr-ZjxiidqZIXeboaLw(Lcom/callapp/contacts/activity/contact/list/ContactsFragment;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->a(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$NuC5U5PwR-ACEy2A8E_ENIMO_V0(Lcom/callapp/contacts/activity/contact/list/ContactsFragment;Lcom/callapp/contacts/manager/cursor/ContactsAggregatorCursor;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->a(Lcom/callapp/contacts/manager/cursor/ContactsAggregatorCursor;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    .line 229
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->getSelectedContacts()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 230
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 231
    :goto_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->e:Lcom/callapp/contacts/activity/interfaces/MultiSelectChangeListener;

    const v2, 0x7f120239

    invoke-interface {v1, v0, v2}, Lcom/callapp/contacts/activity/interfaces/MultiSelectChangeListener;->a(II)V

    return-void
.end method

.method public getAdUnitIdsConfiguration()Ljava/lang/String;
    .locals 2

    .line 100
    sget-object v0, Lcom/callapp/contacts/util/ads/AdUtils$AdsLimitForNewUsers;->CONTACT_LIST:Lcom/callapp/contacts/util/ads/AdUtils$AdsLimitForNewUsers;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Lcom/callapp/contacts/util/ads/AdUtils$AdsLimitForNewUsers;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 103
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDataChangeOrigin()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getEmptyViewData()Lcom/callapp/contacts/activity/base/BaseCallAppFragment$EmptyViewData;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getExperimentRemoteConfigName()Ljava/lang/String;
    .locals 1

    const-string v0, "ContactListAdExperiments"

    return-object v0
.end method

.method public getFragmentIconResId()I
    .locals 1

    const v0, 0x7f080426

    return v0
.end method

.method public getFragmentType()[I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 58
    sget-object v1, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->CONTACTS:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    invoke-virtual {v1}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    sget-object v1, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->FAVORITES:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    invoke-virtual {v1}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    sget-object v1, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->SUPER_SKIN_CHANGED:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    invoke-virtual {v1}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    return-object v0
.end method

.method public synthetic getNewAdapter(Ljava/lang/Object;)Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;
    .locals 8

    .line 44
    move-object v2, p1

    check-cast v2, Lcom/callapp/contacts/manager/cursor/ContactsAggregatorCursor;

    .line 2114
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    instance-of p1, p1, Lcom/callapp/contacts/activity/fastscroll/FastScrollRecyclerView;

    if-eqz p1, :cond_0

    .line 2115
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    check-cast p1, Lcom/callapp/contacts/activity/fastscroll/FastScrollRecyclerView;

    invoke-virtual {p1, p0}, Lcom/callapp/contacts/activity/fastscroll/FastScrollRecyclerView;->setFastScrollerIndexer(Lcom/callapp/contacts/activity/fastscroll/FastScroller$SectionIndexer;)V

    .line 2116
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    check-cast p1, Lcom/callapp/contacts/activity/fastscroll/FastScrollRecyclerView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/fastscroll/FastScrollRecyclerView;->setWideClickArea(Z)V

    .line 2118
    :cond_0
    new-instance p1, Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->getScrollEvents()Lcom/callapp/contacts/activity/base/ScrollEvents;

    move-result-object v1

    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->storeItemAssetManager:Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;

    new-instance v4, Lcom/callapp/contacts/activity/contact/list/ContactsFragment$1;

    invoke-direct {v4, p0}, Lcom/callapp/contacts/activity/contact/list/ContactsFragment$1;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsFragment;)V

    iget-boolean v5, p0, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->d:Z

    move-object v0, p1

    move-object v6, p0

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;-><init>(Lcom/callapp/contacts/activity/base/ScrollEvents;Lcom/callapp/contacts/manager/cursor/ContactsAggregatorCursor;Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;ZLcom/callapp/contacts/activity/interfaces/OnSelectChangeListener;Lcom/callapp/contacts/activity/interfaces/DataFragmentsEvents;)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    .line 2137
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->getAdUnitIdsConfiguration()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->getExperimentRemoteConfigName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/ListsUtils;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/util/ads/AdSettings;

    move-result-object p1

    .line 2138
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    invoke-static {v0, p1, v1}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Landroid/app/Activity;Lcom/callapp/contacts/util/ads/AdSettings;Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;)Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;

    move-result-object p1

    return-object p1
.end method

.method public getSectionText(I)Ljava/lang/String;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->recyclerAdapter:Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;->getOriginalPosition(I)I

    move-result p1

    if-ltz p1, :cond_3

    .line 248
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 249
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;->getItemAt(I)Lcom/callapp/contacts/activity/base/BaseViewTypeData;

    move-result-object p1

    .line 250
    instance-of v0, p1, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    if-eqz v0, :cond_2

    .line 251
    check-cast p1, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    .line 252
    iget-object v0, p1, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->displayName:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->displayName:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 255
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(C)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "#"

    goto :goto_0

    .line 258
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    goto :goto_0

    .line 264
    :cond_2
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->f:Ljava/lang/String;

    goto :goto_0

    .line 268
    :cond_3
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->f:Ljava/lang/String;

    .line 271
    :goto_0
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->f:Ljava/lang/String;

    return-object p1
.end method

.method public getSelectedContacts()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/activity/base/BaseAdapterItemData;",
            ">;"
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    check-cast v0, Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;->getCheckedItems()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public invalidateDataEvent(Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;)V
    .locals 0

    .line 319
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->a()V

    .line 321
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->invalidateDataEvent(Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;)V

    return-void
.end method

.method public isTooltipShowing()Z
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->a:Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->isTooltipShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public notifyItemChangedEvent(Lcom/callapp/contacts/model/DataChangedInfo;)Z
    .locals 0

    .line 312
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->a()V

    .line 314
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->notifyItemChangedEvent(Lcom/callapp/contacts/model/DataChangedInfo;)Z

    move-result p1

    return p1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 70
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 72
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->viewPagerManager:Lcom/callapp/contacts/activity/contact/list/ViewPagerManager;

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/list/ViewPagerManager;->getCurrentPage()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 73
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "EXTRA_COVER_CHANGED"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const p1, 0x7f1201d8

    .line 75
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->a(Ljava/lang/String;)V

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->refreshData()V

    .line 79
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 84
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->onAttach(Landroid/content/Context;)V

    .line 85
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/callapp/contacts/activity/contact/list/search/ContactsClickEvents;

    if-eqz p1, :cond_1

    .line 86
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/contact/list/search/ContactsClickEvents;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->b:Lcom/callapp/contacts/activity/contact/list/search/ContactsClickEvents;

    .line 91
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/callapp/contacts/activity/interfaces/MultiSelectChangeListener;

    if-eqz p1, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/interfaces/MultiSelectChangeListener;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->e:Lcom/callapp/contacts/activity/interfaces/MultiSelectChangeListener;

    return-void

    .line 94
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Parent activity must implement MultiSelectChangeListener"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 88
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Parent activity must implement ContactsClickEvents"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 63
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    new-instance p1, Lcom/callapp/contacts/manager/usecase/LoadContactsAndCountUseCase;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0}, Landroidx/h/a/a;->a(Landroidx/lifecycle/p;)Landroidx/h/a/a;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/callapp/contacts/manager/usecase/LoadContactsAndCountUseCase;-><init>(Landroid/content/Context;Landroidx/h/a/a;)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->c:Lcom/callapp/contacts/manager/usecase/UseCase;

    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;->setData(Ljava/lang/Object;)V

    .line 280
    :cond_0
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->onDetach()V

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 333
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->onPause()V

    .line 335
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    instance-of v0, v0, Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;

    if-eqz v0, :cond_1

    .line 336
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    check-cast v0, Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;

    .line 1256
    iget-object v1, v0, Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;->d:Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;

    if-eqz v1, :cond_1

    .line 1257
    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;->d:Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;

    .line 2104
    iget-boolean v1, v0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->v:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->s:Z

    iget-boolean v2, v0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->x:Z

    if-eq v1, v2, :cond_1

    .line 2105
    :cond_0
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->n()V

    :cond_1
    return-void
.end method

.method public refreshData()V
    .locals 2

    .line 290
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->isDataLoaded:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->shouldRefreshData()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 291
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->isDataLoaded:Z

    .line 292
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->c:Lcom/callapp/contacts/manager/usecase/UseCase;

    new-instance v1, Lcom/callapp/contacts/activity/contact/list/-$$Lambda$ContactsFragment$NuC5U5PwR-ACEy2A8E_ENIMO_V0;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/list/-$$Lambda$ContactsFragment$NuC5U5PwR-ACEy2A8E_ENIMO_V0;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsFragment;)V

    invoke-interface {v0, v1}, Lcom/callapp/contacts/manager/usecase/UseCase;->a(Lcom/callapp/contacts/manager/usecase/UseCase$Callback;)V

    :cond_0
    return-void
.end method

.method public scrollToTop()V
    .locals 2

    .line 342
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->scrollToTop()V

    .line 345
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->d(I)V

    :cond_0
    return-void
.end method

.method public setMultiSelectModeEnable(Z)V
    .locals 1

    .line 205
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->d:Z

    if-eq v0, p1, :cond_0

    .line 206
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->d:Z

    .line 207
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    check-cast v0, Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;->setMultiSelectMode(Z)V

    if-nez p1, :cond_0

    .line 210
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    check-cast p1, Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;

    .line 1246
    iget-object v0, p1, Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1247
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public shouldEnableFastScroll()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public shouldInvalidateFromEvent(Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;)Z
    .locals 1

    .line 285
    iget-boolean v0, p1, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->isObserverOriginated:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->FAVORITES:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
