.class public Lcom/callapp/contacts/manager/NotificationExtractors/TelegramNotificationDataExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/ManagedLifecycle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/service/notification/StatusBarNotification;)Lcom/callapp/contacts/model/objectbox/ExtractedInfo;
    .locals 4

    .line 23
    invoke-static {p0}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->e(Landroid/service/notification/StatusBarNotification;)Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 24
    iget-object v1, v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->phoneAsRaw:Ljava/lang/String;

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 25
    invoke-static {p0}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->h(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-static {p0}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->i(Landroid/service/notification/StatusBarNotification;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1041
    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1042
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->senderName:Ljava/lang/String;

    goto :goto_0

    .line 1046
    :cond_0
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, ":"

    .line 1050
    invoke-static {v1, v2}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->a(Ljava/lang/CharSequence;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1051
    array-length v2, v1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_2

    const/4 v2, 0x0

    .line 1055
    aget-object v1, v1, v2

    const-string v3, "@"

    .line 1056
    invoke-static {v1, v3}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->a(Ljava/lang/CharSequence;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1059
    aget-object v3, v1, v2

    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1060
    aget-object v2, v1, v2

    iput-object v2, v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->senderName:Ljava/lang/String;

    .line 1063
    :cond_1
    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 1066
    aget-object v2, v1, v3

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1067
    aget-object v1, v1, v3

    iput-object v1, v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->groupName:Ljava/lang/String;

    .line 28
    :cond_2
    :goto_0
    sget-object v1, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;->TEXT:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    iput-object v1, v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->comType:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    .line 29
    sget-object v1, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->TELEGRAM:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    iput-object v1, v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->recognizedPersonOrigin:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    .line 30
    invoke-static {p0}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->d(Landroid/service/notification/StatusBarNotification;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->when:J

    .line 31
    invoke-static {v0}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->a(Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;)V

    .line 32
    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->build()Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public init()V
    .locals 0

    return-void
.end method
