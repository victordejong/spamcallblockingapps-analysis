.class public Lcom/callapp/contacts/sync/syncer/WebsitesSyncer;
.super Lcom/callapp/contacts/sync/syncer/Syncer;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/callapp/contacts/sync/syncer/Syncer;-><init>()V

    return-void
.end method


# virtual methods
.method public onSyncContact(Lcom/callapp/contacts/sync/model/SyncerContext;)V
    .locals 6

    .line 22
    iget-object v0, p1, Lcom/callapp/contacts/sync/model/SyncerContext;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    .line 24
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getWebsites()Ljava/util/Collection;

    move-result-object v1

    .line 25
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/common/model/json/JSONWebsite;

    .line 26
    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONWebsite;->getWebsiteUrl()Ljava/lang/String;

    move-result-object v2

    .line 29
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getFacebookId()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 30
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/Singletons;->getFacebookHelper()Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    move-result-object v3

    .line 31
    invoke-virtual {v3, v2}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 32
    invoke-virtual {p0, v3, v0, v5, v4}, Lcom/callapp/contacts/sync/syncer/WebsitesSyncer;->markProfileAsSureOrUnsure(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 38
    :cond_1
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getTwitterScreenName()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v3

    if-nez v3, :cond_0

    .line 39
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/Singletons;->getTwitterHelper()Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    move-result-object v3

    .line 40
    invoke-virtual {v3, v2}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 41
    invoke-virtual {p0, v3, v0, v2, v4}, Lcom/callapp/contacts/sync/syncer/WebsitesSyncer;->markProfileAsSureOrUnsure(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_0

    .line 48
    :cond_2
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 49
    invoke-virtual {p1}, Lcom/callapp/contacts/sync/model/SyncerContext;->markFullySynced()V

    return-void

    :cond_3
    const/4 p1, 0x0

    .line 51
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/sync/syncer/WebsitesSyncer;->setSyncEnabled(Z)V

    return-void
.end method
