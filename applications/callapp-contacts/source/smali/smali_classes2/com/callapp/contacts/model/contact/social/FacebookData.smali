.class public Lcom/callapp/contacts/model/contact/social/FacebookData;
.super Lcom/callapp/contacts/model/contact/social/SocialData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/model/contact/social/FacebookData$FacebookChatData;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x243f9168a6883ccdL


# instance fields
.field private about:Ljava/lang/String;

.field private activities:Ljava/lang/String;

.field private address:Lcom/callapp/common/model/json/JSONAddress;

.field private bio:Ljava/lang/String;

.field private birthday:Lcom/callapp/common/model/json/JSONDate;

.field private categories:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/callapp/common/model/json/JSONCategory;",
            ">;"
        }
    .end annotation
.end field

.field private email:Lcom/callapp/common/model/json/JSONEmail;

.field private fqlType:Ljava/lang/String;

.field private groups:Ljava/lang/String;

.field private homeTown:Ljava/lang/String;

.field private lat:D

.field private latestMessage:Lcom/callapp/common/util/SerializablePair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/callapp/common/util/SerializablePair<",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private latestPost:Ljava/lang/String;

.field private likes:Ljava/lang/String;

.field private lng:D

.field private openingHours:Lcom/callapp/common/model/json/JSONOpeningHours;

.field private organizations:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONOrgData;",
            ">;"
        }
    .end annotation
.end field

.field private uploadedPhotosUrl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/UploadedPhoto;",
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

