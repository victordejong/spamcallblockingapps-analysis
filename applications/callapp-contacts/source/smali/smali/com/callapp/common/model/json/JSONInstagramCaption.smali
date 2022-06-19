.class public Lcom/callapp/common/model/json/JSONInstagramCaption;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x505f6bd0588b66aL


# instance fields
.field created_time:J

.field id:Ljava/lang/String;

.field text:Ljava/lang/String;


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

    if-nez p1, :cond_1

    return v1

    .line 52
    :cond_1
    instance-of v2, p1, Lcom/callapp/common/model/json/JSONInstagramCaption;

    if-nez v2, :cond_2

    return v1

    .line 54
    :cond_2
    check-cast p1, Lcom/callapp/common/model/json/JSONInstagramCaption;

    .line 55
    iget-wide v2, p0, Lcom/callapp/common/model/json/JSONInstagramCaption;->created_time:J

    iget-wide v4, p1, Lcom/callapp/common/model/json/JSONInstagramCaption;->created_time:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    return v1

    .line 57
    :cond_3
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONInstagramCaption;->id:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 58
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONInstagramCaption;->id:Ljava/lang/String;

    if-eqz v2, :cond_5

    return v1

    .line 60
    :cond_4
    iget-object v3, p1, Lcom/callapp/common/model/json/JSONInstagramCaption;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 62
    :cond_5
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONInstagramCaption;->text:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 63
    iget-object p1, p1, Lcom/callapp/common/model/json/JSONInstagramCaption;->text:Ljava/lang/String;

    if-eqz p1, :cond_7

    return v1

    .line 65
    :cond_6
    iget-object p1, p1, Lcom/callapp/common/model/json/JSONInstagramCaption;->text:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v1

    :cond_7
    return v0
.end method

.method public getCreated_time()J
    .locals 2

    .line 13
    iget-wide v0, p0, Lcom/callapp/common/model/json/JSONInstagramCaption;->created_time:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONInstagramCaption;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONInstagramCaption;->text:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 40
    iget-wide v0, p0, Lcom/callapp/common/model/json/JSONInstagramCaption;->created_time:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    add-int/lit8 v1, v1, 0x1f

    mul-int/lit8 v1, v1, 0x1f

    .line 41
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONInstagramCaption;->id:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 42
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONInstagramCaption;->text:Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    return v1
.end method

.method public setCreated_time(J)V
    .locals 0

    .line 25
    iput-wide p1, p0, Lcom/callapp/common/model/json/JSONInstagramCaption;->created_time:J

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONInstagramCaption;->id:Ljava/lang/String;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONInstagramCaption;->text:Ljava/lang/String;

    return-void
.end method
