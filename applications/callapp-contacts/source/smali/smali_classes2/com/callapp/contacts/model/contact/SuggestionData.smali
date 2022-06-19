.class public Lcom/callapp/contacts/model/contact/SuggestionData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private facebookId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

.field private foursquareId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

.field private instagramId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

.field private pinterestId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

.field private twitterScreenName:Lcom/callapp/common/model/json/JSONSocialNetworkID;

.field private vkId:Lcom/callapp/common/model/json/JSONSocialNetworkID;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFacebookId()Lcom/callapp/common/model/json/JSONSocialNetworkID;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/SuggestionData;->facebookId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-object v0
.end method

.method public getFoursquareId()Lcom/callapp/common/model/json/JSONSocialNetworkID;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/SuggestionData;->foursquareId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-object v0
.end method

.method public getInstagramId()Lcom/callapp/common/model/json/JSONSocialNetworkID;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/SuggestionData;->instagramId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-object v0
.end method

.method public getPinterestId()Lcom/callapp/common/model/json/JSONSocialNetworkID;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/SuggestionData;->pinterestId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-object v0
.end method

.method public getTwitterScreenName()Lcom/callapp/common/model/json/JSONSocialNetworkID;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/SuggestionData;->twitterScreenName:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-object v0
.end method

.method public getVkId()Lcom/callapp/common/model/json/JSONSocialNetworkID;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/SuggestionData;->vkId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-object v0
.end method

.method public setFacebookId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/SuggestionData;->facebookId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-void
.end method

.method public setFoursquareId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/SuggestionData;->foursquareId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-void
.end method

.method public setInstagramId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/SuggestionData;->instagramId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-void
.end method

.method public setPinterestId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/SuggestionData;->pinterestId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-void
.end method

.method public setSocialIdByNetId(Lcom/callapp/common/model/json/JSONSocialNetworkID;I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_5

    const/4 v0, 0x4

    if-eq p2, v0, :cond_4

    const/4 v0, 0x6

    if-eq p2, v0, :cond_3

    const/4 v0, 0x7

    if-eq p2, v0, :cond_2

    const/16 v0, 0x9

    if-eq p2, v0, :cond_1

    const/16 v0, 0xa

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/SuggestionData;->setVkId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    :goto_0
    return-void

    .line 82
    :cond_1
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/SuggestionData;->setPinterestId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    return-void

    .line 74
    :cond_2
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/SuggestionData;->setInstagramId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    return-void

    .line 78
    :cond_3
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/SuggestionData;->setFoursquareId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    return-void

    .line 70
    :cond_4
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/SuggestionData;->setTwitterScreenName(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    return-void

    .line 66
    :cond_5
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/SuggestionData;->setFacebookId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    return-void
.end method

.method public setTwitterScreenName(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/SuggestionData;->twitterScreenName:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-void
.end method

.method public setVkId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/SuggestionData;->vkId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-void
.end method
