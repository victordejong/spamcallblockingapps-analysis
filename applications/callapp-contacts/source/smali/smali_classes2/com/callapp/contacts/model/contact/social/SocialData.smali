.class public Lcom/callapp/contacts/model/contact/social/SocialData;
.super Lcom/callapp/contacts/model/contact/CacheableData;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x62318e605c592cf4L


# instance fields
.field protected transient dirty:Z

.field protected fullName:Ljava/lang/String;

.field protected isFriend:Ljava/lang/Boolean;

.field protected mutualFriends:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/PersonData;",
            ">;"
        }
    .end annotation
.end field

.field protected photoUrl:Ljava/lang/String;

.field protected thumbnailUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Lcom/callapp/contacts/model/contact/CacheableData;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/callapp/contacts/model/contact/social/SocialData;->isFriend:Ljava/lang/Boolean;

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/callapp/contacts/model/contact/social/SocialData;->dirty:Z

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

    .line 78
    :cond_1
    instance-of v2, p1, Lcom/callapp/contacts/model/contact/social/SocialData;

    if-nez v2, :cond_2

    return v1

    .line 80
    :cond_2
    check-cast p1, Lcom/callapp/contacts/model/contact/social/SocialData;

    .line 81
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/social/SocialData;->fullName:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 82
    iget-object v2, p1, Lcom/callapp/contacts/model/contact/social/SocialData;->fullName:Ljava/lang/String;

    if-eqz v2, :cond_4

    return v1

    .line 84
    :cond_3
    iget-object v3, p1, Lcom/callapp/contacts/model/contact/social/SocialData;->fullName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 86
    :cond_4
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/social/SocialData;->mutualFriends:Ljava/util/List;

    if-nez v2, :cond_5

    .line 87
    iget-object v2, p1, Lcom/callapp/contacts/model/contact/social/SocialData;->mutualFriends:Ljava/util/List;

    if-eqz v2, :cond_6

    return v1

    .line 89
    :cond_5
    iget-object v3, p1, Lcom/callapp/contacts/model/contact/social/SocialData;->mutualFriends:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 91
    :cond_6
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/social/SocialData;->photoUrl:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 92
    iget-object p1, p1, Lcom/callapp/contacts/model/contact/social/SocialData;->photoUrl:Ljava/lang/String;

    if-eqz p1, :cond_8

    return v1

    .line 94
    :cond_7
    iget-object p1, p1, Lcom/callapp/contacts/model/contact/social/SocialData;->photoUrl:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v1

    :cond_8
    return v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/social/SocialData;->fullName:Ljava/lang/String;

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

    .line 54
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/social/SocialData;->mutualFriends:Ljava/util/List;

    return-object v0
.end method

.method public getPhotoUrl()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/social/SocialData;->photoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/social/SocialData;->thumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/social/SocialData;->fullName:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 67
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/social/SocialData;->mutualFriends:Ljava/util/List;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 68
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/social/SocialData;->photoUrl:Ljava/lang/String;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public isDirty()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lcom/callapp/contacts/model/contact/social/SocialData;->dirty:Z

    return v0
.end method

.method public isFriend()Ljava/lang/Boolean;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/social/SocialData;->isFriend:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setDirty(Z)V
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/callapp/contacts/model/contact/social/SocialData;->dirty:Z

    return-void
.end method

.method public setFullName(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/social/SocialData;->fullName:Ljava/lang/String;

    const/4 p1, 0x1

    .line 41
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/social/SocialData;->setDirty(Z)V

    return-void
.end method

.method public setIsFriend(Ljava/lang/Boolean;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/social/SocialData;->isFriend:Ljava/lang/Boolean;

    const/4 p1, 0x1

    .line 105
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/social/SocialData;->setDirty(Z)V

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

    .line 58
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/social/SocialData;->mutualFriends:Ljava/util/List;

    const/4 p1, 0x1

    .line 59
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/social/SocialData;->setDirty(Z)V

    return-void
.end method

.method public setPhotoUrl(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/social/SocialData;->photoUrl:Ljava/lang/String;

    const/4 p1, 0x1

    .line 50
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/social/SocialData;->setDirty(Z)V

    return-void
.end method

.method public setThumbnailUrl(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/social/SocialData;->thumbnailUrl:Ljava/lang/String;

    const/4 p1, 0x1

    .line 36
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/social/SocialData;->setDirty(Z)V

    return-void
.end method
