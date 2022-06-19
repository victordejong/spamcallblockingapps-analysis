.class Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter$1;
.super Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter;->onCreate(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter;Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter$1;->b:Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter$1;->a:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 10

    .line 55
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter$1;->a:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 56
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->isValidForSearch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter$1;->b:Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter;->access$000(Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter;)V

    .line 58
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "TextName-"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter$1;->a:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static/range {v1 .. v9}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->createIntent(Landroid/content/Context;JLjava/lang/String;Lcom/callapp/contacts/model/objectbox/ExtractedInfo;ZLcom/callapp/contacts/model/DataChangedInfo;Ljava/lang/String;Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;)Landroid/content/Intent;

    move-result-object p1

    .line 59
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method
