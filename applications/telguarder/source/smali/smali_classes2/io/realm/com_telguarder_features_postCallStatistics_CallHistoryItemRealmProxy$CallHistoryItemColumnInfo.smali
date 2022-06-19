.class final Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CallHistoryItemColumnInfo"
.end annotation


# instance fields
.field dateColKey:J

.field durationColKey:J

.field numberColKey:J

.field typeColKey:J


# direct methods
.method constructor <init>(Lio/realm/internal/ColumnInfo;Z)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lio/realm/internal/ColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    .line 57
    invoke-virtual {p0, p1, p0}, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;->copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V

    return-void
.end method

.method constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .locals 2

    const/4 v0, 0x4

    .line 47
    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    const-string v0, "CallHistoryItem"

    .line 48
    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object p1

    const-string v0, "number"

    .line 49
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;->numberColKey:J

    const-string v0, "date"

    .line 50
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;->dateColKey:J

    const-string v0, "type"

    .line 51
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;->typeColKey:J

    const-string v0, "duration"

    .line 52
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;->durationColKey:J

    return-void
.end method


# virtual methods
.method protected final copy(Z)Lio/realm/internal/ColumnInfo;
    .locals 1

    .line 62
    new-instance v0, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;

    invoke-direct {v0, p0, p1}, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    return-object v0
.end method

.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .locals 2

    .line 67
    check-cast p1, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;

    .line 68
    check-cast p2, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;

    .line 69
    iget-wide v0, p1, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;->numberColKey:J

    iput-wide v0, p2, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;->numberColKey:J

    .line 70
    iget-wide v0, p1, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;->dateColKey:J

    iput-wide v0, p2, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;->dateColKey:J

    .line 71
    iget-wide v0, p1, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;->typeColKey:J

    iput-wide v0, p2, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;->typeColKey:J

    .line 72
    iget-wide v0, p1, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;->durationColKey:J

    iput-wide v0, p2, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;->durationColKey:J

    return-void
.end method
