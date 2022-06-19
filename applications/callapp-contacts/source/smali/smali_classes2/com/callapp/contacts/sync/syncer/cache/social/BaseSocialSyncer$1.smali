.class final Lcom/callapp/contacts/sync/syncer/cache/social/BaseSocialSyncer$1;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/sync/syncer/cache/social/BaseSocialSyncer;
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

    .line 59
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic initialValue()Ljava/lang/Object;
    .locals 5

    .line 1062
    new-instance v0, Lcom/callapp/contacts/loader/api/ContactLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/api/ContactLoader;-><init>()V

    .line 1063
    invoke-virtual {v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->setInSync()Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    .line 1064
    invoke-virtual {v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->setDisableContactEvents()Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->NAME_FIELDS:Ljava/util/EnumSet;

    .line 1065
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addFields(Ljava/util/Collection;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->emails:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->photoUrl:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->birthday:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v4, 0x2

    aput-object v2, v1, v4

    .line 1066
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addFields([Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->SOCIAL_NETWORKS_IDS:Ljava/util/EnumSet;

    .line 1067
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addFields(Ljava/util/Collection;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->SYNC_SEARCH_SOCIAL_NETWORKS:Ljava/util/EnumSet;

    .line 1068
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addFields(Ljava/util/Collection;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    .line 1070
    new-instance v1, Lcom/callapp/contacts/loader/device/DeviceDataLoader;

    invoke-direct {v1}, Lcom/callapp/contacts/loader/device/DeviceDataLoader;-><init>()V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/loader/FastCacheDataLoader;

    invoke-direct {v2}, Lcom/callapp/contacts/loader/FastCacheDataLoader;-><init>()V

    .line 1071
    invoke-virtual {v1, v2}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/sync/syncer/cache/social/SocialSyncerLoader;

    invoke-direct {v2}, Lcom/callapp/contacts/sync/syncer/cache/social/SocialSyncerLoader;-><init>()V

    new-instance v4, Lcom/callapp/contacts/loader/LocalGenomeLoader;

    invoke-direct {v4, v3}, Lcom/callapp/contacts/loader/LocalGenomeLoader;-><init>(Z)V

    .line 1075
    invoke-virtual {v2, v4}, Lcom/callapp/contacts/sync/syncer/cache/social/SocialSyncerLoader;->a(Lcom/callapp/contacts/loader/SimpleContactLoader;)Lcom/callapp/contacts/loader/BaseCompoundLoader;

    move-result-object v2

    new-instance v3, Lcom/callapp/contacts/loader/external/GravatarLoader;

    invoke-direct {v3}, Lcom/callapp/contacts/loader/external/GravatarLoader;-><init>()V

    .line 1076
    invoke-virtual {v2, v3}, Lcom/callapp/contacts/loader/BaseCompoundLoader;->a(Lcom/callapp/contacts/loader/SimpleContactLoader;)Lcom/callapp/contacts/loader/BaseCompoundLoader;

    move-result-object v2

    new-instance v3, Lcom/callapp/contacts/loader/social/facebook/FacebookLoader;

    invoke-direct {v3}, Lcom/callapp/contacts/loader/social/facebook/FacebookLoader;-><init>()V

    .line 1077
    invoke-virtual {v2, v3}, Lcom/callapp/contacts/loader/BaseCompoundLoader;->a(Lcom/callapp/contacts/loader/SimpleContactLoader;)Lcom/callapp/contacts/loader/BaseCompoundLoader;

    move-result-object v2

    new-instance v3, Lcom/callapp/contacts/loader/vk/VKLoader;

    invoke-direct {v3}, Lcom/callapp/contacts/loader/vk/VKLoader;-><init>()V

    .line 1078
    invoke-virtual {v2, v3}, Lcom/callapp/contacts/loader/BaseCompoundLoader;->a(Lcom/callapp/contacts/loader/SimpleContactLoader;)Lcom/callapp/contacts/loader/BaseCompoundLoader;

    move-result-object v2

    new-instance v3, Lcom/callapp/contacts/loader/social/instagram/InstagramLoader;

    invoke-direct {v3}, Lcom/callapp/contacts/loader/social/instagram/InstagramLoader;-><init>()V

    .line 1079
    invoke-virtual {v2, v3}, Lcom/callapp/contacts/loader/BaseCompoundLoader;->a(Lcom/callapp/contacts/loader/SimpleContactLoader;)Lcom/callapp/contacts/loader/BaseCompoundLoader;

    move-result-object v2

    new-instance v3, Lcom/callapp/contacts/loader/social/twitter/TwitterLoader;

    invoke-direct {v3}, Lcom/callapp/contacts/loader/social/twitter/TwitterLoader;-><init>()V

    .line 1080
    invoke-virtual {v2, v3}, Lcom/callapp/contacts/loader/BaseCompoundLoader;->a(Lcom/callapp/contacts/loader/SimpleContactLoader;)Lcom/callapp/contacts/loader/BaseCompoundLoader;

    move-result-object v2

    new-instance v3, Lcom/callapp/contacts/loader/social/pinterest/PinterestLoader;

    invoke-direct {v3}, Lcom/callapp/contacts/loader/social/pinterest/PinterestLoader;-><init>()V

    .line 1081
    invoke-virtual {v2, v3}, Lcom/callapp/contacts/loader/BaseCompoundLoader;->a(Lcom/callapp/contacts/loader/SimpleContactLoader;)Lcom/callapp/contacts/loader/BaseCompoundLoader;

    move-result-object v2

    .line 1072
    invoke-virtual {v1, v2}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v1

    .line 1082
    invoke-virtual {v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->setDisableSpecificCaches()Lcom/callapp/contacts/loader/api/ContactLoader;

    return-object v0
.end method
