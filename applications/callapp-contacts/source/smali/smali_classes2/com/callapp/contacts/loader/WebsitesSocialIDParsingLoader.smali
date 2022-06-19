.class public Lcom/callapp/contacts/loader/WebsitesSocialIDParsingLoader;
.super Lcom/callapp/contacts/loader/SimpleContactLoader;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/callapp/contacts/loader/SimpleContactLoader;-><init>()V

    return-void
.end method

.method private a(Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/contacts/model/contact/WebsitesSocialIDsData;)V
    .locals 7

    .line 40
    iget-object v0, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    .line 41
    iget-object v1, p1, Lcom/callapp/contacts/loader/api/LoadContext;->b:Ljava/util/Set;

    .line 42
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getWebsitesSocialIDsData()Lcom/callapp/contacts/model/contact/WebsitesSocialIDsData;

    move-result-object v2

    .line 43
    invoke-virtual {v0, p2}, Lcom/callapp/contacts/model/contact/ContactData;->setWebsitesSocialIDsData(Lcom/callapp/contacts/model/contact/WebsitesSocialIDsData;)V

    .line 45
    invoke-virtual {p1}, Lcom/callapp/contacts/loader/api/LoadContext;->b()Lcom/callapp/contacts/framework/util/MultiTaskRunner;

    move-result-object v3

    .line 47
    sget-object v4, Lcom/callapp/contacts/model/contact/ContactField;->facebookId:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    if-nez v2, :cond_0

    move-object v4, v5

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/WebsitesSocialIDsData;->getFacebookId()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v4

    :goto_0
    if-nez p2, :cond_1

    move-object v6, v5

    goto :goto_1

    .line 49
    :cond_1
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/WebsitesSocialIDsData;->getFacebookId()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v6

    .line 50
    :goto_1
    invoke-static {v4, v6}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 51
    new-instance v4, Lcom/callapp/contacts/loader/WebsitesSocialIDParsingLoader$1;

    invoke-direct {v4, p0, v0}, Lcom/callapp/contacts/loader/WebsitesSocialIDParsingLoader$1;-><init>(Lcom/callapp/contacts/loader/WebsitesSocialIDParsingLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 61
    :cond_2
    sget-object v4, Lcom/callapp/contacts/model/contact/ContactField;->twitterScreenName:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-nez v2, :cond_3

    move-object v1, v5

    goto :goto_2

    .line 62
    :cond_3
    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/WebsitesSocialIDsData;->getTwitterScreenName()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v1

    :goto_2
    if-nez p2, :cond_4

    goto :goto_3

    .line 63
    :cond_4
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/WebsitesSocialIDsData;->getTwitterScreenName()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v5

    .line 64
    :goto_3
    invoke-static {v1, v5}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 65
    new-instance p2, Lcom/callapp/contacts/loader/WebsitesSocialIDParsingLoader$2;

    invoke-direct {p2, p0, v0}, Lcom/callapp/contacts/loader/WebsitesSocialIDParsingLoader$2;-><init>(Lcom/callapp/contacts/loader/WebsitesSocialIDParsingLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v3, p2}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 75
    :cond_5
    iget-boolean p2, p0, Lcom/callapp/contacts/loader/WebsitesSocialIDParsingLoader;->d:Z

    invoke-virtual {p1, v3, p2}, Lcom/callapp/contacts/loader/api/LoadContext;->a(Lcom/callapp/contacts/framework/util/MultiTaskRunner;Z)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/loader/api/LoadContext;)V
    .locals 8

    .line 80
    iget-object v0, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    .line 81
    const-class v1, Lcom/callapp/contacts/loader/WebsitesSocialIDParsingLoader;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/model/contact/ContactData;->getLock(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 82
    :try_start_0
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getWebsitesSocialIDsData()Lcom/callapp/contacts/model/contact/WebsitesSocialIDsData;

    move-result-object v2

    .line 85
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getWebsites()Ljava/util/Collection;

    move-result-object v3

    .line 86
    invoke-static {v3}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 87
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/callapp/common/model/json/JSONWebsite;

    .line 88
    invoke-virtual {v4}, Lcom/callapp/common/model/json/JSONWebsite;->getWebsiteUrl()Ljava/lang/String;

    move-result-object v4

    .line 90
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getFacebookId()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v5

    const/4 v6, 0x0

    if-nez v5, :cond_3

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/WebsitesSocialIDsData;->getFacebookId()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v5

    if-nez v5, :cond_3

    .line 91
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->get()Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 92
    invoke-static {v5}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-nez v2, :cond_2

    .line 94
    new-instance v2, Lcom/callapp/contacts/model/contact/WebsitesSocialIDsData;

    invoke-direct {v2}, Lcom/callapp/contacts/model/contact/WebsitesSocialIDsData;-><init>()V

    .line 96
    :cond_2
    new-instance v4, Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-direct {v4, v5, v6}, Lcom/callapp/common/model/json/JSONSocialNetworkID;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2, v4}, Lcom/callapp/contacts/model/contact/WebsitesSocialIDsData;->setFacebookId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    goto :goto_0

    .line 102
    :cond_3
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getTwitterScreenName()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v5

    if-nez v5, :cond_0

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/WebsitesSocialIDsData;->getTwitterScreenName()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v5

    if-nez v5, :cond_0

    .line 103
    :cond_4
    invoke-static {}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->get()Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 104
    invoke-static {v4}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez v2, :cond_5

    .line 106
    new-instance v2, Lcom/callapp/contacts/model/contact/WebsitesSocialIDsData;

    invoke-direct {v2}, Lcom/callapp/contacts/model/contact/WebsitesSocialIDsData;-><init>()V

    .line 108
    :cond_5
    new-instance v5, Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-direct {v5, v4, v6}, Lcom/callapp/common/model/json/JSONSocialNetworkID;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2, v5}, Lcom/callapp/contacts/model/contact/WebsitesSocialIDsData;->setTwitterScreenName(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    goto :goto_0

    .line 115
    :cond_6
    invoke-direct {p0, p1, v2}, Lcom/callapp/contacts/loader/WebsitesSocialIDParsingLoader;->a(Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/contacts/model/contact/WebsitesSocialIDsData;)V

    .line 117
    iget-object p1, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    const-class v0, Lcom/callapp/contacts/model/contact/WebsitesSocialIDsData;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/model/contact/ContactData;->getCacheKey(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    if-eqz v2, :cond_7

    .line 119
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v0

    const-class v3, Lcom/callapp/contacts/model/contact/WebsitesSocialIDsData;

    const v4, 0x7f0b0056

    invoke-virtual {v0, v3, p1, v2, v4}, Lcom/callapp/contacts/manager/cache/CacheManager;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_1

    .line 121
    :cond_7
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v0

    const-class v2, Lcom/callapp/contacts/model/contact/WebsitesSocialIDsData;

    invoke-virtual {v0, v2, p1}, Lcom/callapp/contacts/manager/cache/CacheManager;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 123
    :goto_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(Lcom/callapp/contacts/loader/api/LoadContext;)V
    .locals 4

    .line 32
    iget-object v0, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    const-class v1, Lcom/callapp/contacts/model/contact/WebsitesSocialIDsData;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/model/contact/ContactData;->getCacheKey(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v1

    const-class v2, Lcom/callapp/contacts/model/contact/WebsitesSocialIDsData;

    const/4 v3, 0x0

    .line 1215
    invoke-virtual {v1, v2, v0, v3}, Lcom/callapp/contacts/manager/cache/CacheManager;->b(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    .line 33
    check-cast v0, Lcom/callapp/contacts/model/contact/WebsitesSocialIDsData;

    if-eqz v0, :cond_0

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/loader/WebsitesSocialIDParsingLoader;->a(Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/contacts/model/contact/WebsitesSocialIDsData;)V

    :cond_0
    return-void
.end method

.method public getListenFields()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation

    .line 27
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->websites:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method
