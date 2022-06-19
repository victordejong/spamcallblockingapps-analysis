.class public Lcom/callapp/contacts/activity/callreminder/CallRemindersData;
.super Lcom/callapp/contacts/model/ReminderData;
.source "SourceFile"


# instance fields
.field public jobId:Ljava/lang/String;

.field public notificationId:Ljava/lang/Long;

.field public notificationTime:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/util/Date;Lcom/callapp/framework/phone/Phone;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 9

    .line 16
    sget-object v8, Lcom/callapp/contacts/model/ReminderType;->CALL:Lcom/callapp/contacts/model/ReminderType;

    const-wide/16 v1, -0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v8}, Lcom/callapp/contacts/model/ReminderData;-><init>(JLjava/util/Date;JLcom/callapp/framework/phone/Phone;Ljava/lang/String;Lcom/callapp/contacts/model/ReminderType;)V

    .line 17
    iput-object p5, p0, Lcom/callapp/contacts/activity/callreminder/CallRemindersData;->notificationTime:Ljava/lang/Long;

    .line 18
    iput-object p4, p0, Lcom/callapp/contacts/activity/callreminder/CallRemindersData;->notificationId:Ljava/lang/Long;

    .line 19
    iput-object p6, p0, Lcom/callapp/contacts/activity/callreminder/CallRemindersData;->jobId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public calculateCacheKey()Ljava/lang/String;
    .locals 5

    .line 29
    iget-wide v0, p0, Lcom/callapp/contacts/activity/callreminder/CallRemindersData;->contactId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 30
    invoke-super {p0}, Lcom/callapp/contacts/model/ReminderData;->calculateCacheKey()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 32
    iget-object v2, p0, Lcom/callapp/contacts/activity/callreminder/CallRemindersData;->notificationId:Ljava/lang/Long;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/callapp/contacts/activity/callreminder/CallRemindersData;->notificationTime:Ljava/lang/Long;

    aput-object v2, v0, v1

    const-string v1, "Reminder_data_%s_%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 56
    :cond_0
    invoke-super {p0, p1}, Lcom/callapp/contacts/model/ReminderData;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 58
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v1, v3, :cond_2

    return v2

    .line 60
    :cond_2
    check-cast p1, Lcom/callapp/contacts/activity/callreminder/CallRemindersData;

    .line 61
    iget-wide v3, p0, Lcom/callapp/contacts/activity/callreminder/CallRemindersData;->contactId:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_3

    .line 62
    iget-wide v3, p0, Lcom/callapp/contacts/activity/callreminder/CallRemindersData;->contactId:J

    iget-wide v5, p1, Lcom/callapp/contacts/activity/callreminder/CallRemindersData;->contactId:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_7

    return v2

    .line 66
    :cond_3
    iget-object v1, p0, Lcom/callapp/contacts/activity/callreminder/CallRemindersData;->jobId:Ljava/lang/String;

    iget-object v3, p1, Lcom/callapp/contacts/activity/callreminder/CallRemindersData;->jobId:Ljava/lang/String;

    if-eq v1, v3, :cond_4

    return v2

    .line 68
    :cond_4
    iget-object v1, p0, Lcom/callapp/contacts/activity/callreminder/CallRemindersData;->notificationId:Ljava/lang/Long;

    iget-object v3, p1, Lcom/callapp/contacts/activity/callreminder/CallRemindersData;->notificationId:Ljava/lang/Long;

    if-eq v1, v3, :cond_5

    return v2

    .line 70
    :cond_5
    iget-object v1, p0, Lcom/callapp/contacts/activity/callreminder/CallRemindersData;->notificationTime:Ljava/lang/Long;

    if-nez v1, :cond_6

    .line 71
    iget-object p1, p1, Lcom/callapp/contacts/activity/callreminder/CallRemindersData;->notificationTime:Ljava/lang/Long;

    if-eqz p1, :cond_7

    return v2

    .line 73
    :cond_6
    iget-object p1, p1, Lcom/callapp/contacts/activity/callreminder/CallRemindersData;->notificationTime:Ljava/lang/Long;

    invoke-virtual {v1, p1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public hashCode()I
    .locals 7

    .line 39
    invoke-super {p0}, Lcom/callapp/contacts/model/ReminderData;->hashCode()I

    move-result v0

    .line 40
    iget-wide v1, p0, Lcom/callapp/contacts/activity/callreminder/CallRemindersData;->contactId:J

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-lez v6, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 41
    iget-wide v1, p0, Lcom/callapp/contacts/activity/callreminder/CallRemindersData;->contactId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v3

    goto :goto_1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    .line 43
    iget-object v1, p0, Lcom/callapp/contacts/activity/callreminder/CallRemindersData;->notificationId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 44
    iget-object v1, p0, Lcom/callapp/contacts/activity/callreminder/CallRemindersData;->notificationTime:Ljava/lang/Long;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 45
    iget-object v1, p0, Lcom/callapp/contacts/activity/callreminder/CallRemindersData;->jobId:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    :cond_2
    :goto_1
    add-int/2addr v0, v3

    return v0
.end method

.method public includeContactIdInHashcodeAndEquals()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
