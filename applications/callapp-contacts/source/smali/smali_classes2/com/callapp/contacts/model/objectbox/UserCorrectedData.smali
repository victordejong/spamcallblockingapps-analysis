.class public Lcom/callapp/contacts/model/objectbox/UserCorrectedData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/model/objectbox/MonitoredDeviceID;


# instance fields
.field transient __boxStore:Lio/objectbox/BoxStore;

.field private contactId:J

.field private fullName:Ljava/lang/String;

.field protected id:Ljava/lang/Long;

.field private phoneNumber:Ljava/lang/String;

.field private phoneOrIdKey:Ljava/lang/String;

.field private userCorrectedPositive:Lio/objectbox/relation/ToMany;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/relation/ToMany<",
            "Lcom/callapp/contacts/model/objectbox/UserCorrectedPositiveData;",
            ">;"
        }
    .end annotation
.end field

.field private userCorrectedType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/objectbox/relation/ToMany;

    sget-object v1, Lcom/callapp/contacts/model/objectbox/UserCorrectedData_;->userCorrectedPositive:Lio/objectbox/relation/b;

    invoke-direct {v0, p0, v1}, Lio/objectbox/relation/ToMany;-><init>(Ljava/lang/Object;Lio/objectbox/relation/b;)V

    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;->userCorrectedPositive:Lio/objectbox/relation/ToMany;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/objectbox/relation/ToMany;

    sget-object v1, Lcom/callapp/contacts/model/objectbox/UserCorrectedData_;->userCorrectedPositive:Lio/objectbox/relation/b;

    invoke-direct {v0, p0, v1}, Lio/objectbox/relation/ToMany;-><init>(Ljava/lang/Object;Lio/objectbox/relation/b;)V

    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;->userCorrectedPositive:Lio/objectbox/relation/ToMany;

    .line 39
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;->id:Ljava/lang/Long;

    .line 40
    iput-object p2, p0, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;->phoneOrIdKey:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;->fullName:Ljava/lang/String;

    .line 42
    iput p4, p0, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;->userCorrectedType:I

    return-void
.end method


# virtual methods
.method public getContactId()J
    .locals 2

    .line 89
    iget-wide v0, p0, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;->contactId:J

    return-wide v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneOrIdKey()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;->phoneOrIdKey:Ljava/lang/String;

    return-object v0
.end method

.method public getUserCorrectedPositive()Lio/objectbox/relation/ToMany;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/objectbox/relation/ToMany<",
            "Lcom/callapp/contacts/model/objectbox/UserCorrectedPositiveData;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;->userCorrectedPositive:Lio/objectbox/relation/ToMany;

    return-object v0
.end method

.method public getUserCorrectedType()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;->userCorrectedType:I

    return v0
.end method

.method public isBusiness()Z
    .locals 2

    .line 105
    iget v0, p0, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;->userCorrectedType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setContactId(J)V
    .locals 0

    .line 93
    iput-wide p1, p0, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;->contactId:J

    return-void
.end method

.method public setFullName(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;->fullName:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;->id:Ljava/lang/Long;

    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;->phoneNumber:Ljava/lang/String;

    return-void
.end method

.method public setPhoneOrIdKey(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;->phoneOrIdKey:Ljava/lang/String;

    return-void
.end method

.method public setUserCorrectedPositive(Lio/objectbox/relation/ToMany;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/objectbox/relation/ToMany<",
            "Lcom/callapp/contacts/model/objectbox/UserCorrectedPositiveData;",
            ">;)V"
        }
    .end annotation

    .line 85
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;->userCorrectedPositive:Lio/objectbox/relation/ToMany;

    return-void
.end method

.method public setUserCorrectedType(I)V
    .locals 0

    .line 77
    iput p1, p0, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;->userCorrectedType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PhoneOrIdKey: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;->phoneOrIdKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", User corrected name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;->userCorrectedType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Corrected socials positive data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;->userCorrectedPositive:Lio/objectbox/relation/ToMany;

    .line 113
    invoke-virtual {v1}, Lio/objectbox/relation/ToMany;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
