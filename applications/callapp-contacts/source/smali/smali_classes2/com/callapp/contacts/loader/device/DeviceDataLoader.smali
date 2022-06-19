.class public Lcom/callapp/contacts/loader/device/DeviceDataLoader;
.super Lcom/callapp/contacts/loader/DeviceIdAndPhoneBasedContactLoader;
.source "SourceFile"


# instance fields
.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/callapp/contacts/loader/DeviceIdAndPhoneBasedContactLoader;-><init>()V

    const-string v0, "contactRemovedOrAddedToContactListKey"

    .line 22
    iput-object v0, p0, Lcom/callapp/contacts/loader/device/DeviceDataLoader;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/loader/api/LoadContext;)V
    .locals 11

    .line 32
    iget-object v0, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    .line 33
    iget-object v1, p1, Lcom/callapp/contacts/loader/api/LoadContext;->b:Ljava/util/Set;

    .line 35
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->assertDeviceDataExist()V

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 38
    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->deviceId:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 39
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/DeviceData;->getDeviceId()J

    move-result-wide v3

    const/4 v1, 0x1

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_0

    .line 40
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v8

    cmp-long v10, v8, v5

    if-nez v10, :cond_0

    .line 42
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils;->a(JLcom/callapp/framework/phone/Phone;)V

    :goto_0
    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    if-nez v7, :cond_1

    .line 44
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v3

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1

    .line 46
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils;->b(JLcom/callapp/framework/phone/Phone;)V

    goto :goto_0

    .line 49
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v1

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/callapp/contacts/model/contact/DeviceData;->setDeviceId(J)V

    .line 52
    :cond_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1136
    iget-object v1, p1, Lcom/callapp/contacts/loader/api/LoadContext;->e:Lcom/callapp/contacts/loader/api/ContactLoader;

    const-string v2, "contactRemovedOrAddedToContactListKey"

    invoke-virtual {v1, v2, v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    invoke-super {p0, p1}, Lcom/callapp/contacts/loader/DeviceIdAndPhoneBasedContactLoader;->a(Lcom/callapp/contacts/loader/api/LoadContext;)V

    return-void
.end method

.method public final c(Lcom/callapp/contacts/loader/api/LoadContext;)V
    .locals 11

    .line 58
    iget-object v6, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    .line 59
    iget-object v7, p1, Lcom/callapp/contacts/loader/api/LoadContext;->b:Ljava/util/Set;

    .line 61
    invoke-virtual {p1}, Lcom/callapp/contacts/loader/api/LoadContext;->b()Lcom/callapp/contacts/framework/util/MultiTaskRunner;

    move-result-object v8

    .line 2129
    iget-object v0, p1, Lcom/callapp/contacts/loader/api/LoadContext;->e:Lcom/callapp/contacts/loader/api/ContactLoader;

    const-string v1, "contactRemovedOrAddedToContactListKey"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 62
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 64
    invoke-virtual {v6}, Lcom/callapp/contacts/model/contact/ContactData;->isContactInDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    invoke-virtual {v6}, Lcom/callapp/contacts/model/contact/ContactData;->clearDeviceData()V

    .line 66
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->imAddresses:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v7, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 67
    sget-object v0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->WHATSAPP:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    invoke-virtual {v6}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->a(Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;Lcom/callapp/framework/phone/Phone;)Z

    move-result v0

    invoke-virtual {v6, v0}, Lcom/callapp/contacts/model/contact/ContactData;->setWhatsAppDataExtraction(Z)V

    goto/16 :goto_0

    .line 70
    :cond_0
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->phones:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v7, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    new-instance v0, Lcom/callapp/contacts/loader/device/LoadPhonesTask;

    invoke-direct {v0, v6}, Lcom/callapp/contacts/loader/device/LoadPhonesTask;-><init>(Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v8, v0}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 74
    :cond_1
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->emails:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v7, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    new-instance v0, Lcom/callapp/contacts/loader/device/LoadEmailsTask;

    invoke-direct {v0, v6}, Lcom/callapp/contacts/loader/device/LoadEmailsTask;-><init>(Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v8, v0}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 78
    :cond_2
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->imAddresses:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v7, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 79
    new-instance v0, Lcom/callapp/contacts/loader/device/LoadImFromRawContactsTask;

    invoke-direct {v0, v6}, Lcom/callapp/contacts/loader/device/LoadImFromRawContactsTask;-><init>(Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v8, v0}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 82
    :cond_3
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->addresses:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v7, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 83
    new-instance v0, Lcom/callapp/contacts/loader/device/LoadAddressesTask;

    invoke-direct {v0, v6}, Lcom/callapp/contacts/loader/device/LoadAddressesTask;-><init>(Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v8, v0}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 86
    :cond_4
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->organizations:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v7, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 87
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->websites:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v7, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v1, 0x0

    .line 88
    sget-object v4, Lcom/callapp/contacts/model/contact/ContactField;->events:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v4, v0, v1

    const/4 v1, 0x1

    sget-object v4, Lcom/callapp/contacts/model/contact/ContactField;->birthday:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v4, v0, v1

    invoke-static {v7, v0}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v4

    .line 89
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->imAddresses:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v7, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v2, :cond_5

    if-nez v3, :cond_5

    if-nez v4, :cond_5

    if-eqz v5, :cond_6

    .line 92
    :cond_5
    new-instance v10, Lcom/callapp/contacts/loader/device/LoadContactsContractData;

    move-object v0, v10

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/loader/device/LoadContactsContractData;-><init>(Lcom/callapp/contacts/model/contact/ContactData;ZZZZ)V

    invoke-virtual {v8, v10}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 95
    :cond_6
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->names:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v7, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 96
    new-instance v0, Lcom/callapp/contacts/loader/device/LoadNamesTask;

    invoke-direct {v0, v6}, Lcom/callapp/contacts/loader/device/LoadNamesTask;-><init>(Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v8, v0}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    :cond_7
    if-eqz v9, :cond_8

    .line 99
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v7, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 100
    new-instance v0, Lcom/callapp/contacts/loader/device/DeviceDataLoader$1;

    invoke-direct {v0, p0, v6}, Lcom/callapp/contacts/loader/device/DeviceDataLoader$1;-><init>(Lcom/callapp/contacts/loader/device/DeviceDataLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v8, v0}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    :cond_8
    :goto_0
    if-nez v9, :cond_9

    .line 115
    sget-object v0, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->SOCIAL_NETWORKS_IDS:Ljava/util/EnumSet;

    invoke-static {v7, v0}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 116
    :cond_9
    new-instance v0, Lcom/callapp/contacts/loader/device/LoadSocialNetworksIdTask;

    invoke-direct {v0, v6}, Lcom/callapp/contacts/loader/device/LoadSocialNetworksIdTask;-><init>(Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v8, v0}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 119
    :cond_a
    iget-boolean v0, p0, Lcom/callapp/contacts/loader/device/DeviceDataLoader;->d:Z

    invoke-virtual {p1, v8, v0}, Lcom/callapp/contacts/loader/api/LoadContext;->a(Lcom/callapp/contacts/framework/util/MultiTaskRunner;Z)V

    if-eqz v9, :cond_b

    .line 122
    invoke-static {}, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->n()V

    .line 126
    invoke-virtual {v6}, Lcom/callapp/contacts/model/contact/ContactData;->updateImAddresses()V

    .line 127
    invoke-virtual {v6}, Lcom/callapp/contacts/model/contact/ContactData;->updateEmails()V

    .line 128
    invoke-virtual {v6}, Lcom/callapp/contacts/model/contact/ContactData;->updateAddresses()V

    .line 129
    invoke-virtual {v6}, Lcom/callapp/contacts/model/contact/ContactData;->updateWebsites()V

    .line 130
    invoke-virtual {v6}, Lcom/callapp/contacts/model/contact/ContactData;->updateFullName()V

    .line 131
    invoke-virtual {v6}, Lcom/callapp/contacts/model/contact/ContactData;->updateNames()V

    .line 133
    sget-object p1, Lcom/callapp/contacts/model/contact/ContactField;->deviceId:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {v6, p1}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    .line 136
    :cond_b
    sget-object p1, Lcom/callapp/contacts/model/contact/ContactField;->deviceData:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {v6, p1}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    return-void
.end method

.method public getListenFields()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation

    .line 27
    sget-object v0, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->DEVICE_ID_MONITORED:Ljava/util/EnumSet;

    return-object v0
.end method
