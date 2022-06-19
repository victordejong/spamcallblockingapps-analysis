.class Lcom/callapp/contacts/activity/contact/cards/PhonesCard$7$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/PhonesCard$7;->onRowClicked(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/PhonesCard$7;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/PhonesCard$7;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/PhonesCard$7$1;->a:Lcom/callapp/contacts/activity/contact/cards/PhonesCard$7;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 3

    .line 289
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/PhonesCard$7$1;->a:Lcom/callapp/contacts/activity/contact/cards/PhonesCard$7;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/cards/PhonesCard$7;->d:Lcom/callapp/contacts/activity/contact/cards/PhonesCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/PhonesCard;->access$400(Lcom/callapp/contacts/activity/contact/cards/PhonesCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/PhonesCard$7$1;->a:Lcom/callapp/contacts/activity/contact/cards/PhonesCard$7;

    iget-object v2, v2, Lcom/callapp/contacts/activity/contact/cards/PhonesCard$7;->b:Lcom/callapp/framework/phone/Phone;

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(JLcom/callapp/framework/phone/Phone;)V

    .line 290
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/PhonesCard$7$1;->a:Lcom/callapp/contacts/activity/contact/cards/PhonesCard$7;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/cards/PhonesCard$7;->d:Lcom/callapp/contacts/activity/contact/cards/PhonesCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/PhonesCard;->access$500(Lcom/callapp/contacts/activity/contact/cards/PhonesCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/PhonesCard$7$1;->a:Lcom/callapp/contacts/activity/contact/cards/PhonesCard$7;

    iget-object v1, v1, Lcom/callapp/contacts/activity/contact/cards/PhonesCard$7;->b:Lcom/callapp/framework/phone/Phone;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/model/contact/ContactData;->setPhone(Lcom/callapp/framework/phone/Phone;)Z

    .line 291
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v0

    const v1, 0x7f1204e1

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1111
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method
