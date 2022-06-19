.class public Lcom/callapp/contacts/activity/calllog/CallLogFragment;
.super Lcom/callapp/contacts/activity/base/BaseCallAppFragment;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/contact/list/ContactListFragmentMarker;
.implements Lcom/callapp/contacts/activity/interfaces/MultiSelectEvents;
.implements Lcom/callapp/contacts/activity/interfaces/OnMissedCallCardChangeListener;
.implements Lcom/callapp/contacts/activity/interfaces/OnMissedCallReminderMenuClickListener;
.implements Lcom/callapp/contacts/activity/interfaces/OnSelectChangeListener;
.implements Lcom/callapp/contacts/observers/CallAppContentObserver$ContentObserverListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/calllog/CallLogFragment$ShowKeypadPromotionListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/base/BaseCallAppFragment<",
        "Ljava/util/List<",
        "Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;",
        ">;>;",
        "Lcom/callapp/contacts/activity/contact/list/ContactListFragmentMarker;",
        "Lcom/callapp/contacts/activity/interfaces/MultiSelectEvents;",
        "Lcom/callapp/contacts/activity/interfaces/OnMissedCallCardChangeListener;",
        "Lcom/callapp/contacts/activity/interfaces/OnMissedCallReminderMenuClickListener;",
        "Lcom/callapp/contacts/activity/interfaces/OnSelectChangeListener;",
        "Lcom/callapp/contacts/observers/CallAppContentObserver$ContentObserverListener;"
    }
.end annotation


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/callapp/contacts/model/SectionData;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Lcom/callapp/contacts/activity/interfaces/MultiSelectChangeListener;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/callapp/contacts/activity/contact/list/search/ContactsClickEvents;

.field private g:Lcom/callapp/contacts/activity/calllog/CallLogFragment$ShowKeypadPromotionListener;

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;-><init>()V

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->b:Ljava/util/Map;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->e:Ljava/util/List;

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->h:Z

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/calllog/CallLogFragment;)Lcom/callapp/contacts/activity/contact/list/search/ContactsClickEvents;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->f:Lcom/callapp/contacts/activity/contact/list/search/ContactsClickEvents;

    return-object p0
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/calllog/CallLogFragment;Ljava/util/Stack;)Ljava/util/List;
    .locals 10

    .line 7198
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 7199
    invoke-virtual {p1}, Ljava/util/Stack;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Stack;

    if-eqz p1, :cond_3

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 7205
    :goto_0
    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 7206
    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;

    invoke-virtual {v6}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->getDateType()I

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-nez v3, :cond_0

    if-nez v6, :cond_0

    .line 7209
    iget-object v1, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->b:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v6, Lcom/callapp/contacts/model/SectionData;

    const v7, 0x7f120723

    invoke-static {v7}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/callapp/contacts/model/SectionData;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    if-nez v4, :cond_1

    if-ne v6, v8, :cond_1

    .line 7213
    iget-object v1, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->b:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v6, Lcom/callapp/contacts/model/SectionData;

    const v7, 0x7f12087a

    invoke-static {v7}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/callapp/contacts/model/SectionData;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    if-nez v5, :cond_2

    if-ne v6, v7, :cond_2

    .line 7217
    iget-object v1, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->b:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/callapp/contacts/model/SectionData;

    const v9, 0x7f120134

    invoke-static {v9}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Lcom/callapp/contacts/model/SectionData;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    const/4 v5, 0x1

    .line 7221
    :cond_2
    :goto_1
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;

    .line 7222
    invoke-virtual {v6, v1}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->setSectionId(I)V

    .line 7223
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7227
    :cond_3
    iget-object p0, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->b:Ljava/util/Map;

    const/4 p1, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v1, Lcom/callapp/contacts/model/SectionData;

    const v2, 0x7f120133

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/callapp/contacts/model/SectionData;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/calllog/CallLogFragment;)Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    return-object p0
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/calllog/CallLogFragment;)Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    return-object p0
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/calllog/CallLogFragment;)Ljava/util/List;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->e:Ljava/util/List;

    return-object p0
.end method

.method static synthetic e(Lcom/callapp/contacts/activity/calllog/CallLogFragment;)V
    .locals 0

    .line 61
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->toggleEmptyViewIfNeeded()V

    return-void
.end method

