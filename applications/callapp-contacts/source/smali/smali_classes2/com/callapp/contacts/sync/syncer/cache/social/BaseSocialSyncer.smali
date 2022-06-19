.class public abstract Lcom/callapp/contacts/sync/syncer/cache/social/BaseSocialSyncer;
.super Lcom/callapp/contacts/sync/syncer/Syncer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Class<",
        "+",
        "Lcom/callapp/contacts/loader/social/BaseSocialLoader;",
        ">;>",
        "Lcom/callapp/contacts/sync/syncer/Syncer;"
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/ThreadLocal;
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

    .line 59
    new-instance v0, Lcom/callapp/contacts/sync/syncer/cache/social/BaseSocialSyncer$1;

    invoke-direct {v0}, Lcom/callapp/contacts/sync/syncer/cache/social/BaseSocialSyncer$1;-><init>()V

    sput-object v0, Lcom/callapp/contacts/sync/syncer/cache/social/BaseSocialSyncer;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/callapp/contacts/sync/syncer/Syncer;-><init>()V

    return-void
.end method

.method public static a(Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 8

    .line 159
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 161
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhotoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhotoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 166
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 169
    :cond_1
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 173
    :cond_2
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    const/4 v2, 0x1

    new-array v2, v2, [Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v3

    .line 176
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 177
    new-instance v5, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-direct {v5, v4}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhotoDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a(Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    move-result-object v5

    new-instance v6, Lcom/callapp/contacts/util/glide/CallAppRequestListener;

    new-instance v7, Lcom/callapp/contacts/sync/syncer/cache/social/BaseSocialSyncer$2;

    invoke-direct {v7, p0, v1, v2}, Lcom/callapp/contacts/sync/syncer/cache/social/BaseSocialSyncer$2;-><init>(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/concurrent/CountDownLatch;[Z)V

    invoke-direct {v6, v4, p0, v7}, Lcom/callapp/contacts/util/glide/CallAppRequestListener;-><init>(Ljava/lang/String;Lcom/callapp/contacts/model/contact/ContactData;Lcom/bumptech/glide/e/g;)V

    .line 1496
    iput-object v6, v5, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->n:Lcom/bumptech/glide/e/g;

    .line 194
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v4

    .line 2432
    iput-object v4, v5, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->e:Landroid/content/Context;

    .line 194
    invoke-virtual {v5}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->b()V

    goto :goto_0

    :cond_3
    const-wide/16 v4, 0x14

    .line 198
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 200
    aget-boolean v0, v2, v3

    if-eqz v0, :cond_4

    .line 201
    invoke-static {p0}, Lcom/callapp/contacts/loader/FastCacheDataManager;->b(Lcom/callapp/contacts/model/contact/ContactData;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    return-void
.end method


# virtual methods
.method protected getContactLoaderFromThreadLocal()Lcom/callapp/contacts/loader/api/ContactLoader;
    .locals 1

    .line 96
    sget-object v0, Lcom/callapp/contacts/sync/syncer/cache/social/BaseSocialSyncer;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/loader/api/ContactLoader;

    return-object v0
.end method

.method public abstract getLoaderClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract getNetworkId()I
.end method

.method public onSyncContact(Lcom/callapp/contacts/sync/model/SyncerContext;)V
    .locals 5

    .line 119
    invoke-virtual {p0}, Lcom/callapp/contacts/sync/syncer/cache/social/BaseSocialSyncer;->getContactLoaderFromThreadLocal()Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->getLoaders()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 125
    invoke-virtual {v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->getLoaders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/loader/api/ContactDataLoader;

    .line 126
    instance-of v3, v1, Lcom/callapp/contacts/sync/syncer/cache/social/SocialSyncerLoader;

    if-eqz v3, :cond_0

    .line 127
    check-cast v1, Lcom/callapp/contacts/sync/syncer/cache/social/SocialSyncerLoader;

    .line 128
    invoke-virtual {p0}, Lcom/callapp/contacts/sync/syncer/cache/social/BaseSocialSyncer;->getLoaderClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/callapp/contacts/sync/syncer/cache/social/SocialSyncerLoader;->setLoadNotFromCache(Ljava/lang/Class;)V

    .line 132
    :cond_0
    iget-object v1, p1, Lcom/callapp/contacts/sync/model/SyncerContext;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    .line 133
    invoke-virtual {v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->getFieldsToLoad()Ljava/util/Set;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/callapp/contacts/model/contact/ContactDataUtils;->setLoadInternals(Lcom/callapp/contacts/model/contact/ContactData;ZLjava/util/Set;)V

    .line 135
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->load(Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/contacts/model/contact/ContactData;

    .line 137
    invoke-static {p1, v1}, Lcom/callapp/contacts/sync/syncer/cache/FirstFastCacheSyncer;->a(Lcom/callapp/contacts/sync/model/SyncerContext;Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 140
    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->getPastChangedFields()Ljava/util/Set;

    move-result-object v3

    sget-object v4, Lcom/callapp/contacts/model/contact/ContactField;->photoUrl:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 141
    invoke-static {v1}, Lcom/callapp/contacts/sync/syncer/cache/social/BaseSocialSyncer;->a(Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 145
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 147
    invoke-virtual {p0}, Lcom/callapp/contacts/sync/syncer/cache/social/BaseSocialSyncer;->getLoaderClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/callapp/contacts/loader/api/ContactLoader;->isLoaderStopped(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 150
    invoke-virtual {p0}, Lcom/callapp/contacts/sync/syncer/cache/social/BaseSocialSyncer;->getNetworkId()I

    move-result v0

    invoke-static {v0, v1}, Lcom/callapp/contacts/sync/MatchAndSuggestHelper;->a(ILcom/callapp/contacts/model/contact/ContactData;)V

    .line 151
    invoke-virtual {p1}, Lcom/callapp/contacts/sync/model/SyncerContext;->markFullySynced()V

    return-void

    .line 154
    :cond_2
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/sync/syncer/cache/social/BaseSocialSyncer;->setSyncEnabled(Z)V

    return-void
.end method

.method public shouldSync()Z
    .locals 2

    .line 89
    invoke-super {p0}, Lcom/callapp/contacts/sync/syncer/Syncer;->shouldSync()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {p0}, Lcom/callapp/contacts/sync/syncer/cache/social/BaseSocialSyncer;->getNetworkId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/Singletons;->getRemoteAccountHelper(I)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public shouldSyncContact(Lcom/callapp/contacts/model/contact/ContactData;)Z
    .locals 8

    .line 105
    invoke-virtual {p0}, Lcom/callapp/contacts/sync/syncer/cache/social/BaseSocialSyncer;->isSyncEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/sync/syncer/cache/social/BaseSocialSyncer;->syncContext:Lcom/callapp/contacts/sync/model/SyncContext;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/sync/model/SyncContext;->getSyncData(Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/contacts/sync/model/SyncerData;

    move-result-object p1

    invoke-virtual {p0}, Lcom/callapp/contacts/sync/syncer/cache/social/BaseSocialSyncer;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/sync/model/SyncerData;->getSyncDate(Ljava/lang/String;)J

    move-result-wide v2

    .line 110
    iget-object p1, p0, Lcom/callapp/contacts/sync/syncer/cache/social/BaseSocialSyncer;->syncContext:Lcom/callapp/contacts/sync/model/SyncContext;

    iget-wide v4, p1, Lcom/callapp/contacts/sync/model/SyncContext;->startDate:J

    invoke-virtual {p0}, Lcom/callapp/contacts/sync/syncer/cache/social/BaseSocialSyncer;->getSyncPeriodMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    cmp-long p1, v4, v2

    if-ltz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method
