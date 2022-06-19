.class public Lcom/callapp/common/model/json/JSONInstagramRelationshipData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x19bbdbf0fb37f050L


# instance fields
.field private incoming_status:Ljava/lang/String;

.field private outgoing_status:Ljava/lang/String;

.field private target_user_is_private:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/callapp/common/model/json/JSONInstagramRelationshipData;->target_user_is_private:Z

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

    .line 57
    :cond_1
    instance-of v2, p1, Lcom/callapp/common/model/json/JSONInstagramRelationshipData;

    if-nez v2, :cond_2

    return v1

    .line 59
    :cond_2
    check-cast p1, Lcom/callapp/common/model/json/JSONInstagramRelationshipData;

    .line 60
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONInstagramRelationshipData;->incoming_status:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 61
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONInstagramRelationshipData;->incoming_status:Ljava/lang/String;

    if-eqz v2, :cond_4

    return v1

    .line 63
    :cond_3
    iget-object v3, p1, Lcom/callapp/common/model/json/JSONInstagramRelationshipData;->incoming_status:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 65
    :cond_4
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONInstagramRelationshipData;->outgoing_status:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 66
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONInstagramRelationshipData;->outgoing_status:Ljava/lang/String;

    if-eqz v2, :cond_6

    return v1

    .line 68
    :cond_5
    iget-object v3, p1, Lcom/callapp/common/model/json/JSONInstagramRelationshipData;->outgoing_status:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 70
    :cond_6
    iget-boolean v2, p0, Lcom/callapp/common/model/json/JSONInstagramRelationshipData;->target_user_is_private:Z

    iget-boolean p1, p1, Lcom/callapp/common/model/json/JSONInstagramRelationshipData;->target_user_is_private:Z

    if-eq v2, p1, :cond_7

    return v1

    :cond_7
    return v0
.end method

.method public getIncoming_status()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONInstagramRelationshipData;->incoming_status:Ljava/lang/String;

    return-object v0
.end method

.method public getOutgoing_status()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONInstagramRelationshipData;->outgoing_status:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONInstagramRelationshipData;->incoming_status:Ljava/lang/String;

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

    .line 46
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONInstagramRelationshipData;->outgoing_status:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 47
    iget-boolean v1, p0, Lcom/callapp/common/model/json/JSONInstagramRelationshipData;->target_user_is_private:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x4cf

    goto :goto_2

    :cond_2
    const/16 v1, 0x4d5

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public isTarget_user_is_private()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lcom/callapp/common/model/json/JSONInstagramRelationshipData;->target_user_is_private:Z

    return v0
.end method

.method public setIncoming_status(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONInstagramRelationshipData;->incoming_status:Ljava/lang/String;

    return-void
.end method

.method public setOutgoing_status(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONInstagramRelationshipData;->outgoing_status:Ljava/lang/String;

    return-void
.end method

.method public setTarget_user_is_private(Z)V
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/callapp/common/model/json/JSONInstagramRelationshipData;->target_user_is_private:Z

    return-void
.end method
