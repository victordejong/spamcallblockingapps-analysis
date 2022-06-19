.class Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$AddressDataHandler$1$1;
.super Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListenerImpel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$AddressDataHandler$1;->getListener()Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListenerImpel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$AddressDataHandler$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$AddressDataHandler$1;)V
    .locals 0

    .line 428
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$AddressDataHandler$1$1;->a:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$AddressDataHandler$1;

    invoke-direct {p0}, Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListenerImpel;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(ILjava/lang/String;Z)V
    .locals 0

    .line 436
    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/manager/UserProfileManager;->setUserAddress(Ljava/lang/String;)V

    .line 437
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$AddressDataHandler$1$1;->a:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$AddressDataHandler$1;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$AddressDataHandler$1;->a:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$AddressDataHandler;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$AddressDataHandler;->a:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;->access$1300(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/loader/device/UserProfileLoader;->f(Lcom/callapp/contacts/model/contact/ContactData;)V

    return-void
.end method
