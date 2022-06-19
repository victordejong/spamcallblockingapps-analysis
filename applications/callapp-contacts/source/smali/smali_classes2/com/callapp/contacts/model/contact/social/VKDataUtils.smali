.class public Lcom/callapp/contacts/model/contact/social/VKDataUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final VK_BIRTHDAY_FORMAT:[Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/text/SimpleDateFormat;

    .line 23
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd.MM.yyyy"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd.MM"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/callapp/contacts/model/contact/social/VKDataUtils;->VK_BIRTHDAY_FORMAT:[Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultText(Lcom/callapp/contacts/model/contact/social/VKData;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/social/VKData;->getLatestPost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/social/VKData;->getLatestPost()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 168
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/social/VKData;->getAbout()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 169
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/social/VKData;->getAbout()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method public static getVKBirthDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 6

    .line 27
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 28
    sget-object v0, Lcom/callapp/contacts/model/contact/social/VKDataUtils;->VK_BIRTHDAY_FORMAT:[Ljava/text/SimpleDateFormat;

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    .line 29
    invoke-virtual {v5, v3}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 31
    :try_start_0
    invoke-virtual {v5, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    goto :goto_1

    :catch_0
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v1
.end method

.method public static setAbout(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/VKData;Ljava/lang/String;)Z
    .locals 1

    .line 64
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/social/VKData;->getAbout()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/social/VKData;->setAbout(Ljava/lang/String;)V

    .line 66
    sget-object p1, Lcom/callapp/contacts/model/contact/ContactField;->vkData:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setAddress(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/VKData;Lcom/callapp/common/model/json/JSONAddress;)Z
    .locals 1

    .line 114
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/social/VKData;->getAddress()Lcom/callapp/common/model/json/JSONAddress;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/social/VKData;->setAddress(Lcom/callapp/common/model/json/JSONAddress;)V

    .line 116
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateAddresses()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setBirthDate(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/VKData;Ljava/util/Date;)Z
    .locals 1

    .line 44
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/social/VKData;->getBirthDate()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/social/VKData;->setBirthDate(Ljava/util/Date;)V

    .line 46
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateBirthDate()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setFacebookId(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/VKData;Lcom/callapp/common/model/json/JSONSocialNetworkID;)Z
    .locals 1

    .line 84
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/social/VKData;->getFacebookId()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/social/VKData;->setFacebookId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    .line 86
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateFacebookId()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setImAddresses(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/VKData;Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Lcom/callapp/contacts/model/contact/social/VKData;",
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONIMaddress;",
            ">;)Z"
        }
    .end annotation

    .line 104
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/social/VKData;->getImAddresses()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/social/VKData;->setImAddresses(Ljava/util/Collection;)V

    .line 106
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateImAddresses()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setLatestPost(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/VKData;Ljava/lang/String;)Z
    .locals 1

    .line 154
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/social/VKData;->getLatestPost()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/social/VKData;->setLatestPost(Ljava/lang/String;)V

    .line 156
    sget-object p1, Lcom/callapp/contacts/model/contact/ContactField;->vkData:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setPhones(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/VKData;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Lcom/callapp/contacts/model/contact/social/VKData;",
            "Ljava/util/List<",
            "Lcom/callapp/framework/phone/Phone;",
            ">;)Z"
        }
    .end annotation

    .line 54
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/social/VKData;->getPhones()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/social/VKData;->setPhones(Ljava/util/List;)V

    .line 56
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updatePhones()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setPubProfileUrl(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/VKData;Ljava/lang/String;)Z
    .locals 1

    .line 124
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/social/VKData;->getPubProfileUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/social/VKData;->setPubProfileUrl(Ljava/lang/String;)V

    .line 126
    sget-object p1, Lcom/callapp/contacts/model/contact/ContactField;->vkData:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setTwitterScreenName(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/VKData;Lcom/callapp/common/model/json/JSONSocialNetworkID;)Z
    .locals 1

    .line 94
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/social/VKData;->getTwitterScreenName()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/social/VKData;->setTwitterScreenName(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    .line 96
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateTwitterScreenName()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setUploadedPhotosUrl(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/VKData;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Lcom/callapp/contacts/model/contact/social/VKData;",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/UploadedPhoto;",
            ">;)Z"
        }
    .end annotation

    .line 134
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/social/VKData;->getUploadedPhotosUrl()Ljava/util/List;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/social/VKData;->setUploadedPhotosUrl(Ljava/util/List;)V

    .line 136
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateUploadedPhotoUrls()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setUploadedVideosUrl(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/VKData;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Lcom/callapp/contacts/model/contact/social/VKData;",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/contact/VideoData;",
            ">;)Z"
        }
    .end annotation

    .line 144
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/social/VKData;->getVideos()Ljava/util/List;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/social/VKData;->setVideos(Ljava/util/List;)V

    .line 146
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateWebVideos()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setWebsites(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/VKData;Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Lcom/callapp/contacts/model/contact/social/VKData;",
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONWebsite;",
            ">;)Z"
        }
    .end annotation

    .line 74
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/social/VKData;->getWebsites()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/social/VKData;->setWebsites(Ljava/util/Collection;)V

    .line 76
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateWebsites()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
