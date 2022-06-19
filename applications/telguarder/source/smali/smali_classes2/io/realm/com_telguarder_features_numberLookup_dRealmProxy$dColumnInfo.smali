.class final Lio/realm/com_telguarder_features_numberLookup_dRealmProxy$dColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "com_telguarder_features_numberLookup_dRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/com_telguarder_features_numberLookup_dRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "dColumnInfo"
.end annotation


# instance fields
.field bColKey:J

.field cColKey:J


# direct methods
.method constructor <init>(Lio/realm/internal/ColumnInfo;Z)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lio/realm/internal/ColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    .line 53
    invoke-virtual {p0, p1, p0}, Lio/realm/com_telguarder_features_numberLookup_dRealmProxy$dColumnInfo;->copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V

    return-void
.end method

.method constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .locals 2

    const/4 v0, 0x2

    .line 45
    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    const-string v0, "d"

    .line 46
    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object p1

    const-string v0, "b"

    .line 47
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/com_telguarder_features_numberLookup_dRealmProxy$dColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_telguarder_features_numberLookup_dRealmProxy$dColumnInfo;->bColKey:J

    const-string v0, "c"

    .line 48
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/com_telguarder_features_numberLookup_dRealmProxy$dColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_telguarder_features_numberLookup_dRealmProxy$dColumnInfo;->cColKey:J

    return-void
.end method


# virtual methods
.method protected final copy(Z)Lio/realm/internal/ColumnInfo;
    .locals 1

    .line 58
    new-instance v0, Lio/realm/com_telguarder_features_numberLookup_dRealmProxy$dColumnInfo;

    invoke-direct {v0, p0, p1}, Lio/realm/com_telguarder_features_numberLookup_dRealmProxy$dColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    return-object v0
.end method

.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .locals 2

    .line 63
    check-cast p1, Lio/realm/com_telguarder_features_numberLookup_dRealmProxy$dColumnInfo;

    .line 64
    check-cast p2, Lio/realm/com_telguarder_features_numberLookup_dRealmProxy$dColumnInfo;

    .line 65
    iget-wide v0, p1, Lio/realm/com_telguarder_features_numberLookup_dRealmProxy$dColumnInfo;->bColKey:J

    iput-wide v0, p2, Lio/realm/com_telguarder_features_numberLookup_dRealmProxy$dColumnInfo;->bColKey:J

    .line 66
    iget-wide v0, p1, Lio/realm/com_telguarder_features_numberLookup_dRealmProxy$dColumnInfo;->cColKey:J

    iput-wide v0, p2, Lio/realm/com_telguarder_features_numberLookup_dRealmProxy$dColumnInfo;->cColKey:J

    return-void
.end method
