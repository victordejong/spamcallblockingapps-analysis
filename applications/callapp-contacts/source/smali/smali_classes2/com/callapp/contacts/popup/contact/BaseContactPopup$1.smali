.class Lcom/callapp/contacts/popup/contact/BaseContactPopup$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/popup/contact/BaseContactPopup;->a(JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/callapp/contacts/popup/contact/BaseContactPopup;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/contact/BaseContactPopup;Z)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/BaseContactPopup$1;->b:Lcom/callapp/contacts/popup/contact/BaseContactPopup;

    iput-boolean p2, p0, Lcom/callapp/contacts/popup/contact/BaseContactPopup$1;->a:Z

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 5

    .line 95
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/BaseContactPopup$1;->b:Lcom/callapp/contacts/popup/contact/BaseContactPopup;

    iget-object v0, v0, Lcom/callapp/contacts/popup/contact/BaseContactPopup;->c:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-static {v0}, Lcom/callapp/contacts/model/contact/ContactDataUtils;->verifyContactInDevice(Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 96
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/BaseContactPopup$1;->b:Lcom/callapp/contacts/popup/contact/BaseContactPopup;

    iget-object v0, v0, Lcom/callapp/contacts/popup/contact/BaseContactPopup;->c:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 99
    iget-boolean v0, p0, Lcom/callapp/contacts/popup/contact/BaseContactPopup$1;->a:Z

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/BaseContactPopup$1;->b:Lcom/callapp/contacts/popup/contact/BaseContactPopup;

    iget-object v0, v0, Lcom/callapp/contacts/popup/contact/BaseContactPopup;->c:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->assertDeviceDataExist()V

    .line 101
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/BaseContactPopup$1;->b:Lcom/callapp/contacts/popup/contact/BaseContactPopup;

    iget-object v0, v0, Lcom/callapp/contacts/popup/contact/BaseContactPopup;->c:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v0

    const/4 v1, 0x0

    .line 102
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/model/contact/DeviceData;->setPhotoUrl(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/BaseContactPopup$1;->b:Lcom/callapp/contacts/popup/contact/BaseContactPopup;

    iget-object v0, v0, Lcom/callapp/contacts/popup/contact/BaseContactPopup;->c:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->resetDevicePhotoIfNeeded()V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/BaseContactPopup$1;->b:Lcom/callapp/contacts/popup/contact/BaseContactPopup;

    iget-object v0, v0, Lcom/callapp/contacts/popup/contact/BaseContactPopup;->c:Lcom/callapp/contacts/model/contact/ContactData;

    iget-object v1, p0, Lcom/callapp/contacts/popup/contact/BaseContactPopup$1;->b:Lcom/callapp/contacts/popup/contact/BaseContactPopup;

    iget-object v1, v1, Lcom/callapp/contacts/popup/contact/BaseContactPopup;->c:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/util/UserCorrectedInfoUtil;->a(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/framework/phone/Phone;Z)V

    .line 109
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/BaseContactPopup$1;->b:Lcom/callapp/contacts/popup/contact/BaseContactPopup;

    iget-object v0, v0, Lcom/callapp/contacts/popup/contact/BaseContactPopup;->c:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->updatePhoto()V

    .line 110
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/BaseContactPopup$1;->b:Lcom/callapp/contacts/popup/contact/BaseContactPopup;

    iget-object v0, v0, Lcom/callapp/contacts/popup/contact/BaseContactPopup;->c:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-static {v0}, Lcom/callapp/contacts/loader/FastCacheDataManager;->b(Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 113
    invoke-static {}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->b()V

    .line 117
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/BaseContactPopup$1;->b:Lcom/callapp/contacts/popup/contact/BaseContactPopup;

    iget-object v0, v0, Lcom/callapp/contacts/popup/contact/BaseContactPopup;->c:Lcom/callapp/contacts/model/contact/ContactData;

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->photoUrl:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->deviceIdChanged:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Ljava/util/Set;)V

    :cond_1
    return-void
.end method