.method static synthetic f(Lcom/callapp/contacts/activity/calllog/CallLogFragment;)Lcom/callapp/contacts/activity/contact/list/ViewPagerManager;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->viewPagerManager:Lcom/callapp/contacts/activity/contact/list/ViewPagerManager;

    return-object p0
.end method

.method static synthetic g(Lcom/callapp/contacts/activity/calllog/CallLogFragment;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->c:Z

    return p0
.end method

.method static synthetic h(Lcom/callapp/contacts/activity/calllog/CallLogFragment;)Lcom/callapp/contacts/activity/interfaces/MultiSelectChangeListener;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->d:Lcom/callapp/contacts/activity/interfaces/MultiSelectChangeListener;

    return-object p0
.end method

.method static synthetic i(Lcom/callapp/contacts/activity/calllog/CallLogFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic j(Lcom/callapp/contacts/activity/calllog/CallLogFragment;)Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->recyclerAdapter:Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;

    return-object p0
.end method

.method static synthetic k(Lcom/callapp/contacts/activity/calllog/CallLogFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic l(Lcom/callapp/contacts/activity/calllog/CallLogFragment;)Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->recyclerAdapter:Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;

    return-object p0
.end method

.method static synthetic m(Lcom/callapp/contacts/activity/calllog/CallLogFragment;)Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->recyclerAdapter:Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;

    return-object p0
.end method

.method static synthetic n(Lcom/callapp/contacts/activity/calllog/CallLogFragment;)Ljava/lang/Object;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->data:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic o(Lcom/callapp/contacts/activity/calllog/CallLogFragment;)Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->recyclerAdapter:Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v0, 0x1

    .line 344
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->isDataLoaded:Z

    .line 345
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/calllog/CallLogFragment$3;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/calllog/CallLogFragment$3;-><init>(Lcom/callapp/contacts/activity/calllog/CallLogFragment;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/callapp/framework/phone/Phone;)V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    check-cast v0, Lcom/callapp/contacts/activity/calllog/CallLogAdapter;

    .line 1249
    iget-object v1, v0, Lcom/callapp/contacts/activity/calllog/CallLogAdapter;->c:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;

    if-eqz v1, :cond_0

    .line 1250
    iget-object v0, v0, Lcom/callapp/contacts/activity/calllog/CallLogAdapter;->c:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->a(Lcom/callapp/framework/phone/Phone;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 3

    .line 396
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->getSelectedContacts()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 397
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 398
    :goto_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->d:Lcom/callapp/contacts/activity/interfaces/MultiSelectChangeListener;

    const v2, 0x7f120131

    invoke-interface {v1, v0, v2}, Lcom/callapp/contacts/activity/interfaces/MultiSelectChangeListener;->a(II)V

    return-void
.end method

.method public b(Lcom/callapp/framework/phone/Phone;)V
    .locals 1

    .line 81
    iget-object p1, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/base/BaseActivity;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/base/BaseActivity;->isForeGroundVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 82
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->h:Z

    .line 83
    iget-object p1, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    check-cast p1, Lcom/callapp/contacts/activity/calllog/CallLogAdapter;

    .line 1261
    iget-object v0, p1, Lcom/callapp/contacts/activity/calllog/CallLogAdapter;->c:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;

    if-eqz v0, :cond_0

    .line 1262
    iget-object p1, p1, Lcom/callapp/contacts/activity/calllog/CallLogAdapter;->c:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->n()V

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x1

    .line 85
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->h:Z

    return-void
.end method

.method public getAdUnitIdsConfiguration()Ljava/lang/String;
    .locals 2

    .line 283
    sget-object v0, Lcom/callapp/contacts/util/ads/AdUtils$AdsLimitForNewUsers;->CALL_LOG:Lcom/callapp/contacts/util/ads/AdUtils$AdsLimitForNewUsers;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Lcom/callapp/contacts/util/ads/AdUtils$AdsLimitForNewUsers;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 286
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDataChangeOrigin()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getEmptyViewData()Lcom/callapp/contacts/activity/base/BaseCallAppFragment$EmptyViewData;
    .locals 4

    .line 272
    new-instance v0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$EmptyViewData;

    const v1, 0x7f120130

    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12012f

    .line 273
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f08033a

    invoke-direct {v0, v3, v1, v2}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$EmptyViewData;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public getExperimentRemoteConfigName()Ljava/lang/String;
    .locals 1

    const-string v0, "CallLogAdExperiments"

    return-object v0
.end method

.method public getFragmentIconResId()I
    .locals 1

    const v0, 0x7f080428

    return v0
.end method

.method public getFragmentType()[I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 103
    sget-object v1, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->RECENT_CALLS:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    invoke-virtual {v1}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    sget-object v1, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->CONTACTS:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    invoke-virtual {v1}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    sget-object v1, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->SIM_CHANGED:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    .line 104
    invoke-virtual {v1}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    sget-object v1, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->SPAM_CALL_UNREAD_COUNT_CHANGED:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    invoke-virtual {v1}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v1, v0, v2

    sget-object v1, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->SUPER_SKIN_CHANGED:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    .line 105
    invoke-virtual {v1}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v1, v0, v2

    return-object v0
.end method

.method public getLayoutResId()I
    .locals 1

    const v0, 0x7f0d0109

    return v0
.end method

.method public synthetic getNewAdapter(Ljava/lang/Object;)Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;
    .locals 9

    .line 61
    move-object v1, p1

    check-cast v1, Ljava/util/List;

    .line 6239
    new-instance p1, Lcom/callapp/contacts/activity/calllog/CallLogAdapter;

    iget-object v2, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->b:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->getScrollEvents()Lcom/callapp/contacts/activity/base/ScrollEvents;

    move-result-object v3

    iget-boolean v4, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->c:Z

    iget-object v5, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->storeItemAssetManager:Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;

    new-instance v7, Lcom/callapp/contacts/activity/calllog/CallLogFragment$1;

    invoke-direct {v7, p0}, Lcom/callapp/contacts/activity/calllog/CallLogFragment$1;-><init>(Lcom/callapp/contacts/activity/calllog/CallLogFragment;)V

    new-instance v8, Lcom/callapp/contacts/activity/calllog/CallLogFragment$2;

    invoke-direct {v8, p0}, Lcom/callapp/contacts/activity/calllog/CallLogFragment$2;-><init>(Lcom/callapp/contacts/activity/calllog/CallLogFragment;)V

    move-object v0, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v8}, Lcom/callapp/contacts/activity/calllog/CallLogAdapter;-><init>(Ljava/util/List;Ljava/util/Map;Lcom/callapp/contacts/activity/base/ScrollEvents;ZLcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;Lcom/callapp/contacts/activity/interfaces/OnSelectChangeListener;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;Lcom/callapp/contacts/activity/calllog/CallLogAdapter$StickyBannerEvents;)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    .line 6261
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->getAdUnitIdsConfiguration()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->getExperimentRemoteConfigName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/ListsUtils;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/util/ads/AdSettings;

    move-result-object p1

    .line 6262
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    invoke-static {v0, p1, v1}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Landroid/app/Activity;Lcom/callapp/contacts/util/ads/AdSettings;Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;)Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;

    move-result-object p1

    .line 6264
    new-instance v0, La/a/a/a/a/c;

    invoke-direct {v0, p1}, La/a/a/a/a/c;-><init>(La/a/a/a/a/b;)V

    .line 6265
    iget-object v1, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView$h;I)V

    return-object p1
.end method

.method public getSelectedContacts()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/activity/base/BaseAdapterItemData;",
            ">;"
        }
    .end annotation

    .line 319
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 320
    iget-object v1, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;

    .line 321
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 322
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public isViewEmpty()Z
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->data:Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public notifyItemChangedEvent(Lcom/callapp/contacts/model/DataChangedInfo;)Z
    .locals 2

    .line 420
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->recyclerAdapter:Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->recyclerAdapter:Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;->isDataReady()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 424
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/model/DataChangedInfo;->getDataType()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->isCurrentType(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 425
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/activity/calllog/CallLogFragment$4;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/calllog/CallLogFragment$4;-><init>(Lcom/callapp/contacts/activity/calllog/CallLogFragment;)V

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/CallAppApplication;->b(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 162
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->onAttach(Landroid/content/Context;)V

    .line 164
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/callapp/contacts/activity/interfaces/MultiSelectChangeListener;

    if-eqz p1, :cond_2

    .line 165
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/interfaces/MultiSelectChangeListener;

    iput-object p1, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->d:Lcom/callapp/contacts/activity/interfaces/MultiSelectChangeListener;

    .line 170
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/callapp/contacts/activity/contact/list/search/ContactsClickEvents;

    if-eqz p1, :cond_1

    .line 171
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/contact/list/search/ContactsClickEvents;

    iput-object p1, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->f:Lcom/callapp/contacts/activity/contact/list/search/ContactsClickEvents;

    .line 176
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/callapp/contacts/activity/calllog/CallLogFragment$ShowKeypadPromotionListener;

    if-eqz p1, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/calllog/CallLogFragment$ShowKeypadPromotionListener;

    iput-object p1, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->g:Lcom/callapp/contacts/activity/calllog/CallLogFragment$ShowKeypadPromotionListener;

    .line 182
    invoke-static {p0}, Lcom/callapp/contacts/observers/CallLogContentObserver;->c(Lcom/callapp/contacts/observers/CallAppContentObserver$ContentObserverListener;)V

    return-void

    .line 179
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Parent activity must implement ShowKeypadPromotionListener"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 173
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Parent activity must implement ContactsClickEvents"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 167
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Parent activity must implement MultiSelectChangeListener"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onContentChanged()V
    .locals 1

    const/4 v0, 0x0

    .line 404
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->isDataLoaded:Z

    .line 405
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->refreshData()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 110
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->onCreate(Landroid/os/Bundle;)V

    .line 111
    sget-object p1, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v0, Lcom/callapp/contacts/activity/interfaces/OnMissedCallReminderMenuClickListener;->a:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {p1, v0, p0}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 112
    sget-object p1, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v0, Lcom/callapp/contacts/activity/interfaces/OnMissedCallCardChangeListener;->a:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {p1, v0, p0}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 115
    invoke-static {}, Lcom/callapp/contacts/activity/missedcall/MissedCallManager;->b()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 120
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->onDestroy()V

    .line 121
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/OnMissedCallReminderMenuClickListener;->a:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {v0, v1, p0}, Lcom/callapp/contacts/event/bus/EventBus;->b(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 122
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/OnMissedCallCardChangeListener;->a:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {v0, v1, p0}, Lcom/callapp/contacts/event/bus/EventBus;->b(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 124
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    check-cast v0, Lcom/callapp/contacts/activity/calllog/CallLogAdapter;

    .line 2255
    iget-object v1, v0, Lcom/callapp/contacts/activity/calllog/CallLogAdapter;->c:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;

    if-eqz v1, :cond_0

    .line 2256
    iget-object v0, v0, Lcom/callapp/contacts/activity/calllog/CallLogAdapter;->c:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;

    .line 3291
    iget-object v1, v0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->u:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    .line 3292
    iget-object v0, v0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->u:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 150
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->onDestroyView()V

    .line 152
    invoke-static {}, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLog;->get()Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLog;->a()V

    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 187
    invoke-static {p0}, Lcom/callapp/contacts/observers/CallLogContentObserver;->d(Lcom/callapp/contacts/observers/CallAppContentObserver$ContentObserverListener;)V

    .line 188
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/CallLogLastSeenTimestampEventListener;->c:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;)V

    .line 189
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->onDetach()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 91
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->onResume()V

    .line 92
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 93
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->b(Lcom/callapp/framework/phone/Phone;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 132
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 133
    iget-object p2, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 135
    iget-object p2, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->viewPagerManager:Lcom/callapp/contacts/activity/contact/list/ViewPagerManager;

    invoke-interface {p2}, Lcom/callapp/contacts/activity/contact/list/ViewPagerManager;->getCurrentPage()I

    move-result p2

    if-nez p2, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->refreshData()V

    .line 139
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLog;->get()Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLog;

    move-result-object p2

    .line 4045
    invoke-static {}, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLog;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4046
    iget-object v1, p2, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLog;->b:Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;

    if-nez v1, :cond_1

    .line 4047
    new-instance v1, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;

    invoke-direct {v1}, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;-><init>()V

    iput-object v1, p2, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLog;->b:Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;

    .line 4050
    :cond_1
    iget-object p2, p2, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLog;->b:Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;

    const v1, 0x7f0a040b

    .line 4356
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/util/ViewUtils;->b(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p2, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->a:Landroid/view/View;

    .line 4358
    iget-object p1, p2, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->a:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 4359
    iget-object p1, p2, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->a:Landroid/view/View;

    const v0, 0x7f0600f3

    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 4361
    iget-object p1, p2, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->a:Landroid/view/View;

    const v0, 0x7f0a014e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p2, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->k:Landroid/view/View;

    .line 4362
    iget-object p1, p2, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->k:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 4363
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    int-to-float v0, v0

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 4365
    iget-object p1, p2, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->a:Landroid/view/View;

    const v0, 0x7f0a04b2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p2, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->n:Landroid/widget/TextView;

    .line 4366
    iget-object p1, p2, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->a:Landroid/view/View;

    const v0, 0x7f0a0951

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p2, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->l:Landroid/widget/TextView;

    .line 4367
    iget-object p1, p2, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->a:Landroid/view/View;

    const v0, 0x7f0a0952

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p2, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->m:Landroid/widget/TextView;

    .line 4369
    iget-object p1, p2, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->l:Landroid/widget/TextView;

    const v0, 0x7f12033d

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4370
    iget-object p1, p2, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->l:Landroid/widget/TextView;

    const v0, 0x7f0601ec

    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4371
    iget-object p1, p2, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->m:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4372
    iget-object p1, p2, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->a:Landroid/view/View;

    const v0, 0x7f0a0267

    .line 5323
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p2, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->b:Landroid/view/View;

    const v0, 0x7f0a026a

    .line 5324
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p2, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->c:Landroid/view/View;

    const v0, 0x7f0a026d

    .line 5325
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p2, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->d:Landroid/view/View;

    .line 5327
    iget-object p1, p2, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->b:Landroid/view/View;

    const v0, 0x7f0a0266

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p2, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->e:Landroid/view/View;

    .line 5328
    iget-object p1, p2, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->e:Landroid/view/View;

    const v0, 0x3f59999a    # 0.85f

    invoke-virtual {p2, p1, v0}, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->a(Landroid/view/View;F)V

    .line 5330
    iget-object p1, p2, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->c:Landroid/view/View;

    const v0, 0x7f0a0269

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p2, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->f:Landroid/view/View;

    .line 5331
    iget-object p1, p2, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->f:Landroid/view/View;

    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p2, p1, v0}, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->a(Landroid/view/View;F)V

    .line 5333
    iget-object p1, p2, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->d:Landroid/view/View;

    const v0, 0x7f0a026c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p2, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->g:Landroid/view/View;

    .line 5334
    iget-object p1, p2, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->g:Landroid/view/View;

    const v0, 0x3f19999a    # 0.6f

    invoke-virtual {p2, p1, v0}, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->a(Landroid/view/View;F)V

    .line 5336
    iget-object p1, p2, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->b:Landroid/view/View;

    const v0, 0x7f0a0268

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p2, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->h:Landroid/view/View;

    .line 5337
    iget-object p1, p2, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->c:Landroid/view/View;

    const v0, 0x7f0a026b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p2, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->i:Landroid/view/View;

    .line 5338
    iget-object p1, p2, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->d:Landroid/view/View;

    const v0, 0x7f0a026e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p2, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->j:Landroid/view/View;

    const p1, 0x7f060026

    .line 5340
    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    .line 5341
    iget-object v0, p2, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 5342
    iget-object v0, p2, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->c:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 5343
    iget-object v0, p2, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->d:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 4374
    iget-object p1, p2, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->a:Landroid/view/View;

    const v0, 0x7f0a0460

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f060088

    .line 4375
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    const v0, 0x7f0a045f

    .line 4377
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f120362

    .line 4378
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4379
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLogViewManager;->getFinishedFirstTimeExperienceListener()Landroid/view/View$OnClickListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    :cond_2
    invoke-static {}, Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 142
    iget-object p1, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->g:Lcom/callapp/contacts/activity/calllog/CallLogFragment$ShowKeypadPromotionListener;

    if-eqz p1, :cond_3

    .line 143
    invoke-interface {p1}, Lcom/callapp/contacts/activity/calllog/CallLogFragment$ShowKeypadPromotionListener;->a()V

    :cond_3
    return-void
.end method

.method public refreshData()V
    .locals 1

    .line 337
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->isDataLoaded:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->shouldRefreshData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->a()V

    :cond_0
    return-void
.end method

.method public setMultiSelectModeEnable(Z)V
    .locals 2

    .line 298
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->c:Z

    if-eq v0, p1, :cond_1

    .line 299
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->c:Z

    .line 301
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    check-cast v0, Lcom/callapp/contacts/activity/calllog/CallLogAdapter;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/calllog/CallLogAdapter;->setMultiSelectMode(Z)V

    if-nez p1, :cond_1

    .line 306
    iget-object p1, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;

    const/4 v1, 0x0

    .line 307
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->setChecked(Z)V

    goto :goto_0

    .line 309
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public shouldEnableFastScroll()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
