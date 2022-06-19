.class public Lcom/callapp/contacts/activity/contact/cards/PostCallFirstTime;
.super Lcom/callapp/contacts/activity/analytics/cards/base/AnalyticsWrapperCard;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/contact/cards/ShowToolTipOnPostCard;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/contact/cards/PostCallFirstTime$PostCallFirstTimeHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/analytics/cards/base/AnalyticsWrapperCard<",
        "Lcom/callapp/contacts/activity/contact/cards/PostCallFirstTime$PostCallFirstTimeHolder;",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/callapp/contacts/activity/contact/cards/ShowToolTipOnPostCard;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V
    .locals 1

    const v0, 0x7f0d0107

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/analytics/cards/base/AnalyticsWrapperCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;I)V

    .line 28
    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getEventBus()Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object p1

    sget-object v0, Lcom/callapp/contacts/activity/contact/cards/ShowToolTipOnPostCard;->a:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {p1, v0, p0}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/callapp/contacts/activity/contact/cards/PostCallFirstTime;Z)V
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/PostCallFirstTime;->showCard(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/callapp/contacts/activity/contact/cards/PostCallFirstTime;)V
    .locals 0

    .line 23
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/PostCallFirstTime;->hideCard()V

    return-void
.end method


# virtual methods
.method public getCardBgColor()I
    .locals 2

    .line 32
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const v1, 0x7f0601f1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getListenFields()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation

    .line 50
    sget-object v0, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->NONE:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    const/16 v0, 0xe

    return v0
.end method

.method public onAnalyticsRefreshCard(Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;)V
    .locals 0

    return-void
.end method

.method protected onBindViewHolder(Lcom/callapp/contacts/activity/contact/cards/PostCallFirstTime$PostCallFirstTimeHolder;)V
    .locals 2

    .line 70
    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/PostCallFirstTime$PostCallFirstTimeHolder;->a(Lcom/callapp/contacts/activity/contact/cards/PostCallFirstTime$PostCallFirstTimeHolder;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0601cc

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 71
    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/PostCallFirstTime$PostCallFirstTimeHolder;->b(Lcom/callapp/contacts/activity/contact/cards/PostCallFirstTime$PostCallFirstTimeHolder;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0601ec

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/PostCallFirstTime$PostCallFirstTimeHolder;->a(Lcom/callapp/contacts/activity/contact/cards/PostCallFirstTime$PostCallFirstTimeHolder;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f12033e

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/PostCallFirstTime$PostCallFirstTimeHolder;->b(Lcom/callapp/contacts/activity/contact/cards/PostCallFirstTime$PostCallFirstTimeHolder;)Landroid/widget/TextView;

    move-result-object p1

    const v0, 0x7f12033f

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p1, Lcom/callapp/contacts/activity/contact/cards/PostCallFirstTime$PostCallFirstTimeHolder;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/PostCallFirstTime;->onBindViewHolder(Lcom/callapp/contacts/activity/contact/cards/PostCallFirstTime$PostCallFirstTimeHolder;)V

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

.method protected onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/contact/cards/PostCallFirstTime$PostCallFirstTimeHolder;
    .locals 1

    .line 65
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/PostCallFirstTime$PostCallFirstTimeHolder;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/contact/cards/PostCallFirstTime$PostCallFirstTimeHolder;-><init>(Lcom/callapp/contacts/activity/contact/cards/PostCallFirstTime;Landroid/view/View;)V

    return-object v0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/PostCallFirstTime;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/contact/cards/PostCallFirstTime$PostCallFirstTimeHolder;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 37
    invoke-super {p0}, Lcom/callapp/contacts/activity/analytics/cards/base/AnalyticsWrapperCard;->onDestroy()V

    .line 38
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/PostCallFirstTime;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getEventBus()Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/contact/cards/ShowToolTipOnPostCard;->a:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {v0, v1, p0}, Lcom/callapp/contacts/event/bus/EventBus;->b(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    return-void
.end method

.method public onPostCallNeedToShowToolTip(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 94
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/PostCallFirstTime;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/PostCallFirstTime$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/cards/PostCallFirstTime$1;-><init>(Lcom/callapp/contacts/activity/contact/cards/PostCallFirstTime;)V

    invoke-interface {p1, v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/PostCallFirstTime;->hideCard()V

    return-void
.end method

.method public showShouldExpandButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public updateCardData(Ljava/lang/Object;Z)V
    .locals 0

    return-void
.end method
