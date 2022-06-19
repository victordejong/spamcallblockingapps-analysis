.class public Lcom/callapp/common/model/json/JSONPinterestUser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x3ac6f89bd6bdcca7L


# instance fields
.field private bio:Ljava/lang/String;

.field private boardsCount:Ljava/lang/Integer;

.field private createdAt:Ljava/util/Date;

.field private firstName:Ljava/lang/String;

.field private followersCount:Ljava/lang/Integer;

.field private followingCount:Ljava/lang/Integer;

.field private imageHeight:Ljava/lang/Integer;

.field private imageUrl:Ljava/lang/String;

.field private imageWidth:Ljava/lang/Integer;

.field private lastName:Ljava/lang/String;

.field private likesCount:Ljava/lang/Integer;

.field private pinCount:Ljava/lang/Integer;

.field private pubProfileUrl:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    if-eqz p1, :cond_1d

    .line 140
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_d

    .line 142
    :cond_1
    check-cast p1, Lcom/callapp/common/model/json/JSONPinterestUser;

    .line 144
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONPinterestUser;->username:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONPinterestUser;->username:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONPinterestUser;->username:Ljava/lang/String;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 146
    :cond_3
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONPinterestUser;->firstName:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONPinterestUser;->firstName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_4
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONPinterestUser;->firstName:Ljava/lang/String;

    if-eqz v2, :cond_5

    :goto_1
    return v1

    .line 148
    :cond_5
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONPinterestUser;->lastName:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONPinterestUser;->lastName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_2

    :cond_6
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONPinterestUser;->lastName:Ljava/lang/String;

    if-eqz v2, :cond_7

    :goto_2
    return v1

    .line 150
    :cond_7
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONPinterestUser;->bio:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONPinterestUser;->bio:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_3

    :cond_8
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONPinterestUser;->bio:Ljava/lang/String;

    if-eqz v2, :cond_9

    :goto_3
    return v1

    .line 151
    :cond_9
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONPinterestUser;->createdAt:Ljava/util/Date;

    if-eqz v2, :cond_a

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONPinterestUser;->createdAt:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_4

    :cond_a
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONPinterestUser;->createdAt:Ljava/util/Date;

    if-eqz v2, :cond_b

    :goto_4
    return v1

    .line 153
    :cond_b
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONPinterestUser;->imageUrl:Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONPinterestUser;->imageUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_5

    :cond_c
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONPinterestUser;->imageUrl:Ljava/lang/String;

    if-eqz v2, :cond_d

    :goto_5
    return v1

    .line 155
    :cond_d
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONPinterestUser;->imageWidth:Ljava/lang/Integer;

    if-eqz v2, :cond_e

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONPinterestUser;->imageWidth:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_6

    :cond_e
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONPinterestUser;->imageWidth:Ljava/lang/Integer;

    if-eqz v2, :cond_f

    :goto_6
    return v1

    .line 157
    :cond_f
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONPinterestUser;->imageHeight:Ljava/lang/Integer;

    if-eqz v2, :cond_10

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONPinterestUser;->imageHeight:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    goto :goto_7

    :cond_10
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONPinterestUser;->imageHeight:Ljava/lang/Integer;

    if-eqz v2, :cond_11

    :goto_7
    return v1

    .line 159
    :cond_11
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONPinterestUser;->followersCount:Ljava/lang/Integer;

    if-eqz v2, :cond_12

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONPinterestUser;->followersCount:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    goto :goto_8

    :cond_12
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONPinterestUser;->followersCount:Ljava/lang/Integer;

    if-eqz v2, :cond_13

    :goto_8
    return v1

    .line 161
    :cond_13
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONPinterestUser;->followingCount:Ljava/lang/Integer;

    if-eqz v2, :cond_14

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONPinterestUser;->followingCount:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    goto :goto_9

    :cond_14
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONPinterestUser;->followingCount:Ljava/lang/Integer;

    if-eqz v2, :cond_15

    :goto_9
    return v1

    .line 163
    :cond_15
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONPinterestUser;->pinCount:Ljava/lang/Integer;

    if-eqz v2, :cond_16

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONPinterestUser;->pinCount:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    goto :goto_a

    :cond_16
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONPinterestUser;->pinCount:Ljava/lang/Integer;

    if-eqz v2, :cond_17

    :goto_a
    return v1

    .line 165
    :cond_17
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONPinterestUser;->likesCount:Ljava/lang/Integer;

    if-eqz v2, :cond_18

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONPinterestUser;->likesCount:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    goto :goto_b

    :cond_18
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONPinterestUser;->likesCount:Ljava/lang/Integer;

    if-eqz v2, :cond_19

    :goto_b
    return v1

    .line 167
    :cond_19
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONPinterestUser;->boardsCount:Ljava/lang/Integer;

    if-eqz v2, :cond_1a

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONPinterestUser;->boardsCount:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    goto :goto_c

    :cond_1a
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONPinterestUser;->boardsCount:Ljava/lang/Integer;

    if-eqz v2, :cond_1b

    :goto_c
    return v1

    .line 169
    :cond_1b
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONPinterestUser;->pubProfileUrl:Ljava/lang/String;

    iget-object p1, p1, Lcom/callapp/common/model/json/JSONPinterestUser;->pubProfileUrl:Ljava/lang/String;

    if-eqz v2, :cond_1c

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1c
    if-nez p1, :cond_1d

    return v0

    :cond_1d
    :goto_d
    return v1
