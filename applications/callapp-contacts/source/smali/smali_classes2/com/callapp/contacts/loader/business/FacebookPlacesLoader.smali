.class public Lcom/callapp/contacts/loader/business/FacebookPlacesLoader;
.super Lcom/callapp/contacts/loader/SimpleContactLoader;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/callapp/contacts/loader/SimpleContactLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/loader/api/LoadContext;)V
    .locals 8

    .line 22
    iget-object v0, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    const-class v1, Lcom/callapp/contacts/model/contact/FacebookPlaceData;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/model/contact/ContactData;->getLock(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 24
    :try_start_0
    iget-object v1, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->getFacebookPlaceData()Lcom/callapp/contacts/model/contact/FacebookPlaceData;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 26
    monitor-exit v0

    return-void

    .line 29
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v1

    const-class v2, Lcom/callapp/contacts/model/contact/FacebookPlaceData;

    iget-object v3, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    const-class v4, Lcom/callapp/contacts/model/contact/FacebookPlaceData;

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/model/contact/ContactData;->getCacheKey(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 1215
    invoke-virtual {v1, v2, v3, v4}, Lcom/callapp/contacts/manager/cache/CacheManager;->b(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v1

    .line 29
    check-cast v1, Lcom/callapp/contacts/model/contact/FacebookPlaceData;

    if-eqz v1, :cond_b

    .line 2043
    iget-object v2, p1, Lcom/callapp/contacts/loader/api/LoadContext;->b:Ljava/util/Set;

    .line 2044
    iget-object v3, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    .line 2045
    invoke-virtual {v3, v1}, Lcom/callapp/contacts/model/contact/ContactData;->setFacebookPlaceData(Lcom/callapp/contacts/model/contact/FacebookPlaceData;)V

    .line 2047
    invoke-virtual {p1}, Lcom/callapp/contacts/loader/api/LoadContext;->b()Lcom/callapp/contacts/framework/util/MultiTaskRunner;

    move-result-object v1

    const/4 v5, 0x1

    new-array v6, v5, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 2049
    sget-object v7, Lcom/callapp/contacts/model/contact/ContactField;->facebookId:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v7, v6, v4

    invoke-static {v2, v6}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2050
    new-instance v6, Lcom/callapp/contacts/loader/business/FacebookPlacesLoader$1;

    invoke-direct {v6, p0, v3}, Lcom/callapp/contacts/loader/business/FacebookPlacesLoader$1;-><init>(Lcom/callapp/contacts/loader/business/FacebookPlacesLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v1, v6}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    :cond_1
    const/4 v6, 0x2

    new-array v6, v6, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 2059
    sget-object v7, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v7, v6, v4

    sget-object v7, Lcom/callapp/contacts/model/contact/ContactField;->names:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v7, v6, v5

    invoke-static {v2, v6}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2060
    new-instance v6, Lcom/callapp/contacts/loader/business/FacebookPlacesLoader$2;

    invoke-direct {v6, p0, v3}, Lcom/callapp/contacts/loader/business/FacebookPlacesLoader$2;-><init>(Lcom/callapp/contacts/loader/business/FacebookPlacesLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v1, v6}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 2069
    :cond_2
    sget-object v6, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->PHOTO_FIELDS:Ljava/util/EnumSet;

    invoke-static {v2, v6}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2070
    new-instance v6, Lcom/callapp/contacts/loader/business/FacebookPlacesLoader$3;

    invoke-direct {v6, p0, v3}, Lcom/callapp/contacts/loader/business/FacebookPlacesLoader$3;-><init>(Lcom/callapp/contacts/loader/business/FacebookPlacesLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v1, v6}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 2079
    :cond_3
    sget-object v6, Lcom/callapp/contacts/model/contact/ContactField;->rating:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2080
    new-instance v6, Lcom/callapp/contacts/loader/business/FacebookPlacesLoader$4;

    invoke-direct {v6, p0, v3}, Lcom/callapp/contacts/loader/business/FacebookPlacesLoader$4;-><init>(Lcom/callapp/contacts/loader/business/FacebookPlacesLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v1, v6}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 2089
    :cond_4
    sget-object v6, Lcom/callapp/contacts/model/contact/ContactField;->addresses:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2090
    new-instance v6, Lcom/callapp/contacts/loader/business/FacebookPlacesLoader$5;

    invoke-direct {v6, p0, v3}, Lcom/callapp/contacts/loader/business/FacebookPlacesLoader$5;-><init>(Lcom/callapp/contacts/loader/business/FacebookPlacesLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v1, v6}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 2099
    :cond_5
    sget-object v6, Lcom/callapp/contacts/model/contact/ContactField;->latLng:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2100
    new-instance v6, Lcom/callapp/contacts/loader/business/FacebookPlacesLoader$6;

    invoke-direct {v6, p0, v3}, Lcom/callapp/contacts/loader/business/FacebookPlacesLoader$6;-><init>(Lcom/callapp/contacts/loader/business/FacebookPlacesLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v1, v6}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 2109
    :cond_6
    sget-object v6, Lcom/callapp/contacts/model/contact/ContactField;->websites:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2110
    new-instance v6, Lcom/callapp/contacts/loader/business/FacebookPlacesLoader$7;

    invoke-direct {v6, p0, v3}, Lcom/callapp/contacts/loader/business/FacebookPlacesLoader$7;-><init>(Lcom/callapp/contacts/loader/business/FacebookPlacesLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v1, v6}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 2119
    :cond_7
    sget-object v6, Lcom/callapp/contacts/model/contact/ContactField;->openingHours:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 2120
    new-instance v6, Lcom/callapp/contacts/loader/business/FacebookPlacesLoader$8;

    invoke-direct {v6, p0, v3}, Lcom/callapp/contacts/loader/business/FacebookPlacesLoader$8;-><init>(Lcom/callapp/contacts/loader/business/FacebookPlacesLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v1, v6}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    :cond_8
    new-array v5, v5, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 2129
    sget-object v6, Lcom/callapp/contacts/model/contact/ContactField;->priceRange:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v6, v5, v4

    invoke-static {v2, v5}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2130
    new-instance v4, Lcom/callapp/contacts/loader/business/FacebookPlacesLoader$9;

    invoke-direct {v4, p0, v3}, Lcom/callapp/contacts/loader/business/FacebookPlacesLoader$9;-><init>(Lcom/callapp/contacts/loader/business/FacebookPlacesLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v1, v4}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 2139
    :cond_9
    sget-object v4, Lcom/callapp/contacts/model/contact/ContactField;->facebookPlaces:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2140
    new-instance v2, Lcom/callapp/contacts/loader/business/FacebookPlacesLoader$10;

    invoke-direct {v2, p0, v3}, Lcom/callapp/contacts/loader/business/FacebookPlacesLoader$10;-><init>(Lcom/callapp/contacts/loader/business/FacebookPlacesLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 2149
    :cond_a
    iget-boolean v2, p0, Lcom/callapp/contacts/loader/business/FacebookPlacesLoader;->d:Z

    invoke-virtual {p1, v1, v2}, Lcom/callapp/contacts/loader/api/LoadContext;->a(Lcom/callapp/contacts/framework/util/MultiTaskRunner;Z)V

    .line 33
    :cond_b
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
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

    .line 39
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->phone:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method
