.class public Lcom/callapp/contacts/sync/syncer/cache/social/SocialSyncerLoader;
.super Lcom/callapp/contacts/sync/syncer/cache/SyncerLoader;
.source "SourceFile"


# instance fields
.field private f:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/callapp/contacts/loader/social/BaseSocialLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/callapp/contacts/sync/syncer/cache/SyncerLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/loader/api/LoadContext;)V
    .locals 7

    .line 33
    iget-object v0, p0, Lcom/callapp/contacts/sync/syncer/cache/social/SocialSyncerLoader;->a:Ljava/util/List;

    instance-of v0, v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/callapp/contacts/sync/syncer/cache/social/SocialSyncerLoader;->a:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/sync/syncer/cache/social/SocialSyncerLoader;->a:Ljava/util/List;

    iget-boolean v1, p0, Lcom/callapp/contacts/sync/syncer/cache/social/SocialSyncerLoader;->d:Z

    invoke-static {p1, v0, v1}, Lcom/callapp/contacts/loader/device/CacheLoader;->a(Lcom/callapp/contacts/loader/api/LoadContext;Ljava/util/List;Z)V

    .line 39
    iget-object v0, p1, Lcom/callapp/contacts/loader/api/LoadContext;->c:Ljava/util/Set;

    .line 40
    iget-object v1, p0, Lcom/callapp/contacts/sync/syncer/cache/social/SocialSyncerLoader;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/loader/SimpleContactLoader;

    .line 41
    invoke-virtual {p1}, Lcom/callapp/contacts/loader/api/LoadContext;->isStopped()Z

    move-result v3

    if-eqz v3, :cond_2

    return-void

    .line 48
    :cond_2
    invoke-virtual {p1, v2, v0}, Lcom/callapp/contacts/loader/api/LoadContext;->a(Lcom/callapp/contacts/loader/api/ContactDataLoader;Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_1

    instance-of v3, v2, Lcom/callapp/contacts/loader/social/BaseSocialLoader;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/callapp/contacts/sync/syncer/cache/social/SocialSyncerLoader;->f:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_1

    .line 50
    :cond_3
    :try_start_0
    invoke-virtual {p0, v2, p1}, Lcom/callapp/contacts/sync/syncer/cache/social/SocialSyncerLoader;->a(Lcom/callapp/contacts/loader/SimpleContactLoader;Lcom/callapp/contacts/loader/api/LoadContext;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    const-string v2, "Error loading %s"

    invoke-static {v4, v3, v2, v5}, Lcom/callapp/contacts/util/CLog;->c(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public setLoadNotFromCache(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/callapp/contacts/loader/social/BaseSocialLoader;",
            ">;)V"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/callapp/contacts/sync/syncer/cache/social/SocialSyncerLoader;->f:Ljava/lang/Class;

    return-void
.end method
