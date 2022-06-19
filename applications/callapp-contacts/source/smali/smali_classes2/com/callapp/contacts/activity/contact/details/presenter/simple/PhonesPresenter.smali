.class public Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;
.super Lcom/callapp/contacts/activity/contact/details/presenter/BasePresenter;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/phone/CallStateListener;
.implements Lcom/callapp/contacts/model/contact/ContactDataChangeListener;


# instance fields
.field private callIcon:Landroid/widget/ImageView;

.field private phoneText:Landroid/widget/TextView;

.field private providerText:Landroid/widget/TextView;

.field private simIdIcon:Landroid/widget/ImageView;

.field private spamView:Landroid/view/View;

.field private timeText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/BasePresenter;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;->getPresentersContainer()Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/call/CallState;Lcom/callapp/contacts/model/call/CallData;Z)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;->updatePhonesText(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/call/CallState;Lcom/callapp/contacts/model/call/CallData;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;Lcom/callapp/contacts/model/contact/CallHistoryData;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;->updateLastCallTimeAndIcon(Lcom/callapp/contacts/model/contact/CallHistoryData;)V

    return-void
.end method

.method static synthetic access$300(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;)Landroid/widget/TextView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;->phoneText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;->setViewAsSpam()V

    return-void
.end method

.method static synthetic access$500(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$600(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;->setTimeText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;->setCallLogIcon(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;->setPhoneNumberInfoText(Lcom/callapp/contacts/model/contact/ContactData;)V

    return-void
.end method

.method private isLater(Lcom/callapp/contacts/model/contact/CallHistoryData;Lcom/callapp/contacts/model/contact/CallHistoryData;)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    return v0

    :cond_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 241
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/CallHistoryData;->getLastCallTimeStamp()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/CallHistoryData;->getLastCallTimeStamp()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p1

    return p1

    :cond_2
    return v0
.end method

.method private setCallLogIcon(I)V
    .locals 3

    .line 183
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;->callIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    const/16 v1, 0x1770

    if-eq p1, v1, :cond_1

    const/16 v1, 0x28

    if-eq p1, v1, :cond_0

    const/16 v1, 0x29

    if-eq p1, v1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const p1, 0x7f08033f

    goto :goto_0

    :cond_1
    const p1, 0x7f08033e

    goto :goto_0

    :cond_2
    const p1, 0x7f080342

    goto :goto_0

    :cond_3
    const p1, 0x7f080338

    :goto_0
    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    const/16 v2, 0x8

    .line 202
    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;->callIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;ILandroid/graphics/ColorFilter;)V

    :cond_5
    return-void
.end method

.method private setPhoneNumberInfoText(Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;->providerText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 221
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->getPhoneInfo()Ljava/lang/String;

    move-result-object p1

    .line 222
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;->providerText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->di:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/contact/header/ThemeState;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/header/ThemeState;->isLightTheme()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 224
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;->providerText:Landroid/widget/TextView;

    const v0, 0x7f06010e

    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    .line 227
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;->providerText:Landroid/widget/TextView;

    const v0, 0x7f060244

    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method private setTimeText(Ljava/lang/String;)V
    .locals 3

    .line 208
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;->timeText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 209
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;->timeText:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;->timeText:Landroid/widget/TextView;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    const v2, 0x7f0601cc

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 213
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;->timeText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;->timeText:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private setViewAsSpam()V
    .locals 4

    .line 156
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;->spamView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 157
    invoke-static {v0}, Lcom/callapp/contacts/util/ViewUtils;->b(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;->spamView:Landroid/view/View;

    if-eqz v0, :cond_0

    const v0, 0x7f06001b

    .line 159
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    .line 160
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;->spamView:Landroid/view/View;

    const v2, 0x7f0a0858

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 161
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;->spamView:Landroid/view/View;

    const v2, 0x7f0a0859

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f120112

    .line 162
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method private updateLastCallTimeAndIcon(Lcom/callapp/contacts/model/contact/CallHistoryData;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 171
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;->timeText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/CallHistoryData;->getLastCallTimeStamp()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/date/DateUtils;->d(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;->setTimeText(Ljava/lang/String;)V

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;->callIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 177
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/CallHistoryData;->getCallType()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;->setCallLogIcon(I)V

    :cond_1
    return-void
.end method

.method private updatePhonesText(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/call/CallState;Lcom/callapp/contacts/model/call/CallData;Z)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 79
    :cond_0
    sget-object p2, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter$5;->a:[I

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;->ordinal()I

    move-result v0

    aget p2, p2, v0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_6

    const/4 v0, 0x2

    if-eq p2, v0, :cond_6

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_2

    const/4 p1, 0x5

    if-eq p2, p1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p4, :cond_5

    if-eqz p3, :cond_5

    .line 141
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;->phoneText:Landroid/widget/TextView;

    if-eqz p1, :cond_5

    .line 142
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    new-instance p2, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter$4;

    invoke-direct {p2, p0, p3}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter$4;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;Lcom/callapp/contacts/model/call/CallData;)V

    invoke-interface {p1, p2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_5

    .line 101
    invoke-virtual {p3}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/ContactData;->getLastCallHistoryData(Lcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/contact/CallHistoryData;

    move-result-object p2

    if-nez p2, :cond_4

    .line 103
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhonesList()Ljava/util/List;

    move-result-object v0

    .line 104
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/framework/phone/Phone;

    .line 105
    invoke-virtual {p1, v1}, Lcom/callapp/contacts/model/contact/ContactData;->getLastCallHistoryData(Lcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/contact/CallHistoryData;

    move-result-object v1

    .line 106
    invoke-direct {p0, v1, p2}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;->isLater(Lcom/callapp/contacts/model/contact/CallHistoryData;Lcom/callapp/contacts/model/contact/CallHistoryData;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object p2, v1

    goto :goto_0

    :cond_4
    move-object v4, p2

    .line 112
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    new-instance v0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter$3;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter$3;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/CallHistoryData;Lcom/callapp/contacts/model/call/CallData;Z)V

    invoke-interface {p2, v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_5
    :goto_1
    return-void

    .line 82
    :cond_6
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p2

    .line 83
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/ContactData;->getLastCallHistoryData(Lcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/contact/CallHistoryData;

    move-result-object p1

    .line 84
    iget-object p3, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    new-instance p4, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter$2;

    invoke-direct {p4, p0, p1, p2}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter$2;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;Lcom/callapp/contacts/model/contact/CallHistoryData;Lcom/callapp/framework/phone/Phone;)V

    invoke-interface {p3, p4}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(Lcom/callapp/contacts/model/call/CallData;)V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter$1;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter$1;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;Lcom/callapp/contacts/model/call/CallData;)V

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->safeRunOnUIThread(Ljava/lang/Runnable;)V

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

    .line 69
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getLastCall()Lcom/callapp/contacts/model/call/CallData;

    move-result-object p2

    if-nez p2, :cond_0

    .line 70
    sget-object v0, Lcom/callapp/contacts/model/call/CallState;->PRE_CALL:Lcom/callapp/contacts/model/call/CallState;

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;->updatePhonesText(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/call/CallState;Lcom/callapp/contacts/model/call/CallData;Z)V

    return-void
.end method

.method public onCreate(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V
    .locals 4

    .line 48
    invoke-interface {p1, p0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->addCallStateListener(Lcom/callapp/contacts/manager/phone/CallStateListener;)V

    .line 49
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->phones:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->phone:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->callHistoryData:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->spamScore:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->addContactChangedListener(Lcom/callapp/contacts/model/contact/ContactDataChangeListener;Ljava/util/Set;)V

    const v0, 0x7f0a085a

    .line 50
    invoke-interface {p1, v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;->spamView:Landroid/view/View;

    const v0, 0x7f0a06ac

    .line 51
    invoke-interface {p1, v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;->phoneText:Landroid/widget/TextView;

    const v0, 0x7f0a01a6

    .line 52
    invoke-interface {p1, v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;->callIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a091a

    .line 53
    invoke-interface {p1, v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;->timeText:Landroid/widget/TextView;

    const v0, 0x7f0a06aa

    .line 54
    invoke-interface {p1, v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;->providerText:Landroid/widget/TextView;

    return-void
.end method
