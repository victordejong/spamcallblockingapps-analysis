.class Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/event/listener/Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/callapp/contacts/event/listener/Listener<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5$3;->a:Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3

    .line 261
    iget-object p1, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5$3;->a:Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5;

    iget-object p1, p1, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5;->a:Lcom/callapp/contacts/model/ReminderData;

    check-cast p1, Lcom/callapp/contacts/activity/blocked/SpamReminderData;

    iget-boolean p1, p1, Lcom/callapp/contacts/activity/blocked/SpamReminderData;->isUserData:Z

    if-nez p1, :cond_0

    .line 262
    iget-object p1, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5$3;->a:Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5;

    iget-object p1, p1, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5;->a:Lcom/callapp/contacts/model/ReminderData;

    iget-object p1, p1, Lcom/callapp/contacts/model/ReminderData;->phone:Lcom/callapp/framework/phone/Phone;

    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/manager/BlockManager;->a(Ljava/lang/String;)J

    .line 264
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5$3;->a:Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5;

    iget-object p1, p1, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5;->b:Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedAdapterEvents;

    if-eqz p1, :cond_1

    .line 265
    iget-object p1, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5$3;->a:Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5;

    iget-object p1, p1, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5;->b:Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedAdapterEvents;

    iget-object v0, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5$3;->a:Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5;

    iget-object v0, v0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5;->a:Lcom/callapp/contacts/model/ReminderData;

    iget-object v0, v0, Lcom/callapp/contacts/model/ReminderData;->phone:Lcom/callapp/framework/phone/Phone;

    invoke-interface {p1, v0}, Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedAdapterEvents;->a(Lcom/callapp/framework/phone/Phone;)V

    .line 269
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/manager/ContactLoaderManager;->get()Lcom/callapp/contacts/manager/ContactLoaderManager;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5$3;->a:Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5;

    iget-object v0, v0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5;->a:Lcom/callapp/contacts/model/ReminderData;

    iget-object v0, v0, Lcom/callapp/contacts/model/ReminderData;->phone:Lcom/callapp/framework/phone/Phone;

    iget-object v1, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5$3;->a:Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5;

    iget-object v1, v1, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5;->a:Lcom/callapp/contacts/model/ReminderData;

    iget-wide v1, v1, Lcom/callapp/contacts/model/ReminderData;->contactId:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/callapp/contacts/manager/ContactLoaderManager;->getContactDataOnlyIfAlreadyLoaded(Lcom/callapp/framework/phone/Phone;J)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 271
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Lcom/callapp/contacts/model/contact/ContactData;

    goto :goto_0

    .line 273
    :cond_2
    new-instance p1, Lcom/callapp/contacts/loader/api/ContactLoader;

    invoke-direct {p1}, Lcom/callapp/contacts/loader/api/ContactLoader;-><init>()V

    .line 274
    invoke-virtual {p1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addDeviceDataAndFastPhotoNameLoaders()Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 275
    iget-object v0, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5$3;->a:Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5;

    iget-object v0, v0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5;->a:Lcom/callapp/contacts/model/ReminderData;

    iget-object v0, v0, Lcom/callapp/contacts/model/ReminderData;->phone:Lcom/callapp/framework/phone/Phone;

    iget-object v1, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5$3;->a:Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5;

    iget-object v1, v1, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5;->a:Lcom/callapp/contacts/model/ReminderData;

    iget-wide v1, v1, Lcom/callapp/contacts/model/ReminderData;->contactId:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/callapp/contacts/loader/api/ContactLoader;->load(Lcom/callapp/framework/phone/Phone;J)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p1

    .line 278
    :goto_0
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/callapp/contacts/util/UserCorrectedInfoUtil;->a(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/framework/phone/Phone;Z)V

    .line 280
    invoke-static {p1}, Lcom/callapp/contacts/loader/FastCacheDataManager;->c(Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 282
    sget-object p1, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v0, Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v2, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->CONTACTS:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    .line 1091
    invoke-virtual {p1, v0, v2, v1}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    .line 284
    iget-object p1, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5$3;->a:Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5;

    iget-object p1, p1, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5;->b:Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedAdapterEvents;

    if-eqz p1, :cond_3

    .line 285
    iget-object p1, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5$3;->a:Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5;

    iget-object p1, p1, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5;->b:Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedAdapterEvents;

    invoke-interface {p1}, Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedAdapterEvents;->b()V

    :cond_3
    return-void
.end method
