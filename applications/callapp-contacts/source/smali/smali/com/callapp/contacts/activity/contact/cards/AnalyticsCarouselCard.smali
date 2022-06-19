.class public Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;
.super Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/contact/cards/CarrouselCard<",
        "Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;",
        ">;"
    }
.end annotation


# instance fields
.field private carrouselFrame:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private data:Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;

.field private viewHolder:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;Ljava/lang/String;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;)Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;->viewHolder:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;

    return-object p0
.end method

.method static synthetic access$100(Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$300(Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;Z)V
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;->showCard(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;)V
    .locals 0

    .line 36
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;->hideCard()V

    return-void
.end method


# virtual methods
.method public getCardBgColor()I
    .locals 2

    .line 169
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;->isInExpandMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const v1, 0x7f060026

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    return v0

    .line 172
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const v1, 0x7f060084

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public getData()Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;->data:Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;

    return-object v0
.end method

.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;->getData()Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderBackgroundColor()I
    .locals 2

    .line 161
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;->isInExpandMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const v1, 0x7f060026

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    return v0

    .line 164
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const v1, 0x7f060084

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public getListenFields()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation

    .line 67
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->excludeAnalytics:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->newContact:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method handleFooter()V
    .locals 5

    .line 81
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;->viewHolder:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;

    if-eqz v0, :cond_3

    .line 82
    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;->e:Landroid/view/View;

    const v1, 0x7f0600f3

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 83
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;->isInExpandMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;->viewHolder:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;->c:Landroid/widget/LinearLayout;

    const v1, 0x7f060026

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;->viewHolder:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;->c:Landroid/widget/LinearLayout;

    const v1, 0x7f060084

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 88
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;->viewHolder:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;->d:Landroid/widget/TextView;

    const v1, 0x7f120647

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 90
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;->viewHolder:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;->d:Landroid/widget/TextView;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    const v2, 0x7f080099

    invoke-static {v1, v2}, Landroidx/core/content/b;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;->viewHolder:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;->d:Landroid/widget/TextView;

    const v1, 0x7f08009a

    const v2, 0x7f060088

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    const/4 v4, 0x0

    invoke-static {v0, v1, v3, v2, v4}, Lcom/callapp/contacts/util/ViewUtils;->b(Landroid/view/View;IIII)V

    .line 93
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;->viewHolder:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;->c:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard$2;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard$2;-><init>(Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;->carrouselFrame:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Landroidx/transition/Fade;

    invoke-direct {v1}, Landroidx/transition/Fade;-><init>()V

    invoke-static {v0, v1}, Landroidx/transition/u;->a(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    .line 107
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;->isInExpandMode()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v4, 0x8

    .line 108
    :goto_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;->viewHolder:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 109
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;->showAdIfNeeded()V

    :cond_3
    return-void
.end method

.method public onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    .line 124
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V

    .line 126
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->isIncognito()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/CallLogUtils;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsExcludeManager;->a(Lcom/callapp/framework/phone/Phone;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 127
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;->data:Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->newContact:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->excludeAnalytics:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;->cardRecyclerView:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    new-instance v1, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard$3;

    invoke-direct {v1, p0, p2}, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard$3;-><init>(Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;Ljava/util/Set;)V

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    .line 141
    :cond_1
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager;->a(Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;->data:Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;

    .line 142
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getEventBus()Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object p1

    sget-object p2, Lcom/callapp/contacts/activity/analytics/data/UpdateAnalyticsCardEvent;->a:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v0, Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;->CONTACT_DETAILS_SCREEN:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    const/4 v1, 0x0

    .line 2091
    invoke-virtual {p1, p2, v0, v1}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    return-void

    .line 146
    :cond_2
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    new-instance p2, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard$4;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard$4;-><init>(Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;)V

    invoke-interface {p1, p2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method protected onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Lcom/callapp/contacts/activity/contact/cards/CarrouselCard<",
            "Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;",
            ">.CarousleCardViewHolder;"
        }
    .end annotation

    .line 72
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hx:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;->setIsInExpandMode(Z)V

    .line 73
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;->viewHolder:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;

    .line 74
    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;->carrouselFrame:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 75
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;->handleFooter()V

    .line 76
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;->viewHolder:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;

    return-object p1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;)Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;

    move-result-object p1

    return-object p1
.end method

.method protected performOnExpandButtonClick(Z)V
    .locals 3

    .line 48
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hx:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 49
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string p1, "ClickExpandInsightsContactCard"

    goto :goto_0

    :cond_0
    const-string p1, "ClickCollapseInsightsContactCard"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "priority: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;->getPriority()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Insights"

    invoke-virtual {v0, v2, p1, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->hh:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->hh:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x5

    if-ge p1, v0, :cond_1

    .line 52
    new-instance p1, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard$1;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard$1;-><init>(Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;)V

    const/16 v0, 0x4b0

    .line 57
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard$1;->schedule(I)Lcom/callapp/contacts/manager/task/Task;

    .line 59
    :cond_1
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->hh:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    const/4 v0, 0x1

    .line 1039
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->b(I)Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    .line 60
    iget-boolean p1, p0, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;->userInteraction:Z

    if-eqz p1, :cond_2

    .line 61
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getEventBus()Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object p1

    sget-object v0, Lcom/callapp/contacts/activity/contact/cards/ScrollWhenCDAnalyticsExpand;->a:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;->isInExpandMode()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/event/bus/EventBus;->c(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method showAdIfNeeded()V
    .locals 4

    .line 116
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;->isInExpandMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;->data:Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->isShowData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Insights"

    const-string v2, "ViewInsightsContactCardWithData"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getEventBus()Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/contact/cards/ShowAdWhenAnalyticsExtand;->a:Lcom/callapp/contacts/event/bus/EventType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1091
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    :cond_0
    return-void
.end method
