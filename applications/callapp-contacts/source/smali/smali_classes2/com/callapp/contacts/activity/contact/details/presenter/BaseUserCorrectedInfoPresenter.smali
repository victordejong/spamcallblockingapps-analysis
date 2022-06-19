.class public abstract Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter;
.super Lcom/callapp/contacts/activity/contact/details/presenter/BasePresenter;
.source "SourceFile"


# instance fields
.field private correctedInfoView:Landroid/view/View;

.field final expandSyncObject:Ljava/lang/Object;

.field private textViewForCorrectedInfo:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/BasePresenter;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter;->expandSyncObject:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter;)Landroid/view/View;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter;->correctedInfoView:Landroid/view/View;

    return-object p0
.end method

.method private getNegativeBtnId()I
    .locals 1

    const v0, 0x7f0a0a8b

    return v0
.end method

.method private getPositiveBtnId()I
    .locals 1

    const v0, 0x7f0a0a8c

    return v0
.end method


# virtual methods
.method protected collapse(Z)V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter;->correctedInfoView:Landroid/view/View;

    invoke-static {v0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter$4;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter$4;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter;Z)V

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public abstract forceShowPresenter()V
.end method

.method protected abstract getBackgroundColor(Landroid/content/Context;)I
.end method

.method protected abstract getLayoutId()I
.end method

.method protected getRootView()Landroid/view/View;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter;->correctedInfoView:Landroid/view/View;

    return-object v0
.end method

.method public isExpanded()Z
    .locals 2

    .line 139
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 140
    invoke-static {v0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lcom/callapp/contacts/widget/RetractableView;

    invoke-interface {v0}, Lcom/callapp/contacts/widget/RetractableView;->isCollapsed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter;->getLayoutId()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter;->correctedInfoView:Landroid/view/View;

    return-void
.end method

.method protected abstract onNegativeBtnClicked(Lcom/callapp/framework/phone/Phone;)V
.end method

.method protected onPositiveBtnClicked(Lcom/callapp/framework/phone/Phone;)V
    .locals 0

    .line 48
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/FeedbackManager;->a()V

    .line 49
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter;->correctedInfoView:Landroid/view/View;

    check-cast p1, Lcom/callapp/contacts/widget/RetractableView;

    invoke-interface {p1}, Lcom/callapp/contacts/widget/RetractableView;->b()V

    return-void
.end method

.method showCorrectedInfo(Ljava/lang/String;Lcom/callapp/framework/phone/Phone;Ljava/lang/String;)V
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter;->correctedInfoView:Landroid/view/View;

    invoke-static {v0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter;->correctedInfoView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter;->correctedInfoView:Landroid/view/View;

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter;->correctedInfoView:Landroid/view/View;

    check-cast v0, Lcom/callapp/contacts/widget/RetractableView;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0703ae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-interface {v0, v1}, Lcom/callapp/contacts/widget/RetractableView;->setExpandMaxHeight(I)V

    .line 77
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter;->correctedInfoView:Landroid/view/View;

    check-cast v0, Lcom/callapp/contacts/widget/RetractableView;

    invoke-interface {v0}, Lcom/callapp/contacts/widget/RetractableView;->c()V

    .line 78
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter;->correctedInfoView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter;->getBackgroundColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 80
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter;->correctedInfoView:Landroid/view/View;

    const v1, 0x7f0a0165

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter;->textViewForCorrectedInfo:Landroid/widget/TextView;

    .line 82
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter;->correctedInfoView:Landroid/view/View;

    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter;->getPositiveBtnId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 84
    new-instance v1, Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter$2;

    invoke-direct {v1, p0, p2}, Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter$2;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter;Lcom/callapp/framework/phone/Phone;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter;->correctedInfoView:Landroid/view/View;

    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter;->getNegativeBtnId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 95
    new-instance v1, Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter$3;

    invoke-direct {v1, p0, p2}, Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter$3;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter;Lcom/callapp/framework/phone/Phone;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    :cond_2
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter;->updateText(Ljava/lang/String;)V

    .line 105
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter;->correctedInfoView:Landroid/view/View;

    check-cast p1, Lcom/callapp/contacts/widget/RetractableView;

    invoke-interface {p1}, Lcom/callapp/contacts/widget/RetractableView;->a()V

    .line 106
    invoke-static {p3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 107
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string p2, "User corrected info"

    invoke-virtual {p1, p2, p3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_3
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getEventBus()Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object p1

    sget-object p2, Lcom/callapp/contacts/activity/interfaces/PresenterEvents;->b:Lcom/callapp/contacts/event/bus/EventType;

    const/4 p3, 0x0

    const/4 v0, 0x0

    .line 1091
    invoke-virtual {p1, p2, p3, v0}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    return-void
.end method

.method showTellUsWhoItIsPopup(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/framework/phone/Phone;Ljava/lang/String;)V
    .locals 10

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 55
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0, p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->a(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->isBusiness()Z

    move-result v5

    .line 57
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    new-instance v9, Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter$1;

    invoke-direct {v9, p0}, Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter$1;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter;)V

    const-string v1, "User corrected info"

    move-object v2, p3

    move-object v7, p1

    move-object v8, p2

    invoke-static/range {v1 .. v9}, Lcom/callapp/contacts/util/UserCorrectedInfoUtil;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;IZLcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/manager/popup/PopupDoneListener;)V

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 67
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter;->collapse(Z)V

    return-void
.end method

.method protected updateText(Ljava/lang/String;)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter;->textViewForCorrectedInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