.field private worksAtText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Lcom/callapp/contacts/model/contact/social/SocialData;-><init>()V

    const-wide/16 v0, 0x0

    .line 43
    iput-wide v0, p0, Lcom/callapp/contacts/model/contact/social/FacebookData;->lat:D

    .line 44
    iput-wide v0, p0, Lcom/callapp/contacts/model/contact/social/FacebookData;->lng:D

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 279
    :cond_0
    invoke-super {p0, p1}, Lcom/callapp/contacts/model/contact/social/SocialData;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 281
    :cond_1
    instance-of v1, p1, Lcom/callapp/contacts/model/contact/social/FacebookData;

    if-nez v1, :cond_2

    return v2

    .line 283
    :cond_2
    check-cast p1, Lcom/callapp/contacts/model/contact/social/FacebookData;

    .line 284
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/social/FacebookData;->about:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 285
    iget-object v1, p1, Lcom/callapp/contacts/model/contact/social/FacebookData;->about:Ljava/lang/String;

    if-eqz v1, :cond_4

    return v2

    .line 287
    :cond_3
    iget-object v3, p1, Lcom/callapp/contacts/model/contact/social/FacebookData;->about:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 289
    :cond_4
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/social/FacebookData;->activities:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 290
    iget-object v1, p1, Lcom/callapp/contacts/model/contact/social/FacebookData;->activities:Ljava/lang/String;

    if-eqz v1, :cond_6

    return v2

    .line 292
    :cond_5
    iget-object v3, p1, Lcom/callapp/contacts/model/contact/social/FacebookData;->activities:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 294
    :cond_6
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/social/FacebookData;->bio:Ljava/lang/String;

    if-nez v1, :cond_7

    .line 295
    iget-object v1, p1, Lcom/callapp/contacts/model/contact/social/FacebookData;->bio:Ljava/lang/String;

    if-eqz v1, :cond_8

    return v2

    .line 297
    :cond_7
    iget-object v3, p1, Lcom/callapp/contacts/model/contact/social/FacebookData;->bio:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 299
    :cond_8
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/social/FacebookData;->birthday:Lcom/callapp/common/model/json/JSONDate;

    if-nez v1, :cond_9

    .line 300
    iget-object v1, p1, Lcom/callapp/contacts/model/contact/social/FacebookData;->birthday:Lcom/callapp/common/model/json/JSONDate;

    if-eqz v1, :cond_a

    return v2

    .line 302
    :cond_9
    iget-object v3, p1, Lcom/callapp/contacts/model/contact/social/FacebookData;->birthday:Lcom/callapp/common/model/json/JSONDate;

    invoke-virtual {v1, v3}, Lcom/callapp/common/model/json/JSONDate;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 304
    :cond_a
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/social/FacebookData;->email:Lcom/callapp/common/model/json/JSONEmail;

    if-nez v1, :cond_b

    .line 305
    iget-object v1, p1, Lcom/callapp/contacts/model/contact/social/FacebookData;->email:Lcom/callapp/common/model/json/JSONEmail;

    if-eqz v1, :cond_c

    return v2

    .line 307
    :cond_b
    iget-object v3, p1, Lcom/callapp/contacts/model/contact/social/FacebookData;->email:Lcom/callapp/common/model/json/JSONEmail;

    invoke-virtual {v1, v3}, Lcom/callapp/common/model/json/JSONEmail;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    .line 309
    :cond_c
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/social/FacebookData;->groups:Ljava/lang/String;

    if-nez v1, :cond_d

    .line 310
    iget-object v1, p1, Lcom/callapp/contacts/model/contact/social/FacebookData;->groups:Ljava/lang/String;

    if-eqz v1, :cond_e

    return v2

    .line 312
    :cond_d
    iget-object v3, p1, Lcom/callapp/contacts/model/contact/social/FacebookData;->groups:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    .line 314
    :cond_e
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/social/FacebookData;->homeTown:Ljava/lang/String;

    if-nez v1, :cond_f

    .line 315
    iget-object v1, p1, Lcom/callapp/contacts/model/contact/social/FacebookData;->homeTown:Ljava/lang/String;

    if-eqz v1, :cond_10

    return v2

    .line 317
    :cond_f
    iget-object v3, p1, Lcom/callapp/contacts/model/contact/social/FacebookData;->homeTown:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    .line 319
    :cond_10
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/social/FacebookData;->latestPost:Ljava/lang/String;

    if-nez v1, :cond_11

    .line 320
    iget-object v1, p1, Lcom/callapp/contacts/model/contact/social/FacebookData;->latestPost:Ljava/lang/String;

    if-eqz v1, :cond_12

    return v2

    .line 322
    :cond_11
    iget-object v3, p1, Lcom/callapp/contacts/model/contact/social/FacebookData;->latestPost:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    .line 324
    :cond_12
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/social/FacebookData;->latestMessage:Lcom/callapp/common/util/SerializablePair;

    if-nez v1, :cond_13

    .line 325
    iget-object v1, p1, Lcom/callapp/contacts/model/contact/social/FacebookData;->latestMessage:Lcom/callapp/common/util/SerializablePair;

    if-eqz v1, :cond_14

    return v2

    .line 327
    :cond_13
    iget-object v3, p1, Lcom/callapp/contacts/model/contact/social/FacebookData;->latestMessage:Lcom/callapp/common/util/SerializablePair;

    invoke-virtual {v1, v3}, Lcom/callapp/common/util/SerializablePair;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    .line 329
    :cond_14
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/social/FacebookData;->likes:Ljava/lang/String;

    if-nez v1, :cond_15

    .line 330
    iget-object v1, p1, Lcom/callapp/contacts/model/contact/social/FacebookData;->likes:Ljava/lang/String;

    if-eqz v1, :cond_16

    return v2

    .line 332
    :cond_15
    iget-object v3, p1, Lcom/callapp/contacts/model/contact/social/FacebookData;->likes:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    .line 334
    :cond_16
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/social/FacebookData;->organizations:Ljava/util/Collection;

    if-nez v1, :cond_17

    .line 335
    iget-object v1, p1, Lcom/callapp/contacts/model/contact/social/FacebookData;->organizations:Ljava/util/Collection;

    if-eqz v1, :cond_18

    return v2

    .line 337
    :cond_17
    iget-object v3, p1, Lcom/callapp/contacts/model/contact/social/FacebookData;->organizations:Ljava/util/Collection;

    invoke-interface {v1, v3}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    return v2

    .line 339
    :cond_18
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/social/FacebookData;->websites:Ljava/util/Collection;

    if-nez v1, :cond_19

    .line 340
    iget-object v1, p1, Lcom/callapp/contacts/model/contact/social/FacebookData;->websites:Ljava/util/Collection;

    if-eqz v1, :cond_1a

    return v2

    .line 342
    :cond_19
    iget-object v3, p1, Lcom/callapp/contacts/model/contact/social/FacebookData;->websites:Ljava/util/Collection;

    invoke-interface {v1, v3}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    return v2

    .line 344
    :cond_1a
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/social/FacebookData;->worksAtText:Ljava/lang/String;

    if-nez v1, :cond_1b

    .line 345
    iget-object v1, p1, Lcom/callapp/contacts/model/contact/social/FacebookData;->worksAtText:Ljava/lang/String;

    if-eqz v1, :cond_1c

    return v2

    .line 347
    :cond_1b
    iget-object v3, p1, Lcom/callapp/contacts/model/contact/social/FacebookData;->worksAtText:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    return v2

    .line 349
    :cond_1c
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/social/FacebookData;->uploadedPhotosUrl:Ljava/util/List;

    if-nez v1, :cond_1d

    .line 350
    iget-object p1, p1, Lcom/callapp/contacts/model/contact/social/FacebookData;->uploadedPhotosUrl:Ljava/util/List;

    if-eqz p1, :cond_1e

    return v2

    .line 352
    :cond_1d
    iget-object p1, p1, Lcom/callapp/contacts/model/contact/social/FacebookData;->uploadedPhotosUrl:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e

    return v2

    :cond_1e
    return v0
