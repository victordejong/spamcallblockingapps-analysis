.class public Lcom/callapp/contacts/loader/external/ExternalSourcesUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/callapp/contacts/model/contact/GooglePlacesData;)Lcom/callapp/common/model/json/JSONExternalSourceContact;
    .locals 3

    .line 216
    new-instance v0, Lcom/callapp/common/model/json/JSONExternalSourceContact;

    invoke-direct {v0}, Lcom/callapp/common/model/json/JSONExternalSourceContact;-><init>()V

    .line 217
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/GooglePlacesData;->getGooglePlaceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setIdentifier(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/GooglePlacesData;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setName(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/GooglePlacesData;->getLat()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setLat(D)V

    .line 220
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/GooglePlacesData;->getLng()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setLng(D)V

    .line 221
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/GooglePlacesData;->getAddress()Lcom/callapp/common/model/json/JSONAddress;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/GooglePlacesData;->getAddress()Lcom/callapp/common/model/json/JSONAddress;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setAddresses(Ljava/util/List;)V

    .line 224
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/GooglePlacesData;->getAvgRating()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setAvgRating(D)V

    .line 225
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/GooglePlacesData;->getCategories()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 226
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/GooglePlacesData;->getCategories()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setCategories(Ljava/util/List;)V

    .line 228
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/GooglePlacesData;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setDescription(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/GooglePlacesData;->getOpeningHours()Lcom/callapp/common/model/json/JSONOpeningHours;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setOpeningHours(Lcom/callapp/common/model/json/JSONOpeningHours;)V

    .line 230
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/GooglePlacesData;->getPhotoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setPhotoUrl(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/GooglePlacesData;->getPriceRange()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setPriceRange(I)V

    .line 232
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/GooglePlacesData;->getReviews()Ljava/util/Collection;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 233
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/GooglePlacesData;->getReviews()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setReviews(Ljava/util/List;)V

    .line 235
    :cond_2
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/GooglePlacesData;->getWebsite()Lcom/callapp/common/model/json/JSONWebsite;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 236
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/GooglePlacesData;->getWebsite()Lcom/callapp/common/model/json/JSONWebsite;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setWebsites(Ljava/util/List;)V

    .line 238
    :cond_3
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/GooglePlacesData;->getSeeInsidePanoId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setSeeInsidePanoId(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/GooglePlacesData;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setUrl(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/GooglePlacesData;->getAtAGlance()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setAtAGlance(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/GooglePlacesData;->getMenuUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setMenuUrl(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/GooglePlacesData;->getReserveUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setReserveUrl(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Lcom/callapp/contacts/model/contact/HuaweiPlaceData;)Lcom/callapp/common/model/json/JSONExternalSourceContact;
    .locals 4

    .line 125
    new-instance v0, Lcom/callapp/common/model/json/JSONExternalSourceContact;

    invoke-direct {v0}, Lcom/callapp/common/model/json/JSONExternalSourceContact;-><init>()V

    const/16 v1, 0x3fe

    .line 126
    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setExternalSourceId(I)V

    if-eqz p0, :cond_3

    .line 128
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/HuaweiPlaceData;->getSiteId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setIdentifier(Ljava/lang/String;)V

    .line 129
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 130
    new-instance v2, Lcom/callapp/common/model/json/JSONPhoneNumber;

    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/HuaweiPlaceData;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/callapp/common/model/json/JSONPhoneNumber;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setPhoneNumbers(Ljava/util/List;)V

    .line 132
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/HuaweiPlaceData;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setName(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/HuaweiPlaceData;->getAddress()Lcom/callapp/common/model/json/JSONAddress;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/HuaweiPlaceData;->getAddress()Lcom/callapp/common/model/json/JSONAddress;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setAddresses(Ljava/util/List;)V

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/HuaweiPlaceData;->getAvgRating()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setAvgRating(D)V

    const/4 v1, 0x2

    .line 138
    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setType(I)V

    .line 139
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/HuaweiPlaceData;->getOpeningHours()Lcom/callapp/common/model/json/JSONOpeningHours;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setOpeningHours(Lcom/callapp/common/model/json/JSONOpeningHours;)V

    .line 141
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/HuaweiPlaceData;->getWebsite()Lcom/callapp/common/model/json/JSONWebsite;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 142
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/HuaweiPlaceData;->getWebsite()Lcom/callapp/common/model/json/JSONWebsite;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setWebsites(Ljava/util/List;)V

    .line 145
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/HuaweiPlaceData;->getLat()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setLat(D)V

    .line 146
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/HuaweiPlaceData;->getLng()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setLng(D)V

    .line 148
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/HuaweiPlaceData;->getOpeningHours()Lcom/callapp/common/model/json/JSONOpeningHours;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 149
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/HuaweiPlaceData;->getOpeningHours()Lcom/callapp/common/model/json/JSONOpeningHours;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setOpeningHours(Lcom/callapp/common/model/json/JSONOpeningHours;)V

    .line 152
    :cond_2
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/HuaweiPlaceData;->getPhotoUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setPhotoUrl(Ljava/lang/String;)V

    :cond_3
    return-object v0
.end method

.method private static a(Lcom/callapp/common/model/json/JSONFBUserOrPage;)Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/common/model/json/JSONFBUserOrPage;",
            ")",
            "Ljava/util/Set<",
            "Lcom/callapp/framework/phone/Phone;",
            ">;"
        }
    .end annotation

    .line 81
    invoke-virtual {p0}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getPhone()Ljava/lang/String;

    move-result-object p0

    .line 82
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 83
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 84
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    .line 85
    invoke-virtual {v1}, Lcom/callapp/framework/phone/Phone;->isValidForSearch()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    const-string v1, "/"

    .line 88
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 90
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v2, v4, :cond_2

    .line 91
    array-length v2, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_2

    aget-object v6, v1, v5

    .line 92
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v6

    .line 93
    invoke-virtual {v6}, Lcom/callapp/framework/phone/Phone;->isValidForSearch()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 94
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    const-string v1, ","

    .line 99
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 101
    array-length v1, p0

    if-le v1, v4, :cond_4

    .line 102
    array-length v1, p0

    :goto_1
    if-ge v3, v1, :cond_4

    aget-object v2, p0, v3

    .line 103
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    .line 104
    invoke-virtual {v2}, Lcom/callapp/framework/phone/Phone;->isValidForSearch()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 105
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-object v0
.end method

.method public static a()V
    .locals 2

    .line 264
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntity;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/a;->d()V

    return-void
.end method

.method static a(Lcom/callapp/common/model/json/JSONExternalSourceContact;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntity;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 270
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 271
    invoke-static {}, Lcom/callapp/contacts/util/serializer/string/Serializer;->getJSONObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v2

    invoke-virtual {v2, v1, p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValue(Ljava/io/Writer;Ljava/lang/Object;)V

    .line 272
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    .line 274
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntity_;->key:Lio/objectbox/g;

    .line 275
    invoke-virtual {p0}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntity_;->externalSourceId:Lio/objectbox/g;

    .line 276
    invoke-virtual {p0}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->getExternalSourceId()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;J)Lio/objectbox/query/QueryBuilder;

    move-result-object v2

    .line 277
    invoke-virtual {v2}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v2

    invoke-virtual {v2}, Lio/objectbox/query/Query;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntity;

    if-nez v2, :cond_0

    .line 279
    new-instance v2, Lcom/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntity;

    invoke-direct {v2}, Lcom/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntity;-><init>()V

    .line 280
    invoke-virtual {p0}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntity;->setKey(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p0}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->getExternalSourceId()I

    move-result p0

    invoke-virtual {v2, p0}, Lcom/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntity;->setExternalSourceId(I)V

    .line 284
    :cond_0
    invoke-virtual {v2, v1}, Lcom/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntity;->setJsonDoc(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v0, v2}, Lio/objectbox/a;->a(Ljava/lang/Object;)J

    return-void
.end method

.method public static a(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONFBUserOrPage;",
            ">;)V"
        }
    .end annotation

    .line 60
    invoke-static {p0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 61
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/common/model/json/JSONFBUserOrPage;

    .line 62
    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getPhone()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1160
    new-instance v1, Lcom/callapp/common/model/json/JSONExternalSourceContact;

    invoke-direct {v1}, Lcom/callapp/common/model/json/JSONExternalSourceContact;-><init>()V

    const/16 v2, 0x3f3

    .line 1161
    invoke-virtual {v1, v2}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setExternalSourceId(I)V

    if-eqz v0, :cond_a

    .line 1163
    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setIdentifier(Ljava/lang/String;)V

    .line 1164
    invoke-static {v0}, Lcom/callapp/contacts/loader/external/ExternalSourcesUtils;->a(Lcom/callapp/common/model/json/JSONFBUserOrPage;)Ljava/util/Set;

    move-result-object v2

    .line 1165
    invoke-static {v2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1166
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1167
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/callapp/framework/phone/Phone;

    .line 1168
    new-instance v5, Lcom/callapp/common/model/json/JSONPhoneNumber;

    invoke-direct {v5, v4}, Lcom/callapp/common/model/json/JSONPhoneNumber;-><init>(Lcom/callapp/framework/phone/Phone;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1170
    :cond_1
    invoke-virtual {v1, v3}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setPhoneNumbers(Ljava/util/List;)V

    .line 1172
    :cond_2
    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setName(Ljava/lang/String;)V

    .line 1173
    new-instance v2, Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/callapp/common/model/json/JSONSocialNetworkID;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setFacebookID(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    .line 1174
    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getLocationObject()Lcom/callapp/common/model/json/JSONFBLocation;

    move-result-object v2

    const/4 v3, 0x2

    const-string v5, ""

    if-eqz v2, :cond_3

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 2118
    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONFBLocation;->getStreet()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONFBLocation;->getCity()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONFBLocation;->getState()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    const/4 v4, 0x3

    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONFBLocation;->getCountry()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    const/4 v4, 0x4

    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONFBLocation;->getZip()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    const-string v4, ", "

    invoke-static {v4, v6}, Lcom/callapp/framework/util/StringUtils;->e(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_3
    move-object v4, v5

    .line 1176
    :goto_1
    invoke-static {v4}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1177
    new-instance v4, Lcom/callapp/common/model/json/JSONAddress;

    invoke-direct {v4}, Lcom/callapp/common/model/json/JSONAddress;-><init>()V

    .line 1178
    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONFBLocation;->getCity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/callapp/common/model/json/JSONAddress;->setCity(Ljava/lang/String;)V

    .line 1179
    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONFBLocation;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/callapp/common/model/json/JSONAddress;->setCountry(Ljava/lang/String;)V

    .line 1180
    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONFBLocation;->getState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/callapp/common/model/json/JSONAddress;->setState(Ljava/lang/String;)V

    .line 1181
    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONFBLocation;->getStreet()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/callapp/common/model/json/JSONAddress;->setStreet(Ljava/lang/String;)V

    .line 1182
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setAddresses(Ljava/util/List;)V

    .line 1184
    :cond_4
    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getTranslatedPriceRange()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setPriceRange(I)V

    .line 1185
    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getAvgRating()D

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setAvgRating(D)V

    .line 1186
    invoke-virtual {v1, v3}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setType(I)V

    .line 1187
    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getOpeningHours()Lcom/callapp/common/model/json/JSONOpeningHours;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setOpeningHours(Lcom/callapp/common/model/json/JSONOpeningHours;)V

    .line 1188
    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getDescription()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getAbout()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v1, v2}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setDescription(Ljava/lang/String;)V

    .line 1190
    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getWebsite()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1191
    new-instance v2, Lcom/callapp/common/model/json/JSONWebsite;

    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getWebsite()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/callapp/common/model/json/JSONWebsite;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setWebsites(Ljava/util/List;)V

    .line 1195
    :cond_6
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1196
    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getCategory()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "Local business"

    if-eqz v3, :cond_7

    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getCategory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1197
    new-instance v3, Lcom/callapp/common/model/json/JSONCategory;

    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getCategory()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6, v5}, Lcom/callapp/common/model/json/JSONCategory;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1199
    :cond_7
    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getCategoriesList()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1200
    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getCategoriesList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/callapp/common/model/json/JSONFBType;

    .line 1201
    invoke-virtual {v6}, Lcom/callapp/common/model/json/JSONFBType;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v6}, Lcom/callapp/common/model/json/JSONFBType;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 1202
    new-instance v7, Lcom/callapp/common/model/json/JSONCategory;

    invoke-virtual {v6}, Lcom/callapp/common/model/json/JSONFBType;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6, v5}, Lcom/callapp/common/model/json/JSONCategory;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1207
    :cond_9
    invoke-static {v2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1208
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v3}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setCategories(Ljava/util/List;)V

    .line 65
    :cond_a
    invoke-static {v0}, Lcom/callapp/contacts/loader/external/ExternalSourcesUtils;->a(Lcom/callapp/common/model/json/JSONFBUserOrPage;)Ljava/util/Set;

    move-result-object v0

    .line 66
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/framework/phone/Phone;

    .line 67
    invoke-virtual {v2}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setKey(Ljava/lang/String;)V

    .line 69
    :try_start_0
    invoke-static {v1}, Lcom/callapp/contacts/loader/external/ExternalSourcesUtils;->a(Lcom/callapp/common/model/json/JSONExternalSourceContact;)V
    :try_end_0
    .catch Lcom/fasterxml/jackson/databind/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    nop

    goto :goto_4

    :cond_b
    return-void
.end method

.method public static getExternalSourcesNumbers()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONExternalSourceContact;",
            ">;"
        }
    .end annotation

    .line 249
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntity;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/query/Query;->c()Ljava/util/List;

    move-result-object v0

    .line 253
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 255
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntity;

    .line 256
    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntity;->getJsonDoc()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/callapp/common/model/json/JSONExternalSourceContact;

    invoke-static {v2, v3}, Lcom/callapp/contacts/util/serializer/string/Parser;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method
