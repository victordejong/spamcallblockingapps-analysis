.class public Lcom/callapp/contacts/model/objectbox/UserMediaData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/model/objectbox/MonitoredDeviceID;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x6e8d98fd4f301aafL


# instance fields
.field protected id:Ljava/lang/Long;

.field private phoneOrIdKey:Ljava/lang/String;

.field private photoUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/UserMediaData;->id:Ljava/lang/Long;

    .line 30
    iput-object p2, p0, Lcom/callapp/contacts/model/objectbox/UserMediaData;->phoneOrIdKey:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/callapp/contacts/model/objectbox/UserMediaData;->photoUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/UserMediaData;->photoUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 51
    :cond_1
    check-cast p1, Lcom/callapp/contacts/model/objectbox/UserMediaData;

    .line 53
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/UserMediaData;->photoUrl:Ljava/lang/String;

    iget-object p1, p1, Lcom/callapp/contacts/model/objectbox/UserMediaData;->photoUrl:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/UserMediaData;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getPhoneOrIdKey()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/UserMediaData;->phoneOrIdKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoUrl()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/UserMediaData;->photoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/UserMediaData;->photoUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/UserMediaData;->id:Ljava/lang/Long;

    return-void
.end method

.method public setPhoneOrIdKey(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/UserMediaData;->phoneOrIdKey:Ljava/lang/String;

    return-void
.end method

.method public setPhotoUrl(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/UserMediaData;->photoUrl:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UserMediaData{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/UserMediaData;->id:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", phoneOrIdKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/UserMediaData;->phoneOrIdKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", photoUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/UserMediaData;->photoUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
