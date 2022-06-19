.class public Lcom/callapp/contacts/model/contact/social/InstagramData;
.super Lcom/callapp/contacts/model/contact/social/SocialData;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private bio:Ljava/lang/String;

.field private isGloballyPrivate:Ljava/lang/Boolean;

.field private isPrivate:Z

.field private latestMediaCaption:Ljava/lang/String;

.field private latestMedias:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONInstagramMedia;",
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

.field private website:Lcom/callapp/common/model/json/JSONWebsite;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/callapp/contacts/model/contact/social/SocialData;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/callapp/contacts/model/contact/social/InstagramData;->isPrivate:Z

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/callapp/contacts/model/contact/social/InstagramData;->isGloballyPrivate:Ljava/lang/Boolean;

    return-void
.end method

.method private updateUploadedPhotosUrl()V
    .locals 8

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/model/contact/social/InstagramData;->uploadedPhotosUrl:Ljava/util/List;

    .line 41
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/social/InstagramData;->latestMedias:Ljava/util/List;

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/social/InstagramData;->latestMedias:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/common/model/json/JSONInstagramMedia;

    .line 43
    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONInstagramMedia;->getImages()Lcom/callapp/common/model/json/JSONInstagramImages;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 45
    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONInstagramImages;->getStandard_resolution()Lcom/callapp/common/model/json/JSONInstagramImage;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 46
    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONInstagramImage;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 47
    new-instance v3, Lcom/callapp/contacts/model/UploadedPhoto;

    invoke-direct {v3}, Lcom/callapp/contacts/model/UploadedPhoto;-><init>()V

    .line 48
    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONInstagramImage;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/callapp/contacts/model/UploadedPhoto;->setUrl(Ljava/lang/String;)V

    .line 49
    new-instance v2, Ljava/util/Date;

    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONInstagramMedia;->getCreated_time()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v2}, Lcom/callapp/contacts/model/UploadedPhoto;->setCreatedTime(Ljava/util/Date;)V

    .line 50
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/social/InstagramData;->uploadedPhotosUrl:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 112
    :cond_0
    invoke-super {p0, p1}, Lcom/callapp/contacts/model/contact/social/SocialData;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 114
    :cond_1
    instance-of v1, p1, Lcom/callapp/contacts/model/contact/social/InstagramData;

    if-nez v1, :cond_2

    return v2

    .line 116
    :cond_2
    check-cast p1, Lcom/callapp/contacts/model/contact/social/InstagramData;

    .line 117
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/social/InstagramData;->bio:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 118
    iget-object v1, p1, Lcom/callapp/contacts/model/contact/social/InstagramData;->bio:Ljava/lang/String;

    if-eqz v1, :cond_4

    return v2

    .line 120
    :cond_3
    iget-object v3, p1, Lcom/callapp/contacts/model/contact/social/InstagramData;->bio:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 122
    :cond_4
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/social/InstagramData;->latestMediaCaption:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 123
    iget-object v1, p1, Lcom/callapp/contacts/model/contact/social/InstagramData;->latestMediaCaption:Ljava/lang/String;

    if-eqz v1, :cond_6

    return v2

    .line 125
    :cond_5
    iget-object v3, p1, Lcom/callapp/contacts/model/contact/social/InstagramData;->latestMediaCaption:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 127
    :cond_6
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/social/InstagramData;->website:Lcom/callapp/common/model/json/JSONWebsite;

    if-nez v1, :cond_7

    .line 128
    iget-object v1, p1, Lcom/callapp/contacts/model/contact/social/InstagramData;->website:Lcom/callapp/common/model/json/JSONWebsite;

    if-eqz v1, :cond_8

    return v2

    .line 130
    :cond_7
    iget-object v3, p1, Lcom/callapp/contacts/model/contact/social/InstagramData;->website:Lcom/callapp/common/model/json/JSONWebsite;

    invoke-virtual {v1, v3}, Lcom/callapp/common/model/json/JSONWebsite;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 132
    :cond_8
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/social/InstagramData;->latestMedias:Ljava/util/List;

    if-nez v1, :cond_9

    .line 133
    iget-object p1, p1, Lcom/callapp/contacts/model/contact/social/InstagramData;->latestMedias:Ljava/util/List;

    if-eqz p1, :cond_a

    return v2

    .line 135
    :cond_9
    iget-object p1, p1, Lcom/callapp/contacts/model/contact/social/InstagramData;->latestMedias:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public getBio()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/social/InstagramData;->bio:Ljava/lang/String;

    return-object v0
.end method

.method public getIsGloballyPrivate()Ljava/lang/Boolean;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/social/InstagramData;->isGloballyPrivate:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getLatestMediaCaption()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/social/InstagramData;->latestMediaCaption:Ljava/lang/String;

    return-object v0
.end method

.method public getLatestMedias()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONInstagramMedia;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/social/InstagramData;->latestMedias:Ljava/util/List;

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

    .line 32
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/social/InstagramData;->uploadedPhotosUrl:Ljava/util/List;

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    invoke-direct {p0}, Lcom/callapp/contacts/model/contact/social/InstagramData;->updateUploadedPhotosUrl()V

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/social/InstagramData;->uploadedPhotosUrl:Ljava/util/List;

    return-object v0
.end method

.method public getWebsite()Lcom/callapp/common/model/json/JSONWebsite;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/social/InstagramData;->website:Lcom/callapp/common/model/json/JSONWebsite;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 100
    invoke-super {p0}, Lcom/callapp/contacts/model/contact/social/SocialData;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 101
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/social/InstagramData;->bio:Ljava/lang/String;

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

    .line 102
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/social/InstagramData;->latestMediaCaption:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 103
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/social/InstagramData;->website:Lcom/callapp/common/model/json/JSONWebsite;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONWebsite;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 104
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/social/InstagramData;->latestMedias:Ljava/util/List;

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    return v0
.end method

.method public isPrivate()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcom/callapp/contacts/model/contact/social/InstagramData;->isPrivate:Z

    return v0
.end method

.method public setBio(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/social/InstagramData;->bio:Ljava/lang/String;

    const/4 p1, 0x1

    .line 76
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/social/InstagramData;->setDirty(Z)V

    return-void
.end method

.method public setIsGloballyPrivate(Ljava/lang/Boolean;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/social/InstagramData;->isGloballyPrivate:Ljava/lang/Boolean;

    const/4 p1, 0x1

    .line 146
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/social/InstagramData;->setDirty(Z)V

    return-void
.end method

.method public setLatestMediaCaption(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/social/InstagramData;->latestMediaCaption:Ljava/lang/String;

    const/4 p1, 0x1

    .line 94
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/social/InstagramData;->setDirty(Z)V

    return-void
.end method

.method public setLatestMedias(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONInstagramMedia;",
            ">;)V"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/social/InstagramData;->latestMedias:Ljava/util/List;

    .line 58
    invoke-direct {p0}, Lcom/callapp/contacts/model/contact/social/InstagramData;->updateUploadedPhotosUrl()V

    return-void
.end method

.method public setPrivate(Z)V
    .locals 0

    .line 84
    iput-boolean p1, p0, Lcom/callapp/contacts/model/contact/social/InstagramData;->isPrivate:Z

    const/4 p1, 0x1

    .line 85
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/social/InstagramData;->setDirty(Z)V

    return-void
.end method

.method public setWebsite(Lcom/callapp/common/model/json/JSONWebsite;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/social/InstagramData;->website:Lcom/callapp/common/model/json/JSONWebsite;

    const/4 p1, 0x1

    .line 67
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/social/InstagramData;->setDirty(Z)V

    return-void
.end method
