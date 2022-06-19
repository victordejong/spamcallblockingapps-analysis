.class public Lcom/callapp/contacts/model/contact/ContactDataUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/model/contact/ContactDataUtils$PhoneDetails;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findExactContactId(Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 11

    .line 366
    new-instance v0, Lcom/callapp/contacts/framework/dao/column/StringColumn;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/callapp/contacts/framework/dao/column/StringColumn;-><init>(Ljava/lang/String;)V

    .line 367
    invoke-static {v1}, Lcom/callapp/framework/phone/PhoneNumberUtils;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 368
    new-instance v2, Lcom/callapp/contacts/framework/dao/column/StringColumn;

    invoke-direct {v2, v1}, Lcom/callapp/contacts/framework/dao/column/StringColumn;-><init>(Ljava/lang/String;)V

    .line 370
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhones()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 372
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 373
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhones()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/callapp/framework/phone/Phone;

    .line 374
    invoke-virtual {v5}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/callapp/framework/phone/PhoneNumberUtils;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 377
    :cond_0
    new-instance v4, Lcom/callapp/contacts/framework/dao/ContentQuery;

    sget-object v5, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v4, v5}, Lcom/callapp/contacts/framework/dao/ContentQuery;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v4, v2, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/column/Column;Ljava/util/Collection;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v1

    const-string v2, "!="

    const/4 v4, 0x0

    .line 378
    invoke-virtual {v1, v0, v2, v4}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Lcom/callapp/contacts/framework/dao/column/Column;Ljava/lang/String;Ljava/lang/Object;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v1

    const-string v5, ""

    invoke-virtual {v1, v0, v2, v5}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Lcom/callapp/contacts/framework/dao/column/Column;Ljava/lang/String;Ljava/lang/Object;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v1

    sget-object v5, Lcom/callapp/contacts/model/Constants;->CONTACT_ID_COLUMN:Lcom/callapp/contacts/framework/dao/column/LongColumn;

    invoke-virtual {v1, v5}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/column/Column;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/column/Column;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v1

    sget-object v5, Lcom/callapp/contacts/model/Constants;->STARRED_COLUMN:Lcom/callapp/contacts/framework/dao/column/BooleanColumn;

    invoke-virtual {v1, v5}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/column/Column;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v1

    sget-object v5, Lcom/callapp/contacts/model/Constants;->DISPLAY_NAME_COLUMN:Lcom/callapp/contacts/framework/dao/column/StringColumn;

    .line 379
    invoke-virtual {v1, v5}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/column/Column;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v1

    const-string v5, "display_name_source"

    const-string v6, "20"

    .line 380
    invoke-virtual {v1, v5, v2, v6}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/model/contact/ContactDataUtils$8;

    invoke-direct {v2, v0, v3}, Lcom/callapp/contacts/model/contact/ContactDataUtils$8;-><init>(Lcom/callapp/contacts/framework/dao/column/StringColumn;Ljava/util/Map;)V

    .line 381
    invoke-virtual {v1, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/RowVisitor;)Z

    const-wide/16 v0, 0x0

    .line 406
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move-object v5, v4

    const/4 v4, 0x0

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 407
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    .line 408
    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v8

    if-lt v8, v4, :cond_1

    .line 409
    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v0

    .line 410
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/model/contact/ContactDataUtils$PhoneDetails;

    .line 411
    iget-object v3, v1, Lcom/callapp/contacts/model/contact/ContactDataUtils$PhoneDetails;->deviceId:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 412
    iget-object v5, v1, Lcom/callapp/contacts/model/contact/ContactDataUtils$PhoneDetails;->isStarred:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 413
    iget-object v1, v1, Lcom/callapp/contacts/model/contact/ContactDataUtils$PhoneDetails;->displayName:Ljava/lang/String;

    move-wide v9, v3

    move v4, v0

    move v3, v5

    move-object v5, v1

    move-wide v0, v9

    goto :goto_1

    .line 418
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/callapp/contacts/model/contact/ContactData;->setDeviceId(J)V

    .line 420
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->assertDeviceDataExist()V

    .line 421
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/model/contact/DeviceData;->setFavorite(Ljava/lang/Boolean;)V

    .line 422
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->favorite:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    .line 424
    invoke-static {v5}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 425
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/callapp/contacts/model/contact/DeviceData;->setFullName(Ljava/lang/String;)V

    .line 426
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    .line 429
    :cond_3
    invoke-static {}, Lcom/callapp/contacts/loader/device/DeviceIdLoader;->a()V

    return-void
