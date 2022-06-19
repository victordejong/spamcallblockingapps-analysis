.class public Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/model/objectbox/ExtractedInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public comType:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

.field public disableNotification:Z

.field public firstSeen:J

.field public groupName:Ljava/lang/String;

.field public lastNotificationShowed:J

.field public phoneAsRaw:Ljava/lang/String;

.field public recognizedPersonOrigin:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

.field public seenCount:I

.field public senderName:Ljava/lang/String;

.field public when:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBuilderAccordingToOrigin(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;)Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;
    .locals 3

    .line 113
    new-instance v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;

    invoke-direct {v0}, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;-><init>()V

    .line 114
    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/callapp/contacts/activity/contact/list/search/T9Helper;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->phoneAsRaw:Ljava/lang/String;

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->when:J

    .line 116
    iput-object p1, v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->recognizedPersonOrigin:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    .line 117
    iget-object p0, p1, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->comtype:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    iput-object p0, v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->comType:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/callapp/contacts/model/objectbox/ExtractedInfo;
    .locals 2

    .line 109
    new-instance v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;-><init>(Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;Lcom/callapp/contacts/model/objectbox/ExtractedInfo$1;)V

    return-object v0
.end method
