.class public Lcom/callapp/contacts/sync/model/SyncerData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/model/objectbox/MonitoredDeviceID;


# instance fields
.field transient __boxStore:Lio/objectbox/BoxStore;

.field private id:Ljava/lang/Long;

.field private phoneOrIdKey:Ljava/lang/String;

.field private syncerDetails:Lio/objectbox/relation/ToMany;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/relation/ToMany<",
            "Lcom/callapp/contacts/sync/model/SyncerDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/objectbox/relation/ToMany;

    sget-object v1, Lcom/callapp/contacts/sync/model/SyncerData_;->syncerDetails:Lio/objectbox/relation/b;

    invoke-direct {v0, p0, v1}, Lio/objectbox/relation/ToMany;-><init>(Ljava/lang/Object;Lio/objectbox/relation/b;)V

    iput-object v0, p0, Lcom/callapp/contacts/sync/model/SyncerData;->syncerDetails:Lio/objectbox/relation/ToMany;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 55
    :cond_1
    check-cast p1, Lcom/callapp/contacts/sync/model/SyncerData;

    .line 57
    iget-object v1, p0, Lcom/callapp/contacts/sync/model/SyncerData;->id:Ljava/lang/Long;

    iget-object v2, p1, Lcom/callapp/contacts/sync/model/SyncerData;->id:Ljava/lang/Long;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 58
    :cond_2
    iget-object v1, p0, Lcom/callapp/contacts/sync/model/SyncerData;->phoneOrIdKey:Ljava/lang/String;

    iget-object v2, p1, Lcom/callapp/contacts/sync/model/SyncerData;->phoneOrIdKey:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 60
    :cond_3
    iget-object v0, p0, Lcom/callapp/contacts/sync/model/SyncerData;->syncerDetails:Lio/objectbox/relation/ToMany;

    iget-object p1, p1, Lcom/callapp/contacts/sync/model/SyncerData;->syncerDetails:Lio/objectbox/relation/ToMany;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/callapp/contacts/sync/model/SyncerData;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getPhoneOrIdKey()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/callapp/contacts/sync/model/SyncerData;->phoneOrIdKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncDate(Ljava/lang/String;)J
    .locals 3

    .line 91
    invoke-virtual {p0}, Lcom/callapp/contacts/sync/model/SyncerData;->getSyncerDetails()Lio/objectbox/relation/ToMany;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Lio/objectbox/relation/ToMany;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/sync/model/SyncerDetails;

    .line 93
    invoke-virtual {v1}, Lcom/callapp/contacts/sync/model/SyncerDetails;->getSyncerKeyName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    invoke-virtual {v1}, Lcom/callapp/contacts/sync/model/SyncerDetails;->getLastSyncDate()J

    move-result-wide v0

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSyncerDetails()Lio/objectbox/relation/ToMany;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/objectbox/relation/ToMany<",
            "Lcom/callapp/contacts/sync/model/SyncerDetails;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/callapp/contacts/sync/model/SyncerData;->syncerDetails:Lio/objectbox/relation/ToMany;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/callapp/contacts/sync/model/SyncerData;->id:Ljava/lang/Long;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 66
    iget-object v2, p0, Lcom/callapp/contacts/sync/model/SyncerData;->phoneOrIdKey:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 67
    iget-object v2, p0, Lcom/callapp/contacts/sync/model/SyncerData;->syncerDetails:Lio/objectbox/relation/ToMany;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/callapp/contacts/sync/model/SyncerData;->id:Ljava/lang/Long;

    return-void
.end method

.method public setPhoneOrIdKey(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/callapp/contacts/sync/model/SyncerData;->phoneOrIdKey:Ljava/lang/String;

    return-void
.end method

.method public setSyncDate(Ljava/lang/String;J)V
    .locals 4

    .line 73
    invoke-virtual {p0}, Lcom/callapp/contacts/sync/model/SyncerData;->getSyncerDetails()Lio/objectbox/relation/ToMany;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lio/objectbox/relation/ToMany;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/sync/model/SyncerDetails;

    .line 75
    invoke-virtual {v2}, Lcom/callapp/contacts/sync/model/SyncerDetails;->getSyncerKeyName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    .line 77
    invoke-virtual {v2, p2, p3}, Lcom/callapp/contacts/sync/model/SyncerDetails;->setLastSyncDate(J)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    .line 83
    new-instance v1, Lcom/callapp/contacts/sync/model/SyncerDetails;

    invoke-direct {v1}, Lcom/callapp/contacts/sync/model/SyncerDetails;-><init>()V

    .line 84
    invoke-virtual {v1, p1}, Lcom/callapp/contacts/sync/model/SyncerDetails;->setSyncerKeyName(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v1, p2, p3}, Lcom/callapp/contacts/sync/model/SyncerDetails;->setLastSyncDate(J)V

    .line 86
    invoke-virtual {v0, v1}, Lio/objectbox/relation/ToMany;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public setSyncerDetails(Lio/objectbox/relation/ToMany;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/objectbox/relation/ToMany<",
            "Lcom/callapp/contacts/sync/model/SyncerDetails;",
            ">;)V"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcom/callapp/contacts/sync/model/SyncerData;->syncerDetails:Lio/objectbox/relation/ToMany;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SyncerData{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/sync/model/SyncerData;->id:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", phoneOrIdKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/sync/model/SyncerData;->phoneOrIdKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", syncerDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/sync/model/SyncerData;->syncerDetails:Lio/objectbox/relation/ToMany;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
