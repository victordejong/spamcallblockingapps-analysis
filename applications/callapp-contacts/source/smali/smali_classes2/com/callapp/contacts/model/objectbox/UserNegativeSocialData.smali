.class public Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field transient __boxStore:Lio/objectbox/BoxStore;

.field protected id:Ljava/lang/Long;

.field private profileId:Ljava/lang/String;

.field private socialNetworkId:I

.field private userNegativeData:Lio/objectbox/relation/ToOne;
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

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/objectbox/relation/ToOne;

    sget-object v1, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData_;->userNegativeData:Lio/objectbox/relation/b;

    invoke-direct {v0, p0, v1}, Lio/objectbox/relation/ToOne;-><init>(Ljava/lang/Object;Lio/objectbox/relation/b;)V

    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData;->userNegativeData:Lio/objectbox/relation/ToOne;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/Long;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getProfileId()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData;->profileId:Ljava/lang/String;

    return-object v0
.end method

.method public getSocialNetworkId()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData;->socialNetworkId:I

    return v0
.end method

.method public getUserNegativeData()Lio/objectbox/relation/ToOne;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/objectbox/relation/ToOne<",
            "Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData;->userNegativeData:Lio/objectbox/relation/ToOne;

    return-object v0
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData;->id:Ljava/lang/Long;

    return-void
.end method

.method public setProfileId(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData;->profileId:Ljava/lang/String;

    return-void
.end method

.method public setSocialNetworkId(I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData;->socialNetworkId:I

    return-void
.end method

.method public setUserNegativeData(Lio/objectbox/relation/ToOne;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/objectbox/relation/ToOne<",
            "Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;",
            ">;)V"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData;->userNegativeData:Lio/objectbox/relation/ToOne;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UserNegativeSocialData{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData;->id:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", socialNetworkId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData;->socialNetworkId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", profileId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData;->profileId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", userNegativeData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData;->userNegativeData:Lio/objectbox/relation/ToOne;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
