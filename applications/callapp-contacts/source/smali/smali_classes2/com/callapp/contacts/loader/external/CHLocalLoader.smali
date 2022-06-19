.class public Lcom/callapp/contacts/loader/external/CHLocalLoader;
.super Lcom/callapp/contacts/loader/external/ExternalSourcesLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/loader/external/ExternalSourcesLoader<",
        "Lcom/callapp/contacts/model/contact/CHLocalData;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/callapp/contacts/util/Base64Utils;->getInstance()Lcom/callapp/contacts/util/Base64Utils;

    const-string v1, "aHR0cDovL2V4dGFwaS5sb2NhbC5jaC9lbi92NS9lbnRyaWVzLmpzb24/bnM9MCZndWlkYW5jZT10cnVlJnE9JXMmc3RhcnQ9MCZleGFjdHNlYXJjaD10cnVlJnBsYXRmb3JtPWFuZHJvaWQmbWV0ZW89dHJ1ZSZrZXk9MTU4RDQ4MzA2N0FDMTFERThBMzkwODAwMjAwQzlBNjY="

    .line 3016
    invoke-static {v1}, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 40
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/callapp/contacts/loader/external/CHLocalLoader;->a:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/callapp/contacts/util/Base64Utils;->getInstance()Lcom/callapp/contacts/util/Base64Utils;

    const-string v1, "ZXh0YXBpLmxvY2FsLmNo"

    .line 4016
    invoke-static {v1}, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 41
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/callapp/contacts/loader/external/CHLocalLoader;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/callapp/contacts/loader/external/ExternalSourcesLoader;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Lcom/callapp/contacts/model/contact/ExternalSourceData;)Lcom/callapp/common/model/json/JSONExternalSourceContact;
    .locals 3

    .line 39
    check-cast p1, Lcom/callapp/contacts/model/contact/CHLocalData;

    .line 2119
    new-instance v0, Lcom/callapp/common/model/json/JSONExternalSourceContact;

    invoke-direct {v0}, Lcom/callapp/common/model/json/JSONExternalSourceContact;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    .line 2125
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/CHLocalData;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2126
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/CHLocalData;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setName(Ljava/lang/String;)V

    .line 2129
    :cond_1
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/CHLocalData;->getLat()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2130
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/CHLocalData;->getLat()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setLat(D)V

    .line 2133
    :cond_2
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/CHLocalData;->getLng()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2134
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/CHLocalData;->getLng()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setLng(D)V

    .line 2137
    :cond_3
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/CHLocalData;->getAddresses()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2138
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/CHLocalData;->getAddresses()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setAddresses(Ljava/util/List;)V

    .line 2141
    :cond_4
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/CHLocalData;->getCategories()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2142
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/CHLocalData;->getCategories()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setCategories(Ljava/util/List;)V

    .line 2145
    :cond_5
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/CHLocalData;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2146
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/CHLocalData;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setDescription(Ljava/lang/String;)V

    .line 2149
    :cond_6
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/CHLocalData;->getOpeningHours()Lcom/callapp/common/model/json/JSONOpeningHours;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/CHLocalData;->getOpeningHours()Lcom/callapp/common/model/json/JSONOpeningHours;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONOpeningHours;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 2150
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/CHLocalData;->getOpeningHours()Lcom/callapp/common/model/json/JSONOpeningHours;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setOpeningHours(Lcom/callapp/common/model/json/JSONOpeningHours;)V

    .line 2153
    :cond_7
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/CHLocalData;->getPhotoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2154
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/CHLocalData;->getPhotoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setPhotoUrl(Ljava/lang/String;)V

    .line 2157
    :cond_8
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/CHLocalData;->getWebsites()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2158
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/CHLocalData;->getWebsites()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setWebsites(Ljava/util/List;)V

    .line 2161
    :cond_9
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/CHLocalData;->getPhones()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2162
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/CHLocalData;->getPhones()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setPhoneNumbers(Ljava/util/List;)V

    .line 2165
    :cond_a
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/CHLocalData;->getEmails()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2166
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/CHLocalData;->getEmails()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setEmails(Ljava/util/List;)V

    .line 2169
    :cond_b
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/CHLocalData;->getVenueFoursquareID()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/CHLocalData;->getVenueFoursquareID()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2170
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/CHLocalData;->getVenueFoursquareID()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setVenueFoursquareID(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    .line 2173
    :cond_c
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/CHLocalData;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2174
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/CHLocalData;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setUrl(Ljava/lang/String;)V

    .line 2177
    :cond_d
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/CHLocalData;->isBusiness()Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x2

    goto :goto_0

    :cond_e
    const/4 p1, 0x1

    :goto_0
    invoke-virtual {v0, p1}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setType(I)V

    return-object v0
.end method

.method protected final synthetic a(Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/contacts/model/contact/ExternalSourceData;)V
    .locals 3

    .line 39
    check-cast p2, Lcom/callapp/contacts/model/contact/CHLocalData;

    .line 2189
    iget-object v0, p1, Lcom/callapp/contacts/loader/api/LoadContext;->b:Ljava/util/Set;

    .line 2190
    iget-object v1, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    .line 2191
    invoke-virtual {v1, p2}, Lcom/callapp/contacts/model/contact/ContactData;->setChLocalData(Lcom/callapp/contacts/model/contact/CHLocalData;)V

    .line 2193
    invoke-virtual {p1}, Lcom/callapp/contacts/loader/api/LoadContext;->b()Lcom/callapp/contacts/framework/util/MultiTaskRunner;

    move-result-object p2

    .line 2195
    sget-object v2, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->NAME_FIELDS:Ljava/util/EnumSet;

    invoke-static {v0, v2}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2196
    new-instance v2, Lcom/callapp/contacts/loader/external/CHLocalLoader$1;

    invoke-direct {v2, p0, v1}, Lcom/callapp/contacts/loader/external/CHLocalLoader$1;-><init>(Lcom/callapp/contacts/loader/external/CHLocalLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {p2, v2}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 2204
    :cond_0
    sget-object v2, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->PHOTO_FIELDS:Ljava/util/EnumSet;

    invoke-static {v0, v2}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2205
    new-instance v2, Lcom/callapp/contacts/loader/external/CHLocalLoader$2;

    invoke-direct {v2, p0, v1}, Lcom/callapp/contacts/loader/external/CHLocalLoader$2;-><init>(Lcom/callapp/contacts/loader/external/CHLocalLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {p2, v2}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 2213
    :cond_1
    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->addresses:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2214
    new-instance v2, Lcom/callapp/contacts/loader/external/CHLocalLoader$3;

    invoke-direct {v2, p0, v1}, Lcom/callapp/contacts/loader/external/CHLocalLoader$3;-><init>(Lcom/callapp/contacts/loader/external/CHLocalLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {p2, v2}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 2222
    :cond_2
    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->webVideos:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2223
    new-instance v2, Lcom/callapp/contacts/loader/external/CHLocalLoader$4;

    invoke-direct {v2, p0, v1}, Lcom/callapp/contacts/loader/external/CHLocalLoader$4;-><init>(Lcom/callapp/contacts/loader/external/CHLocalLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {p2, v2}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 2231
    :cond_3
    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->latLng:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2232
    new-instance v2, Lcom/callapp/contacts/loader/external/CHLocalLoader$5;

    invoke-direct {v2, p0, v1}, Lcom/callapp/contacts/loader/external/CHLocalLoader$5;-><init>(Lcom/callapp/contacts/loader/external/CHLocalLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {p2, v2}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 2240
    :cond_4
    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->phones:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2241
    new-instance v2, Lcom/callapp/contacts/loader/external/CHLocalLoader$6;

    invoke-direct {v2, p0, v1}, Lcom/callapp/contacts/loader/external/CHLocalLoader$6;-><init>(Lcom/callapp/contacts/loader/external/CHLocalLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {p2, v2}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 2249
    :cond_5
    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->emails:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2250
    new-instance v2, Lcom/callapp/contacts/loader/external/CHLocalLoader$7;

    invoke-direct {v2, p0, v1}, Lcom/callapp/contacts/loader/external/CHLocalLoader$7;-><init>(Lcom/callapp/contacts/loader/external/CHLocalLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {p2, v2}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 2258
    :cond_6
    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->websites:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2259
    new-instance v2, Lcom/callapp/contacts/loader/external/CHLocalLoader$8;

    invoke-direct {v2, p0, v1}, Lcom/callapp/contacts/loader/external/CHLocalLoader$8;-><init>(Lcom/callapp/contacts/loader/external/CHLocalLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {p2, v2}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 2267
    :cond_7
    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->venueFoursquareId:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2268
    new-instance v2, Lcom/callapp/contacts/loader/external/CHLocalLoader$9;

    invoke-direct {v2, p0, v1}, Lcom/callapp/contacts/loader/external/CHLocalLoader$9;-><init>(Lcom/callapp/contacts/loader/external/CHLocalLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {p2, v2}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 2276
    :cond_8
    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->categories:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2277
    new-instance v2, Lcom/callapp/contacts/loader/external/CHLocalLoader$10;

    invoke-direct {v2, p0, v1}, Lcom/callapp/contacts/loader/external/CHLocalLoader$10;-><init>(Lcom/callapp/contacts/loader/external/CHLocalLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {p2, v2}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 2285
    :cond_9
    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->openingHours:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2286
    new-instance v2, Lcom/callapp/contacts/loader/external/CHLocalLoader$11;

    invoke-direct {v2, p0, v1}, Lcom/callapp/contacts/loader/external/CHLocalLoader$11;-><init>(Lcom/callapp/contacts/loader/external/CHLocalLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {p2, v2}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 2294
    :cond_a
    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->description:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2295
    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->updateDescription()V

    .line 2298
    :cond_b
    iget-boolean v0, p0, Lcom/callapp/contacts/loader/external/CHLocalLoader;->d:Z

    invoke-virtual {p1, p2, v0}, Lcom/callapp/contacts/loader/api/LoadContext;->a(Lcom/callapp/contacts/framework/util/MultiTaskRunner;Z)V

    return-void
.end method

.method protected final c(Lcom/callapp/contacts/loader/api/LoadContext;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/loader/api/LoadContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/contact/CHLocalData;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object p1, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    .line 55
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    .line 57
    const-class v1, Lcom/callapp/contacts/loader/external/CHLocalLoader;

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/model/contact/ContactData;->getLock(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    .line 59
    :try_start_0
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->isContactInDevice()Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "CH"

    .line 60
    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->getRegionCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_2

    .line 65
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getChLocalData()Lcom/callapp/contacts/model/contact/CHLocalData;

    move-result-object p1

    if-eqz p1, :cond_1

    const v3, 0x7f0b0006

    .line 67
    invoke-virtual {p1, v3}, Lcom/callapp/contacts/model/contact/CHLocalData;->isExpired(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 68
    monitor-exit v1

    return-object v2

    .line 71
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->isValidForSearch()Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_1

    .line 75
    :cond_2
    new-instance p1, Lcom/callapp/contacts/util/serializer/string/ClassParserHttpResponseHandler;

    const-class v3, Lcom/callapp/common/model/json/JSONCHLocal;

    invoke-direct {p1, v3}, Lcom/callapp/contacts/util/serializer/string/ClassParserHttpResponseHandler;-><init>(Ljava/lang/Class;)V

    .line 76
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->c()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 77
    new-instance v3, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;

    sget-object v4, Lcom/callapp/contacts/loader/external/CHLocalLoader;->a:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/callapp/common/util/UrlUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;-><init>(Ljava/lang/String;)V

    .line 1090
    iput-object p1, v3, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;->c:Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandler;

    .line 77
    invoke-virtual {v3}, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;->a()Lcom/callapp/contacts/util/http/HttpRequestParams;

    move-result-object v3

    invoke-static {v3}, Lcom/callapp/contacts/util/http/HttpUtils;->b(Lcom/callapp/contacts/util/http/HttpRequestParams;)Z

    .line 79
    :cond_3
    invoke-virtual {p1}, Lcom/callapp/contacts/util/serializer/string/ClassParserHttpResponseHandler;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/common/model/json/JSONCHLocal;

    if-eqz p1, :cond_7

    .line 2087
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONCHLocal;->getResults()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    .line 2091
    :cond_4
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONCHLocal;->getResults()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/common/model/json/JSONCHLocalResult;

    .line 2092
    invoke-virtual {v3}, Lcom/callapp/common/model/json/JSONCHLocalResult;->getContacts()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 2095
    invoke-virtual {v3}, Lcom/callapp/common/model/json/JSONCHLocalResult;->getContacts()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/callapp/common/model/json/JSONCHLocalPhone;

    .line 2096
    invoke-virtual {v5}, Lcom/callapp/common/model/json/JSONCHLocalPhone;->isPhoneType()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2097
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v6

    invoke-virtual {v5}, Lcom/callapp/common/model/json/JSONCHLocalPhone;->getContact_value()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/callapp/framework/phone/Phone;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move-object v2, v3

    .line 82
    :cond_7
    :goto_0
    new-instance p1, Lcom/callapp/contacts/model/contact/CHLocalData;

    invoke-direct {p1, v2, v0}, Lcom/callapp/contacts/model/contact/CHLocalData;-><init>(Lcom/callapp/common/model/json/JSONCHLocalResult;Lcom/callapp/framework/phone/Phone;)V

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    monitor-exit v1

    return-object p1

    .line 72
    :cond_8
    :goto_1
    monitor-exit v1

    return-object v2

    .line 61
    :cond_9
    :goto_2
    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception p1

    .line 83
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected getDataClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/callapp/contacts/model/contact/CHLocalData;",
            ">;"
        }
    .end annotation

    .line 109
    const-class v0, Lcom/callapp/contacts/model/contact/CHLocalData;

    return-object v0
.end method

.method protected getExernalSourceId()I
    .locals 1

    const/16 v0, 0x3f8

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

    .line 49
    sget-object v0, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->NONE:Ljava/util/EnumSet;

    return-object v0
.end method
