.class public Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;
.super Lcom/callapp/contacts/popup/SelectContactDetailsPopup;
.source "SourceFile"


# instance fields
.field private final g:Lcom/callapp/contacts/model/contact/ContactData;

.field private final h:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactState;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/action/shared/ShareContactAction$ShareItem;",
            ">;",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactState;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/callapp/contacts/popup/SelectContactDetailsPopup;-><init>(Ljava/util/ArrayList;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactState;Landroid/app/Activity;)V

    .line 31
    iput-object p3, p0, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;->g:Lcom/callapp/contacts/model/contact/ContactData;

    .line 33
    new-instance p1, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-direct {p1}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;->h:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    const/4 p2, 0x1

    .line 34
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->setIndeterminate(Z)V

    const p2, 0x7f120537

    .line 35
    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;)Ljava/util/List;
    .locals 0

    .line 24
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;->getPhones()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;Landroid/app/Activity;Ljava/util/List;)V
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;->a(Landroid/app/Activity;Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;Landroid/app/Activity;[Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;->a(Landroid/app/Activity;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;)Ljava/util/ArrayList;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;->f:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic c(Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;)Ljava/util/ArrayList;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;->f:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic d(Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;)[Ljava/lang/String;
    .locals 0

    .line 24
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;->getEmailsFromContact()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;)Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;->h:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    return-object p0
.end method

.method private getPhoneStr()Ljava/lang/String;
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;->g:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    iget-object v0, p0, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;->g:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhones()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;->g:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhones()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/framework/phone/Phone;

    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/callapp/framework/phone/Phone;",
            ">;)V"
        }
    .end annotation

    .line 122
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;->h:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-virtual {v0, p1, v1}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    .line 123
    new-instance v0, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup$2;-><init>(Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;Landroid/app/Activity;Ljava/util/List;)V

    .line 140
    invoke-virtual {v0}, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup$2;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method

.method public final a(Landroid/app/Activity;[Ljava/lang/String;)V
    .locals 2

    .line 144
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;->h:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-virtual {v0, p1, v1}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    .line 145
    new-instance v0, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup$3;-><init>(Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;Landroid/app/Activity;[Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0}, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup$3;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method

.method public getEmailsFromContact()[Ljava/lang/String;
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 112
    iget-object v1, p0, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;->g:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->getEmails()Ljava/util/Collection;

    move-result-object v1

    .line 113
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    aput-object v1, v0, v3

    goto :goto_0

    .line 116
    :cond_0
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/common/model/json/JSONEmail;

    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONEmail;->getEmail()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    :goto_0
    return-object v0
.end method

.method public getListener()Lcom/callapp/contacts/popup/contact/DialogMultipleChoice$MultipleChoiceDialogListener;
    .locals 1

    .line 56
    new-instance v0, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup$1;-><init>(Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;)V

    return-object v0
.end method

.method public getNegativeBtnText()Ljava/lang/String;
    .locals 1

    const v0, 0x7f12062f

    .line 46
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhones()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/framework/phone/Phone;",
            ">;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;->g:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhonesList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPositiveBtnText()Ljava/lang/String;
    .locals 1

    const v0, 0x7f120630

    .line 51
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitleText()Ljava/lang/String;
    .locals 4

    .line 40
    iget-object v0, p0, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;->c:Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactState;

    sget-object v1, Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactState;->sendingOthersInfo:Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactState;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->getFirstName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    const v1, 0x7f12062e

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 41
    invoke-static {v1, v2}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNeedToShowPopup()Z
    .locals 4

    .line 173
    invoke-super {p0}, Lcom/callapp/contacts/popup/SelectContactDetailsPopup;->isNeedToShowPopup()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 177
    :cond_0
    invoke-direct {p0}, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;->getPhoneStr()Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;->getEmailsFromContact()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 179
    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    return v3
.end method