.end method

.method public static getContactPhotoUrlOnSocial(Lcom/callapp/contacts/model/contact/ContactData;IZ)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    const/4 v0, 0x7

    if-eq p1, v0, :cond_6

    const/4 v0, 0x4

    if-eq p1, v0, :cond_5

    const/4 v0, 0x5

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/16 p2, 0x9

    if-eq p1, p2, :cond_1

    const/16 p2, 0xa

    if-eq p1, p2, :cond_0

    return-object v1

    .line 304
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getVKData()Lcom/callapp/contacts/model/contact/social/VKData;

    move-result-object p0

    invoke-static {p0}, Lcom/callapp/contacts/model/contact/ContactDataUtils;->getSocialPhotoUrlSafe(Lcom/callapp/contacts/model/contact/social/SocialData;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 302
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getPinterestData()Lcom/callapp/contacts/model/contact/social/PinterestData;

    move-result-object p0

    invoke-static {p0}, Lcom/callapp/contacts/model/contact/ContactDataUtils;->getSocialPhotoUrlSafe(Lcom/callapp/contacts/model/contact/social/SocialData;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 291
    :cond_2
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getGooglePlacesData()Lcom/callapp/contacts/model/contact/GooglePlacesData;

    move-result-object p0

    invoke-static {p0}, Lcom/callapp/contacts/model/contact/ContactDataUtils;->getSocialPhotoUrlSafe(Lcom/callapp/contacts/model/contact/PlaceData;)Ljava/lang/String;

    move-result-object p0

    .line 292
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-object p0

    :cond_3
    if-eqz p2, :cond_4

    .line 296
    invoke-static {}, Lcom/callapp/contacts/api/helper/google/GoogleHelper;->get()Lcom/callapp/contacts/api/helper/google/GoogleHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/google/GoogleHelper;->getProfileImageUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v1

    .line 289
    :cond_5
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getTwitterData()Lcom/callapp/contacts/model/contact/social/TwitterData;

    move-result-object p0

    invoke-static {p0}, Lcom/callapp/contacts/model/contact/ContactDataUtils;->getSocialPhotoUrlSafe(Lcom/callapp/contacts/model/contact/social/SocialData;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 300
    :cond_6
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getInstagramData()Lcom/callapp/contacts/model/contact/social/InstagramData;

    move-result-object p0

    invoke-static {p0}, Lcom/callapp/contacts/model/contact/ContactDataUtils;->getSocialPhotoUrlSafe(Lcom/callapp/contacts/model/contact/social/SocialData;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 287
    :cond_7
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getFacebookData()Lcom/callapp/contacts/model/contact/social/FacebookData;

    move-result-object p0

    invoke-static {p0}, Lcom/callapp/contacts/model/contact/ContactDataUtils;->getSocialPhotoUrlSafe(Lcom/callapp/contacts/model/contact/social/SocialData;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getEmailListString(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONEmail;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 102
    invoke-static {p0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 105
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/common/model/json/JSONEmail;

    const-string v2, ""

    if-nez v1, :cond_0

    goto :goto_1

    .line 106
    :cond_0
    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONEmail;->getEmail()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONEmail;->getEmail()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 109
    :cond_2
    invoke-static {p1}, Lcom/callapp/common/util/Joiner;->a(Ljava/lang/String;)Lcom/callapp/common/util/Joiner;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/callapp/common/util/Joiner;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    :goto_2
    return-object p0
.end method

.method public static getPhoneListString(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/framework/phone/Phone;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 161
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/framework/phone/Phone;

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_1

    .line 162
    :cond_0
    invoke-virtual {v1}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 165
    :cond_1
    invoke-static {p1}, Lcom/callapp/common/util/Joiner;->a(Ljava/lang/String;)Lcom/callapp/common/util/Joiner;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/callapp/common/util/Joiner;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPrioritizedPhoneList(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/framework/phone/Phone;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/callapp/framework/phone/Phone;",
            ">;"
        }
    .end annotation

    .line 122
    invoke-static {p0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p0, 0x0

    .line 124
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/callapp/framework/phone/Phone;

    .line 125
    new-instance v1, Lcom/callapp/contacts/model/contact/ContactDataUtils$7;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/model/contact/ContactDataUtils$7;-><init>(Lcom/callapp/framework/phone/Phone;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static getSocialData(Lcom/callapp/contacts/model/contact/ContactData;I)Lcom/callapp/contacts/model/contact/social/SocialData;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    const/4 v0, 0x6

    if-eq p1, v0, :cond_3

    const/4 v0, 0x7

    if-eq p1, v0, :cond_2

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 228
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getVKData()Lcom/callapp/contacts/model/contact/social/VKData;

    move-result-object p0

    goto :goto_0

    .line 224
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getPinterestData()Lcom/callapp/contacts/model/contact/social/PinterestData;

    move-result-object p0

    goto :goto_0

    .line 216
    :cond_2
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getInstagramData()Lcom/callapp/contacts/model/contact/social/InstagramData;

    move-result-object p0

    goto :goto_0

    .line 220
    :cond_3
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getFoursquareData()Lcom/callapp/contacts/model/contact/social/FoursquareData;

    move-result-object p0

    goto :goto_0

    .line 212
    :cond_4
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getTwitterData()Lcom/callapp/contacts/model/contact/social/TwitterData;

    move-result-object p0

    goto :goto_0

    .line 208
    :cond_5
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getFacebookData()Lcom/callapp/contacts/model/contact/social/FacebookData;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getSocialNetworkID(Lcom/callapp/contacts/model/contact/ContactData;I)Lcom/callapp/common/model/json/JSONSocialNetworkID;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 192
    :pswitch_0
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getVenueFoursquareId()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object p0

    return-object p0

    .line 198
    :pswitch_1
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getVKId()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object p0

    return-object p0

    .line 196
    :pswitch_2
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getPinterestId()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object p0

    return-object p0

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getInstagramId()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object p0

    return-object p0

    .line 190
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getFoursquareId()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object p0

    return-object p0

    .line 188
    :cond_2
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getTwitterScreenName()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object p0

    return-object p0

    .line 186
    :cond_3
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getFacebookId()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getSocialPhotoUrlSafe(Lcom/callapp/contacts/model/contact/PlaceData;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 319
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/PlaceData;->getPhotoUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getSocialPhotoUrlSafe(Lcom/callapp/contacts/model/contact/social/SocialData;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 312
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/social/SocialData;->getPhotoUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static hasAnySocialId(Lcom/callapp/contacts/model/contact/ContactData;)I
    .locals 5

    .line 174
    sget-object v0, Lcom/callapp/common/api/ApiConstants;->c:[Ljava/lang/Integer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 175
    invoke-static {p0, v3}, Lcom/callapp/contacts/model/contact/ContactDataUtils;->getSocialNetworkID(Lcom/callapp/contacts/model/contact/ContactData;I)Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v4

    if-eqz v4, :cond_0

    return v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static setIsFavorite(Lcom/callapp/contacts/model/contact/ContactData;Z)V
    .locals 2

    if-eqz p0, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(JZ)V

    .line 327
    invoke-static {p0, p1}, Lcom/callapp/contacts/model/contact/ContactDataUtils;->updateFavorite(Lcom/callapp/contacts/model/contact/ContactData;Z)V

    :cond_0
    return-void
.end method

.method public static setLoadInternals(Lcom/callapp/contacts/model/contact/ContactData;ZLjava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Z",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    .line 116
    iput-boolean p1, p0, Lcom/callapp/contacts/model/contact/ContactData;->onlySure:Z

    .line 117
    iput-object p2, p0, Lcom/callapp/contacts/model/contact/ContactData;->loadedFields:Ljava/util/Set;

    return-void
.end method

.method public static updateAllSocialIdsFromFields(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;Lcom/callapp/contacts/loader/api/LoadContext;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;",
            "Lcom/callapp/contacts/loader/api/LoadContext;",
            "Z)V"
        }
    .end annotation

    .line 41
    invoke-virtual {p2}, Lcom/callapp/contacts/loader/api/LoadContext;->b()Lcom/callapp/contacts/framework/util/MultiTaskRunner;

    move-result-object v0

    .line 42
    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->facebookId:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    new-instance v1, Lcom/callapp/contacts/model/contact/ContactDataUtils$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/model/contact/ContactDataUtils$1;-><init>(Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 51
    :cond_0
    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->twitterScreenName:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    new-instance v1, Lcom/callapp/contacts/model/contact/ContactDataUtils$2;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/model/contact/ContactDataUtils$2;-><init>(Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 60
    :cond_1
    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->foursquareId:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 61
    new-instance v1, Lcom/callapp/contacts/model/contact/ContactDataUtils$3;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/model/contact/ContactDataUtils$3;-><init>(Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 69
    :cond_2
    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->instagramId:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 70
    new-instance v1, Lcom/callapp/contacts/model/contact/ContactDataUtils$4;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/model/contact/ContactDataUtils$4;-><init>(Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 78
    :cond_3
    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->pinterestId:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 79
    new-instance v1, Lcom/callapp/contacts/model/contact/ContactDataUtils$5;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/model/contact/ContactDataUtils$5;-><init>(Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 88
    :cond_4
    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->vkId:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 89
    new-instance p1, Lcom/callapp/contacts/model/contact/ContactDataUtils$6;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/model/contact/ContactDataUtils$6;-><init>(Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 97
    :cond_5
    invoke-virtual {p2, v0, p3}, Lcom/callapp/contacts/loader/api/LoadContext;->a(Lcom/callapp/contacts/framework/util/MultiTaskRunner;Z)V

    return-void
.end method

.method private static updateFavorite(Lcom/callapp/contacts/model/contact/ContactData;Z)V
    .locals 2

    .line 332
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->assertDeviceDataExist()V

    .line 333
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v0

    .line 334
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/DeviceData;->isFavorite()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/model/contact/DeviceData;->setFavorite(Ljava/lang/Boolean;)V

    .line 336
    sget-object p1, Lcom/callapp/contacts/model/contact/ContactField;->favorite:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    :cond_0
    return-void
.end method

.method public static updateSocialNetwork(Lcom/callapp/contacts/model/contact/ContactData;ILcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 1

    .line 246
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    const/4 v0, 0x6

    if-eq p1, v0, :cond_3

    const/4 v0, 0x7

    if-eq p1, v0, :cond_2

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 274
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/DeviceData;->setVKId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    .line 275
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateVKId()V

    goto :goto_0

    .line 269
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/DeviceData;->setPinterestId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    .line 270
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updatePinterestId()V

    return-void

    .line 259
    :cond_2
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/DeviceData;->setInstagramId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    .line 260
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateInstagramId()V

    return-void

    .line 264
    :cond_3
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/DeviceData;->setFoursquareId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    .line 265
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateFoursquareId()V

    return-void

    .line 254
    :cond_4
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/DeviceData;->setTwitterScreenName(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    .line 255
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateTwitterScreenName()V

    return-void

    .line 249
    :cond_5
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/DeviceData;->setFacebookId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    .line 250
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateFacebookId()V

    :cond_6
    :goto_0
    return-void
.end method

.method private static validateContactDeviceId(Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 4

    .line 433
    new-instance v0, Lcom/callapp/contacts/framework/dao/ContentQuery;

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;-><init>(Landroid/net/Uri;)V

    sget-object v1, Lcom/callapp/contacts/model/Constants;->ID_COLUMN:Lcom/callapp/contacts/framework/dao/column/LongColumn;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/column/Column;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/Constants;->ID_COLUMN:Lcom/callapp/contacts/framework/dao/column/LongColumn;

    .line 434
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v0, v1, v3, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Lcom/callapp/contacts/framework/dao/column/Column;Ljava/lang/String;Ljava/lang/Object;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->getCount()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 435
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 436
    invoke-virtual {p0, v0, v1}, Lcom/callapp/contacts/model/contact/ContactData;->setDeviceId(J)V

    :cond_0
    return-void
.end method

.method public static verifyContactInDevice(Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 5

    .line 346
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 347
    invoke-static {p0}, Lcom/callapp/contacts/model/contact/ContactDataUtils;->findExactContactId(Lcom/callapp/contacts/model/contact/ContactData;)V

    return-void

    .line 349
    :cond_0
    invoke-static {p0}, Lcom/callapp/contacts/model/contact/ContactDataUtils;->validateContactDeviceId(Lcom/callapp/contacts/model/contact/ContactData;)V

    return-void
.end method
