.class public abstract Lcom/callapp/contacts/activity/base/BaseCallAppFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/interfaces/DataFragmentsEvents;
.implements Lcom/callapp/contacts/activity/interfaces/FragmentDataType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/base/BaseCallAppFragment$EmptyViewData;,
        Lcom/callapp/contacts/activity/base/BaseCallAppFragment$OnScrollListener;,
        Lcom/callapp/contacts/activity/base/BaseCallAppFragment$StoreItemAssetManagerProvider;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/fragment/app/Fragment;",
        "Lcom/callapp/contacts/activity/interfaces/DataFragmentsEvents;",
        "Lcom/callapp/contacts/activity/interfaces/FragmentDataType;"
    }
.end annotation


# static fields
.field public static final DEFAULT_TIME_USER_IS_NEW:J = 0x3L


# instance fields
.field public data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private dataChangedInfoSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/DataChangedInfo;",
            ">;"
        }
    .end annotation
.end field

.field private emptyViewContainer:Landroid/view/ViewGroup;

.field private invalidateDataListener:Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;

.field private invalidateDataSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;",
            ">;"
        }
    .end annotation
.end field

.field protected isDataLoaded:Z

.field protected loadingProgressBar:Landroid/widget/ProgressBar;

.field private notifyDataChangedListener:Lcom/callapp/contacts/activity/interfaces/NotifyDataChangedListener;

.field private final observer:Landroidx/recyclerview/widget/RecyclerView$c;

.field private onScrollListenerFactory:Lcom/callapp/contacts/activity/base/BaseCallAppFragment$OnScrollListener;

.field public originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

.field public recyclerAdapter:Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;

.field public recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final scrollStateTracker:Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;

.field protected storeItemAssetManager:Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;

.field public viewPagerManager:Lcom/callapp/contacts/activity/contact/list/ViewPagerManager;

.field private wasViewed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 60
    new-instance v0, Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->scrollStateTracker:Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;

    .line 66
    new-instance v0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$1;-><init>(Lcom/callapp/contacts/activity/base/BaseCallAppFragment;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->observer:Landroidx/recyclerview/widget/RecyclerView$c;

    .line 81
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->invalidateDataSet:Ljava/util/Set;

    .line 82
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->dataChangedInfoSet:Ljava/util/Set;

    const/4 v0, 0x0

    .line 100
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->wasViewed:Z

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/activity/base/BaseCallAppFragment;)Ljava/util/Set;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->dataChangedInfoSet:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$100(Lcom/callapp/contacts/activity/base/BaseCallAppFragment;)Ljava/util/Set;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->invalidateDataSet:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$200(Lcom/callapp/contacts/activity/base/BaseCallAppFragment;)Landroidx/recyclerview/widget/RecyclerView$c;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->observer:Landroidx/recyclerview/widget/RecyclerView$c;

    return-object p0
.end method

.method static synthetic access$300(Lcom/callapp/contacts/activity/base/BaseCallAppFragment;Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;)Landroidx/recyclerview/widget/RecyclerView$h;
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->getItemDecoration(Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;)Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object p0

    return-object p0
.end method

.method private destroyAdAdapter()V
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->recyclerAdapter:Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    iget-object v1, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->observer:Landroidx/recyclerview/widget/RecyclerView$c;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$c;)V

    .line 240
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->recyclerAdapter:Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;->destroy()V

    const/4 v0, 0x0

    .line 241
    iput-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->recyclerAdapter:Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;

    .line 242
    iput-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    :cond_0
    return-void
.end method

.method private getItemDecoration(Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;)Landroidx/recyclerview/widget/RecyclerView$h;
    .locals 2

    .line 353
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->isSpacingDecorationNeeded()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 354
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;->isOriginalStickyHeader()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 357
    :cond_0
    new-instance v1, Lcom/callapp/contacts/activity/decoration/DefaultMarginItemSpacingDecoration;

    invoke-direct {v1}, Lcom/callapp/contacts/activity/decoration/DefaultMarginItemSpacingDecoration;-><init>()V

    :cond_1
    :goto_0
    return-object v1
