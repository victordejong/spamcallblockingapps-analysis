.class final Lcom/callapp/contacts/sync/syncer/cache/FirstFastCacheSyncer$1;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/sync/syncer/cache/FirstFastCacheSyncer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Lcom/callapp/contacts/loader/api/ContactLoader;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic initialValue()Ljava/lang/Object;
    .locals 7

    .line 1046
    new-instance v0, Lcom/callapp/contacts/sync/syncer/cache/BaseSocialShouldLoadLogic;

    invoke-direct {v0}, Lcom/callapp/contacts/sync/syncer/cache/BaseSocialShouldLoadLogic;-><init>()V

    .line 1047
    new-instance v1, Lcom/callapp/contacts/sync/syncer/cache/PhotoOrIdShouldLoadLogic;

    invoke-direct {v1}, Lcom/callapp/contacts/sync/syncer/cache/PhotoOrIdShouldLoadLogic;-><init>()V

    .line 1049
    new-instance v2, Lcom/callapp/contacts/loader/api/ContactLoader;

    invoke-direct {v2}, Lcom/callapp/contacts/loader/api/ContactLoader;-><init>()V

    .line 1050
    invoke-virtual {v2}, Lcom/callapp/contacts/loader/api/ContactLoader;->setDisableContactEvents()Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v2

    .line 1051
    invoke-virtual {v2}, Lcom/callapp/contacts/loader/api/ContactLoader;->setIgnoreQuotaException()Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v2

    .line 1052
    invoke-virtual {v2}, Lcom/callapp/contacts/loader/api/ContactLoader;->setInSync()Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v2

    sget-object v3, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->NAME_FIELDS:Ljava/util/EnumSet;

    .line 1053
    invoke-virtual {v2, v3}, Lcom/callapp/contacts/loader/api/ContactLoader;->addFields(Ljava/util/Collection;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v4, Lcom/callapp/contacts/model/contact/ContactField;->emails:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lcom/callapp/contacts/model/contact/ContactField;->photoUrl:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    sget-object v4, Lcom/callapp/contacts/model/contact/ContactField;->birthday:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v6, 0x2

    aput-object v4, v3, v6

    .line 1054
    invoke-virtual {v2, v3}, Lcom/callapp/contacts/loader/api/ContactLoader;->addFields([Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v2

    sget-object v3, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->SOCIAL_NETWORKS_IDS:Ljava/util/EnumSet;

    .line 1055
    invoke-virtual {v2, v3}, Lcom/callapp/contacts/loader/api/ContactLoader;->addFields(Ljava/util/Collection;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v2

    sget-object v3, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->SYNC_SEARCH_SOCIAL_NETWORKS:Ljava/util/EnumSet;

    .line 1056
    invoke-virtual {v2, v3}, Lcom/callapp/contacts/loader/api/ContactLoader;->addFields(Ljava/util/Collection;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v2

    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->spamScore:Lcom/callapp/contacts/model/contact/ContactField;

    .line 1057
    invoke-virtual {v2, v3}, Lcom/callapp/contacts/loader/api/ContactLoader;->addFields(Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v2

    new-instance v3, Lcom/callapp/contacts/sync/syncer/cache/SocialFoundThenOtherSyncerLoader;

    invoke-direct {v3}, Lcom/callapp/contacts/sync/syncer/cache/SocialFoundThenOtherSyncerLoader;-><init>()V

    new-instance v4, Lcom/callapp/contacts/loader/device/CacheLoader;

    invoke-direct {v4}, Lcom/callapp/contacts/loader/device/CacheLoader;-><init>()V

    const/4 v6, 0x0

    .line 1060
    invoke-virtual {v3, v4, v6}, Lcom/callapp/contacts/sync/syncer/cache/SocialFoundThenOtherSyncerLoader;->a(Lcom/callapp/contacts/loader/SimpleContactLoader;Lcom/callapp/contacts/sync/syncer/cache/SocialFoundThenOtherSyncerLoader$ShouldLoadLogic;)Lcom/callapp/contacts/sync/syncer/cache/SocialFoundThenOtherSyncerLoader;

    move-result-object v3

    new-instance v4, Lcom/callapp/contacts/loader/device/DeviceDataLoader;

    invoke-direct {v4}, Lcom/callapp/contacts/loader/device/DeviceDataLoader;-><init>()V

    .line 1061
    invoke-virtual {v3, v4, v6}, Lcom/callapp/contacts/sync/syncer/cache/SocialFoundThenOtherSyncerLoader;->a(Lcom/callapp/contacts/loader/SimpleContactLoader;Lcom/callapp/contacts/sync/syncer/cache/SocialFoundThenOtherSyncerLoader$ShouldLoadLogic;)Lcom/callapp/contacts/sync/syncer/cache/SocialFoundThenOtherSyncerLoader;

    move-result-object v3

    new-instance v4, Lcom/callapp/contacts/loader/LocalGenomeLoader;

    invoke-direct {v4, v5}, Lcom/callapp/contacts/loader/LocalGenomeLoader;-><init>(Z)V

    .line 1062
    invoke-virtual {v3, v4, v6}, Lcom/callapp/contacts/sync/syncer/cache/SocialFoundThenOtherSyncerLoader;->a(Lcom/callapp/contacts/loader/SimpleContactLoader;Lcom/callapp/contacts/sync/syncer/cache/SocialFoundThenOtherSyncerLoader$ShouldLoadLogic;)Lcom/callapp/contacts/sync/syncer/cache/SocialFoundThenOtherSyncerLoader;

    move-result-object v3

    new-instance v4, Lcom/callapp/contacts/loader/external/GravatarLoader;

    invoke-direct {v4}, Lcom/callapp/contacts/loader/external/GravatarLoader;-><init>()V

    .line 1063
    invoke-virtual {v3, v4, v1}, Lcom/callapp/contacts/sync/syncer/cache/SocialFoundThenOtherSyncerLoader;->a(Lcom/callapp/contacts/loader/SimpleContactLoader;Lcom/callapp/contacts/sync/syncer/cache/SocialFoundThenOtherSyncerLoader$ShouldLoadLogic;)Lcom/callapp/contacts/sync/syncer/cache/SocialFoundThenOtherSyncerLoader;

    move-result-object v1

    new-instance v3, Lcom/callapp/contacts/loader/social/facebook/FacebookLoader;

    invoke-direct {v3}, Lcom/callapp/contacts/loader/social/facebook/FacebookLoader;-><init>()V

    .line 1064
    invoke-virtual {v1, v3, v0}, Lcom/callapp/contacts/sync/syncer/cache/SocialFoundThenOtherSyncerLoader;->a(Lcom/callapp/contacts/loader/SimpleContactLoader;Lcom/callapp/contacts/sync/syncer/cache/SocialFoundThenOtherSyncerLoader$ShouldLoadLogic;)Lcom/callapp/contacts/sync/syncer/cache/SocialFoundThenOtherSyncerLoader;

    move-result-object v1

    new-instance v3, Lcom/callapp/contacts/loader/vk/VKLoader;

    invoke-direct {v3}, Lcom/callapp/contacts/loader/vk/VKLoader;-><init>()V

    .line 1065
    invoke-virtual {v1, v3, v0}, Lcom/callapp/contacts/sync/syncer/cache/SocialFoundThenOtherSyncerLoader;->a(Lcom/callapp/contacts/loader/SimpleContactLoader;Lcom/callapp/contacts/sync/syncer/cache/SocialFoundThenOtherSyncerLoader$ShouldLoadLogic;)Lcom/callapp/contacts/sync/syncer/cache/SocialFoundThenOtherSyncerLoader;

    move-result-object v1

    new-instance v3, Lcom/callapp/contacts/loader/social/instagram/InstagramLoader;

    invoke-direct {v3}, Lcom/callapp/contacts/loader/social/instagram/InstagramLoader;-><init>()V

    .line 1066
    invoke-virtual {v1, v3, v0}, Lcom/callapp/contacts/sync/syncer/cache/SocialFoundThenOtherSyncerLoader;->a(Lcom/callapp/contacts/loader/SimpleContactLoader;Lcom/callapp/contacts/sync/syncer/cache/SocialFoundThenOtherSyncerLoader$ShouldLoadLogic;)Lcom/callapp/contacts/sync/syncer/cache/SocialFoundThenOtherSyncerLoader;

    move-result-object v1

    new-instance v3, Lcom/callapp/contacts/loader/social/twitter/TwitterLoader;

    invoke-direct {v3}, Lcom/callapp/contacts/loader/social/twitter/TwitterLoader;-><init>()V

    .line 1067
    invoke-virtual {v1, v3, v0}, Lcom/callapp/contacts/sync/syncer/cache/SocialFoundThenOtherSyncerLoader;->a(Lcom/callapp/contacts/loader/SimpleContactLoader;Lcom/callapp/contacts/sync/syncer/cache/SocialFoundThenOtherSyncerLoader$ShouldLoadLogic;)Lcom/callapp/contacts/sync/syncer/cache/SocialFoundThenOtherSyncerLoader;

    move-result-object v1

    new-instance v3, Lcom/callapp/contacts/loader/social/pinterest/PinterestLoader;

    invoke-direct {v3}, Lcom/callapp/contacts/loader/social/pinterest/PinterestLoader;-><init>()V

    .line 1068
    invoke-virtual {v1, v3, v0}, Lcom/callapp/contacts/sync/syncer/cache/SocialFoundThenOtherSyncerLoader;->a(Lcom/callapp/contacts/loader/SimpleContactLoader;Lcom/callapp/contacts/sync/syncer/cache/SocialFoundThenOtherSyncerLoader$ShouldLoadLogic;)Lcom/callapp/contacts/sync/syncer/cache/SocialFoundThenOtherSyncerLoader;

    move-result-object v0

    .line 1058
    invoke-virtual {v2, v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    return-object v0
.end method
