.class public Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification;
.super Lcom/callapp/contacts/manager/NotificationManager$ContactDataForNotification;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImDataForCallappNotification"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/manager/NotificationManager$ContactDataForNotification<",
        "Lcom/callapp/contacts/model/objectbox/ExtractedInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/model/objectbox/ExtractedInfo;)V
    .locals 0

    .line 401
    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/NotificationManager$ContactDataForNotification;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getNameForNotificationLine()Ljava/lang/String;
    .locals 5

    .line 421
    invoke-super {p0}, Lcom/callapp/contacts/manager/NotificationManager$ContactDataForNotification;->getNameForNotificationLine()Ljava/lang/String;

    move-result-object v0

    .line 422
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification;->a:Ljava/lang/Object;

    check-cast v1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    iget-object v1, v1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->groupName:Ljava/lang/String;

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f1203a4

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification;->a:Ljava/lang/Object;

    check-cast v4, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    iget-object v4, v4, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->groupName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSourceDate()Ljava/util/Date;
    .locals 3

    .line 406
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification;->a:Ljava/lang/Object;

    check-cast v1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    iget-wide v1, v1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->when:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getSourceName()Ljava/lang/String;
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification;->a:Ljava/lang/Object;

    check-cast v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    iget-object v0, v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->senderName:Ljava/lang/String;

    return-object v0
.end method

.method public getSourcePhone()Lcom/callapp/framework/phone/Phone;
    .locals 2

    .line 416
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification;->a:Ljava/lang/Object;

    check-cast v1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    iget-object v1, v1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->phoneAsRaw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification;->a:Ljava/lang/Object;

    check-cast v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
