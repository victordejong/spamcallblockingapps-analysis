.class public Lcom/callapp/contacts/model/UploadedPhoto;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x6dab35b5151d999L


# instance fields
.field private createdTime:Ljava/util/Date;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    if-eqz p1, :cond_3

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 35
    :cond_1
    check-cast p1, Lcom/callapp/contacts/model/UploadedPhoto;

    .line 37
    iget-object v1, p0, Lcom/callapp/contacts/model/UploadedPhoto;->url:Ljava/lang/String;

    iget-object v2, p1, Lcom/callapp/contacts/model/UploadedPhoto;->url:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 38
    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/model/UploadedPhoto;->createdTime:Ljava/util/Date;

    iget-object p1, p1, Lcom/callapp/contacts/model/UploadedPhoto;->createdTime:Ljava/util/Date;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public getCreatedTime()Ljava/util/Date;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/callapp/contacts/model/UploadedPhoto;->createdTime:Ljava/util/Date;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/callapp/contacts/model/UploadedPhoto;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/callapp/contacts/model/UploadedPhoto;->url:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 45
    iget-object v2, p0, Lcom/callapp/contacts/model/UploadedPhoto;->createdTime:Ljava/util/Date;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public setCreatedTime(Ljava/util/Date;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/callapp/contacts/model/UploadedPhoto;->createdTime:Ljava/util/Date;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/callapp/contacts/model/UploadedPhoto;->url:Ljava/lang/String;

    return-void
.end method
