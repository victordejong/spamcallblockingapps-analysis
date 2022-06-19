.class public Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field transient __boxStore:Lio/objectbox/BoxStore;

.field protected id:Ljava/lang/Long;

.field private profileId:Ljava/lang/String;

.field private socialNetworkId:I

.field private sure:Z

.field private userPositiveData:Lio/objectbox/relation/ToOne;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/relation/ToOne<",
            "Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/objectbox/relation/ToOne;

    sget-object v1, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData_;->userPositiveData:Lio/objectbox/relation/b;

    invoke-direct {v0, p0, v1}, Lio/objectbox/relation/ToOne;-><init>(Ljava/lang/Object;Lio/objectbox/relation/b;)V

    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;->userPositiveData:Lio/objectbox/relation/ToOne;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/Long;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getProfileId()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;->profileId:Ljava/lang/String;

    return-object v0
.end method

.method public getSocialNetworkId()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;->socialNetworkId:I

    return v0
.end method

.method public getUserPositiveData()Lio/objectbox/relation/ToOne;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/objectbox/relation/ToOne<",
            "Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;->userPositiveData:Lio/objectbox/relation/ToOne;

    return-object v0
.end method

.method public isSure()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;->sure:Z

    return v0
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;->id:Ljava/lang/Long;

    return-void
.end method

.method public setProfileId(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;->profileId:Ljava/lang/String;

    return-void
.end method

.method public setSocialNetworkId(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;->socialNetworkId:I

    return-void
.end method

.method public setSure(Z)V
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;->sure:Z

    return-void
.end method

.method public setUserPositiveData(Lio/objectbox/relation/ToOne;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/objectbox/relation/ToOne<",
            "Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;",
            ">;)V"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;->userPositiveData:Lio/objectbox/relation/ToOne;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UserPositiveSocialData{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;->id:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", socialNetworkId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;->socialNetworkId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", profileId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;->profileId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", sure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;->sure:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", userPositiveData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;->userPositiveData:Lio/objectbox/relation/ToOne;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