.end method

.method public getAbout()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/social/FacebookData;->about:Ljava/lang/String;

    return-object v0
.end method

.method public getActivities()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/social/FacebookData;->activities:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress()Lcom/callapp/common/model/json/JSONAddress;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/social/FacebookData;->address:Lcom/callapp/common/model/json/JSONAddress;

    return-object v0
.end method

.method public getBio()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/social/FacebookData;->bio:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthday()Lcom/callapp/common/model/json/JSONDate;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/social/FacebookData;->birthday:Lcom/callapp/common/model/json/JSONDate;

    return-object v0
.end method

.method public getCategories()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/callapp/common/model/json/JSONCategory;",
            ">;"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/social/FacebookData;->categories:Ljava/util/Set;

    return-object v0
.end method

.method public getEmail()Lcom/callapp/common/model/json/JSONEmail;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/social/FacebookData;->email:Lcom/callapp/common/model/json/JSONEmail;

    return-object v0
.end method

.method public getFqlType()Ljava/lang/String;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/social/FacebookData;->fqlType:Ljava/lang/String;

    return-object v0
.end method

.method public getGroups()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/social/FacebookData;->groups:Ljava/lang/String;

    return-object v0
.end method

.method public getHomeTown()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/social/FacebookData;->homeTown:Ljava/lang/String;

    return-object v0
.end method

.method public getLat()D
    .locals 2

    .line 211
    iget-wide v0, p0, Lcom/callapp/contacts/model/contact/social/FacebookData;->lat:D

    return-wide v0
.end method

.method public getLatestMessage()Lcom/callapp/common/util/SerializablePair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/callapp/common/util/SerializablePair<",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/social/FacebookData;->latestMessage:Lcom/callapp/common/util/SerializablePair;

    return-object v0
.end method

.method public getLatestPost()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/social/FacebookData;->latestPost:Ljava/lang/String;

    return-object v0
.end method

.method public getLikes()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/social/FacebookData;->likes:Ljava/lang/String;

    return-object v0
.end method

.method public getLng()D
    .locals 2

    .line 220
    iget-wide v0, p0, Lcom/callapp/contacts/model/contact/social/FacebookData;->lng:D

    return-wide v0
.end method

