.class public Lcom/callapp/contacts/model/contact/social/TwitterData;
.super Lcom/callapp/contacts/model/contact/social/SocialData;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x2df0405ae9f57c60L


# instance fields
.field private description:Ljava/lang/String;

.field private lastTweet:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
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

    if-eqz p1, :cond_5

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 46
    :cond_1
    invoke-super {p0, p1}, Lcom/callapp/contacts/model/contact/social/SocialData;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 50
    :cond_2
    check-cast p1, Lcom/callapp/contacts/model/contact/social/TwitterData;

    .line 52
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/social/TwitterData;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/callapp/contacts/model/contact/social/TwitterData;->description:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 55
    :cond_3
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/social/TwitterData;->lastTweet:Ljava/lang/String;

    iget-object p1, p1, Lcom/callapp/contacts/model/contact/social/TwitterData;->lastTweet:Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/social/TwitterData;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getLastTweet()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/social/TwitterData;->lastTweet:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 32
    invoke-super {p0}, Lcom/callapp/contacts/model/contact/social/SocialData;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 33
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/social/TwitterData;->lastTweet:Ljava/lang/String;

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

    .line 34
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/social/TwitterData;->description:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/social/TwitterData;->description:Ljava/lang/String;

    const/4 p1, 0x1

    .line 27
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/social/TwitterData;->setDirty(Z)V

    return-void
.end method

.method public setLastTweet(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/social/TwitterData;->lastTweet:Ljava/lang/String;

    const/4 p1, 0x1

    .line 18
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/social/TwitterData;->setDirty(Z)V

    return-void
.end method
