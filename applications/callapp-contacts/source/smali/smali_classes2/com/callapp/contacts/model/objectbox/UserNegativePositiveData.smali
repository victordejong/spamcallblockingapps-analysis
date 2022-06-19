.class public Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/model/objectbox/MonitoredDeviceID;


# instance fields
.field transient __boxStore:Lio/objectbox/BoxStore;

.field private contactId:J

.field protected id:Ljava/lang/Long;

.field private phoneNumber:Ljava/lang/String;

.field private phoneOrIdKey:Ljava/lang/String;

.field userNegativeSocialData:Lio/objectbox/relation/ToMany;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/relation/ToMany<",
            "Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData;",
            ">;"
        }
    .end annotation
.end field

.field userPositiveSocialData:Lio/objectbox/relation/ToMany;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/relation/ToMany<",
            "Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/objectbox/relation/ToMany;

    sget-object v1, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData_;->userPositiveSocialData:Lio/objectbox/relation/b;

    invoke-direct {v0, p0, v1}, Lio/objectbox/relation/ToMany;-><init>(Ljava/lang/Object;Lio/objectbox/relation/b;)V

    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;->userPositiveSocialData:Lio/objectbox/relation/ToMany;

    new-instance v0, Lio/objectbox/relation/ToMany;

    sget-object v1, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData_;->userNegativeSocialData:Lio/objectbox/relation/b;

    invoke-direct {v0, p0, v1}, Lio/objectbox/relation/ToMany;-><init>(Ljava/lang/Object;Lio/objectbox/relation/b;)V

    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;->userNegativeSocialData:Lio/objectbox/relation/ToMany;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;)V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/objectbox/relation/ToMany;

    sget-object v1, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData_;->userPositiveSocialData:Lio/objectbox/relation/b;

    invoke-direct {v0, p0, v1}, Lio/objectbox/relation/ToMany;-><init>(Ljava/lang/Object;Lio/objectbox/relation/b;)V

    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;->userPositiveSocialData:Lio/objectbox/relation/ToMany;

    new-instance v0, Lio/objectbox/relation/ToMany;

    sget-object v1, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData_;->userNegativeSocialData:Lio/objectbox/relation/b;

    invoke-direct {v0, p0, v1}, Lio/objectbox/relation/ToMany;-><init>(Ljava/lang/Object;Lio/objectbox/relation/b;)V

    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;->userNegativeSocialData:Lio/objectbox/relation/ToMany;

    .line 36
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;->id:Ljava/lang/Long;

    .line 37
    iput-object p2, p0, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;->phoneOrIdKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContactId()J
    .locals 2

    .line 76
    iget-wide v0, p0, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;->contactId:J

    return-wide v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneOrIdKey()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;->phoneOrIdKey:Ljava/lang/String;

    return-object v0
.end method

.method public getUserNegativeSocialData()Lio/objectbox/relation/ToMany;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/objectbox/relation/ToMany<",
            "Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;->userNegativeSocialData:Lio/objectbox/relation/ToMany;

    return-object v0
.end method

.method public getUserPositiveSocialData()Lio/objectbox/relation/ToMany;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/objectbox/relation/ToMany<",
            "Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;->userPositiveSocialData:Lio/objectbox/relation/ToMany;

    return-object v0
.end method

.method public setContactId(J)V
    .locals 0

    .line 80
    iput-wide p1, p0, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;->contactId:J

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;->id:Ljava/lang/Long;

    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;->phoneNumber:Ljava/lang/String;

    return-void
.end method

.method public setPhoneOrIdKey(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;->phoneOrIdKey:Ljava/lang/String;

    return-void
.end method

.method public setUserNegativeSocialData(Lio/objectbox/relation/ToMany;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/objectbox/relation/ToMany<",
            "Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData;",
            ">;)V"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;->userNegativeSocialData:Lio/objectbox/relation/ToMany;

    return-void
.end method

.method public setUserPositiveSocialData(Lio/objectbox/relation/ToMany;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/objectbox/relation/ToMany<",
            "Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;",
            ">;)V"
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;->userPositiveSocialData:Lio/objectbox/relation/ToMany;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UserNegativePositiveData{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;->id:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", phoneOrIdKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;->phoneOrIdKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", userNegativeSocialData="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;->userNegativeSocialData:Lio/objectbox/relation/ToMany;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", userPositiveSocialData="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;->userPositiveSocialData:Lio/objectbox/relation/ToMany;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", contactId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;->contactId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", phoneNumber=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
