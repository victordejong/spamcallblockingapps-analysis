.class Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler$2;
.super Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler;)V
    .locals 0

    .line 523
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler$2;->a:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler;

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 6

    const p1, 0x7f1204aa

    .line 526
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 527
    new-instance p1, Lcom/callapp/contacts/popup/contact/DialogEditText;

    new-instance v5, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler$2$1;

    invoke-direct {v5, p0}, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler$2$1;-><init>(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler$2;)V

    const v1, 0x7f1204a9

    const/4 v2, 0x0

    const/16 v4, 0x20

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/popup/contact/DialogEditText;-><init>(ILjava/lang/String;Ljava/lang/String;ILcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListener;)V

    .line 545
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler$2;->a:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler;

    iget-object v1, v1, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler;->a:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;->access$1900(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v1

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method
