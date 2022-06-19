.class public Lcom/callapp/contacts/sync/MatchAndSuggestHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ILcom/callapp/contacts/model/contact/ContactData;)V
    .locals 8

    .line 46
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/manager/Singletons;->getRemoteAccountHelper(I)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 48
    invoke-virtual {v0, p1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->a(Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 49
    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->isSure()Z

    move-result v2

    if-nez v2, :cond_6

    :cond_0
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 53
    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->getId()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 55
    :cond_1
    invoke-static {p1, p0}, Lcom/callapp/contacts/api/helper/common/SocialNetworksSearchUtil;->a(Lcom/callapp/contacts/model/contact/ContactData;I)Lcom/callapp/contacts/model/contact/SocialSearchResults;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 56
    iget-object v3, v1, Lcom/callapp/contacts/model/contact/SocialSearchResults;->id:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-eqz v3, :cond_2

    .line 58
    iget-object v1, v1, Lcom/callapp/contacts/model/contact/SocialSearchResults;->id:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->getId()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_5

    .line 59
    iget-object v3, v1, Lcom/callapp/contacts/model/contact/SocialSearchResults;->results:Ljava/util/List;

    invoke-static {v3}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 60
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 61
    iget-object v4, v1, Lcom/callapp/contacts/model/contact/SocialSearchResults;->results:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/callapp/contacts/model/PersonData;

    .line 62
    iget-object v6, v1, Lcom/callapp/contacts/model/contact/SocialSearchResults;->term:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/callapp/contacts/model/PersonData;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 63
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 67
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_5

    const/4 v1, 0x0

    .line 68
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/model/PersonData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/PersonData;->getId()Ljava/lang/String;

    move-result-object v2

    .line 72
    :cond_5
    :goto_1
    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 74
    :try_start_0
    invoke-virtual {v0, v2}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-static {p0, p1, v2, v0}, Lcom/callapp/contacts/sync/MatchAndSuggestHelper;->a(ILcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/callapp/contacts/loader/social/UserNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/callapp/contacts/loader/social/QuotaReachedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 77
    :goto_2
    const-class p1, Lcom/callapp/contacts/sync/MatchAndSuggestHelper;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/callapp/contacts/util/CLog;->c(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public static a(ILcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 100
    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/sync/MatchAndSuggestHelper;->a(ILcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object v6

    move v3, p0

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v1 .. v6}, Lcom/callapp/contacts/manager/SuggestContactManager;->a(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static a(Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 4

    .line 34
    sget-object v0, Lcom/callapp/common/api/ApiConstants;->c:[Ljava/lang/Integer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 35
    invoke-static {v3, p0}, Lcom/callapp/contacts/sync/MatchAndSuggestHelper;->a(ILcom/callapp/contacts/model/contact/ContactData;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(ILcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;)Z
    .locals 2

    .line 85
    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/callapp/contacts/loader/UserPositiveNegativeManager;->b(JLcom/callapp/framework/phone/Phone;)Landroid/util/SparseArray;

    move-result-object p1

    .line 87
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-eqz p0, :cond_0

    .line 88
    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
