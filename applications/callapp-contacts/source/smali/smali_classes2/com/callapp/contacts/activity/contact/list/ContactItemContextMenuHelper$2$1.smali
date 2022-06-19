.class Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$2$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$2;->onClickListener(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

.field final synthetic c:Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$2;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$2;Landroid/app/Activity;Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$2$1;->c:Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$2;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$2$1;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$2$1;->b:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 10

    .line 102
    new-instance v0, Lcom/callapp/contacts/loader/api/ContactLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/api/ContactLoader;-><init>()V

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->deviceId:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->emails:Lcom/callapp/contacts/model/contact/ContactField;

    .line 103
    invoke-static {v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addFields(Ljava/util/Collection;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/loader/device/DeviceIdLoader;

    invoke-direct {v1}, Lcom/callapp/contacts/loader/device/DeviceIdLoader;-><init>()V

    .line 104
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/loader/device/DeviceDataLoader;

    invoke-direct {v1}, Lcom/callapp/contacts/loader/device/DeviceDataLoader;-><init>()V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->setLoadOnlyFromCache()Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->setIterativeLoad()Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 106
    :goto_0
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$2$1;->c:Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$2;

    iget-object v3, v3, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$2;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_1

    .line 107
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$2$1;->c:Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$2;

    iget-object v3, v3, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$2;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    .line 109
    invoke-virtual {v3}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v5

    iget-wide v6, v3, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->contactId:J

    invoke-virtual {v0, v5, v6, v7}, Lcom/callapp/contacts/loader/api/ContactLoader;->load(Lcom/callapp/framework/phone/Phone;J)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v5

    .line 111
    iget-object v6, p0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$2$1;->a:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v8, v3, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->contactId:J

    .line 112
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 111
    invoke-virtual {v6, v3, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    .line 115
    invoke-virtual {v5}, Lcom/callapp/contacts/model/contact/ContactData;->clearDeviceId()V

    .line 116
    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->deviceIdChanged:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {v5, v3}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$2$1;->b:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-virtual {v0}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->dismiss()V

    .line 121
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v0

    const v2, 0x7f12028b

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$2$1;->c:Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$2;

    iget-object v6, v6, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$2;->b:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v2, v5}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1111
    invoke-virtual {v0, v1, v4}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 123
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$2$1;->c:Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$2;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$2;->c:Lcom/callapp/contacts/action/ActionDoneListener;

    if-eqz v0, :cond_2

    .line 124
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$2$1;->c:Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$2;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$2;->c:Lcom/callapp/contacts/action/ActionDoneListener;

    invoke-interface {v0, v3}, Lcom/callapp/contacts/action/ActionDoneListener;->a(Z)V

    :cond_2
    return-void
.end method
