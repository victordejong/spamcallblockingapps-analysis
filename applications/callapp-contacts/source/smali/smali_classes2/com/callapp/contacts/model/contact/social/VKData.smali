.class public Lcom/callapp/contacts/model/contact/social/VKData;
.super Lcom/callapp/contacts/model/contact/social/SocialData;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x7001507c9cde17b1L


# instance fields
.field private about:Ljava/lang/String;

.field private address:Lcom/callapp/common/model/json/JSONAddress;

.field private birthDate:Ljava/util/Date;

.field private birthday:Lcom/callapp/common/model/json/JSONDate;

.field private facebookId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

.field private imAddresses:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONIMaddress;",
            ">;"
        }
    .end annotation
.end field

.field private latestPost:Ljava/lang/String;

.field private phones:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/framework/phone/Phone;",
            ">;"
        }
    .end annotation
.end field

.field private pubProfileUrl:Ljava/lang/String;

.field private twitterScreenName:Lcom/callapp/common/model/json/JSONSocialNetworkID;

.field private uploadedPhotosUrl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/UploadedPhoto;",
            ">;"
        }
    .end annotation
.end field

.field private videos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/contact/VideoData;",
            ">;"
        }
    .end annotation
.end field

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
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/callapp/contacts/model/contact/social/SocialData;-><init>()V

    .line 29
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/model/contact/social/VKData;->imAddresses:Ljava/util/Collection;

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

    if-eqz p1, :cond_11

    .line 158
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_0

    .line 159
    :cond_1
    invoke-super {p0, p1}, Lcom/callapp/contacts/model/contact/social/SocialData;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 161
    :cond_2
    check-cast p1, Lcom/callapp/contacts/model/contact/social/VKData;

    .line 163
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/social/VKData;->pubProfileUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/callapp/contacts/model/contact/social/VKData;->pubProfileUrl:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 165
    :cond_3
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/social/VKData;->birthDate:Ljava/util/Date;

    iget-object v3, p1, Lcom/callapp/contacts/model/contact/social/VKData;->birthDate:Ljava/util/Date;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 167
    :cond_4
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/social/VKData;->phones:Ljava/util/List;

    iget-object v3, p1, Lcom/callapp/contacts/model/contact/social/VKData;->phones:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 168
    :cond_5
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/social/VKData;->about:Ljava/lang/String;

    iget-object v3, p1, Lcom/callapp/contacts/model/contact/social/VKData;->about:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 169
    :cond_6
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/social/VKData;->websites:Ljava/util/Collection;

    iget-object v3, p1, Lcom/callapp/contacts/model/contact/social/VKData;->websites:Ljava/util/Collection;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 171
    :cond_7
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/social/VKData;->birthday:Lcom/callapp/common/model/json/JSONDate;

    if-nez v2, :cond_8

    .line 172
    iget-object v2, p1, Lcom/callapp/contacts/model/contact/social/VKData;->birthday:Lcom/callapp/common/model/json/JSONDate;

    if-eqz v2, :cond_9

    return v1

    .line 174
    :cond_8
    iget-object v3, p1, Lcom/callapp/contacts/model/contact/social/VKData;->birthday:Lcom/callapp/common/model/json/JSONDate;

    invoke-virtual {v2, v3}, Lcom/callapp/common/model/json/JSONDate;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 176
    :cond_9
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/social/VKData;->facebookId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    iget-object v3, p1, Lcom/callapp/contacts/model/contact/social/VKData;->facebookId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 178
    :cond_a
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/social/VKData;->twitterScreenName:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    iget-object v3, p1, Lcom/callapp/contacts/model/contact/social/VKData;->twitterScreenName:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    .line 180
    :cond_b
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/social/VKData;->imAddresses:Ljava/util/Collection;

    iget-object v3, p1, Lcom/callapp/contacts/model/contact/social/VKData;->imAddresses:Ljava/util/Collection;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    .line 182
    :cond_c
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/social/VKData;->uploadedPhotosUrl:Ljava/util/List;

    iget-object v3, p1, Lcom/callapp/contacts/model/contact/social/VKData;->uploadedPhotosUrl:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    return v1

    .line 184
    :cond_d
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/social/VKData;->latestPost:Ljava/lang/String;

    iget-object v3, p1, Lcom/callapp/contacts/model/contact/social/VKData;->latestPost:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 186
    :cond_e
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/social/VKData;->videos:Ljava/util/List;

    iget-object v3, p1, Lcom/callapp/contacts/model/contact/social/VKData;->videos:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    return v1

    .line 187
    :cond_f
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/social/VKData;->address:Lcom/callapp/common/model/json/JSONAddress;

    iget-object p1, p1, Lcom/callapp/contacts/model/contact/social/VKData;->address:Lcom/callapp/common/model/json/JSONAddress;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    return v1

    :cond_10
    return v0

    :cond_11
    :goto_0
    return v1
.end method

.method public getAbout()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/social/VKData;->about:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress()Lcom/callapp/common/model/json/JSONAddress;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/social/VKData;->address:Lcom/callapp/common/model/json/JSONAddress;

    return-object v0
.end method

.method public getBirthDate()Ljava/util/Date;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/social/VKData;->birthDate:Ljava/util/Date;

    return-object v0
.end method

.method public getBirthday()Lcom/callapp/common/model/json/JSONDate;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/social/VKData;->birthday:Lcom/callapp/common/model/json/JSONDate;

    return-object v0
.end method

.method public getFacebookId()Lcom/callapp/common/model/json/JSONSocialNetworkID;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/social/VKData;->facebookId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

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

    .line 101
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/social/VKData;->imAddresses:Ljava/util/Collection;

    return-object v0
