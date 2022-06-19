.class public Lcom/callapp/contacts/model/contact/social/VenueFoursquareData;
.super Lcom/callapp/contacts/model/contact/ExtendedPlaceData;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x57569f6c3d4f34b5L


# instance fields
.field private email:Lcom/callapp/common/model/json/JSONEmail;

.field private facebookId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

.field private foursquareUrl:Lcom/callapp/common/model/json/JSONWebsite;

.field private mutualFriends:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/PersonData;",
            ">;"
        }
    .end annotation
.end field

.field private twitterScreenName:Lcom/callapp/common/model/json/JSONSocialNetworkID;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/callapp/contacts/model/contact/ExtendedPlaceData;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 80
    :cond_0
    invoke-super {p0, p1}, Lcom/callapp/contacts/model/contact/ExtendedPlaceData;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 82
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v1, v3, :cond_2

    return v2

    .line 84
    :cond_2
    check-cast p1, Lcom/callapp/contacts/model/contact/social/VenueFoursquareData;

    .line 85
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/social/VenueFoursquareData;->email:Lcom/callapp/common/model/json/JSONEmail;

    if-nez v1, :cond_3

    .line 86
    iget-object v1, p1, Lcom/callapp/contacts/model/contact/social/VenueFoursquareData;->email:Lcom/callapp/common/model/json/JSONEmail;

    if-eqz v1, :cond_4

    return v2

    .line 88
    :cond_3
    iget-object v3, p1, Lcom/callapp/contacts/model/contact/social/VenueFoursquareData;->email:Lcom/callapp/common/model/json/JSONEmail;

    invoke-virtual {v1, v3}, Lcom/callapp/common/model/json/JSONEmail;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 90
    :cond_4
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/social/VenueFoursquareData;->facebookId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-nez v1, :cond_5

    .line 91
    iget-object v1, p1, Lcom/callapp/contacts/model/contact/social/VenueFoursquareData;->facebookId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-eqz v1, :cond_6

    return v2

    .line 93
    :cond_5
    iget-object v3, p1, Lcom/callapp/contacts/model/contact/social/VenueFoursquareData;->facebookId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-virtual {v1, v3}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 95
    :cond_6
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/social/VenueFoursquareData;->foursquareUrl:Lcom/callapp/common/model/json/JSONWebsite;

    if-nez v1, :cond_7

    .line 96
    iget-object v1, p1, Lcom/callapp/contacts/model/contact/social/VenueFoursquareData;->foursquareUrl:Lcom/callapp/common/model/json/JSONWebsite;

    if-eqz v1, :cond_8

    return v2

    .line 98
    :cond_7
    iget-object v3, p1, Lcom/callapp/contacts/model/contact/social/VenueFoursquareData;->foursquareUrl:Lcom/callapp/common/model/json/JSONWebsite;

    invoke-virtual {v1, v3}, Lcom/callapp/common/model/json/JSONWebsite;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 100
    :cond_8
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/social/VenueFoursquareData;->mutualFriends:Ljava/util/List;

    if-nez v1, :cond_9

    .line 101
    iget-object v1, p1, Lcom/callapp/contacts/model/contact/social/VenueFoursquareData;->mutualFriends:Ljava/util/List;

    if-eqz v1, :cond_a

    return v2

    .line 103
    :cond_9
    iget-object v3, p1, Lcom/callapp/contacts/model/contact/social/VenueFoursquareData;->mutualFriends:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 105
    :cond_a
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/social/VenueFoursquareData;->twitterScreenName:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-nez v1, :cond_b

    .line 106
    iget-object p1, p1, Lcom/callapp/contacts/model/contact/social/VenueFoursquareData;->twitterScreenName:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-eqz p1, :cond_c

    return v2

    .line 108
    :cond_b
    iget-object p1, p1, Lcom/callapp/contacts/model/contact/social/VenueFoursquareData;->twitterScreenName:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-virtual {v1, p1}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public getEmail()Lcom/callapp/common/model/json/JSONEmail;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/social/VenueFoursquareData;->email:Lcom/callapp/common/model/json/JSONEmail;

    return-object v0
.end method

.method public getFacebookId()Lcom/callapp/common/model/json/JSONSocialNetworkID;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/social/VenueFoursquareData;->facebookId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-object v0
.end method

.method public getFoursquareUrl()Lcom/callapp/common/model/json/JSONWebsite;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/social/VenueFoursquareData;->foursquareUrl:Lcom/callapp/common/model/json/JSONWebsite;

    return-object v0
.end method

.method public getMutualFriends()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/PersonData;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/social/VenueFoursquareData;->mutualFriends:Ljava/util/List;

    return-object v0
.end method

.method public getTwitterScreenName()Lcom/callapp/common/model/json/JSONSocialNetworkID;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/social/VenueFoursquareData;->twitterScreenName:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 67
    invoke-super {p0}, Lcom/callapp/contacts/model/contact/ExtendedPlaceData;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 68
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/social/VenueFoursquareData;->email:Lcom/callapp/common/model/json/JSONEmail;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONEmail;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 69
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/social/VenueFoursquareData;->facebookId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 70
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/social/VenueFoursquareData;->foursquareUrl:Lcom/callapp/common/model/json/JSONWebsite;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONWebsite;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 71
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/social/VenueFoursquareData;->mutualFriends:Ljava/util/List;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 72
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/social/VenueFoursquareData;->twitterScreenName:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    return v0
.end method

.method public setEmail(Lcom/callapp/common/model/json/JSONEmail;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/social/VenueFoursquareData;->email:Lcom/callapp/common/model/json/JSONEmail;

    return-void
.end method

.method public setFacebookId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/social/VenueFoursquareData;->facebookId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-void
.end method

.method public setFoursquareUrl(Lcom/callapp/common/model/json/JSONWebsite;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/social/VenueFoursquareData;->foursquareUrl:Lcom/callapp/common/model/json/JSONWebsite;

    return-void
.end method

.method public setMutualFriends(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/PersonData;",
            ">;)V"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/social/VenueFoursquareData;->mutualFriends:Ljava/util/List;

    return-void
.end method

.method public setTwitterScreenName(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/social/VenueFoursquareData;->twitterScreenName:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-void
.end method
