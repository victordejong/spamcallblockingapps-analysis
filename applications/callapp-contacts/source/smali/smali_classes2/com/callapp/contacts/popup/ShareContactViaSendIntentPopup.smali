.class public Lcom/callapp/contacts/popup/ShareContactViaSendIntentPopup;
.super Lcom/callapp/contacts/popup/SelectContactDetailsPopup;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactState;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/action/shared/ShareContactAction$ShareItem;",
            ">;",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactState;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/callapp/contacts/popup/SelectContactDetailsPopup;-><init>(Ljava/util/ArrayList;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactState;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public getListener()Lcom/callapp/contacts/popup/contact/DialogMultipleChoice$MultipleChoiceDialogListener;
    .locals 1

    .line 32
    new-instance v0, Lcom/callapp/contacts/popup/ShareContactViaSendIntentPopup$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/popup/ShareContactViaSendIntentPopup$1;-><init>(Lcom/callapp/contacts/popup/ShareContactViaSendIntentPopup;)V

    return-object v0
.end method

.method public getPositiveBtnText()Ljava/lang/String;
    .locals 1

    const v0, 0x7f120608

    .line 27
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitleText()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/callapp/contacts/popup/ShareContactViaSendIntentPopup;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/ContactData;->getFirstName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f12062e

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
