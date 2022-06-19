.class public Lcom/callapp/contacts/loader/SuggestionLoader;
.super Lcom/callapp/contacts/loader/SimpleContactLoader;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/callapp/contacts/loader/SimpleContactLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/loader/api/LoadContext;)V
    .locals 10

    .line 85
    iget-object v0, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    .line 86
    const-class v1, Lcom/callapp/contacts/loader/SuggestionLoader;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/model/contact/ContactData;->getLock(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 87
    :try_start_0
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getSuggestionData()Lcom/callapp/contacts/model/contact/SuggestionData;

    move-result-object v2

    if-nez v2, :cond_1

    .line 89
    new-instance v2, Lcom/callapp/contacts/model/contact/SuggestionData;

    invoke-direct {v2}, Lcom/callapp/contacts/model/contact/SuggestionData;-><init>()V

    .line 92
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/callapp/contacts/manager/SuggestContactManager;->a(J)Landroid/util/SparseArray;

    move-result-object v0

    .line 96
    sget-object v3, Lcom/callapp/common/api/ApiConstants;->c:[Ljava/lang/Integer;

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_1

    aget-object v7, v3, v6

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 97
    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 98
    invoke-static {v8}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 99
    new-instance v9, Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-direct {v9, v8, v5}, Lcom/callapp/common/model/json/JSONSocialNetworkID;-><init>(Ljava/lang/String;Z)V

    .line 100
    invoke-virtual {v2, v9, v7}, Lcom/callapp/contacts/model/contact/SuggestionData;->setSocialIdByNetId(Lcom/callapp/common/model/json/JSONSocialNetworkID;I)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1042
    :cond_1
    iget-object v0, p1, Lcom/callapp/contacts/loader/api/LoadContext;->b:Ljava/util/Set;

    .line 1043
    iget-object v3, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    .line 1045
    invoke-virtual {v3}, Lcom/callapp/contacts/model/contact/ContactData;->getSuggestionData()Lcom/callapp/contacts/model/contact/SuggestionData;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1046
    sget-object v4, Lcom/callapp/contacts/model/contact/ContactField;->suggestions:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1047
    invoke-virtual {v3, v2}, Lcom/callapp/contacts/model/contact/ContactData;->setSuggestionData(Lcom/callapp/contacts/model/contact/SuggestionData;)V

    .line 1048
    iget-boolean v4, p0, Lcom/callapp/contacts/loader/SuggestionLoader;->d:Z

    invoke-static {v3, v0, p1, v4}, Lcom/callapp/contacts/model/contact/ContactDataUtils;->updateAllSocialIdsFromFields(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;Lcom/callapp/contacts/loader/api/LoadContext;Z)V

    :cond_2
    if-nez v2, :cond_3

    .line 1062
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    goto :goto_1

    .line 1063
    :cond_3
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 1064
    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/SuggestionData;->getFacebookId()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    .line 1065
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1066
    :cond_4
    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/SuggestionData;->getTwitterScreenName()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v4

    if-eqz v4, :cond_5

    const/4 v4, 0x4

    .line 1067
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1068
    :cond_5
    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/SuggestionData;->getFoursquareId()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v4

    if-eqz v4, :cond_6

    const/4 v4, 0x6

    .line 1069
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1070
    :cond_6
    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/SuggestionData;->getInstagramId()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v4

    if-eqz v4, :cond_7

    const/4 v4, 0x7

    .line 1071
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1072
    :cond_7
    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/SuggestionData;->getPinterestId()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v4

    if-eqz v4, :cond_8

    const/16 v4, 0x9

    .line 1073
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1074
    :cond_8
    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/SuggestionData;->getVkId()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v2

    if-eqz v2, :cond_9

    const/16 v2, 0xa

    .line 1075
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1052
    :cond_9
    :goto_1
    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->hasSuggestions:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1053
    invoke-virtual {v3}, Lcom/callapp/contacts/model/contact/ContactData;->getHasSuggestions()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1054
    invoke-virtual {v3, p1}, Lcom/callapp/contacts/model/contact/ContactData;->setHasSuggestions(Ljava/util/Set;)V

    .line 1055
    invoke-virtual {v3}, Lcom/callapp/contacts/model/contact/ContactData;->updateHasSuggestion()V

    .line 108
    :cond_a
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
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

    .line 38
    sget-object v0, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->NONE:Ljava/util/EnumSet;

    return-object v0
.end method
