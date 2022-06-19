.class public Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter;
.super Lcom/callapp/contacts/activity/contact/details/presenter/simple/TextViewPresenter;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/interfaces/OnIncognitoCallStartedListener;
.implements Lcom/callapp/contacts/event/listener/DestroyListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TextViewPresenter;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter;->trackEvent()V

    return-void
.end method

.method static synthetic access$100(Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 29
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter;->getPresentersContainer()Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 29
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter;->getPresentersContainer()Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 29
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter;->getPresentersContainer()Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p0

    return-object p0
.end method

.method private trackEvent()V
    .locals 3

    .line 67
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter$3;->a:[I

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-string v2, "CallAppPlus"

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "ClickOverlaySMS"

    invoke-virtual {v0, v2, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 69
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "ClickOverlayCopyNumber"

    invoke-virtual {v0, v2, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getTextViewId()I
    .locals 1

    const v0, 0x7f0a0614

    return v0
.end method

.method public onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 80
    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v3, v2, v0

    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->phone:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v3, v2, v1

    const/4 v3, 0x2

    sget-object v4, Lcom/callapp/contacts/model/contact/ContactField;->isIncognito:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v4, v2, v3

    invoke-static {p2, v2}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 82
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v2, p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->a(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/framework/phone/Phone;->b()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->isVoiceMail()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f120819

    .line 85
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 86
    :cond_1
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    move-result-object v2

    sget-object v3, Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;->CALL_RECORDER_POPUP:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    const v4, 0x7f120198

    if-ne v2, v3, :cond_2

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getNameOrNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "private"

    invoke-static {v2, v3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 88
    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 89
    :cond_2
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 90
    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 92
    :cond_3
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getNameOrNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 95
    :goto_0
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter;->setText(Ljava/lang/String;)V

    :cond_4
    new-array v1, v1, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 98
    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->spamScore:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v2, v1, v0

    invoke-static {p2, v1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 99
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter;->getTextView()Landroid/widget/TextView;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 100
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {p2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    move-result-object p2

    sget-object v0, Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;->CONTACT_DETAILS_SCREEN:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    if-eq p2, v0, :cond_5

    .line 102
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    new-instance v0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter$2;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter$2;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-interface {p2, v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_5
    return-void
.end method

.method public onCreate(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V
    .locals 2

    .line 37
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TextViewPresenter;->onCreate(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    .line 38
    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getNameOrNumber()Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter;->setText(Ljava/lang/String;)V

    .line 46
    :cond_0
    sget-object v0, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->NAME_PRESENTER:Ljava/util/EnumSet;

    invoke-interface {p1, p0, v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->addContactChangedListener(Lcom/callapp/contacts/model/contact/ContactDataChangeListener;Ljava/util/Set;)V

    .line 47
    invoke-interface {p1, p0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->addDestroyListener(Lcom/callapp/contacts/event/listener/DestroyListener;)V

    .line 48
    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getEventBus()Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 49
    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getEventBus()Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/OnIncognitoCallStartedListener;->a:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {v0, v1, p0}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 51
    :cond_1
    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;->CONTACT_DETAILS_SCREEN:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    if-eq v0, v1, :cond_2

    .line 52
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter$1;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter$1;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter;Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getEventBus()Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getEventBus()Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/OnIncognitoCallStartedListener;->a:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {v0, v1, p0}, Lcom/callapp/contacts/event/bus/EventBus;->b(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onIncognitoCallStarted(Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 124
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter;->setText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
