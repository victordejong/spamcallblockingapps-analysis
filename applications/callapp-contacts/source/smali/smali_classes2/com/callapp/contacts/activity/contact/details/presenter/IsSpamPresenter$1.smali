.class Lcom/callapp/contacts/activity/contact/details/presenter/IsSpamPresenter$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/presenter/IsSpamPresenter;->onPositiveBtnClicked(Lcom/callapp/framework/phone/Phone;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/framework/phone/Phone;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/details/presenter/IsSpamPresenter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/presenter/IsSpamPresenter;Lcom/callapp/framework/phone/Phone;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/IsSpamPresenter$1;->b:Lcom/callapp/contacts/activity/contact/details/presenter/IsSpamPresenter;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/IsSpamPresenter$1;->a:Lcom/callapp/framework/phone/Phone;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 4

    .line 53
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/IsSpamPresenter$1;->b:Lcom/callapp/contacts/activity/contact/details/presenter/IsSpamPresenter;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/details/presenter/IsSpamPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/IsSpamPresenter$1;->a:Lcom/callapp/framework/phone/Phone;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/util/UserCorrectedInfoUtil;->a(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/framework/phone/Phone;Z)V

    .line 54
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v2, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->CONTACTS:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    const/4 v3, 0x0

    .line 1091
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    return-void
.end method
