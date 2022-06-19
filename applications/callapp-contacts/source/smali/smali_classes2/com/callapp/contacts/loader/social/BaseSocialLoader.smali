.class public abstract Lcom/callapp/contacts/loader/social/BaseSocialLoader;
.super Lcom/callapp/contacts/loader/SimpleContactLoader;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/loader/api/NetworkDataLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/loader/social/BaseSocialLoader$NamesSearcher;,
        Lcom/callapp/contacts/loader/social/BaseSocialLoader$FullNameSearcher;,
        Lcom/callapp/contacts/loader/social/BaseSocialLoader$UserNameFromEmailSearcher;,
        Lcom/callapp/contacts/loader/social/BaseSocialLoader$FriendsExactNameSearcher;,
        Lcom/callapp/contacts/loader/social/BaseSocialLoader$BaseSearcher;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/callapp/contacts/model/contact/social/SocialData;",
        ">",
        "Lcom/callapp/contacts/loader/SimpleContactLoader;",
        "Lcom/callapp/contacts/loader/api/NetworkDataLoader;"
    }
.end annotation


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/loader/social/BaseSocialLoader<",
            "TT;>.BaseSearcher;>;"
        }
    .end annotation
.end field

.field private b:Lcom/callapp/common/model/json/JSONSocialNetworkID;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 145
    invoke-direct {p0}, Lcom/callapp/contacts/loader/SimpleContactLoader;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/callapp/contacts/loader/social/BaseSocialLoader;->b:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    .line 63
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/loader/social/BaseSocialLoader;->a:Ljava/util/List;

    .line 146
    invoke-virtual {p0}, Lcom/callapp/contacts/loader/social/BaseSocialLoader;->a()V

    return-void
.end method