.method public getOpeningHours()Lcom/callapp/common/model/json/JSONOpeningHours;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/social/FacebookData;->openingHours:Lcom/callapp/common/model/json/JSONOpeningHours;

    return-object v0
.end method

.method public getOrganizations()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONOrgData;",
            ">;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/social/FacebookData;->organizations:Ljava/util/Collection;

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

    .line 85
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/social/FacebookData;->uploadedPhotosUrl:Ljava/util/List;

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

    .line 193
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/social/FacebookData;->websites:Ljava/util/Collection;

    return-object v0
.end method

.method public getWorksAtText()Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/social/FacebookData;->worksAtText:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 258
    invoke-super {p0}, Lcom/callapp/contacts/model/contact/social/SocialData;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 259
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/social/FacebookData;->about:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 260
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/social/FacebookData;->activities:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 261
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/social/FacebookData;->bio:Ljava/lang/String;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 262
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/social/FacebookData;->birthday:Lcom/callapp/common/model/json/JSONDate;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONDate;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 263
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/social/FacebookData;->email:Lcom/callapp/common/model/json/JSONEmail;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONEmail;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 264
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/social/FacebookData;->groups:Ljava/lang/String;

    if-nez v1, :cond_5

    const/4 v1, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 265
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/social/FacebookData;->homeTown:Ljava/lang/String;

    if-nez v1, :cond_6

    const/4 v1, 0x0

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 266
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/social/FacebookData;->latestPost:Ljava/lang/String;

    if-nez v1, :cond_7

    const/4 v1, 0x0

    goto :goto_7

    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 267
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/social/FacebookData;->likes:Ljava/lang/String;

    if-nez v1, :cond_8

    const/4 v1, 0x0

    goto :goto_8

    :cond_8
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 268
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/social/FacebookData;->organizations:Ljava/util/Collection;

    if-nez v1, :cond_9

    const/4 v1, 0x0

    goto :goto_9

    :cond_9
    invoke-interface {v1}, Ljava/util/Collection;->hashCode()I

    move-result v1

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 269
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/social/FacebookData;->websites:Ljava/util/Collection;

    if-nez v1, :cond_a

    const/4 v1, 0x0

    goto :goto_a

    :cond_a
    invoke-interface {v1}, Ljava/util/Collection;->hashCode()I

    move-result v1

    :goto_a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 270
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/social/FacebookData;->worksAtText:Ljava/lang/String;

    if-nez v1, :cond_b

    const/4 v1, 0x0

    goto :goto_b

    :cond_b
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 271
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/social/FacebookData;->uploadedPhotosUrl:Ljava/util/List;

    if-nez v1, :cond_c

    goto :goto_c

    :cond_c
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_c
    add-int/2addr v0, v2

    return v0
.end method

