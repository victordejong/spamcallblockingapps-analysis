.class Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$WebSiteDataHandler$1$1;
.super Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListenerImpel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$WebSiteDataHandler$1;->getListener()Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListenerImpel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$WebSiteDataHandler$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$WebSiteDataHandler$1;)V
    .locals 0

    .line 370
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$WebSiteDataHandler$1$1;->a:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$WebSiteDataHandler$1;

    invoke-direct {p0}, Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListenerImpel;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 373
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 378
    :cond_0
    sget-object v0, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    .line 379
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v1

    :cond_1
    const p1, 0x7f1204ae

    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(ILjava/lang/String;Z)V
    .locals 3

    .line 384
    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object p1

    iget-object p3, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$WebSiteDataHandler$1$1;->a:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$WebSiteDataHandler$1;

    invoke-virtual {p3}, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$WebSiteDataHandler$1;->getStartText()Ljava/lang/String;

    move-result-object p3

    .line 1402
    invoke-static {p3}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    .line 1406
    :cond_0
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->aD:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-static {v0, p3}, Lcom/callapp/contacts/manager/UserProfileManager;->a(Lcom/callapp/contacts/manager/preferences/prefs/StringPref;Ljava/lang/String;)Z

    move-result v0

    .line 1408
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->aw:[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-static {v2, p3}, Lcom/callapp/contacts/manager/preferences/PrefsUtils;->b([Lcom/callapp/contacts/manager/preferences/prefs/StringPref;Ljava/lang/String;)Z

    move-result p3

    or-int/2addr p3, v0

    if-eqz p3, :cond_1

    .line 1410
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->websites:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/UserProfileManager;->a(Lcom/callapp/contacts/model/contact/ContactField;)V

    .line 385
    :cond_1
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object p1

    .line 2390
    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 2394
    :cond_2
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->aw:[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-static {v0, p2}, Lcom/callapp/contacts/manager/preferences/PrefsUtils;->a([Lcom/callapp/contacts/manager/preferences/prefs/StringPref;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2396
    sget-object p2, Lcom/callapp/contacts/model/contact/ContactField;->websites:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/manager/UserProfileManager;->a(Lcom/callapp/contacts/model/contact/ContactField;)V

    .line 387
    :cond_3
    :goto_1
    new-instance p1, Lcom/callapp/common/model/json/JSONWebsite;

    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$WebSiteDataHandler$1$1;->a:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$WebSiteDataHandler$1;

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$WebSiteDataHandler$1;->getStartText()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0, v0}, Lcom/callapp/common/model/json/JSONWebsite;-><init>(Ljava/lang/String;IZ)V

    .line 388
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$WebSiteDataHandler$1$1;->a:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$WebSiteDataHandler$1;

    iget-object p2, p2, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$WebSiteDataHandler$1;->a:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$WebSiteDataHandler;

    iget-object p2, p2, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$WebSiteDataHandler;->a:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;

    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;->access$900(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p2

    invoke-interface {p2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->getUserProfileData()Lcom/callapp/contacts/model/contact/UserProfileData;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/callapp/contacts/model/contact/UserProfileData;->removeWebsite(Lcom/callapp/common/model/json/JSONWebsite;)Z

    .line 389
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$WebSiteDataHandler$1$1;->a:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$WebSiteDataHandler$1;

    iget-object p2, p2, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$WebSiteDataHandler$1;->a:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$WebSiteDataHandler;

    iget-object p2, p2, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$WebSiteDataHandler;->a:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;

    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;->access$1000(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p2

    invoke-interface {p2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/callapp/contacts/model/contact/ContactData;->removeWebsite(Lcom/callapp/common/model/json/JSONWebsite;)V

    .line 391
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$WebSiteDataHandler$1$1;->a:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$WebSiteDataHandler$1;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$WebSiteDataHandler$1;->a:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$WebSiteDataHandler;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$WebSiteDataHandler;->a:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;->access$1100(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/loader/device/UserProfileLoader;->b(Lcom/callapp/contacts/model/contact/ContactData;)V

    if-eqz p3, :cond_4

    if-nez v1, :cond_4

    .line 395
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$WebSiteDataHandler$1$1;->a:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$WebSiteDataHandler$1;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$WebSiteDataHandler$1;->a:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$WebSiteDataHandler;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$WebSiteDataHandler;->a:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;->access$1200(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p1

    sget-object p2, Lcom/callapp/contacts/model/contact/ContactField;->websites:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    :cond_4
    return-void
.end method
