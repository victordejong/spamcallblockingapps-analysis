.class public Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentTypeConverter;,
        Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;
    }
.end annotation


# instance fields
.field private deleteTimeStamp:J

.field private frequentType:Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

.field private id:Ljava/lang/Long;

.field private lastDeleteFromNotificationTimeStamp:J

.field private missedCallType:I

.field private phoneAsGlobal:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;->ALWAYS:Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->frequentType:Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;IJ)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;->ALWAYS:Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->frequentType:Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    .line 66
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->id:Ljava/lang/Long;

    .line 67
    iput-object p2, p0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->phoneAsGlobal:Ljava/lang/String;

    .line 68
    iput-object p3, p0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->frequentType:Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    .line 69
    iput p4, p0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->missedCallType:I

    .line 70
    iput-wide p5, p0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->lastDeleteFromNotificationTimeStamp:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;I)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;->ALWAYS:Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->frequentType:Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    .line 74
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->phoneAsGlobal:Ljava/lang/String;

    .line 75
    iput-object p2, p0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->frequentType:Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    .line 76
    iput p3, p0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->missedCallType:I

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

    if-eqz p1, :cond_2

    .line 130
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 131
    :cond_1
    check-cast p1, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;

    .line 132
    iget-wide v2, p0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->deleteTimeStamp:J

    iget-wide v4, p1, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->deleteTimeStamp:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget v2, p0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->missedCallType:I

    iget v3, p1, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->missedCallType:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->lastDeleteFromNotificationTimeStamp:J

    iget-wide v4, p1, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->lastDeleteFromNotificationTimeStamp:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->id:Ljava/lang/Long;

    iget-object v3, p1, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->id:Ljava/lang/Long;

    .line 135
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->phoneAsGlobal:Ljava/lang/String;

    iget-object v3, p1, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->phoneAsGlobal:Ljava/lang/String;

    .line 136
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->frequentType:Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    iget-object p1, p1, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->frequentType:Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    if-ne v2, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getDeleteTimeStamp()J
    .locals 2

    .line 104
    iget-wide v0, p0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->deleteTimeStamp:J

    return-wide v0
.end method

.method public getFrequentType()Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->frequentType:Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getLastDeleteFromNotificationTimeStamp()J
    .locals 2

    .line 120
    iget-wide v0, p0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->lastDeleteFromNotificationTimeStamp:J

    return-wide v0
.end method

.method public getMissedCallType()I
    .locals 1

    .line 112
    iget v0, p0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->missedCallType:I

    return v0
.end method

.method public getPhoneAsGlobal()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->phoneAsGlobal:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 142
    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->id:Ljava/lang/Long;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->phoneAsGlobal:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->frequentType:Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->deleteTimeStamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->missedCallType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->lastDeleteFromNotificationTimeStamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setDeleteTimeStamp(J)V
    .locals 0

    .line 108
    iput-wide p1, p0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->deleteTimeStamp:J

    return-void
.end method

.method public setFrequentType(Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->frequentType:Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->id:Ljava/lang/Long;

    return-void
.end method

.method public setLastDeleteFromNotificationTimeStamp(J)V
    .locals 0

    .line 124
    iput-wide p1, p0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->lastDeleteFromNotificationTimeStamp:J

    return-void
.end method

.method public setMissedCallType(I)V
    .locals 0

    .line 116
    iput p1, p0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->missedCallType:I

    return-void
.end method

.method public setPhoneAsGlobal(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->phoneAsGlobal:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CallReminderFrequentData{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->id:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", phoneAsGlobal=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->phoneAsGlobal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", frequentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->frequentType:Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", deleteTimeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->deleteTimeStamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", missedCallType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->missedCallType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lastDeleteFromNotificationTimeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->lastDeleteFromNotificationTimeStamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
