.class public Lcom/callapp/common/model/json/JSONInstagramMedia;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x151c7c45bdcc0c47L


# instance fields
.field private caption:Lcom/callapp/common/model/json/JSONInstagramCaption;

.field private created_time:J

.field private id:Ljava/lang/String;

.field private images:Lcom/callapp/common/model/json/JSONInstagramImages;

.field private link:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_c

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_4

    .line 70
    :cond_1
    check-cast p1, Lcom/callapp/common/model/json/JSONInstagramMedia;

    .line 72
    iget-wide v2, p0, Lcom/callapp/common/model/json/JSONInstagramMedia;->created_time:J

    iget-wide v4, p1, Lcom/callapp/common/model/json/JSONInstagramMedia;->created_time:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    return v1

    .line 73
    :cond_2
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONInstagramMedia;->caption:Lcom/callapp/common/model/json/JSONInstagramCaption;

    if-eqz v2, :cond_3

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONInstagramMedia;->caption:Lcom/callapp/common/model/json/JSONInstagramCaption;

    invoke-virtual {v2, v3}, Lcom/callapp/common/model/json/JSONInstagramCaption;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONInstagramMedia;->caption:Lcom/callapp/common/model/json/JSONInstagramCaption;

    if-eqz v2, :cond_4

    :goto_0
    return v1

    .line 74
    :cond_4
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONInstagramMedia;->link:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONInstagramMedia;->link:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_5
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONInstagramMedia;->link:Ljava/lang/String;

    if-eqz v2, :cond_6

    :goto_1
    return v1

    .line 75
    :cond_6
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONInstagramMedia;->type:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONInstagramMedia;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_2

    :cond_7
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONInstagramMedia;->type:Ljava/lang/String;

    if-eqz v2, :cond_8

    :goto_2
    return v1

    .line 76
    :cond_8
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONInstagramMedia;->id:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONInstagramMedia;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_3

    :cond_9
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONInstagramMedia;->id:Ljava/lang/String;

    if-eqz v2, :cond_a

    :goto_3
    return v1

    .line 77
    :cond_a
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONInstagramMedia;->images:Lcom/callapp/common/model/json/JSONInstagramImages;

    iget-object p1, p1, Lcom/callapp/common/model/json/JSONInstagramMedia;->images:Lcom/callapp/common/model/json/JSONInstagramImages;

    if-eqz v2, :cond_b

    invoke-virtual {v2, p1}, Lcom/callapp/common/model/json/JSONInstagramImages;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_b
    if-nez p1, :cond_c

    return v0

    :cond_c
    :goto_4
    return v1
.end method

.method public getCaption()Lcom/callapp/common/model/json/JSONInstagramCaption;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONInstagramMedia;->caption:Lcom/callapp/common/model/json/JSONInstagramCaption;

    return-object v0
.end method

.method public getCreated_time()J
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/callapp/common/model/json/JSONInstagramMedia;->created_time:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONInstagramMedia;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImages()Lcom/callapp/common/model/json/JSONInstagramImages;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONInstagramMedia;->images:Lcom/callapp/common/model/json/JSONInstagramImages;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONInstagramMedia;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONInstagramMedia;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .line 83
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONInstagramMedia;->caption:Lcom/callapp/common/model/json/JSONInstagramCaption;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONInstagramCaption;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 84
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONInstagramMedia;->link:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 85
    iget-wide v2, p0, Lcom/callapp/common/model/json/JSONInstagramMedia;->created_time:J

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 86
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONInstagramMedia;->type:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 87
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONInstagramMedia;->id:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 88
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONInstagramMedia;->images:Lcom/callapp/common/model/json/JSONInstagramImages;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONInstagramImages;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v0, v1

    return v0
.end method

.method public setCaption(Lcom/callapp/common/model/json/JSONInstagramCaption;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONInstagramMedia;->caption:Lcom/callapp/common/model/json/JSONInstagramCaption;

    return-void
.end method

.method public setCreated_time(J)V
    .locals 0

    .line 45
    iput-wide p1, p0, Lcom/callapp/common/model/json/JSONInstagramMedia;->created_time:J

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONInstagramMedia;->id:Ljava/lang/String;

    return-void
.end method

.method public setImages(Lcom/callapp/common/model/json/JSONInstagramImages;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONInstagramMedia;->images:Lcom/callapp/common/model/json/JSONInstagramImages;

    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONInstagramMedia;->link:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONInstagramMedia;->type:Ljava/lang/String;

    return-void
.end method
