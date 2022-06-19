.class public Lcom/callapp/contacts/activity/blocked/SpamReminderData;
.super Lcom/callapp/contacts/model/ReminderData;
.source "SourceFile"


# instance fields
.field public isBlocked:Z

.field public isUserData:Z


# direct methods
.method public constructor <init>(JLjava/util/Date;JLcom/callapp/framework/phone/Phone;Ljava/lang/String;Lcom/callapp/contacts/model/ReminderType;ZZ)V
    .locals 0

    .line 14
    invoke-direct/range {p0 .. p8}, Lcom/callapp/contacts/model/ReminderData;-><init>(JLjava/util/Date;JLcom/callapp/framework/phone/Phone;Ljava/lang/String;Lcom/callapp/contacts/model/ReminderType;)V

    .line 15
    iput-boolean p9, p0, Lcom/callapp/contacts/activity/blocked/SpamReminderData;->isBlocked:Z

    .line 16
    iput-boolean p10, p0, Lcom/callapp/contacts/activity/blocked/SpamReminderData;->isUserData:Z

    return-void
.end method
