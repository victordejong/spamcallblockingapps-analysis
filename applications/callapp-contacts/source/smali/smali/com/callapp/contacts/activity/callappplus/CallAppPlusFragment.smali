.class public Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;
.super Lcom/callapp/contacts/activity/base/BaseCallAppFragmentWithHint;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/interfaces/CallAppFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment$CallAppPlusFilter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/base/BaseCallAppFragmentWithHint<",
        "Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;",
        ">;",
        "Lcom/callapp/contacts/activity/interfaces/CallAppFilter;"
    }
.end annotation


# instance fields
.field private a:Lcom/callapp/contacts/activity/interfaces/CallAppPlusFilter;

.field private b:Lcom/callapp/contacts/activity/interfaces/FilterEvents;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/callapp/contacts/model/SectionData;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/widget/FrameLayout;

.field private f:Lcom/callapp/contacts/activity/callappplus/StickyPromotionCallAppPlus;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseCallAppFragmentWithHint;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;->c:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;)Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    return-object p0
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;->d:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;)Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    return-object p0
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;)Ljava/util/List;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;)Lcom/callapp/contacts/activity/interfaces/CallAppPlusFilter;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;->a:Lcom/callapp/contacts/activity/interfaces/CallAppPlusFilter;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;->recyclerAdapter:Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;

    if-eqz v0, :cond_3

    .line 234
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    instance-of v0, v0, Lcom/callapp/contacts/activity/fastscroll/FastScrollRecyclerView;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    check-cast v0, Lcom/callapp/contacts/activity/fastscroll/FastScrollRecyclerView;

    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/fastscroll/FastScrollRecyclerView;->setFastScrollEnabled(Z)V

    .line 239
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/util/ads/AdUtils;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 240
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 241
    iget-object p1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;->recyclerAdapter:Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;->clearAds()V

    goto :goto_0

    .line 243
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;->recyclerAdapter:Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;->b()V

    .line 248
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->b(I)V

    :cond_3
    return-void
.end method

.method public final a()Z
    .locals 1

    .line 175
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->getNotificationListenersSettingsScreenIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/callapp/contacts/util/Activities;->b()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fh:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAdUnitIdsConfiguration()Ljava/lang/String;
    .locals 2

    .line 165
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDataChangeOrigin()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public getEmptyViewData()Lcom/callapp/contacts/activity/base/BaseCallAppFragment$EmptyViewData;
    .locals 3

    .line 190
    new-instance v0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$EmptyViewData;

    const v1, 0x7f12039b

    .line 191
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f08028e

    invoke-direct {v0, v2, v1}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$EmptyViewData;-><init>(ILjava/lang/CharSequence;)V

    return-object v0
.end method

.method public getExperimentRemoteConfigName()Ljava/lang/String;
    .locals 1

    const-string v0, "IMLogAdExperiments"

    return-object v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .line 255
    new-instance v0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment$CallAppPlusFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment$CallAppPlusFilter;-><init>(Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment$1;)V

    return-object v0
.end method

.method public getFragmentType()[I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 79
    sget-object v1, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->CONTACTS:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    invoke-virtual {v1}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    sget-object v1, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->IDENTIFIED_CONTACTS_DATA_CHANGED:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    .line 80
    invoke-virtual {v1}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    sget-object v1, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->REFRESH_SEARCH:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    .line 81
    invoke-virtual {v1}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    return-object v0
.end method

.method public getHintBuilder()Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHintType()Lcom/callapp/contacts/activity/base/BaseCallAppFragmentWithHint$HintType;
    .locals 1

    .line 185
    sget-object v0, Lcom/callapp/contacts/activity/base/BaseCallAppFragmentWithHint$HintType;->CALLAPP_PLUS:Lcom/callapp/contacts/activity/base/BaseCallAppFragmentWithHint$HintType;

    return-object v0
.end method

.method public getLayoutResId()I
    .locals 1

    const v0, 0x7f0d018b

    return v0
.end method

.method public synthetic getNewAdapter(Ljava/lang/Object;)Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;
    .locals 3

    .line 51
    check-cast p1, Ljava/util/List;

    .line 4148
    new-instance v0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusAdapter;

    iget-object v1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;->d:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;->getScrollEvents()Lcom/callapp/contacts/activity/base/ScrollEvents;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusAdapter;-><init>(Ljava/util/List;Ljava/util/Map;Lcom/callapp/contacts/activity/base/ScrollEvents;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    .line 4149
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;->getAdUnitIdsConfiguration()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;->getExperimentRemoteConfigName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/ListsUtils;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/util/ads/AdSettings;

    move-result-object p1

    .line 4150
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    invoke-static {v0, p1, v1}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Landroid/app/Activity;Lcom/callapp/contacts/util/ads/AdSettings;Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;)Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;

    move-result-object p1

    .line 4152
    new-instance v0, La/a/a/a/a/c;

    invoke-direct {v0, p1}, La/a/a/a/a/c;-><init>(La/a/a/a/a/b;)V

    .line 4153
    iget-object v1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView$h;I)V

    .line 4154
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusSpaceItemDecoration;

    invoke-direct {v1}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusSpaceItemDecoration;-><init>()V

    const/4 v2, -0x1

    .line 4665
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView$h;I)V

    return-object p1
