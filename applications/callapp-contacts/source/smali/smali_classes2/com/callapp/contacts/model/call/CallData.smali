.class public Lcom/callapp/contacts/model/call/CallData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x7c1dc60476bb7e38L


# instance fields
.field private callAnswered:Z

.field private callId:Ljava/lang/String;

.field private callWaiting:Z

.field private isBlocked:Z

.field private isConferenceManager:Z

.field private final isIncoming:Z

.field private isVoiceMail:Z

.field private markedAsIncognito:Z

.field private missedCall:Z

.field private final number:Lcom/callapp/framework/phone/Phone;

.field private oldState:Lcom/callapp/contacts/model/call/CallState;

.field private final simId:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

.field private state:Lcom/callapp/contacts/model/call/CallState;

.field private talkingStartTime:J

.field private verificationStatus:I


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/model/call/CallState;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, v0, p1, v0}, Lcom/callapp/contacts/model/call/CallData;-><init>(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/call/CallState;Ljava/lang/Boolean;)V

    return-void
.end method

.method public constructor <init>(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/manager/sim/SimManager$SimId;Lcom/callapp/contacts/model/call/CallState;Ljava/lang/Boolean;)V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 17
    iput-wide v0, p0, Lcom/callapp/contacts/model/call/CallData;->talkingStartTime:J

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/callapp/contacts/model/call/CallData;->callWaiting:Z

    .line 26
    iput-boolean v0, p0, Lcom/callapp/contacts/model/call/CallData;->missedCall:Z

    .line 27
    iput-boolean v0, p0, Lcom/callapp/contacts/model/call/CallData;->callAnswered:Z

    .line 28
    iput-boolean v0, p0, Lcom/callapp/contacts/model/call/CallData;->isBlocked:Z

    .line 29
    iput-boolean v0, p0, Lcom/callapp/contacts/model/call/CallData;->isVoiceMail:Z

    .line 30
    iput-boolean v0, p0, Lcom/callapp/contacts/model/call/CallData;->isConferenceManager:Z

    .line 32
    iput-boolean v0, p0, Lcom/callapp/contacts/model/call/CallData;->markedAsIncognito:Z

    .line 36
    iput v0, p0, Lcom/callapp/contacts/model/call/CallData;->verificationStatus:I

    .line 76
    iput-object p1, p0, Lcom/callapp/contacts/model/call/CallData;->number:Lcom/callapp/framework/phone/Phone;

    .line 77
    invoke-virtual {p0, p3}, Lcom/callapp/contacts/model/call/CallData;->setState(Lcom/callapp/contacts/model/call/CallState;)V

    .line 78
    iput-object p2, p0, Lcom/callapp/contacts/model/call/CallData;->simId:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    if-nez p4, :cond_0

    .line 80
    iput-boolean v0, p0, Lcom/callapp/contacts/model/call/CallData;->isIncoming:Z

    return-void

    .line 82
    :cond_0
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/callapp/contacts/model/call/CallData;->isIncoming:Z

    return-void
.end method