.end method


# virtual methods
.method protected getAdUnitIdsConfiguration()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getDataChangeOrigin()I
.end method

.method protected abstract getEmptyViewData()Lcom/callapp/contacts/activity/base/BaseCallAppFragment$EmptyViewData;
.end method

.method protected getExperimentRemoteConfigName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getItemDecoration()Landroidx/recyclerview/widget/RecyclerView$h;
    .locals 1

    .line 312
    new-instance v0, Lcom/callapp/contacts/activity/decoration/FabSpaceItemDecoration;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/decoration/FabSpaceItemDecoration;-><init>()V

    return-object v0
.end method

.method protected getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;
    .locals 2

    .line 316
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected getLayoutResId()I
    .locals 1

    const v0, 0x7f0d0108

    return v0
.end method

.method protected abstract getNewAdapter(Ljava/lang/Object;)Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;"
        }
    .end annotation
.end method

.method public getRecyclerView(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    const v0, 0x7f0a073e

    .line 277
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    return-object p1
.end method

.method public getScrollEvents()Lcom/callapp/contacts/activity/base/ScrollEvents;
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->scrollStateTracker:Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;

    return-object v0
.end method

.method public hideLoadingProgress()V
    .locals 2

    .line 449
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$9;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$9;-><init>(Lcom/callapp/contacts/activity/base/BaseCallAppFragment;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected initEmptyView()V
    .locals 4

    .line 394
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->getEmptyViewData()Lcom/callapp/contacts/activity/base/BaseCallAppFragment$EmptyViewData;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 396
    iget-object v1, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->emptyViewContainer:Landroid/view/ViewGroup;

    const v2, 0x7f0a06e4

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 397
    invoke-static {v0}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$EmptyViewData;->a(Lcom/callapp/contacts/activity/base/BaseCallAppFragment$EmptyViewData;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x8

    if-eqz v2, :cond_0

    .line 398
    invoke-static {v0}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$EmptyViewData;->a(Lcom/callapp/contacts/activity/base/BaseCallAppFragment$EmptyViewData;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f060088

    .line 399
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 401
    :cond_0
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 403
    :goto_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->emptyViewContainer:Landroid/view/ViewGroup;

    const v2, 0x7f0a07d1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 404
    invoke-static {v0}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$EmptyViewData;->b(Lcom/callapp/contacts/activity/base/BaseCallAppFragment$EmptyViewData;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 405
    invoke-static {v0}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$EmptyViewData;->b(Lcom/callapp/contacts/activity/base/BaseCallAppFragment$EmptyViewData;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0601cc

    .line 406
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 408
    :cond_1
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 410
    :goto_1
    iget-object v1, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->emptyViewContainer:Landroid/view/ViewGroup;

    const v2, 0x7f0a038c

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 411
    invoke-static {v0}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$EmptyViewData;->c(Lcom/callapp/contacts/activity/base/BaseCallAppFragment$EmptyViewData;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    return-void
.end method

.method public invalidateDataEvent(Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;)V
    .locals 0

    const/4 p1, 0x0

    .line 146
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->isDataLoaded:Z

    .line 147
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->refreshData()V

    .line 148
    iget-object p1, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->invalidateDataSet:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    return-void
.end method

.method protected isCurrentType(I)Z
    .locals 5

    .line 193
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->getFragmentType()[I

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 194
    array-length v2, v0

    if-lez v2, :cond_1

    .line 195
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v0, v3

    if-ne v4, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method protected isPartOfViewPagerActivity()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isSpacingDecorationNeeded()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isViewEmpty()Z
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->recyclerAdapter:Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public markAsViewed()V
    .locals 1

    const/4 v0, 0x1

    .line 418
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->wasViewed:Z

    return-void
.end method

.method public notifyItemChangedEvent(Lcom/callapp/contacts/model/DataChangedInfo;)Z
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->recyclerAdapter:Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;->isDataReady()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 158
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/model/DataChangedInfo;->getDataType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->isCurrentType(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 161
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->getDataChangeOrigin()I

    move-result v0

    invoke-virtual {p1}, Lcom/callapp/contacts/model/DataChangedInfo;->getOrigin()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 163
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$4;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$4;-><init>(Lcom/callapp/contacts/activity/base/BaseCallAppFragment;Lcom/callapp/contacts/model/DataChangedInfo;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 175
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$5;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$5;-><init>(Lcom/callapp/contacts/activity/base/BaseCallAppFragment;)V

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/CallAppApplication;->b(Ljava/lang/Runnable;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_1
    return v1
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 207
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 209
    :try_start_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->isPartOfViewPagerActivity()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 211
    move-object v0, p1

    check-cast v0, Lcom/callapp/contacts/activity/contact/list/ViewPagerManager;

    iput-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->viewPagerManager:Lcom/callapp/contacts/activity/contact/list/ViewPagerManager;

    .line 212
    check-cast p1, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$OnScrollListener;

    iput-object p1, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->onScrollListenerFactory:Lcom/callapp/contacts/activity/base/BaseCallAppFragment$OnScrollListener;

    .line 215
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$StoreItemAssetManagerProvider;

    if-eqz p1, :cond_1

    .line 216
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$StoreItemAssetManagerProvider;

    invoke-interface {p1}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$StoreItemAssetManagerProvider;->getStoreItemAssetManager()Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->storeItemAssetManager:Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    .line 219
    :catch_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Parent activity must implement ViewPagerManager and OnScrollListener"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 103
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 104
    new-instance p1, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$2;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$2;-><init>(Lcom/callapp/contacts/activity/base/BaseCallAppFragment;)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->notifyDataChangedListener:Lcom/callapp/contacts/activity/interfaces/NotifyDataChangedListener;

    .line 115
    new-instance p1, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$3;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$3;-><init>(Lcom/callapp/contacts/activity/base/BaseCallAppFragment;)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->invalidateDataListener:Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;

    .line 128
    sget-object p1, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v0, Lcom/callapp/contacts/activity/interfaces/NotifyDataChangedListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    iget-object v1, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->notifyDataChangedListener:Lcom/callapp/contacts/activity/interfaces/NotifyDataChangedListener;

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 129
    sget-object p1, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v0, Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    iget-object v1, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->invalidateDataListener:Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 283
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->getLayoutResId()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 285
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->getRecyclerView(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    iput-object p2, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 286
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 287
    iget-object p2, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const p3, 0x7f0601f1

    invoke-static {p3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setBackgroundColor(I)V

    .line 288
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->getItemDecoration()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 290
    iget-object p3, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, -0x1

    .line 2665
    invoke-virtual {p3, p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView$h;I)V

    .line 292
    :cond_0
    iget-object p2, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    instance-of p3, p2, Lcom/callapp/contacts/activity/fastscroll/FastScrollRecyclerView;

    if-eqz p3, :cond_1

    .line 293
    check-cast p2, Lcom/callapp/contacts/activity/fastscroll/FastScrollRecyclerView;

    const p3, 0x7f060088

    invoke-static {p3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/callapp/contacts/activity/fastscroll/FastScrollRecyclerView;->setBubbleColor(I)V

    .line 294
    iget-object p2, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    check-cast p2, Lcom/callapp/contacts/activity/fastscroll/FastScrollRecyclerView;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->shouldEnableFastScroll()Z

    move-result p3

    invoke-virtual {p2, p3}, Lcom/callapp/contacts/activity/fastscroll/FastScrollRecyclerView;->setFastScrollEnabled(Z)V

    .line 296
    :cond_1
    iget-object p2, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$f;)V

    .line 297
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->isPartOfViewPagerActivity()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 298
    iget-object p2, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/BottomBarScrollListener;

    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->onScrollListenerFactory:Lcom/callapp/contacts/activity/base/BaseCallAppFragment$OnScrollListener;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$OnScrollListener;->getBottomBarScrollListener()Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/BottomBarScrollListener$Listener;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/BottomBarScrollListener;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/BottomBarScrollListener$Listener;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 299
    iget-object p2, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->onScrollListenerFactory:Lcom/callapp/contacts/activity/base/BaseCallAppFragment$OnScrollListener;

    invoke-interface {p2}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$OnScrollListener;->getSuperSkinWizardScrollListener()Lcom/callapp/contacts/activity/interfaces/SuperSkinWizardScrollListener;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 300
    iget-object p2, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->onScrollListenerFactory:Lcom/callapp/contacts/activity/base/BaseCallAppFragment$OnScrollListener;

    invoke-interface {p3}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$OnScrollListener;->getSuperSkinWizardScrollListener()Lcom/callapp/contacts/activity/interfaces/SuperSkinWizardScrollListener;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 304
    :cond_2
    iget-object p2, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->scrollStateTracker:Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;

    iget-object p3, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p3}, Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    const p2, 0x7f0a0380

    .line 305
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->emptyViewContainer:Landroid/view/ViewGroup;

    const p2, 0x7f0a0597

    .line 306
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->loadingProgressBar:Landroid/widget/ProgressBar;

    return-object p1
.end method

.method public onDestroy()V
    .locals 3

    .line 225
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/NotifyDataChangedListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    iget-object v2, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->notifyDataChangedListener:Lcom/callapp/contacts/activity/interfaces/NotifyDataChangedListener;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/event/bus/EventBus;->b(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 226
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    iget-object v2, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->invalidateDataListener:Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/event/bus/EventBus;->b(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 228
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->destroyAdAdapter()V

    .line 230
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .line 389
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->destroyAdAdapter()V

    .line 390
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 248
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 251
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->invalidateDataSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    .line 252
    invoke-virtual {v1}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->ordinal()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->isCurrentType(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 253
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->invalidateDataEvent(Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 260
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->dataChangedInfoSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/model/DataChangedInfo;

    .line 261
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->notifyItemChangedEvent(Lcom/callapp/contacts/model/DataChangedInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 267
    :cond_3
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->invalidateDataSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 268
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->dataChangedInfoSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 138
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0a0380

    .line 139
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->emptyViewContainer:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->initEmptyView()V

    :cond_0
    return-void
.end method

.method public scrollToTop()V
    .locals 2

    .line 423
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 424
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->b(I)V

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->recyclerAdapter:Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->wasViewed:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v0

    const-string v1, "RefreshAdsOnChangingTabs"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 428
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$7;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$7;-><init>(Lcom/callapp/contacts/activity/base/BaseCallAppFragment;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->b(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 328
    iput-object p1, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->data:Ljava/lang/Object;

    .line 329
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->recyclerAdapter:Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;

    if-nez v0, :cond_0

    .line 330
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$6;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$6;-><init>(Lcom/callapp/contacts/activity/base/BaseCallAppFragment;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;->setData(Ljava/lang/Object;)V

    return-void
.end method

.method protected shouldEnableFastScroll()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected shouldInvalidateFromEvent(Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;)Z
    .locals 1

    .line 133
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->SUPER_SKIN_CHANGED:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected shouldRefreshData()Z
    .locals 1

    .line 273
    invoke-static {}, Lcom/callapp/contacts/manager/permission/PermissionManager;->get()Lcom/callapp/contacts/manager/permission/PermissionManager;

    invoke-static {}, Lcom/callapp/contacts/manager/permission/PermissionManager;->a()Z

    move-result v0

    return v0
.end method

.method protected showLoadingProgress()V
    .locals 2

    .line 440
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$8;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$8;-><init>(Lcom/callapp/contacts/activity/base/BaseCallAppFragment;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public toggleEmptyViewIfNeeded()V
    .locals 5

    .line 377
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->recyclerAdapter:Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;

    if-eqz v0, :cond_2

    .line 378
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->isViewEmpty()Z

    move-result v0

    .line 379
    iget-object v1, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v0, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/16 v4, 0x8

    :goto_0
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 381
    iget-object v1, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->emptyViewContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    const/16 v2, 0x8

    .line 382
    :cond_1
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_2
    return-void
.end method
