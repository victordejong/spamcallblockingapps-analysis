.class public Lcom/callapp/contacts/model/contact/UserProfileData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x7fec4e341544b6f3L


# instance fields
.field private address:Lcom/callapp/common/model/json/JSONAddress;

.field private birthday:Lcom/callapp/common/model/json/JSONDate;

.field private emails:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/callapp/common/model/json/JSONEmail;",
            ">;"
        }
    .end annotation
.end field

.field private facebookId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

.field private foursquareId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

.field private fullName:Ljava/lang/String;

.field private googlePlusId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

.field private instagramId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

.field private phone:Lcom/callapp/framework/phone/Phone;

.field private pinterestId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

.field private twitterScreenName:Lcom/callapp/common/model/json/JSONSocialNetworkID;

.field private userDefinition:Ljava/lang/String;

.field private vkId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

.field private websites:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/callapp/common/model/json/JSONWebsite;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addEmail(Lcom/callapp/common/model/json/JSONEmail;)Z
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/UserProfileData;->emails:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/model/contact/UserProfileData;->emails:Ljava/util/Set;

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/UserProfileData;->emails:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public addWebsite(Lcom/callapp/common/model/json/JSONWebsite;)Z
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/UserProfileData;->websites:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/model/contact/UserProfileData;->websites:Ljava/util/Set;

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/UserProfileData;->websites:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAddress()Lcom/callapp/common/model/json/JSONAddress;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/UserProfileData;->address:Lcom/callapp/common/model/json/JSONAddress;

    return-object v0
.end method

.method public getBirthday()Lcom/callapp/common/model/json/JSONDate;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/UserProfileData;->birthday:Lcom/callapp/common/model/json/JSONDate;

    return-object v0
.end method

.method public getFacebookId()Lcom/callapp/common/model/json/JSONSocialNetworkID;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/UserProfileData;->facebookId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-object v0
.end method

.method public getFoursquareId()Lcom/callapp/common/model/json/JSONSocialNetworkID;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/UserProfileData;->foursquareId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/UserProfileData;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getGooglePlusId()Lcom/callapp/common/model/json/JSONSocialNetworkID;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/UserProfileData;->googlePlusId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-object v0
.end method

.method public getInstagramId()Lcom/callapp/common/model/json/JSONSocialNetworkID;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/UserProfileData;->instagramId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-object v0
.end method

.method public getPhone()Lcom/callapp/framework/phone/Phone;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/UserProfileData;->phone:Lcom/callapp/framework/phone/Phone;

    return-object v0
.end method

.method public getPinterestId()Lcom/callapp/common/model/json/JSONSocialNetworkID;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/UserProfileData;->pinterestId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-object v0
.end method

.method public getTwitterScreenName()Lcom/callapp/common/model/json/JSONSocialNetworkID;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/UserProfileData;->twitterScreenName:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-object v0
.end method

.method public getUserDefinition()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/UserProfileData;->userDefinition:Ljava/lang/String;

    return-object v0
.end method

.method public getVkId()Lcom/callapp/common/model/json/JSONSocialNetworkID;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/UserProfileData;->vkId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-object v0
.end method

.method public removeEmail(Lcom/callapp/common/model/json/JSONEmail;)Z
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/UserProfileData;->emails:Ljava/util/Set;

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/UserProfileData;->emails:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public removeWebsite(Lcom/callapp/common/model/json/JSONWebsite;)Z
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/UserProfileData;->websites:Ljava/util/Set;

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/UserProfileData;->websites:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setAddress(Lcom/callapp/common/model/json/JSONAddress;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/UserProfileData;->address:Lcom/callapp/common/model/json/JSONAddress;

    return-void
.end method

.method public setBirthday(Lcom/callapp/common/model/json/JSONDate;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/UserProfileData;->birthday:Lcom/callapp/common/model/json/JSONDate;

    return-void
.end method

.method public setFacebookId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/UserProfileData;->facebookId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-void
.end method

.method public setFoursquareId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/UserProfileData;->foursquareId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-void
.end method

.method public setFullName(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/UserProfileData;->fullName:Ljava/lang/String;

    return-void
.end method

.method public setGooglePlusId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/UserProfileData;->googlePlusId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-void
.end method

.method public setInstagramId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/UserProfileData;->instagramId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-void
.end method

.method public setPhone(Lcom/callapp/framework/phone/Phone;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/UserProfileData;->phone:Lcom/callapp/framework/phone/Phone;

    return-void
.end method

.method public setPinterestId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/UserProfileData;->pinterestId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-void
.end method

.method public setTwitterScreenName(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/UserProfileData;->twitterScreenName:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-void
.end method

.method public setUserDefinition(Ljava/lang/String;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/UserProfileData;->userDefinition:Ljava/lang/String;

    return-void
.end method

.method public setVkId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/UserProfileData;->vkId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-void
.end method
