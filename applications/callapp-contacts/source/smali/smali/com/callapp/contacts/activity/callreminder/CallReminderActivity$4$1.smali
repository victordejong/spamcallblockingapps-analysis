.class Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$4$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$4;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$4;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$4;Ljava/lang/String;J)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$4$1;->c:Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$4;

    iput-object p2, p0, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$4$1;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$4$1;->b:J

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 5

    .line 156
    new-instance v0, Lcom/callapp/contacts/loader/api/ContactLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/api/ContactLoader;-><init>()V

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->deviceId:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->emails:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v4, Lcom/callapp/contacts/model/contact/ContactField;->genomeData:Lcom/callapp/contacts/model/contact/ContactField;

    .line 157
    invoke-static {v1, v2, v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addFields(Ljava/util/Collection;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/loader/device/DeviceIdLoader;

    invoke-direct {v1}, Lcom/callapp/contacts/loader/device/DeviceIdLoader;-><init>()V

    .line 158
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/loader/device/DeviceDataLoader;

    invoke-direct {v1}, Lcom/callapp/contacts/loader/device/DeviceDataLoader;-><init>()V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/loader/device/CacheLoader;

    invoke-direct {v1}, Lcom/callapp/contacts/loader/device/CacheLoader;-><init>()V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/loader/external/NotificationTelegramLoader;

    invoke-direct {v1}, Lcom/callapp/contacts/loader/external/NotificationTelegramLoader;-><init>()V

    .line 159
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/loader/external/NotificationViberLoader;

    invoke-direct {v1}, Lcom/callapp/contacts/loader/external/NotificationViberLoader;-><init>()V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/loader/LocalGenomeLoader;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/callapp/contacts/loader/LocalGenomeLoader;-><init>(Z)V

    .line 160
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->setLoadOnlyFromCache()Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    .line 162
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$4$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    iget-wide v2, p0, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$4$1;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/loader/api/ContactLoader;->load(Lcom/callapp/framework/phone/Phone;J)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    .line 163
    invoke-static {}, Lcom/callapp/contacts/manager/ActionsManager;->get()Lcom/callapp/contacts/manager/ActionsManager;

    move-result-object v1

    const-class v2, Lcom/callapp/contacts/action/local/AddCallReminderAction;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/ActionsManager;->a(Ljava/lang/Class;)Lcom/callapp/contacts/action/Action;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/action/local/AddCallReminderAction;

    iget-object v2, p0, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$4$1;->c:Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$4;

    iget-object v2, v2, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$4;->a:Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/callapp/contacts/action/local/AddCallReminderAction;->b(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V

    return-void
.end method
