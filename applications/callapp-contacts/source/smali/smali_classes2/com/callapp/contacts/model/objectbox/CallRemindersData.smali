.class public Lcom/callapp/contacts/model/objectbox/CallRemindersData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private date:Ljava/util/Date;

.field private displayName:Ljava/lang/String;

.field private id:Ljava/lang/Long;

.field private jobStringId:Ljava/lang/String;

.field private notificationId:Ljava/lang/Long;

.field private notificationTime:Ljava/lang/Long;

.field private phoneAsRaw:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/CallRemindersData;->id:Ljava/lang/Long;

    .line 28
    iput-object p2, p0, Lcom/callapp/contacts/model/objectbox/CallRemindersData;->date:Ljava/util/Date;

    .line 29
    iput-object p3, p0, Lcom/callapp/contacts/model/objectbox/CallRemindersData;->displayName:Ljava/lang/String;

    .line 30
    iput-object p4, p0, Lcom/callapp/contacts/model/objectbox/CallRemindersData;->phoneAsRaw:Ljava/lang/String;

    .line 31
    iput-object p5, p0, Lcom/callapp/contacts/model/objectbox/CallRemindersData;->notificationTime:Ljava/lang/Long;

    .line 32
    iput-object p6, p0, Lcom/callapp/contacts/model/objectbox/CallRemindersData;->notificationId:Ljava/lang/Long;

    .line 33
    iput-object p7, p0, Lcom/callapp/contacts/model/objectbox/CallRemindersData;->jobStringId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/CallRemindersData;->date:Ljava/util/Date;

    .line 38
    iput-object p2, p0, Lcom/callapp/contacts/model/objectbox/CallRemindersData;->displayName:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/callapp/contacts/model/objectbox/CallRemindersData;->phoneAsRaw:Ljava/lang/String;

    .line 40
    iput-object p4, p0, Lcom/callapp/contacts/model/objectbox/CallRemindersData;->notificationTime:Ljava/lang/Long;

    .line 41
    iput-object p5, p0, Lcom/callapp/contacts/model/objectbox/CallRemindersData;->notificationId:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct/range {p0 .. p5}, Lcom/callapp/contacts/model/objectbox/CallRemindersData;-><init>(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 47
    iput-object p6, p0, Lcom/callapp/contacts/model/objectbox/CallRemindersData;->jobStringId:Ljava/lang/String;

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

    if-eqz p1, :cond_8

    .line 111
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 113
    :cond_1
    check-cast p1, Lcom/callapp/contacts/model/objectbox/CallRemindersData;

    .line 115
    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/CallRemindersData;->id:Ljava/lang/Long;

    iget-object v2, p1, Lcom/callapp/contacts/model/objectbox/CallRemindersData;->id:Ljava/lang/Long;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 116
    :cond_2
    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/CallRemindersData;->date:Ljava/util/Date;

    iget-object v2, p1, Lcom/callapp/contacts/model/objectbox/CallRemindersData;->date:Ljava/util/Date;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 117
    :cond_3
    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/CallRemindersData;->displayName:Ljava/lang/String;

    iget-object v2, p1, Lcom/callapp/contacts/model/objectbox/CallRemindersData;->displayName:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v0

    .line 119
    :cond_4
    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/CallRemindersData;->phoneAsRaw:Ljava/lang/String;

    iget-object v2, p1, Lcom/callapp/contacts/model/objectbox/CallRemindersData;->phoneAsRaw:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v0

    .line 121
    :cond_5
    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/CallRemindersData;->jobStringId:Ljava/lang/String;

    iget-object v2, p1, Lcom/callapp/contacts/model/objectbox/CallRemindersData;->jobStringId:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v0

    .line 123
    :cond_6
    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/CallRemindersData;->notificationTime:Ljava/lang/Long;

    iget-object v2, p1, Lcom/callapp/contacts/model/objectbox/CallRemindersData;->notificationTime:Ljava/lang/Long;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v0

    .line 125
    :cond_7
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/CallRemindersData;->notificationId:Ljava/lang/Long;

    iget-object p1, p1, Lcom/callapp/contacts/model/objectbox/CallRemindersData;->notificationId:Ljava/lang/Long;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_8
    :goto_0
    return v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/CallRemindersData;->date:Ljava/util/Date;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/CallRemindersData;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/CallRemindersData;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getJobStringId()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/CallRemindersData;->jobStringId:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationId()Ljava/lang/Long;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/CallRemindersData;->notificationId:Ljava/lang/Long;

    return-object v0
.end method

.method public getNotificationTime()Ljava/lang/Long;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/CallRemindersData;->notificationTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getPhoneAsRaw()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/CallRemindersData;->phoneAsRaw:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/CallRemindersData;->id:Ljava/lang/Long;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 131
    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/CallRemindersData;->date:Ljava/util/Date;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 132
    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/CallRemindersData;->displayName:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 133
    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/CallRemindersData;->phoneAsRaw:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 134
    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/CallRemindersData;->jobStringId:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 135
    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/CallRemindersData;->notificationTime:Ljava/lang/Long;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 136
    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/CallRemindersData;->notificationId:Ljava/lang/Long;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :cond_6
    add-int/2addr v0, v1

    return v0
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/CallRemindersData;->date:Ljava/util/Date;

    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/CallRemindersData;->displayName:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/CallRemindersData;->id:Ljava/lang/Long;

    return-void
.end method

.method public setJobStringId(Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/CallRemindersData;->jobStringId:Ljava/lang/String;

    return-void
.end method

.method public setNotificationId(Ljava/lang/Long;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/CallRemindersData;->notificationId:Ljava/lang/Long;

    return-void
.end method

.method public setNotificationTime(Ljava/lang/Long;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/CallRemindersData;->notificationTime:Ljava/lang/Long;

    return-void
.end method

.method public setPhoneAsRaw(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/CallRemindersData;->phoneAsRaw:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CallRemindersData{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/CallRemindersData;->id:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/CallRemindersData;->date:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", displayName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/CallRemindersData;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", phoneAsRaw=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/CallRemindersData;->phoneAsRaw:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", jobStringId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/CallRemindersData;->jobStringId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", notificationTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/CallRemindersData;->notificationTime:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", notificationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/CallRemindersData;->notificationId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
