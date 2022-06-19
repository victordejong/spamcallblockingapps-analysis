.class public Lcom/callapp/contacts/model/UsageCounterData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private count:J

.field private date:J

.field private id:J

.field private netCallType:I

.field socialNetworkId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
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

    if-eqz p1, :cond_6

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 63
    :cond_1
    check-cast p1, Lcom/callapp/contacts/model/UsageCounterData;

    .line 65
    iget-wide v2, p0, Lcom/callapp/contacts/model/UsageCounterData;->id:J

    iget-wide v4, p1, Lcom/callapp/contacts/model/UsageCounterData;->id:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    return v1

    .line 66
    :cond_2
    iget v2, p0, Lcom/callapp/contacts/model/UsageCounterData;->socialNetworkId:I

    iget v3, p1, Lcom/callapp/contacts/model/UsageCounterData;->socialNetworkId:I

    if-eq v2, v3, :cond_3

    return v1

    .line 67
    :cond_3
    iget v2, p0, Lcom/callapp/contacts/model/UsageCounterData;->netCallType:I

    iget v3, p1, Lcom/callapp/contacts/model/UsageCounterData;->netCallType:I

    if-eq v2, v3, :cond_4

    return v1

    .line 68
    :cond_4
    iget-wide v2, p0, Lcom/callapp/contacts/model/UsageCounterData;->count:J

    iget-wide v4, p1, Lcom/callapp/contacts/model/UsageCounterData;->count:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_5

    return v1

    .line 69
    :cond_5
    iget-wide v2, p0, Lcom/callapp/contacts/model/UsageCounterData;->date:J

    iget-wide v4, p1, Lcom/callapp/contacts/model/UsageCounterData;->date:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_6

    return v0

    :cond_6
    :goto_0
    return v1
.end method

.method public getCount()J
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/callapp/contacts/model/UsageCounterData;->count:J

    return-wide v0
.end method

.method public getDate()J
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/callapp/contacts/model/UsageCounterData;->date:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/callapp/contacts/model/UsageCounterData;->id:J

    return-wide v0
.end method

.method public getNetCallType()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/callapp/contacts/model/UsageCounterData;->netCallType:I

    return v0
.end method

.method public getSocialNetworkId()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/callapp/contacts/model/UsageCounterData;->socialNetworkId:I

    return v0
.end method

.method public hashCode()I
    .locals 7

    .line 74
    iget-wide v0, p0, Lcom/callapp/contacts/model/UsageCounterData;->id:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 75
    iget v0, p0, Lcom/callapp/contacts/model/UsageCounterData;->socialNetworkId:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 76
    iget v0, p0, Lcom/callapp/contacts/model/UsageCounterData;->netCallType:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 77
    iget-wide v3, p0, Lcom/callapp/contacts/model/UsageCounterData;->count:J

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v0, v3

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 78
    iget-wide v3, p0, Lcom/callapp/contacts/model/UsageCounterData;->date:J

    ushr-long v5, v3, v2

    xor-long v2, v3, v5

    long-to-int v0, v2

    add-int/2addr v1, v0

    return v1
.end method

.method public setCount(J)V
    .locals 0

    .line 47
    iput-wide p1, p0, Lcom/callapp/contacts/model/UsageCounterData;->count:J

    return-void
.end method

.method public setDate(J)V
    .locals 0

    .line 55
    iput-wide p1, p0, Lcom/callapp/contacts/model/UsageCounterData;->date:J

    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 23
    iput-wide p1, p0, Lcom/callapp/contacts/model/UsageCounterData;->id:J

    return-void
.end method

.method public setNetCallType(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/callapp/contacts/model/UsageCounterData;->netCallType:I

    return-void
.end method

.method public setSocialNetworkId(I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/callapp/contacts/model/UsageCounterData;->socialNetworkId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UsageCounterData{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/callapp/contacts/model/UsageCounterData;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", socialNetworkId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/callapp/contacts/model/UsageCounterData;->socialNetworkId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", netCallType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/callapp/contacts/model/UsageCounterData;->netCallType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/callapp/contacts/model/UsageCounterData;->count:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/callapp/contacts/model/UsageCounterData;->date:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
