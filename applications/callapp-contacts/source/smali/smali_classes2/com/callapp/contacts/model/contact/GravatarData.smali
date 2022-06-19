.class public Lcom/callapp/contacts/model/contact/GravatarData;
.super Lcom/callapp/contacts/model/contact/ExternalSourceData;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x14236b70bfdc7483L


# instance fields
.field private address:Lcom/callapp/common/model/json/JSONAddress;

.field private description:Ljava/lang/String;

.field private emails:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONEmail;",
            ">;"
        }
    .end annotation
.end field

.field private facebookId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

.field private foursquareId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

.field private imAddresses:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONIMaddress;",
            ">;"
        }
    .end annotation
.end field

.field private instagramId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

.field private phones:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/callapp/framework/phone/Phone;",
            ">;"
        }
    .end annotation
.end field

.field private photoSure:Z

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
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/callapp/contacts/model/contact/ExternalSourceData;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddress()Lcom/callapp/common/model/json/JSONAddress;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/GravatarData;->address:Lcom/callapp/common/model/json/JSONAddress;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/GravatarData;->description:Ljava/lang/String;

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

    .line 145
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/GravatarData;->emails:Ljava/util/Collection;

    return-object v0
.end method

.method public getFacebookId()Lcom/callapp/common/model/json/JSONSocialNetworkID;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/GravatarData;->facebookId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-object v0
.end method

.method public getFoursquareId()Lcom/callapp/common/model/json/JSONSocialNetworkID;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/GravatarData;->foursquareId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-object v0
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

    .line 81
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/GravatarData;->imAddresses:Ljava/util/Collection;

    return-object v0
.end method

.method public getInstagramId()Lcom/callapp/common/model/json/JSONSocialNetworkID;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/GravatarData;->instagramId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

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

    .line 137
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/GravatarData;->phones:Ljava/util/Collection;

    return-object v0
.end method

.method public getPhotoUrl()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/GravatarData;->photoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPinterestId()Lcom/callapp/common/model/json/JSONSocialNetworkID;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/GravatarData;->pinterestId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-object v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/GravatarData;->thumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTwitterScreenName()Lcom/callapp/common/model/json/JSONSocialNetworkID;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/GravatarData;->twitterScreenName:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-object v0
.end method

.method public getVkId()Lcom/callapp/common/model/json/JSONSocialNetworkID;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/GravatarData;->vkId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

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

    .line 65
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/GravatarData;->websites:Ljava/util/Collection;

    return-object v0
.end method

.method public isPhotoSure()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/callapp/contacts/model/contact/GravatarData;->photoSure:Z

    return v0
.end method

.method public setAddress(Lcom/callapp/common/model/json/JSONAddress;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/GravatarData;->address:Lcom/callapp/common/model/json/JSONAddress;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/GravatarData;->description:Ljava/lang/String;

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

    .line 149
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/GravatarData;->emails:Ljava/util/Collection;

    return-void
.end method

.method public setFacebookId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/GravatarData;->facebookId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-void
.end method

.method public setFoursquareId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/GravatarData;->foursquareId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

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

    .line 85
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/GravatarData;->imAddresses:Ljava/util/Collection;

    return-void
.end method

.method public setInstagramId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/GravatarData;->instagramId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

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

    .line 141
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/GravatarData;->phones:Ljava/util/Collection;

    return-void
.end method

.method public setPhotoSure(Z)V
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/callapp/contacts/model/contact/GravatarData;->photoSure:Z

    return-void
.end method

.method public setPhotoUrl(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/GravatarData;->photoUrl:Ljava/lang/String;

    return-void
.end method

.method public setPinterestId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/GravatarData;->pinterestId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-void
.end method

.method public setThumbnailUrl(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/GravatarData;->thumbnailUrl:Ljava/lang/String;

    return-void
.end method

.method public setTwitterScreenName(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/GravatarData;->twitterScreenName:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-void
.end method

.method public setVkId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/GravatarData;->vkId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

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

    .line 69
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/GravatarData;->websites:Ljava/util/Collection;

    return-void
.end method