.method public setAbout(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/social/FacebookData;->about:Ljava/lang/String;

    const/4 p1, 0x1

    .line 108
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/social/FacebookData;->setDirty(Z)V

    return-void
.end method

.method public setActivities(Ljava/lang/String;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/social/FacebookData;->activities:Ljava/lang/String;

    const/4 p1, 0x1

    .line 144
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/social/FacebookData;->setDirty(Z)V

    return-void
.end method

.method public setAddress(Lcom/callapp/common/model/json/JSONAddress;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/social/FacebookData;->address:Lcom/callapp/common/model/json/JSONAddress;

    const/4 p1, 0x1

    .line 207
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/social/FacebookData;->setDirty(Z)V

    return-void
.end method

.method public setBio(Ljava/lang/String;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/social/FacebookData;->bio:Ljava/lang/String;

    const/4 p1, 0x1

    .line 117
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/social/FacebookData;->setDirty(Z)V

    return-void
.end method

.method public setBirthday(Lcom/callapp/common/model/json/JSONDate;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/social/FacebookData;->birthday:Lcom/callapp/common/model/json/JSONDate;

    const/4 p1, 0x1

    .line 153
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/social/FacebookData;->setDirty(Z)V

    return-void
.end method

.method public setCategories(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/callapp/common/model/json/JSONCategory;",
            ">;)V"
        }
    .end annotation

    .line 233
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/social/FacebookData;->categories:Ljava/util/Set;

    const/4 p1, 0x1

    .line 234
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/social/FacebookData;->setDirty(Z)V

    return-void
.end method

.method public setEmail(Lcom/callapp/common/model/json/JSONEmail;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/social/FacebookData;->email:Lcom/callapp/common/model/json/JSONEmail;

    const/4 p1, 0x1

    .line 162
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/social/FacebookData;->setDirty(Z)V

    return-void
.end method

.method public setFqlType(Ljava/lang/String;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/social/FacebookData;->fqlType:Ljava/lang/String;

    const/4 p1, 0x1

    .line 252
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/social/FacebookData;->setDirty(Z)V

    return-void
.end method

.method public setGroups(Ljava/lang/String;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/social/FacebookData;->groups:Ljava/lang/String;

    const/4 p1, 0x1

    .line 126
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/social/FacebookData;->setDirty(Z)V

    return-void
.end method

.method public setHomeTown(Ljava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/social/FacebookData;->homeTown:Ljava/lang/String;

    const/4 p1, 0x1

    .line 135
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/social/FacebookData;->setDirty(Z)V

    return-void
.end method

.method public setLat(D)V
    .locals 0

    .line 215
    iput-wide p1, p0, Lcom/callapp/contacts/model/contact/social/FacebookData;->lat:D

    const/4 p1, 0x1

    .line 216
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/social/FacebookData;->setDirty(Z)V

    return-void
.end method

.method public setLatestMessage(Lcom/callapp/common/util/SerializablePair;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/common/util/SerializablePair<",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 98
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/social/FacebookData;->latestMessage:Lcom/callapp/common/util/SerializablePair;

    const/4 p1, 0x1

    .line 99
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/social/FacebookData;->setDirty(Z)V

    return-void
.end method

.method public setLatestPost(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/social/FacebookData;->latestPost:Ljava/lang/String;

    const/4 p1, 0x1

    .line 81
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/social/FacebookData;->setDirty(Z)V

    return-void
.end method

.method public setLikes(Ljava/lang/String;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/social/FacebookData;->likes:Ljava/lang/String;

    const/4 p1, 0x1

    .line 171
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/social/FacebookData;->setDirty(Z)V

    return-void
.end method

.method public setLng(D)V
    .locals 0

    .line 224
    iput-wide p1, p0, Lcom/callapp/contacts/model/contact/social/FacebookData;->lng:D

    const/4 p1, 0x1

    .line 225
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/social/FacebookData;->setDirty(Z)V

    return-void
.end method

.method public setOpeningHours(Lcom/callapp/common/model/json/JSONOpeningHours;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/social/FacebookData;->openingHours:Lcom/callapp/common/model/json/JSONOpeningHours;

    const/4 p1, 0x1

    .line 243
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/social/FacebookData;->setDirty(Z)V

    return-void
.end method

.method public setOrganizations(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONOrgData;",
            ">;)V"
        }
    .end annotation

    .line 188
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/social/FacebookData;->organizations:Ljava/util/Collection;

    const/4 p1, 0x1

    .line 189
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/social/FacebookData;->setDirty(Z)V

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

    .line 89
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/social/FacebookData;->uploadedPhotosUrl:Ljava/util/List;

    const/4 p1, 0x1

    .line 90
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/social/FacebookData;->setDirty(Z)V

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

    .line 197
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/social/FacebookData;->websites:Ljava/util/Collection;

    const/4 p1, 0x1

    .line 198
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/social/FacebookData;->setDirty(Z)V

    return-void
.end method

.method public setWorksAtText(Ljava/lang/String;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/social/FacebookData;->worksAtText:Ljava/lang/String;

    const/4 p1, 0x1

    .line 180
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/social/FacebookData;->setDirty(Z)V

    return-void
.end method
