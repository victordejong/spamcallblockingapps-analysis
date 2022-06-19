.class public Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;
.super Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/phone/CallStateListener;
.implements Lcom/callapp/contacts/model/contact/ContactDataChangeListener;


# static fields
.field private static final ANALYTICS_HELP_US_IDENTIFY_NUMBER_BUTTON:Ljava/lang/String; = "Help us identify clicked"

.field private static final ANALYTICS_HELP_US_IDENTIFY_PRESENTER_SHOWN_LABEL:Ljava/lang/String; = "Help us identify shown"

.field private static final ANALYTICS_IS_IT_X_PRESENTER_SHOWN_LABEL:Ljava/lang/String; = "Is it X shown"

.field private static final ANALYTICS_NEGATIVE_BUTTON_CLICKED:Ljava/lang/String; = "Negative"

.field private static final ANALYTICS_POSITIVE_BUTTON_CLICKED:Ljava/lang/String; = "Positive"


# instance fields
.field private correctedInfoViewForHelpUsIdentifyNumber:Landroid/view/View;

.field private forceShowPresenter:Z

.field private genomeLoadingDone:Z

.field private lastPhoneCall:Lcom/callapp/framework/phone/Phone;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;->forceShowPresenter:Z

    .line 49
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;->genomeLoadingDone:Z

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;)Landroid/view/View;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;->correctedInfoViewForHelpUsIdentifyNumber:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;Lcom/callapp/framework/phone/Phone;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;->showHelpUsIdentifyNumber(Lcom/callapp/framework/phone/Phone;)V

    return-void
.end method

