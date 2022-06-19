.class public Lcom/callapp/contacts/model/objectbox/PreferredSimData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/model/objectbox/MonitoredDeviceID;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/model/objectbox/PreferredSimData$SimTypeConverter;
    }
.end annotation


# instance fields
.field protected id:Ljava/lang/Long;

.field private phoneOrIdKey:Ljava/lang/String;

.field private simId:Lcom/callapp/contacts/manager/sim/SimManager$SimId;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/Long;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/PreferredSimData;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getPhoneOrIdKey()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/PreferredSimData;->phoneOrIdKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSimId()Lcom/callapp/contacts/manager/sim/SimManager$SimId;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/PreferredSimData;->simId:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    return-object v0
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/PreferredSimData;->id:Ljava/lang/Long;

    return-void
.end method

.method public setPhoneOrIdKey(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/PreferredSimData;->phoneOrIdKey:Ljava/lang/String;

    return-void
.end method

.method public setSimId(Lcom/callapp/contacts/manager/sim/SimManager$SimId;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/PreferredSimData;->simId:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PreferredSimData{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/PreferredSimData;->id:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", phoneOrIdKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/PreferredSimData;->phoneOrIdKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/PreferredSimData;->simId:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
