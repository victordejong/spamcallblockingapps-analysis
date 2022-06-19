.class public Lcom/callapp/contacts/sync/syncer/IdContactsLogSyncer;
.super Lcom/callapp/contacts/sync/syncer/Syncer;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/callapp/contacts/sync/syncer/Syncer;-><init>()V

    return-void
.end method

.method static synthetic a()V
    .locals 0

    .line 47
    invoke-static {}, Lcom/callapp/contacts/sync/syncer/IdContactsLogSyncer;->b()V

    return-void
.end method

.method private static b()V
    .locals 6

    .line 84
    new-instance v0, Lcom/callapp/contacts/loader/api/ContactLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/api/ContactLoader;-><init>()V

    sget-object v1, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->PHOTO_AND_NAME_FIELDS:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addFields(Ljava/util/Collection;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->DEVICE_ID:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addFields(Ljava/util/Collection;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->setInSync()Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    .line 85
    new-instance v1, Lcom/callapp/contacts/loader/device/DeviceIdLoader;

    invoke-direct {v1}, Lcom/callapp/contacts/loader/device/DeviceIdLoader;-><init>()V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 86
    new-instance v1, Lcom/callapp/contacts/loader/FastCacheDataLoader;

    invoke-direct {v1}, Lcom/callapp/contacts/loader/FastCacheDataLoader;-><init>()V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 88
    new-instance v1, Lcom/callapp/contacts/loader/api/ContactLoader;

    invoke-direct {v1}, Lcom/callapp/contacts/loader/api/ContactLoader;-><init>()V

    sget-object v2, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->NAME_FIELDS:Ljava/util/EnumSet;

    .line 89
    invoke-virtual {v1, v2}, Lcom/callapp/contacts/loader/api/ContactLoader;->addFields(Ljava/util/Collection;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->emails:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->photoUrl:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->birthday:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v5, 0x2

    aput-object v3, v2, v5

    .line 90
    invoke-virtual {v1, v2}, Lcom/callapp/contacts/loader/api/ContactLoader;->addFields([Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->SOCIAL_NETWORKS_IDS:Ljava/util/EnumSet;

    .line 91
    invoke-virtual {v1, v2}, Lcom/callapp/contacts/loader/api/ContactLoader;->addFields(Ljava/util/Collection;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->SYNC_SEARCH_SOCIAL_NETWORKS:Ljava/util/EnumSet;

    .line 92
    invoke-virtual {v1, v2}, Lcom/callapp/contacts/loader/api/ContactLoader;->addFields(Ljava/util/Collection;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v1

    .line 93
    invoke-virtual {v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->setInSync()Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v1

    .line 95
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->i:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 96
    new-instance v3, Lcom/callapp/contacts/loader/CompoundSyncLoader;

    invoke-direct {v3}, Lcom/callapp/contacts/loader/CompoundSyncLoader;-><init>()V

    if-eqz v2, :cond_0

    .line 98
    new-instance v2, Lcom/callapp/contacts/loader/device/DevicePhotoLoader;

    invoke-direct {v2}, Lcom/callapp/contacts/loader/device/DevicePhotoLoader;-><init>()V

    invoke-virtual {v3, v2}, Lcom/callapp/contacts/loader/BaseCompoundLoader;->a(Lcom/callapp/contacts/loader/SimpleContactLoader;)Lcom/callapp/contacts/loader/BaseCompoundLoader;

    move-result-object v2

    new-instance v5, Lcom/callapp/contacts/loader/FastCacheDataLoader;

    invoke-direct {v5}, Lcom/callapp/contacts/loader/FastCacheDataLoader;-><init>()V

    invoke-virtual {v2, v5}, Lcom/callapp/contacts/loader/BaseCompoundLoader;->a(Lcom/callapp/contacts/loader/SimpleContactLoader;)Lcom/callapp/contacts/loader/BaseCompoundLoader;

    move-result-object v2

    new-instance v5, Lcom/callapp/contacts/loader/device/CacheLoader;

    invoke-direct {v5}, Lcom/callapp/contacts/loader/device/CacheLoader;-><init>()V

    invoke-virtual {v2, v5}, Lcom/callapp/contacts/loader/BaseCompoundLoader;->a(Lcom/callapp/contacts/loader/SimpleContactLoader;)Lcom/callapp/contacts/loader/BaseCompoundLoader;

    goto :goto_0

    .line 100
    :cond_0
    new-instance v2, Lcom/callapp/contacts/loader/FastCacheDataLoader;

    invoke-direct {v2}, Lcom/callapp/contacts/loader/FastCacheDataLoader;-><init>()V

    invoke-virtual {v3, v2}, Lcom/callapp/contacts/loader/BaseCompoundLoader;->a(Lcom/callapp/contacts/loader/SimpleContactLoader;)Lcom/callapp/contacts/loader/BaseCompoundLoader;

    move-result-object v2

    new-instance v5, Lcom/callapp/contacts/loader/device/CacheLoader;

    invoke-direct {v5}, Lcom/callapp/contacts/loader/device/CacheLoader;-><init>()V

    invoke-virtual {v2, v5}, Lcom/callapp/contacts/loader/BaseCompoundLoader;->a(Lcom/callapp/contacts/loader/SimpleContactLoader;)Lcom/callapp/contacts/loader/BaseCompoundLoader;

    move-result-object v2

    new-instance v5, Lcom/callapp/contacts/loader/device/DevicePhotoLoader;

    invoke-direct {v5}, Lcom/callapp/contacts/loader/device/DevicePhotoLoader;-><init>()V

    invoke-virtual {v2, v5}, Lcom/callapp/contacts/loader/BaseCompoundLoader;->a(Lcom/callapp/contacts/loader/SimpleContactLoader;)Lcom/callapp/contacts/loader/BaseCompoundLoader;

    .line 103
    :goto_0
    new-instance v2, Lcom/callapp/contacts/loader/device/DeviceIdLoader;

    invoke-direct {v2}, Lcom/callapp/contacts/loader/device/DeviceIdLoader;-><init>()V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 104
    new-instance v2, Lcom/callapp/contacts/loader/CompoundAsyncLoader;

    invoke-direct {v2}, Lcom/callapp/contacts/loader/CompoundAsyncLoader;-><init>()V

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/loader/CompoundAsyncLoader;->a(Lcom/callapp/contacts/loader/SimpleContactLoader;)Lcom/callapp/contacts/loader/BaseCompoundLoader;

    move-result-object v2

    new-instance v3, Lcom/callapp/contacts/loader/device/DeviceDataLoader;

    invoke-direct {v3}, Lcom/callapp/contacts/loader/device/DeviceDataLoader;-><init>()V

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/loader/BaseCompoundLoader;->a(Lcom/callapp/contacts/loader/SimpleContactLoader;)Lcom/callapp/contacts/loader/BaseCompoundLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 106
    new-instance v2, Lcom/callapp/contacts/loader/BlockedNumberLoader;

    invoke-direct {v2}, Lcom/callapp/contacts/loader/BlockedNumberLoader;-><init>()V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 107
    new-instance v2, Lcom/callapp/contacts/loader/UserCorrectedInfoLoader;

    invoke-direct {v2}, Lcom/callapp/contacts/loader/UserCorrectedInfoLoader;-><init>()V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 108
    new-instance v2, Lcom/callapp/contacts/loader/UserSpamLoader;

    invoke-direct {v2}, Lcom/callapp/contacts/loader/UserSpamLoader;-><init>()V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 109
    new-instance v2, Lcom/callapp/contacts/loader/UserMediaLoader;

    invoke-direct {v2}, Lcom/callapp/contacts/loader/UserMediaLoader;-><init>()V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 111
    new-instance v2, Lcom/callapp/contacts/loader/external/NotificationViberLoader;

    invoke-direct {v2}, Lcom/callapp/contacts/loader/external/NotificationViberLoader;-><init>()V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 112
    new-instance v2, Lcom/callapp/contacts/loader/external/NotificationTelegramLoader;

    invoke-direct {v2}, Lcom/callapp/contacts/loader/external/NotificationTelegramLoader;-><init>()V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 114
    new-instance v2, Lcom/callapp/contacts/loader/LocalGenomeLoader;

    invoke-direct {v2, v4}, Lcom/callapp/contacts/loader/LocalGenomeLoader;-><init>(Z)V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 116
    new-instance v2, Lcom/callapp/contacts/loader/social/facebook/FacebookLoader;

    invoke-direct {v2}, Lcom/callapp/contacts/loader/social/facebook/FacebookLoader;-><init>()V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 117
    new-instance v2, Lcom/callapp/contacts/loader/vk/VKLoader;

    invoke-direct {v2}, Lcom/callapp/contacts/loader/vk/VKLoader;-><init>()V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 118
    new-instance v2, Lcom/callapp/contacts/loader/social/twitter/TwitterLoader;

    invoke-direct {v2}, Lcom/callapp/contacts/loader/social/twitter/TwitterLoader;-><init>()V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 119
    new-instance v2, Lcom/callapp/contacts/loader/social/instagram/InstagramLoader;

    invoke-direct {v2}, Lcom/callapp/contacts/loader/social/instagram/InstagramLoader;-><init>()V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 120
    new-instance v2, Lcom/callapp/contacts/loader/social/pinterest/PinterestLoader;

    invoke-direct {v2}, Lcom/callapp/contacts/loader/social/pinterest/PinterestLoader;-><init>()V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 122
    new-instance v2, Lcom/callapp/contacts/loader/external/GravatarLoader;

    invoke-direct {v2}, Lcom/callapp/contacts/loader/external/GravatarLoader;-><init>()V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 124
    new-instance v2, Lcom/callapp/contacts/loader/GoogleStaticMapLoader;

    invoke-direct {v2}, Lcom/callapp/contacts/loader/GoogleStaticMapLoader;-><init>()V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 126
    new-instance v2, Lcom/callapp/contacts/loader/WebsitesSocialIDParsingLoader;

    invoke-direct {v2}, Lcom/callapp/contacts/loader/WebsitesSocialIDParsingLoader;-><init>()V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 127
    new-instance v2, Lcom/callapp/contacts/loader/external/WhitePagesLoader;

    invoke-direct {v2, v1}, Lcom/callapp/contacts/loader/external/WhitePagesLoader;-><init>(Lcom/callapp/contacts/loader/api/ContactLoader;)V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 129
    new-instance v2, Lcom/callapp/contacts/loader/im/SkypeLoader;

    invoke-direct {v2}, Lcom/callapp/contacts/loader/im/SkypeLoader;-><init>()V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 130
    new-instance v2, Lcom/callapp/contacts/loader/im/YahooLoader;

    invoke-direct {v2}, Lcom/callapp/contacts/loader/im/YahooLoader;-><init>()V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 131
    new-instance v2, Lcom/callapp/contacts/loader/GmailLoader;

    invoke-direct {v2}, Lcom/callapp/contacts/loader/GmailLoader;-><init>()V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 132
    new-instance v2, Lcom/callapp/contacts/loader/SuggestionLoader;

    invoke-direct {v2}, Lcom/callapp/contacts/loader/SuggestionLoader;-><init>()V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 134
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->getAllImNotificationData()Ljava/util/List;

    move-result-object v2

    .line 135
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    .line 136
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v4

    iget-object v5, v3, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->phoneAsRaw:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/callapp/contacts/loader/api/ContactLoader;->load(Lcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v4

    .line 137
    invoke-virtual {v4}, Lcom/callapp/contacts/model/contact/ContactData;->getFastCacheData()Lcom/callapp/contacts/model/objectbox/FastCacheData;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 138
    invoke-virtual {v4}, Lcom/callapp/contacts/model/contact/ContactData;->getFastCacheData()Lcom/callapp/contacts/model/objectbox/FastCacheData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->getFullName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/callapp/contacts/model/contact/ContactData;->getFastCacheData()Lcom/callapp/contacts/model/objectbox/FastCacheData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->getPhotoUrls()Lcom/callapp/contacts/model/contact/PhotoUrls;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 139
    invoke-virtual {v4}, Lcom/callapp/contacts/model/contact/ContactData;->getFastCacheData()Lcom/callapp/contacts/model/objectbox/FastCacheData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->getPhotoUrls()Lcom/callapp/contacts/model/contact/PhotoUrls;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/model/contact/PhotoUrls;->getPhotoUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 144
    :cond_2
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v4

    iget-object v3, v3, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->phoneAsRaw:Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/callapp/contacts/loader/api/ContactLoader;->load(Lcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v3

    .line 145
    invoke-virtual {v3}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 146
    invoke-static {v3}, Lcom/callapp/contacts/loader/FastCacheDataManager;->a(Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 148
    :cond_3
    invoke-virtual {v3}, Lcom/callapp/contacts/model/contact/ContactData;->hasAnyPhotoUrl()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 149
    invoke-static {v3}, Lcom/callapp/contacts/sync/syncer/cache/social/BaseSocialSyncer;->a(Lcom/callapp/contacts/model/contact/ContactData;)V

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public onSyncContact(Lcom/callapp/contacts/sync/model/SyncerContext;)V
    .locals 0

    .line 51
    invoke-virtual {p1}, Lcom/callapp/contacts/sync/model/SyncerContext;->markFullySynced()V

    return-void
.end method

.method public onSyncEnd()Z
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/callapp/contacts/sync/syncer/IdContactsLogSyncer;->syncContext:Lcom/callapp/contacts/sync/model/SyncContext;

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/sync/model/SyncContext;->isLongRunningSyncersAlreadyRunning(Lcom/callapp/contacts/sync/syncer/Syncer;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/sync/syncer/IdContactsLogSyncer;->shouldSync()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    iget-object v0, p0, Lcom/callapp/contacts/sync/syncer/IdContactsLogSyncer;->syncContext:Lcom/callapp/contacts/sync/model/SyncContext;

    iget-boolean v0, v0, Lcom/callapp/contacts/sync/model/SyncContext;->isFirstSync:Z

    if-eqz v0, :cond_1

    .line 69
    new-instance v0, Lcom/callapp/contacts/sync/syncer/IdContactsLogSyncer$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/sync/syncer/IdContactsLogSyncer$1;-><init>(Lcom/callapp/contacts/sync/syncer/IdContactsLogSyncer;)V

    .line 74
    invoke-virtual {v0}, Lcom/callapp/contacts/sync/syncer/IdContactsLogSyncer$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    goto :goto_0

    .line 76
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/sync/syncer/IdContactsLogSyncer;->b()V

    .line 80
    :cond_2
    :goto_0
    invoke-super {p0}, Lcom/callapp/contacts/sync/syncer/Syncer;->onSyncEnd()Z

    move-result v0

    return v0
.end method

.method public shouldSyncContact(Lcom/callapp/contacts/model/contact/ContactData;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
