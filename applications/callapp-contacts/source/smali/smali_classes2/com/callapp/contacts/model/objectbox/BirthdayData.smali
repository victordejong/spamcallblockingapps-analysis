.class public Lcom/callapp/contacts/model/objectbox/BirthdayData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/model/objectbox/MonitoredDeviceID;


# instance fields
.field private contactId:J

.field private dayOfMonth:I

.field private displayName:Ljava/lang/String;

.field protected id:Ljava/lang/Long;

.field private month:I

.field private phone:Lcom/callapp/framework/phone/Phone;

.field private phoneOrIdKey:Ljava/lang/String;

.field private socialNetId:I

.field private socialProfileId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/BirthdayData;->id:Ljava/lang/Long;

    .line 45
    iput-object p2, p0, Lcom/callapp/contacts/model/objectbox/BirthdayData;->phoneOrIdKey:Ljava/lang/String;

    .line 46
    iput p3, p0, Lcom/callapp/contacts/model/objectbox/BirthdayData;->dayOfMonth:I

    .line 47
    iput p4, p0, Lcom/callapp/contacts/model/objectbox/BirthdayData;->month:I

    .line 48
    iput p5, p0, Lcom/callapp/contacts/model/objectbox/BirthdayData;->socialNetId:I

    .line 49
    iput-object p6, p0, Lcom/callapp/contacts/model/objectbox/BirthdayData;->socialProfileId:Ljava/lang/String;

    .line 50
    iput-object p7, p0, Lcom/callapp/contacts/model/objectbox/BirthdayData;->displayName:Ljava/lang/String;

    return-void
.end method

.method public static birthdayPojoToReminder(Lcom/callapp/contacts/model/objectbox/BirthdayData;)Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;
    .locals 10

    .line 139
    invoke-virtual {p0}, Lcom/callapp/contacts/model/objectbox/BirthdayData;->isConnectedToSocialNetwork()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/callapp/contacts/model/objectbox/BirthdayData;->getSocialNetId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 141
    invoke-virtual {p0}, Lcom/callapp/contacts/model/objectbox/BirthdayData;->getSocialProfileId()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    move-object v8, v1

    goto :goto_0

    :cond_0
    move-object v8, v1

    move-object v9, v8

    .line 144
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    .line 145
    invoke-virtual {p0}, Lcom/callapp/contacts/model/objectbox/BirthdayData;->getDayOfMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x2

    .line 146
    invoke-virtual {p0}, Lcom/callapp/contacts/model/objectbox/BirthdayData;->getMonth()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 148
    new-instance v1, Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {p0}, Lcom/callapp/contacts/model/objectbox/BirthdayData;->getContactId()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/callapp/contacts/model/objectbox/BirthdayData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v6

    invoke-virtual {p0}, Lcom/callapp/contacts/model/objectbox/BirthdayData;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;-><init>(Ljava/util/Date;JLcom/callapp/framework/phone/Phone;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public getContactId()J
    .locals 2

    .line 121
    iget-wide v0, p0, Lcom/callapp/contacts/model/objectbox/BirthdayData;->contactId:J

    return-wide v0
.end method

.method public getDayOfMonth()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/callapp/contacts/model/objectbox/BirthdayData;->dayOfMonth:I

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/BirthdayData;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/BirthdayData;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getMonth()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/callapp/contacts/model/objectbox/BirthdayData;->month:I

    return v0
.end method

.method public getPhone()Lcom/callapp/framework/phone/Phone;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/BirthdayData;->phone:Lcom/callapp/framework/phone/Phone;

    return-object v0
.end method

.method public getPhoneOrIdKey()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/BirthdayData;->phoneOrIdKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSocialNetId()I
    .locals 1

    .line 97
    iget v0, p0, Lcom/callapp/contacts/model/objectbox/BirthdayData;->socialNetId:I

    return v0
.end method

.method public getSocialProfileId()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/BirthdayData;->socialProfileId:Ljava/lang/String;

    return-object v0
.end method

.method public isConnectedToSocialNetwork()Z
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/BirthdayData;->socialProfileId:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/callapp/contacts/model/objectbox/BirthdayData;->socialNetId:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isContact()Z
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/BirthdayData;->phoneOrIdKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/BirthdayData;->phoneOrIdKey:Ljava/lang/String;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setContactId(J)V
    .locals 0

    .line 125
    iput-wide p1, p0, Lcom/callapp/contacts/model/objectbox/BirthdayData;->contactId:J

    return-void
.end method

.method public setDayOfMonth(I)V
    .locals 0

    .line 77
    iput p1, p0, Lcom/callapp/contacts/model/objectbox/BirthdayData;->dayOfMonth:I

    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/BirthdayData;->displayName:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/BirthdayData;->id:Ljava/lang/Long;

    return-void
.end method

.method public setMonth(I)V
    .locals 0

    .line 85
    iput p1, p0, Lcom/callapp/contacts/model/objectbox/BirthdayData;->month:I

    return-void
.end method

.method public setPhone(Lcom/callapp/framework/phone/Phone;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/BirthdayData;->phone:Lcom/callapp/framework/phone/Phone;

    return-void
.end method

.method public setPhoneOrIdKey(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/BirthdayData;->phoneOrIdKey:Ljava/lang/String;

    return-void
.end method

.method public setSocialNetId(I)V
    .locals 0

    .line 101
    iput p1, p0, Lcom/callapp/contacts/model/objectbox/BirthdayData;->socialNetId:I

    return-void
.end method

.method public setSocialProfileId(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/BirthdayData;->socialProfileId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BirthdayData{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/BirthdayData;->id:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", phoneOrIdKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/BirthdayData;->phoneOrIdKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", dayOfMonth="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/callapp/contacts/model/objectbox/BirthdayData;->dayOfMonth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", month="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/callapp/contacts/model/objectbox/BirthdayData;->month:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", socialNetId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/callapp/contacts/model/objectbox/BirthdayData;->socialNetId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", socialProfileId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/BirthdayData;->socialProfileId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", displayName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/BirthdayData;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", contactId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/callapp/contacts/model/objectbox/BirthdayData;->contactId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", phone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/BirthdayData;->phone:Lcom/callapp/framework/phone/Phone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
