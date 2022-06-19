.class public Lcom/callapp/contacts/manager/NotificationExtractors/ViberNotificationDataExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/ManagedLifecycle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/service/notification/StatusBarNotification;)Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;
    .locals 2

    .line 53
    invoke-static {p0}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->e(Landroid/service/notification/StatusBarNotification;)Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;

    move-result-object v0

    if-nez v0, :cond_1

    .line 56
    invoke-static {p0}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->a(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/manager/CallAppClipboardManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    if-nez v1, :cond_0

    .line 58
    invoke-static {p0}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->b(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/callapp/contacts/manager/CallAppClipboardManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    .line 61
    new-instance p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;

    invoke-direct {p0}, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;-><init>()V

    .line 62
    invoke-virtual {v1}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->phoneAsRaw:Ljava/lang/String;

    return-object p0

    :cond_1
    return-object v0
.end method

.method static a(Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;Landroid/service/notification/StatusBarNotification;)V
    .locals 7

    .line 90
    invoke-static {p1}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->a(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-static {p1}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->b(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-static {p1}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->h(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object p1

    .line 93
    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->phoneAsRaw:Ljava/lang/String;

    .line 1098
    sget-object v3, Lcom/callapp/contacts/manager/NotificationExtractors/ViberNotificationDataExtractor$1;->a:[I

    iget-object v4, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->comType:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    invoke-virtual {v4}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    goto/16 :goto_0

    .line 1107
    :cond_0
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, ":"

    .line 1108
    invoke-static {p1, v3}, Lcom/callapp/framework/util/StringUtils;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1109
    invoke-static {p1, v3}, Lcom/callapp/framework/util/StringUtils;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1110
    invoke-static {v4}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v5}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1111
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1113
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1114
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1115
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->senderName:Ljava/lang/String;

    goto :goto_0

    .line 1118
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->groupName:Ljava/lang/String;

    goto :goto_0

    .line 1123
    :cond_2
    invoke-static {v1, v3}, Lcom/callapp/framework/util/StringUtils;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1124
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/callapp/framework/util/StringUtils;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1126
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->senderName:Ljava/lang/String;

    .line 1129
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->groupName:Ljava/lang/String;

    goto :goto_0

    .line 1103
    :cond_4
    iput-object v1, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->senderName:Ljava/lang/String;

    goto :goto_0

    .line 1100
    :cond_5
    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->senderName:Ljava/lang/String;

    :cond_6
    :goto_0
    return-void
.end method

.method static b(Landroid/service/notification/StatusBarNotification;)Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;
    .locals 2

    .line 71
    invoke-static {p0}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->j(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    sget-object p0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;->UNKNOWN:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    return-object p0

    .line 76
    :cond_0
    sget-object v1, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 77
    invoke-static {p0}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->k(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "missed_call"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 78
    sget-object p0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;->MISSED_CALL:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    return-object p0

    .line 80
    :cond_1
    sget-object p0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;->TEXT:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    return-object p0

    .line 82
    :cond_2
    sget-object p0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 83
    sget-object p0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;->CALL:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    return-object p0

    .line 85
    :cond_3
    sget-object p0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;->UNKNOWN:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

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
