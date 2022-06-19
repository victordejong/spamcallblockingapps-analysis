.class public Lcom/callapp/contacts/model/SelfContactData;
.super Lcom/callapp/contacts/model/contact/ContactData;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/callapp/framework/phone/Phone;Ljava/util/Set;Lcom/callapp/contacts/framework/event/FieldListenerRegistry;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/framework/phone/Phone;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;",
            "Lcom/callapp/contacts/framework/event/FieldListenerRegistry;",
            "Z)V"
        }
    .end annotation

    const-wide/16 v2, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    .line 26
    invoke-direct/range {v0 .. v7}, Lcom/callapp/contacts/model/contact/ContactData;-><init>(Lcom/callapp/framework/phone/Phone;JLjava/util/Set;Lcom/callapp/contacts/framework/event/FieldListenerRegistry;ZLcom/callapp/contacts/model/objectbox/ExtractedInfo;)V

    return-void
.end method


# virtual methods
.method public getAddress()Lcom/callapp/common/model/json/JSONAddress;
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/callapp/contacts/model/SelfContactData;->address:Lcom/callapp/common/model/json/JSONAddress;

    if-nez v0, :cond_3

    .line 59
    invoke-virtual {p0}, Lcom/callapp/contacts/model/SelfContactData;->getAddresses()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/common/model/json/JSONAddress;

    .line 60
    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONAddress;->isFromUserProfile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    iput-object v1, p0, Lcom/callapp/contacts/model/SelfContactData;->address:Lcom/callapp/common/model/json/JSONAddress;

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/model/SelfContactData;->address:Lcom/callapp/common/model/json/JSONAddress;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/callapp/contacts/model/SelfContactData;->address:Lcom/callapp/common/model/json/JSONAddress;

    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONAddress;->getFullAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 68
    :cond_2
    invoke-super {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getAddress()Lcom/callapp/common/model/json/JSONAddress;

    move-result-object v0

    return-object v0

    .line 71
    :cond_3
    iget-object v0, p0, Lcom/callapp/contacts/model/SelfContactData;->address:Lcom/callapp/common/model/json/JSONAddress;

    return-object v0
.end method

.method public getVisibleEmails()Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONEmail;",
            ">;"
        }
    .end annotation

    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 35
    invoke-super {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getVisibleEmails()Ljava/util/Collection;

    move-result-object v1

    .line 36
    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 37
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/common/model/json/JSONEmail;

    .line 38
    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    invoke-virtual {v3}, Lcom/callapp/common/model/json/JSONEmail;->getEmail()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/callapp/contacts/manager/UserProfileManager;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 39
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 44
    :cond_1
    iget-object v2, p0, Lcom/callapp/contacts/model/SelfContactData;->emails:Ljava/util/Map;

    monitor-enter v2

    .line 45
    :try_start_0
    iget-object v3, p0, Lcom/callapp/contacts/model/SelfContactData;->emails:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 46
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/callapp/common/model/json/JSONEmail;

    .line 47
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/callapp/contacts/model/contact/DataSource;

    .line 48
    sget-object v6, Lcom/callapp/contacts/model/contact/DataSource;->userProfile:Lcom/callapp/contacts/model/contact/DataSource;

    if-ne v4, v6, :cond_2

    .line 49
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 52
    :cond_3
    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getWebsites()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONWebsite;",
            ">;"
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    invoke-super {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getWebsites()Ljava/util/Collection;

    move-result-object v1

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

    .line 80
    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONWebsite;->isFromUserProfile()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONWebsite;->getWebsiteUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/callapp/contacts/manager/UserProfileManager;->c(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 81
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public resetSocialNetworks(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/contact/DataSource;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/callapp/contacts/model/contact/DataSource;

    .line 89
    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->facebook:Lcom/callapp/contacts/model/contact/DataSource;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1, v1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/callapp/contacts/model/SelfContactData;->getUserProfileData()Lcom/callapp/contacts/model/contact/UserProfileData;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/model/contact/UserProfileData;->setFacebookId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    :cond_0
    new-array v1, v0, [Lcom/callapp/contacts/model/contact/DataSource;

    .line 92
    sget-object v4, Lcom/callapp/contacts/model/contact/DataSource;->twitter:Lcom/callapp/contacts/model/contact/DataSource;

    aput-object v4, v1, v3

    invoke-static {p1, v1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    invoke-virtual {p0}, Lcom/callapp/contacts/model/SelfContactData;->getUserProfileData()Lcom/callapp/contacts/model/contact/UserProfileData;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/model/contact/UserProfileData;->setTwitterScreenName(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    :cond_1
    new-array v1, v0, [Lcom/callapp/contacts/model/contact/DataSource;

    .line 95
    sget-object v4, Lcom/callapp/contacts/model/contact/DataSource;->foursquare:Lcom/callapp/contacts/model/contact/DataSource;

    aput-object v4, v1, v3

    invoke-static {p1, v1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 96
    invoke-virtual {p0}, Lcom/callapp/contacts/model/SelfContactData;->getUserProfileData()Lcom/callapp/contacts/model/contact/UserProfileData;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/model/contact/UserProfileData;->setFoursquareId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    :cond_2
    new-array v1, v0, [Lcom/callapp/contacts/model/contact/DataSource;

    .line 98
    sget-object v4, Lcom/callapp/contacts/model/contact/DataSource;->instagram:Lcom/callapp/contacts/model/contact/DataSource;

    aput-object v4, v1, v3

    invoke-static {p1, v1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 99
    invoke-virtual {p0}, Lcom/callapp/contacts/model/SelfContactData;->getUserProfileData()Lcom/callapp/contacts/model/contact/UserProfileData;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/model/contact/UserProfileData;->setInstagramId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    :cond_3
    new-array v0, v0, [Lcom/callapp/contacts/model/contact/DataSource;

    .line 101
    sget-object v1, Lcom/callapp/contacts/model/contact/DataSource;->pinterest:Lcom/callapp/contacts/model/contact/DataSource;

    aput-object v1, v0, v3

    invoke-static {p1, v0}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 102
    invoke-virtual {p0}, Lcom/callapp/contacts/model/SelfContactData;->getUserProfileData()Lcom/callapp/contacts/model/contact/UserProfileData;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/model/contact/UserProfileData;->setPinterestId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    .line 105
    :cond_4
    invoke-super {p0, p1}, Lcom/callapp/contacts/model/contact/ContactData;->resetSocialNetworks(Ljava/util/List;)V

    return-void
.end method
