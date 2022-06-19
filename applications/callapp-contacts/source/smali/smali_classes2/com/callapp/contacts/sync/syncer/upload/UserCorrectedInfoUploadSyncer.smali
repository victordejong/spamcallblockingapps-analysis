.class public Lcom/callapp/contacts/sync/syncer/upload/UserCorrectedInfoUploadSyncer;
.super Lcom/callapp/contacts/sync/syncer/upload/JsonContactsUploadSyncher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/sync/syncer/upload/JsonContactsUploadSyncher<",
        "Lcom/callapp/common/model/json/JSONContact;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/callapp/contacts/sync/syncer/upload/JsonContactsUploadSyncher;-><init>()V

    return-void
.end method

.method private enrichContactWithUserPositive(Lcom/callapp/common/model/json/JSONContact;Lio/objectbox/relation/ToMany;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/common/model/json/JSONContact;",
            "Lio/objectbox/relation/ToMany<",
            "Lcom/callapp/contacts/model/objectbox/UserCorrectedPositiveData;",
            ">;)V"
        }
    .end annotation

    .line 102
    invoke-virtual {p2}, Lio/objectbox/relation/ToMany;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/model/objectbox/UserCorrectedPositiveData;

    .line 104
    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/UserCorrectedPositiveData;->getSocialNetworkId()I

    move-result v1

    .line 105
    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/UserCorrectedPositiveData;->getProfileId()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    const/4 v3, 0x4

    if-eq v1, v3, :cond_5

    const/4 v3, 0x5

    if-eq v1, v3, :cond_4

    const/4 v3, 0x6

    if-eq v1, v3, :cond_3

    const/4 v3, 0x7

    if-eq v1, v3, :cond_2

    const/16 v3, 0x9

    if-eq v1, v3, :cond_1

    const/16 v3, 0xa

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    new-instance v1, Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-direct {v1, v0, v2}, Lcom/callapp/common/model/json/JSONSocialNetworkID;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p1, v1}, Lcom/callapp/common/model/json/JSONContact;->setVkID(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    goto :goto_0

    .line 121
    :cond_1
    new-instance v1, Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-direct {v1, v0, v2}, Lcom/callapp/common/model/json/JSONSocialNetworkID;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p1, v1}, Lcom/callapp/common/model/json/JSONContact;->setPinterestID(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    goto :goto_0

    .line 124
    :cond_2
    new-instance v1, Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-direct {v1, v0, v2}, Lcom/callapp/common/model/json/JSONSocialNetworkID;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p1, v1}, Lcom/callapp/common/model/json/JSONContact;->setInstagramID(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    goto :goto_0

    .line 118
    :cond_3
    new-instance v1, Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-direct {v1, v0, v2}, Lcom/callapp/common/model/json/JSONSocialNetworkID;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p1, v1}, Lcom/callapp/common/model/json/JSONContact;->setFoursquareID(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    goto :goto_0

    .line 115
    :cond_4
    new-instance v1, Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-direct {v1, v0, v2}, Lcom/callapp/common/model/json/JSONSocialNetworkID;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p1, v1}, Lcom/callapp/common/model/json/JSONContact;->setGooglePlusID(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    goto :goto_0

    .line 112
    :cond_5
    new-instance v1, Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-direct {v1, v0, v2}, Lcom/callapp/common/model/json/JSONSocialNetworkID;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p1, v1}, Lcom/callapp/common/model/json/JSONContact;->setTwitterScreenName(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    goto :goto_0

    .line 109
    :cond_6
    new-instance v1, Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-direct {v1, v0, v2}, Lcom/callapp/common/model/json/JSONSocialNetworkID;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p1, v1}, Lcom/callapp/common/model/json/JSONContact;->setFacebookID(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    goto :goto_0

    :cond_7
    return-void
.end method


# virtual methods
.method public allowEmptyUpload()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getContacts()Ljava/util/Collection;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONContact;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/callapp/contacts/sync/syncer/upload/UserCorrectedInfoUploadSyncer;->syncContext:Lcom/callapp/contacts/sync/model/SyncContext;

    iget-object v0, v0, Lcom/callapp/contacts/sync/model/SyncContext;->allContacts:Ljava/util/Map;

    .line 33
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 36
    invoke-static {}, Lcom/callapp/contacts/loader/UserCorrectedDataManager;->getAllUserCorrectedData()Ljava/util/List;

    move-result-object v2

    .line 38
    invoke-static {v2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 39
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;

    .line 41
    new-instance v4, Lcom/callapp/common/model/json/JSONContact;

    invoke-direct {v4}, Lcom/callapp/common/model/json/JSONContact;-><init>()V

    .line 44
    invoke-virtual {v3}, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;->getFullName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 45
    invoke-virtual {v3}, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;->getFullName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/callapp/common/model/json/JSONContact;->setName(Ljava/lang/String;)V

    .line 49
    :cond_1
    invoke-virtual {v3}, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;->getContactId()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-lez v9, :cond_3

    .line 51
    invoke-virtual {v3}, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;->getContactId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/callapp/contacts/model/contact/ContactData;

    if-eqz v5, :cond_4

    .line 53
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 54
    invoke-virtual {v5}, Lcom/callapp/contacts/model/contact/ContactData;->getPhones()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/callapp/framework/phone/Phone;

    .line 55
    new-instance v8, Lcom/callapp/common/model/json/JSONPhoneNumber;

    invoke-direct {v8, v7}, Lcom/callapp/common/model/json/JSONPhoneNumber;-><init>(Lcom/callapp/framework/phone/Phone;)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 57
    :cond_2
    invoke-virtual {v4, v6}, Lcom/callapp/common/model/json/JSONContact;->setPhoneNumbers(Ljava/util/List;)V

    goto :goto_2

    .line 60
    :cond_3
    invoke-virtual {v3}, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 61
    new-instance v5, Lcom/callapp/common/model/json/JSONPhoneNumber;

    invoke-virtual {v3}, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;->getPhoneNumber()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/callapp/common/model/json/JSONPhoneNumber;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/callapp/common/model/json/JSONContact;->setPhoneNumbers(Ljava/util/List;)V

    .line 66
    :cond_4
    :goto_2
    invoke-virtual {v3}, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;->getUserCorrectedType()I

    move-result v5

    if-lez v5, :cond_5

    .line 67
    invoke-virtual {v3}, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;->getUserCorrectedType()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/callapp/common/model/json/JSONContact;->setType(I)V

    .line 70
    :cond_5
    invoke-virtual {v3}, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;->getUserCorrectedPositive()Lio/objectbox/relation/ToMany;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 71
    invoke-virtual {v3}, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;->getUserCorrectedPositive()Lio/objectbox/relation/ToMany;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/callapp/contacts/sync/syncer/upload/UserCorrectedInfoUploadSyncer;->enrichContactWithUserPositive(Lcom/callapp/common/model/json/JSONContact;Lio/objectbox/relation/ToMany;)V

    :cond_6
    const/4 v5, 0x0

    .line 76
    invoke-virtual {v3}, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;->getPhoneNumber()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 77
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v5

    invoke-virtual {v3}, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v5

    goto :goto_3

    .line 79
    :cond_7
    invoke-virtual {v3}, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;->getContactId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/model/contact/ContactData;

    if-eqz v3, :cond_8

    .line 81
    invoke-virtual {v3}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v5

    :cond_8
    :goto_3
    if-eqz v5, :cond_0

    .line 86
    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 91
    :cond_9
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getUploadMethod()Ljava/lang/String;
    .locals 1

    const-string v0, "uciuejd"

    return-object v0
.end method