.method public constructor <init>(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/call/CallState;Ljava/lang/Boolean;)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/callapp/contacts/model/call/CallData;-><init>(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/manager/sim/SimManager$SimId;Lcom/callapp/contacts/model/call/CallState;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 91
    :cond_0
    instance-of v1, p1, Lcom/callapp/contacts/model/call/CallData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 95
    :cond_1
    check-cast p1, Lcom/callapp/contacts/model/call/CallData;

    .line 96
    iget-object v1, p1, Lcom/callapp/contacts/model/call/CallData;->simId:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    iget-object v3, p0, Lcom/callapp/contacts/model/call/CallData;->simId:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    if-eq v1, v3, :cond_2

    return v2

    .line 98
    :cond_2
    iget-object v1, p0, Lcom/callapp/contacts/model/call/CallData;->number:Lcom/callapp/framework/phone/Phone;

    if-nez v1, :cond_4

    .line 99
    iget-object v1, p1, Lcom/callapp/contacts/model/call/CallData;->number:Lcom/callapp/framework/phone/Phone;

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object v1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object p1

    if-ne v1, p1, :cond_3

    return v0

    :cond_3
    return v2

    .line 101
    :cond_4
    iget-object v3, p1, Lcom/callapp/contacts/model/call/CallData;->number:Lcom/callapp/framework/phone/Phone;

    invoke-virtual {v1, v3}, Lcom/callapp/framework/phone/Phone;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object v1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object p1

    if-ne v1, p1, :cond_5

    return v0

    :cond_5
    return v2
.end method

.method public getCallId()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/callapp/contacts/model/call/CallData;->callId:Ljava/lang/String;

    return-object v0
.end method

.method public getMarkAsIncognito()Z
    .locals 1

    .line 190
    iget-boolean v0, p0, Lcom/callapp/contacts/model/call/CallData;->markedAsIncognito:Z

    return v0
.end method

.method public getNumber()Lcom/callapp/framework/phone/Phone;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/callapp/contacts/model/call/CallData;->number:Lcom/callapp/framework/phone/Phone;

    return-object v0
.end method

.method public getOldState()Lcom/callapp/contacts/model/call/CallState;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/callapp/contacts/model/call/CallData;->oldState:Lcom/callapp/contacts/model/call/CallState;

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/callapp/contacts/model/call/CallData;->state:Lcom/callapp/contacts/model/call/CallState;

    :cond_0
    return-object v0
.end method

.method public getSimId()Lcom/callapp/contacts/manager/sim/SimManager$SimId;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/callapp/contacts/model/call/CallData;->simId:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    return-object v0
.end method

.method public getState()Lcom/callapp/contacts/model/call/CallState;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/callapp/contacts/model/call/CallData;->state:Lcom/callapp/contacts/model/call/CallState;

    return-object v0
.end method

.method public getTalkingStartTime()J
    .locals 2

    .line 134
    iget-wide v0, p0, Lcom/callapp/contacts/model/call/CallData;->talkingStartTime:J

    return-wide v0
.end method

.method public getVerificationStatus()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/callapp/contacts/model/call/CallData;->verificationStatus:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/callapp/contacts/model/call/CallData;->number:Lcom/callapp/framework/phone/Phone;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/callapp/framework/phone/Phone;->b:Lcom/callapp/framework/phone/Phone;

    :goto_0
    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 108
    invoke-virtual {p0}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/model/call/CallState;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 109
    iget-object v1, p0, Lcom/callapp/contacts/model/call/CallData;->simId:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public isBlocked()Z
    .locals 1

    .line 162
    iget-boolean v0, p0, Lcom/callapp/contacts/model/call/CallData;->isBlocked:Z

    return v0
.end method

.method public isCallAnswered()Ljava/lang/Boolean;
    .locals 1

    .line 154
    iget-boolean v0, p0, Lcom/callapp/contacts/model/call/CallData;->callAnswered:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isCallWaiting()Z
    .locals 1

    .line 142
    iget-boolean v0, p0, Lcom/callapp/contacts/model/call/CallData;->callWaiting:Z

    return v0
.end method

.method public isConferenceManager()Z
    .locals 1

    .line 174
    iget-boolean v0, p0, Lcom/callapp/contacts/model/call/CallData;->isConferenceManager:Z

    return v0
.end method

.method public isIncoming()Z
    .locals 1

    .line 146
    iget-boolean v0, p0, Lcom/callapp/contacts/model/call/CallData;->isIncoming:Z

    return v0
.end method

.method public isMissedCall()Ljava/lang/Boolean;
    .locals 1

    .line 150
    iget-boolean v0, p0, Lcom/callapp/contacts/model/call/CallData;->callAnswered:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/callapp/contacts/model/call/CallData;->missedCall:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isVoiceMail()Z
    .locals 1

    .line 170
    iget-boolean v0, p0, Lcom/callapp/contacts/model/call/CallData;->isVoiceMail:Z

    return v0
.end method

.method public setBlocked(Z)V
    .locals 0

    .line 158
    iput-boolean p1, p0, Lcom/callapp/contacts/model/call/CallData;->isBlocked:Z

    return-void
.end method

.method public setCallId(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/callapp/contacts/model/call/CallData;->callId:Ljava/lang/String;

    return-void
.end method

.method public setCallWaiting(Z)V
    .locals 0

    .line 138
    iput-boolean p1, p0, Lcom/callapp/contacts/model/call/CallData;->callWaiting:Z

    return-void
.end method

.method public setConferenceManager(Z)V
    .locals 0

    .line 178
    iput-boolean p1, p0, Lcom/callapp/contacts/model/call/CallData;->isConferenceManager:Z

    return-void
.end method

.method public setIsVoiceMail(Z)V
    .locals 0

    .line 166
    iput-boolean p1, p0, Lcom/callapp/contacts/model/call/CallData;->isVoiceMail:Z

    return-void
.end method

.method public setMarkedAsIncognito(Z)V
    .locals 0

    .line 186
    iput-boolean p1, p0, Lcom/callapp/contacts/model/call/CallData;->markedAsIncognito:Z

    return-void
.end method

.method public setState(Lcom/callapp/contacts/model/call/CallState;)V
    .locals 6

    .line 118
    iget-object v0, p0, Lcom/callapp/contacts/model/call/CallData;->state:Lcom/callapp/contacts/model/call/CallState;

    if-eq v0, p1, :cond_3

    .line 119
    iput-object v0, p0, Lcom/callapp/contacts/model/call/CallData;->oldState:Lcom/callapp/contacts/model/call/CallState;

    .line 120
    sget-object v0, Lcom/callapp/contacts/model/call/CallState;->TALKING:Lcom/callapp/contacts/model/call/CallState;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 121
    iget-wide v2, p0, Lcom/callapp/contacts/model/call/CallData;->talkingStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/callapp/contacts/model/call/CallData;->talkingStartTime:J

    .line 124
    :cond_0
    iput-boolean v1, p0, Lcom/callapp/contacts/model/call/CallData;->callAnswered:Z

    const/4 v0, 0x0

    .line 125
    iput-boolean v0, p0, Lcom/callapp/contacts/model/call/CallData;->missedCall:Z

    goto :goto_0

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/model/call/CallData;->state:Lcom/callapp/contacts/model/call/CallState;

    sget-object v2, Lcom/callapp/contacts/model/call/CallState;->RINGING_INCOMING:Lcom/callapp/contacts/model/call/CallState;

    if-ne v0, v2, :cond_2

    sget-object v0, Lcom/callapp/contacts/model/call/CallState;->POST_CALL:Lcom/callapp/contacts/model/call/CallState;

    if-ne p1, v0, :cond_2

    .line 127
    iput-boolean v1, p0, Lcom/callapp/contacts/model/call/CallData;->missedCall:Z

    .line 129
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/callapp/contacts/model/call/CallData;->state:Lcom/callapp/contacts/model/call/CallState;

    :cond_3
    return-void
.end method

.method public setVerificationStatus(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/callapp/contacts/model/call/CallData;->verificationStatus:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CallData{talkingStartTime="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/callapp/contacts/model/call/CallData;->talkingStartTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/call/CallData;->number:Lcom/callapp/framework/phone/Phone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/call/CallData;->state:Lcom/callapp/contacts/model/call/CallState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", callWaiting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/callapp/contacts/model/call/CallData;->callWaiting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isIncoming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/callapp/contacts/model/call/CallData;->isIncoming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", missedCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/callapp/contacts/model/call/CallData;->missedCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", callAnswered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/callapp/contacts/model/call/CallData;->callAnswered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isBlocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/callapp/contacts/model/call/CallData;->isBlocked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isVoiceMail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/callapp/contacts/model/call/CallData;->isVoiceMail:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isConferenceManager="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/callapp/contacts/model/call/CallData;->isConferenceManager:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/call/CallData;->simId:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", markedAsIncognito="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/callapp/contacts/model/call/CallData;->markedAsIncognito:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", callId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/call/CallData;->callId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", oldState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/call/CallData;->oldState:Lcom/callapp/contacts/model/call/CallState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", verificationStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/callapp/contacts/model/call/CallData;->verificationStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
