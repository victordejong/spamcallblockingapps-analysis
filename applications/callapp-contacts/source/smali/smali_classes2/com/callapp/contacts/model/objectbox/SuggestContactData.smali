.class public Lcom/callapp/contacts/model/objectbox/SuggestContactData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/model/objectbox/MonitoredDeviceID;


# instance fields
.field private contactName:Ljava/lang/String;

.field private id:Ljava/lang/Long;

.field private phoneOrIdKey:Ljava/lang/String;

.field private profileId:Ljava/lang/String;

.field private socialNetworkId:I

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/SuggestContactData;->id:Ljava/lang/Long;

    .line 28
    iput-object p2, p0, Lcom/callapp/contacts/model/objectbox/SuggestContactData;->phoneOrIdKey:Ljava/lang/String;

    .line 29
    iput p3, p0, Lcom/callapp/contacts/model/objectbox/SuggestContactData;->socialNetworkId:I

    .line 30
    iput-object p4, p0, Lcom/callapp/contacts/model/objectbox/SuggestContactData;->profileId:Ljava/lang/String;

    .line 31
    iput-object p5, p0, Lcom/callapp/contacts/model/objectbox/SuggestContactData;->userName:Ljava/lang/String;

    .line 32
    iput-object p6, p0, Lcom/callapp/contacts/model/objectbox/SuggestContactData;->contactName:Ljava/lang/String;

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

    if-eqz p1, :cond_7

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 94
    :cond_1
    check-cast p1, Lcom/callapp/contacts/model/objectbox/SuggestContactData;

    .line 96
    iget v1, p0, Lcom/callapp/contacts/model/objectbox/SuggestContactData;->socialNetworkId:I

    iget v2, p1, Lcom/callapp/contacts/model/objectbox/SuggestContactData;->socialNetworkId:I

    if-eq v1, v2, :cond_2

    return v0

    .line 97
    :cond_2
    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/SuggestContactData;->id:Ljava/lang/Long;

    iget-object v2, p1, Lcom/callapp/contacts/model/objectbox/SuggestContactData;->id:Ljava/lang/Long;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 98
    :cond_3
    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/SuggestContactData;->phoneOrIdKey:Ljava/lang/String;

    iget-object v2, p1, Lcom/callapp/contacts/model/objectbox/SuggestContactData;->phoneOrIdKey:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v0

    .line 100
    :cond_4
    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/SuggestContactData;->profileId:Ljava/lang/String;

    iget-object v2, p1, Lcom/callapp/contacts/model/objectbox/SuggestContactData;->profileId:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v0

    .line 102
    :cond_5
    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/SuggestContactData;->userName:Ljava/lang/String;

    iget-object v2, p1, Lcom/callapp/contacts/model/objectbox/SuggestContactData;->userName:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v0

    .line 104
    :cond_6
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/SuggestContactData;->contactName:Ljava/lang/String;

    iget-object p1, p1, Lcom/callapp/contacts/model/objectbox/SuggestContactData;->contactName:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_7
    :goto_0
    return v0
.end method

.method public getContactName()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/SuggestContactData;->contactName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/SuggestContactData;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getPhoneOrIdKey()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/SuggestContactData;->phoneOrIdKey:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileId()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/SuggestContactData;->profileId:Ljava/lang/String;

    return-object v0
.end method

.method public getSocialNetworkId()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/callapp/contacts/model/objectbox/SuggestContactData;->socialNetworkId:I

    return v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/SuggestContactData;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/SuggestContactData;->id:Ljava/lang/Long;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 110
    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/SuggestContactData;->phoneOrIdKey:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 111
    iget v2, p0, Lcom/callapp/contacts/model/objectbox/SuggestContactData;->socialNetworkId:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 112
    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/SuggestContactData;->profileId:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 113
    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/SuggestContactData;->userName:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 114
    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/SuggestContactData;->contactName:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v0, v1

    return v0
.end method

.method public setContactName(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/SuggestContactData;->contactName:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/SuggestContactData;->id:Ljava/lang/Long;

    return-void
.end method

.method public setPhoneOrIdKey(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/SuggestContactData;->phoneOrIdKey:Ljava/lang/String;

    return-void
.end method

.method public setProfileId(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/SuggestContactData;->profileId:Ljava/lang/String;

    return-void
.end method

.method public setSocialNetworkId(I)V
    .locals 0

    .line 62
    iput p1, p0, Lcom/callapp/contacts/model/objectbox/SuggestContactData;->socialNetworkId:I

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/SuggestContactData;->userName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SuggestContactData{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/SuggestContactData;->id:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", phoneOrIdKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/SuggestContactData;->phoneOrIdKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", socialNetworkId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/callapp/contacts/model/objectbox/SuggestContactData;->socialNetworkId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", profileId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/SuggestContactData;->profileId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", userName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/SuggestContactData;->userName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", contactName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/SuggestContactData;->contactName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
