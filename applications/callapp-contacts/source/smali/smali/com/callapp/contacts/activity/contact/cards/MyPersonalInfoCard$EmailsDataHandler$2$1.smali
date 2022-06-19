.class Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler$2$1;
.super Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListenerImpel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler$2;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler$2;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler$2;)V
    .locals 0

    .line 531
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler$2$1;->a:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler$2;

    invoke-direct {p0}, Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListenerImpel;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 534
    invoke-static {p1}, Lcom/callapp/common/model/json/JSONEmail;->isValidEmail(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const p1, 0x7f1204ab

    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(ILjava/lang/String;Z)V
    .locals 0

    .line 539
    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/manager/UserProfileManager;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 541
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler$2$1;->a:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler$2;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler$2;->a:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler;->a:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;->access$1800(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/loader/device/UserProfileLoader;->a(Lcom/callapp/contacts/model/contact/ContactData;)V

    :cond_0
    return-void
.end method
