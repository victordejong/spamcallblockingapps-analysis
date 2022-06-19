.class public Lcom/callapp/contacts/manager/NotificationExtractors/DataExtractedInspector;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/Boolean;

.field private static b:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 6

    .line 34
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->values()[Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 36
    sget-object v4, Lcom/callapp/contacts/manager/NotificationExtractors/DataExtractedInspector$1;->a:[I

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    .line 52
    const-class v4, Lcom/callapp/contacts/manager/NotificationExtractors/DataExtractedInspector;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " does not have integrity check!"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_1

    .line 46
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationExtractors/DataExtractedInspector;->isTelegramSenderNameOK()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v3}, Lcom/callapp/contacts/manager/NotificationExtractors/DataExtractedInspector;->a(Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 47
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->ch:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 48
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v3, Lcom/callapp/contacts/manager/NotificationExtractors/DataExtractedInspector;->b:Ljava/lang/Boolean;

    goto :goto_1

    .line 40
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationExtractors/DataExtractedInspector;->isViberSenderNameOK()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v3}, Lcom/callapp/contacts/manager/NotificationExtractors/DataExtractedInspector;->a(Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 41
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->cg:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 42
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v3, Lcom/callapp/contacts/manager/NotificationExtractors/DataExtractedInspector;->a:Ljava/lang/Boolean;

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static a(Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;)Z
    .locals 10

    .line 59
    invoke-static {p0}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->a(Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    .line 60
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "IM "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": consecutive same name with different numbers found"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, 0x0

    new-array v9, v1, [Ljava/lang/String;

    const-string v4, "im data integrity"

    invoke-virtual/range {v3 .. v9}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public static a(Lcom/callapp/contacts/model/objectbox/ExtractedInfo;)Z
    .locals 3

    .line 67
    sget-object v0, Lcom/callapp/contacts/manager/NotificationExtractors/DataExtractedInspector$1;->a:[I

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->recognizedPersonOrigin:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    return v1

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->groupName:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->senderName:Ljava/lang/String;

    iget-object p0, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->phoneAsRaw:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/callapp/framework/util/StringUtils;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public static isTelegramSenderNameOK()Z
    .locals 1

    .line 26
    sget-object v0, Lcom/callapp/contacts/manager/NotificationExtractors/DataExtractedInspector;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 27
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->ch:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    sput-object v0, Lcom/callapp/contacts/manager/NotificationExtractors/DataExtractedInspector;->b:Ljava/lang/Boolean;

    .line 30
    :cond_0
    sget-object v0, Lcom/callapp/contacts/manager/NotificationExtractors/DataExtractedInspector;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isViberSenderNameOK()Z
    .locals 1

    .line 18
    sget-object v0, Lcom/callapp/contacts/manager/NotificationExtractors/DataExtractedInspector;->a:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 19
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->cg:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    sput-object v0, Lcom/callapp/contacts/manager/NotificationExtractors/DataExtractedInspector;->a:Ljava/lang/Boolean;

    .line 22
    :cond_0
    sget-object v0, Lcom/callapp/contacts/manager/NotificationExtractors/DataExtractedInspector;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