.method private a(Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/contacts/model/contact/social/SocialData;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/loader/api/LoadContext;",
            "TT;)V"
        }
    .end annotation

    .line 478
    iget-object v0, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    .line 479
    invoke-direct {p0, v0}, Lcom/callapp/contacts/loader/social/BaseSocialLoader;->f(Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/contacts/model/contact/social/SocialData;

    move-result-object v1

    .line 480
    invoke-direct {p0, v0, p2}, Lcom/callapp/contacts/loader/social/BaseSocialLoader;->a(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/SocialData;)V

    .line 483
    invoke-static {v1, p2}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 484
    invoke-virtual {p0, p1, v1, p2}, Lcom/callapp/contacts/loader/social/BaseSocialLoader;->a(Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/contacts/model/contact/social/SocialData;Lcom/callapp/contacts/model/contact/social/SocialData;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/loader/social/BaseSocialLoader;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/callapp/contacts/loader/social/BaseSocialLoader;->b(Lcom/callapp/contacts/model/contact/ContactData;)V

    return-void
.end method

.method private a(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/SocialData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "TT;)V"
        }
    .end annotation

    .line 565
    invoke-virtual {p0}, Lcom/callapp/contacts/loader/social/BaseSocialLoader;->getDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v0

    iget-object v0, v0, Lcom/callapp/contacts/model/contact/DataSource;->socialDataField:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactField;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/callapp/contacts/util/ReflectionUtils;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private b(Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 3

    .line 410
    invoke-direct {p0, p1}, Lcom/callapp/contacts/loader/social/BaseSocialLoader;->c(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/loader/social/BaseSocialLoader;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/loader/social/BaseSocialLoader$BaseSearcher;

    .line 415
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_2

    .line 417
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/callapp/contacts/model/contact/ContactData;->getCacheKey(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    .line 418
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    monitor-enter v2

    .line 419
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/callapp/contacts/loader/social/BaseSocialLoader$BaseSearcher;->a(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 420
    monitor-exit v2

    return-void

    .line 422
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 425
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v0, "The search thread is interrrupted and therefore will stopped"

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 430
    invoke-virtual {p0, p1, v0}, Lcom/callapp/contacts/loader/social/BaseSocialLoader;->a(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/SocialSearchResults;)V

    return-void
.end method

.method private b(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/SocialSearchResults;)V
    .locals 1

    .line 553
    invoke-virtual {p0}, Lcom/callapp/contacts/loader/social/BaseSocialLoader;->getDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v0

    iget-object v0, v0, Lcom/callapp/contacts/model/contact/DataSource;->socialSearchField:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactField;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/callapp/contacts/util/ReflectionUtils;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private c(Lcom/callapp/contacts/model/contact/ContactData;)Z
    .locals 3

    .line 434
    invoke-direct {p0, p1}, Lcom/callapp/contacts/loader/social/BaseSocialLoader;->d(Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/contacts/model/contact/SocialSearchResults;

    move-result-object v0

    if-eqz v0, :cond_1

    const v1, 0x7f0b003d

    .line 438
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/model/contact/SocialSearchResults;->isExpired(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 439
    iget-object v0, v0, Lcom/callapp/contacts/model/contact/SocialSearchResults;->term:Ljava/lang/String;

    .line 441
    iget-object v1, p0, Lcom/callapp/contacts/loader/social/BaseSocialLoader;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/loader/social/BaseSocialLoader$BaseSearcher;

    .line 442
    invoke-virtual {v2, p1, v0}, Lcom/callapp/contacts/loader/social/BaseSocialLoader$BaseSearcher;->a(Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private d(Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/contacts/model/contact/SocialSearchResults;
    .locals 1

    .line 557
    invoke-virtual {p0}, Lcom/callapp/contacts/loader/social/BaseSocialLoader;->getDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v0

    iget-object v0, v0, Lcom/callapp/contacts/model/contact/DataSource;->socialSearchField:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactField;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/ReflectionUtils;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/model/contact/SocialSearchResults;

    return-object p1
.end method

.method private e(Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/common/model/json/JSONSocialNetworkID;
    .locals 1

    .line 561
    invoke-virtual {p0}, Lcom/callapp/contacts/loader/social/BaseSocialLoader;->getDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v0

    iget-object v0, v0, Lcom/callapp/contacts/model/contact/DataSource;->socialIdField:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactField;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/ReflectionUtils;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-object p1
.end method

.method private f(Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/contacts/model/contact/social/SocialData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            ")TT;"
        }
    .end annotation

    .line 569
    invoke-virtual {p0}, Lcom/callapp/contacts/loader/social/BaseSocialLoader;->getDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v0

    iget-object v0, v0, Lcom/callapp/contacts/model/contact/DataSource;->socialDataField:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactField;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/ReflectionUtils;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/model/contact/social/SocialData;

    return-object p1
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/PersonData;",
            ">;"
        }
    .end annotation

    .line 53
    :try_start_0
    invoke-virtual {p0}, Lcom/callapp/contacts/loader/social/BaseSocialLoader;->getSocialHelper()Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->b(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Lcom/callapp/contacts/loader/social/SearchIsNotAvailableExecption; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()V
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/callapp/contacts/loader/social/BaseSocialLoader;->a:Ljava/util/List;

    new-instance v1, Lcom/callapp/contacts/loader/social/BaseSocialLoader$FriendsExactNameSearcher;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/loader/social/BaseSocialLoader$FriendsExactNameSearcher;-><init>(Lcom/callapp/contacts/loader/social/BaseSocialLoader;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v0, p0, Lcom/callapp/contacts/loader/social/BaseSocialLoader;->a:Ljava/util/List;

    new-instance v1, Lcom/callapp/contacts/loader/social/BaseSocialLoader$FullNameSearcher;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/callapp/contacts/loader/social/BaseSocialLoader$FullNameSearcher;-><init>(Lcom/callapp/contacts/loader/social/BaseSocialLoader;Lcom/callapp/contacts/loader/social/BaseSocialLoader$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object v0, p0, Lcom/callapp/contacts/loader/social/BaseSocialLoader;->a:Ljava/util/List;

    new-instance v1, Lcom/callapp/contacts/loader/social/BaseSocialLoader$NamesSearcher;

    invoke-direct {v1, p0, v2}, Lcom/callapp/contacts/loader/social/BaseSocialLoader$NamesSearcher;-><init>(Lcom/callapp/contacts/loader/social/BaseSocialLoader;Lcom/callapp/contacts/loader/social/BaseSocialLoader$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v0, p0, Lcom/callapp/contacts/loader/social/BaseSocialLoader;->a:Ljava/util/List;

    new-instance v1, Lcom/callapp/contacts/loader/social/BaseSocialLoader$UserNameFromEmailSearcher;

    invoke-direct {v1, p0, v2}, Lcom/callapp/contacts/loader/social/BaseSocialLoader$UserNameFromEmailSearcher;-><init>(Lcom/callapp/contacts/loader/social/BaseSocialLoader;Lcom/callapp/contacts/loader/social/BaseSocialLoader$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/callapp/contacts/loader/api/LoadContext;)V
    .locals 12

    .line 1545
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/loader/api/LoadContext;->a(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 1547
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v5}, Lcom/callapp/contacts/model/contact/ContactData;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "Skipped loading %s"

    invoke-static {v3, v5, v4}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1549
    :cond_0
    iget-object v3, p1, Lcom/callapp/contacts/loader/api/LoadContext;->b:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/callapp/contacts/loader/social/BaseSocialLoader;->getLoadedFields()Ljava/util/Set;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    return-void

    .line 162
    :cond_2
    iget-object v0, p1, Lcom/callapp/contacts/loader/api/LoadContext;->c:Ljava/util/Set;

    .line 163
    iget-object v3, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    .line 164
    invoke-direct {p0, v3}, Lcom/callapp/contacts/loader/social/BaseSocialLoader;->e(Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v4

    if-nez v0, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_5

    .line 168
    invoke-virtual {p0}, Lcom/callapp/contacts/loader/social/BaseSocialLoader;->getDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v6

    iget-object v6, v6, Lcom/callapp/contacts/model/contact/DataSource;->socialIdField:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v6, 0x1

    .line 169
    :goto_3
    iget-object v7, p1, Lcom/callapp/contacts/loader/api/LoadContext;->b:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/callapp/contacts/loader/social/BaseSocialLoader;->getDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v8

    iget-object v8, v8, Lcom/callapp/contacts/model/contact/DataSource;->socialSearchField:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    .line 170
    sget-object v8, Lcom/callapp/contacts/model/contact/ContactField;->genomeData:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {v3, v8}, Lcom/callapp/contacts/model/contact/ContactData;->getDataSource(Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v8

    sget-object v9, Lcom/callapp/contacts/model/contact/DataSource;->genome:Lcom/callapp/contacts/model/contact/DataSource;

    if-ne v8, v9, :cond_6

    const/4 v8, 0x1

    goto :goto_4

    :cond_6
    const/4 v8, 0x0

    .line 171
    :goto_4
    invoke-virtual {p0}, Lcom/callapp/contacts/loader/social/BaseSocialLoader;->getDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/callapp/contacts/model/contact/ContactData;->isForceNoSocialId(Lcom/callapp/contacts/model/contact/DataSource;)Z

    move-result v9

    .line 172
    invoke-virtual {p0}, Lcom/callapp/contacts/loader/social/BaseSocialLoader;->getDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v10

    iget-object v10, v10, Lcom/callapp/contacts/model/contact/DataSource;->socialIdField:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {v3, v10}, Lcom/callapp/contacts/model/contact/ContactData;->getDataSource(Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v10

    sget-object v11, Lcom/callapp/contacts/model/contact/DataSource;->socialSearch:Lcom/callapp/contacts/model/contact/DataSource;

    if-ne v10, v11, :cond_7

    const/4 v10, 0x1

    goto :goto_5

    :cond_7
    const/4 v10, 0x0

    :goto_5
    if-eqz v4, :cond_8

    if-eqz v10, :cond_9

    :cond_8
    if-eqz v7, :cond_9

    if-eqz v8, :cond_9

    if-nez v9, :cond_9

    const/4 v7, 0x1

    goto :goto_6

    :cond_9
    const/4 v7, 0x0

    :goto_6
    const/4 v8, 0x0

    if-eqz v7, :cond_c

    if-eqz v5, :cond_a

    .line 179
    invoke-direct {p0, v3}, Lcom/callapp/contacts/loader/social/BaseSocialLoader;->b(Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 180
    invoke-direct {p0, v3}, Lcom/callapp/contacts/loader/social/BaseSocialLoader;->e(Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v0

    .line 181
    invoke-static {v0, v4}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    move-object v4, v0

    const/4 v6, 0x1

    goto :goto_7

    :cond_a
    if-eqz v0, :cond_b

    .line 186
    sget-object v5, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 188
    invoke-direct {p0, v3, v8}, Lcom/callapp/contacts/loader/social/BaseSocialLoader;->b(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/SocialSearchResults;)V

    .line 193
    :cond_b
    :try_start_0
    new-instance v0, Lcom/callapp/contacts/loader/social/BaseSocialLoader$1;

    invoke-direct {v0, p0, p0, p1, v3}, Lcom/callapp/contacts/loader/social/BaseSocialLoader$1;-><init>(Lcom/callapp/contacts/loader/social/BaseSocialLoader;Lcom/callapp/contacts/loader/api/ContactDataLoader;Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-static {v0}, Lcom/callapp/contacts/loader/api/LoadContext;->a(Lcom/callapp/contacts/manager/task/Task;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception p1

    .line 205
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Safely ignoring RejectedExecutionException"

    invoke-static {v0, p1, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void

    :cond_c
    :goto_7
    if-eqz v6, :cond_10

    if-nez v4, :cond_d

    .line 214
    iput-object v8, p0, Lcom/callapp/contacts/loader/social/BaseSocialLoader;->b:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    .line 215
    invoke-direct {p0, p1, v8}, Lcom/callapp/contacts/loader/social/BaseSocialLoader;->a(Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/contacts/model/contact/social/SocialData;)V

    .line 216
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/callapp/contacts/loader/social/BaseSocialLoader;->getDataClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Lcom/callapp/contacts/loader/social/BaseSocialLoader;->getDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v1

    iget-object v1, v1, Lcom/callapp/contacts/model/contact/DataSource;->socialDataField:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {v3, v1}, Lcom/callapp/contacts/model/contact/ContactData;->getCacheKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/cache/CacheManager;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void

    .line 219
    :cond_d
    iget-object v0, p0, Lcom/callapp/contacts/loader/social/BaseSocialLoader;->b:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-static {v0, v4}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0, v3}, Lcom/callapp/contacts/loader/social/BaseSocialLoader;->f(Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/contacts/model/contact/social/SocialData;

    move-result-object v0

    if-nez v0, :cond_f

    .line 220
    :cond_e
    iput-object v4, p0, Lcom/callapp/contacts/loader/social/BaseSocialLoader;->b:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    .line 221
    invoke-virtual {p0, p1, v4}, Lcom/callapp/contacts/loader/social/BaseSocialLoader;->a(Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    .line 228
    :cond_f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/loader/api/LoadContext;->a(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 229
    invoke-direct {p0, v3}, Lcom/callapp/contacts/loader/social/BaseSocialLoader;->f(Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/contacts/model/contact/social/SocialData;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 230
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/social/SocialData;->isDirty()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 231
    invoke-virtual {p0}, Lcom/callapp/contacts/loader/social/BaseSocialLoader;->getDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v4

    iget-object v4, v4, Lcom/callapp/contacts/model/contact/DataSource;->socialDataField:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/model/contact/ContactData;->getCacheKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 232
    invoke-virtual {p1}, Lcom/callapp/contacts/loader/api/LoadContext;->getFlags()Ljava/util/Set;

    move-result-object p1

    new-array v2, v2, [Lcom/callapp/contacts/loader/api/LoaderFlags;

    sget-object v4, Lcom/callapp/contacts/loader/api/LoaderFlags;->disableSpecificCaches:Lcom/callapp/contacts/loader/api/LoaderFlags;

    aput-object v4, v2, v1

    invoke-static {p1, v2}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    .line 233
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/callapp/contacts/loader/social/BaseSocialLoader;->getDataClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2, v3, v0}, Lcom/callapp/contacts/manager/cache/CacheManager;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 234
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/model/contact/social/SocialData;->setDirty(Z)V

    :cond_10
    return-void
.end method

.method protected abstract a(Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
.end method

.method public a(Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/contacts/model/contact/social/SocialData;Lcom/callapp/contacts/model/contact/social/SocialData;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/loader/api/LoadContext;",
            "TT;TT;)V"
        }
    .end annotation

    .line 489
    iget-object v0, p1, Lcom/callapp/contacts/loader/api/LoadContext;->b:Ljava/util/Set;

    .line 490
    iget-object v1, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    .line 492
    invoke-virtual {p0}, Lcom/callapp/contacts/loader/social/BaseSocialLoader;->getDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v2

    iget-object v2, v2, Lcom/callapp/contacts/model/contact/DataSource;->socialDataField:Lcom/callapp/contacts/model/contact/ContactField;

    .line 493
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 494
    invoke-virtual {v1, v2}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    .line 497
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/loader/api/LoadContext;->b()Lcom/callapp/contacts/framework/util/MultiTaskRunner;

    move-result-object v2

    .line 499
    sget-object v3, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->NAME_FIELDS:Ljava/util/EnumSet;

    invoke-static {v0, v3}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    if-nez p2, :cond_1

    move-object v3, v4

    goto :goto_0

    .line 500
    :cond_1
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/social/SocialData;->getFullName()Ljava/lang/String;

    move-result-object v3

    :goto_0
    if-nez p3, :cond_2

    move-object v5, v4

    goto :goto_1

    .line 501
    :cond_2
    invoke-virtual {p3}, Lcom/callapp/contacts/model/contact/social/SocialData;->getFullName()Ljava/lang/String;

    move-result-object v5

    .line 502
    :goto_1
    invoke-static {v3, v5}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 503
    new-instance v3, Lcom/callapp/contacts/loader/social/BaseSocialLoader$2;

    invoke-direct {v3, p0, v1}, Lcom/callapp/contacts/loader/social/BaseSocialLoader$2;-><init>(Lcom/callapp/contacts/loader/social/BaseSocialLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 513
    :cond_3
    sget-object v3, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->PHOTO_FIELDS:Ljava/util/EnumSet;

    invoke-static {v0, v3}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-nez p2, :cond_4

    move-object v3, v4

    goto :goto_2

    .line 514
    :cond_4
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/social/SocialData;->getPhotoUrl()Ljava/lang/String;

    move-result-object v3

    :goto_2
    if-nez p3, :cond_5

    move-object v5, v4

    goto :goto_3

    .line 515
    :cond_5
    invoke-virtual {p3}, Lcom/callapp/contacts/model/contact/social/SocialData;->getPhotoUrl()Ljava/lang/String;

    move-result-object v5

    .line 516
    :goto_3
    invoke-static {v3, v5}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 517
    new-instance v3, Lcom/callapp/contacts/loader/social/BaseSocialLoader$3;

    invoke-direct {v3, p0, v1}, Lcom/callapp/contacts/loader/social/BaseSocialLoader$3;-><init>(Lcom/callapp/contacts/loader/social/BaseSocialLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 527
    :cond_6
    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->mutualFriends:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    if-nez p2, :cond_7

    move-object p2, v4

    goto :goto_4

    .line 528
    :cond_7
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/social/SocialData;->getMutualFriends()Ljava/util/List;

    move-result-object p2

    :goto_4
    if-nez p3, :cond_8

    goto :goto_5

    .line 529
    :cond_8
    invoke-virtual {p3}, Lcom/callapp/contacts/model/contact/social/SocialData;->getMutualFriends()Ljava/util/List;

    move-result-object v4

    .line 530
    :goto_5
    invoke-static {p2, v4}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 531
    new-instance p2, Lcom/callapp/contacts/loader/social/BaseSocialLoader$4;

    invoke-direct {p2, p0, v1}, Lcom/callapp/contacts/loader/social/BaseSocialLoader$4;-><init>(Lcom/callapp/contacts/loader/social/BaseSocialLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v2, p2}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 541
    :cond_9
    iget-boolean p2, p0, Lcom/callapp/contacts/loader/social/BaseSocialLoader;->d:Z

    invoke-virtual {p1, v2, p2}, Lcom/callapp/contacts/loader/api/LoadContext;->a(Lcom/callapp/contacts/framework/util/MultiTaskRunner;Z)V

    return-void
.end method

.method protected abstract a(Lcom/callapp/contacts/model/contact/ContactData;)V
.end method

.method protected final a(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/SocialSearchResults;)V
    .locals 0

    .line 451
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/loader/social/BaseSocialLoader;->b(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/SocialSearchResults;)V

    .line 452
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/loader/social/BaseSocialLoader;->a(Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 453
    invoke-virtual {p0}, Lcom/callapp/contacts/loader/social/BaseSocialLoader;->getDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object p2

    iget-object p2, p2, Lcom/callapp/contacts/model/contact/DataSource;->socialSearchField:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    return-void
.end method

.method public final b(Lcom/callapp/contacts/loader/api/LoadContext;)V
    .locals 7

    .line 2469
    invoke-virtual {p0}, Lcom/callapp/contacts/loader/social/BaseSocialLoader;->getDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v0

    iget-object v1, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    iget-object v2, p1, Lcom/callapp/contacts/loader/api/LoadContext;->b:Ljava/util/Set;

    .line 3457
    iget-object v0, v0, Lcom/callapp/contacts/model/contact/DataSource;->socialSearchField:Lcom/callapp/contacts/model/contact/ContactField;

    .line 3458
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 3459
    invoke-virtual {v1, v0}, Lcom/callapp/contacts/model/contact/ContactData;->getCacheKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3460
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v1

    const-class v2, Lcom/callapp/contacts/model/contact/SocialSearchResults;

    .line 4215
    invoke-virtual {v1, v2, v0, v3}, Lcom/callapp/contacts/manager/cache/CacheManager;->b(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    .line 3460
    check-cast v0, Lcom/callapp/contacts/model/contact/SocialSearchResults;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2472
    iget-object v1, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p0, v1, v0}, Lcom/callapp/contacts/loader/social/BaseSocialLoader;->a(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/SocialSearchResults;)V

    .line 246
    :cond_1
    iget-object v0, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p0}, Lcom/callapp/contacts/loader/social/BaseSocialLoader;->getDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v1

    iget-object v1, v1, Lcom/callapp/contacts/model/contact/DataSource;->socialDataField:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/model/contact/ContactData;->getCacheKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 247
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/callapp/contacts/loader/social/BaseSocialLoader;->getDataClass()Ljava/lang/Class;

    move-result-object v2

    .line 248
    invoke-virtual {p1}, Lcom/callapp/contacts/loader/api/LoadContext;->getFlags()Ljava/util/Set;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/callapp/contacts/loader/api/LoaderFlags;

    sget-object v6, Lcom/callapp/contacts/loader/api/LoaderFlags;->disableSpecificCaches:Lcom/callapp/contacts/loader/api/LoaderFlags;

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v3

    .line 4223
    invoke-virtual {v1, v2, v0, v3}, Lcom/callapp/contacts/manager/cache/CacheManager;->b(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    .line 247
    check-cast v0, Lcom/callapp/contacts/model/contact/social/SocialData;

    if-eqz v0, :cond_2

    .line 250
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/loader/social/BaseSocialLoader;->a(Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/contacts/model/contact/social/SocialData;)V

    :cond_2
    return-void
.end method

.method protected abstract getDataClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end method

.method protected abstract getDataSource()Lcom/callapp/contacts/model/contact/DataSource;
.end method

.method public abstract getSocialHelper()Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;
.end method
