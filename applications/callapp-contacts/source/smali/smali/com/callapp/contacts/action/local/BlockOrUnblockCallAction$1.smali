.class Lcom/callapp/contacts/action/local/BlockOrUnblockCallAction$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/action/local/BlockOrUnblockCallAction;->b(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/model/contact/ContactData;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/callapp/contacts/action/local/BlockOrUnblockCallAction;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/action/local/BlockOrUnblockCallAction;Lcom/callapp/contacts/model/contact/ContactData;Landroid/content/Context;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/callapp/contacts/action/local/BlockOrUnblockCallAction$1;->c:Lcom/callapp/contacts/action/local/BlockOrUnblockCallAction;

    iput-object p2, p0, Lcom/callapp/contacts/action/local/BlockOrUnblockCallAction$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    iput-object p3, p0, Lcom/callapp/contacts/action/local/BlockOrUnblockCallAction$1;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 5

    .line 28
    iget-object v0, p0, Lcom/callapp/contacts/action/local/BlockOrUnblockCallAction$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v0

    .line 29
    iget-object v2, p0, Lcom/callapp/contacts/action/local/BlockOrUnblockCallAction$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/ContactData;->getNameOrNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 30
    iget-object v3, p0, Lcom/callapp/contacts/action/local/BlockOrUnblockCallAction$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v3}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v3

    .line 32
    invoke-static {v3}, Lcom/callapp/contacts/manager/BlockManager;->b(Lcom/callapp/framework/phone/Phone;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 33
    invoke-static {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/BlockManager;->a(JLjava/lang/String;Lcom/callapp/framework/phone/Phone;)V

    .line 34
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v2, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->BLOCK:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    const/4 v3, 0x0

    .line 1091
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    return-void

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/action/local/BlockOrUnblockCallAction$1;->b:Landroid/content/Context;

    invoke-static {v0, v2, v3}, Lcom/callapp/contacts/manager/BlockManager;->b(Landroid/content/Context;Ljava/lang/String;Lcom/callapp/framework/phone/Phone;)V

    return-void
.end method