.end method

.method public getBio()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONPinterestUser;->bio:Ljava/lang/String;

    return-object v0
.end method

.method public getBoardsCount()Ljava/lang/Integer;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONPinterestUser;->boardsCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONPinterestUser;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONPinterestUser;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public getFollowersCount()Ljava/lang/Integer;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONPinterestUser;->followersCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getFollowingCount()Ljava/lang/Integer;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONPinterestUser;->followingCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getImageHeight()Ljava/lang/Integer;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONPinterestUser;->imageHeight:Ljava/lang/Integer;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONPinterestUser;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getImageWidth()Ljava/lang/Integer;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONPinterestUser;->imageWidth:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONPinterestUser;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public getLikesCount()Ljava/lang/Integer;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONPinterestUser;->likesCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPinCount()Ljava/lang/Integer;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONPinterestUser;->pinCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPubProfileUrl()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONPinterestUser;->pubProfileUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONPinterestUser;->username:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 175
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONPinterestUser;->username:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 176
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONPinterestUser;->firstName:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 177
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONPinterestUser;->lastName:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 178
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONPinterestUser;->bio:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 179
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONPinterestUser;->createdAt:Ljava/util/Date;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 180
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONPinterestUser;->imageUrl:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 181
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONPinterestUser;->imageWidth:Ljava/lang/Integer;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 182
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONPinterestUser;->imageHeight:Ljava/lang/Integer;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 183
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONPinterestUser;->followersCount:Ljava/lang/Integer;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_8
    const/4 v2, 0x0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 184
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONPinterestUser;->followingCount:Ljava/lang/Integer;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_9

    :cond_9
    const/4 v2, 0x0

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 185
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONPinterestUser;->pinCount:Ljava/lang/Integer;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_a

    :cond_a
    const/4 v2, 0x0

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 186
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONPinterestUser;->likesCount:Ljava/lang/Integer;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_b

    :cond_b
    const/4 v2, 0x0

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 187
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONPinterestUser;->boardsCount:Ljava/lang/Integer;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_c

    :cond_c
    const/4 v2, 0x0

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 188
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONPinterestUser;->pubProfileUrl:Ljava/lang/String;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_d
    add-int/2addr v0, v1

    return v0
.end method

.method public setBio(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONPinterestUser;->bio:Ljava/lang/String;

    return-void
.end method

.method public setBoardsCount(Ljava/lang/Integer;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONPinterestUser;->boardsCount:Ljava/lang/Integer;

    return-void
.end method

.method public setCreatedAt(Ljava/util/Date;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONPinterestUser;->createdAt:Ljava/util/Date;

    return-void
.end method

.method public setFirstName(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONPinterestUser;->firstName:Ljava/lang/String;

    return-void
.end method

.method public setFollowersCount(Ljava/lang/Integer;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONPinterestUser;->followersCount:Ljava/lang/Integer;

    return-void
.end method

.method public setFollowingCount(Ljava/lang/Integer;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONPinterestUser;->followingCount:Ljava/lang/Integer;

    return-void
.end method

.method public setImageHeight(Ljava/lang/Integer;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONPinterestUser;->imageHeight:Ljava/lang/Integer;

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONPinterestUser;->imageUrl:Ljava/lang/String;

    return-void
.end method

.method public setImageWidth(Ljava/lang/Integer;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONPinterestUser;->imageWidth:Ljava/lang/Integer;

    return-void
.end method

.method public setLastName(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONPinterestUser;->lastName:Ljava/lang/String;

    return-void
.end method

.method public setLikesCount(Ljava/lang/Integer;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONPinterestUser;->likesCount:Ljava/lang/Integer;

    return-void
.end method

.method public setPinCount(Ljava/lang/Integer;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONPinterestUser;->pinCount:Ljava/lang/Integer;

    return-void
.end method

.method public setPubProfileUrl(Ljava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONPinterestUser;->pubProfileUrl:Ljava/lang/String;

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONPinterestUser;->username:Ljava/lang/String;

    return-void
.end method
