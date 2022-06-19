.class public Lcom/callapp/contacts/loader/vk/LoadVKDataTask;
.super Lcom/callapp/contacts/loader/social/BaseSocialLoaderTask;
.source "SourceFile"


# static fields
.field public static final c:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 30
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->vkData:Lcom/callapp/contacts/model/contact/ContactField;

    const/16 v1, 0xb

    new-array v1, v1, [Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->names:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->photoUrl:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->birthday:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->phone:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->phones:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->websites:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->facebookId:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->twitterScreenName:Lcom/callapp/contacts/model/contact/ContactField;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->imAddresses:Lcom/callapp/contacts/model/contact/ContactField;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->addresses:Lcom/callapp/contacts/model/contact/ContactField;

    const/16 v3, 0xa

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/callapp/contacts/loader/vk/LoadVKDataTask;->c:Ljava/util/EnumSet;

    return-void
.end method

.method constructor <init>(Lcom/callapp/contacts/loader/social/BaseSocialLoader;Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/loader/social/BaseSocialLoaderTask;-><init>(Lcom/callapp/contacts/loader/social/BaseSocialLoader;Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 12

    .line 41
    iget-object v0, p0, Lcom/callapp/contacts/loader/vk/LoadVKDataTask;->a:Lcom/callapp/contacts/loader/api/LoadContext;

    iget-object v0, v0, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    .line 42
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getVKData()Lcom/callapp/contacts/model/contact/social/VKData;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 47
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/api/helper/vk/VKHelper;->get()Lcom/callapp/contacts/api/helper/vk/VKHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/callapp/contacts/loader/vk/LoadVKDataTask;->b:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-virtual {v3}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/api/helper/vk/VKHelper;->k(Ljava/lang/String;)Lcom/callapp/contacts/api/helper/vk/VKUser;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_15

    .line 49
    iget-object v6, p0, Lcom/callapp/contacts/loader/vk/LoadVKDataTask;->a:Lcom/callapp/contacts/loader/api/LoadContext;

    iget-object v6, v6, Lcom/callapp/contacts/loader/api/LoadContext;->b:Ljava/util/Set;

    const/4 v7, 0x2

    new-array v8, v7, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 51
    sget-object v9, Lcom/callapp/contacts/model/contact/ContactField;->names:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v9, v8, v3

    sget-object v9, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v9, v8, v4

    invoke-static {v6, v8}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 53
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/callapp/contacts/api/helper/vk/VKUser;->getFirstName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/callapp/contacts/api/helper/vk/VKUser;->getLastName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v1, v8}, Lcom/callapp/contacts/model/contact/social/SocialDataUtils;->setFullName(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/SocialData;Ljava/lang/String;)Z

    :cond_1
    new-array v8, v4, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 56
    sget-object v9, Lcom/callapp/contacts/model/contact/ContactField;->photoUrl:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v9, v8, v3

    invoke-static {v6, v8}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 57
    invoke-virtual {v2}, Lcom/callapp/contacts/api/helper/vk/VKUser;->getPhoto()Ljava/lang/String;

    move-result-object v8

    .line 58
    invoke-virtual {v2}, Lcom/callapp/contacts/api/helper/vk/VKUser;->getThumbnail()Ljava/lang/String;

    move-result-object v9

    .line 59
    invoke-static {}, Lcom/callapp/contacts/api/helper/vk/VKHelper;->get()Lcom/callapp/contacts/api/helper/vk/VKHelper;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/callapp/contacts/api/helper/vk/VKHelper;->a(Ljava/lang/String;)Z

    move-result v10

    xor-int/2addr v10, v4

    .line 60
    invoke-static {}, Lcom/callapp/contacts/api/helper/vk/VKHelper;->get()Lcom/callapp/contacts/api/helper/vk/VKHelper;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/callapp/contacts/api/helper/vk/VKHelper;->a(Ljava/lang/String;)Z

    move-result v11

    xor-int/2addr v11, v4

    if-eqz v10, :cond_2

    goto :goto_0

    :cond_2
    move-object v8, v5

    :goto_0
    if-eqz v11, :cond_3

    goto :goto_1

    :cond_3
    move-object v9, v5

    .line 65
    :goto_1
    invoke-static {v0, v1, v8, v9}, Lcom/callapp/contacts/model/contact/social/SocialDataUtils;->setPhotoUrl(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/SocialData;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_4
    new-array v8, v4, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 69
    sget-object v9, Lcom/callapp/contacts/model/contact/ContactField;->birthday:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v9, v8, v3

    invoke-static {v6, v8}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 70
    invoke-virtual {v2}, Lcom/callapp/contacts/api/helper/vk/VKUser;->getBirthDate()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/callapp/contacts/model/contact/social/VKDataUtils;->getVKBirthDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    .line 72
    invoke-static {v0, v1, v8}, Lcom/callapp/contacts/model/contact/social/VKDataUtils;->setBirthDate(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/VKData;Ljava/util/Date;)Z

    :cond_5
    new-array v7, v7, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 75
    sget-object v8, Lcom/callapp/contacts/model/contact/ContactField;->phone:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v8, v7, v3

    sget-object v8, Lcom/callapp/contacts/model/contact/ContactField;->phones:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v8, v7, v4

    invoke-static {v6, v7}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 76
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 77
    invoke-virtual {v2}, Lcom/callapp/contacts/api/helper/vk/VKUser;->getMobilePhone()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 78
    invoke-virtual {v2}, Lcom/callapp/contacts/api/helper/vk/VKUser;->getMobilePhone()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/callapp/framework/phone/Phone;->b(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v8

    .line 79
    invoke-static {v8}, Lcom/callapp/framework/phone/PhoneNumberUtils;->b(Lcom/callapp/framework/phone/Phone;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 80
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_6
    invoke-virtual {v2}, Lcom/callapp/contacts/api/helper/vk/VKUser;->getHomePhone()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 84
    invoke-virtual {v2}, Lcom/callapp/contacts/api/helper/vk/VKUser;->getHomePhone()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/callapp/framework/phone/Phone;->b(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v8

    .line 85
    invoke-static {v8}, Lcom/callapp/framework/phone/PhoneNumberUtils;->b(Lcom/callapp/framework/phone/Phone;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 86
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_7
    invoke-static {v0, v1, v7}, Lcom/callapp/contacts/model/contact/social/VKDataUtils;->setPhones(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/VKData;Ljava/util/List;)Z

    :cond_8
    new-array v7, v4, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 93
    sget-object v8, Lcom/callapp/contacts/model/contact/ContactField;->websites:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v8, v7, v3

    invoke-static {v6, v7}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 95
    invoke-virtual {v2}, Lcom/callapp/contacts/api/helper/vk/VKUser;->getSite()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 96
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 97
    new-instance v8, Lcom/callapp/common/model/json/JSONWebsite;

    invoke-virtual {v2}, Lcom/callapp/contacts/api/helper/vk/VKUser;->getSite()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/callapp/common/model/json/JSONWebsite;-><init>(Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    move-object v7, v5

    .line 100
    :goto_2
    invoke-static {v0, v1, v7}, Lcom/callapp/contacts/model/contact/social/VKDataUtils;->setWebsites(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/VKData;Ljava/util/Collection;)Z

    :cond_a
    new-array v7, v4, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 103
    sget-object v8, Lcom/callapp/contacts/model/contact/ContactField;->facebookId:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v8, v7, v3

    invoke-static {v6, v7}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 104
    new-instance v7, Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-virtual {v2}, Lcom/callapp/contacts/api/helper/vk/VKUser;->getFacebook()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Lcom/callapp/common/model/json/JSONSocialNetworkID;-><init>(Ljava/lang/String;Z)V

    .line 105
    invoke-static {v0, v1, v7}, Lcom/callapp/contacts/model/contact/social/VKDataUtils;->setFacebookId(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/VKData;Lcom/callapp/common/model/json/JSONSocialNetworkID;)Z

    :cond_b
    new-array v7, v4, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 108
    sget-object v8, Lcom/callapp/contacts/model/contact/ContactField;->twitterScreenName:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v8, v7, v3

    invoke-static {v6, v7}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 109
    new-instance v7, Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-virtual {v2}, Lcom/callapp/contacts/api/helper/vk/VKUser;->getTwitter()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Lcom/callapp/common/model/json/JSONSocialNetworkID;-><init>(Ljava/lang/String;Z)V

    .line 110
    invoke-static {v0, v1, v7}, Lcom/callapp/contacts/model/contact/social/VKDataUtils;->setTwitterScreenName(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/VKData;Lcom/callapp/common/model/json/JSONSocialNetworkID;)Z

    :cond_c
    new-array v7, v4, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 113
    sget-object v8, Lcom/callapp/contacts/model/contact/ContactField;->imAddresses:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v8, v7, v3

    invoke-static {v6, v7}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 115
    invoke-virtual {v2}, Lcom/callapp/contacts/api/helper/vk/VKUser;->getSkype()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 116
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 117
    new-instance v7, Lcom/callapp/common/model/json/JSONIMaddress;

    invoke-virtual {v2}, Lcom/callapp/contacts/api/helper/vk/VKUser;->getSkype()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    invoke-direct {v7, v8, v9, v9}, Lcom/callapp/common/model/json/JSONIMaddress;-><init>(Ljava/lang/String;II)V

    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_d
    invoke-static {v0, v1, v5}, Lcom/callapp/contacts/model/contact/social/VKDataUtils;->setImAddresses(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/VKData;Ljava/util/Collection;)Z

    :cond_e
    new-array v5, v4, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 123
    sget-object v7, Lcom/callapp/contacts/model/contact/ContactField;->addresses:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v7, v5, v3

    invoke-static {v6, v5}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 124
    new-instance v5, Lcom/callapp/common/model/json/JSONAddress;

    invoke-direct {v5}, Lcom/callapp/common/model/json/JSONAddress;-><init>()V

    .line 126
    invoke-virtual {v2}, Lcom/callapp/contacts/api/helper/vk/VKUser;->getCity()Lcom/callapp/contacts/api/helper/vk/VKApiCity;

    move-result-object v7

    if-eqz v7, :cond_f

    invoke-virtual {v2}, Lcom/callapp/contacts/api/helper/vk/VKUser;->getCity()Lcom/callapp/contacts/api/helper/vk/VKApiCity;

    move-result-object v7

    iget-object v7, v7, Lcom/callapp/contacts/api/helper/vk/VKApiCity;->title:Ljava/lang/String;

    invoke-static {v7}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 127
    invoke-virtual {v2}, Lcom/callapp/contacts/api/helper/vk/VKUser;->getCity()Lcom/callapp/contacts/api/helper/vk/VKApiCity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/callapp/contacts/api/helper/vk/VKApiCity;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/callapp/common/model/json/JSONAddress;->setCity(Ljava/lang/String;)V

    .line 130
    :cond_f
    invoke-virtual {v2}, Lcom/callapp/contacts/api/helper/vk/VKUser;->getCountry()Lcom/callapp/contacts/api/helper/vk/VKApiCountry;

    move-result-object v7

    if-eqz v7, :cond_10

    invoke-virtual {v2}, Lcom/callapp/contacts/api/helper/vk/VKUser;->getCountry()Lcom/callapp/contacts/api/helper/vk/VKApiCountry;

    move-result-object v7

    iget-object v7, v7, Lcom/callapp/contacts/api/helper/vk/VKApiCountry;->title:Ljava/lang/String;

    invoke-static {v7}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 131
    invoke-virtual {v2}, Lcom/callapp/contacts/api/helper/vk/VKUser;->getCountry()Lcom/callapp/contacts/api/helper/vk/VKApiCountry;

    move-result-object v7

    iget-object v7, v7, Lcom/callapp/contacts/api/helper/vk/VKApiCountry;->title:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/callapp/common/model/json/JSONAddress;->setCountry(Ljava/lang/String;)V

    .line 134
    :cond_10
    invoke-static {v0, v1, v5}, Lcom/callapp/contacts/model/contact/social/VKDataUtils;->setAddress(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/VKData;Lcom/callapp/common/model/json/JSONAddress;)Z

    .line 137
    :cond_11
    sget-object v5, Lcom/callapp/contacts/model/contact/ContactField;->vkData:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 140
    invoke-virtual {v2}, Lcom/callapp/contacts/api/helper/vk/VKUser;->getAbout()Ljava/lang/String;

    move-result-object v5

    .line 141
    invoke-static {v0, v1, v5}, Lcom/callapp/contacts/model/contact/social/VKDataUtils;->setAbout(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/VKData;Ljava/lang/String;)Z

    move-result v5

    .line 143
    invoke-virtual {v2}, Lcom/callapp/contacts/api/helper/vk/VKUser;->getScreenName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/contacts/api/helper/vk/VKHelper;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 144
    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/model/contact/social/VKDataUtils;->setPubProfileUrl(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/VKData;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    if-eqz v5, :cond_13

    :cond_12
    const/4 v3, 0x1

    :cond_13
    if-eqz v3, :cond_14

    .line 147
    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->vkData:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    :cond_14
    return-void

    .line 152
    :cond_15
    invoke-static {v0, v1, v5}, Lcom/callapp/contacts/model/contact/social/SocialDataUtils;->setFullName(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/SocialData;Ljava/lang/String;)Z

    .line 153
    invoke-static {v0, v1, v5, v5}, Lcom/callapp/contacts/model/contact/social/SocialDataUtils;->setPhotoUrl(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/SocialData;Ljava/lang/String;Ljava/lang/String;)Z

    .line 154
    invoke-static {v0, v1, v5}, Lcom/callapp/contacts/model/contact/social/VKDataUtils;->setBirthDate(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/VKData;Ljava/util/Date;)Z

    .line 155
    invoke-static {v0, v1, v5}, Lcom/callapp/contacts/model/contact/social/VKDataUtils;->setPhones(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/VKData;Ljava/util/List;)Z

    .line 156
    invoke-static {v0, v1, v5}, Lcom/callapp/contacts/model/contact/social/VKDataUtils;->setWebsites(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/VKData;Ljava/util/Collection;)Z

    .line 157
    invoke-static {v0, v1, v5}, Lcom/callapp/contacts/model/contact/social/VKDataUtils;->setFacebookId(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/VKData;Lcom/callapp/common/model/json/JSONSocialNetworkID;)Z

    .line 158
    invoke-static {v0, v1, v5}, Lcom/callapp/contacts/model/contact/social/VKDataUtils;->setTwitterScreenName(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/VKData;Lcom/callapp/common/model/json/JSONSocialNetworkID;)Z

    .line 159
    invoke-static {v0, v1, v5}, Lcom/callapp/contacts/model/contact/social/VKDataUtils;->setImAddresses(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/VKData;Ljava/util/Collection;)Z

    .line 160
    invoke-static {v0, v1, v5}, Lcom/callapp/contacts/model/contact/social/VKDataUtils;->setAddress(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/VKData;Lcom/callapp/common/model/json/JSONAddress;)Z

    .line 162
    invoke-static {v0, v1, v5}, Lcom/callapp/contacts/model/contact/social/VKDataUtils;->setAbout(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/VKData;Ljava/lang/String;)Z

    move-result v2

    .line 163
    invoke-static {v0, v1, v5}, Lcom/callapp/contacts/model/contact/social/VKDataUtils;->setPubProfileUrl(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/VKData;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    if-eqz v2, :cond_17

    :cond_16
    const/4 v3, 0x1

    :cond_17
    if-eqz v3, :cond_18

    .line 166
    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->vkData:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    :cond_18
    return-void
.end method
