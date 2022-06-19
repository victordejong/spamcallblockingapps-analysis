.class Lcom/callapp/contacts/loader/device/DeviceDataLoader$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/loader/device/DeviceDataLoader;->c(Lcom/callapp/contacts/loader/api/LoadContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/model/contact/ContactData;

.field final synthetic b:Lcom/callapp/contacts/loader/device/DeviceDataLoader;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/loader/device/DeviceDataLoader;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/callapp/contacts/loader/device/DeviceDataLoader$1;->b:Lcom/callapp/contacts/loader/device/DeviceDataLoader;

    iput-object p2, p0, Lcom/callapp/contacts/loader/device/DeviceDataLoader$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 7

    .line 104
    iget-object v0, p0, Lcom/callapp/contacts/loader/device/DeviceDataLoader$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/callapp/contacts/loader/device/DeviceDataLoader$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v2

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lcom/callapp/contacts/loader/device/DeviceIdLoader;->a(Ljava/lang/String;JZZZ)Lcom/callapp/contacts/loader/device/DeviceIdLoader$DeviceDataResult;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v1, p0, Lcom/callapp/contacts/loader/device/DeviceDataLoader$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v1

    iget-object v0, v0, Lcom/callapp/contacts/loader/device/DeviceIdLoader$DeviceDataResult;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/model/contact/DeviceData;->setFullName(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/callapp/contacts/loader/device/DeviceDataLoader$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->updateFullName()V

    :cond_0
    return-void
.end method
