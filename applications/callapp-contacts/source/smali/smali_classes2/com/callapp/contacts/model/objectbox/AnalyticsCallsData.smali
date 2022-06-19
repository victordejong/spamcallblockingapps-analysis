.class public Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$SimIdConverter;,
        Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayTypeConverter;,
        Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallNameConverter;,
        Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;,
        Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;
    }
.end annotation


# instance fields
.field private callType:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

.field private date:J

.field private dayType:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;

.field private duration:J

.field protected id:Ljava/lang/Long;

.field private isBlock:Z

.field private isConference:Z

.field private isExclude:Z

.field private isIdentified:Z

.field private isIncognito:Z

.field private isInternational:Z

.field private isPrivate:Z

.field private isSpam:Z

.field private phoneAsGlobal:Ljava/lang/String;

.field private simId:Lcom/callapp/contacts/manager/sim/SimManager$SimId;


# direct methods
.method public constructor <init>(JLcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;Lcom/callapp/contacts/manager/sim/SimManager$SimId;Lcom/callapp/framework/phone/Phone;JZZZZZZZZ)V
    .locals 3

    move-object v0, p0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    .line 54
    iput-wide v1, v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->date:J

    move-object v1, p3

    .line 55
    iput-object v1, v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->callType:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    move-object v1, p4

    .line 56
    iput-object v1, v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->dayType:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;

    move-object v1, p5

    .line 57
    iput-object v1, v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->simId:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    .line 58
    invoke-virtual {p6}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->phoneAsGlobal:Ljava/lang/String;

    move-wide v1, p7

    .line 59
    iput-wide v1, v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->duration:J

    move v1, p9

    .line 60
    iput-boolean v1, v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->isSpam:Z

    move v1, p10

    .line 61
    iput-boolean v1, v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->isBlock:Z

    move v1, p11

    .line 62
    iput-boolean v1, v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->isPrivate:Z

    move v1, p12

    .line 63
    iput-boolean v1, v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->isIncognito:Z

    move/from16 v1, p13

    .line 64
    iput-boolean v1, v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->isConference:Z

    move/from16 v1, p14

    .line 65
    iput-boolean v1, v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->isInternational:Z

    move/from16 v1, p15

    .line 66
    iput-boolean v1, v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->isIdentified:Z

    move/from16 v1, p16

    .line 67
    iput-boolean v1, v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->isExclude:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;JLcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;Lcom/callapp/contacts/manager/sim/SimManager$SimId;Ljava/lang/String;JZZZZZZZZ)V
    .locals 3

    move-object v0, p0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 36
    iput-object v1, v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->id:Ljava/lang/Long;

    move-wide v1, p2

    .line 37
    iput-wide v1, v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->date:J

    move-object v1, p4

    .line 38
    iput-object v1, v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->callType:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    move-object v1, p5

    .line 39
    iput-object v1, v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->dayType:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;

    move-object v1, p6

    .line 40
    iput-object v1, v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->simId:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    move-object v1, p7

    .line 41
    iput-object v1, v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->phoneAsGlobal:Ljava/lang/String;

    move-wide v1, p8

    .line 42
    iput-wide v1, v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->duration:J

    move v1, p10

    .line 43
    iput-boolean v1, v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->isSpam:Z

    move v1, p11

    .line 44
    iput-boolean v1, v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->isBlock:Z

    move v1, p12

    .line 45
    iput-boolean v1, v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->isPrivate:Z

    move/from16 v1, p13

    .line 46
    iput-boolean v1, v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->isIncognito:Z

    move/from16 v1, p14

    .line 47
    iput-boolean v1, v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->isConference:Z

    move/from16 v1, p15

    .line 48
    iput-boolean v1, v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->isInternational:Z

    move/from16 v1, p16

    .line 49
    iput-boolean v1, v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->isIdentified:Z

    move/from16 v1, p17

    .line 50
    iput-boolean v1, v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->isExclude:Z

    return-void
.end method


