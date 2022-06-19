.class Lcom/callapp/contacts/activity/identify/IdentifyContactsTaskManager$IdentifyContactsTask;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/identify/IdentifyContactsTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IdentifyContactsTask"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/callapp/contacts/activity/identify/IdentifyContactsTaskManager$1;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/callapp/contacts/activity/identify/IdentifyContactsTaskManager$IdentifyContactsTask;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 12

    .line 43
    sget-object v0, Lcom/callapp/contacts/activity/identify/IdentifyContactsTaskManager;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    invoke-static {}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->getContactsWithPhoneNumber()Ljava/util/List;

    move-result-object v1

    .line 49
    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 50
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    .line 52
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v4

    iget-object v5, v2, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->displayName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/framework/phone/Phone;->isValid()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 55
    new-instance v4, Lcom/callapp/contacts/loader/api/ContactLoader;

    invoke-direct {v4}, Lcom/callapp/contacts/loader/api/ContactLoader;-><init>()V

    new-instance v5, Lcom/callapp/contacts/loader/FastCacheDataLoader;

    invoke-direct {v5}, Lcom/callapp/contacts/loader/FastCacheDataLoader;-><init>()V

    invoke-virtual {v4, v5}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v4

    new-instance v5, Lcom/callapp/contacts/loader/device/CacheLoader;

    invoke-direct {v5}, Lcom/callapp/contacts/loader/device/CacheLoader;-><init>()V

    invoke-virtual {v4, v5}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v4

    new-instance v5, Lcom/callapp/contacts/loader/LocalGenomeLoader;

    invoke-direct {v5, v3}, Lcom/callapp/contacts/loader/LocalGenomeLoader;-><init>(Z)V

    invoke-virtual {v4, v5}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v3

    .line 56
    invoke-virtual {v3}, Lcom/callapp/contacts/loader/api/ContactLoader;->setDisableContactEvents()Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/loader/api/ContactLoader;->setLoadOnlyFromCache()Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v3

    sget-object v4, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->NAME_FIELDS:Ljava/util/EnumSet;

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/loader/api/ContactLoader;->addFields(Ljava/util/Collection;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v3

    .line 58
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v4

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->getContactId()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/callapp/contacts/loader/api/ContactLoader;->load(Lcom/callapp/framework/phone/Phone;J)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v3

    .line 59
    invoke-virtual {v3}, Lcom/callapp/contacts/model/contact/ContactData;->updateFullName()V

    .line 61
    invoke-virtual {v3}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/callapp/contacts/model/contact/ContactData;->isContactInDevice()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 62
    iget-wide v4, v2, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->contactId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v4, Lcom/callapp/contacts/activity/identify/IdentifyContactsTaskManager;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Found match: Phone "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " <-> Name: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 70
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 71
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [J

    const/4 v2, 0x0

    .line 73
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 74
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    .line 78
    array-length v2, v1

    const/4 v4, 0x1

    if-le v2, v4, :cond_3

    .line 79
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v5

    const/4 v8, 0x0

    array-length v2, v1

    int-to-double v9, v2

    new-array v11, v3, [Ljava/lang/String;

    const-string v6, "Optimize contacts"

    const-string v7, "Contacts to optimize"

    invoke-virtual/range {v5 .. v11}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    .line 83
    :cond_3
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    if-eqz v1, :cond_4

    .line 85
    array-length v4, v1

    if-lez v4, :cond_4

    .line 86
    array-length v4, v1

    :goto_2
    if-ge v3, v4, :cond_4

    aget-wide v5, v1, v3

    .line 87
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 91
    :cond_4
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->fo:Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/callapp/contacts/manager/preferences/prefs/LongPref;->set(Ljava/lang/Object;)V

    .line 92
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->fn:Lcom/callapp/contacts/manager/preferences/prefs/LongSetPref;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/preferences/prefs/LongSetPref;->set(Ljava/lang/Object;)V

    .line 93
    sget-object v1, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v2, Lcom/callapp/contacts/activity/interfaces/IdentifyContactsChangedListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v3, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->IDENTIFY_CONTACTS_FINISHED:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    invoke-virtual {v1, v2, v3}, Lcom/callapp/contacts/event/bus/EventBus;->c(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 95
    sget-object v1, Lcom/callapp/contacts/activity/identify/IdentifyContactsTaskManager;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Finished job. Found: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " Contacts to identify"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    :cond_5
    return-void
.end method
