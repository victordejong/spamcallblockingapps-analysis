.class public Lcom/callapp/contacts/model/ReminderData;
.super Lcom/callapp/contacts/activity/base/BaseAdapterItemData;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/base/BaseAdapterItemData;",
        "Ljava/lang/Comparable<",
        "Lcom/callapp/contacts/model/ReminderData;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x72880f80c5753772L


# instance fields
.field public date:Ljava/util/Date;

.field public isUrgentNote:Z

.field public note:Ljava/lang/String;

.field public final phone:Lcom/callapp/framework/phone/Phone;

.field public final reminderId:J

.field public final type:Lcom/callapp/contacts/model/ReminderType;


# direct methods
.method public constructor <init>(JLjava/util/Date;JLcom/callapp/framework/phone/Phone;Ljava/lang/String;Lcom/callapp/contacts/model/ReminderType;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/callapp/contacts/model/ReminderData;->isUrgentNote:Z

    .line 22
    iput-wide p1, p0, Lcom/callapp/contacts/model/ReminderData;->reminderId:J

    .line 23
    iput-object p3, p0, Lcom/callapp/contacts/model/ReminderData;->date:Ljava/util/Date;

    .line 24
    iput-wide p4, p0, Lcom/callapp/contacts/model/ReminderData;->contactId:J

    .line 25
    iput-object p6, p0, Lcom/callapp/contacts/model/ReminderData;->phone:Lcom/callapp/framework/phone/Phone;

    .line 26
    iput-object p7, p0, Lcom/callapp/contacts/model/ReminderData;->displayName:Ljava/lang/String;

    .line 27
    iput-object p8, p0, Lcom/callapp/contacts/model/ReminderData;->type:Lcom/callapp/contacts/model/ReminderType;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/callapp/contacts/model/ReminderData;)I
    .locals 4

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 71
    :cond_0
    iget-object v1, p1, Lcom/callapp/contacts/model/ReminderData;->type:Lcom/callapp/contacts/model/ReminderType;

    sget-object v2, Lcom/callapp/contacts/model/ReminderType;->NOTES:Lcom/callapp/contacts/model/ReminderType;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/callapp/contacts/model/ReminderData;->type:Lcom/callapp/contacts/model/ReminderType;

    sget-object v2, Lcom/callapp/contacts/model/ReminderType;->NOTES:Lcom/callapp/contacts/model/ReminderType;

    if-ne v1, v2, :cond_1

    return v0

    .line 74
    :cond_1
    iget-object v1, p1, Lcom/callapp/contacts/model/ReminderData;->type:Lcom/callapp/contacts/model/ReminderType;

    sget-object v2, Lcom/callapp/contacts/model/ReminderType;->NOTES:Lcom/callapp/contacts/model/ReminderType;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/callapp/contacts/model/ReminderData;->type:Lcom/callapp/contacts/model/ReminderType;

    sget-object v2, Lcom/callapp/contacts/model/ReminderType;->NOTES:Lcom/callapp/contacts/model/ReminderType;

    if-eq v1, v2, :cond_2

    return v3

    .line 78
    :cond_2
    iget-object v1, p1, Lcom/callapp/contacts/model/ReminderData;->type:Lcom/callapp/contacts/model/ReminderType;

    sget-object v2, Lcom/callapp/contacts/model/ReminderType;->NOTES:Lcom/callapp/contacts/model/ReminderType;

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/callapp/contacts/model/ReminderData;->type:Lcom/callapp/contacts/model/ReminderType;

    sget-object v2, Lcom/callapp/contacts/model/ReminderType;->NOTES:Lcom/callapp/contacts/model/ReminderType;

    if-ne v1, v2, :cond_5

    .line 79
    iget-boolean v1, p0, Lcom/callapp/contacts/model/ReminderData;->isUrgentNote:Z

    if-eqz v1, :cond_3

    iget-boolean v2, p1, Lcom/callapp/contacts/model/ReminderData;->isUrgentNote:Z

    if-nez v2, :cond_3

    return v0

    :cond_3
    if-nez v1, :cond_4

    .line 81
    iget-boolean v0, p1, Lcom/callapp/contacts/model/ReminderData;->isUrgentNote:Z

    if-eqz v0, :cond_4

    return v3

    .line 84
    :cond_4
    iget-object v0, p0, Lcom/callapp/contacts/model/ReminderData;->displayName:Ljava/lang/String;

    iget-object p1, p1, Lcom/callapp/contacts/model/ReminderData;->displayName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 88
    :cond_5
    iget-object v1, p0, Lcom/callapp/contacts/model/ReminderData;->date:Ljava/util/Date;

    if-nez v1, :cond_6

    iget-object v2, p1, Lcom/callapp/contacts/model/ReminderData;->date:Ljava/util/Date;

    if-eqz v2, :cond_6

    return v3

    :cond_6
    if-eqz v1, :cond_7

    .line 92
    iget-object v2, p1, Lcom/callapp/contacts/model/ReminderData;->date:Ljava/util/Date;

    if-nez v2, :cond_7

    return v0

    :cond_7
    if-nez v1, :cond_8

    .line 96
    iget-object v0, p1, Lcom/callapp/contacts/model/ReminderData;->date:Ljava/util/Date;

    if-nez v0, :cond_8

    .line 97
    iget-object v0, p0, Lcom/callapp/contacts/model/ReminderData;->displayName:Ljava/lang/String;

    iget-object p1, p1, Lcom/callapp/contacts/model/ReminderData;->displayName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 100
    :cond_8
    iget-object p1, p1, Lcom/callapp/contacts/model/ReminderData;->date:Ljava/util/Date;

    invoke-virtual {v1, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 10
    check-cast p1, Lcom/callapp/contacts/model/ReminderData;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/ReminderData;->compareTo(Lcom/callapp/contacts/model/ReminderData;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 48
    :cond_0
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 50
    :cond_1
    instance-of v1, p1, Lcom/callapp/contacts/model/ReminderData;

    if-nez v1, :cond_2

    return v2

    .line 52
    :cond_2
    check-cast p1, Lcom/callapp/contacts/model/ReminderData;

    .line 53
    iget-wide v3, p0, Lcom/callapp/contacts/model/ReminderData;->reminderId:J

    iget-wide v5, p1, Lcom/callapp/contacts/model/ReminderData;->reminderId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    .line 55
    :cond_3
    iget-object v1, p0, Lcom/callapp/contacts/model/ReminderData;->type:Lcom/callapp/contacts/model/ReminderType;

    iget-object v3, p1, Lcom/callapp/contacts/model/ReminderData;->type:Lcom/callapp/contacts/model/ReminderType;

    if-eq v1, v3, :cond_4

    return v2

    .line 57
    :cond_4
    iget-object v1, p0, Lcom/callapp/contacts/model/ReminderData;->note:Ljava/lang/String;

    iget-object v3, p1, Lcom/callapp/contacts/model/ReminderData;->note:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 59
    :cond_5
    iget-boolean v1, p0, Lcom/callapp/contacts/model/ReminderData;->isUrgentNote:Z

    iget-boolean v3, p1, Lcom/callapp/contacts/model/ReminderData;->isUrgentNote:Z

    if-eq v1, v3, :cond_6

    return v2

    .line 61
    :cond_6
    iget-object v1, p0, Lcom/callapp/contacts/model/ReminderData;->phone:Lcom/callapp/framework/phone/Phone;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/ReminderData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public getPhone()Lcom/callapp/framework/phone/Phone;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/callapp/contacts/model/ReminderData;->phone:Lcom/callapp/framework/phone/Phone;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 38
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 39
    iget-wide v1, p0, Lcom/callapp/contacts/model/ReminderData;->reminderId:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 40
    iget-object v1, p0, Lcom/callapp/contacts/model/ReminderData;->type:Lcom/callapp/contacts/model/ReminderType;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/callapp/contacts/model/ReminderType;->hashCode()I

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
