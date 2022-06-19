.class public Lcom/callapp/contacts/sync/model/SyncerDetails;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field transient __boxStore:Lio/objectbox/BoxStore;

.field protected id:Ljava/lang/Long;

.field private lastSyncDate:J

.field private syncerData:Lio/objectbox/relation/ToOne;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/relation/ToOne<",
            "Lcom/callapp/contacts/sync/model/SyncerData;",
            ">;"
        }
    .end annotation
.end field

.field private syncerKeyName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/objectbox/relation/ToOne;

    sget-object v1, Lcom/callapp/contacts/sync/model/SyncerDetails_;->syncerData:Lio/objectbox/relation/b;

    invoke-direct {v0, p0, v1}, Lio/objectbox/relation/ToOne;-><init>(Ljava/lang/Object;Lio/objectbox/relation/b;)V

    iput-object v0, p0, Lcom/callapp/contacts/sync/model/SyncerDetails;->syncerData:Lio/objectbox/relation/ToOne;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 56
    :cond_1
    check-cast p1, Lcom/callapp/contacts/sync/model/SyncerDetails;

    .line 58
    iget-wide v1, p0, Lcom/callapp/contacts/sync/model/SyncerDetails;->lastSyncDate:J

    iget-wide v3, p1, Lcom/callapp/contacts/sync/model/SyncerDetails;->lastSyncDate:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    return v0

    .line 59
    :cond_2
    iget-object v1, p0, Lcom/callapp/contacts/sync/model/SyncerDetails;->id:Ljava/lang/Long;

    iget-object v2, p1, Lcom/callapp/contacts/sync/model/SyncerDetails;->id:Ljava/lang/Long;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 60
    :cond_3
    iget-object v1, p0, Lcom/callapp/contacts/sync/model/SyncerDetails;->syncerKeyName:Ljava/lang/String;

    iget-object v2, p1, Lcom/callapp/contacts/sync/model/SyncerDetails;->syncerKeyName:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v0

    .line 62
    :cond_4
    iget-object v0, p0, Lcom/callapp/contacts/sync/model/SyncerDetails;->syncerData:Lio/objectbox/relation/ToOne;

    iget-object p1, p1, Lcom/callapp/contacts/sync/model/SyncerDetails;->syncerData:Lio/objectbox/relation/ToOne;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_5
    :goto_0
    return v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/callapp/contacts/sync/model/SyncerDetails;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getLastSyncDate()J
    .locals 2

    .line 36
    iget-wide v0, p0, Lcom/callapp/contacts/sync/model/SyncerDetails;->lastSyncDate:J

    return-wide v0
.end method

.method public getSyncerData()Lio/objectbox/relation/ToOne;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/objectbox/relation/ToOne<",
            "Lcom/callapp/contacts/sync/model/SyncerData;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/callapp/contacts/sync/model/SyncerDetails;->syncerData:Lio/objectbox/relation/ToOne;

    return-object v0
.end method

.method public getSyncerKeyName()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/callapp/contacts/sync/model/SyncerDetails;->syncerKeyName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .line 67
    iget-object v0, p0, Lcom/callapp/contacts/sync/model/SyncerDetails;->id:Ljava/lang/Long;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 68
    iget-object v2, p0, Lcom/callapp/contacts/sync/model/SyncerDetails;->syncerKeyName:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 69
    iget-wide v2, p0, Lcom/callapp/contacts/sync/model/SyncerDetails;->lastSyncDate:J

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 70
    iget-object v2, p0, Lcom/callapp/contacts/sync/model/SyncerDetails;->syncerData:Lio/objectbox/relation/ToOne;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lio/objectbox/relation/ToOne;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/callapp/contacts/sync/model/SyncerDetails;->id:Ljava/lang/Long;

    return-void
.end method

.method public setLastSyncDate(J)V
    .locals 0

    .line 40
    iput-wide p1, p0, Lcom/callapp/contacts/sync/model/SyncerDetails;->lastSyncDate:J

    return-void
.end method

.method public setSyncerData(Lio/objectbox/relation/ToOne;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/objectbox/relation/ToOne<",
            "Lcom/callapp/contacts/sync/model/SyncerData;",
            ">;)V"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/callapp/contacts/sync/model/SyncerDetails;->syncerData:Lio/objectbox/relation/ToOne;

    return-void
.end method

.method public setSyncerKeyName(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/callapp/contacts/sync/model/SyncerDetails;->syncerKeyName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SyncerDetails{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/sync/model/SyncerDetails;->id:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", syncerKeyName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/sync/model/SyncerDetails;->syncerKeyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", lastSyncDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/callapp/contacts/sync/model/SyncerDetails;->lastSyncDate:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", syncerData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/sync/model/SyncerDetails;->syncerData:Lio/objectbox/relation/ToOne;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
