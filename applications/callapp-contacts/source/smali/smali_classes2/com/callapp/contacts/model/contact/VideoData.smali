.class public Lcom/callapp/contacts/model/contact/VideoData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/model/contact/VideoData$Types;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x10e53ec9260c25c3L


# instance fields
.field private thumbnailUrl:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private final type:Lcom/callapp/contacts/model/contact/VideoData$Types;

.field private videoId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/model/contact/VideoData$Types;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/VideoData;->type:Lcom/callapp/contacts/model/contact/VideoData$Types;

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

    if-eqz p1, :cond_5

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 57
    :cond_1
    check-cast p1, Lcom/callapp/contacts/model/contact/VideoData;

    .line 59
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/VideoData;->type:Lcom/callapp/contacts/model/contact/VideoData$Types;

    iget-object v2, p1, Lcom/callapp/contacts/model/contact/VideoData;->type:Lcom/callapp/contacts/model/contact/VideoData$Types;

    if-eq v1, v2, :cond_2

    return v0

    .line 60
    :cond_2
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/VideoData;->title:Ljava/lang/String;

    iget-object v2, p1, Lcom/callapp/contacts/model/contact/VideoData;->title:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 61
    :cond_3
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/VideoData;->videoId:Ljava/lang/String;

    iget-object v2, p1, Lcom/callapp/contacts/model/contact/VideoData;->videoId:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v0

    .line 63
    :cond_4
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/VideoData;->thumbnailUrl:Ljava/lang/String;

    iget-object p1, p1, Lcom/callapp/contacts/model/contact/VideoData;->thumbnailUrl:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_5
    :goto_0
    return v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/VideoData;->thumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/VideoData;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/callapp/contacts/model/contact/VideoData$Types;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/VideoData;->type:Lcom/callapp/contacts/model/contact/VideoData$Types;

    return-object v0
.end method

.method public getVideoId()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/VideoData;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/VideoData;->type:Lcom/callapp/contacts/model/contact/VideoData$Types;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/VideoData$Types;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 70
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/VideoData;->title:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 71
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/VideoData;->videoId:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 72
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/VideoData;->thumbnailUrl:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public setThumbnailUrl(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/VideoData;->thumbnailUrl:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/VideoData;->title:Ljava/lang/String;

    return-void
.end method

.method public setVideoId(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/VideoData;->videoId:Ljava/lang/String;

    return-void
.end method
