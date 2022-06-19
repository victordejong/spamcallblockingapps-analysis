.class public Lcom/callapp/contacts/model/contact/social/FoursquareData;
.super Lcom/callapp/contacts/model/contact/social/SocialData;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x76c5a47d1f2fcf88L


# instance fields
.field private email:Lcom/callapp/common/model/json/JSONEmail;

.field private facebookId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

.field private mayorships:Ljava/lang/String;

.field private phone:Lcom/callapp/framework/phone/Phone;

.field private twitterScreenName:Lcom/callapp/common/model/json/JSONSocialNetworkID;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/callapp/contacts/model/contact/social/SocialData;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_8

    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 83
    :cond_1
    invoke-super {p0, p1}, Lcom/callapp/contacts/model/contact/social/SocialData;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 87
    :cond_2
    check-cast p1, Lcom/callapp/contacts/model/contact/social/FoursquareData;

    .line 89
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/social/FoursquareData;->email:Lcom/callapp/common/model/json/JSONEmail;

    iget-object v3, p1, Lcom/callapp/contacts/model/contact/social/FoursquareData;->email:Lcom/callapp/common/model/json/JSONEmail;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 92
    :cond_3
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/social/FoursquareData;->facebookId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    iget-object v3, p1, Lcom/callapp/contacts/model/contact/social/FoursquareData;->facebookId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 95
    :cond_4
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/social/FoursquareData;->mayorships:Ljava/lang/String;

    iget-object v3, p1, Lcom/callapp/contacts/model/contact/social/FoursquareData;->mayorships:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 98
    :cond_5
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/social/FoursquareData;->phone:Lcom/callapp/framework/phone/Phone;

    iget-object v3, p1, Lcom/callapp/contacts/model/contact/social/FoursquareData;->phone:Lcom/callapp/framework/phone/Phone;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 101
    :cond_6
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/social/FoursquareData;->twitterScreenName:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    iget-object p1, p1, Lcom/callapp/contacts/model/contact/social/FoursquareData;->twitterScreenName:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v1

    :cond_7
    return v0

    :cond_8
    :goto_0
    return v1
.end method

.method public getEmail()Lcom/callapp/common/model/json/JSONEmail;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/social/FoursquareData;->email:Lcom/callapp/common/model/json/JSONEmail;

    return-object v0
.end method

.method public getFacebookId()Lcom/callapp/common/model/json/JSONSocialNetworkID;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/social/FoursquareData;->facebookId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-object v0
.end method

.method public getMayorships()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/social/FoursquareData;->mayorships:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Lcom/callapp/framework/phone/Phone;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/social/FoursquareData;->phone:Lcom/callapp/framework/phone/Phone;

    return-object v0
.end method

.method public getTwitterScreenName()Lcom/callapp/common/model/json/JSONSocialNetworkID;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/social/FoursquareData;->twitterScreenName:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 66
    invoke-super {p0}, Lcom/callapp/contacts/model/contact/social/SocialData;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 67
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/social/FoursquareData;->mayorships:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 68
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/social/FoursquareData;->email:Lcom/callapp/common/model/json/JSONEmail;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONEmail;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 69
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/social/FoursquareData;->facebookId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 70
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/social/FoursquareData;->twitterScreenName:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 71
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/social/FoursquareData;->phone:Lcom/callapp/framework/phone/Phone;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/callapp/framework/phone/Phone;->hashCode()I

    move-result v2

    :cond_4
    add-int/2addr v0, v2

    return v0
.end method

.method public setEmail(Lcom/callapp/common/model/json/JSONEmail;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/social/FoursquareData;->email:Lcom/callapp/common/model/json/JSONEmail;

    const/4 p1, 0x1

    .line 34
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/social/FoursquareData;->setDirty(Z)V

    return-void
.end method

.method public setFacebookId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/social/FoursquareData;->facebookId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    const/4 p1, 0x1

    .line 52
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/social/FoursquareData;->setDirty(Z)V

    return-void
.end method

.method public setMayorships(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/social/FoursquareData;->mayorships:Ljava/lang/String;

    const/4 p1, 0x1

    .line 25
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/social/FoursquareData;->setDirty(Z)V

    return-void
.end method

.method public setPhone(Lcom/callapp/framework/phone/Phone;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/social/FoursquareData;->phone:Lcom/callapp/framework/phone/Phone;

    const/4 p1, 0x1

    .line 43
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/social/FoursquareData;->setDirty(Z)V

    return-void
.end method

.method public setTwitterScreenName(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/social/FoursquareData;->twitterScreenName:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    const/4 p1, 0x1

    .line 61
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/social/FoursquareData;->setDirty(Z)V

    return-void
.end method
