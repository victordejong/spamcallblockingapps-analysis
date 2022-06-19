.class public Lcom/callapp/contacts/sync/syncer/cache/SocialFoundThenOtherSyncerLoader;
.super Lcom/callapp/contacts/sync/syncer/cache/SyncerLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/sync/syncer/cache/SocialFoundThenOtherSyncerLoader$ShouldLoadLogic;
    }
.end annotation


# instance fields
.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/callapp/contacts/loader/SimpleContactLoader;",
            ">;",
            "Lcom/callapp/contacts/sync/syncer/cache/SocialFoundThenOtherSyncerLoader$ShouldLoadLogic;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/callapp/contacts/sync/syncer/cache/SyncerLoader;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/sync/syncer/cache/SocialFoundThenOtherSyncerLoader;->f:Ljava/util/Map;

    return-void
.end method

.method private static a(Lcom/callapp/contacts/loader/api/LoadContext;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/loader/api/LoadContext;",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/loader/SimpleContactLoader;",
            ">;)V"
        }
    .end annotation

    .line 129
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/callapp/contacts/loader/SimpleContactLoader;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/loader/SimpleContactLoader;

    .line 130
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 131
    check-cast v3, Lcom/callapp/contacts/loader/social/BaseSocialLoader;

    .line 132
    invoke-virtual {v3}, Lcom/callapp/contacts/loader/social/BaseSocialLoader;->getSocialHelper()Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getApiConstantNetworkId()I

    move-result v4

    .line 133
    iget-object v5, p0, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-static {v5, v4}, Lcom/callapp/contacts/model/contact/ContactDataUtils;->getSocialNetworkID(Lcom/callapp/contacts/model/contact/ContactData;I)Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v4

    if-nez v4, :cond_0

    .line 137
    invoke-interface {p1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 138
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private b(Lcom/callapp/contacts/loader/api/LoadContext;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/loader/api/LoadContext;",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/loader/SimpleContactLoader;",
            ">;)V"
        }
    .end annotation

    .line 145
    iget-object v0, p1, Lcom/callapp/contacts/loader/api/LoadContext;->c:Ljava/util/Set;

    .line 146
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/loader/SimpleContactLoader;

    .line 147
    invoke-virtual {p1}, Lcom/callapp/contacts/loader/api/LoadContext;->isStopped()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 150
    :cond_1
    invoke-virtual {p1, v1, v0}, Lcom/callapp/contacts/loader/api/LoadContext;->a(Lcom/callapp/contacts/loader/api/ContactDataLoader;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    .line 1056
    iget-object v3, p0, Lcom/callapp/contacts/sync/syncer/cache/SocialFoundThenOtherSyncerLoader;->f:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 1057
    iget-object v3, p0, Lcom/callapp/contacts/sync/syncer/cache/SocialFoundThenOtherSyncerLoader;->f:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/sync/syncer/cache/SocialFoundThenOtherSyncerLoader$ShouldLoadLogic;

    .line 1058
    invoke-interface {v3, v1, v2}, Lcom/callapp/contacts/sync/syncer/cache/SocialFoundThenOtherSyncerLoader$ShouldLoadLogic;->a(Lcom/callapp/contacts/loader/SimpleContactLoader;Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_0

    .line 152
    :try_start_0
    invoke-virtual {p0, v1, p1}, Lcom/callapp/contacts/sync/syncer/cache/SocialFoundThenOtherSyncerLoader;->a(Lcom/callapp/contacts/loader/SimpleContactLoader;Lcom/callapp/contacts/loader/api/LoadContext;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 154
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    const-string v1, "Error loading %s"

    invoke-static {v3, v2, v1, v4}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/loader/SimpleContactLoader;Lcom/callapp/contacts/sync/syncer/cache/SocialFoundThenOtherSyncerLoader$ShouldLoadLogic;)Lcom/callapp/contacts/sync/syncer/cache/SocialFoundThenOtherSyncerLoader;
    .locals 2

    if-eqz p2, :cond_0

    .line 49
    iget-object v0, p0, Lcom/callapp/contacts/sync/syncer/cache/SocialFoundThenOtherSyncerLoader;->f:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_0
    invoke-super {p0, p1}, Lcom/callapp/contacts/sync/syncer/cache/SyncerLoader;->a(Lcom/callapp/contacts/loader/SimpleContactLoader;)Lcom/callapp/contacts/loader/BaseCompoundLoader;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/sync/syncer/cache/SocialFoundThenOtherSyncerLoader;

    return-object p1
.end method

.method public final a(Lcom/callapp/contacts/loader/api/LoadContext;)V
    .locals 7

    .line 89
    iget-object v0, p0, Lcom/callapp/contacts/sync/syncer/cache/SocialFoundThenOtherSyncerLoader;->a:Ljava/util/List;

    instance-of v0, v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/callapp/contacts/sync/syncer/cache/SocialFoundThenOtherSyncerLoader;->a:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    :cond_0
    const/4 v0, 0x0

    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 97
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 98
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 99
    iget-object v4, p0, Lcom/callapp/contacts/sync/syncer/cache/SocialFoundThenOtherSyncerLoader;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/callapp/contacts/loader/SimpleContactLoader;

    .line 101
    instance-of v6, v5, Lcom/callapp/contacts/loader/social/BaseSocialLoader;

    if-eqz v6, :cond_1

    .line 102
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 105
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 107
    :cond_2
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 113
    :cond_3
    invoke-direct {p0, p1, v1}, Lcom/callapp/contacts/sync/syncer/cache/SocialFoundThenOtherSyncerLoader;->b(Lcom/callapp/contacts/loader/api/LoadContext;Ljava/util/List;)V

    .line 117
    invoke-static {p1, v2}, Lcom/callapp/contacts/sync/syncer/cache/SocialFoundThenOtherSyncerLoader;->a(Lcom/callapp/contacts/loader/api/LoadContext;Ljava/util/List;)V

    .line 120
    invoke-direct {p0, p1, v2}, Lcom/callapp/contacts/sync/syncer/cache/SocialFoundThenOtherSyncerLoader;->b(Lcom/callapp/contacts/loader/api/LoadContext;Ljava/util/List;)V

    .line 123
    invoke-direct {p0, p1, v3}, Lcom/callapp/contacts/sync/syncer/cache/SocialFoundThenOtherSyncerLoader;->b(Lcom/callapp/contacts/loader/api/LoadContext;Ljava/util/List;)V

    return-void
.end method
