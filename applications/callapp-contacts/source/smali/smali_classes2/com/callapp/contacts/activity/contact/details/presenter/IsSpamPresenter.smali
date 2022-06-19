.class public Lcom/callapp/contacts/activity/contact/details/presenter/IsSpamPresenter;
.super Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/phone/CallStateListener;
.implements Lcom/callapp/contacts/model/contact/ContactDataChangeListener;


# static fields
.field private static final ANALYTICS_SPAM_PRESENTER_SHOWN_LABEL:Ljava/lang/String; = "Is it spam show"


# instance fields
.field private forceShowPresenter:Z

.field private genomeLoadingDone:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/IsSpamPresenter;->forceShowPresenter:Z

    .line 33
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/IsSpamPresenter;->genomeLoadingDone:Z

    return-void
.end method

.method static synthetic access$002(Lcom/callapp/contacts/activity/contact/details/presenter/IsSpamPresenter;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/IsSpamPresenter;->forceShowPresenter:Z

    return p1
.end method

.method private expandIsSpamView(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 1

    .line 98
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->isContactInDevice()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->isSpammer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->isUnsearchableNumber()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isAnyCallActive()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {p1}, Lcom/callapp/contacts/util/UserCorrectedInfoUtil;->a(Lcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/objectbox/UserSpamData;

    move-result-object p2

    if-nez p2, :cond_0

    .line 99
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/IsSpamPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    new-instance v0, Lcom/callapp/contacts/activity/contact/details/presenter/IsSpamPresenter$3;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/IsSpamPresenter$3;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/IsSpamPresenter;Lcom/callapp/framework/phone/Phone;)V

    invoke-interface {p2, v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public forceShowPresenter()V
    .locals 1

    const/4 v0, 0x1

    .line 130
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/IsSpamPresenter;->forceShowPresenter:Z

    return-void
.end method

.method protected getBackgroundColor(Landroid/content/Context;)I
    .locals 1

    .line 37
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    const v0, 0x7f06001b

    invoke-static {p1, v0}, Landroidx/core/content/b;->c(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0a0531

    return v0
.end method

.method public onCallStateChanged(Lcom/callapp/contacts/model/call/CallData;)V
    .locals 3

    .line 85
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/call/CallState;->isPostCall()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/IsSpamPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/model/contact/ContactData;->hasPhone(Lcom/callapp/framework/phone/Phone;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/contacts/util/CallLogUtils;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 88
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/contact/details/presenter/IsSpamPresenter;->expandIsSpamView(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/contact/ContactData;)V

    return-void

    .line 90
    :cond_0
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/contact/details/presenter/IsSpamPresenter;->collapse(Z)V

    return-void

    .line 92
    :cond_1
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallState;->isPreCall()Z

    move-result p1

    if-nez p1, :cond_2

    .line 93
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/contact/details/presenter/IsSpamPresenter;->collapse(Z)V

    :cond_2
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

    .line 111
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->newContact:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/contact/details/presenter/IsSpamPresenter;->collapse(Z)V

    const/4 v0, 0x0

    .line 113
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/IsSpamPresenter;->genomeLoadingDone:Z

    .line 116
    :cond_0
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->genomeData:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    iput-boolean v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/IsSpamPresenter;->genomeLoadingDone:Z

    :cond_1
    if-nez v0, :cond_2

    .line 121
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->spamScore:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-boolean p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/IsSpamPresenter;->genomeLoadingDone:Z

    if-eqz p2, :cond_3

    .line 122
    :cond_2
    iget-boolean p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/IsSpamPresenter;->forceShowPresenter:Z

    if-eqz p2, :cond_3

    .line 123
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/IsSpamPresenter;->expandIsSpamView(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/contact/ContactData;)V

    :cond_3
    return-void
.end method

.method public onCreate(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V
    .locals 2

    .line 78
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter;->onCreate(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    .line 79
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->newContact:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->spamScore:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->addContactChangedListener(Lcom/callapp/contacts/model/contact/ContactDataChangeListener;Ljava/util/Set;)V

    .line 80
    invoke-interface {p1, p0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->addCallStateListener(Lcom/callapp/contacts/manager/phone/CallStateListener;)V

    return-void
.end method

.method protected onNegativeBtnClicked(Lcom/callapp/framework/phone/Phone;)V
    .locals 4

    .line 64
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "User corrected info"

    const-string v2, "Is it spam show"

    const-string v3, "Negative"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 65
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/details/presenter/IsSpamPresenter;->collapse(Z)V

    .line 67
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/presenter/IsSpamPresenter$2;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/IsSpamPresenter$2;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/IsSpamPresenter;Lcom/callapp/framework/phone/Phone;)V

    .line 73
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/IsSpamPresenter$2;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method

.method protected onPositiveBtnClicked(Lcom/callapp/framework/phone/Phone;)V
    .locals 7

    .line 47
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter;->onPositiveBtnClicked(Lcom/callapp/framework/phone/Phone;)V

    .line 48
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const/4 v1, 0x0

    new-array v6, v1, [Ljava/lang/String;

    const-string v1, "User corrected info"

    const-string v2, "Is it spam show"

    const-string v3, "Positive"

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    .line 50
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/presenter/IsSpamPresenter$1;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/IsSpamPresenter$1;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/IsSpamPresenter;Lcom/callapp/framework/phone/Phone;)V

    .line 56
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/IsSpamPresenter$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    .line 58
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/IsSpamPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getNameOrNumber()Ljava/lang/String;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/IsSpamPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, p1}, Lcom/callapp/contacts/manager/BlockManager;->b(Landroid/content/Context;Ljava/lang/String;Lcom/callapp/framework/phone/Phone;)V

    return-void
.end method
