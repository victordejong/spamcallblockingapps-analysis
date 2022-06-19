.class public Lcom/callapp/contacts/model/contact/FacebookPlaceData;
.super Lcom/callapp/contacts/model/contact/ExtendedPlaceData;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x4e2a0c431c66286eL


# instance fields
.field private facebookId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

.field private link:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/callapp/contacts/model/contact/ExtendedPlaceData;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 35
    :cond_1
    invoke-super {p0, p1}, Lcom/callapp/contacts/model/contact/ExtendedPlaceData;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 37
    :cond_2
    check-cast p1, Lcom/callapp/contacts/model/contact/FacebookPlaceData;

    .line 39
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/FacebookPlaceData;->facebookId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    iget-object v2, p1, Lcom/callapp/contacts/model/contact/FacebookPlaceData;->facebookId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 41
    :cond_3
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/FacebookPlaceData;->link:Ljava/lang/String;

    iget-object p1, p1, Lcom/callapp/contacts/model/contact/FacebookPlaceData;->link:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method public getFacebookId()Lcom/callapp/common/model/json/JSONSocialNetworkID;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/FacebookPlaceData;->facebookId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/FacebookPlaceData;->link:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 46
    invoke-super {p0}, Lcom/callapp/contacts/model/contact/ExtendedPlaceData;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 47
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/FacebookPlaceData;->facebookId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 48
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/FacebookPlaceData;->link:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method

.method public setFacebookId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/FacebookPlaceData;->facebookId:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/FacebookPlaceData;->link:Ljava/lang/String;

    return-void
.end method
