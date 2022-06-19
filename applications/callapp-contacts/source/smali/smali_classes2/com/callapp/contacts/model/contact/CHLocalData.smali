.class public Lcom/callapp/contacts/model/contact/CHLocalData;
.super Lcom/callapp/contacts/model/contact/ExternalSourceData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/model/contact/CHLocalData$ContactFields;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6bda9801418833d8L


# instance fields
.field private final addresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final categories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONCategory;",
            ">;"
        }
    .end annotation
.end field

.field private final description:Ljava/lang/String;

.field private final emails:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONEmail;",
            ">;"
        }
    .end annotation
.end field

.field private final imagesUrl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final isBusiness:Z

.field private final lat:D

.field private final lng:D

.field private final logoImageUrl:Ljava/lang/String;

.field private final openingHours:Lcom/callapp/common/model/json/JSONOpeningHours;

.field private final phones:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONPhoneNumber;",
            ">;"
        }
    .end annotation
.end field

.field private final photoUrl:Ljava/lang/String;

.field private final url:Ljava/lang/String;

.field private final venueFoursquareID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

.field private final videos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/contact/VideoData;",
            ">;"
        }
    .end annotation
.end field

.field private final websites:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONWebsite;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/callapp/common/model/json/JSONCHLocalResult;Lcom/callapp/framework/phone/Phone;)V
    .locals 11

    .line 54
    invoke-direct {p0}, Lcom/callapp/contacts/model/contact/ExternalSourceData;-><init>()V

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez p1, :cond_0

    .line 56
    iput-object v3, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->logoImageUrl:Ljava/lang/String;

    .line 57
    iput-object v3, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->imagesUrl:Ljava/util/List;

    .line 58
    iput-boolean v2, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->isBusiness:Z

    .line 59
    iput-object v3, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->phones:Ljava/util/Collection;

    .line 60
    iput-object v3, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->emails:Ljava/util/Collection;

    .line 61
    iput-object v3, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->websites:Ljava/util/Collection;

    .line 62
    iput-object v3, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->categories:Ljava/util/List;

    .line 63
    iput-object v3, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->openingHours:Lcom/callapp/common/model/json/JSONOpeningHours;

    .line 64
    iput-object v3, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->photoUrl:Ljava/lang/String;

    .line 65
    iput-object v3, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->venueFoursquareID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    .line 66
    iput-object v3, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->videos:Ljava/util/List;

    .line 67
    iput-object v3, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->addresses:Ljava/util/List;

    .line 68
    iput-object v3, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->description:Ljava/lang/String;

    .line 69
    iput-object v3, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->url:Ljava/lang/String;

    .line 70
    iput-wide v0, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->lat:D

    .line 71
    iput-wide v0, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->lng:D

    return-void

    .line 73
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONCHLocalResult;->isOrganisation()Z

    move-result v4

    iput-boolean v4, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->isBusiness:Z

    .line 75
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONCHLocalResult;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONCHLocalResult;->getDescription()Ljava/lang/String;

    move-result-object v4

    :goto_0
    iput-object v4, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->description:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONCHLocalResult;->getAddresses()Ljava/util/List;

    move-result-object v4

    .line 80
    invoke-static {v4}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    .line 81
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 82
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/callapp/common/model/json/JSONCHLocalResultsAddress;

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/CharSequence;

    .line 83
    invoke-virtual {v7}, Lcom/callapp/common/model/json/JSONCHLocalResultsAddress;->getState()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-virtual {v7}, Lcom/callapp/common/model/json/JSONCHLocalResultsAddress;->getCity()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    const/4 v9, 0x2

    invoke-virtual {v7}, Lcom/callapp/common/model/json/JSONCHLocalResultsAddress;->getZipcode()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-virtual {v7}, Lcom/callapp/common/model/json/JSONCHLocalResultsAddress;->getStreet()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v8}, Lcom/callapp/framework/util/StringUtils;->a([Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 84
    new-instance v8, Lcom/callapp/common/model/json/JSONAddress;

    invoke-direct {v8}, Lcom/callapp/common/model/json/JSONAddress;-><init>()V

    const-string v9, "Switzerland"

    .line 85
    invoke-virtual {v8, v9}, Lcom/callapp/common/model/json/JSONAddress;->setCountry(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v7}, Lcom/callapp/common/model/json/JSONCHLocalResultsAddress;->getState()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/callapp/common/model/json/JSONAddress;->setState(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v7}, Lcom/callapp/common/model/json/JSONCHLocalResultsAddress;->getCity()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/callapp/common/model/json/JSONAddress;->setCity(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v7}, Lcom/callapp/common/model/json/JSONCHLocalResultsAddress;->getZipcode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/callapp/common/model/json/JSONAddress;->setPostalCode(Ljava/lang/String;)V

    .line 89
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/callapp/common/model/json/JSONCHLocalResultsAddress;->getStreet()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/callapp/common/model/json/JSONCHLocalResultsAddress;->getHouse_number()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/callapp/common/model/json/JSONAddress;->setStreet(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v5, v3

    .line 94
    :cond_4
    invoke-static {v5}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v5, v3

    :cond_5
    iput-object v5, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->addresses:Ljava/util/List;

    .line 97
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONCHLocalResult;->getLocation()Lcom/callapp/common/model/json/JSONCHLocalResultsLocation;

    move-result-object v4

    if-nez v4, :cond_6

    .line 99
    iput-wide v0, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->lng:D

    iput-wide v0, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->lat:D

    goto :goto_2

    .line 101
    :cond_6
    invoke-virtual {v4}, Lcom/callapp/common/model/json/JSONCHLocalResultsLocation;->getLatitude()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->s(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->lat:D

    .line 102
    invoke-virtual {v4}, Lcom/callapp/common/model/json/JSONCHLocalResultsLocation;->getLongitude()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->s(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->lng:D

    .line 108
    :goto_2
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONCHLocalResult;->getContent_ads()Lcom/callapp/common/model/json/JSONCHLocalContentAds;

    move-result-object v0

    if-nez v0, :cond_7

    .line 110
    iput-object v3, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->logoImageUrl:Ljava/lang/String;

    .line 111
    iput-object v3, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->imagesUrl:Ljava/util/List;

    .line 112
    iput-object v3, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->venueFoursquareID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    .line 113
    iput-object v3, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->openingHours:Lcom/callapp/common/model/json/JSONOpeningHours;

    move-object v1, v3

    goto/16 :goto_9

    .line 115
    :cond_7
    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONCHLocalContentAds;->getLogo()Lcom/callapp/common/model/json/JSONCHLocalLogo;

    move-result-object v1

    if-nez v1, :cond_8

    .line 117
    iput-object v3, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->logoImageUrl:Ljava/lang/String;

    :goto_3
    move-object v1, v3

    goto :goto_5

    .line 119
    :cond_8
    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONCHLocalLogo;->getImage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    move-object v1, v3

    goto :goto_4

    :cond_9
    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONCHLocalContentAds;->getLogo()Lcom/callapp/common/model/json/JSONCHLocalLogo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONCHLocalLogo;->getImage()Ljava/lang/String;

    move-result-object v1

    :goto_4
    iput-object v1, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->logoImageUrl:Ljava/lang/String;

    .line 120
    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONCHLocalContentAds;->getLogo()Lcom/callapp/common/model/json/JSONCHLocalLogo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONCHLocalLogo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_3

    :cond_a
    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONCHLocalContentAds;->getLogo()Lcom/callapp/common/model/json/JSONCHLocalLogo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONCHLocalLogo;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 123
    :goto_5
    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONCHLocalContentAds;->getImages()Ljava/util/List;

    move-result-object v4

    .line 125
    invoke-static {v4}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 126
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 127
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_b
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/callapp/common/model/json/JSONCHLocalImages;

    .line 128
    invoke-virtual {v7}, Lcom/callapp/common/model/json/JSONCHLocalImages;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 129
    invoke-virtual {v7}, Lcom/callapp/common/model/json/JSONCHLocalImages;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_c
    move-object v5, v3

    .line 133
    :cond_d
    iput-object v5, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->imagesUrl:Ljava/util/List;

    .line 135
    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONCHLocalContentAds;->getFoursquare()Lcom/callapp/common/model/json/JSONCHLocalFoursquare;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 136
    invoke-virtual {v4}, Lcom/callapp/common/model/json/JSONCHLocalFoursquare;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_f

    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONCHLocalResult;->isOrganisation()Z

    move-result v5

    if-nez v5, :cond_e

    goto :goto_7

    .line 139
    :cond_e
    new-instance v5, Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-virtual {v4}, Lcom/callapp/common/model/json/JSONCHLocalFoursquare;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4, v6}, Lcom/callapp/common/model/json/JSONSocialNetworkID;-><init>(Ljava/lang/String;Z)V

    iput-object v5, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->venueFoursquareID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    goto :goto_8

    .line 137
    :cond_f
    :goto_7
    iput-object v3, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->venueFoursquareID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    .line 141
    :goto_8
    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONCHLocalContentAds;->getOpening_hours()Lcom/callapp/common/model/json/JSONCHLocalOpeningHours;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/callapp/contacts/model/contact/CHLocalData;->getOpeningHours(Lcom/callapp/common/model/json/JSONCHLocalOpeningHours;)Lcom/callapp/common/model/json/JSONOpeningHours;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->openingHours:Lcom/callapp/common/model/json/JSONOpeningHours;

    .line 160
    :goto_9
    iput-object v3, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->videos:Ljava/util/List;

    .line 163
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->imagesUrl:Ljava/util/List;

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->imagesUrl:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 164
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->imagesUrl:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->photoUrl:Ljava/lang/String;

    goto :goto_a

    .line 165
    :cond_10
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->logoImageUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 166
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->logoImageUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->photoUrl:Ljava/lang/String;

    goto :goto_a

    .line 168
    :cond_11
    iput-object v3, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->photoUrl:Ljava/lang/String;

    .line 171
    :goto_a
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONCHLocalResult;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/model/contact/CHLocalData;->setFullName(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONCHLocalResult;->getContacts()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONCHLocalResult;->isOrganisation()Z

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/callapp/contacts/model/contact/CHLocalData;->getContactFields(Ljava/util/List;Z)Lcom/callapp/contacts/model/contact/CHLocalData$ContactFields;

    move-result-object v0

    .line 175
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 176
    new-instance v2, Lcom/callapp/common/model/json/JSONWebsite;

    invoke-direct {v2, v1, v6}, Lcom/callapp/common/model/json/JSONWebsite;-><init>(Ljava/lang/String;I)V

    .line 177
    invoke-static {v0}, Lcom/callapp/contacts/model/contact/CHLocalData$ContactFields;->access$000(Lcom/callapp/contacts/model/contact/CHLocalData$ContactFields;)Ljava/util/Collection;

    move-result-object v1

    if-nez v1, :cond_12

    .line 178
    new-instance v1, Lcom/callapp/contacts/model/contact/CHLocalData$ContactFields;

    invoke-static {v0}, Lcom/callapp/contacts/model/contact/CHLocalData$ContactFields;->access$100(Lcom/callapp/contacts/model/contact/CHLocalData$ContactFields;)Ljava/util/Collection;

    move-result-object v6

    invoke-static {v0}, Lcom/callapp/contacts/model/contact/CHLocalData$ContactFields;->access$200(Lcom/callapp/contacts/model/contact/CHLocalData$ContactFields;)Ljava/util/Collection;

    move-result-object v7

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    const/4 v9, 0x0

    move-object v4, v1

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/callapp/contacts/model/contact/CHLocalData$ContactFields;-><init>(Lcom/callapp/contacts/model/contact/CHLocalData;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lcom/callapp/contacts/model/contact/CHLocalData$1;)V

    move-object v0, v1

    .line 180
    :cond_12
    invoke-static {v0}, Lcom/callapp/contacts/model/contact/CHLocalData$ContactFields;->access$000(Lcom/callapp/contacts/model/contact/CHLocalData$ContactFields;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_13
    invoke-static {v0}, Lcom/callapp/contacts/model/contact/CHLocalData$ContactFields;->access$100(Lcom/callapp/contacts/model/contact/CHLocalData$ContactFields;)Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_14

    move-object v1, v3

    goto :goto_b

    :cond_14
    invoke-static {v0}, Lcom/callapp/contacts/model/contact/CHLocalData$ContactFields;->access$100(Lcom/callapp/contacts/model/contact/CHLocalData$ContactFields;)Ljava/util/Collection;

    move-result-object v1

    :goto_b
    iput-object v1, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->phones:Ljava/util/Collection;

    .line 184
    invoke-static {v0}, Lcom/callapp/contacts/model/contact/CHLocalData$ContactFields;->access$200(Lcom/callapp/contacts/model/contact/CHLocalData$ContactFields;)Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_15

    move-object v1, v3

    goto :goto_c

    :cond_15
    invoke-static {v0}, Lcom/callapp/contacts/model/contact/CHLocalData$ContactFields;->access$200(Lcom/callapp/contacts/model/contact/CHLocalData$ContactFields;)Ljava/util/Collection;

    move-result-object v1

    :goto_c
    iput-object v1, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->emails:Ljava/util/Collection;

    .line 185
    invoke-static {v0}, Lcom/callapp/contacts/model/contact/CHLocalData$ContactFields;->access$000(Lcom/callapp/contacts/model/contact/CHLocalData$ContactFields;)Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_16

    move-object v0, v3

    goto :goto_d

    :cond_16
    invoke-static {v0}, Lcom/callapp/contacts/model/contact/CHLocalData$ContactFields;->access$000(Lcom/callapp/contacts/model/contact/CHLocalData$ContactFields;)Ljava/util/Collection;

    move-result-object v0

    :goto_d
    iput-object v0, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->websites:Ljava/util/Collection;

    .line 187
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONCHLocalResult;->getWeb_permalink()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    move-object v0, v3

    goto :goto_e

    :cond_17
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONCHLocalResult;->getWeb_permalink()Ljava/lang/String;

    move-result-object v0

    :goto_e
    iput-object v0, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->url:Ljava/lang/String;

    .line 190
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONCHLocalResult;->getBusiness()Lcom/callapp/common/model/json/JSONCHLocalBusiness;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 191
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONCHLocalBusiness;->getCategories()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_10

    .line 194
    :cond_18
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONCHLocalBusiness;->getCategories()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 195
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONCHLocalBusiness;->getCategories()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_19
    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/common/model/json/JSONCHLocalBusinessCategory;

    .line 196
    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONCHLocalBusinessCategory;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 197
    new-instance v2, Lcom/callapp/common/model/json/JSONCategory;

    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONCHLocalBusinessCategory;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v3}, Lcom/callapp/common/model/json/JSONCategory;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 201
    :cond_1a
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1b

    goto :goto_10

    :cond_1b
    move-object v3, v0

    :cond_1c
    :goto_10
    iput-object v3, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->categories:Ljava/util/List;

    if-eqz p2, :cond_1d

    .line 205
    invoke-virtual {p2}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/CHLocalData;->setKey(Ljava/lang/String;)V

    :cond_1d
    return-void
.end method

.method private getContactFields(Ljava/util/List;Z)Lcom/callapp/contacts/model/contact/CHLocalData$ContactFields;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONCHLocalPhone;",
            ">;Z)",
            "Lcom/callapp/contacts/model/contact/CHLocalData$ContactFields;"
        }
    .end annotation

    .line 249
    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    new-instance p1, Lcom/callapp/contacts/model/contact/CHLocalData$ContactFields;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/callapp/contacts/model/contact/CHLocalData$ContactFields;-><init>(Lcom/callapp/contacts/model/contact/CHLocalData;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lcom/callapp/contacts/model/contact/CHLocalData$1;)V

    return-object p1

    .line 253
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 254
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 255
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 257
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/common/model/json/JSONCHLocalPhone;

    .line 259
    invoke-virtual {v3}, Lcom/callapp/common/model/json/JSONCHLocalPhone;->isEmailType()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 260
    new-instance v4, Lcom/callapp/common/model/json/JSONEmail;

    invoke-virtual {v3}, Lcom/callapp/common/model/json/JSONCHLocalPhone;->getContact_value()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x3

    invoke-direct {v4, v3, v5}, Lcom/callapp/common/model/json/JSONEmail;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 261
    :cond_2
    invoke-virtual {v3}, Lcom/callapp/common/model/json/JSONCHLocalPhone;->isWebsiteType()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 262
    new-instance v4, Lcom/callapp/common/model/json/JSONWebsite;

    invoke-virtual {v3}, Lcom/callapp/common/model/json/JSONCHLocalPhone;->getContact_value()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-direct {v4, v3, v5}, Lcom/callapp/common/model/json/JSONWebsite;-><init>(Ljava/lang/String;I)V

    .line 263
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 265
    :cond_3
    invoke-static {v3, p2}, Lcom/callapp/contacts/model/contact/CHLocalData;->getPhoneType(Lcom/callapp/common/model/json/PhoneFieldType;Z)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 267
    invoke-virtual {v3}, Lcom/callapp/common/model/json/JSONCHLocalPhone;->getContact_value()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "CH"

    invoke-static {v3, v4, v5}, Lcom/callapp/common/model/json/JSONPhoneNumber;->fromRawPhoneNumByRegion(Ljava/lang/String;ILjava/lang/String;)Lcom/callapp/common/model/json/JSONPhoneNumber;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 269
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 275
    :cond_4
    new-instance p1, Lcom/callapp/contacts/model/contact/CHLocalData$ContactFields;

    .line 276
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result p2

    const/4 v3, 0x0

    if-eqz p2, :cond_5

    move-object v6, v3

    goto :goto_1

    :cond_5
    move-object v6, v0

    .line 277
    :goto_1
    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_6

    move-object v7, v3

    goto :goto_2

    :cond_6
    move-object v7, v1

    .line 278
    :goto_2
    invoke-static {v2}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_7

    move-object v8, v3

    goto :goto_3

    :cond_7
    move-object v8, v2

    :goto_3
    const/4 v9, 0x0

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/callapp/contacts/model/contact/CHLocalData$ContactFields;-><init>(Lcom/callapp/contacts/model/contact/CHLocalData;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lcom/callapp/contacts/model/contact/CHLocalData$1;)V

    return-object p1
.end method

.method private getOpeningHours(Lcom/callapp/common/model/json/JSONCHLocalOpeningHours;)Lcom/callapp/common/model/json/JSONOpeningHours;
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 211
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONCHLocalOpeningHours;->getRows()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 216
    :cond_0
    new-instance v1, Lcom/callapp/common/model/json/JSONOpeningHours;

    invoke-direct {v1}, Lcom/callapp/common/model/json/JSONOpeningHours;-><init>()V

    .line 217
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONCHLocalOpeningHours;->getRows()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/common/model/json/JSONCHLocalOpeningHoursRows;

    .line 218
    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONCHLocalOpeningHoursRows;->isDayOfWeek()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONCHLocalOpeningHoursRows;->getStart()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONCHLocalOpeningHoursRows;->getEnd()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 219
    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONCHLocalOpeningHoursRows;->getIndex()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Lcom/callapp/common/model/json/JSONOpeningHours;->getHoursPerDay(I)Ljava/util/Collection;

    move-result-object v3

    if-nez v3, :cond_2

    .line 221
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 223
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONCHLocalOpeningHoursRows;->getStart()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONCHLocalOpeningHoursRows;->getEnd()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 224
    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONCHLocalOpeningHoursRows;->getIndex()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/callapp/common/model/json/JSONOpeningHours;->setHoursPerDay(ILjava/util/Collection;)V

    goto :goto_0

    .line 228
    :cond_3
    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONOpeningHours;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    return-object v0

    :cond_4
    return-object v1

    :cond_5
    :goto_1
    return-object v0
.end method

.method public static getPhoneType(Lcom/callapp/common/model/json/PhoneFieldType;Z)Ljava/lang/Integer;
    .locals 1

    .line 284
    invoke-interface {p0}, Lcom/callapp/common/model/json/PhoneFieldType;->isPhoneType()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 285
    sget-object p0, Lcom/callapp/framework/phone/PhoneType;->WORK:Lcom/callapp/framework/phone/PhoneType;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/callapp/framework/phone/PhoneType;->OTHER:Lcom/callapp/framework/phone/PhoneType;

    :goto_0
    iget p0, p0, Lcom/callapp/framework/phone/PhoneType;->code:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_2

    .line 286
    :cond_1
    invoke-interface {p0}, Lcom/callapp/common/model/json/PhoneFieldType;->isFaxType()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 287
    sget-object p0, Lcom/callapp/framework/phone/PhoneType;->FAX_WORK:Lcom/callapp/framework/phone/PhoneType;

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/callapp/framework/phone/PhoneType;->FAX_HOME:Lcom/callapp/framework/phone/PhoneType;

    :goto_1
    iget p0, p0, Lcom/callapp/framework/phone/PhoneType;->code:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_2

    .line 288
    :cond_3
    invoke-interface {p0}, Lcom/callapp/common/model/json/PhoneFieldType;->isMobileType()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 289
    sget-object p0, Lcom/callapp/framework/phone/PhoneType;->MOBILE:Lcom/callapp/framework/phone/PhoneType;

    iget p0, p0, Lcom/callapp/framework/phone/PhoneType;->code:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_2

    :cond_4
    const/4 p0, 0x0

    :goto_2
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_11

    .line 367
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto/16 :goto_0

    .line 369
    :cond_1
    check-cast p1, Lcom/callapp/contacts/model/contact/CHLocalData;

    .line 371
    iget-boolean v1, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->isBusiness:Z

    iget-boolean v2, p1, Lcom/callapp/contacts/model/contact/CHLocalData;->isBusiness:Z

    if-eq v1, v2, :cond_2

    return v0

    .line 372
    :cond_2
    iget-wide v1, p1, Lcom/callapp/contacts/model/contact/CHLocalData;->lat:D

    iget-wide v3, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->lat:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_3

    return v0

    .line 373
    :cond_3
    iget-wide v1, p1, Lcom/callapp/contacts/model/contact/CHLocalData;->lng:D

    iget-wide v3, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->lng:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_4

    return v0

    .line 374
    :cond_4
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->logoImageUrl:Ljava/lang/String;

    iget-object v2, p1, Lcom/callapp/contacts/model/contact/CHLocalData;->logoImageUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v0

    .line 376
    :cond_5
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->imagesUrl:Ljava/util/List;

    iget-object v2, p1, Lcom/callapp/contacts/model/contact/CHLocalData;->imagesUrl:Ljava/util/List;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v0

    .line 378
    :cond_6
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->photoUrl:Ljava/lang/String;

    iget-object v2, p1, Lcom/callapp/contacts/model/contact/CHLocalData;->photoUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v0

    .line 380
    :cond_7
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->venueFoursquareID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    iget-object v2, p1, Lcom/callapp/contacts/model/contact/CHLocalData;->venueFoursquareID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v0

    .line 382
    :cond_8
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->videos:Ljava/util/List;

    iget-object v2, p1, Lcom/callapp/contacts/model/contact/CHLocalData;->videos:Ljava/util/List;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v0

    .line 383
    :cond_9
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->addresses:Ljava/util/List;

    iget-object v2, p1, Lcom/callapp/contacts/model/contact/CHLocalData;->addresses:Ljava/util/List;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v0

    .line 385
    :cond_a
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->phones:Ljava/util/Collection;

    iget-object v2, p1, Lcom/callapp/contacts/model/contact/CHLocalData;->phones:Ljava/util/Collection;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v0

    .line 386
    :cond_b
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->emails:Ljava/util/Collection;

    iget-object v2, p1, Lcom/callapp/contacts/model/contact/CHLocalData;->emails:Ljava/util/Collection;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v0

    .line 387
    :cond_c
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->websites:Ljava/util/Collection;

    iget-object v2, p1, Lcom/callapp/contacts/model/contact/CHLocalData;->websites:Ljava/util/Collection;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v0

    .line 389
    :cond_d
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->categories:Ljava/util/List;

    iget-object v2, p1, Lcom/callapp/contacts/model/contact/CHLocalData;->categories:Ljava/util/List;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v0

    .line 391
    :cond_e
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->openingHours:Lcom/callapp/common/model/json/JSONOpeningHours;

    iget-object v2, p1, Lcom/callapp/contacts/model/contact/CHLocalData;->openingHours:Lcom/callapp/common/model/json/JSONOpeningHours;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v0

    .line 393
    :cond_f
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->description:Ljava/lang/String;

    iget-object v2, p1, Lcom/callapp/contacts/model/contact/CHLocalData;->description:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v0

    .line 395
    :cond_10
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->url:Ljava/lang/String;

    iget-object p1, p1, Lcom/callapp/contacts/model/contact/CHLocalData;->url:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_11
    :goto_0
    return v0
.end method

.method public getAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONAddress;",
            ">;"
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->addresses:Ljava/util/List;

    return-object v0
.end method

.method public getCategories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONCategory;",
            ">;"
        }
    .end annotation

    .line 353
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->categories:Ljava/util/List;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getEmails()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONEmail;",
            ">;"
        }
    .end annotation

    .line 341
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->emails:Ljava/util/Collection;

    return-object v0
.end method

.method public getImagesCount()I
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->imagesUrl:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getImagesUrl(I)Ljava/lang/String;
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->imagesUrl:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->imagesUrl:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLat()D
    .locals 2

    .line 333
    iget-wide v0, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->lat:D

    return-wide v0
.end method

.method public getLng()D
    .locals 2

    .line 337
    iget-wide v0, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->lng:D

    return-wide v0
.end method

.method public getOpeningHours()Lcom/callapp/common/model/json/JSONOpeningHours;
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->openingHours:Lcom/callapp/common/model/json/JSONOpeningHours;

    return-object v0
.end method

.method public getPhones()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONPhoneNumber;",
            ">;"
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->phones:Ljava/util/Collection;

    return-object v0
.end method

.method public getPhotoUrl()Ljava/lang/String;
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->photoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVenueFoursquareID()Lcom/callapp/common/model/json/JSONSocialNetworkID;
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->venueFoursquareID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-object v0
.end method

.method public getVideos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/contact/VideoData;",
            ">;"
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->videos:Ljava/util/List;

    return-object v0
.end method

.method public getWebsites()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONWebsite;",
            ">;"
        }
    .end annotation

    .line 345
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->websites:Ljava/util/Collection;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .line 403
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->logoImageUrl:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 404
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->imagesUrl:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 405
    iget-boolean v2, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->isBusiness:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 406
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->photoUrl:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 407
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->venueFoursquareID:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 408
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->videos:Ljava/util/List;

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 409
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->addresses:Ljava/util/List;

    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    .line 410
    iget-wide v2, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->lat:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v0, v0, 0x1f

    const/16 v4, 0x20

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v3, v2

    add-int/2addr v0, v3

    .line 412
    iget-wide v2, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->lng:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 414
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->phones:Ljava/util/Collection;

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/Collection;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 415
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->emails:Ljava/util/Collection;

    if-eqz v2, :cond_7

    invoke-interface {v2}, Ljava/util/Collection;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 416
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->websites:Ljava/util/Collection;

    if-eqz v2, :cond_8

    invoke-interface {v2}, Ljava/util/Collection;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_8
    const/4 v2, 0x0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 417
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->categories:Ljava/util/List;

    if-eqz v2, :cond_9

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_9

    :cond_9
    const/4 v2, 0x0

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 418
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->openingHours:Lcom/callapp/common/model/json/JSONOpeningHours;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONOpeningHours;->hashCode()I

    move-result v2

    goto :goto_a

    :cond_a
    const/4 v2, 0x0

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 419
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->description:Ljava/lang/String;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_b

    :cond_b
    const/4 v2, 0x0

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 420
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->url:Ljava/lang/String;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_c
    add-int/2addr v0, v1

    return v0
.end method

.method public isBusiness()Z
    .locals 1

    .line 309
    iget-boolean v0, p0, Lcom/callapp/contacts/model/contact/CHLocalData;->isBusiness:Z

    return v0
.end method
