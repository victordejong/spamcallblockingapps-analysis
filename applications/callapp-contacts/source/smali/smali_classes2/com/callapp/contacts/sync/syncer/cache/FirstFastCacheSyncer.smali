.class public Lcom/callapp/contacts/sync/syncer/cache/FirstFastCacheSyncer;
.super Lcom/callapp/contacts/sync/syncer/Syncer;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/callapp/contacts/loader/api/ContactLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Lcom/callapp/contacts/sync/syncer/cache/FirstFastCacheSyncer$1;

    invoke-direct {v0}, Lcom/callapp/contacts/sync/syncer/cache/FirstFastCacheSyncer$1;-><init>()V

    sput-object v0, Lcom/callapp/contacts/sync/syncer/cache/FirstFastCacheSyncer;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/callapp/contacts/sync/syncer/Syncer;-><init>()V

    return-void
.end method

.method public static a(Lcom/callapp/contacts/sync/model/SyncerContext;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 6

    .line 162
    iget-boolean v0, p0, Lcom/callapp/contacts/sync/model/SyncerContext;->hasPhoto:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 163
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhotoUrls()Lcom/callapp/contacts/model/contact/PhotoUrls;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/callapp/contacts/sync/model/SyncerContext;->hasPhoto:Z

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/sync/model/SyncerContext;->social:Landroid/util/Pair;

    if-nez v0, :cond_3

    .line 167
    sget-object v0, Lcom/callapp/common/api/ApiConstants;->c:[Ljava/lang/Integer;

    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 168
    invoke-static {p1, v3}, Lcom/callapp/contacts/model/contact/ContactDataUtils;->getSocialNetworkID(Lcom/callapp/contacts/model/contact/ContactData;I)Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 169
    invoke-virtual {v4}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->isSure()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 170
    new-instance p1, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v0, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/callapp/contacts/sync/model/SyncerContext;->social:Landroid/util/Pair;

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private getContactLoaderFromThreadLocal()Lcom/callapp/contacts/loader/api/ContactLoader;
    .locals 1

    .line 76
    sget-object v0, Lcom/callapp/contacts/sync/syncer/cache/FirstFastCacheSyncer;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/loader/api/ContactLoader;

    return-object v0
.end method

.method private static getFirstCallLogWithoutDisplayName()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;",
            ">;"
        }
    .end annotation

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 111
    :try_start_0
    invoke-static {}, Lcom/callapp/contacts/util/CallLogUtils;->getCallLog()Ljava/util/Stack;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 112
    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 113
    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x33

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 114
    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_0
    if-lt v4, v2, :cond_1

    .line 115
    invoke-virtual {v1, v4}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;

    .line 116
    iget-object v6, v5, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->displayName:Ljava/lang/String;

    invoke-static {v6}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 117
    invoke-virtual {v5}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v6

    invoke-virtual {v6}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v6

    .line 118
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_0

    .line 119
    invoke-static {v6}, Lcom/callapp/contacts/util/CallLogUtils;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v3

    invoke-static {v7}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 120
    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 127
    const-class v2, Lcom/callapp/contacts/util/CallLogUtils;

    invoke-static {v2, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    :cond_1
    return-object v0
.end method


# virtual methods
.method public onSyncContact(Lcom/callapp/contacts/sync/model/SyncerContext;)V
    .locals 7

    .line 137
    invoke-direct {p0}, Lcom/callapp/contacts/sync/syncer/cache/FirstFastCacheSyncer;->getContactLoaderFromThreadLocal()Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    .line 139
    iget-object v1, p1, Lcom/callapp/contacts/sync/model/SyncerContext;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    .line 140
    invoke-virtual {v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->getFieldsToLoad()Ljava/util/Set;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/callapp/contacts/model/contact/ContactDataUtils;->setLoadInternals(Lcom/callapp/contacts/model/contact/ContactData;ZLjava/util/Set;)V

    .line 143
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ThreadId: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " Load contact "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/callapp/contacts/sync/model/SyncerContext;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v5}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", loadTiles: false"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 144
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->load(Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/contacts/model/contact/ContactData;

    .line 146
    invoke-static {p1, v1}, Lcom/callapp/contacts/sync/syncer/cache/FirstFastCacheSyncer;->a(Lcom/callapp/contacts/sync/model/SyncerContext;Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 149
    invoke-static {v1}, Lcom/callapp/contacts/sync/syncer/cache/social/BaseSocialSyncer;->a(Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 152
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-static {v1}, Lcom/callapp/contacts/sync/MatchAndSuggestHelper;->a(Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 154
    invoke-virtual {p1}, Lcom/callapp/contacts/sync/model/SyncerContext;->markFullySynced()V

    return-void

    .line 156
    :cond_0
    invoke-virtual {p0, v3}, Lcom/callapp/contacts/sync/syncer/cache/FirstFastCacheSyncer;->setSyncEnabled(Z)V

    return-void
.end method

.method public onSyncStart()V
    .locals 5

    .line 81
    invoke-super {p0}, Lcom/callapp/contacts/sync/syncer/Syncer;->onSyncStart()V

    .line 83
    invoke-static {}, Lcom/callapp/contacts/sync/syncer/cache/FirstFastCacheSyncer;->getFirstCallLogWithoutDisplayName()Ljava/util/Map;

    move-result-object v0

    .line 84
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;

    .line 86
    invoke-direct {p0}, Lcom/callapp/contacts/sync/syncer/cache/FirstFastCacheSyncer;->getContactLoaderFromThreadLocal()Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v2

    .line 87
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lcom/callapp/contacts/loader/api/ContactLoader;->load(Lcom/callapp/framework/phone/Phone;J)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v1

    const/4 v3, 0x0

    .line 89
    invoke-virtual {v2}, Lcom/callapp/contacts/loader/api/ContactLoader;->getFieldsToLoad()Ljava/util/Set;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lcom/callapp/contacts/model/contact/ContactDataUtils;->setLoadInternals(Lcom/callapp/contacts/model/contact/ContactData;ZLjava/util/Set;)V

    .line 90
    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->updatePhoto()V

    .line 93
    invoke-static {v1}, Lcom/callapp/contacts/sync/syncer/cache/social/BaseSocialSyncer;->a(Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 95
    invoke-static {v1}, Lcom/callapp/contacts/loader/FastCacheDataManager;->a(Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 97
    invoke-static {v1}, Lcom/callapp/contacts/loader/FastCacheDataManager;->c(Lcom/callapp/contacts/model/contact/ContactData;)V

    goto :goto_0

    :cond_0
    return-void
.end method
