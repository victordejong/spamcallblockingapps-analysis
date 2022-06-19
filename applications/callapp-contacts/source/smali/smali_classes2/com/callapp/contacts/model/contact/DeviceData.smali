.class public Lcom/callapp/contacts/model/contact/DeviceData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x77949e38f898fc2bL


# instance fields
.field private addresses:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONAddress;",
            ">;"
        }
    .end annotation
.end field

.field private birthday:Lcom/callapp/common/model/json/JSONDate;

.field private deviceId:J

.field private emails:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONEmail;",
            ">;"
        }
    .end annotation
.end field

.field private events:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONEvent;",
            ">;"
        }
    .end annotation
.end field

.field private facebookId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

.field private foursquareId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

.field private fullName:Ljava/lang/String;

.field private googleHangoutDataId:J

.field private imAddresses:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONIMaddress;",
            ">;"
        }
    .end annotation
.end field

.field private imContacts:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONIMaddress;",
            ">;"
        }
    .end annotation
.end field

.field private instagramId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

.field private isFavorite:Ljava/lang/Boolean;

.field private lastSms:Lcom/callapp/common/util/SerializablePair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/callapp/common/util/SerializablePair<",
            "Ljava/util/Date;",
            "Lcom/callapp/common/util/SerializablePair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private names:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private note:[Ljava/lang/String;

.field private organizations:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONOrgData;",
            ">;"
        }
    .end annotation
.end field

.field private phones:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/callapp/framework/phone/Phone;",
            ">;"
        }
    .end annotation
.end field

.field private photoUrl:Ljava/lang/String;

.field private pinterestId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

.field private thumbnailUrl:Ljava/lang/String;

.field private twitterScreenName:Lcom/callapp/common/model/json/JSONSocialNetworkID;

.field private vkId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

