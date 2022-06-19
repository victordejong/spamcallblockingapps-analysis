.class Lcom/callapp/contacts/sync/syncer/DeviceDataSyncer$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/framework/dao/RowVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/sync/syncer/DeviceDataSyncer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/sync/syncer/DeviceDataSyncer;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/sync/syncer/DeviceDataSyncer;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/callapp/contacts/sync/syncer/DeviceDataSyncer$3;->a:Lcom/callapp/contacts/sync/syncer/DeviceDataSyncer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRow(Lcom/callapp/contacts/framework/dao/RowContext;)V
    .locals 4

    .line 282
    sget-object v0, Lcom/callapp/contacts/model/Constants;->CONTACT_ID_COLUMN:Lcom/callapp/contacts/framework/dao/column/LongColumn;

    iget-object v0, v0, Lcom/callapp/contacts/framework/dao/column/LongColumn;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/framework/dao/RowContext;->c(Ljava/lang/String;)J

    move-result-wide v0

    .line 283
    iget-object v2, p0, Lcom/callapp/contacts/sync/syncer/DeviceDataSyncer$3;->a:Lcom/callapp/contacts/sync/syncer/DeviceDataSyncer;

    iget-object v2, v2, Lcom/callapp/contacts/sync/syncer/DeviceDataSyncer;->syncContext:Lcom/callapp/contacts/sync/model/SyncContext;

    iget-object v2, v2, Lcom/callapp/contacts/sync/model/SyncContext;->allContacts:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/model/contact/ContactData;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "data1"

    .line 289
    invoke-virtual {p1, v1}, Lcom/callapp/contacts/framework/dao/RowContext;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 290
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 294
    :cond_1
    invoke-static {p1}, Lcom/callapp/contacts/util/date/DateUtils;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 298
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v1

    new-instance v2, Lcom/callapp/common/model/json/JSONDate;

    invoke-direct {v2, p1}, Lcom/callapp/common/model/json/JSONDate;-><init>(Ljava/util/Date;)V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/model/contact/DeviceData;->setBirthday(Lcom/callapp/common/model/json/JSONDate;)V

    .line 299
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->updateBirthDate()V

    .line 302
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/DeviceData;->getEvents()Ljava/util/Collection;

    move-result-object v1

    .line 303
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 304
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 305
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/callapp/contacts/model/contact/DeviceData;->setEvents(Ljava/util/Collection;)V

    .line 309
    :cond_2
    new-instance v2, Lcom/callapp/common/model/json/JSONEvent;

    invoke-direct {v2}, Lcom/callapp/common/model/json/JSONEvent;-><init>()V

    const/4 v3, 0x1

    .line 310
    invoke-virtual {v2, v3}, Lcom/callapp/common/model/json/JSONEvent;->setFromDevice(Z)V

    const/4 v3, 0x3

    .line 311
    invoke-virtual {v2, v3}, Lcom/callapp/common/model/json/JSONEvent;->setType(I)V

    .line 312
    new-instance v3, Lcom/callapp/common/model/json/JSONDate;

    invoke-direct {v3, p1}, Lcom/callapp/common/model/json/JSONDate;-><init>(Ljava/util/Date;)V

    invoke-virtual {v2, v3}, Lcom/callapp/common/model/json/JSONEvent;->setFormattedDate(Lcom/callapp/common/model/json/JSONDate;)V

    .line 313
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 314
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->updateEvents()V

    :cond_3
    return-void
.end method