.method private collapseIfNeededCorrectedInfoOnContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
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

    .line 116
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->newContact:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 117
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;->collapse(Z)V

    .line 118
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;->genomeLoadingDone:Z

    return-void

    .line 119
    :cond_0
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->deviceId:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 120
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->isContactInDevice()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 121
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;->collapse(Z)V

    return-void

    .line 123
    :cond_1
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->isIncognito:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {p2, p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->a(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 124
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;->collapse(Z)V

    :cond_2
    return-void
.end method

.method private expandUserCorrectedInfoPresenterIfNeeded(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/contact/ContactData;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 200
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->isContactInDevice()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 201
    invoke-static {p2}, Lcom/callapp/contacts/util/UserCorrectedInfoUtil;->a(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p2, p1}, Lcom/callapp/contacts/model/contact/ContactData;->hasPhone(Lcom/callapp/framework/phone/Phone;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isAnyCallActive()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v2

    invoke-static {v2, v3, p1}, Lcom/callapp/contacts/loader/UserCorrectedDataManager;->a(JLcom/callapp/framework/phone/Phone;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    .line 202
    invoke-interface {v2, p2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->a(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->isVoiceMail()Z

    move-result v2

    if-nez v2, :cond_2

    .line 204
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object p2

    .line 205
    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f120349

    new-array v3, v0, [Ljava/lang/Object;

    .line 206
    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, v1

    invoke-static {v2, v3}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 207
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    new-instance v2, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter$4;

    invoke-direct {v2, p0, p2, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter$4;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;Ljava/lang/String;Lcom/callapp/framework/phone/Phone;)V

    invoke-interface {v1, v2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 214
    :cond_1
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter$5;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter$5;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;Lcom/callapp/framework/phone/Phone;)V

    invoke-interface {p2, v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    :goto_1
    return v0

    :cond_2
    return v1
.end method

.method private showHelpUsIdentifyNumber(Lcom/callapp/framework/phone/Phone;)V
    .locals 3

    .line 228
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;->correctedInfoViewForHelpUsIdentifyNumber:Landroid/view/View;

    invoke-static {v0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;->correctedInfoViewForHelpUsIdentifyNumber:Landroid/view/View;

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;->correctedInfoViewForHelpUsIdentifyNumber:Landroid/view/View;

    .line 230
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

    .line 231
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;->correctedInfoViewForHelpUsIdentifyNumber:Landroid/view/View;

    check-cast v0, Lcom/callapp/contacts/widget/RetractableView;

    invoke-interface {v0}, Lcom/callapp/contacts/widget/RetractableView;->c()V

    .line 233
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;->correctedInfoViewForHelpUsIdentifyNumber:Landroid/view/View;

    const v1, 0x7f0a0165

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f120711

    .line 234
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;->correctedInfoViewForHelpUsIdentifyNumber:Landroid/view/View;

    const v1, 0x7f0a048f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter$6;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter$6;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;Lcom/callapp/framework/phone/Phone;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;->correctedInfoViewForHelpUsIdentifyNumber:Landroid/view/View;

    check-cast p1, Lcom/callapp/contacts/widget/RetractableView;

    invoke-interface {p1}, Lcom/callapp/contacts/widget/RetractableView;->a()V

    .line 248
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "User corrected info"

    const-string v1, "Help us identify shown"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected collapse(Z)V
    .locals 2

    .line 253
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter;->collapse(Z)V

    .line 254
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;->correctedInfoViewForHelpUsIdentifyNumber:Landroid/view/View;

    invoke-static {v0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter$7;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter$7;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;Z)V

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public collapseCorrectedInfoViewForHelpUsIdentifyNumber()V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;->correctedInfoViewForHelpUsIdentifyNumber:Landroid/view/View;

    invoke-static {v0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;->correctedInfoViewForHelpUsIdentifyNumber:Landroid/view/View;

    check-cast v0, Lcom/callapp/contacts/widget/RetractableView;

    invoke-interface {v0}, Lcom/callapp/contacts/widget/RetractableView;->b()V

    :cond_0
    return-void
.end method

.method public forceShowPresenter()V
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;->expandSyncObject:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 271
    :try_start_0
    iput-boolean v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;->forceShowPresenter:Z

    .line 272
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getBackgroundColor(Landroid/content/Context;)I
    .locals 1

    const v0, 0x7f06008a

    .line 53
    invoke-static {p1, v0}, Landroidx/core/content/b;->c(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0a0167

    return v0
.end method

.method public isExpanded()Z
    .locals 1

    .line 278
    invoke-super {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;->correctedInfoViewForHelpUsIdentifyNumber:Landroid/view/View;

    .line 279
    invoke-static {v0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;->correctedInfoViewForHelpUsIdentifyNumber:Landroid/view/View;

    check-cast v0, Lcom/callapp/contacts/widget/RetractableView;

    .line 280
    invoke-interface {v0}, Lcom/callapp/contacts/widget/RetractableView;->isCollapsed()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public onCallStateChanged(Lcom/callapp/contacts/model/call/CallData;)V
    .locals 4

    .line 183
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    .line 184
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/model/call/CallState;->isPostCall()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v1, v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->a(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 185
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Lcom/callapp/framework/phone/Phone;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/model/contact/ContactData;->hasPhone(Lcom/callapp/framework/phone/Phone;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->isUnsearchableNumber()Z

    move-result v1

    if-nez v1, :cond_0

    .line 187
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;->lastPhoneCall:Lcom/callapp/framework/phone/Phone;

    .line 188
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;->expandSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 189
    :try_start_0
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;->expandUserCorrectedInfoPresenterIfNeeded(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/contact/ContactData;)Z

    .line 190
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 192
    :cond_0
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;->collapse(Z)V

    return-void

    .line 194
    :cond_1
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallState;->isPreCall()Z

    move-result p1

    if-nez p1, :cond_2

    .line 195
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;->collapse(Z)V

    :cond_2
    return-void
.end method

.method public onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    .line 130
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;->collapseIfNeededCorrectedInfoOnContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V

    .line 132
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->isContactInDevice()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->isUnsearchableNumber()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0, p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->a(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 136
    :cond_0
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->genomeData:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 138
    iput-boolean v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;->genomeLoadingDone:Z

    :cond_1
    if-nez v0, :cond_2

    .line 141
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    iget-boolean p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;->genomeLoadingDone:Z

    if-eqz p2, :cond_8

    .line 143
    :cond_2
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;->lastPhoneCall:Lcom/callapp/framework/phone/Phone;

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p2

    .line 144
    :goto_0
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v2

    invoke-static {v2, v3, p2}, Lcom/callapp/contacts/loader/UserCorrectedDataManager;->a(JLcom/callapp/framework/phone/Phone;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 146
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;->expandSyncObject:Ljava/lang/Object;

    monitor-enter p2

    .line 147
    :try_start_0
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;->forceShowPresenter:Z

    if-eqz v0, :cond_5

    .line 148
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;->expandUserCorrectedInfoPresenterIfNeeded(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    .line 149
    :goto_1
    iput-boolean v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;->forceShowPresenter:Z

    .line 152
    :cond_5
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object p1

    .line 153
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 154
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter$3;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter$3;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    .line 168
    :cond_6
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 170
    :cond_7
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;->collapse(Z)V

    :cond_8
    :goto_2
    return-void
.end method

.method public onCreate(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V
    .locals 5

    .line 109
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter;->onCreate(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    const v0, 0x7f0a0166

    .line 110
    invoke-interface {p1, v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;->correctedInfoViewForHelpUsIdentifyNumber:Landroid/view/View;

    .line 111
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->newContact:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->deviceId:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->genomeData:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v4, Lcom/callapp/contacts/model/contact/ContactField;->isIncognito:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->addContactChangedListener(Lcom/callapp/contacts/model/contact/ContactDataChangeListener;Ljava/util/Set;)V

    .line 112
    invoke-interface {p1, p0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->addCallStateListener(Lcom/callapp/contacts/manager/phone/CallStateListener;)V

    return-void
.end method

.method protected onNegativeBtnClicked(Lcom/callapp/framework/phone/Phone;)V
    .locals 4

    .line 96
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "User corrected info"

    const-string v2, "Is it X shown"

    const-string v3, "Negative"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter$2;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter$2;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;Lcom/callapp/framework/phone/Phone;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method protected onPositiveBtnClicked(Lcom/callapp/framework/phone/Phone;)V
    .locals 3

    .line 63
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter;->onPositiveBtnClicked(Lcom/callapp/framework/phone/Phone;)V

    .line 64
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter$1;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter$1;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;Lcom/callapp/framework/phone/Phone;)V

    .line 89
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    .line 91
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "User corrected info"

    const-string v1, "Is it X shown"

    const-string v2, "Positive"

    invoke-virtual {p1, v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