.field private websites:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONWebsite;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/callapp/contacts/model/contact/DeviceData;->note:[Ljava/lang/String;

    .line 35
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/model/contact/DeviceData;->phones:Ljava/util/Collection;

    .line 36
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/model/contact/DeviceData;->addresses:Ljava/util/Collection;

    .line 37
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/model/contact/DeviceData;->emails:Ljava/util/Collection;

    .line 38
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/model/contact/DeviceData;->events:Ljava/util/Collection;

    .line 39
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/model/contact/DeviceData;->imAddresses:Ljava/util/Collection;

    .line 40
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/model/contact/DeviceData;->imContacts:Ljava/util/Collection;

    .line 41
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/model/contact/DeviceData;->organizations:Ljava/util/Collection;

    .line 42
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/model/contact/DeviceData;->websites:Ljava/util/Collection;

    .line 43
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/model/contact/DeviceData;->names:Ljava/util/Collection;

    .line 52
    iput-object v0, p0, Lcom/callapp/contacts/model/contact/DeviceData;->isFavorite:Ljava/lang/Boolean;

    const-wide/16 v0, 0x0

    .line 54
    iput-wide v0, p0, Lcom/callapp/contacts/model/contact/DeviceData;->googleHangoutDataId:J

    return-void
.end method


# virtual methods
.method public getAddresses()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONAddress;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/DeviceData;->addresses:Ljava/util/Collection;

    return-object v0
.end method

.method public getBirthday()Lcom/callapp/common/model/json/JSONDate;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/DeviceData;->birthday:Lcom/callapp/common/model/json/JSONDate;

    return-object v0
.end method

.method public getDeviceId()J
    .locals 2

    .line 226
    iget-wide v0, p0, Lcom/callapp/contacts/model/contact/DeviceData;->deviceId:J

    return-wide v0
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

    .line 98
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/DeviceData;->emails:Ljava/util/Collection;

    return-object v0
.end method

.method public getEvents()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONEvent;",
            ">;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/DeviceData;->events:Ljava/util/Collection;

    return-object v0
.end method

.method public getFacebookId()Lcom/callapp/common/model/json/JSONSocialNetworkID;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/DeviceData;->facebookId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-object v0
.end method

.method public getFoursquareId()Lcom/callapp/common/model/json/JSONSocialNetworkID;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/DeviceData;->foursquareId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/DeviceData;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getGoogleHangoutDataId()J
    .locals 2

    .line 258
    iget-wide v0, p0, Lcom/callapp/contacts/model/contact/DeviceData;->googleHangoutDataId:J

    return-wide v0
.end method

.method public getImAddresses()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONIMaddress;",
            ">;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/DeviceData;->imAddresses:Ljava/util/Collection;

    return-object v0
.end method

.method public getImContacts()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONIMaddress;",
            ">;"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/DeviceData;->imContacts:Ljava/util/Collection;

    return-object v0
.end method

.method public getInstagramId()Lcom/callapp/common/model/json/JSONSocialNetworkID;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/DeviceData;->instagramId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-object v0
.end method

.method public getLastSms()Lcom/callapp/common/util/SerializablePair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/callapp/common/util/SerializablePair<",
            "Ljava/util/Date;",
            "Lcom/callapp/common/util/SerializablePair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/DeviceData;->lastSms:Lcom/callapp/common/util/SerializablePair;

    return-object v0
.end method

.method public getNames()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/DeviceData;->names:Ljava/util/Collection;

    return-object v0
.end method

.method public getNewDeviceDataForNonContact()Lcom/callapp/contacts/model/contact/DeviceData;
    .locals 2

    .line 58
    new-instance v0, Lcom/callapp/contacts/model/contact/DeviceData;

    invoke-direct {v0}, Lcom/callapp/contacts/model/contact/DeviceData;-><init>()V

    .line 59
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/DeviceData;->facebookId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/model/contact/DeviceData;->setFacebookId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    .line 60
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/DeviceData;->twitterScreenName:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/model/contact/DeviceData;->setTwitterScreenName(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    .line 61
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/DeviceData;->foursquareId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/model/contact/DeviceData;->setFoursquareId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    .line 62
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/DeviceData;->instagramId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/model/contact/DeviceData;->setInstagramId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    .line 63
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/DeviceData;->pinterestId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/model/contact/DeviceData;->setPinterestId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    .line 64
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/DeviceData;->lastSms:Lcom/callapp/common/util/SerializablePair;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/model/contact/DeviceData;->setLastSms(Lcom/callapp/common/util/SerializablePair;)V

    .line 65
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/DeviceData;->emails:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/model/contact/DeviceData;->setEmails(Ljava/util/Collection;)V

    .line 66
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/DeviceData;->vkId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/model/contact/DeviceData;->setVKId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    return-object v0
.end method

.method public getNote()[Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/DeviceData;->note:[Ljava/lang/String;

    return-object v0
.end method

.method public getOrganizations()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONOrgData;",
            ">;"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/DeviceData;->organizations:Ljava/util/Collection;

    return-object v0
.end method

.method public getPhones()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/callapp/framework/phone/Phone;",
            ">;"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/DeviceData;->phones:Ljava/util/Collection;

    return-object v0
.end method

.method public getPhotoUrl()Ljava/lang/String;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/DeviceData;->photoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPinterestId()Lcom/callapp/common/model/json/JSONSocialNetworkID;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/DeviceData;->pinterestId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-object v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/DeviceData;->thumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTwitterScreenName()Lcom/callapp/common/model/json/JSONSocialNetworkID;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/DeviceData;->twitterScreenName:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-object v0
.end method

.method public getVKId()Lcom/callapp/common/model/json/JSONSocialNetworkID;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/DeviceData;->vkId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

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

    .line 209
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/DeviceData;->websites:Ljava/util/Collection;

    return-object v0
.end method

.method public hasAnyPhotoUri()Z
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 274
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/DeviceData;->thumbnailUrl:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/callapp/contacts/model/contact/DeviceData;->photoUrl:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a([Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isFavorite()Ljava/lang/Boolean;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/DeviceData;->isFavorite:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAddresses(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONAddress;",
            ">;)V"
        }
    .end annotation

    .line 85
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/DeviceData;->addresses:Ljava/util/Collection;

    return-void
.end method

.method public setBirthday(Lcom/callapp/common/model/json/JSONDate;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/DeviceData;->birthday:Lcom/callapp/common/model/json/JSONDate;

    return-void
.end method

.method public setDeviceId(J)V
    .locals 0

    .line 230
    iput-wide p1, p0, Lcom/callapp/contacts/model/contact/DeviceData;->deviceId:J

    return-void
.end method

.method public setEmails(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONEmail;",
            ">;)V"
        }
    .end annotation

    .line 102
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/DeviceData;->emails:Ljava/util/Collection;

    return-void
.end method

.method public setEvents(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONEvent;",
            ">;)V"
        }
    .end annotation

    .line 111
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/DeviceData;->events:Ljava/util/Collection;

    return-void
.end method

.method public setFacebookId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/DeviceData;->facebookId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-void
.end method

.method public setFavorite(Ljava/lang/Boolean;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/DeviceData;->isFavorite:Ljava/lang/Boolean;

    return-void
.end method

.method public setFoursquareId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/DeviceData;->foursquareId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-void
.end method

.method public setFullName(Ljava/lang/String;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/DeviceData;->fullName:Ljava/lang/String;

    return-void
.end method

.method public setGoogleHangoutDataId(J)V
    .locals 0

    .line 262
    iput-wide p1, p0, Lcom/callapp/contacts/model/contact/DeviceData;->googleHangoutDataId:J

    return-void
.end method

.method public setImAddresses(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONIMaddress;",
            ">;)V"
        }
    .end annotation

    .line 152
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/DeviceData;->imAddresses:Ljava/util/Collection;

    return-void
.end method

.method public setImContacts(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONIMaddress;",
            ">;)V"
        }
    .end annotation

    .line 169
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/DeviceData;->imContacts:Ljava/util/Collection;

    return-void
.end method

.method public setInstagramId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/DeviceData;->instagramId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-void
.end method

.method public setLastSms(Lcom/callapp/common/util/SerializablePair;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/common/util/SerializablePair<",
            "Ljava/util/Date;",
            "Lcom/callapp/common/util/SerializablePair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 222
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/DeviceData;->lastSms:Lcom/callapp/common/util/SerializablePair;

    return-void
.end method

.method public setNames(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 178
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/DeviceData;->names:Ljava/util/Collection;

    return-void
.end method

.method public setNote([Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/DeviceData;->note:[Ljava/lang/String;

    return-void
.end method

.method public setOrganizations(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONOrgData;",
            ">;)V"
        }
    .end annotation

    .line 187
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/DeviceData;->organizations:Ljava/util/Collection;

    return-void
.end method

.method public setPhones(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/callapp/framework/phone/Phone;",
            ">;)V"
        }
    .end annotation

    .line 196
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/DeviceData;->phones:Ljava/util/Collection;

    return-void
.end method

.method public setPhotoUrl(Ljava/lang/String;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/DeviceData;->photoUrl:Ljava/lang/String;

    return-void
.end method

.method public setPinterestId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/DeviceData;->pinterestId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-void
.end method

.method public setThumbnailUrl(Ljava/lang/String;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/DeviceData;->thumbnailUrl:Ljava/lang/String;

    return-void
.end method

.method public setTwitterScreenName(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/DeviceData;->twitterScreenName:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-void
.end method

.method public setVKId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/DeviceData;->vkId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-void
.end method

.method public setWebsites(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONWebsite;",
            ">;)V"
        }
    .end annotation

    .line 213
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/DeviceData;->websites:Ljava/util/Collection;

    return-void
.end method
