.class Lcom/callapp/contacts/loader/social/facebook/LoadFbUserOrPageTask;
.super Lcom/callapp/contacts/loader/social/BaseSocialLoaderTask;
.source "SourceFile"


# static fields
.field static final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 34
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->facebookData:Lcom/callapp/contacts/model/contact/ContactField;

    const/16 v1, 0x9

    new-array v1, v1, [Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->organizations:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->names:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->birthday:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->emails:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->websites:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->addresses:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->latLng:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->categories:Lcom/callapp/contacts/model/contact/ContactField;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/callapp/contacts/loader/social/facebook/LoadFbUserOrPageTask;->c:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Lcom/callapp/contacts/loader/social/BaseSocialLoader;Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/loader/social/BaseSocialLoaderTask;-><init>(Lcom/callapp/contacts/loader/social/BaseSocialLoader;Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 18

    move-object/from16 v0, p0

    .line 46
    iget-object v1, v0, Lcom/callapp/contacts/loader/social/facebook/LoadFbUserOrPageTask;->a:Lcom/callapp/contacts/loader/api/LoadContext;

    iget-object v1, v1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    .line 47
    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->getFacebookData()Lcom/callapp/contacts/model/contact/social/FacebookData;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 52
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->get()Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    move-result-object v3

    iget-object v4, v0, Lcom/callapp/contacts/loader/social/facebook/LoadFbUserOrPageTask;->b:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-virtual {v4}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->getId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 2352
    invoke-virtual {v3, v4, v5}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->d(Ljava/lang/String;Z)Lcom/callapp/common/model/json/JSONFBUserOrPage;

    move-result-object v3

    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    if-eqz v3, :cond_18

    .line 54
    iget-object v9, v0, Lcom/callapp/contacts/loader/social/facebook/LoadFbUserOrPageTask;->a:Lcom/callapp/contacts/loader/api/LoadContext;

    iget-object v9, v9, Lcom/callapp/contacts/loader/api/LoadContext;->b:Ljava/util/Set;

    .line 57
    invoke-virtual {v3}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getFqlType()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v2, v10}, Lcom/callapp/contacts/model/contact/social/FacebookDataUtils;->setFqlType(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/FacebookData;Ljava/lang/String;)Z

    move-result v10

    const/4 v11, 0x2

    new-array v11, v11, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 59
    sget-object v12, Lcom/callapp/contacts/model/contact/ContactField;->names:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v12, v11, v5

    sget-object v12, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v12, v11, v4

    invoke-static {v9, v11}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 60
    invoke-virtual {v3}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v2, v11}, Lcom/callapp/contacts/model/contact/social/SocialDataUtils;->setFullName(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/SocialData;Ljava/lang/String;)Z

    .line 63
    :cond_1
    sget-object v11, Lcom/callapp/contacts/model/contact/ContactField;->birthday:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v9, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 64
    invoke-virtual {v3}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getBirthday()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/callapp/contacts/model/contact/social/FacebookDataUtils;->getFacebookBirthDate(Ljava/lang/String;)Lcom/callapp/common/model/json/JSONDate;

    move-result-object v11

    .line 66
    invoke-static {v1, v2, v11}, Lcom/callapp/contacts/model/contact/social/FacebookDataUtils;->setBirthDate(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/FacebookData;Lcom/callapp/common/model/json/JSONDate;)Z

    .line 69
    :cond_2
    sget-object v11, Lcom/callapp/contacts/model/contact/ContactField;->emails:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v9, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 71
    invoke-virtual {v3}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getEmail()Ljava/lang/String;

    move-result-object v11

    .line 72
    invoke-static {v11}, Lcom/callapp/common/util/RegexUtils;->j(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 73
    new-instance v12, Lcom/callapp/common/model/json/JSONEmail;

    invoke-direct {v12}, Lcom/callapp/common/model/json/JSONEmail;-><init>()V

    .line 74
    invoke-virtual {v12, v11}, Lcom/callapp/common/model/json/JSONEmail;->setEmail(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v12, 0x0

    .line 77
    :goto_0
    invoke-static {v1, v2, v12}, Lcom/callapp/contacts/model/contact/social/FacebookDataUtils;->setEmail(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/FacebookData;Lcom/callapp/common/model/json/JSONEmail;)Z

    .line 80
    :cond_4
    sget-object v11, Lcom/callapp/contacts/model/contact/ContactField;->websites:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v9, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 82
    invoke-virtual {v3}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getWebsite()Ljava/lang/String;

    move-result-object v11

    .line 83
    invoke-static {v11}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 84
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    const-string v13, "\r\n"

    .line 85
    invoke-virtual {v11, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 86
    array-length v13, v11

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v13, :cond_7

    aget-object v15, v11, v14

    .line 87
    invoke-static {v15}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 88
    new-instance v8, Lcom/callapp/common/model/json/JSONWebsite;

    invoke-direct {v8, v15}, Lcom/callapp/common/model/json/JSONWebsite;-><init>(Ljava/lang/String;)V

    invoke-interface {v12, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_6
    const/4 v12, 0x0

    .line 93
    :cond_7
    invoke-static {v1, v2, v12}, Lcom/callapp/contacts/model/contact/social/FacebookDataUtils;->setWebsites(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/FacebookData;Ljava/util/Collection;)Z

    :cond_8
    new-array v8, v4, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 96
    sget-object v11, Lcom/callapp/contacts/model/contact/ContactField;->facebookData:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v11, v8, v5

    invoke-static {v9, v8}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 98
    sget-object v8, Lcom/callapp/contacts/model/contact/ContactField;->facebookData:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v9, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 99
    invoke-virtual {v3}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getAbout()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v2, v8}, Lcom/callapp/contacts/model/contact/social/FacebookDataUtils;->setAbout(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/FacebookData;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a

    if-eqz v10, :cond_9

    goto :goto_2

    :cond_9
    const/4 v8, 0x0

    goto :goto_3

    :cond_a
    :goto_2
    const/4 v8, 0x1

    .line 101
    :goto_3
    invoke-virtual {v3}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getBio()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v2, v9}, Lcom/callapp/contacts/model/contact/social/FacebookDataUtils;->setBio(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/FacebookData;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_c

    if-eqz v8, :cond_b

    goto :goto_4

    :cond_b
    const/4 v8, 0x0

    goto :goto_5

    :cond_c
    :goto_4
    const/4 v8, 0x1

    .line 104
    :goto_5
    invoke-virtual {v3}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getHometownName()Ljava/lang/String;

    move-result-object v9

    .line 105
    invoke-static {v9}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_d

    const v10, 0x7f12032c

    new-array v11, v4, [Ljava/lang/Object;

    aput-object v9, v11, v5

    .line 106
    invoke-static {v10, v11}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_6

    :cond_d
    const/4 v9, 0x0

    .line 109
    :goto_6
    invoke-static {v1, v2, v9}, Lcom/callapp/contacts/model/contact/social/FacebookDataUtils;->setHometown(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/FacebookData;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_e

    if-eqz v8, :cond_f

    :cond_e
    const/4 v5, 0x1

    :cond_f
    if-eqz v5, :cond_10

    .line 112
    sget-object v4, Lcom/callapp/contacts/model/contact/ContactField;->facebookData:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {v1, v4}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    .line 118
    :cond_10
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 119
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 120
    invoke-virtual {v3}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getLocationObject()Lcom/callapp/common/model/json/JSONFBLocation;

    move-result-object v8

    if-eqz v8, :cond_13

    .line 123
    invoke-virtual {v8}, Lcom/callapp/common/model/json/JSONFBLocation;->getStreet()Ljava/lang/String;

    move-result-object v9

    .line 124
    invoke-static {v9}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 125
    new-instance v4, Lcom/callapp/common/model/json/JSONAddress;

    invoke-direct {v4}, Lcom/callapp/common/model/json/JSONAddress;-><init>()V

    .line 126
    invoke-virtual {v4, v9}, Lcom/callapp/common/model/json/JSONAddress;->setStreet(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v8}, Lcom/callapp/common/model/json/JSONFBLocation;->getCity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/callapp/common/model/json/JSONAddress;->setCity(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v8}, Lcom/callapp/common/model/json/JSONFBLocation;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/callapp/common/model/json/JSONAddress;->setCountry(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v8}, Lcom/callapp/common/model/json/JSONFBLocation;->getState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/callapp/common/model/json/JSONAddress;->setState(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v8}, Lcom/callapp/common/model/json/JSONFBLocation;->getZip()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/callapp/common/model/json/JSONAddress;->setPostalCode(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v8}, Lcom/callapp/common/model/json/JSONFBLocation;->getLatitude()Ljava/lang/Double;

    move-result-object v5

    if-nez v5, :cond_11

    move-wide v9, v6

    goto :goto_7

    :cond_11
    invoke-virtual {v8}, Lcom/callapp/common/model/json/JSONFBLocation;->getLatitude()Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    :goto_7
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 134
    invoke-virtual {v8}, Lcom/callapp/common/model/json/JSONFBLocation;->getLongitude()Ljava/lang/Double;

    move-result-object v9

    if-nez v9, :cond_12

    goto :goto_8

    :cond_12
    invoke-virtual {v8}, Lcom/callapp/common/model/json/JSONFBLocation;->getLongitude()Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    :goto_8
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    move-object/from16 v17, v6

    move-object v6, v4

    move-object v4, v5

    move-object/from16 v5, v17

    goto :goto_9

    :cond_13
    const/4 v6, 0x0

    .line 138
    :goto_9
    invoke-static {v1, v2, v6}, Lcom/callapp/contacts/model/contact/social/FacebookDataUtils;->setAddress(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/FacebookData;Lcom/callapp/common/model/json/JSONAddress;)Z

    .line 139
    invoke-static {v1, v2, v4, v5}, Lcom/callapp/contacts/model/contact/social/FacebookDataUtils;->setLatLng(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/FacebookData;Ljava/lang/Double;Ljava/lang/Double;)Z

    .line 143
    invoke-virtual {v3}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getCategoriesList()Ljava/util/List;

    move-result-object v4

    .line 144
    invoke-static {v4}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 145
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 146
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_14
    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/callapp/common/model/json/JSONFBType;

    .line 147
    invoke-virtual {v6}, Lcom/callapp/common/model/json/JSONFBType;->getName()Ljava/lang/String;

    move-result-object v6

    .line 148
    invoke-static {v6}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 149
    new-instance v7, Lcom/callapp/common/model/json/JSONCategory;

    const/4 v8, 0x0

    invoke-direct {v7, v6, v8}, Lcom/callapp/common/model/json/JSONCategory;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_15
    move-object v8, v5

    goto :goto_b

    :cond_16
    const/4 v8, 0x0

    .line 154
    :goto_b
    invoke-static {v1, v2, v8}, Lcom/callapp/contacts/model/contact/social/FacebookDataUtils;->setCategories(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/FacebookData;Ljava/util/Set;)Z

    .line 158
    invoke-virtual {v3}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getOpeningHours()Lcom/callapp/common/model/json/JSONOpeningHours;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/callapp/contacts/model/contact/social/FacebookDataUtils;->setOpeningHours(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/FacebookData;Lcom/callapp/common/model/json/JSONOpeningHours;)Z

    :cond_17
    return-void

    :cond_18
    const/4 v3, 0x0

    .line 164
    invoke-static {v1, v2, v3}, Lcom/callapp/contacts/model/contact/social/FacebookDataUtils;->setFqlType(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/FacebookData;Ljava/lang/String;)Z

    .line 166
    invoke-static {v1, v2, v3}, Lcom/callapp/contacts/model/contact/social/SocialDataUtils;->setFullName(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/SocialData;Ljava/lang/String;)Z

    .line 167
    invoke-static {v1, v2, v3}, Lcom/callapp/contacts/model/contact/social/FacebookDataUtils;->setBirthDate(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/FacebookData;Lcom/callapp/common/model/json/JSONDate;)Z

    .line 168
    invoke-static {v1, v2, v3}, Lcom/callapp/contacts/model/contact/social/FacebookDataUtils;->setEmail(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/FacebookData;Lcom/callapp/common/model/json/JSONEmail;)Z

    .line 169
    invoke-static {v1, v2, v3}, Lcom/callapp/contacts/model/contact/social/FacebookDataUtils;->setWebsites(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/FacebookData;Ljava/util/Collection;)Z

    .line 170
    invoke-static {v1, v2, v3}, Lcom/callapp/contacts/model/contact/social/FacebookDataUtils;->setOrganizations(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/FacebookData;Ljava/util/Collection;)Z

    .line 171
    invoke-static {v1, v2, v3}, Lcom/callapp/contacts/model/contact/social/FacebookDataUtils;->setAddress(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/FacebookData;Lcom/callapp/common/model/json/JSONAddress;)Z

    .line 172
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v1, v2, v8, v6}, Lcom/callapp/contacts/model/contact/social/FacebookDataUtils;->setLatLng(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/FacebookData;Ljava/lang/Double;Ljava/lang/Double;)Z

    .line 173
    invoke-static {v1, v2, v3}, Lcom/callapp/contacts/model/contact/social/FacebookDataUtils;->setCategories(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/FacebookData;Ljava/util/Set;)Z

    .line 174
    invoke-static {v1, v2, v3}, Lcom/callapp/contacts/model/contact/social/FacebookDataUtils;->setOpeningHours(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/FacebookData;Lcom/callapp/common/model/json/JSONOpeningHours;)Z

    .line 175
    invoke-static {v1, v2, v3}, Lcom/callapp/contacts/model/contact/social/FacebookDataUtils;->setWorksAt(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/FacebookData;Ljava/lang/String;)Z

    move-result v6

    .line 176
    invoke-static {v1, v2, v3}, Lcom/callapp/contacts/model/contact/social/FacebookDataUtils;->setAbout(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/FacebookData;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1a

    if-eqz v6, :cond_19

    goto :goto_c

    :cond_19
    const/4 v6, 0x0

    goto :goto_d

    :cond_1a
    :goto_c
    const/4 v6, 0x1

    .line 177
    :goto_d
    invoke-static {v1, v2, v3}, Lcom/callapp/contacts/model/contact/social/FacebookDataUtils;->setBio(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/FacebookData;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1c

    if-eqz v6, :cond_1b

    goto :goto_e

    :cond_1b
    const/4 v6, 0x0

    goto :goto_f

    :cond_1c
    :goto_e
    const/4 v6, 0x1

    .line 178
    :goto_f
    invoke-static {v1, v2, v3}, Lcom/callapp/contacts/model/contact/social/FacebookDataUtils;->setHometown(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/FacebookData;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1d

    if-eqz v6, :cond_1e

    :cond_1d
    const/4 v5, 0x1

    :cond_1e
    if-eqz v5, :cond_1f

    .line 181
    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->facebookData:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    :cond_1f
    return-void
.end method
