.class public Lcom/callapp/contacts/loader/business/HuaweiPlacesLoader;
.super Lcom/callapp/contacts/loader/external/ExternalSourcesLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/loader/external/ExternalSourcesLoader<",
        "Lcom/callapp/contacts/model/contact/HuaweiPlaceData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/callapp/contacts/loader/external/ExternalSourcesLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/callapp/contacts/model/contact/ExternalSourceData;)Lcom/callapp/common/model/json/JSONExternalSourceContact;
    .locals 0

    .line 25
    check-cast p1, Lcom/callapp/contacts/model/contact/HuaweiPlaceData;

    .line 1149
    invoke-static {p1}, Lcom/callapp/contacts/loader/external/ExternalSourcesUtils;->a(Lcom/callapp/contacts/model/contact/HuaweiPlaceData;)Lcom/callapp/common/model/json/JSONExternalSourceContact;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/contacts/model/contact/ExternalSourceData;)V
    .locals 5

    .line 25
    check-cast p2, Lcom/callapp/contacts/model/contact/HuaweiPlaceData;

    .line 2037
    iget-object v0, p1, Lcom/callapp/contacts/loader/api/LoadContext;->b:Ljava/util/Set;

    .line 2038
    iget-object v1, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    .line 2039
    invoke-virtual {v1, p2}, Lcom/callapp/contacts/model/contact/ContactData;->setHuaweiPlaceData(Lcom/callapp/contacts/model/contact/HuaweiPlaceData;)V

    if-eqz p2, :cond_9

    .line 2041
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/HuaweiPlaceData;->getFullName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto/16 :goto_0

    .line 2046
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/loader/api/LoadContext;->b()Lcom/callapp/contacts/framework/util/MultiTaskRunner;

    move-result-object p2

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x0

    .line 2048
    sget-object v4, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/callapp/contacts/model/contact/ContactField;->names:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2049
    new-instance v2, Lcom/callapp/contacts/loader/business/HuaweiPlacesLoader$1;

    invoke-direct {v2, p0, v1}, Lcom/callapp/contacts/loader/business/HuaweiPlacesLoader$1;-><init>(Lcom/callapp/contacts/loader/business/HuaweiPlacesLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {p2, v2}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 2058
    :cond_1
    sget-object v2, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->PHOTO_FIELDS:Ljava/util/EnumSet;

    invoke-static {v0, v2}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2059
    new-instance v2, Lcom/callapp/contacts/loader/business/HuaweiPlacesLoader$2;

    invoke-direct {v2, p0, v1}, Lcom/callapp/contacts/loader/business/HuaweiPlacesLoader$2;-><init>(Lcom/callapp/contacts/loader/business/HuaweiPlacesLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {p2, v2}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 2068
    :cond_2
    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->rating:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2069
    new-instance v2, Lcom/callapp/contacts/loader/business/HuaweiPlacesLoader$3;

    invoke-direct {v2, p0, v1}, Lcom/callapp/contacts/loader/business/HuaweiPlacesLoader$3;-><init>(Lcom/callapp/contacts/loader/business/HuaweiPlacesLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {p2, v2}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 2078
    :cond_3
    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->addresses:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2079
    new-instance v2, Lcom/callapp/contacts/loader/business/HuaweiPlacesLoader$4;

    invoke-direct {v2, p0, v1}, Lcom/callapp/contacts/loader/business/HuaweiPlacesLoader$4;-><init>(Lcom/callapp/contacts/loader/business/HuaweiPlacesLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {p2, v2}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 2088
    :cond_4
    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->latLng:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2089
    new-instance v2, Lcom/callapp/contacts/loader/business/HuaweiPlacesLoader$5;

    invoke-direct {v2, p0, v1}, Lcom/callapp/contacts/loader/business/HuaweiPlacesLoader$5;-><init>(Lcom/callapp/contacts/loader/business/HuaweiPlacesLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {p2, v2}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 2098
    :cond_5
    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->websites:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2099
    new-instance v2, Lcom/callapp/contacts/loader/business/HuaweiPlacesLoader$6;

    invoke-direct {v2, p0, v1}, Lcom/callapp/contacts/loader/business/HuaweiPlacesLoader$6;-><init>(Lcom/callapp/contacts/loader/business/HuaweiPlacesLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {p2, v2}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 2108
    :cond_6
    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->openingHours:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2109
    new-instance v2, Lcom/callapp/contacts/loader/business/HuaweiPlacesLoader$7;

    invoke-direct {v2, p0, v1}, Lcom/callapp/contacts/loader/business/HuaweiPlacesLoader$7;-><init>(Lcom/callapp/contacts/loader/business/HuaweiPlacesLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {p2, v2}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 2118
    :cond_7
    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->huaweiPlaces:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2119
    new-instance v0, Lcom/callapp/contacts/loader/business/HuaweiPlacesLoader$8;

    invoke-direct {v0, p0, v1}, Lcom/callapp/contacts/loader/business/HuaweiPlacesLoader$8;-><init>(Lcom/callapp/contacts/loader/business/HuaweiPlacesLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 2128
    :cond_8
    iget-boolean v0, p0, Lcom/callapp/contacts/loader/business/HuaweiPlacesLoader;->d:Z

    invoke-virtual {p1, p2, v0}, Lcom/callapp/contacts/loader/api/LoadContext;->a(Lcom/callapp/contacts/framework/util/MultiTaskRunner;Z)V

    :cond_9
    :goto_0
    return-void
.end method

.method public final c(Lcom/callapp/contacts/loader/api/LoadContext;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/loader/api/LoadContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/contact/HuaweiPlaceData;",
            ">;"
        }
    .end annotation

    .line 133
    iget-object p1, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    .line 135
    const-class v0, Lcom/callapp/contacts/loader/business/HuaweiPlacesLoader;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/model/contact/ContactData;->getLock(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 137
    :try_start_0
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getHuaweiPlaceData()Lcom/callapp/contacts/model/contact/HuaweiPlaceData;

    move-result-object p1

    if-eqz p1, :cond_0

    const v1, 0x7f0b0026

    .line 139
    invoke-virtual {p1, v1}, Lcom/callapp/contacts/model/contact/HuaweiPlaceData;->isExpired(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    .line 140
    monitor-exit v0

    return-object p1

    .line 143
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 144
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getDataClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/callapp/contacts/model/contact/HuaweiPlaceData;",
            ">;"
        }
    .end annotation

    .line 28
    const-class v0, Lcom/callapp/contacts/model/contact/HuaweiPlaceData;

    return-object v0
.end method

.method public getExernalSourceId()I
    .locals 1

    const/16 v0, 0x3fe

    return v0
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

    .line 161
    sget-object v0, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->NONE:Ljava/util/EnumSet;

    return-object v0
.end method
