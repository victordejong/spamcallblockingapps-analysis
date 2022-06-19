.class public Lcom/callapp/contacts/model/contact/WebsitesSocialIDsData;
.super Lcom/callapp/contacts/model/contact/CacheableData;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x73b8c886c19fc3f5L


# instance fields
.field private facebookId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

.field private twitterScreenName:Lcom/callapp/common/model/json/JSONSocialNetworkID;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/callapp/contacts/model/contact/CacheableData;-><init>()V

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

    if-nez p1, :cond_1

    return v1

    .line 46
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 48
    :cond_2
    check-cast p1, Lcom/callapp/contacts/model/contact/WebsitesSocialIDsData;

    .line 49
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/WebsitesSocialIDsData;->facebookId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-nez v2, :cond_3

    .line 50
    iget-object v2, p1, Lcom/callapp/contacts/model/contact/WebsitesSocialIDsData;->facebookId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-eqz v2, :cond_4

    return v1

    .line 52
    :cond_3
    iget-object v3, p1, Lcom/callapp/contacts/model/contact/WebsitesSocialIDsData;->facebookId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-virtual {v2, v3}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 54
    :cond_4
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/WebsitesSocialIDsData;->twitterScreenName:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-nez v2, :cond_5

    .line 55
    iget-object p1, p1, Lcom/callapp/contacts/model/contact/WebsitesSocialIDsData;->twitterScreenName:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-eqz p1, :cond_6

    return v1

    .line 57
    :cond_5
    iget-object p1, p1, Lcom/callapp/contacts/model/contact/WebsitesSocialIDsData;->twitterScreenName:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-virtual {v2, p1}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public getFacebookId()Lcom/callapp/common/model/json/JSONSocialNetworkID;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/WebsitesSocialIDsData;->facebookId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-object v0
.end method

.method public getTwitterScreenName()Lcom/callapp/common/model/json/JSONSocialNetworkID;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/WebsitesSocialIDsData;->twitterScreenName:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/WebsitesSocialIDsData;->facebookId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 33
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/WebsitesSocialIDsData;->twitterScreenName:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-nez v2, :cond_1

    goto :goto_1

    .line 36
    :cond_1
    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public setFacebookId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/WebsitesSocialIDsData;->facebookId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-void
.end method

.method public setTwitterScreenName(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/WebsitesSocialIDsData;->twitterScreenName:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-void
.end method
