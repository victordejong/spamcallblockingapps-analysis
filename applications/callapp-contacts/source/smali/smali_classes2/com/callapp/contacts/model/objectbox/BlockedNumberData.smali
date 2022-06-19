.class public Lcom/callapp/contacts/model/objectbox/BlockedNumberData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private blockCall:Z

.field private blockSms:Z

.field private fullName:Ljava/lang/String;

.field private id:J

.field private phoneNum:Ljava/lang/String;

.field public when:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;ZZJ)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-wide p1, p0, Lcom/callapp/contacts/model/objectbox/BlockedNumberData;->id:J

    .line 34
    iput-object p3, p0, Lcom/callapp/contacts/model/objectbox/BlockedNumberData;->phoneNum:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lcom/callapp/contacts/model/objectbox/BlockedNumberData;->fullName:Ljava/lang/String;

    .line 36
    iput-boolean p5, p0, Lcom/callapp/contacts/model/objectbox/BlockedNumberData;->blockSms:Z

    .line 37
    iput-boolean p6, p0, Lcom/callapp/contacts/model/objectbox/BlockedNumberData;->blockCall:Z

    .line 38
    iput-wide p7, p0, Lcom/callapp/contacts/model/objectbox/BlockedNumberData;->when:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZJ)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/BlockedNumberData;->fullName:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/callapp/contacts/model/objectbox/BlockedNumberData;->phoneNum:Ljava/lang/String;

    .line 44
    iput-boolean p3, p0, Lcom/callapp/contacts/model/objectbox/BlockedNumberData;->blockSms:Z

    .line 45
    iput-boolean p4, p0, Lcom/callapp/contacts/model/objectbox/BlockedNumberData;->blockCall:Z

    .line 46
    iput-wide p5, p0, Lcom/callapp/contacts/model/objectbox/BlockedNumberData;->when:J

    return-void
.end method


# virtual methods
.method public getFullName()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/BlockedNumberData;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 58
    iget-wide v0, p0, Lcom/callapp/contacts/model/objectbox/BlockedNumberData;->id:J

    return-wide v0
.end method

.method public getPhone()Lcom/callapp/framework/phone/Phone;
    .locals 2

    .line 70
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/BlockedNumberData;->phoneNum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneNum()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/BlockedNumberData;->phoneNum:Ljava/lang/String;

    return-object v0
.end method

.method public getWhen()J
    .locals 2

    .line 82
    iget-wide v0, p0, Lcom/callapp/contacts/model/objectbox/BlockedNumberData;->when:J

    return-wide v0
.end method

.method public isBlockCall()Z
    .locals 1

    .line 78
    iget-boolean v0, p0, Lcom/callapp/contacts/model/objectbox/BlockedNumberData;->blockCall:Z

    return v0
.end method

.method public isBlockSms()Z
    .locals 1

    .line 74
    iget-boolean v0, p0, Lcom/callapp/contacts/model/objectbox/BlockedNumberData;->blockSms:Z

    return v0
.end method

.method public setFullName(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/BlockedNumberData;->fullName:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 62
    iput-wide p1, p0, Lcom/callapp/contacts/model/objectbox/BlockedNumberData;->id:J

    return-void
.end method

.method public setWhen(J)V
    .locals 0

    .line 86
    iput-wide p1, p0, Lcom/callapp/contacts/model/objectbox/BlockedNumberData;->when:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BlockedNumberData{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/callapp/contacts/model/objectbox/BlockedNumberData;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", phoneNum=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/BlockedNumberData;->phoneNum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", fullName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/BlockedNumberData;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", blockSms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/callapp/contacts/model/objectbox/BlockedNumberData;->blockSms:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", blockCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/callapp/contacts/model/objectbox/BlockedNumberData;->blockCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", when="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/callapp/contacts/model/objectbox/BlockedNumberData;->when:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