# virtual methods
.method public getCallType()Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->callType:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    return-object v0
.end method

.method public getDate()J
    .locals 2

    .line 104
    iget-wide v0, p0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->date:J

    return-wide v0
.end method

.method public getDayType()Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->dayType:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 96
    iget-wide v0, p0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->duration:J

    return-wide v0
.end method

.method public getPhoneAsGlobal()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->phoneAsGlobal:Ljava/lang/String;

    return-object v0
.end method

.method public getSimId()Lcom/callapp/contacts/manager/sim/SimManager$SimId;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->simId:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    return-object v0
.end method

.method public isBlock()Z
    .locals 1

    .line 128
    iget-boolean v0, p0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->isBlock:Z

    return v0
.end method

.method public isConference()Z
    .locals 1

    .line 152
    iget-boolean v0, p0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->isConference:Z

    return v0
.end method

.method public isExclude()Z
    .locals 1

    .line 176
    iget-boolean v0, p0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->isExclude:Z

    return v0
.end method

.method public isIdentified()Z
    .locals 1

    .line 172
    iget-boolean v0, p0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->isIdentified:Z

    return v0
.end method

.method public isIncognito()Z
    .locals 1

    .line 144
    iget-boolean v0, p0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->isIncognito:Z

    return v0
.end method

.method public isInternational()Z
    .locals 1

    .line 160
    iget-boolean v0, p0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->isInternational:Z

    return v0
.end method

.method public isPrivate()Z
    .locals 1

    .line 136
    iget-boolean v0, p0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->isPrivate:Z

    return v0
.end method

.method public isSpam()Z
    .locals 1

    .line 120
    iget-boolean v0, p0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->isSpam:Z

    return v0
.end method

.method public setBlock(Z)V
    .locals 0

    .line 132
    iput-boolean p1, p0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->isBlock:Z

    return-void
.end method

.method public setCallType(Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->callType:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    return-void
.end method

.method public setConference(Z)V
    .locals 0

    .line 156
    iput-boolean p1, p0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->isConference:Z

    return-void
.end method

.method public setDate(J)V
    .locals 0

    .line 108
    iput-wide p1, p0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->date:J

    return-void
.end method

.method public setDayType(Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->dayType:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;

    return-void
.end method

.method public setDuration(J)V
    .locals 0

    .line 100
    iput-wide p1, p0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->duration:J

    return-void
.end method

.method public setExclude(Z)V
    .locals 0

    .line 180
    iput-boolean p1, p0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->isExclude:Z

    return-void
.end method

.method public setIdentified(Z)V
    .locals 0

    .line 168
    iput-boolean p1, p0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->isIdentified:Z

    return-void
.end method

.method public setIncognito(Z)V
    .locals 0

    .line 148
    iput-boolean p1, p0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->isIncognito:Z

    return-void
.end method

.method public setInternational(Z)V
    .locals 0

    .line 164
    iput-boolean p1, p0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->isInternational:Z

    return-void
.end method

.method public setPhoneAsGlobal(Ljava/lang/String;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->phoneAsGlobal:Ljava/lang/String;

    return-void
.end method

.method public setPrivate(Z)V
    .locals 0

    .line 140
    iput-boolean p1, p0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->isPrivate:Z

    return-void
.end method

.method public setSimId(Lcom/callapp/contacts/manager/sim/SimManager$SimId;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->simId:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    return-void
.end method

.method public setSpam(Z)V
    .locals 0

    .line 124
    iput-boolean p1, p0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->isSpam:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AnalyticsCallsData{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->id:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->date:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", callType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->callType:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dayType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->dayType:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->simId:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", phoneAsGlobal=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->phoneAsGlobal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->duration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isSpam="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->isSpam:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isBlock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->isBlock:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isPrivate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->isPrivate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isIncognito="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->isIncognito:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isConference="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->isConference:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isInternational="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->isInternational:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isIdentified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->isIdentified:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isExclude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->isExclude:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
