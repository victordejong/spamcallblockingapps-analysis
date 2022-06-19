.class public Lcom/callapp/contacts/manager/NotificationExtractors/WhatsAppNotificationDataExtractor;
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
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 172
    :cond_0
    invoke-static {p0}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->c(Landroid/service/notification/StatusBarNotification;)I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x7

    if-eq p0, v0, :cond_2

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const v0, 0x7f090431

    if-eq p0, v0, :cond_1

    const v0, 0x7f0f0038

    if-eq p0, v0, :cond_1

    const v0, 0x7f100031

    if-eq p0, v0, :cond_1

    .line 184
    sget-object p0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;->UNKNOWN:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    return-object p0

    .line 182
    :cond_1
    sget-object p0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;->CALL:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    return-object p0

    .line 177
    :cond_2
    sget-object p0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;->MISSED_CALL:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    return-object p0

    .line 175
    :cond_3
    sget-object p0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;->TEXT:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    return-object p0
.end method

.method static a(Ljava/lang/String;)Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;
    .locals 1

    .line 44
    sget-object v0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->WHATSAPP:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    iget-object v0, v0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->pkgName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->WHATSAPP:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    return-object p0

    :cond_0
    sget-object p0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->WHATSAPP4B:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;
    .locals 7

    const-string v0, "@"

    .line 1097
    invoke-static {p0, v0}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->a(Ljava/lang/CharSequence;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez p4, :cond_0

    .line 1098
    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b([Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1099
    aget-object p4, v1, v2

    invoke-static {p4}, Lcom/callapp/contacts/manager/CallAppClipboardManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object p4

    :cond_0
    const-string v3, "s.whatsapp.net"

    if-nez p4, :cond_1

    .line 1102
    invoke-static {p3, v3}, Lcom/callapp/framework/util/StringUtils;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1104
    invoke-static {p3, v0}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->a(Ljava/lang/CharSequence;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1105
    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b([Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1106
    aget-object p4, v1, v2

    invoke-static {p4}, Lcom/callapp/contacts/manager/CallAppClipboardManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object p4

    :cond_1
    if-nez p4, :cond_2

    const-string v4, "g.us"

    .line 1110
    invoke-static {p3, v4}, Lcom/callapp/framework/util/StringUtils;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v1, "-"

    .line 1112
    invoke-static {p3, v1}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->a(Ljava/lang/CharSequence;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1113
    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b([Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 1114
    aget-object p3, v1, v2

    invoke-static {p3}, Lcom/callapp/contacts/manager/CallAppClipboardManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object p4

    :cond_2
    const-string p3, ":"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p4, :cond_3

    move-object v6, v5

    goto :goto_0

    .line 1122
    :cond_3
    new-instance v6, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;

    invoke-direct {v6}, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;-><init>()V

    .line 1123
    invoke-virtual {p4}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object p4

    iput-object p4, v6, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->phoneAsRaw:Ljava/lang/String;

    .line 1125
    array-length p4, v1

    if-ne p4, v4, :cond_4

    .line 1127
    invoke-static {p0, p3}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->a(Ljava/lang/CharSequence;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 1128
    array-length p4, p0

    if-lez p4, :cond_5

    .line 1129
    aget-object p0, p0, v2

    iput-object p0, v6, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->groupName:Ljava/lang/String;

    goto :goto_0

    .line 1132
    :cond_4
    array-length p0, v1

    if-le p0, v4, :cond_5

    .line 1136
    aget-object p0, v1, v4

    invoke-static {p0, v3}, Lcom/callapp/framework/util/StringUtils;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_5

    .line 1137
    aget-object p0, v1, v4

    iput-object p0, v6, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->groupName:Ljava/lang/String;

    :cond_5
    :goto_0
    if-nez v6, :cond_d

    .line 1147
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_7

    :cond_6
    :goto_1
    move-object v6, v5

    goto :goto_4

    .line 1151
    :cond_7
    invoke-static {p1, p3}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->a(Ljava/lang/CharSequence;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 1152
    array-length p1, p0

    if-nez p1, :cond_8

    goto :goto_1

    .line 1156
    :cond_8
    aget-object p0, p0, v2

    invoke-static {p0}, Lcom/callapp/contacts/manager/CallAppClipboardManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object p0

    if-nez p0, :cond_9

    goto :goto_1

    .line 1161
    :cond_9
    new-instance p1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;

    invoke-direct {p1}, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;-><init>()V

    .line 1162
    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->phoneAsRaw:Ljava/lang/String;

    .line 1189
    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_b

    :cond_a
    :goto_2
    move-object p0, v5

    goto :goto_3

    .line 1192
    :cond_b
    invoke-static {p2, v0}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->a(Ljava/lang/CharSequence;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_a

    .line 1193
    array-length p3, p0

    if-gt p3, v4, :cond_c

    goto :goto_2

    .line 1197
    :cond_c
    aget-object p0, p0, v4

    .line 1163
    :goto_3
    iput-object p0, p1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->groupName:Ljava/lang/String;

    move-object v6, p1

    :cond_d
    :goto_4
    if-nez v6, :cond_13

    .line 2064
    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_e

    goto :goto_5

    .line 2068
    :cond_e
    invoke-static {p2, v0}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->a(Ljava/lang/CharSequence;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 2069
    array-length p1, p0

    if-nez p1, :cond_f

    goto :goto_5

    .line 2073
    :cond_f
    aget-object p1, p0, v2

    const-string p2, "+"

    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_10

    goto :goto_5

    .line 2078
    :cond_10
    aget-object p2, p0, v2

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/manager/CallAppClipboardManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    if-nez p1, :cond_11

    goto :goto_5

    .line 2083
    :cond_11
    new-instance v5, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;

    invoke-direct {v5}, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;-><init>()V

    .line 2084
    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v5, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->phoneAsRaw:Ljava/lang/String;

    .line 2086
    array-length p1, p0

    if-le p1, v4, :cond_12

    .line 2087
    aget-object p0, p0, v4

    iput-object p0, v5, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->groupName:Ljava/lang/String;

    :cond_12
    :goto_5
    move-object v6, v5

    :cond_13
    return-object v6
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
