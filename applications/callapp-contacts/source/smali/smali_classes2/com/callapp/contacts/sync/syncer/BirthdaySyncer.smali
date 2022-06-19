.class public Lcom/callapp/contacts/sync/syncer/BirthdaySyncer;
.super Lcom/callapp/contacts/sync/syncer/Syncer;
.source "SourceFile"


# instance fields
.field private a:Lcom/callapp/contacts/loader/api/ContactLoader;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/callapp/contacts/model/PersonData;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/callapp/contacts/sync/syncer/Syncer;-><init>()V

    return-void
.end method

.method private a(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;)V
    .locals 4

    .line 85
    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    :try_start_0
    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getFriendsListAsPersonData()Ljava/util/List;

    move-result-object v0

    .line 88
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 91
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/model/PersonData;

    .line 92
    invoke-virtual {v2}, Lcom/callapp/contacts/model/PersonData;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/sync/syncer/BirthdaySyncer;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getApiConstantNetworkId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/callapp/contacts/loader/social/QuotaReachedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 97
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getSyncPeriodMillis()J
    .locals 2

    const-wide/32 v0, 0x5265c00

    return-wide v0
.end method

.method public onSyncContact(Lcom/callapp/contacts/sync/model/SyncerContext;)V
    .locals 10

    .line 104
    iget-object v0, p1, Lcom/callapp/contacts/sync/model/SyncerContext;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    .line 105
    iget-object v1, p0, Lcom/callapp/contacts/sync/syncer/BirthdaySyncer;->a:Lcom/callapp/contacts/loader/api/ContactLoader;

    if-nez v1, :cond_0

    return-void

    .line 109
    :cond_0
    invoke-virtual {v1, v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->load(Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/contacts/model/contact/ContactData;

    .line 111
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v1

    .line 112
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v3

    .line 1235
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1237
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getFacebookId()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1238
    invoke-virtual {v5}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    .line 1239
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :cond_1
    invoke-static {v4}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Map;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 118
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 119
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 120
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2220
    iget-object v7, p0, Lcom/callapp/contacts/sync/syncer/BirthdaySyncer;->b:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    if-eqz v7, :cond_3

    .line 2222
    invoke-interface {v7, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2223
    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/callapp/contacts/model/PersonData;

    .line 2224
    invoke-virtual {v7}, Lcom/callapp/contacts/model/PersonData;->getBirthdayDayInMonth()Ljava/lang/Integer;

    move-result-object v8

    .line 2225
    invoke-virtual {v7}, Lcom/callapp/contacts/model/PersonData;->getBirthdayMonth()Ljava/lang/Integer;

    move-result-object v7

    if-eqz v8, :cond_3

    if-eqz v7, :cond_3

    .line 2227
    new-instance v9, Landroid/util/Pair;

    invoke-direct {v9, v8, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    :goto_1
    if-eqz v9, :cond_2

    .line 126
    invoke-static {v1, v2, v3, v6, v5}, Lcom/callapp/contacts/model/BirthdayManager;->getExistingContactWithSocialDataOrCreateNew(JLcom/callapp/framework/phone/Phone;ILjava/lang/String;)Lcom/callapp/contacts/model/objectbox/BirthdayData;

    move-result-object v7

    .line 128
    iget-object v8, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/callapp/contacts/model/objectbox/BirthdayData;->setDayOfMonth(I)V

    .line 129
    iget-object v8, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/callapp/contacts/model/objectbox/BirthdayData;->setMonth(I)V

    .line 130
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/callapp/contacts/model/objectbox/BirthdayData;->setDisplayName(Ljava/lang/String;)V

    .line 132
    invoke-static {v7}, Lcom/callapp/contacts/model/BirthdayManager;->insert(Lcom/callapp/contacts/model/objectbox/BirthdayData;)V

    .line 135
    iget-object v7, p0, Lcom/callapp/contacts/sync/syncer/BirthdaySyncer;->b:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 136
    invoke-static {v6}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Map;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 137
    invoke-interface {v6, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 143
    :cond_4
    invoke-static {v1, v2, v3}, Lcom/callapp/contacts/model/BirthdayManager;->removeAllSocialEntries(JLcom/callapp/framework/phone/Phone;)V

    .line 147
    :cond_5
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getBirthday()Lcom/callapp/common/model/json/JSONDate;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 149
    sget-object v4, Lcom/callapp/contacts/model/contact/ContactField;->birthday:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {v0, v4}, Lcom/callapp/contacts/model/contact/ContactData;->getDataSource(Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v4

    .line 151
    iget v4, v4, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    if-nez v4, :cond_7

    .line 153
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getBirthday()Lcom/callapp/common/model/json/JSONDate;

    move-result-object v4

    .line 155
    invoke-static {v1, v2, v3}, Lcom/callapp/contacts/model/BirthdayManager;->getExistingContactWithoutSocialDataOrCreateNew(JLcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/objectbox/BirthdayData;

    move-result-object v1

    .line 156
    invoke-virtual {v4}, Lcom/callapp/common/model/json/JSONDate;->getFormattedDay()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/model/objectbox/BirthdayData;->setDayOfMonth(I)V

    .line 157
    invoke-virtual {v4}, Lcom/callapp/common/model/json/JSONDate;->getFormattedMonth()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/model/objectbox/BirthdayData;->setMonth(I)V

    .line 158
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/model/objectbox/BirthdayData;->setDisplayName(Ljava/lang/String;)V

    .line 160
    invoke-static {v1}, Lcom/callapp/contacts/model/BirthdayManager;->insert(Lcom/callapp/contacts/model/objectbox/BirthdayData;)V

    goto :goto_2

    .line 163
    :cond_6
    invoke-static {v1, v2, v3}, Lcom/callapp/contacts/model/BirthdayManager;->removeDeviceDataEntries(JLcom/callapp/framework/phone/Phone;)V

    .line 166
    :cond_7
    :goto_2
    invoke-virtual {p1}, Lcom/callapp/contacts/sync/model/SyncerContext;->markFullySynced()V

    return-void
.end method

.method public onSyncEnd()Z
    .locals 6

    .line 171
    iget-object v0, p0, Lcom/callapp/contacts/sync/syncer/BirthdaySyncer;->syncContext:Lcom/callapp/contacts/sync/model/SyncContext;

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/sync/model/SyncContext;->isLongRunningSyncersAlreadyRunning(Lcom/callapp/contacts/sync/syncer/Syncer;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/sync/syncer/BirthdaySyncer;->isSyncEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3194
    iget-object v0, p0, Lcom/callapp/contacts/sync/syncer/BirthdaySyncer;->b:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 3195
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3198
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3200
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/model/PersonData;

    .line 3202
    invoke-virtual {v3}, Lcom/callapp/contacts/model/PersonData;->getId()Ljava/lang/String;

    move-result-object v4

    .line 3203
    invoke-virtual {v3}, Lcom/callapp/contacts/model/PersonData;->getBirthdayDayInMonth()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 3205
    invoke-static {v1, v4}, Lcom/callapp/contacts/model/BirthdayManager;->getExistingNonContactWithSocialNetworkOrCreateNew(ILjava/lang/String;)Lcom/callapp/contacts/model/objectbox/BirthdayData;

    move-result-object v4

    .line 3206
    invoke-virtual {v3}, Lcom/callapp/contacts/model/PersonData;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/callapp/contacts/model/objectbox/BirthdayData;->setDisplayName(Ljava/lang/String;)V

    .line 3207
    invoke-virtual {v3}, Lcom/callapp/contacts/model/PersonData;->getBirthdayMonth()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/callapp/contacts/model/objectbox/BirthdayData;->setMonth(I)V

    .line 3208
    invoke-virtual {v3}, Lcom/callapp/contacts/model/PersonData;->getBirthdayDayInMonth()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/callapp/contacts/model/objectbox/BirthdayData;->setDayOfMonth(I)V

    .line 3209
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3213
    :cond_2
    invoke-static {v2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3214
    invoke-static {v2}, Lcom/callapp/contacts/model/BirthdayManager;->insert(Ljava/util/Collection;)V

    .line 180
    :cond_3
    iget-object v0, p0, Lcom/callapp/contacts/sync/syncer/BirthdaySyncer;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 181
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    goto :goto_1

    .line 184
    :cond_4
    iget-object v0, p0, Lcom/callapp/contacts/sync/syncer/BirthdaySyncer;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 185
    iput-object v0, p0, Lcom/callapp/contacts/sync/syncer/BirthdaySyncer;->b:Ljava/util/Map;

    .line 187
    iput-object v0, p0, Lcom/callapp/contacts/sync/syncer/BirthdaySyncer;->a:Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 188
    invoke-super {p0}, Lcom/callapp/contacts/sync/syncer/Syncer;->onSyncEnd()Z

    move-result v0

    return v0
.end method

.method public onSyncStart()V
    .locals 4

    .line 55
    invoke-super {p0}, Lcom/callapp/contacts/sync/syncer/Syncer;->onSyncStart()V

    .line 56
    new-instance v0, Lcom/callapp/contacts/loader/api/ContactLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/api/ContactLoader;-><init>()V

    sget-object v1, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->NAME_FIELDS:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addFields(Ljava/util/Collection;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->emails:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->birthday:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 57
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addFields([Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->SOCIAL_NETWORKS_IDS:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addFields(Ljava/util/Collection;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->SYNC_SEARCH_SOCIAL_NETWORKS:Ljava/util/EnumSet;

    .line 58
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addFields(Ljava/util/Collection;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/loader/device/CacheLoader;

    invoke-direct {v1}, Lcom/callapp/contacts/loader/device/CacheLoader;-><init>()V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/loader/LocalGenomeLoader;

    invoke-direct {v1, v3}, Lcom/callapp/contacts/loader/LocalGenomeLoader;-><init>(Z)V

    .line 59
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/loader/external/GravatarLoader;

    invoke-direct {v1}, Lcom/callapp/contacts/loader/external/GravatarLoader;-><init>()V

    .line 60
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/loader/social/facebook/FacebookLoader;

    invoke-direct {v1}, Lcom/callapp/contacts/loader/social/facebook/FacebookLoader;-><init>()V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/loader/vk/VKLoader;

    invoke-direct {v1}, Lcom/callapp/contacts/loader/vk/VKLoader;-><init>()V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/loader/social/twitter/TwitterLoader;

    invoke-direct {v1}, Lcom/callapp/contacts/loader/social/twitter/TwitterLoader;-><init>()V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/loader/social/instagram/InstagramLoader;

    invoke-direct {v1}, Lcom/callapp/contacts/loader/social/instagram/InstagramLoader;-><init>()V

    .line 61
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/loader/social/pinterest/PinterestLoader;

    invoke-direct {v1}, Lcom/callapp/contacts/loader/social/pinterest/PinterestLoader;-><init>()V

    .line 62
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->setInSync()Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->setDisableContactEvents()Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->setLoadOnlyFromCache()Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/sync/syncer/BirthdaySyncer;->a:Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 1074
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/sync/syncer/BirthdaySyncer;->b:Ljava/util/Map;

    .line 1075
    invoke-static {}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->get()Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/callapp/contacts/sync/syncer/BirthdaySyncer;->a(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;)V

    return-void
.end method
