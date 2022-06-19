.class public Lcom/callapp/contacts/model/contact/social/FacebookDataUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FACEBOOK_BIRTHDAY_FORMAT:[Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/text/SimpleDateFormat;

    .line 27
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MM/dd/yyyy"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MM/dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/callapp/contacts/model/contact/social/FacebookDataUtils;->FACEBOOK_BIRTHDAY_FORMAT:[Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultText(Lcom/callapp/contacts/model/contact/social/FacebookData;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 219
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/social/FacebookData;->getLatestPost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 220
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/social/FacebookData;->getLatestPost()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 221
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/social/FacebookData;->getAbout()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 222
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/social/FacebookData;->getAbout()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 223
    :cond_2
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/social/FacebookData;->getBio()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 224
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/social/FacebookData;->getBio()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 225
    :cond_3
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/social/FacebookData;->getLikes()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 226
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/social/FacebookData;->getLikes()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 227
    :cond_4
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/social/FacebookData;->getGroups()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 228
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/social/FacebookData;->getGroups()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 229
    :cond_5
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/social/FacebookData;->getHomeTown()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 230
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/social/FacebookData;->getHomeTown()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 231
    :cond_6
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/social/FacebookData;->getActivities()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 232
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/social/FacebookData;->getActivities()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    return-object v0
.end method

.method public static getFacebookBirthDate(Ljava/lang/String;)Lcom/callapp/common/model/json/JSONDate;
    .locals 7

    .line 31
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 32
    sget-object v0, Lcom/callapp/contacts/model/contact/social/FacebookDataUtils;->FACEBOOK_BIRTHDAY_FORMAT:[Ljava/text/SimpleDateFormat;

    array-length v2, v0

    const/4 v3, 0x0

    move-object v5, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v6, v0, v4

    .line 33
    invoke-virtual {v6, v3}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 35
    :try_start_0
    invoke-virtual {v6, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_0

    goto :goto_1

    :catch_0
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move-object v5, v1

    :cond_2
    :goto_1
    if-eqz v5, :cond_3

    .line 45
    new-instance p0, Lcom/callapp/common/model/json/JSONDate;

    invoke-direct {p0, v5}, Lcom/callapp/common/model/json/JSONDate;-><init>(Ljava/util/Date;)V

    return-object p0

    :cond_3
    return-object v1
.end method

.method public static setAbout(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/FacebookData;Ljava/lang/String;)Z
    .locals 0

    .line 100
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/social/FacebookData;->getAbout()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 101
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/social/FacebookData;->setAbout(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setAddress(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/FacebookData;Lcom/callapp/common/model/json/JSONAddress;)Z
    .locals 1

    .line 127
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/social/FacebookData;->getAddress()Lcom/callapp/common/model/json/JSONAddress;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/social/FacebookData;->setAddress(Lcom/callapp/common/model/json/JSONAddress;)V

    .line 129
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateAddresses()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setBio(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/FacebookData;Ljava/lang/String;)Z
    .locals 0

    .line 109
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/social/FacebookData;->getBio()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 110
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/social/FacebookData;->setBio(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setBirthDate(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/FacebookData;Lcom/callapp/common/model/json/JSONDate;)Z
    .locals 1

    .line 51
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/social/FacebookData;->getBirthday()Lcom/callapp/common/model/json/JSONDate;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/social/FacebookData;->setBirthday(Lcom/callapp/common/model/json/JSONDate;)V

    .line 53
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateBirthDate()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setCategories(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/FacebookData;Ljava/util/Set;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Lcom/callapp/contacts/model/contact/social/FacebookData;",
            "Ljava/util/Set<",
            "Lcom/callapp/common/model/json/JSONCategory;",
            ">;)Z"
        }
    .end annotation

    .line 148
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/social/FacebookData;->getCategories()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/social/FacebookData;->setCategories(Ljava/util/Set;)V

    .line 150
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateCategories()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setEmail(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/FacebookData;Lcom/callapp/common/model/json/JSONEmail;)Z
    .locals 1

    .line 61
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/social/FacebookData;->getEmail()Lcom/callapp/common/model/json/JSONEmail;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/social/FacebookData;->setEmail(Lcom/callapp/common/model/json/JSONEmail;)V

    .line 63
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateEmails()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setFqlType(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/FacebookData;Ljava/lang/String;)Z
    .locals 0

    .line 208
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/social/FacebookData;->getFqlType()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 209
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/social/FacebookData;->setFqlType(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setHometown(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/FacebookData;Ljava/lang/String;)Z
    .locals 0

    .line 118
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/social/FacebookData;->getHomeTown()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 119
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/social/FacebookData;->setHomeTown(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setLatLng(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/FacebookData;Ljava/lang/Double;Ljava/lang/Double;)Z
    .locals 2

    .line 137
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/social/FacebookData;->getLat()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/social/FacebookData;->getLng()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 138
    :cond_1
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/model/contact/social/FacebookData;->setLat(D)V

    .line 139
    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/callapp/contacts/model/contact/social/FacebookData;->setLng(D)V

    .line 140
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateLatLng()V

    const/4 p0, 0x1

    return p0
.end method

.method public static setLatestMessage(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/FacebookData;Lcom/callapp/common/util/SerializablePair;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Lcom/callapp/contacts/model/contact/social/FacebookData;",
            "Lcom/callapp/common/util/SerializablePair<",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 188
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/social/FacebookData;->getLatestMessage()Lcom/callapp/common/util/SerializablePair;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/social/FacebookData;->setLatestMessage(Lcom/callapp/common/util/SerializablePair;)V

    .line 190
    sget-object p1, Lcom/callapp/contacts/model/contact/ContactField;->facebookData:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setLatestPost(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/FacebookData;Ljava/lang/String;)Z
    .locals 1

    .line 168
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/social/FacebookData;->getLatestPost()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/social/FacebookData;->setLatestPost(Ljava/lang/String;)V

    .line 170
    sget-object p1, Lcom/callapp/contacts/model/contact/ContactField;->facebookData:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setLikes(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/FacebookData;Ljava/lang/String;)Z
    .locals 1

    .line 198
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/social/FacebookData;->getLikes()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/social/FacebookData;->setLikes(Ljava/lang/String;)V

    .line 200
    sget-object p1, Lcom/callapp/contacts/model/contact/ContactField;->facebookData:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setOpeningHours(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/FacebookData;Lcom/callapp/common/model/json/JSONOpeningHours;)Z
    .locals 1

    .line 158
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/social/FacebookData;->getOpeningHours()Lcom/callapp/common/model/json/JSONOpeningHours;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/social/FacebookData;->setOpeningHours(Lcom/callapp/common/model/json/JSONOpeningHours;)V

    .line 160
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateOpeningHours()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setOrganizations(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/FacebookData;Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Lcom/callapp/contacts/model/contact/social/FacebookData;",
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONOrgData;",
            ">;)Z"
        }
    .end annotation

    .line 81
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/social/FacebookData;->getOrganizations()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/social/FacebookData;->setOrganizations(Ljava/util/Collection;)V

    .line 83
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateOrganizations()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setUploadedPhotosUrl(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/FacebookData;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Lcom/callapp/contacts/model/contact/social/FacebookData;",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/UploadedPhoto;",
            ">;)Z"
        }
    .end annotation

    .line 178
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/social/FacebookData;->getUploadedPhotosUrl()Ljava/util/List;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/social/FacebookData;->setUploadedPhotosUrl(Ljava/util/List;)V

    .line 180
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateUploadedPhotoUrls()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setWebsites(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/FacebookData;Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Lcom/callapp/contacts/model/contact/social/FacebookData;",
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONWebsite;",
            ">;)Z"
        }
    .end annotation

    .line 71
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/social/FacebookData;->getWebsites()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/social/FacebookData;->setWebsites(Ljava/util/Collection;)V

    .line 73
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateWebsites()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setWorksAt(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/FacebookData;Ljava/lang/String;)Z
    .locals 0

    .line 91
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/social/FacebookData;->getWorksAtText()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 92
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/social/FacebookData;->setWorksAtText(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
