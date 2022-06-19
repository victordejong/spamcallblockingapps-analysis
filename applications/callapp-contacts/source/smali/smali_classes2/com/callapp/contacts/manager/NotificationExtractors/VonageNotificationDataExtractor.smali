.class public Lcom/callapp/contacts/manager/NotificationExtractors/VonageNotificationDataExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/ManagedLifecycle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/service/notification/StatusBarNotification;)Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 59
    :cond_0
    invoke-static {p0}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->c(Landroid/service/notification/StatusBarNotification;)I

    move-result p0

    if-eqz p0, :cond_1

    packed-switch p0, :pswitch_data_0

    .line 68
    sget-object p0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;->UNKNOWN:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    return-object p0

    .line 64
    :pswitch_0
    sget-object p0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;->CALL:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    return-object p0

    .line 66
    :pswitch_1
    sget-object p0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;->MISSED_CALL:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    return-object p0

    .line 62
    :cond_1
    sget-object p0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;->TEXT:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xe0300
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;
    .locals 5

    .line 1074
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    move-object v4, v3

    goto :goto_1

    :cond_1
    const-string v0, "@"

    .line 1079
    invoke-static {p0, v0}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->a(Ljava/lang/CharSequence;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1080
    array-length v0, p0

    if-nez v0, :cond_2

    goto :goto_0

    .line 1085
    :cond_2
    aget-object v0, p0, v1

    invoke-static {v0}, Lcom/callapp/contacts/manager/CallAppClipboardManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 1090
    :cond_3
    new-instance v4, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;

    invoke-direct {v4}, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;-><init>()V

    .line 1091
    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->phoneAsRaw:Ljava/lang/String;

    .line 1093
    array-length v0, p0

    if-le v0, v2, :cond_4

    .line 1094
    aget-object p0, p0, v2

    iput-object p0, v4, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->groupName:Ljava/lang/String;

    :cond_4
    :goto_1
    if-nez v4, :cond_c

    .line 1100
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_3

    :cond_5
    const-string p0, ":"

    .line 1105
    invoke-static {p1, p0}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->a(Ljava/lang/CharSequence;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 1106
    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_3

    .line 1110
    :cond_6
    array-length v0, p0

    if-ne v0, v2, :cond_9

    .line 1129
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    const-string v0, " "

    .line 1132
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_8

    goto :goto_2

    .line 1137
    :cond_8
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1113
    :goto_2
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_3

    .line 1118
    :cond_9
    aget-object p0, p0, v1

    invoke-static {p0}, Lcom/callapp/contacts/manager/CallAppClipboardManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object p0

    if-nez p0, :cond_a

    goto :goto_3

    .line 1123
    :cond_a
    new-instance v3, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;

    invoke-direct {v3}, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;-><init>()V

    .line 1124
    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->phoneAsRaw:Ljava/lang/String;

    :cond_b
    :goto_3
    move-object v4, v3

    :cond_c
    return-object v4
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
