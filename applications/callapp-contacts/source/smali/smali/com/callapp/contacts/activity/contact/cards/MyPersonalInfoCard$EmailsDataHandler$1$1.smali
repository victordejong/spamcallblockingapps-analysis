.class Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler$1$1;
.super Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListenerImpel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler$1;->getListener()Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListenerImpel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler$1;)V
    .locals 0

    .line 474
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler$1$1;->a:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler$1;

    invoke-direct {p0}, Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListenerImpel;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 478
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 482
    :cond_0
    invoke-static {p1}, Lcom/callapp/common/model/json/JSONEmail;->isValidEmail(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v1

    :cond_1
    const p1, 0x7f1204ab

    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(ILjava/lang/String;Z)V
    .locals 2

    .line 487
    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object p1

    iget-object p3, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler$1$1;->a:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler$1;

    invoke-virtual {p3}, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler$1;->getStartText()Ljava/lang/String;

    move-result-object p3

    .line 1351
    invoke-static {p3}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1355
    :cond_0
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->aC:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-static {v0, p3}, Lcom/callapp/contacts/manager/UserProfileManager;->a(Lcom/callapp/contacts/manager/preferences/prefs/StringPref;Ljava/lang/String;)Z

    move-result v0

    .line 1357
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->ax:[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-static {v1, p3}, Lcom/callapp/contacts/manager/preferences/PrefsUtils;->b([Lcom/callapp/contacts/manager/preferences/prefs/StringPref;Ljava/lang/String;)Z

    move-result p3

    or-int/2addr p3, v0

    if-eqz p3, :cond_1

    .line 1359
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->emails:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/UserProfileManager;->a(Lcom/callapp/contacts/model/contact/ContactField;)V

    :cond_1
    move p1, p3

    .line 488
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/callapp/contacts/manager/UserProfileManager;->a(Ljava/lang/String;)Z

    move-result p2

    .line 490
    new-instance p3, Lcom/callapp/common/model/json/JSONEmail;

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler$1$1;->a:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler$1;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler$1;->getStartText()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p3, v0, v1}, Lcom/callapp/common/model/json/JSONEmail;-><init>(Ljava/lang/String;I)V

    .line 491
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler$1$1;->a:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler$1;->a:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler;->a:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;->access$1400(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getUserProfileData()Lcom/callapp/contacts/model/contact/UserProfileData;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/callapp/contacts/model/contact/UserProfileData;->removeEmail(Lcom/callapp/common/model/json/JSONEmail;)Z

    .line 492
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler$1$1;->a:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler$1;->a:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler;->a:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;->access$1500(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/callapp/contacts/model/contact/ContactData;->removeEmail(Lcom/callapp/common/model/json/JSONEmail;)V

    .line 494
    iget-object p3, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler$1$1;->a:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler$1;

    iget-object p3, p3, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler$1;->a:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler;

    iget-object p3, p3, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler;->a:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;

    invoke-static {p3}, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;->access$1600(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p3

    invoke-interface {p3}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p3

    invoke-static {p3}, Lcom/callapp/contacts/loader/device/UserProfileLoader;->a(Lcom/callapp/contacts/model/contact/ContactData;)V

    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    .line 498
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler$1$1;->a:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler$1;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler$1;->a:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler;->a:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;->access$1700(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p1

    sget-object p2, Lcom/callapp/contacts/model/contact/ContactField;->emails:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    :cond_2
    return-void
.end method
