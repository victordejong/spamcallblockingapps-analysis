.class public Lcom/callapp/contacts/sync/syncer/DeviceDataSyncer;
.super Lcom/callapp/contacts/sync/syncer/Syncer;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/callapp/contacts/sync/syncer/Syncer;-><init>()V

    return-void
.end method

.method private a()V
    .locals 6

    .line 85
    invoke-static {}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->getContactIdToThumbnailUriMap()Ljava/util/Map;

    move-result-object v0

    .line 86
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 87
    iget-object v4, p0, Lcom/callapp/contacts/sync/syncer/DeviceDataSyncer;->syncContext:Lcom/callapp/contacts/sync/model/SyncContext;

    iget-object v4, v4, Lcom/callapp/contacts/sync/model/SyncContext;->allContacts:Ljava/util/Map;

    invoke-static {v4}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Map;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/callapp/contacts/sync/syncer/DeviceDataSyncer;->syncContext:Lcom/callapp/contacts/sync/model/SyncContext;

    iget-object v4, v4, Lcom/callapp/contacts/sync/model/SyncContext;->allContacts:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 88
    iget-object v4, p0, Lcom/callapp/contacts/sync/syncer/DeviceDataSyncer;->syncContext:Lcom/callapp/contacts/sync/model/SyncContext;

    iget-object v4, v4, Lcom/callapp/contacts/sync/model/SyncContext;->allContacts:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/callapp/contacts/model/contact/ContactData;

    .line 89
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 90
    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 91
    invoke-virtual {v4}, Lcom/callapp/contacts/model/contact/ContactData;->assertDeviceDataExist()V

    .line 92
    invoke-virtual {v4}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/callapp/contacts/model/contact/DeviceData;->setThumbnailUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private b()V
    .locals 10

    .line 99
    invoke-static {}, Lcom/callapp/contacts/manager/SuggestContactManager;->getAllSuggestionMap()Ljava/util/Map;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/callapp/contacts/sync/syncer/DeviceDataSyncer;->syncContext:Lcom/callapp/contacts/sync/model/SyncContext;

    iget-object v1, v1, Lcom/callapp/contacts/sync/model/SyncContext;->allContacts:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 102
    iget-object v4, p0, Lcom/callapp/contacts/sync/syncer/DeviceDataSyncer;->syncContext:Lcom/callapp/contacts/sync/model/SyncContext;

    iget-object v4, v4, Lcom/callapp/contacts/sync/model/SyncContext;->allContacts:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/model/contact/ContactData;

    .line 103
    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    if-nez v3, :cond_0

    .line 105
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 108
    :cond_0
    new-instance v4, Lcom/callapp/contacts/model/contact/SuggestionData;

    invoke-direct {v4}, Lcom/callapp/contacts/model/contact/SuggestionData;-><init>()V

    .line 109
    invoke-virtual {v2, v3}, Lcom/callapp/contacts/model/contact/ContactData;->setSuggestionMap(Landroid/util/SparseArray;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 110
    :goto_1
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 111
    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 112
    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 113
    new-instance v9, Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-direct {v9, v8, v5}, Lcom/callapp/common/model/json/JSONSocialNetworkID;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v4, v9, v7}, Lcom/callapp/contacts/model/contact/SuggestionData;->setSocialIdByNetId(Lcom/callapp/common/model/json/JSONSocialNetworkID;I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 115
    :cond_1
    invoke-virtual {v2, v4}, Lcom/callapp/contacts/model/contact/ContactData;->setSuggestionData(Lcom/callapp/contacts/model/contact/SuggestionData;)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public needsDeviceData()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onSyncContact(Lcom/callapp/contacts/sync/model/SyncerContext;)V
    .locals 0

    .line 62
    invoke-virtual {p1}, Lcom/callapp/contacts/sync/model/SyncerContext;->markFullySynced()V

    return-void
.end method

.method public onSyncStart()V
    .locals 14

    .line 67
    const-class v0, Lcom/callapp/contacts/sync/syncer/DeviceDataSyncer;

    invoke-super {p0}, Lcom/callapp/contacts/sync/syncer/Syncer;->onSyncStart()V

    .line 1120
    iget-object v1, p0, Lcom/callapp/contacts/sync/syncer/DeviceDataSyncer;->syncContext:Lcom/callapp/contacts/sync/model/SyncContext;

    iget-object v1, v1, Lcom/callapp/contacts/sync/model/SyncContext;->syncers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/sync/syncer/Syncer;

    .line 1121
    invoke-virtual {v2}, Lcom/callapp/contacts/sync/syncer/Syncer;->needsDeviceData()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    .line 70
    invoke-virtual {p0, v4}, Lcom/callapp/contacts/sync/syncer/DeviceDataSyncer;->setSyncEnabled(Z)V

    return-void

    .line 74
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const-string v1, "Sync loading websites..."

    .line 1195
    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1196
    iget-object v1, p0, Lcom/callapp/contacts/sync/syncer/DeviceDataSyncer;->syncContext:Lcom/callapp/contacts/sync/model/SyncContext;

    iget-object v1, v1, Lcom/callapp/contacts/sync/model/SyncContext;->allContacts:Ljava/util/Map;

    .line 1197
    new-instance v2, Lcom/callapp/contacts/framework/dao/ContentQuery;

    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v2, v5}, Lcom/callapp/contacts/framework/dao/ContentQuery;-><init>(Landroid/net/Uri;)V

    const/4 v5, 0x3

    new-array v6, v5, [Lcom/callapp/contacts/framework/dao/column/Column;

    sget-object v7, Lcom/callapp/contacts/model/Constants;->CONTACT_ID_COLUMN:Lcom/callapp/contacts/framework/dao/column/LongColumn;

    aput-object v7, v6, v4

    sget-object v7, Lcom/callapp/contacts/model/Constants;->TYPE_COLUMN:Lcom/callapp/contacts/framework/dao/column/IntColumn;

    aput-object v7, v6, v3

    sget-object v7, Lcom/callapp/contacts/model/Constants;->DATA_COLUMN:Lcom/callapp/contacts/framework/dao/column/StringColumn;

    const/4 v8, 0x2

    aput-object v7, v6, v8

    invoke-virtual {v2, v6}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a([Lcom/callapp/contacts/framework/dao/column/Column;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v2

    sget-object v6, Lcom/callapp/contacts/model/Constants;->MIMETYPE_COLUMN:Lcom/callapp/contacts/framework/dao/column/StringColumn;

    const-string v7, "="

    const-string v9, "vnd.android.cursor.item/website"

    .line 1198
    invoke-virtual {v2, v6, v7, v9}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Lcom/callapp/contacts/framework/dao/column/Column;Ljava/lang/String;Ljava/lang/Object;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v2

    new-instance v6, Lcom/callapp/contacts/sync/syncer/DeviceDataSyncer$1;

    invoke-direct {v6, p0, v1}, Lcom/callapp/contacts/sync/syncer/DeviceDataSyncer$1;-><init>(Lcom/callapp/contacts/sync/syncer/DeviceDataSyncer;Ljava/util/Map;)V

    invoke-virtual {v2, v6}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/RowVisitor;)Z

    const-string v1, "Sync loading positives..."

    .line 2130
    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 2132
    invoke-static {}, Lcom/callapp/contacts/loader/UserPositiveNegativeManager;->getAll()Ljava/util/List;

    move-result-object v1

    .line 2134
    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2137
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;

    .line 2141
    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;->getContactId()J

    move-result-wide v9

    .line 2142
    iget-object v6, p0, Lcom/callapp/contacts/sync/syncer/DeviceDataSyncer;->syncContext:Lcom/callapp/contacts/sync/model/SyncContext;

    iget-object v6, v6, Lcom/callapp/contacts/sync/model/SyncContext;->allContacts:Ljava/util/Map;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/callapp/contacts/model/contact/ContactData;

    if-eqz v6, :cond_3

    .line 2147
    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;->getUserPositiveSocialData()Lio/objectbox/relation/ToMany;

    move-result-object v9

    .line 2149
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;

    .line 2151
    invoke-virtual {v10}, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;->getProfileId()Ljava/lang/String;

    move-result-object v11

    .line 2152
    invoke-static {v11}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 2156
    invoke-virtual {v10}, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;->isSure()Z

    move-result v12

    .line 2157
    invoke-virtual {v10}, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;->getSocialNetworkId()I

    move-result v10

    .line 2158
    new-instance v13, Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-direct {v13, v11, v12}, Lcom/callapp/common/model/json/JSONSocialNetworkID;-><init>(Ljava/lang/String;Z)V

    .line 2159
    invoke-static {v6, v10, v13}, Lcom/callapp/contacts/model/contact/ContactDataUtils;->updateSocialNetwork(Lcom/callapp/contacts/model/contact/ContactData;ILcom/callapp/common/model/json/JSONSocialNetworkID;)V

    goto :goto_1

    .line 2163
    :cond_5
    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;->getUserNegativeSocialData()Lio/objectbox/relation/ToMany;

    move-result-object v2

    .line 2164
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData;

    .line 2167
    invoke-virtual {v9}, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData;->getProfileId()Ljava/lang/String;

    move-result-object v10

    .line 2168
    invoke-static {v10}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 2173
    invoke-virtual {v6}, Lcom/callapp/contacts/model/contact/ContactData;->getNegativesMap()Landroid/util/SparseArray;

    move-result-object v11

    .line 2174
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v12

    if-nez v12, :cond_7

    .line 2175
    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    .line 2176
    invoke-virtual {v6, v11}, Lcom/callapp/contacts/model/contact/ContactData;->setNegativesMap(Landroid/util/SparseArray;)V

    .line 2180
    :cond_7
    invoke-virtual {v9}, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData;->getSocialNetworkId()I

    move-result v9

    .line 2181
    invoke-virtual {v11, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    if-nez v12, :cond_8

    .line 2183
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 2184
    invoke-virtual {v11, v9, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2187
    :cond_8
    invoke-interface {v12, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 78
    :cond_9
    invoke-direct {p0}, Lcom/callapp/contacts/sync/syncer/DeviceDataSyncer;->b()V

    const-string v1, "Sync loading birthdays..."

    .line 2274
    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 2275
    new-instance v1, Lcom/callapp/contacts/framework/dao/ContentQuery;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;-><init>(Landroid/net/Uri;)V

    sget-object v2, Lcom/callapp/contacts/model/Constants;->CONTACT_ID_COLUMN:Lcom/callapp/contacts/framework/dao/column/LongColumn;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/column/Column;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v1

    const-string v2, "data1"

    .line 2276
    invoke-virtual {v1, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/model/Constants;->MIMETYPE_COLUMN:Lcom/callapp/contacts/framework/dao/column/StringColumn;

    const-string v6, "vnd.android.cursor.item/contact_event"

    .line 2277
    invoke-virtual {v1, v2, v7, v6}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Lcom/callapp/contacts/framework/dao/column/Column;Ljava/lang/String;Ljava/lang/Object;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/model/Constants;->TYPE_COLUMN:Lcom/callapp/contacts/framework/dao/column/IntColumn;

    .line 2278
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v2, v7, v6}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Lcom/callapp/contacts/framework/dao/column/Column;Ljava/lang/String;Ljava/lang/Object;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/sync/syncer/DeviceDataSyncer$3;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/sync/syncer/DeviceDataSyncer$3;-><init>(Lcom/callapp/contacts/sync/syncer/DeviceDataSyncer;)V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/RowVisitor;)Z

    const-string v1, "Sync loading phones..."

    .line 3235
    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 3236
    iget-object v0, p0, Lcom/callapp/contacts/sync/syncer/DeviceDataSyncer;->syncContext:Lcom/callapp/contacts/sync/model/SyncContext;

    iget-object v0, v0, Lcom/callapp/contacts/sync/model/SyncContext;->allContacts:Ljava/util/Map;

    .line 3237
    new-instance v1, Lcom/callapp/contacts/framework/dao/ContentQuery;

    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;-><init>(Landroid/net/Uri;)V

    new-array v2, v5, [Lcom/callapp/contacts/framework/dao/column/Column;

    sget-object v5, Lcom/callapp/contacts/model/Constants;->CONTACT_ID_COLUMN:Lcom/callapp/contacts/framework/dao/column/LongColumn;

    aput-object v5, v2, v4

    sget-object v4, Lcom/callapp/contacts/model/Constants;->TYPE_COLUMN:Lcom/callapp/contacts/framework/dao/column/IntColumn;

    aput-object v4, v2, v3

    sget-object v3, Lcom/callapp/contacts/model/Constants;->DATA_COLUMN:Lcom/callapp/contacts/framework/dao/column/StringColumn;

    aput-object v3, v2, v8

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a([Lcom/callapp/contacts/framework/dao/column/Column;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/sync/syncer/DeviceDataSyncer$2;

    invoke-direct {v2, p0, v0}, Lcom/callapp/contacts/sync/syncer/DeviceDataSyncer$2;-><init>(Lcom/callapp/contacts/sync/syncer/DeviceDataSyncer;Ljava/util/Map;)V

    .line 3238
    invoke-virtual {v1, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/RowVisitor;)Z

    .line 81
    invoke-direct {p0}, Lcom/callapp/contacts/sync/syncer/DeviceDataSyncer;->a()V

    return-void
.end method

.method public shouldSync()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public shouldSyncContact(Lcom/callapp/contacts/model/contact/ContactData;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