.end method

.method public isPartOfViewPagerActivity()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 201
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseCallAppFragmentWithHint;->onAttach(Landroid/content/Context;)V

    .line 204
    :try_start_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/interfaces/CallAppPlusFilter;

    iput-object p1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;->a:Lcom/callapp/contacts/activity/interfaces/CallAppPlusFilter;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    .line 210
    :try_start_1
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/interfaces/FilterEvents;

    iput-object p1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;->b:Lcom/callapp/contacts/activity/interfaces/FilterEvents;

    .line 211
    invoke-interface {p1, p0}, Lcom/callapp/contacts/activity/interfaces/FilterEvents;->a(Lcom/callapp/contacts/activity/interfaces/CallAppFilter;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 213
    :catch_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Parent activity must implement FilterEvents"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 206
    :catch_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Activity must implement CallAppPlusFilter"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onDetach()V
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;->b:Lcom/callapp/contacts/activity/interfaces/FilterEvents;

    invoke-interface {v0, p0}, Lcom/callapp/contacts/activity/interfaces/FilterEvents;->b(Lcom/callapp/contacts/activity/interfaces/CallAppFilter;)V

    .line 227
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseCallAppFragmentWithHint;->onDetach()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 12

    .line 62
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/activity/base/BaseCallAppFragmentWithHint;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 63
    iget-object p2, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    const p2, 0x7f0a095e

    .line 2085
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/callapp/contacts/activity/callappplus/StickyPromotionCallAppPlus;

    iput-object p2, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;->f:Lcom/callapp/contacts/activity/callappplus/StickyPromotionCallAppPlus;

    .line 2086
    invoke-static {}, Lcom/callapp/contacts/util/ads/AdUtils;->a()Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    move-object p2, v1

    goto :goto_0

    :cond_0
    const-string p2, "stickyBannerCallAppPlusConfig"

    invoke-static {p2}, Lcom/callapp/contacts/activity/calllog/stickyBanner/JSONStickyDataObject;->getDataFromRemoteConfig(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 2087
    :goto_0
    iget-object v2, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;->f:Lcom/callapp/contacts/activity/callappplus/StickyPromotionCallAppPlus;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    .line 3055
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/callappplus/StickyPromotionCallAppPlus;->getLayout()I

    move-result v4

    invoke-virtual {v3, v4, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v3, 0x7f0a01b0

    .line 3056
    invoke-virtual {v2, v3}, Lcom/callapp/contacts/activity/callappplus/StickyPromotionCallAppPlus;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a01af

    .line 3057
    invoke-virtual {v2, v4}, Lcom/callapp/contacts/activity/callappplus/StickyPromotionCallAppPlus;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0a04d6

    .line 3058
    invoke-virtual {v2, v5}, Lcom/callapp/contacts/activity/callappplus/StickyPromotionCallAppPlus;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f0a01ae

    .line 3059
    invoke-virtual {v2, v6}, Lcom/callapp/contacts/activity/callappplus/StickyPromotionCallAppPlus;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const v7, 0x7f0a0222

    .line 3060
    invoke-virtual {v2, v7}, Lcom/callapp/contacts/activity/callappplus/StickyPromotionCallAppPlus;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const/4 v8, 0x0

    if-eqz p2, :cond_5

    .line 3092
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;

    .line 3093
    invoke-virtual {v9}, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->getNeedBilling()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->isBillingAvailable()Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v10, 0x1

    .line 3094
    :goto_2
    invoke-virtual {v9}, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->getOverWrite()Z

    move-result v11

    if-eqz v11, :cond_1

    if-eqz v10, :cond_1

    move-object v1, v9

    goto :goto_3

    .line 3098
    :cond_4
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v1, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;

    :cond_5
    :goto_3
    if-eqz v1, :cond_7

    .line 3063
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v9

    const-string v10, "In-app promotion"

    const-string v11, "CreateCallAppPlusStickyBanner"

    invoke-virtual {v9, v10, v11}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3064
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->getAction()Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyAction;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 3065
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    const v9, 0x7f0805d2

    const v10, 0x7f060244

    .line 3066
    invoke-static {v10}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v10

    invoke-static {v7, v9, v10}, Lcom/callapp/contacts/util/ViewUtils;->c(Landroid/view/View;II)V

    .line 3067
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->getAction()Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyAction;

    move-result-object v9

    invoke-virtual {v9}, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyAction;->getActionText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3068
    new-instance v7, Lcom/callapp/contacts/activity/callappplus/StickyPromotionCallAppPlus$1;

    invoke-direct {v7, v2, v1}, Lcom/callapp/contacts/activity/callappplus/StickyPromotionCallAppPlus$1;-><init>(Lcom/callapp/contacts/activity/callappplus/StickyPromotionCallAppPlus;Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;)V

    invoke-virtual {v2, v7}, Lcom/callapp/contacts/activity/callappplus/StickyPromotionCallAppPlus;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3082
    :cond_6
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3083
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->getSubTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x40800000    # 4.0f

    .line 3084
    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v3

    float-to-double v3, v3

    .line 3085
    new-instance v7, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->getBackground()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/callappplus/StickyPromotionCallAppPlus;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v7, v6, v9, v10}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;)V

    double-to-int v3, v3

    sget-object v4, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation$CornerType;->ALL:Lcom/callapp/contacts/util/glide/RoundedCornersTransformation$CornerType;

    invoke-virtual {v7, v3, v4}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a(ILcom/callapp/contacts/util/glide/RoundedCornersTransformation$CornerType;)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    .line 3086
    new-instance v3, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->getImg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/callappplus/StickyPromotionCallAppPlus;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v3, v5, v1, v2}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;)V

    .line 3376
    iput-boolean v0, v3, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->q:Z

    .line 3086
    invoke-virtual {v3}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    .line 4096
    :cond_7
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->ie:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_9

    .line 4099
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->fh:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->ie:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_4

    .line 4102
    :cond_8
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->cJ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_9

    .line 4106
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->aM:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    sget-object v3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v2, v3}, Lcom/callapp/contacts/util/date/DateUtils;->a(Ljava/util/Date;Ljava/util/Date;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    const-wide/16 v3, 0xa

    cmp-long v5, v1, v3

    if-gtz v5, :cond_9

    goto :goto_4

    :cond_9
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_a

    .line 2088
    invoke-static {p2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 2089
    iget-object p2, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;->f:Lcom/callapp/contacts/activity/callappplus/StickyPromotionCallAppPlus;

    invoke-virtual {p2, v8}, Lcom/callapp/contacts/activity/callappplus/StickyPromotionCallAppPlus;->setVisibility(I)V

    goto :goto_5

    .line 2091
    :cond_a
    iget-object p2, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;->f:Lcom/callapp/contacts/activity/callappplus/StickyPromotionCallAppPlus;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/activity/callappplus/StickyPromotionCallAppPlus;->setVisibility(I)V

    .line 66
    :goto_5
    sget-object p2, Lcom/callapp/contacts/manager/preferences/Prefs;->fh:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    const p2, 0x7f0a01c1

    .line 68
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;->e:Landroid/widget/FrameLayout;

    .line 69
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 70
    iget-object p1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;->e:Landroid/widget/FrameLayout;

    const p2, 0x7f060111

    invoke-static {p2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_6

    .line 72
    :cond_b
    iget-object p1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;->e:Landroid/widget/FrameLayout;

    const p2, 0x7f0600ab

    invoke-static {p2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 74
    :goto_6
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;->refreshData()V

    return-void
.end method

.method public refreshData()V
    .locals 2

    .line 113
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment$1;-><init>(Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public toggleEmptyViewIfNeeded()V
    .locals 2

    .line 140
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseCallAppFragmentWithHint;->toggleEmptyViewIfNeeded()V

    .line 141
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;->f:Lcom/callapp/contacts/activity/callappplus/StickyPromotionCallAppPlus;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;->isViewEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;->f:Lcom/callapp/contacts/activity/callappplus/StickyPromotionCallAppPlus;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/callappplus/StickyPromotionCallAppPlus;->setVisibility(I)V

    :cond_0
    return-void
.end method
