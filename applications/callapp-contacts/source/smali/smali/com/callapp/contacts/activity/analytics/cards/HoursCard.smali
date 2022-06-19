.class public Lcom/callapp/contacts/activity/analytics/cards/HoursCard;
.super Lcom/callapp/contacts/activity/analytics/cards/BaseHourdCard;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/analytics/cards/HoursCard$HoursCardCardHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/analytics/cards/BaseHourdCard<",
        "Lcom/callapp/contacts/activity/analytics/cards/HoursCard$HoursCardCardHolder;",
        "Lcom/callapp/contacts/activity/analytics/data/items/HoursCallDataItem;",
        ">;"
    }
.end annotation


# instance fields
.field private alreadyBounded:Z

.field private hoursVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

.field private mode:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

.field private shouldShowAnimation:Z


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V
    .locals 1

    const v0, 0x7f0d0053

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/analytics/cards/BaseHourdCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;I)V

    const/4 p1, 0x0

    .line 27
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/analytics/cards/HoursCard;->shouldShowAnimation:Z

    .line 28
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/analytics/cards/HoursCard;->alreadyBounded:Z

    return-void
.end method

.method static synthetic access$002(Lcom/callapp/contacts/activity/analytics/cards/HoursCard;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/analytics/cards/HoursCard;->shouldShowAnimation:Z

    return p1
.end method

.method static synthetic access$100(Lcom/callapp/contacts/activity/analytics/cards/HoursCard;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/analytics/cards/HoursCard;->alreadyBounded:Z

    return p0
.end method

.method static synthetic access$200(Lcom/callapp/contacts/activity/analytics/cards/HoursCard;)Lcom/mopub/mobileads/InlineVisibilityTracker;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/HoursCard;->hoursVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    return-object p0
.end method

.method static synthetic access$202(Lcom/callapp/contacts/activity/analytics/cards/HoursCard;Lcom/mopub/mobileads/InlineVisibilityTracker;)Lcom/mopub/mobileads/InlineVisibilityTracker;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/HoursCard;->hoursVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    return-object p1
.end method


# virtual methods
.method public getHeaderTitle()Ljava/lang/String;
    .locals 1

    const v0, 0x7f1201c0

    .line 38
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onAnalyticsRefreshCard(Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/HoursCard;->mode:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    .line 113
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/cards/HoursCard;->refreshCardData()V

    return-void
.end method

.method protected onBindViewHolder(Lcom/callapp/contacts/activity/analytics/cards/HoursCard$HoursCardCardHolder;)V
    .locals 3

    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/analytics/cards/HoursCard;->alreadyBounded:Z

    .line 80
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->cJ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 81
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/HoursCard$HoursCardCardHolder;->a(Lcom/callapp/contacts/activity/analytics/cards/HoursCard$HoursCardCardHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 82
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/HoursCard$HoursCardCardHolder;->b(Lcom/callapp/contacts/activity/analytics/cards/HoursCard$HoursCardCardHolder;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 83
    iget-boolean p1, p0, Lcom/callapp/contacts/activity/analytics/cards/HoursCard;->shouldShowAnimation:Z

    if-eqz p1, :cond_2

    .line 84
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/cards/HoursCard;->animateGraph()V

    return-void

    .line 87
    :cond_0
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/HoursCard$HoursCardCardHolder;->a(Lcom/callapp/contacts/activity/analytics/cards/HoursCard$HoursCardCardHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 88
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/HoursCard$HoursCardCardHolder;->b(Lcom/callapp/contacts/activity/analytics/cards/HoursCard$HoursCardCardHolder;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 89
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/HoursCard$HoursCardCardHolder;->a(Lcom/callapp/contacts/activity/analytics/cards/HoursCard$HoursCardCardHolder;)Landroid/widget/ImageView;

    move-result-object p1

    const v0, 0x7f080695

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 92
    :cond_1
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/HoursCard$HoursCardCardHolder;->a(Lcom/callapp/contacts/activity/analytics/cards/HoursCard$HoursCardCardHolder;)Landroid/widget/ImageView;

    move-result-object p1

    const v0, 0x7f080696

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Lcom/callapp/contacts/activity/analytics/cards/HoursCard$HoursCardCardHolder;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/HoursCard;->onBindViewHolder(Lcom/callapp/contacts/activity/analytics/cards/HoursCard$HoursCardCardHolder;)V

    return-void
.end method

.method public onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/analytics/cards/HoursCard$HoursCardCardHolder;
    .locals 7

    .line 49
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/HoursCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    const v1, 0x7f0a01a5

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->findFragment(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/HoursCard;->callDayNightTimeGraphFragment:Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;

    .line 50
    new-instance v0, Lcom/mopub/mobileads/InlineVisibilityTracker;

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/cards/HoursCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v2

    const/16 v5, 0x1f4

    const/16 v6, 0x1f4

    move-object v1, v0

    move-object v3, p1

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/mopub/mobileads/InlineVisibilityTracker;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;II)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/HoursCard;->hoursVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    .line 51
    new-instance v1, Lcom/callapp/contacts/activity/analytics/cards/HoursCard$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/analytics/cards/HoursCard$1;-><init>(Lcom/callapp/contacts/activity/analytics/cards/HoursCard;)V

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/InlineVisibilityTracker;->setInlineVisibilityTrackerListener(Lcom/mopub/mobileads/InlineVisibilityTracker$InlineVisibilityTrackerListener;)V

    .line 65
    new-instance v0, Lcom/callapp/contacts/activity/analytics/cards/HoursCard$HoursCardCardHolder;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/HoursCard$HoursCardCardHolder;-><init>(Lcom/callapp/contacts/activity/analytics/cards/HoursCard;Landroid/view/View;)V

    return-object v0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;)Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/HoursCard;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/analytics/cards/HoursCard$HoursCardCardHolder;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 70
    invoke-super {p0}, Lcom/callapp/contacts/activity/analytics/cards/BaseHourdCard;->onDestroy()V

    .line 71
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/HoursCard;->hoursVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0}, Lcom/mopub/mobileads/InlineVisibilityTracker;->destroy()V

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/HoursCard;->hoursVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    :cond_0
    return-void
.end method

.method public refreshCardData()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/HoursCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/cards/HoursCard;->mode:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    if-ne v0, v1, :cond_0

    .line 119
    sget-object v0, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;->CURRENT:Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager;->c(Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;)Lcom/callapp/contacts/activity/analytics/data/items/HoursCallDataItem;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/HoursCard;->dataCurrent:Lcom/callapp/contacts/activity/analytics/data/items/HoursCallDataItem;

    .line 120
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/HoursCard;->dataCurrent:Lcom/callapp/contacts/activity/analytics/data/items/HoursCallDataItem;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/callapp/contacts/activity/analytics/cards/HoursCard;->updateCardData(Lcom/callapp/contacts/activity/analytics/data/items/HoursCallDataItem;Z)V

    :cond_0
    return-void
.end method

.method public showShouldExpandButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected updateCardData(Lcom/callapp/contacts/activity/analytics/data/items/HoursCallDataItem;Z)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/HoursCard;->dataCurrent:Lcom/callapp/contacts/activity/analytics/data/items/HoursCallDataItem;

    const/4 p1, 0x1

    .line 103
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/HoursCard;->showCard(Z)V

    return-void
.end method

.method public bridge synthetic updateCardData(Ljava/lang/Object;Z)V
    .locals 0

    .line 24
    check-cast p1, Lcom/callapp/contacts/activity/analytics/data/items/HoursCallDataItem;

    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/activity/analytics/cards/HoursCard;->updateCardData(Lcom/callapp/contacts/activity/analytics/data/items/HoursCallDataItem;Z)V

    return-void
.end method
