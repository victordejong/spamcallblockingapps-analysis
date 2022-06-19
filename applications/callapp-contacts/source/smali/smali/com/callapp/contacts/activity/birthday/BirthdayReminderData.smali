.class public Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;
.super Lcom/callapp/contacts/model/ReminderData;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x5450d904bb35c3f8L


# instance fields
.field public final netId:Ljava/lang/Integer;

.field public final socialId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Date;JLcom/callapp/framework/phone/Phone;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 10

    move-object v9, p0

    .line 16
    sget-object v8, Lcom/callapp/contacts/model/ReminderType;->BIRTHDAY:Lcom/callapp/contacts/model/ReminderType;

    const-wide/16 v1, 0x0

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/callapp/contacts/model/ReminderData;-><init>(JLjava/util/Date;JLcom/callapp/framework/phone/Phone;Ljava/lang/String;Lcom/callapp/contacts/model/ReminderType;)V

    move-object/from16 v0, p6

    .line 17
    iput-object v0, v9, Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;->netId:Ljava/lang/Integer;

    move-object/from16 v0, p7

    .line 18
    iput-object v0, v9, Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;->socialId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public calculateCacheKey()Ljava/lang/String;
    .locals 5

    .line 28
    iget-wide v0, p0, Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;->contactId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 29
    invoke-super {p0}, Lcom/callapp/contacts/model/ReminderData;->calculateCacheKey()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 31
    iget-object v2, p0, Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;->netId:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;->socialId:Ljava/lang/String;

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

    .line 52
    :cond_0
    invoke-super {p0, p1}, Lcom/callapp/contacts/model/ReminderData;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 54
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v1, v3, :cond_2

    return v2

    .line 56
    :cond_2
    check-cast p1, Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;

    .line 57
    iget-wide v3, p0, Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;->contactId:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_3

    .line 58
    iget-wide v3, p0, Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;->contactId:J

    iget-wide v5, p1, Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;->contactId:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_6

    return v2

    .line 63
    :cond_3
    iget-object v1, p0, Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;->netId:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;->netId:Ljava/lang/Integer;

    if-eq v1, v3, :cond_4

    return v2

    .line 65
    :cond_4
    iget-object v1, p0, Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;->socialId:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 66
    iget-object p1, p1, Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;->socialId:Ljava/lang/String;

    if-eqz p1, :cond_6

    return v2

    .line 68
    :cond_5
    iget-object p1, p1, Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;->socialId:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 6

    .line 38
    invoke-super {p0}, Lcom/callapp/contacts/model/ReminderData;->hashCode()I

    move-result v0

    .line 39
    iget-wide v1, p0, Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;->contactId:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 40
    iget-wide v1, p0, Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;->contactId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    .line 42
    iget-object v1, p0, Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;->netId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 43
    iget-object v1, p0, Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;->socialId:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public includeContactIdInHashcodeAndEquals()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
