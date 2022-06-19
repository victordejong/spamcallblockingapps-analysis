.class Lcom/callapp/contacts/activity/contact/cards/PhonesCard$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/PhonesCard;->showPhoneNumberPopup(Lcom/callapp/framework/phone/Phone;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/popup/contact/DialogList;

.field final synthetic b:Lcom/callapp/framework/phone/Phone;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/callapp/contacts/activity/contact/cards/PhonesCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/PhonesCard;Lcom/callapp/contacts/popup/contact/DialogList;Lcom/callapp/framework/phone/Phone;Landroid/content/Context;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/PhonesCard$7;->d:Lcom/callapp/contacts/activity/contact/cards/PhonesCard;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/PhonesCard$7;->a:Lcom/callapp/contacts/popup/contact/DialogList;

    iput-object p3, p0, Lcom/callapp/contacts/activity/contact/cards/PhonesCard$7;->b:Lcom/callapp/framework/phone/Phone;

    iput-object p4, p0, Lcom/callapp/contacts/activity/contact/cards/PhonesCard$7;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRowClicked(I)V
    .locals 3

    .line 273
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/PhonesCard$7;->a:Lcom/callapp/contacts/popup/contact/DialogList;

    invoke-virtual {v0}, Lcom/callapp/contacts/popup/contact/DialogList;->dismiss()V

    const v0, 0x7f120248

    if-eq p1, v0, :cond_2

    const v0, 0x7f120612

    if-eq p1, v0, :cond_1

    const v0, 0x7f120813

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 282
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/PhonesCard$7;->d:Lcom/callapp/contacts/activity/contact/cards/PhonesCard;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/PhonesCard;->access$300(Lcom/callapp/contacts/activity/contact/cards/PhonesCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v0

    .line 283
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/PhonesCard$7;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/PhonesCard$7;->b:Lcom/callapp/framework/phone/Phone;

    invoke-static {p1, v0, v1, v2}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;->a(Landroid/content/Context;JLcom/callapp/framework/phone/Phone;)V

    return-void

    .line 286
    :cond_1
    new-instance p1, Lcom/callapp/contacts/activity/contact/cards/PhonesCard$7$1;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/activity/contact/cards/PhonesCard$7$1;-><init>(Lcom/callapp/contacts/activity/contact/cards/PhonesCard$7;)V

    .line 294
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/PhonesCard$7$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    :goto_0
    return-void

    :cond_2
    const p1, 0x7f120520

    .line 276
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 277
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/PhonesCard$7;->b:Lcom/callapp/framework/phone/Phone;

    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 278
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppClipboardManager;->get()Lcom/callapp/contacts/manager/CallAppClipboardManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/manager/CallAppClipboardManager;->setPrimaryClip$387437e0(Landroid/content/ClipData;)V

    .line 279
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p1

    const v0, 0x7f1206f8

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 1111
    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method
