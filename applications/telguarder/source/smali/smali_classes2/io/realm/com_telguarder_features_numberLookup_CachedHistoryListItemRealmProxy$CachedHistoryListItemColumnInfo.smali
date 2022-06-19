.class final Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CachedHistoryListItemColumnInfo"
.end annotation


# instance fields
.field calledPhoneNumberColKey:J

.field counterColKey:J

.field dateTimeInMillisColKey:J

.field infoPageUrlColKey:J

.field lastSpamCommentColKey:J

.field lastSpamDateColKey:J

.field nameColKey:J

.field phoneNumberForDisplayingColKey:J

.field securityLevelColKey:J

.field spamTypeColKey:J

.field typeColKey:J


# direct methods
.method constructor <init>(Lio/realm/internal/ColumnInfo;Z)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Lio/realm/internal/ColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    .line 71
    invoke-virtual {p0, p1, p0}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V

    return-void
.end method

.method constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .locals 2

    const/16 v0, 0xb

    .line 54
    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    const-string v0, "CachedHistoryListItem"

    .line 55
    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object p1

    const-string v0, "name"

    .line 56
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->nameColKey:J

    const-string v0, "spamType"

    .line 57
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->spamTypeColKey:J

    const-string v0, "phoneNumberForDisplaying"

    .line 58
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->phoneNumberForDisplayingColKey:J

    const-string v0, "calledPhoneNumber"

    .line 59
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->calledPhoneNumberColKey:J

    const-string v0, "counter"

    .line 60
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->counterColKey:J

    const-string v0, "lastSpamComment"

    .line 61
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->lastSpamCommentColKey:J

    const-string v0, "lastSpamDate"

    .line 62
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->lastSpamDateColKey:J

    const-string v0, "type"

    .line 63
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->typeColKey:J

    const-string v0, "dateTimeInMillis"

    .line 64
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->dateTimeInMillisColKey:J

    const-string v0, "securityLevel"

    .line 65
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->securityLevelColKey:J

    const-string v0, "infoPageUrl"

    .line 66
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->infoPageUrlColKey:J

    return-void
.end method


# virtual methods
.method protected final copy(Z)Lio/realm/internal/ColumnInfo;
    .locals 1

    .line 76
    new-instance v0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;

    invoke-direct {v0, p0, p1}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    return-object v0
.end method

.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .locals 2

    .line 81
    check-cast p1, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;

    .line 82
    check-cast p2, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;

    .line 83
    iget-wide v0, p1, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->nameColKey:J

    iput-wide v0, p2, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->nameColKey:J

    .line 84
    iget-wide v0, p1, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->spamTypeColKey:J

    iput-wide v0, p2, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->spamTypeColKey:J

    .line 85
    iget-wide v0, p1, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->phoneNumberForDisplayingColKey:J

    iput-wide v0, p2, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->phoneNumberForDisplayingColKey:J

    .line 86
    iget-wide v0, p1, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->calledPhoneNumberColKey:J

    iput-wide v0, p2, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->calledPhoneNumberColKey:J

    .line 87
    iget-wide v0, p1, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->counterColKey:J

    iput-wide v0, p2, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->counterColKey:J

    .line 88
    iget-wide v0, p1, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->lastSpamCommentColKey:J

    iput-wide v0, p2, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->lastSpamCommentColKey:J

    .line 89
    iget-wide v0, p1, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->lastSpamDateColKey:J

    iput-wide v0, p2, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->lastSpamDateColKey:J

    .line 90
    iget-wide v0, p1, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->typeColKey:J

    iput-wide v0, p2, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->typeColKey:J

    .line 91
    iget-wide v0, p1, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->dateTimeInMillisColKey:J

    iput-wide v0, p2, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->dateTimeInMillisColKey:J

    .line 92
    iget-wide v0, p1, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->securityLevelColKey:J

    iput-wide v0, p2, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->securityLevelColKey:J

    .line 93
    iget-wide v0, p1, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->infoPageUrlColKey:J

    iput-wide v0, p2, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->infoPageUrlColKey:J

    return-void
.end method
