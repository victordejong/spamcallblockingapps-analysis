.class public Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/model/objectbox/MonitoredDeviceID;


# instance fields
.field transient __boxStore:Lio/objectbox/BoxStore;

.field public id:Ljava/lang/Long;

.field private personalStoreItemType:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

.field public personalStoreItemUrlDataToOne:Lio/objectbox/relation/ToOne;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/relation/ToOne<",
            "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;",
            ">;"
        }
    .end annotation
.end field

.field private phoneOrIdKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/objectbox/relation/ToOne;

    sget-object v1, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData_;->personalStoreItemUrlDataToOne:Lio/objectbox/relation/b;

    invoke-direct {v0, p0, v1}, Lio/objectbox/relation/ToOne;-><init>(Ljava/lang/Object;Lio/objectbox/relation/b;)V

    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData;->personalStoreItemUrlDataToOne:Lio/objectbox/relation/ToOne;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/objectbox/relation/ToOne;

    sget-object v1, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData_;->personalStoreItemUrlDataToOne:Lio/objectbox/relation/b;

    invoke-direct {v0, p0, v1}, Lio/objectbox/relation/ToOne;-><init>(Ljava/lang/Object;Lio/objectbox/relation/b;)V

    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData;->personalStoreItemUrlDataToOne:Lio/objectbox/relation/ToOne;

    .line 30
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData;->id:Ljava/lang/Long;

    .line 31
    iput-object p2, p0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData;->phoneOrIdKey:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData;->personalStoreItemType:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;)V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/objectbox/relation/ToOne;

    sget-object v1, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData_;->personalStoreItemUrlDataToOne:Lio/objectbox/relation/b;

    invoke-direct {v0, p0, v1}, Lio/objectbox/relation/ToOne;-><init>(Ljava/lang/Object;Lio/objectbox/relation/b;)V

    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData;->personalStoreItemUrlDataToOne:Lio/objectbox/relation/ToOne;

    .line 36
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData;->phoneOrIdKey:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData;->personalStoreItemType:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/Long;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getPersonalStoreItemType()Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData;->personalStoreItemType:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    return-object v0
.end method

.method public getPersonalStoreItemUrlDataToOne()Lio/objectbox/relation/ToOne;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/objectbox/relation/ToOne<",
            "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData;->personalStoreItemUrlDataToOne:Lio/objectbox/relation/ToOne;

    return-object v0
.end method

.method public getPhoneOrIdKey()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData;->phoneOrIdKey:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData;->id:Ljava/lang/Long;

    return-void
.end method

.method public setPersonalStoreItemType(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData;->personalStoreItemType:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    return-void
.end method

.method public setPersonalStoreItemUrlDataToOne(Lio/objectbox/relation/ToOne;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/objectbox/relation/ToOne<",
            "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;",
            ">;)V"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData;->personalStoreItemUrlDataToOne:Lio/objectbox/relation/ToOne;

    return-void
.end method

.method public setPhoneOrIdKey(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData;->phoneOrIdKey:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PersonalStoreItemUserData{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData;->id:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", phoneOrIdKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData;->phoneOrIdKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", personalStoreItemUrlDataToOne="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData;->personalStoreItemUrlDataToOne:Lio/objectbox/relation/ToOne;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", personalStoreItemType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData;->personalStoreItemType:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