.end method

.method public getLatestPost()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/social/VKData;->latestPost:Ljava/lang/String;

    return-object v0
.end method

.method public getPhones()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/framework/phone/Phone;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/social/VKData;->phones:Ljava/util/List;

    return-object v0
.end method

.method public getPubProfileUrl()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/social/VKData;->pubProfileUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTwitterScreenName()Lcom/callapp/common/model/json/JSONSocialNetworkID;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/social/VKData;->twitterScreenName:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-object v0
.end method

.method public getUploadedPhotosUrl()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/UploadedPhoto;",
            ">;"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/social/VKData;->uploadedPhotosUrl:Ljava/util/List;

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

    .line 138
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/social/VKData;->videos:Ljava/util/List;

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

    .line 74
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/social/VKData;->websites:Ljava/util/Collection;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 195
    invoke-super {p0}, Lcom/callapp/contacts/model/contact/social/SocialData;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 196
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/social/VKData;->pubProfileUrl:Ljava/lang/String;

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

    .line 197
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/social/VKData;->birthDate:Ljava/util/Date;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 198
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/social/VKData;->phones:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 199
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/social/VKData;->about:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 200
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/social/VKData;->websites:Ljava/util/Collection;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/Collection;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 201
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/social/VKData;->birthday:Lcom/callapp/common/model/json/JSONDate;

    if-nez v1, :cond_5

    const/4 v1, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONDate;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 202
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/social/VKData;->facebookId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 203
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/social/VKData;->twitterScreenName:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_7
    const/4 v1, 0x0

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 204
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/social/VKData;->imAddresses:Ljava/util/Collection;

    if-eqz v1, :cond_8

    invoke-interface {v1}, Ljava/util/Collection;->hashCode()I

    move-result v1

    goto :goto_8

    :cond_8
    const/4 v1, 0x0

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 205
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/social/VKData;->uploadedPhotosUrl:Ljava/util/List;

    if-eqz v1, :cond_9

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_9

    :cond_9
    const/4 v1, 0x0

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 206
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/social/VKData;->latestPost:Ljava/lang/String;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_a

    :cond_a
    const/4 v1, 0x0

    :goto_a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 207
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/social/VKData;->videos:Ljava/util/List;

    if-eqz v1, :cond_b

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_b

    :cond_b
    const/4 v1, 0x0

    :goto_b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 208
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/social/VKData;->address:Lcom/callapp/common/model/json/JSONAddress;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONAddress;->hashCode()I

    move-result v2

    :cond_c
    add-int/2addr v0, v2

    return v0
.end method

.method public setAbout(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/social/VKData;->about:Ljava/lang/String;

    const/4 p1, 0x1

    .line 70
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/social/VKData;->setDirty(Z)V

    return-void
.end method

.method public setAddress(Lcom/callapp/common/model/json/JSONAddress;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/social/VKData;->address:Lcom/callapp/common/model/json/JSONAddress;

    const/4 p1, 0x1

    .line 152
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/social/VKData;->setDirty(Z)V

    return-void
.end method

.method public setBirthDate(Ljava/util/Date;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/social/VKData;->birthDate:Ljava/util/Date;

    const/4 p1, 0x1

    .line 52
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/social/VKData;->setDirty(Z)V

    return-void
.end method

.method public setBirthday(Lcom/callapp/common/model/json/JSONDate;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/social/VKData;->birthday:Lcom/callapp/common/model/json/JSONDate;

    const/4 p1, 0x1

    .line 116
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/social/VKData;->setDirty(Z)V

    return-void
.end method

.method public setFacebookId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/social/VKData;->facebookId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    const/4 p1, 0x1

    .line 88
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/social/VKData;->setDirty(Z)V

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

    .line 105
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/social/VKData;->imAddresses:Ljava/util/Collection;

    const/4 p1, 0x1

    .line 106
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/social/VKData;->setDirty(Z)V

    return-void
.end method

.method public setLatestPost(Ljava/lang/String;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/social/VKData;->latestPost:Ljava/lang/String;

    const/4 p1, 0x1

    .line 134
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/social/VKData;->setDirty(Z)V

    return-void
.end method

.method public setPhones(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/framework/phone/Phone;",
            ">;)V"
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/social/VKData;->phones:Ljava/util/List;

    const/4 p1, 0x1

    .line 61
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/social/VKData;->setDirty(Z)V

    return-void
.end method

.method public setPubProfileUrl(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/social/VKData;->pubProfileUrl:Ljava/lang/String;

    const/4 p1, 0x1

    .line 43
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/social/VKData;->setDirty(Z)V

    return-void
.end method

.method public setTwitterScreenName(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/social/VKData;->twitterScreenName:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    const/4 p1, 0x1

    .line 97
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/social/VKData;->setDirty(Z)V

    return-void
.end method

.method public setUploadedPhotosUrl(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/UploadedPhoto;",
            ">;)V"
        }
    .end annotation

    .line 124
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/social/VKData;->uploadedPhotosUrl:Ljava/util/List;

    const/4 p1, 0x1

    .line 125
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/social/VKData;->setDirty(Z)V

    return-void
.end method

.method public setVideos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/contact/VideoData;",
            ">;)V"
        }
    .end annotation

    .line 142
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/social/VKData;->videos:Ljava/util/List;

    const/4 p1, 0x1

    .line 143
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/social/VKData;->setDirty(Z)V

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

    .line 78
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/social/VKData;->websites:Ljava/util/Collection;

    const/4 p1, 0x1

    .line 79
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/social/VKData;->setDirty(Z)V

    return-void
.end method
