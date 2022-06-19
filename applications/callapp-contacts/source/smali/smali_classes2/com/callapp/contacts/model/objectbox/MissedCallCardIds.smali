.class public Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private id:Ljava/lang/Long;

.field private lastMissedCall:J

.field private missedCallType:I

.field private numberOfMissedCalls:I

.field private phoneAsRaw:Ljava/lang/String;

.field private phoneNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/callapp/framework/phone/Phone;IJI)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->phoneNumber:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->phoneAsRaw:Ljava/lang/String;

    .line 35
    iput p2, p0, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->numberOfMissedCalls:I

    .line 36
    iput-wide p3, p0, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->lastMissedCall:J

    .line 37
    iput p5, p0, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->missedCallType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;IJI)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->id:Ljava/lang/Long;

    .line 25
    iput-object p2, p0, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->phoneNumber:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->phoneAsRaw:Ljava/lang/String;

    .line 27
    iput p4, p0, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->numberOfMissedCalls:I

    .line 28
    iput-wide p5, p0, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->lastMissedCall:J

    .line 29
    iput p7, p0, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->missedCallType:I

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

    if-eqz p1, :cond_a

    .line 91
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 93
    :cond_1
    check-cast p1, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;

    .line 95
    iget v2, p0, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->numberOfMissedCalls:I

    iget v3, p1, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->numberOfMissedCalls:I

    if-eq v2, v3, :cond_2

    return v1

    .line 96
    :cond_2
    iget-wide v2, p0, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->lastMissedCall:J

    iget-wide v4, p1, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->lastMissedCall:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    return v1

    .line 97
    :cond_3
    iget v2, p0, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->missedCallType:I

    iget v3, p1, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->missedCallType:I

    if-eq v2, v3, :cond_4

    return v1

    .line 98
    :cond_4
    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->id:Ljava/lang/Long;

    if-eqz v2, :cond_5

    iget-object v3, p1, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->id:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->id:Ljava/lang/Long;

    if-eqz v2, :cond_6

    :goto_0
    return v1

    .line 99
    :cond_6
    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->phoneNumber:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v3, p1, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_1

    :cond_7
    iget-object v2, p1, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->phoneNumber:Ljava/lang/String;

    if-eqz v2, :cond_8

    :goto_1
    return v1

    .line 101
    :cond_8
    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->phoneAsRaw:Ljava/lang/String;

    iget-object p1, p1, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->phoneAsRaw:Ljava/lang/String;

    if-eqz v2, :cond_9

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_9
    if-nez p1, :cond_a

    return v0

    :cond_a
    :goto_2
    return v1
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getLastMissedCall()J
    .locals 2

    .line 65
    iget-wide v0, p0, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->lastMissedCall:J

    return-wide v0
.end method

.method public getMissedCallType()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->missedCallType:I

    return v0
.end method

.method public getNumberOfMissedCalls()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->numberOfMissedCalls:I

    return v0
.end method

.method public getPhoneAsRaw()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->phoneAsRaw:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 106
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->id:Ljava/lang/Long;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 107
    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->phoneNumber:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 108
    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->phoneAsRaw:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 109
    iget v1, p0, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->numberOfMissedCalls:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 110
    iget-wide v1, p0, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->lastMissedCall:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 111
    iget v1, p0, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->missedCallType:I

    add-int/2addr v0, v1

    return v0
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->id:Ljava/lang/Long;

    return-void
.end method

.method public setLastMissedCall(J)V
    .locals 0

    .line 69
    iput-wide p1, p0, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->lastMissedCall:J

    return-void
.end method

.method public setMissedCallType(I)V
    .locals 0

    .line 85
    iput p1, p0, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->missedCallType:I

    return-void
.end method

.method public setNumberOfMissedCalls(I)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->numberOfMissedCalls:I

    return-void
.end method

.method public setPhoneAsRaw(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->phoneAsRaw:Ljava/lang/String;

    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->phoneNumber:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MissedCallCardIds{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->id:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", phoneNumber=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", phoneAsRaw=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->phoneAsRaw:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", numberOfMissedCalls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->numberOfMissedCalls:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lastMissedCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->lastMissedCall:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", missedCallType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->missedCallType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
