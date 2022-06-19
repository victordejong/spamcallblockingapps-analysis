.class public Lcom/callapp/contacts/activity/callappplus/CallAppPlusStarredFragment;
.super Lcom/callapp/contacts/activity/base/BaseCallAppFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/base/BaseCallAppFragment<",
        "Ljava/util/List<",
        "Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;-><init>()V

    return-void
.end method

.method private synthetic a()V
    .locals 3

    .line 78
    invoke-static {}, Lcom/callapp/contacts/manager/contacts/ContactPlusUtils;->getFavoriteContactPlusItems()Ljava/util/List;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusStarredFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusStarredFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;->c()V

    .line 84
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/activity/callappplus/-$$Lambda$CallAppPlusStarredFragment$Hh-UBK-xixmkCMu1JcUdOZ4uMzo;

    invoke-direct {v2, p0, v0}, Lcom/callapp/contacts/activity/callappplus/-$$Lambda$CallAppPlusStarredFragment$Hh-UBK-xixmkCMu1JcUdOZ4uMzo;-><init>(Lcom/callapp/contacts/activity/callappplus/CallAppPlusStarredFragment;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic a(Ljava/util/List;)V
    .locals 0

    .line 85
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusStarredFragment;->setData(Ljava/lang/Object;)V

    .line 86
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusStarredFragment;->toggleEmptyViewIfNeeded()V

    return-void
.end method

.method public static synthetic lambda$DA9OLXuPhV06M5qJPrqbnBaLdK8(Lcom/callapp/contacts/activity/callappplus/CallAppPlusStarredFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusStarredFragment;->a()V

    return-void
.end method

.method public static synthetic lambda$Hh-UBK-xixmkCMu1JcUdOZ4uMzo(Lcom/callapp/contacts/activity/callappplus/CallAppPlusStarredFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusStarredFragment;->a(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getDataChangeOrigin()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public getEmptyViewData()Lcom/callapp/contacts/activity/base/BaseCallAppFragment$EmptyViewData;
    .locals 3

    .line 53
    new-instance v0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$EmptyViewData;

    const v1, 0x7f120397

    .line 54
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f08028e

    invoke-direct {v0, v2, v1}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$EmptyViewData;-><init>(ILjava/lang/CharSequence;)V

    return-object v0
.end method

.method public getFragmentType()[I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 64
    sget-object v1, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->IDENTIFIED_CONTACTS_DATA_CHANGED:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    invoke-virtual {v1}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    sget-object v1, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->CONTACTS:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    .line 65
    invoke-virtual {v1}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    sget-object v1, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->REFRESH_SEARCH:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    invoke-virtual {v1}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    return-object v0
.end method

.method public getLayoutResId()I
    .locals 1

    const v0, 0x7f0d018b

    return v0
.end method

.method public synthetic getNewAdapter(Ljava/lang/Object;)Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;
    .locals 2

    .line 26
    check-cast p1, Ljava/util/List;

    .line 2045
    new-instance v0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusStarredAdapter;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusStarredFragment;->getScrollEvents()Lcom/callapp/contacts/activity/base/ScrollEvents;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusStarredAdapter;-><init>(Ljava/util/List;Lcom/callapp/contacts/activity/base/ScrollEvents;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusStarredFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    .line 2046
    iget-object p1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusStarredFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusSpaceItemDecoration;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusSpaceItemDecoration;-><init>()V

    const/4 v1, -0x1

    .line 2665
    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView$h;I)V

    .line 2047
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusStarredFragment;->getAdUnitIdsConfiguration()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusStarredFragment;->getExperimentRemoteConfigName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/ListsUtils;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/util/ads/AdSettings;

    move-result-object p1

    .line 2048
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusStarredFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusStarredFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

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
    .locals 1

    .line 31
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusStarredFragment;->hideLoadingProgress()V

    .line 33
    iget-object p2, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusStarredFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    const p2, 0x7f0a01c1

    .line 34
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusStarredFragment;->a:Landroid/widget/FrameLayout;

    .line 35
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 36
    iget-object p1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusStarredFragment;->a:Landroid/widget/FrameLayout;

    const p2, 0x7f060111

    invoke-static {p2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 38
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusStarredFragment;->a:Landroid/widget/FrameLayout;

    const p2, 0x7f0600ab

    invoke-static {p2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 40
    :goto_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusStarredFragment;->refreshData()V

    return-void
.end method

.method public refreshData()V
    .locals 2

    .line 75
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusStarredFragment;->isDataLoaded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusStarredFragment;->isDataLoaded:Z

    .line 77
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/callappplus/-$$Lambda$CallAppPlusStarredFragment$DA9OLXuPhV06M5qJPrqbnBaLdK8;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/callappplus/-$$Lambda$CallAppPlusStarredFragment$DA9OLXuPhV06M5qJPrqbnBaLdK8;-><init>(Lcom/callapp/contacts/activity/callappplus/CallAppPlusStarredFragment;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
