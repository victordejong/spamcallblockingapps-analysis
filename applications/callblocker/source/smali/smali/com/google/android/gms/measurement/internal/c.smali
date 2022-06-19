.class final Lcom/google/android/gms/measurement/internal/c;
.super Lcom/google/android/gms/measurement/internal/jl;
.source "com.google.android.gms:play-services-measurement@@17.4.2"


# static fields
.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;

.field private static final d:[Ljava/lang/String;

.field private static final e:[Ljava/lang/String;

.field private static final f:[Ljava/lang/String;

.field private static final g:[Ljava/lang/String;

.field private static final h:[Ljava/lang/String;

.field private static final i:[Ljava/lang/String;


# instance fields
.field private final j:Lcom/google/android/gms/measurement/internal/h;

.field private final k:Lcom/google/android/gms/measurement/internal/jg;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1565
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "last_bundled_timestamp"

    aput-object v1, v0, v3

    const-string/jumbo v1, "ALTER TABLE events ADD COLUMN last_bundled_timestamp INTEGER;"

    aput-object v1, v0, v4

    const-string/jumbo v1, "last_bundled_day"

    aput-object v1, v0, v5

    const-string/jumbo v1, "ALTER TABLE events ADD COLUMN last_bundled_day INTEGER;"

    aput-object v1, v0, v6

    const-string/jumbo v1, "last_sampled_complex_event_id"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "ALTER TABLE events ADD COLUMN last_sampled_complex_event_id INTEGER;"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "last_sampling_rate"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "ALTER TABLE events ADD COLUMN last_sampling_rate INTEGER;"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "last_exempt_from_sampling"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "ALTER TABLE events ADD COLUMN last_exempt_from_sampling INTEGER;"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "current_session_count"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "ALTER TABLE events ADD COLUMN current_session_count INTEGER;"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/measurement/internal/c;->b:[Ljava/lang/String;

    .line 1566
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "origin"

    aput-object v1, v0, v3

    const-string/jumbo v1, "ALTER TABLE user_attributes ADD COLUMN origin TEXT;"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/gms/measurement/internal/c;->c:[Ljava/lang/String;

    .line 1567
    const/16 v0, 0x34

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "app_version"

    aput-object v1, v0, v3

    const-string/jumbo v1, "ALTER TABLE apps ADD COLUMN app_version TEXT;"

    aput-object v1, v0, v4

    const-string/jumbo v1, "app_store"

    aput-object v1, v0, v5

    const-string/jumbo v1, "ALTER TABLE apps ADD COLUMN app_store TEXT;"

    aput-object v1, v0, v6

    const-string/jumbo v1, "gmp_version"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "ALTER TABLE apps ADD COLUMN gmp_version INTEGER;"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "dev_cert_hash"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "ALTER TABLE apps ADD COLUMN dev_cert_hash INTEGER;"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "measurement_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "ALTER TABLE apps ADD COLUMN measurement_enabled INTEGER;"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "last_bundle_start_timestamp"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "ALTER TABLE apps ADD COLUMN last_bundle_start_timestamp INTEGER;"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "day"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "ALTER TABLE apps ADD COLUMN day INTEGER;"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "daily_public_events_count"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "ALTER TABLE apps ADD COLUMN daily_public_events_count INTEGER;"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "daily_events_count"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "ALTER TABLE apps ADD COLUMN daily_events_count INTEGER;"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "daily_conversions_count"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "ALTER TABLE apps ADD COLUMN daily_conversions_count INTEGER;"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "remote_config"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "ALTER TABLE apps ADD COLUMN remote_config BLOB;"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "config_fetched_time"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "ALTER TABLE apps ADD COLUMN config_fetched_time INTEGER;"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "failed_config_fetch_time"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "ALTER TABLE apps ADD COLUMN failed_config_fetch_time INTEGER;"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "app_version_int"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "ALTER TABLE apps ADD COLUMN app_version_int INTEGER;"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "firebase_instance_id"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "ALTER TABLE apps ADD COLUMN firebase_instance_id TEXT;"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "daily_error_events_count"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "ALTER TABLE apps ADD COLUMN daily_error_events_count INTEGER;"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string/jumbo v2, "daily_realtime_events_count"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string/jumbo v2, "ALTER TABLE apps ADD COLUMN daily_realtime_events_count INTEGER;"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string/jumbo v2, "health_monitor_sample"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string/jumbo v2, "ALTER TABLE apps ADD COLUMN health_monitor_sample TEXT;"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string/jumbo v2, "android_id"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string/jumbo v2, "ALTER TABLE apps ADD COLUMN android_id INTEGER;"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string/jumbo v2, "adid_reporting_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string/jumbo v2, "ALTER TABLE apps ADD COLUMN adid_reporting_enabled INTEGER;"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string/jumbo v2, "ssaid_reporting_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string/jumbo v2, "ALTER TABLE apps ADD COLUMN ssaid_reporting_enabled INTEGER;"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string/jumbo v2, "admob_app_id"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string/jumbo v2, "ALTER TABLE apps ADD COLUMN admob_app_id TEXT;"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string/jumbo v2, "linked_admob_app_id"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string/jumbo v2, "ALTER TABLE apps ADD COLUMN linked_admob_app_id TEXT;"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string/jumbo v2, "dynamite_version"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string/jumbo v2, "ALTER TABLE apps ADD COLUMN dynamite_version INTEGER;"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string/jumbo v2, "safelisted_events"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string/jumbo v2, "ALTER TABLE apps ADD COLUMN safelisted_events TEXT;"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string/jumbo v2, "ga_app_id"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string/jumbo v2, "ALTER TABLE apps ADD COLUMN ga_app_id TEXT;"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/measurement/internal/c;->d:[Ljava/lang/String;

    .line 1568
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "realtime"

    aput-object v1, v0, v3

    const-string/jumbo v1, "ALTER TABLE raw_events ADD COLUMN realtime INTEGER;"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/gms/measurement/internal/c;->e:[Ljava/lang/String;

    .line 1569
    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "has_realtime"

    aput-object v1, v0, v3

    const-string/jumbo v1, "ALTER TABLE queue ADD COLUMN has_realtime INTEGER;"

    aput-object v1, v0, v4

    const-string/jumbo v1, "retry_count"

    aput-object v1, v0, v5

    const-string/jumbo v1, "ALTER TABLE queue ADD COLUMN retry_count INTEGER;"

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/gms/measurement/internal/c;->f:[Ljava/lang/String;

    .line 1570
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "session_scoped"

    aput-object v1, v0, v3

    const-string/jumbo v1, "ALTER TABLE event_filters ADD COLUMN session_scoped BOOLEAN;"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/gms/measurement/internal/c;->g:[Ljava/lang/String;

    .line 1571
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "session_scoped"

    aput-object v1, v0, v3

    const-string/jumbo v1, "ALTER TABLE property_filters ADD COLUMN session_scoped BOOLEAN;"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/gms/measurement/internal/c;->h:[Ljava/lang/String;

    .line 1572
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "previous_install_count"

    aput-object v1, v0, v3

    const-string/jumbo v1, "ALTER TABLE app2 ADD COLUMN previous_install_count INTEGER;"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/gms/measurement/internal/c;->i:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/measurement/internal/jo;)V
    .locals 3

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/jl;-><init>(Lcom/google/android/gms/measurement/internal/jo;)V

    .line 2
    new-instance v0, Lcom/google/android/gms/measurement/internal/jg;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/measurement/internal/jg;-><init>(Lcom/google/android/gms/common/util/e;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/c;->k:Lcom/google/android/gms/measurement/internal/jg;

    .line 3
    const-string/jumbo v0, "google_app_measurement.db"

    .line 5
    new-instance v1, Lcom/google/android/gms/measurement/internal/h;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->r()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/gms/measurement/internal/h;-><init>(Lcom/google/android/gms/measurement/internal/c;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/c;->j:Lcom/google/android/gms/measurement/internal/h;

    .line 6
    return-void
.end method

.method static synthetic B()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1557
    sget-object v0, Lcom/google/android/gms/measurement/internal/c;->b:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic C()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1558
    sget-object v0, Lcom/google/android/gms/measurement/internal/c;->c:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic D()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1559
    sget-object v0, Lcom/google/android/gms/measurement/internal/c;->d:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic E()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1560
    sget-object v0, Lcom/google/android/gms/measurement/internal/c;->f:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic F()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1561
    sget-object v0, Lcom/google/android/gms/measurement/internal/c;->e:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic G()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1562
    sget-object v0, Lcom/google/android/gms/measurement/internal/c;->g:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic H()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1563
    sget-object v0, Lcom/google/android/gms/measurement/internal/c;->h:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic I()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1564
    sget-object v0, Lcom/google/android/gms/measurement/internal/c;->i:[Ljava/lang/String;

    return-object v0
.end method

.method private final M()Z
    .locals 2

    .prologue
    .line 1553
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->r()Landroid/content/Context;

    move-result-object v0

    .line 1554
    const-string/jumbo v1, "google_app_measurement.db"

    .line 1555
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private final a(Ljava/lang/String;[Ljava/lang/String;J)J
    .locals 5

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 33
    const/4 v1, 0x0

    .line 34
    :try_start_0
    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 35
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide p3

    .line 37
    if-eqz v1, :cond_0

    .line 38
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 43
    :cond_0
    :goto_0
    return-wide p3

    .line 41
    :cond_1
    if-eqz v1, :cond_0

    .line 42
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Database error"

    invoke-virtual {v2, v3, p1, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 46
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 48
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 49
    :cond_2
    throw v0
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/c;)Lcom/google/android/gms/measurement/internal/jg;
    .locals 1

    .prologue
    .line 1556
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c;->k:Lcom/google/android/gms/measurement/internal/jg;

    return-object v0
.end method

.method private final a(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1200
    .line 1201
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getType(I)I

    move-result v1

    .line 1203
    packed-switch v1, :pswitch_data_0

    .line 1211
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Loaded invalid unknown value type, ignoring it"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1212
    :goto_0
    return-object v0

    .line 1204
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Loaded invalid null value from database"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1206
    :pswitch_1
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 1207
    :pswitch_2
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 1208
    :pswitch_3
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1209
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Loaded invalid blob type value, ignoring it"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1203
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1191
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1192
    invoke-static {p2}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1193
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1194
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    :goto_0
    return-void

    .line 1195
    :cond_0
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 1196
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 1197
    :cond_1
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_2

    .line 1198
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_0

    .line 1199
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid value type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final a(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/ag$b;)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 890
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jl;->K()V

    .line 891
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 892
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 893
    invoke-static {p3}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/ag$b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 895
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 896
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v3, "Event filter had no event name. Audience definition ignored. appId, audienceId, filterId"

    .line 897
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 898
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 899
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/ag$b;->a()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/ag$b;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 900
    invoke-virtual {v1, v3, v4, v5, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move v0, v2

    .line 925
    :goto_0
    return v0

    .line 902
    :cond_1
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/ck;->ai()[B

    move-result-object v3

    .line 903
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 904
    const-string/jumbo v1, "app_id"

    invoke-virtual {v4, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    const-string/jumbo v1, "audience_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 906
    const-string/jumbo v5, "filter_id"

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/ag$b;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/ag$b;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_1
    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 907
    const-string/jumbo v1, "event_name"

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/ag$b;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    const-string/jumbo v1, "session_scoped"

    .line 909
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/ag$b;->j()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/ag$b;->k()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 910
    :cond_2
    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 911
    const-string/jumbo v0, "data"

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 912
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 913
    const-string/jumbo v1, "event_filters"

    const/4 v3, 0x0

    const/4 v5, 0x5

    .line 914
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    .line 915
    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-nez v0, :cond_3

    .line 916
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 917
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Failed to insert event filter (got -1). appId"

    .line 918
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 925
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    move-object v1, v0

    .line 906
    goto :goto_1

    .line 920
    :catch_0
    move-exception v0

    .line 921
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 922
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v3, "Error storing event filter. appId"

    .line 923
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move v0, v2

    .line 924
    goto/16 :goto_0
.end method

.method private final a(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/ag$e;)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 926
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jl;->K()V

    .line 927
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 928
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 929
    invoke-static {p3}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/ag$e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 931
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 932
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v3, "Property filter had no property name. Audience definition ignored. appId, audienceId, filterId"

    .line 933
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 934
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 935
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/ag$e;->a()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/ag$e;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 936
    invoke-virtual {v1, v3, v4, v5, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move v0, v2

    .line 962
    :goto_0
    return v0

    .line 938
    :cond_1
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/ck;->ai()[B

    move-result-object v3

    .line 939
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 940
    const-string/jumbo v1, "app_id"

    invoke-virtual {v4, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    const-string/jumbo v1, "audience_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 942
    const-string/jumbo v5, "filter_id"

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/ag$e;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/ag$e;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_1
    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 943
    const-string/jumbo v1, "property_name"

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/ag$e;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    const-string/jumbo v1, "session_scoped"

    .line 945
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/ag$e;->g()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/ag$e;->h()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 946
    :cond_2
    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 947
    const-string/jumbo v0, "data"

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 948
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 949
    const-string/jumbo v1, "property_filters"

    const/4 v3, 0x0

    const/4 v5, 0x5

    .line 950
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    .line 951
    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-nez v0, :cond_4

    .line 952
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 953
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Failed to insert property filter (got -1). appId"

    .line 954
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 955
    goto :goto_0

    :cond_3
    move-object v1, v0

    .line 942
    goto :goto_1

    .line 957
    :catch_0
    move-exception v0

    .line 958
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 959
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v3, "Error storing property filter. appId"

    .line 960
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move v0, v2

    .line 961
    goto/16 :goto_0

    .line 962
    :cond_4
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private final b(Ljava/lang/String;[Ljava/lang/String;)J
    .locals 4

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    :try_start_0
    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 20
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 22
    if-eqz v1, :cond_0

    .line 23
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 24
    :cond_0
    return-wide v2

    .line 25
    :cond_1
    :try_start_1
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string/jumbo v2, "Database returned empty set"

    invoke-direct {v0, v2}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Database error"

    invoke-virtual {v2, v3, p1, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 30
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 31
    :cond_2
    throw v0
.end method

.method private final b(Ljava/lang/String;Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1120
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1121
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jl;->K()V

    .line 1122
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 1123
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 1124
    :try_start_0
    const-string/jumbo v0, "select count(1) from audience_filter_values where app_id=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v1, v5

    .line 1125
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/c;->b(Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 1132
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v5

    .line 1133
    sget-object v6, Lcom/google/android/gms/measurement/internal/t;->E:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v5, p1, v6}, Lcom/google/android/gms/measurement/internal/b;->b(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/dr;)I

    move-result v5

    .line 1134
    const/16 v6, 0x7d0

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1135
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1137
    int-to-long v6, v5

    cmp-long v0, v0, v6

    if-gtz v0, :cond_1

    .line 1150
    :cond_0
    :goto_0
    return v2

    .line 1127
    :catch_0
    move-exception v0

    .line 1128
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 1129
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v3, "Database error querying filters. appId"

    .line 1130
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 1139
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 1140
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1141
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1142
    if-eqz v0, :cond_0

    instance-of v7, v0, Ljava/lang/Integer;

    if-eqz v7, :cond_0

    .line 1144
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1145
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1146
    :cond_2
    const-string/jumbo v0, ","

    invoke-static {v0, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "("

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1147
    const-string/jumbo v1, "audience_filter_values"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit16 v6, v6, 0x8c

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v6, "audience_id in (select audience_id from audience_filter_values where app_id=? and audience_id not in "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, " order by rowid desc limit -1 offset ?)"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    aput-object p1, v6, v2

    .line 1148
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v3

    .line 1149
    invoke-virtual {v4, v1, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1150
    if-lez v0, :cond_0

    move v2, v3

    goto/16 :goto_0
.end method


# virtual methods
.method public final A()J
    .locals 6

    .prologue
    const-wide/16 v0, -0x1

    const/4 v3, 0x0

    .line 1311
    .line 1312
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1313
    const-string/jumbo v4, "select rowid from raw_events order by rowid desc limit 1;"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1314
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 1316
    if-eqz v3, :cond_0

    .line 1317
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1330
    :cond_0
    :goto_0
    return-wide v0

    .line 1319
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 1320
    if-eqz v3, :cond_0

    .line 1321
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1323
    :catch_0
    move-exception v2

    .line 1324
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v4

    const-string/jumbo v5, "Error querying raw events"

    invoke-virtual {v4, v5, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1325
    if-eqz v3, :cond_0

    .line 1326
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1327
    :catchall_0
    move-exception v0

    if-eqz v3, :cond_2

    .line 1328
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1329
    :cond_2
    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/measurement/ao$g;)J
    .locals 7

    .prologue
    .line 1260
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 1261
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jl;->K()V

    .line 1262
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1263
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ao$g;->x()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1264
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ck;->ai()[B

    move-result-object v0

    .line 1265
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jm;->v_()Lcom/google/android/gms/measurement/internal/js;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/js;->a([B)J

    move-result-wide v2

    .line 1266
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1267
    const-string/jumbo v4, "app_id"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ao$g;->x()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    const-string/jumbo v4, "metadata_fingerprint"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1269
    const-string/jumbo v4, "metadata"

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1270
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1271
    const-string/jumbo v4, "raw_events_metadata"

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-virtual {v0, v4, v5, v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1279
    return-wide v2

    .line 1273
    :catch_0
    move-exception v0

    .line 1274
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 1275
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Error storing raw event metadata. appId"

    .line 1276
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ao$g;->x()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1277
    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1278
    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Long;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/android/gms/internal/measurement/ao$c;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1331
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 1332
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jl;->K()V

    .line 1334
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1335
    const-string/jumbo v2, "select main_event, children_to_process from main_event_params where app_id=? and event_id=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    .line 1336
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1337
    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1338
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1339
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v3, "Main event not found"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1340
    if-eqz v2, :cond_0

    .line 1341
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v0, v1

    .line 1366
    :cond_1
    :goto_0
    return-object v0

    .line 1343
    :cond_2
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 1344
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v3

    .line 1345
    :try_start_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ao$c;->j()Lcom/google/android/gms/internal/measurement/ao$c$a;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/google/android/gms/measurement/internal/js;->a(Lcom/google/android/gms/internal/measurement/fm;[B)Lcom/google/android/gms/internal/measurement/fm;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$c$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ed$b;->u()Lcom/google/android/gms/internal/measurement/fn;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$c;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1355
    :try_start_4
    invoke-static {v0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    .line 1356
    if-eqz v2, :cond_1

    .line 1357
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1347
    :catch_0
    move-exception v0

    .line 1348
    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v3

    .line 1349
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v3

    const-string/jumbo v4, "Failed to merge main event. appId, eventId"

    .line 1350
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 1351
    invoke-virtual {v3, v4, v5, p2, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1352
    if-eqz v2, :cond_3

    .line 1353
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v1

    .line 1354
    goto :goto_0

    .line 1359
    :catch_1
    move-exception v0

    move-object v2, v1

    .line 1360
    :goto_1
    :try_start_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v3

    const-string/jumbo v4, "Error selecting main event"

    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1361
    if-eqz v2, :cond_4

    .line 1362
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v1

    .line 1366
    goto :goto_0

    .line 1363
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_5

    .line 1364
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1365
    :cond_5
    throw v0

    .line 1363
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 1359
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public final a(JLjava/lang/String;JZZZZZ)Lcom/google/android/gms/measurement/internal/f;
    .locals 12

    .prologue
    .line 636
    invoke-static {p3}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 637
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 638
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jl;->K()V

    .line 639
    const/4 v0, 0x1

    new-array v10, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p3, v10, v0

    .line 640
    new-instance v8, Lcom/google/android/gms/measurement/internal/f;

    invoke-direct {v8}, Lcom/google/android/gms/measurement/internal/f;-><init>()V

    .line 641
    const/4 v9, 0x0

    .line 642
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 643
    const-string/jumbo v1, "apps"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "day"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "daily_events_count"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "daily_public_events_count"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "daily_conversions_count"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "daily_error_events_count"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "daily_realtime_events_count"

    aput-object v4, v2, v3

    const-string/jumbo v3, "app_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 644
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 645
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    .line 646
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 647
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v2, "Not updating daily counts, app is not known. appId"

    .line 648
    invoke-static {p3}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 650
    if-eqz v1, :cond_0

    .line 651
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v0, v8

    .line 689
    :goto_0
    return-object v0

    .line 653
    :cond_1
    const/4 v2, 0x0

    :try_start_2
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 654
    cmp-long v2, v2, p1

    if-nez v2, :cond_2

    .line 655
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v8, Lcom/google/android/gms/measurement/internal/f;->b:J

    .line 656
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v8, Lcom/google/android/gms/measurement/internal/f;->a:J

    .line 657
    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v8, Lcom/google/android/gms/measurement/internal/f;->c:J

    .line 658
    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v8, Lcom/google/android/gms/measurement/internal/f;->d:J

    .line 659
    const/4 v2, 0x5

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v8, Lcom/google/android/gms/measurement/internal/f;->e:J

    .line 660
    :cond_2
    if-eqz p6, :cond_3

    .line 661
    iget-wide v2, v8, Lcom/google/android/gms/measurement/internal/f;->b:J

    add-long v2, v2, p4

    iput-wide v2, v8, Lcom/google/android/gms/measurement/internal/f;->b:J

    .line 662
    :cond_3
    if-eqz p7, :cond_4

    .line 663
    iget-wide v2, v8, Lcom/google/android/gms/measurement/internal/f;->a:J

    add-long v2, v2, p4

    iput-wide v2, v8, Lcom/google/android/gms/measurement/internal/f;->a:J

    .line 664
    :cond_4
    if-eqz p8, :cond_5

    .line 665
    iget-wide v2, v8, Lcom/google/android/gms/measurement/internal/f;->c:J

    add-long v2, v2, p4

    iput-wide v2, v8, Lcom/google/android/gms/measurement/internal/f;->c:J

    .line 666
    :cond_5
    if-eqz p9, :cond_6

    .line 667
    iget-wide v2, v8, Lcom/google/android/gms/measurement/internal/f;->d:J

    add-long v2, v2, p4

    iput-wide v2, v8, Lcom/google/android/gms/measurement/internal/f;->d:J

    .line 668
    :cond_6
    if-eqz p10, :cond_7

    .line 669
    iget-wide v2, v8, Lcom/google/android/gms/measurement/internal/f;->e:J

    add-long v2, v2, p4

    iput-wide v2, v8, Lcom/google/android/gms/measurement/internal/f;->e:J

    .line 670
    :cond_7
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 671
    const-string/jumbo v3, "day"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 672
    const-string/jumbo v3, "daily_public_events_count"

    iget-wide v4, v8, Lcom/google/android/gms/measurement/internal/f;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 673
    const-string/jumbo v3, "daily_events_count"

    iget-wide v4, v8, Lcom/google/android/gms/measurement/internal/f;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 674
    const-string/jumbo v3, "daily_conversions_count"

    iget-wide v4, v8, Lcom/google/android/gms/measurement/internal/f;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 675
    const-string/jumbo v3, "daily_error_events_count"

    iget-wide v4, v8, Lcom/google/android/gms/measurement/internal/f;->d:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 676
    const-string/jumbo v3, "daily_realtime_events_count"

    iget-wide v4, v8, Lcom/google/android/gms/measurement/internal/f;->e:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 677
    const-string/jumbo v3, "apps"

    const-string/jumbo v4, "app_id=?"

    invoke-virtual {v0, v3, v2, v4, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 679
    if-eqz v1, :cond_8

    .line 680
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8
    move-object v0, v8

    .line 681
    goto/16 :goto_0

    .line 682
    :catch_0
    move-exception v0

    move-object v1, v9

    .line 683
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 684
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Error updating daily counts. appId"

    .line 685
    invoke-static {p3}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 687
    if-eqz v1, :cond_9

    .line 688
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_9
    move-object v0, v8

    .line 689
    goto/16 :goto_0

    .line 690
    :catchall_0
    move-exception v0

    move-object v1, v9

    :goto_2
    if-eqz v1, :cond_a

    .line 691
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 692
    :cond_a
    throw v0

    .line 690
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 682
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final a(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/measurement/internal/f;
    .locals 11

    .prologue
    .line 635
    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move/from16 v8, p6

    move/from16 v10, p8

    invoke-virtual/range {v0 .. v10}, Lcom/google/android/gms/measurement/internal/c;->a(JLjava/lang/String;JZZZZZ)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/n;
    .locals 21

    .prologue
    .line 55
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 58
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jl;->K()V

    .line 59
    new-instance v4, Ljava/util/ArrayList;

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v5, "lifetime_count"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v5, "current_bundle_count"

    aput-object v5, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v5, "last_fire_timestamp"

    aput-object v5, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v5, "last_bundled_timestamp"

    aput-object v5, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v5, "last_bundled_day"

    aput-object v5, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v5, "last_sampled_complex_event_id"

    aput-object v5, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v5, "last_sampling_rate"

    aput-object v5, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v5, "last_exempt_from_sampling"

    aput-object v5, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v5, "current_session_count"

    aput-object v5, v2, v3

    .line 60
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 61
    const/4 v10, 0x0

    .line 62
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 63
    const-string/jumbo v3, "events"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    .line 64
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const-string/jumbo v5, "app_id=? and name=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 65
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v20

    .line 66
    :try_start_1
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-nez v2, :cond_2

    .line 68
    if-eqz v20, :cond_0

    .line 69
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 70
    :cond_0
    const/4 v3, 0x0

    .line 100
    :cond_1
    :goto_0
    return-object v3

    .line 71
    :cond_2
    const/4 v2, 0x0

    :try_start_2
    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 72
    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 73
    const/4 v2, 0x2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 74
    const/4 v2, 0x3

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_5

    const-wide/16 v14, 0x0

    .line 75
    :goto_1
    const/4 v2, 0x4

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v16, 0x0

    .line 76
    :goto_2
    const/4 v2, 0x5

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v17, 0x0

    .line 77
    :goto_3
    const/4 v2, 0x6

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v18, 0x0

    .line 78
    :goto_4
    const/16 v19, 0x0

    .line 79
    const/4 v2, 0x7

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 80
    const/4 v2, 0x7

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_9

    const/4 v2, 0x1

    :goto_5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    .line 81
    :cond_3
    const/16 v2, 0x8

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_a

    const-wide/16 v10, 0x0

    .line 82
    :goto_6
    new-instance v3, Lcom/google/android/gms/measurement/internal/n;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-direct/range {v3 .. v19}, Lcom/google/android/gms/measurement/internal/n;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    .line 83
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 85
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v4, "Got multiple records for event aggregates, expected one. appId"

    .line 86
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 87
    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 89
    :cond_4
    if-eqz v20, :cond_1

    .line 90
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 74
    :cond_5
    const/4 v2, 0x3

    :try_start_3
    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    goto :goto_1

    .line 75
    :cond_6
    const/4 v2, 0x4

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    goto :goto_2

    .line 76
    :cond_7
    const/4 v2, 0x5

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    goto :goto_3

    .line 77
    :cond_8
    const/4 v2, 0x6

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    goto :goto_4

    .line 80
    :cond_9
    const/4 v2, 0x0

    goto :goto_5

    .line 81
    :cond_a
    const/16 v2, 0x8

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v10

    goto :goto_6

    .line 92
    :catch_0
    move-exception v2

    move-object v3, v10

    .line 93
    :goto_7
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v4

    .line 94
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v4

    const-string/jumbo v5, "Error querying events. appId"

    .line 95
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 96
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->s()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Lcom/google/android/gms/measurement/internal/dw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 97
    invoke-virtual {v4, v5, v6, v7, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 98
    if-eqz v3, :cond_b

    .line 99
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 100
    :cond_b
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 101
    :catchall_0
    move-exception v2

    move-object/from16 v20, v10

    :goto_8
    if-eqz v20, :cond_c

    .line 102
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 103
    :cond_c
    throw v2

    .line 101
    :catchall_1
    move-exception v2

    goto :goto_8

    :catchall_2
    move-exception v2

    move-object/from16 v20, v3

    goto :goto_8

    .line 92
    :catch_1
    move-exception v2

    move-object/from16 v3, v20

    goto :goto_7
.end method

.method public final a(J)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 1287
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 1288
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jl;->K()V

    .line 1290
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1291
    const-string/jumbo v2, "select app_id from apps where app_id in (select distinct app_id from raw_events) and config_fetched_time < ? order by failed_config_fetch_time limit 1;"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 1292
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1293
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1294
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1295
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v3, "No expired configs for apps with pending events"

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1296
    if-eqz v2, :cond_0

    .line 1297
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1310
    :cond_0
    :goto_0
    return-object v0

    .line 1299
    :cond_1
    const/4 v1, 0x0

    :try_start_2
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 1300
    if-eqz v2, :cond_0

    .line 1301
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1303
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 1304
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v3

    const-string/jumbo v4, "Error selecting expired configs"

    invoke-virtual {v3, v4, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1305
    if-eqz v2, :cond_0

    .line 1306
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1307
    :catchall_0
    move-exception v1

    move-object v2, v0

    :goto_2
    if-eqz v2, :cond_2

    .line 1308
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1309
    :cond_2
    throw v1

    .line 1307
    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_2

    .line 1303
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/measurement/internal/jx;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 226
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 227
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 228
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jl;->K()V

    .line 229
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 231
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 232
    const-string/jumbo v1, "user_attributes"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "origin"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "set_timestamp"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "value"

    aput-object v4, v2, v3

    const-string/jumbo v3, "app_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "rowid"

    .line 233
    const-string/jumbo v8, "1000"

    .line 234
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 235
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_1

    .line 237
    if-eqz v7, :cond_0

    .line 238
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v0, v9

    .line 264
    :goto_0
    return-object v0

    .line 240
    :cond_1
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 241
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 242
    if-nez v2, :cond_2

    .line 243
    const-string/jumbo v2, ""

    .line 244
    :cond_2
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 245
    const/4 v0, 0x3

    invoke-direct {p0, v7, v0}, Lcom/google/android/gms/measurement/internal/c;->a(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v6

    .line 246
    if-nez v6, :cond_4

    .line 247
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 248
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Read invalid user property value, ignoring it. appId"

    .line 249
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 250
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 253
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    if-nez v0, :cond_1

    .line 255
    if-eqz v7, :cond_3

    .line 256
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v9

    .line 257
    goto :goto_0

    .line 251
    :cond_4
    :try_start_3
    new-instance v0, Lcom/google/android/gms/measurement/internal/jx;

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/jx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 252
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 258
    :catch_0
    move-exception v0

    move-object v1, v7

    .line 259
    :goto_2
    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 260
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Error querying user properties. appId"

    .line 261
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 262
    if-eqz v1, :cond_5

    .line 263
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v0, v10

    .line 264
    goto :goto_0

    .line 265
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v10, :cond_6

    .line 266
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 267
    :cond_6
    throw v0

    .line 265
    :catchall_1
    move-exception v0

    move-object v10, v7

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v10, v1

    goto :goto_3

    .line 258
    :catch_1
    move-exception v0

    move-object v1, v10

    goto :goto_2
.end method

.method public final a(Ljava/lang/String;II)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/android/gms/internal/measurement/ao$g;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v1, 0x1

    const/4 v9, 0x0

    .line 795
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 796
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jl;->K()V

    .line 797
    if-lez p2, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->b(Z)V

    .line 798
    if-lez p3, :cond_2

    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/common/internal/s;->b(Z)V

    .line 799
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 801
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 802
    const-string/jumbo v1, "queue"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "rowid"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "data"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "retry_count"

    aput-object v4, v2, v3

    const-string/jumbo v3, "app_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "rowid"

    .line 803
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 804
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 805
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3

    .line 806
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 807
    if-eqz v2, :cond_0

    .line 808
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 843
    :cond_0
    :goto_2
    return-object v0

    :cond_1
    move v0, v9

    .line 797
    goto :goto_0

    :cond_2
    move v1, v9

    .line 798
    goto :goto_1

    .line 810
    :cond_3
    :try_start_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v3, v9

    .line 812
    :goto_3
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v4

    .line 813
    const/4 v0, 0x1

    :try_start_3
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 814
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jm;->v_()Lcom/google/android/gms/measurement/internal/js;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/google/android/gms/measurement/internal/js;->b([B)[B
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v6

    .line 821
    :try_start_4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    array-length v0, v6
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    add-int/2addr v0, v3

    if-gt v0, p3, :cond_6

    .line 822
    :cond_4
    :try_start_5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ao$g;->af()Lcom/google/android/gms/internal/measurement/ao$g$a;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/google/android/gms/measurement/internal/js;->a(Lcom/google/android/gms/internal/measurement/fm;[B)Lcom/google/android/gms/internal/measurement/fm;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$g$a;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 829
    const/4 v7, 0x2

    :try_start_6
    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_5

    .line 830
    const/4 v7, 0x2

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/measurement/ao$g$a;->i(I)Lcom/google/android/gms/internal/measurement/ao$g$a;

    .line 831
    :cond_5
    array-length v6, v6

    add-int/2addr v3, v6

    .line 832
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ed$b;->u()Lcom/google/android/gms/internal/measurement/fn;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v3

    .line 833
    :goto_4
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v3

    if-eqz v3, :cond_6

    if-le v0, p3, :cond_9

    .line 835
    :cond_6
    if-eqz v2, :cond_7

    .line 836
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_7
    move-object v0, v1

    .line 837
    goto :goto_2

    .line 816
    :catch_0
    move-exception v0

    .line 817
    :try_start_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v4

    .line 818
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v4

    const-string/jumbo v5, "Failed to unzip queued bundle. appId"

    .line 819
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move v0, v3

    .line 820
    goto :goto_4

    .line 824
    :catch_1
    move-exception v0

    .line 825
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v4

    .line 826
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v4

    const-string/jumbo v5, "Failed to merge queued bundle. appId"

    .line 827
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move v0, v3

    .line 828
    goto :goto_4

    .line 838
    :catch_2
    move-exception v0

    move-object v1, v10

    .line 839
    :goto_5
    :try_start_8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Error querying bundles. appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 840
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result-object v0

    .line 841
    if-eqz v1, :cond_0

    .line 842
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 844
    :catchall_0
    move-exception v0

    move-object v2, v10

    :goto_6
    if-eqz v2, :cond_8

    .line 845
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 846
    :cond_8
    throw v0

    .line 844
    :catchall_1
    move-exception v0

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_6

    .line 838
    :catch_3
    move-exception v0

    move-object v1, v2

    goto :goto_5

    :cond_9
    move v3, v0

    goto/16 :goto_3
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/measurement/internal/jx;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 268
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 269
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 270
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jl;->K()V

    .line 271
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 273
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 274
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "app_id=?"

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 276
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 277
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    const-string/jumbo v1, " and origin=?"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 280
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    const-string/jumbo v1, " and name glob ?"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 283
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 284
    const-string/jumbo v1, "user_attributes"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "name"

    aput-object v6, v2, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "set_timestamp"

    aput-object v6, v2, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "value"

    aput-object v6, v2, v5

    const/4 v5, 0x3

    const-string/jumbo v6, "origin"

    aput-object v6, v2, v5

    .line 285
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "rowid"

    .line 286
    const-string/jumbo v8, "1001"

    .line 287
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 288
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_4

    .line 290
    if-eqz v7, :cond_2

    .line 291
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v9

    .line 321
    :goto_0
    return-object v0

    :cond_3
    move-object p2, v2

    .line 293
    :cond_4
    :try_start_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_6

    .line 294
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 295
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Read more than the max allowed user properties, ignoring excess"

    .line 296
    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 297
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 312
    :goto_1
    if-eqz v7, :cond_5

    .line 313
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v0, v9

    .line 314
    goto :goto_0

    .line 299
    :cond_6
    const/4 v0, 0x0

    :try_start_3
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 300
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 301
    const/4 v0, 0x2

    invoke-direct {p0, v7, v0}, Lcom/google/android/gms/measurement/internal/c;->a(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v6

    .line 302
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v2

    .line 303
    if-nez v6, :cond_7

    .line 304
    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 305
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "(2)Read invalid user property value, ignoring it"

    .line 306
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 307
    invoke-virtual {v0, v1, v3, v2, p3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 310
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 308
    :cond_7
    new-instance v0, Lcom/google/android/gms/measurement/internal/jx;

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/jx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 309
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 315
    :catch_0
    move-exception v0

    move-object v1, v7

    move-object p2, v2

    .line 316
    :goto_3
    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 317
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "(2)Error querying user properties"

    .line 318
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p2, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 319
    if-eqz v1, :cond_8

    .line 320
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8
    move-object v0, v10

    .line 321
    goto :goto_0

    .line 322
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v10, :cond_9

    .line 323
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 324
    :cond_9
    throw v0

    .line 322
    :catchall_1
    move-exception v0

    move-object v10, v7

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v10, v1

    goto :goto_4

    .line 315
    :catch_1
    move-exception v0

    move-object v1, v10

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v1, v7

    goto :goto_3
.end method

.method public final a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/measurement/internal/kn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 443
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 444
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jl;->K()V

    .line 445
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 446
    const/4 v11, 0x0

    .line 447
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 448
    const-string/jumbo v3, "conditional_properties"

    const/16 v4, 0xd

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "app_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "origin"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "name"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string/jumbo v6, "value"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string/jumbo v6, "active"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string/jumbo v6, "trigger_event_name"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string/jumbo v6, "trigger_timeout"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string/jumbo v6, "timed_out_event"

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string/jumbo v6, "creation_timestamp"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const-string/jumbo v6, "triggered_event"

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string/jumbo v6, "triggered_timestamp"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    const-string/jumbo v6, "time_to_live"

    aput-object v6, v4, v5

    const/16 v5, 0xc

    const-string/jumbo v6, "expired_event"

    aput-object v6, v4, v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string/jumbo v9, "rowid"

    .line 449
    const-string/jumbo v10, "1001"

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    .line 450
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v21

    .line 451
    :try_start_1
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-nez v2, :cond_2

    .line 453
    if-eqz v21, :cond_0

    .line 454
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object/from16 v2, v20

    .line 491
    :cond_1
    :goto_0
    return-object v2

    .line 456
    :cond_2
    :try_start_2
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x3e8

    if-lt v2, v3, :cond_4

    .line 457
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 458
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Read more than the max allowed conditional properties, ignoring extra"

    .line 459
    const/16 v4, 0x3e8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 460
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 483
    :goto_1
    if-eqz v21, :cond_3

    .line 484
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object/from16 v2, v20

    .line 485
    goto :goto_0

    .line 462
    :cond_4
    const/4 v2, 0x0

    :try_start_3
    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 463
    const/4 v2, 0x1

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 464
    const/4 v2, 0x2

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 465
    const/4 v2, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/c;->a(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v6

    .line 466
    const/4 v2, 0x4

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_5

    const/4 v11, 0x1

    .line 467
    :goto_2
    const/4 v2, 0x5

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 468
    const/4 v2, 0x6

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 470
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jm;->v_()Lcom/google/android/gms/measurement/internal/js;

    move-result-object v2

    const/4 v4, 0x7

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/measurement/internal/r;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/measurement/internal/js;->a([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/measurement/internal/r;

    .line 471
    const/16 v2, 0x8

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 473
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jm;->v_()Lcom/google/android/gms/measurement/internal/js;

    move-result-object v2

    const/16 v4, 0x9

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/measurement/internal/r;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/measurement/internal/js;->a([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v16

    check-cast v16, Lcom/google/android/gms/measurement/internal/r;

    .line 474
    const/16 v2, 0xa

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 475
    const/16 v2, 0xb

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 477
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jm;->v_()Lcom/google/android/gms/measurement/internal/js;

    move-result-object v2

    const/16 v19, 0xc

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v19

    sget-object v22, Lcom/google/android/gms/measurement/internal/r;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/measurement/internal/js;->a([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v19

    check-cast v19, Lcom/google/android/gms/measurement/internal/r;

    .line 478
    new-instance v2, Lcom/google/android/gms/measurement/internal/jv;

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/jv;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 479
    new-instance v5, Lcom/google/android/gms/measurement/internal/kn;

    move-object v6, v8

    move-object v8, v2

    invoke-direct/range {v5 .. v19}, Lcom/google/android/gms/measurement/internal/kn;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/jv;JZLjava/lang/String;Lcom/google/android/gms/measurement/internal/r;JLcom/google/android/gms/measurement/internal/r;JLcom/google/android/gms/measurement/internal/r;)V

    .line 480
    move-object/from16 v0, v20

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_1

    .line 466
    :cond_5
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 486
    :catch_0
    move-exception v2

    move-object v3, v11

    .line 487
    :goto_3
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v4

    const-string/jumbo v5, "Error querying conditional user property value"

    invoke-virtual {v4, v5, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 488
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v2

    .line 489
    if-eqz v3, :cond_1

    .line 490
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 492
    :catchall_0
    move-exception v2

    move-object/from16 v21, v11

    :goto_4
    if-eqz v21, :cond_6

    .line 493
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 494
    :cond_6
    throw v2

    .line 492
    :catchall_1
    move-exception v2

    goto :goto_4

    :catchall_2
    move-exception v2

    move-object/from16 v21, v3

    goto :goto_4

    .line 486
    :catch_1
    move-exception v2

    move-object/from16 v3, v21

    goto :goto_3
.end method

.method public final a(Lcom/google/android/gms/measurement/internal/fg;)V
    .locals 7

    .prologue
    .line 559
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 561
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jl;->K()V

    .line 562
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 563
    const-string/jumbo v1, "app_id"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fg;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    const-string/jumbo v1, "app_instance_id"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fg;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    const-string/jumbo v1, "gmp_app_id"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fg;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const-string/jumbo v1, "resettable_device_id_hash"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fg;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    const-string/jumbo v1, "last_bundle_index"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fg;->s()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 568
    const-string/jumbo v1, "last_bundle_start_timestamp"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fg;->j()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 569
    const-string/jumbo v1, "last_bundle_end_timestamp"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fg;->k()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 570
    const-string/jumbo v1, "app_version"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fg;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    const-string/jumbo v1, "app_store"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fg;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    const-string/jumbo v1, "gmp_version"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fg;->o()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 573
    const-string/jumbo v1, "dev_cert_hash"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fg;->p()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 574
    const-string/jumbo v1, "measurement_enabled"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fg;->r()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 575
    const-string/jumbo v1, "day"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fg;->w()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 576
    const-string/jumbo v1, "daily_public_events_count"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fg;->x()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 577
    const-string/jumbo v1, "daily_events_count"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fg;->y()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 578
    const-string/jumbo v1, "daily_conversions_count"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fg;->z()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 579
    const-string/jumbo v1, "config_fetched_time"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fg;->t()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 580
    const-string/jumbo v1, "failed_config_fetch_time"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fg;->u()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 581
    const-string/jumbo v1, "app_version_int"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fg;->m()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 582
    const-string/jumbo v1, "firebase_instance_id"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fg;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    const-string/jumbo v1, "daily_error_events_count"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fg;->B()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 584
    const-string/jumbo v1, "daily_realtime_events_count"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fg;->A()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 585
    const-string/jumbo v1, "health_monitor_sample"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fg;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    const-string/jumbo v1, "android_id"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fg;->E()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 587
    const-string/jumbo v1, "adid_reporting_enabled"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fg;->F()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 588
    const-string/jumbo v1, "ssaid_reporting_enabled"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fg;->G()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 589
    const-string/jumbo v1, "admob_app_id"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fg;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    const-string/jumbo v1, "dynamite_version"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fg;->q()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 591
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fg;->I()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 592
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fg;->I()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 593
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 594
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Safelisted events should not be an empty list. appId"

    .line 595
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fg;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 599
    :cond_0
    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/jy;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fg;->c()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/t;->ao:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/b;->e(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 600
    const-string/jumbo v1, "ga_app_id"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fg;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 602
    const-string/jumbo v2, "apps"

    const-string/jumbo v3, "app_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 603
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fg;->c()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    .line 604
    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 605
    const-string/jumbo v2, "apps"

    const/4 v3, 0x0

    const/4 v4, 0x5

    .line 606
    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    .line 607
    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 608
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 609
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Failed to insert/update app (got -1). appId"

    .line 610
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fg;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 611
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 617
    :cond_2
    :goto_1
    return-void

    .line 596
    :cond_3
    const-string/jumbo v1, "safelisted_events"

    const-string/jumbo v2, ","

    .line 597
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fg;->I()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 598
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 613
    :catch_0
    move-exception v0

    .line 614
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 615
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Error storing app. appId"

    .line 616
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fg;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public final a(Lcom/google/android/gms/measurement/internal/n;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 104
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 106
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jl;->K()V

    .line 107
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 108
    const-string/jumbo v2, "app_id"

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/n;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string/jumbo v2, "name"

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/n;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string/jumbo v2, "lifetime_count"

    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/n;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 111
    const-string/jumbo v2, "current_bundle_count"

    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/n;->d:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 112
    const-string/jumbo v2, "last_fire_timestamp"

    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/n;->f:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 113
    const-string/jumbo v2, "last_bundled_timestamp"

    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/n;->g:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 114
    const-string/jumbo v2, "last_bundled_day"

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/n;->h:Ljava/lang/Long;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 115
    const-string/jumbo v2, "last_sampled_complex_event_id"

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/n;->i:Ljava/lang/Long;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 116
    const-string/jumbo v2, "last_sampling_rate"

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/n;->j:Ljava/lang/Long;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 117
    const-string/jumbo v2, "current_session_count"

    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/n;->e:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 119
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/n;->k:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/n;->k:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 121
    :cond_0
    const-string/jumbo v2, "last_exempt_from_sampling"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 122
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 123
    const-string/jumbo v2, "events"

    const/4 v3, 0x0

    const/4 v4, 0x5

    .line 124
    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    .line 125
    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 126
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Failed to insert/update event aggregates (got -1). appId"

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/n;->a:Ljava/lang/String;

    .line 128
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 129
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :cond_1
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 132
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 133
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Error storing event aggregates. appId"

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/n;->a:Ljava/lang/String;

    .line 134
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 135
    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method final a(Ljava/lang/String;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/measurement/ag$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 1431
    invoke-static {p2}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v4

    .line 1432
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_6

    .line 1433
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ag$a;

    .line 1434
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ed;->am()Lcom/google/android/gms/internal/measurement/ed$b;

    move-result-object v0

    .line 1435
    check-cast v0, Lcom/google/android/gms/internal/measurement/ed$b;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ag$a$a;

    .line 1436
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ag$a$a;->b()I

    move-result v1

    if-eqz v1, :cond_2

    move v5, v4

    move-object v6, v0

    .line 1438
    :goto_1
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ag$a$a;->b()I

    move-result v0

    if-ge v5, v0, :cond_3

    .line 1439
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/measurement/ag$a$a;->b(I)Lcom/google/android/gms/internal/measurement/ag$b;

    move-result-object v0

    .line 1440
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ed;->am()Lcom/google/android/gms/internal/measurement/ed$b;

    move-result-object v0

    .line 1441
    check-cast v0, Lcom/google/android/gms/internal/measurement/ed$b;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ag$b$a;

    .line 1442
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/cm;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/ed$b;

    check-cast v1, Lcom/google/android/gms/internal/measurement/ag$b$a;

    .line 1444
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ag$b$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/gd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1445
    if-eqz v2, :cond_15

    .line 1446
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/ag$b$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ag$b$a;

    move v2, v7

    :goto_2
    move v8, v4

    move v9, v2

    .line 1448
    :goto_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ag$b$a;->b()I

    move-result v2

    if-ge v8, v2, :cond_1

    .line 1449
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/measurement/ag$b$a;->a(I)Lcom/google/android/gms/internal/measurement/ag$c;

    move-result-object v2

    .line 1450
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ag$c;->h()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/gc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1451
    if-eqz v10, :cond_0

    .line 1453
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ed;->am()Lcom/google/android/gms/internal/measurement/ed$b;

    move-result-object v2

    .line 1454
    check-cast v2, Lcom/google/android/gms/internal/measurement/ed$b;

    check-cast v2, Lcom/google/android/gms/internal/measurement/ag$c$a;

    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/measurement/ag$c$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ag$c$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ed$b;->u()Lcom/google/android/gms/internal/measurement/fn;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ed;

    check-cast v2, Lcom/google/android/gms/internal/measurement/ag$c;

    .line 1455
    invoke-virtual {v1, v8, v2}, Lcom/google/android/gms/internal/measurement/ag$b$a;->a(ILcom/google/android/gms/internal/measurement/ag$c;)Lcom/google/android/gms/internal/measurement/ag$b$a;

    move v9, v7

    .line 1457
    :cond_0
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_3

    .line 1458
    :cond_1
    if-eqz v9, :cond_14

    .line 1459
    invoke-virtual {v6, v5, v1}, Lcom/google/android/gms/internal/measurement/ag$a$a;->a(ILcom/google/android/gms/internal/measurement/ag$b$a;)Lcom/google/android/gms/internal/measurement/ag$a$a;

    move-result-object v1

    .line 1460
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ed$b;->u()Lcom/google/android/gms/internal/measurement/fn;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ag$a;

    invoke-interface {p2, v3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1461
    :goto_4
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move-object v6, v1

    goto :goto_1

    :cond_2
    move-object v6, v0

    .line 1462
    :cond_3
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ag$a$a;->a()I

    move-result v0

    if-eqz v0, :cond_5

    move v1, v4

    .line 1464
    :goto_5
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ag$a$a;->a()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 1465
    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/measurement/ag$a$a;->a(I)Lcom/google/android/gms/internal/measurement/ag$e;

    move-result-object v0

    .line 1467
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ag$e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/gf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1468
    if-eqz v2, :cond_4

    .line 1470
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ed;->am()Lcom/google/android/gms/internal/measurement/ed$b;

    move-result-object v0

    .line 1471
    check-cast v0, Lcom/google/android/gms/internal/measurement/ed$b;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ag$e$a;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/ag$e$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ag$e$a;

    move-result-object v0

    .line 1472
    invoke-virtual {v6, v1, v0}, Lcom/google/android/gms/internal/measurement/ag$a$a;->a(ILcom/google/android/gms/internal/measurement/ag$e$a;)Lcom/google/android/gms/internal/measurement/ag$a$a;

    move-result-object v6

    .line 1473
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ed$b;->u()Lcom/google/android/gms/internal/measurement/fn;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ag$a;

    invoke-interface {p2, v3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1474
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 1475
    :cond_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0

    .line 1477
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jl;->K()V

    .line 1478
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 1479
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1480
    invoke-static {p2}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1481
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1482
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1484
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jl;->K()V

    .line 1485
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 1486
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1487
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1488
    const-string/jumbo v1, "property_filters"

    const-string/jumbo v3, "app_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v0, v1, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1489
    const-string/jumbo v1, "event_filters"

    const-string/jumbo v3, "app_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v0, v1, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1490
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ag$a;

    .line 1492
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jl;->K()V

    .line 1493
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 1494
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1495
    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1496
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ag$a;->a()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1497
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Audience with no ID. appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    .line 1551
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1552
    throw v0

    .line 1499
    :cond_8
    :try_start_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ag$a;->b()I

    move-result v5

    .line 1500
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ag$a;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/ag$b;

    .line 1501
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ag$b;->a()Z

    move-result v1

    if-nez v1, :cond_9

    .line 1502
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 1503
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Event filter with no ID. Audience definition ignored. appId, audienceId"

    .line 1504
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 1505
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1506
    invoke-virtual {v0, v1, v6, v5}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6

    .line 1509
    :cond_a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ag$a;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/ag$e;

    .line 1510
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ag$e;->a()Z

    move-result v1

    if-nez v1, :cond_b

    .line 1511
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 1512
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Property filter with no ID. Audience definition ignored. appId, audienceId"

    .line 1513
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 1514
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1515
    invoke-virtual {v0, v1, v6, v5}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 1519
    :cond_c
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ag$a;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/ag$b;

    .line 1520
    invoke-direct {p0, p1, v5, v1}, Lcom/google/android/gms/measurement/internal/c;->a(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/ag$b;)Z

    move-result v1

    if-nez v1, :cond_d

    move v1, v4

    .line 1524
    :goto_7
    if-eqz v1, :cond_12

    .line 1525
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ag$a;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ag$e;

    .line 1526
    invoke-direct {p0, p1, v5, v0}, Lcom/google/android/gms/measurement/internal/c;->a(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/ag$e;)Z

    move-result v0

    if-nez v0, :cond_e

    move v0, v4

    .line 1530
    :goto_8
    if-nez v0, :cond_7

    .line 1532
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jl;->K()V

    .line 1533
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 1534
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1535
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1536
    const-string/jumbo v1, "property_filters"

    const-string/jumbo v6, "app_id=? and audience_id=?"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x1

    .line 1537
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 1538
    invoke-virtual {v0, v1, v6, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1539
    const-string/jumbo v1, "event_filters"

    const-string/jumbo v6, "app_id=? and audience_id=?"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x1

    .line 1540
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v9

    .line 1541
    invoke-virtual {v0, v1, v6, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1543
    :cond_f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1544
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ag$a;

    .line 1545
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ag$a;->a()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ag$a;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_a
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_10
    const/4 v0, 0x0

    goto :goto_a

    .line 1547
    :cond_11
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/measurement/internal/c;->b(Ljava/lang/String;Ljava/util/List;)Z

    .line 1548
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1549
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1550
    return-void

    :cond_12
    move v0, v1

    goto :goto_8

    :cond_13
    move v1, v7

    goto/16 :goto_7

    :cond_14
    move-object v1, v6

    goto/16 :goto_4

    :cond_15
    move v2, v4

    goto/16 :goto_2
.end method

.method final a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 872
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 873
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jl;->K()V

    .line 874
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->a(I)I

    .line 876
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/c;->M()Z

    move-result v0

    if-nez v0, :cond_0

    .line 889
    :goto_0
    return-void

    .line 879
    :cond_0
    const-string/jumbo v0, ","

    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 880
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x50

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "SELECT COUNT(1) FROM queue WHERE rowid IN "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " AND retry_count =  2147483647 LIMIT 1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/measurement/internal/c;->b(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 881
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 882
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "The number of upload retries exceeds the limit. Will remain unchanged."

    .line 883
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 884
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 885
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x7f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "UPDATE queue SET retry_count = IFNULL(retry_count, 0) + 1 WHERE rowid IN "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " AND (retry_count IS NULL OR retry_count < 2147483647)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 887
    :catch_0
    move-exception v0

    .line 888
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Error incrementing retry count. error"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method protected final a()Z
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lcom/google/android/gms/internal/measurement/ao$g;Z)Z
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 725
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 726
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jl;->K()V

    .line 727
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ao$g;->x()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 729
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ao$g;->k()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->a(Z)V

    .line 730
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->h()V

    .line 731
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v4

    .line 732
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ao$g;->l()J

    move-result-wide v6

    invoke-static {}, Lcom/google/android/gms/measurement/internal/b;->g()J

    move-result-wide v8

    sub-long v8, v4, v8

    cmp-long v0, v6, v8

    if-ltz v0, :cond_0

    .line 733
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ao$g;->l()J

    move-result-wide v6

    invoke-static {}, Lcom/google/android/gms/measurement/internal/b;->g()J

    move-result-wide v8

    add-long/2addr v8, v4

    cmp-long v0, v6, v8

    if-lez v0, :cond_1

    .line 734
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 735
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v3, "Storing bundle outside of the max uploading time span. appId, now, timestamp"

    .line 736
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ao$g;->x()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 737
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 738
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ao$g;->l()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 739
    invoke-virtual {v0, v3, v6, v4, v5}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 740
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ck;->ai()[B

    move-result-object v0

    .line 741
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jm;->v_()Lcom/google/android/gms/measurement/internal/js;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/measurement/internal/js;->c([B)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 749
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v3

    const-string/jumbo v4, "Saving bundle, size"

    array-length v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 750
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 751
    const-string/jumbo v4, "app_id"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ao$g;->x()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    const-string/jumbo v4, "bundle_end_timestamp"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ao$g;->l()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 753
    const-string/jumbo v4, "data"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 754
    const-string/jumbo v4, "has_realtime"

    if-eqz p2, :cond_3

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 755
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ao$g;->Z()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 756
    const-string/jumbo v0, "retry_count"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ao$g;->aa()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 757
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 758
    const-string/jumbo v4, "queue"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 759
    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_4

    .line 760
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 761
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Failed to insert bundle (got -1). appId"

    .line 762
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ao$g;->x()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 770
    :goto_1
    return v2

    .line 743
    :catch_0
    move-exception v0

    .line 744
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 745
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v3, "Data loss. Failed to serialize bundle. appId"

    .line 746
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ao$g;->x()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 747
    invoke-virtual {v1, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    move v0, v2

    .line 754
    goto :goto_0

    .line 765
    :catch_1
    move-exception v0

    .line 766
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 767
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v3, "Error storing bundle. appId"

    .line 768
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ao$g;->x()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    move v2, v1

    .line 770
    goto :goto_1
.end method

.method public final a(Lcom/google/android/gms/measurement/internal/jx;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 152
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 154
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jl;->K()V

    .line 155
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/jx;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/jx;->c:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/measurement/internal/c;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/jx;

    move-result-object v2

    .line 156
    if-nez v2, :cond_2

    .line 157
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/jx;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 158
    const-string/jumbo v2, "select count(1) from user_attributes where app_id=? and name not like \'!_%\' escape \'!\'"

    new-array v3, v1, [Ljava/lang/String;

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/jx;->a:Ljava/lang/String;

    aput-object v4, v3, v0

    .line 159
    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/measurement/internal/c;->b(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    .line 160
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/jx;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/b;->c(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    .line 187
    :cond_0
    :goto_0
    return v0

    .line 163
    :cond_1
    const-string/jumbo v2, "_npa"

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/jx;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 164
    const-string/jumbo v2, "select count(1) from user_attributes where app_id=? and origin=? AND name like \'!_%\' escape \'!\'"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/jx;->a:Ljava/lang/String;

    aput-object v4, v3, v0

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/jx;->b:Ljava/lang/String;

    aput-object v4, v3, v1

    .line 165
    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/measurement/internal/c;->b(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    .line 166
    const-wide/16 v4, 0x19

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 168
    :cond_2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 169
    const-string/jumbo v2, "app_id"

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/jx;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string/jumbo v2, "origin"

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/jx;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string/jumbo v2, "name"

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/jx;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string/jumbo v2, "set_timestamp"

    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/jx;->d:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 173
    const-string/jumbo v2, "value"

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/jx;->e:Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/c;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 174
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 175
    const-string/jumbo v3, "user_attributes"

    const/4 v4, 0x0

    const/4 v5, 0x5

    .line 176
    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    .line 177
    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    .line 178
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v2, "Failed to insert/update user property (got -1). appId"

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/jx;->a:Ljava/lang/String;

    .line 180
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 181
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    move v0, v1

    .line 187
    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 185
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Error storing user property. appId"

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/jx;->a:Ljava/lang/String;

    .line 186
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public final a(Lcom/google/android/gms/measurement/internal/k;JZ)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1398
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 1399
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jl;->K()V

    .line 1400
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1401
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/k;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1402
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ao$c;->j()Lcom/google/android/gms/internal/measurement/ao$c$a;

    move-result-object v0

    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/k;->d:J

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/measurement/ao$c$a;->b(J)Lcom/google/android/gms/internal/measurement/ao$c$a;

    move-result-object v3

    .line 1403
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/k;->e:Lcom/google/android/gms/measurement/internal/m;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1404
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ao$e;->k()Lcom/google/android/gms/internal/measurement/ao$e$a;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/ao$e$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$e$a;

    move-result-object v5

    .line 1405
    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/k;->e:Lcom/google/android/gms/measurement/internal/m;

    invoke-virtual {v6, v0}, Lcom/google/android/gms/measurement/internal/m;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1406
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jm;->v_()Lcom/google/android/gms/measurement/internal/js;

    move-result-object v6

    invoke-virtual {v6, v5, v0}, Lcom/google/android/gms/measurement/internal/js;->a(Lcom/google/android/gms/internal/measurement/ao$e$a;Ljava/lang/Object;)V

    .line 1407
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/measurement/ao$c$a;->a(Lcom/google/android/gms/internal/measurement/ao$e$a;)Lcom/google/android/gms/internal/measurement/ao$c$a;

    goto :goto_0

    .line 1409
    :cond_0
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ed$b;->u()Lcom/google/android/gms/internal/measurement/fn;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$c;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ck;->ai()[B

    move-result-object v0

    .line 1410
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1411
    const-string/jumbo v4, "app_id"

    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/k;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1412
    const-string/jumbo v4, "name"

    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/k;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    const-string/jumbo v4, "timestamp"

    iget-wide v6, p1, Lcom/google/android/gms/measurement/internal/k;->c:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1414
    const-string/jumbo v4, "metadata_fingerprint"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1415
    const-string/jumbo v4, "data"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1416
    const-string/jumbo v4, "realtime"

    if-eqz p4, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1417
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1418
    const-string/jumbo v4, "raw_events"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 1419
    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    .line 1420
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 1421
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Failed to insert raw event (got -1). appId"

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/k;->a:Ljava/lang/String;

    .line 1422
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1430
    :goto_2
    return v2

    :cond_1
    move v0, v2

    .line 1416
    goto :goto_1

    .line 1425
    :catch_0
    move-exception v0

    .line 1426
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 1427
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v3, "Error storing raw event. appId"

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/k;->a:Ljava/lang/String;

    .line 1428
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    move v2, v1

    .line 1430
    goto :goto_2
.end method

.method public final a(Lcom/google/android/gms/measurement/internal/kn;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 325
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 327
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jl;->K()V

    .line 328
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/kn;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/kn;->c:Lcom/google/android/gms/measurement/internal/jv;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/jv;->a:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/measurement/internal/c;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/jx;

    move-result-object v2

    .line 329
    if-nez v2, :cond_0

    .line 330
    const-string/jumbo v2, "SELECT COUNT(1) FROM conditional_properties WHERE app_id=?"

    new-array v3, v1, [Ljava/lang/String;

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/kn;->a:Ljava/lang/String;

    aput-object v4, v3, v0

    .line 331
    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/measurement/internal/c;->b(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    .line 332
    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 362
    :goto_0
    return v0

    .line 334
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 335
    const-string/jumbo v2, "app_id"

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/kn;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string/jumbo v2, "origin"

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/kn;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string/jumbo v2, "name"

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/kn;->c:Lcom/google/android/gms/measurement/internal/jv;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/jv;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string/jumbo v2, "value"

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/kn;->c:Lcom/google/android/gms/measurement/internal/jv;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/jv;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/c;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 339
    const-string/jumbo v2, "active"

    iget-boolean v3, p1, Lcom/google/android/gms/measurement/internal/kn;->e:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 340
    const-string/jumbo v2, "trigger_event_name"

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/kn;->f:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string/jumbo v2, "trigger_timeout"

    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/kn;->h:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 342
    const-string/jumbo v2, "timed_out_event"

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->t()Lcom/google/android/gms/measurement/internal/jw;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/kn;->g:Lcom/google/android/gms/measurement/internal/r;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/jw;->a(Landroid/os/Parcelable;)[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 343
    const-string/jumbo v2, "creation_timestamp"

    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/kn;->d:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 344
    const-string/jumbo v2, "triggered_event"

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->t()Lcom/google/android/gms/measurement/internal/jw;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/kn;->i:Lcom/google/android/gms/measurement/internal/r;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/jw;->a(Landroid/os/Parcelable;)[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 345
    const-string/jumbo v2, "triggered_timestamp"

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/kn;->c:Lcom/google/android/gms/measurement/internal/jv;

    iget-wide v4, v3, Lcom/google/android/gms/measurement/internal/jv;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 346
    const-string/jumbo v2, "time_to_live"

    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/kn;->j:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 347
    const-string/jumbo v2, "expired_event"

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->t()Lcom/google/android/gms/measurement/internal/jw;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/kn;->k:Lcom/google/android/gms/measurement/internal/r;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/jw;->a(Landroid/os/Parcelable;)[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 348
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 349
    const-string/jumbo v3, "conditional_properties"

    const/4 v4, 0x0

    const/4 v5, 0x5

    .line 350
    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    .line 351
    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 352
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 353
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v2, "Failed to insert/update conditional user property (got -1)"

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/kn;->a:Ljava/lang/String;

    .line 354
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 355
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    move v0, v1

    .line 362
    goto/16 :goto_0

    .line 357
    :catch_0
    move-exception v0

    .line 358
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 359
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Error storing conditional user property"

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/kn;->a:Ljava/lang/String;

    .line 360
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 361
    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Long;JLcom/google/android/gms/internal/measurement/ao$c;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 1367
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 1368
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jl;->K()V

    .line 1369
    invoke-static {p5}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1370
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1371
    invoke-static {p2}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1372
    invoke-virtual {p5}, Lcom/google/android/gms/internal/measurement/ck;->ai()[B

    move-result-object v1

    .line 1373
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 1374
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Saving complex main event, appId, data size"

    .line 1375
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->s()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/android/gms/measurement/internal/dw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    array-length v5, v1

    .line 1376
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1377
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1378
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1379
    const-string/jumbo v3, "app_id"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1380
    const-string/jumbo v3, "event_id"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1381
    const-string/jumbo v3, "children_to_process"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1382
    const-string/jumbo v3, "main_event"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1383
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1384
    const-string/jumbo v3, "main_event_params"

    const/4 v4, 0x0

    const/4 v5, 0x5

    .line 1385
    invoke-virtual {v1, v3, v4, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    .line 1386
    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 1387
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 1388
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Failed to insert complex main event (got -1). appId"

    .line 1389
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1397
    :goto_0
    return v0

    .line 1392
    :catch_0
    move-exception v1

    .line 1393
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 1394
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Error storing complex main event. appId"

    .line 1395
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 1397
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/fg;
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 495
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 496
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 497
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jl;->K()V

    .line 499
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 500
    const-string/jumbo v1, "apps"

    const/16 v2, 0x1d

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "app_instance_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "gmp_app_id"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "resettable_device_id_hash"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "last_bundle_index"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "last_bundle_start_timestamp"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "last_bundle_end_timestamp"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "app_version"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "app_store"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "gmp_version"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "dev_cert_hash"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "measurement_enabled"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "day"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "daily_public_events_count"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "daily_events_count"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "daily_conversions_count"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "config_fetched_time"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "failed_config_fetch_time"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "app_version_int"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "firebase_instance_id"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "daily_error_events_count"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "daily_realtime_events_count"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "health_monitor_sample"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "android_id"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "adid_reporting_enabled"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "ssaid_reporting_enabled"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "admob_app_id"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "dynamite_version"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "safelisted_events"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "ga_app_id"

    aput-object v4, v2, v3

    const-string/jumbo v3, "app_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 501
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 502
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_2

    .line 504
    if-eqz v1, :cond_0

    .line 505
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v0, v8

    .line 555
    :cond_1
    :goto_0
    return-object v0

    .line 507
    :cond_2
    :try_start_2
    new-instance v0, Lcom/google/android/gms/measurement/internal/fg;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/c;->a:Lcom/google/android/gms/measurement/internal/jo;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/jo;->o()Lcom/google/android/gms/measurement/internal/fd;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lcom/google/android/gms/measurement/internal/fg;-><init>(Lcom/google/android/gms/measurement/internal/fd;Ljava/lang/String;)V

    .line 508
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/fg;->a(Ljava/lang/String;)V

    .line 509
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/fg;->b(Ljava/lang/String;)V

    .line 510
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/fg;->e(Ljava/lang/String;)V

    .line 511
    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/fg;->g(J)V

    .line 512
    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/fg;->a(J)V

    .line 513
    const/4 v2, 0x5

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/fg;->b(J)V

    .line 514
    const/4 v2, 0x6

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/fg;->g(Ljava/lang/String;)V

    .line 515
    const/4 v2, 0x7

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/fg;->h(Ljava/lang/String;)V

    .line 516
    const/16 v2, 0x8

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/fg;->d(J)V

    .line 517
    const/16 v2, 0x9

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/fg;->e(J)V

    .line 518
    const/16 v2, 0xa

    invoke-interface {v1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_3

    const/16 v2, 0xa

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_a

    :cond_3
    move v2, v10

    :goto_1
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/fg;->a(Z)V

    .line 519
    const/16 v2, 0xb

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/fg;->j(J)V

    .line 520
    const/16 v2, 0xc

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/fg;->k(J)V

    .line 521
    const/16 v2, 0xd

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/fg;->l(J)V

    .line 522
    const/16 v2, 0xe

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/fg;->m(J)V

    .line 523
    const/16 v2, 0xf

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/fg;->h(J)V

    .line 524
    const/16 v2, 0x10

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/fg;->i(J)V

    .line 525
    const/16 v2, 0x11

    invoke-interface {v1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_b

    const-wide/32 v2, -0x80000000

    :goto_2
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/fg;->c(J)V

    .line 526
    const/16 v2, 0x12

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/fg;->f(Ljava/lang/String;)V

    .line 527
    const/16 v2, 0x13

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/fg;->o(J)V

    .line 528
    const/16 v2, 0x14

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/fg;->n(J)V

    .line 529
    const/16 v2, 0x15

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/fg;->i(Ljava/lang/String;)V

    .line 530
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/t;->aM:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 531
    const/16 v2, 0x16

    invoke-interface {v1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_c

    const-wide/16 v2, 0x0

    :goto_3
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/fg;->p(J)V

    .line 532
    :cond_4
    const/16 v2, 0x17

    invoke-interface {v1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_5

    const/16 v2, 0x17

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_d

    :cond_5
    move v2, v10

    :goto_4
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/fg;->b(Z)V

    .line 533
    const/16 v2, 0x18

    invoke-interface {v1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_6

    const/16 v2, 0x18

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_e

    :cond_6
    move v2, v10

    :goto_5
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/fg;->c(Z)V

    .line 534
    const/16 v2, 0x19

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/fg;->c(Ljava/lang/String;)V

    .line 535
    const/16 v2, 0x1a

    invoke-interface {v1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_f

    const-wide/16 v2, 0x0

    :goto_6
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/fg;->f(J)V

    .line 536
    const/16 v2, 0x1b

    invoke-interface {v1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_7

    .line 537
    const/16 v2, 0x1b

    .line 538
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ","

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 539
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/fg;->a(Ljava/util/List;)V

    .line 540
    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/measurement/jy;->b()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/t;->ao:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v2, p1, v3}, Lcom/google/android/gms/measurement/internal/b;->e(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 541
    const/16 v2, 0x1c

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/fg;->d(Ljava/lang/String;)V

    .line 542
    :cond_8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fg;->b()V

    .line 543
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 544
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 545
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Got multiple records for app, expected one. appId"

    .line 546
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 548
    :cond_9
    if-eqz v1, :cond_1

    .line 549
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_a
    move v2, v9

    .line 518
    goto/16 :goto_1

    .line 525
    :cond_b
    const/16 v2, 0x11

    :try_start_3
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    goto/16 :goto_2

    .line 531
    :cond_c
    const/16 v2, 0x16

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    goto/16 :goto_3

    :cond_d
    move v2, v9

    .line 532
    goto/16 :goto_4

    :cond_e
    move v2, v9

    .line 533
    goto/16 :goto_5

    .line 535
    :cond_f
    const/16 v2, 0x1a

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v2

    goto :goto_6

    .line 551
    :catch_0
    move-exception v0

    move-object v1, v8

    .line 552
    :goto_7
    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Error querying app. appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 553
    if-eqz v1, :cond_10

    .line 554
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_10
    move-object v0, v8

    .line 555
    goto/16 :goto_0

    .line 556
    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_8
    if-eqz v1, :cond_11

    .line 557
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 558
    :cond_11
    throw v0

    .line 556
    :catchall_1
    move-exception v0

    goto :goto_8

    .line 551
    :catch_1
    move-exception v0

    goto :goto_7
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/measurement/internal/kn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 429
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 430
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 431
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jl;->K()V

    .line 432
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 433
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "app_id=?"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 435
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 436
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    const-string/jumbo v2, " and origin=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 439
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    const-string/jumbo v2, " and name glob ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 442
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/measurement/internal/c;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jl;->K()V

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 10
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 137
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 138
    invoke-static {p2}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 140
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jl;->K()V

    .line 141
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 142
    const-string/jumbo v1, "user_attributes"

    const-string/jumbo v2, "app_id=? and name=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    .line 143
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 146
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 147
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Error deleting user property. appId"

    .line 148
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 149
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->s()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/google/android/gms/measurement/internal/dw;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 150
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)J
    .locals 6

    .prologue
    .line 618
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 619
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 620
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jl;->K()V

    .line 621
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 622
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    .line 623
    sget-object v2, Lcom/google/android/gms/measurement/internal/t;->o:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/measurement/internal/b;->b(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/dr;)I

    move-result v1

    .line 624
    const v2, 0xf4240

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 625
    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 626
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 627
    const-string/jumbo v2, "raw_events"

    const-string/jumbo v3, "rowid in (select rowid from raw_events where app_id=? order by rowid desc limit -1 offset ?)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    .line 628
    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-long v0, v0

    .line 634
    :goto_0
    return-wide v0

    .line 630
    :catch_0
    move-exception v0

    .line 631
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 632
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Error deleting over the limit events. appId"

    .line 633
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 634
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/jx;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 188
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 189
    invoke-static {p2}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 190
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 191
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jl;->K()V

    .line 193
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 194
    const-string/jumbo v1, "user_attributes"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "set_timestamp"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "value"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "origin"

    aput-object v4, v2, v3

    const-string/jumbo v3, "app_id=? and name=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 195
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 196
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_2

    .line 198
    if-eqz v7, :cond_0

    .line 199
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v0, v8

    .line 222
    :cond_1
    :goto_0
    return-object v0

    .line 201
    :cond_2
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 202
    const/4 v0, 0x1

    invoke-direct {p0, v7, v0}, Lcom/google/android/gms/measurement/internal/c;->a(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v6

    .line 203
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 204
    new-instance v0, Lcom/google/android/gms/measurement/internal/jx;

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/jx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 205
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 206
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 207
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Got multiple records for user property, expected one. appId"

    .line 208
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 209
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 211
    :cond_3
    if-eqz v7, :cond_1

    .line 212
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 214
    :catch_0
    move-exception v0

    move-object v1, v8

    .line 215
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 216
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Error querying user property. appId"

    .line 217
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 218
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->s()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/google/android/gms/measurement/internal/dw;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 219
    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 220
    if-eqz v1, :cond_4

    .line 221
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v8

    .line 222
    goto :goto_0

    .line 223
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v8, :cond_5

    .line 224
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 225
    :cond_5
    throw v0

    .line 223
    :catchall_1
    move-exception v0

    move-object v8, v7

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v8, v1

    goto :goto_2

    .line 214
    :catch_1
    move-exception v0

    move-object v1, v7

    goto :goto_1
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jl;->K()V

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 13
    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/kn;
    .locals 21

    .prologue
    .line 363
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 364
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 365
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 366
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jl;->K()V

    .line 367
    const/4 v10, 0x0

    .line 368
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 369
    const-string/jumbo v3, "conditional_properties"

    const/16 v4, 0xb

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "origin"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "value"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "active"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string/jumbo v6, "trigger_event_name"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string/jumbo v6, "trigger_timeout"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string/jumbo v6, "timed_out_event"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string/jumbo v6, "creation_timestamp"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string/jumbo v6, "triggered_event"

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string/jumbo v6, "triggered_timestamp"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const-string/jumbo v6, "time_to_live"

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string/jumbo v6, "expired_event"

    aput-object v6, v4, v5

    const-string/jumbo v5, "app_id=? and name=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 370
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v20

    .line 371
    :try_start_1
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-nez v2, :cond_2

    .line 373
    if-eqz v20, :cond_0

    .line 374
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 375
    :cond_0
    const/4 v5, 0x0

    .line 410
    :cond_1
    :goto_0
    return-object v5

    .line 376
    :cond_2
    const/4 v2, 0x0

    :try_start_2
    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 377
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/c;->a(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v6

    .line 378
    const/4 v2, 0x2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_4

    const/4 v11, 0x1

    .line 379
    :goto_1
    const/4 v2, 0x3

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 380
    const/4 v2, 0x4

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 382
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jm;->v_()Lcom/google/android/gms/measurement/internal/js;

    move-result-object v2

    const/4 v3, 0x5

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/r;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/js;->a([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/measurement/internal/r;

    .line 383
    const/4 v2, 0x6

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 385
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jm;->v_()Lcom/google/android/gms/measurement/internal/js;

    move-result-object v2

    const/4 v3, 0x7

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/r;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/js;->a([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v16

    check-cast v16, Lcom/google/android/gms/measurement/internal/r;

    .line 386
    const/16 v2, 0x8

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 387
    const/16 v2, 0x9

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 389
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jm;->v_()Lcom/google/android/gms/measurement/internal/js;

    move-result-object v2

    const/16 v3, 0xa

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    sget-object v8, Lcom/google/android/gms/measurement/internal/r;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3, v8}, Lcom/google/android/gms/measurement/internal/js;->a([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v19

    check-cast v19, Lcom/google/android/gms/measurement/internal/r;

    .line 390
    new-instance v2, Lcom/google/android/gms/measurement/internal/jv;

    move-object/from16 v3, p2

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/jv;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 391
    new-instance v5, Lcom/google/android/gms/measurement/internal/kn;

    move-object/from16 v6, p1

    move-object v8, v2

    invoke-direct/range {v5 .. v19}, Lcom/google/android/gms/measurement/internal/kn;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/jv;JZLjava/lang/String;Lcom/google/android/gms/measurement/internal/r;JLcom/google/android/gms/measurement/internal/r;JLcom/google/android/gms/measurement/internal/r;)V

    .line 392
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 393
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 394
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Got multiple records for conditional property, expected one"

    .line 395
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 396
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->s()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Lcom/google/android/gms/measurement/internal/dw;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 397
    invoke-virtual {v2, v3, v4, v6}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 399
    :cond_3
    if-eqz v20, :cond_1

    .line 400
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 378
    :cond_4
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 402
    :catch_0
    move-exception v2

    move-object v3, v10

    .line 403
    :goto_2
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v4

    .line 404
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v4

    const-string/jumbo v5, "Error querying conditional property"

    .line 405
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 406
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->s()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Lcom/google/android/gms/measurement/internal/dw;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 407
    invoke-virtual {v4, v5, v6, v7, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 408
    if-eqz v3, :cond_5

    .line 409
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 410
    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 411
    :catchall_0
    move-exception v2

    move-object/from16 v20, v10

    :goto_3
    if-eqz v20, :cond_6

    .line 412
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 413
    :cond_6
    throw v2

    .line 411
    :catchall_1
    move-exception v2

    goto :goto_3

    :catchall_2
    move-exception v2

    move-object/from16 v20, v3

    goto :goto_3

    .line 402
    :catch_1
    move-exception v2

    move-object/from16 v3, v20

    goto :goto_2
.end method

.method public final d(Ljava/lang/String;)[B
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 693
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 694
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 695
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jl;->K()V

    .line 697
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 698
    const-string/jumbo v1, "apps"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "remote_config"

    aput-object v4, v2, v3

    const-string/jumbo v3, "app_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 699
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 700
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_2

    .line 702
    if-eqz v1, :cond_0

    .line 703
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v0, v8

    .line 721
    :cond_1
    :goto_0
    return-object v0

    .line 705
    :cond_2
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 706
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 707
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 708
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Got multiple records for app config, expected one. appId"

    .line 709
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 710
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 712
    :cond_3
    if-eqz v1, :cond_1

    .line 713
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 715
    :catch_0
    move-exception v0

    move-object v1, v8

    .line 716
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 717
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Error querying remote config. appId"

    .line 718
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 719
    if-eqz v1, :cond_4

    .line 720
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v8

    .line 721
    goto :goto_0

    .line 722
    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_2
    if-eqz v1, :cond_5

    .line 723
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 724
    :cond_5
    throw v0

    .line 722
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 715
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 414
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 415
    invoke-static {p2}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 416
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 417
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jl;->K()V

    .line 418
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 419
    const-string/jumbo v2, "conditional_properties"

    const-string/jumbo v3, "app_id=? and name=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    .line 420
    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 428
    :goto_0
    return v0

    .line 422
    :catch_0
    move-exception v1

    .line 423
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 424
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Error deleting conditional property"

    .line 425
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 426
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->s()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/google/android/gms/measurement/internal/dw;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 427
    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method final e()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c;->j:Lcom/google/android/gms/measurement/internal/h;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/h;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Error opening database"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    throw v0
.end method

.method final e(Ljava/lang/String;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/measurement/ag$b;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 1005
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1006
    new-instance v8, Landroidx/b/a;

    invoke-direct {v8}, Landroidx/b/a;-><init>()V

    .line 1007
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1009
    :try_start_0
    const-string/jumbo v1, "event_filters"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "audience_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "data"

    aput-object v4, v2, v3

    const-string/jumbo v3, "app_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1010
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1011
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1012
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 1013
    if-eqz v2, :cond_0

    .line 1014
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1045
    :cond_0
    :goto_0
    return-object v0

    .line 1016
    :cond_1
    const/4 v0, 0x1

    :try_start_2
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 1017
    :try_start_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ag$b;->l()Lcom/google/android/gms/internal/measurement/ag$b$a;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/measurement/internal/js;->a(Lcom/google/android/gms/internal/measurement/fm;[B)Lcom/google/android/gms/internal/measurement/fm;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ag$b$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ed$b;->u()Lcom/google/android/gms/internal/measurement/fn;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ag$b;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1024
    :try_start_4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ag$b;->f()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1025
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1026
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1027
    if-nez v1, :cond_2

    .line 1028
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1029
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v8, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    :cond_2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1031
    :cond_3
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v0

    if-nez v0, :cond_1

    .line 1032
    if-eqz v2, :cond_4

    .line 1033
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v8

    .line 1045
    goto :goto_0

    .line 1019
    :catch_0
    move-exception v0

    .line 1020
    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 1021
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v3, "Failed to merge filter. appId"

    .line 1022
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 1034
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 1035
    :goto_2
    :try_start_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 1036
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Database error querying filters. appId"

    .line 1037
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1038
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-object v0

    .line 1039
    if-eqz v1, :cond_0

    .line 1040
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1042
    :catchall_0
    move-exception v0

    move-object v2, v9

    :goto_3
    if-eqz v2, :cond_5

    .line 1043
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1044
    :cond_5
    throw v0

    .line 1042
    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_3

    .line 1034
    :catch_2
    move-exception v0

    move-object v1, v9

    goto :goto_2
.end method

.method public final f()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 771
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 773
    :try_start_0
    const-string/jumbo v2, "select app_id from queue order by has_realtime desc, rowid asc limit 1;"

    .line 774
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 775
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 776
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 777
    if-eqz v2, :cond_0

    .line 778
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 788
    :cond_0
    :goto_0
    return-object v0

    .line 781
    :cond_1
    if-eqz v2, :cond_0

    .line 782
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 784
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 785
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v3

    const-string/jumbo v4, "Database error getting next bundle app id"

    invoke-virtual {v3, v4, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 786
    if-eqz v2, :cond_0

    .line 787
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 789
    :catchall_0
    move-exception v1

    move-object v2, v0

    :goto_2
    if-eqz v2, :cond_2

    .line 790
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 791
    :cond_2
    throw v1

    .line 789
    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_2

    .line 784
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method final f(Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1086
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jl;->K()V

    .line 1087
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 1088
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1089
    new-instance v1, Landroidx/b/a;

    invoke-direct {v1}, Landroidx/b/a;-><init>()V

    .line 1090
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1092
    :try_start_0
    const-string/jumbo v3, "select audience_id, filter_id from event_filters where app_id = ? and session_scoped = 1 UNION select audience_id, filter_id from property_filters where app_id = ? and session_scoped = 1;"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    .line 1093
    invoke-virtual {v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 1094
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1095
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 1096
    if-eqz v3, :cond_0

    .line 1097
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1119
    :cond_0
    :goto_0
    return-object v0

    .line 1099
    :cond_1
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1100
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1101
    if-nez v0, :cond_2

    .line 1102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1103
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1104
    :cond_2
    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1105
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1106
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    if-nez v0, :cond_1

    .line 1107
    if-eqz v3, :cond_3

    .line 1108
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v1

    .line 1119
    goto :goto_0

    .line 1109
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 1110
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v3

    .line 1111
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v3

    const-string/jumbo v4, "Database error querying scoped filters. appId"

    .line 1112
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1113
    if-eqz v1, :cond_4

    .line 1114
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v2

    .line 1115
    goto :goto_0

    .line 1116
    :catchall_0
    move-exception v0

    move-object v3, v2

    :goto_2
    if-eqz v3, :cond_5

    .line 1117
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1118
    :cond_5
    throw v0

    .line 1116
    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v3, v1

    goto :goto_2

    .line 1109
    :catch_1
    move-exception v0

    move-object v1, v3

    goto :goto_1
.end method

.method final f(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/measurement/ag$b;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 963
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jl;->K()V

    .line 964
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 965
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 966
    invoke-static {p2}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 967
    new-instance v8, Landroidx/b/a;

    invoke-direct {v8}, Landroidx/b/a;-><init>()V

    .line 968
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 970
    :try_start_0
    const-string/jumbo v1, "event_filters"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "audience_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "data"

    aput-object v4, v2, v3

    const-string/jumbo v3, "app_id=? AND event_name=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 971
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 972
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 973
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 974
    if-eqz v2, :cond_0

    .line 975
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1004
    :cond_0
    :goto_0
    return-object v0

    .line 977
    :cond_1
    const/4 v0, 0x1

    :try_start_2
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 978
    :try_start_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ag$b;->l()Lcom/google/android/gms/internal/measurement/ag$b$a;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/measurement/internal/js;->a(Lcom/google/android/gms/internal/measurement/fm;[B)Lcom/google/android/gms/internal/measurement/fm;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ag$b$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ed$b;->u()Lcom/google/android/gms/internal/measurement/fn;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ag$b;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 985
    const/4 v1, 0x0

    :try_start_4
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 986
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 987
    if-nez v1, :cond_2

    .line 988
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 989
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v8, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    :cond_2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 991
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v0

    if-nez v0, :cond_1

    .line 992
    if-eqz v2, :cond_3

    .line 993
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v8

    .line 1004
    goto :goto_0

    .line 980
    :catch_0
    move-exception v0

    .line 981
    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 982
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v3, "Failed to merge filter. appId"

    .line 983
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 994
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 995
    :goto_2
    :try_start_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 996
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Database error querying filters. appId"

    .line 997
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 998
    if-eqz v1, :cond_4

    .line 999
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v9

    .line 1000
    goto :goto_0

    .line 1001
    :catchall_0
    move-exception v0

    move-object v2, v9

    :goto_3
    if-eqz v2, :cond_5

    .line 1002
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1003
    :cond_5
    throw v0

    .line 1001
    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_3

    .line 994
    :catch_2
    move-exception v0

    move-object v1, v9

    goto :goto_2
.end method

.method final g(Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/internal/measurement/ao$i;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1151
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jl;->K()V

    .line 1152
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 1153
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1154
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1156
    :try_start_0
    const-string/jumbo v1, "audience_filter_values"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "audience_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "current_results"

    aput-object v4, v2, v3

    const-string/jumbo v3, "app_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1157
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1158
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_1

    .line 1160
    if-eqz v2, :cond_0

    .line 1161
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v0, v8

    .line 1187
    :goto_0
    return-object v0

    .line 1163
    :cond_1
    :try_start_2
    new-instance v1, Landroidx/b/a;

    invoke-direct {v1}, Landroidx/b/a;-><init>()V

    .line 1164
    :cond_2
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1165
    const/4 v0, 0x1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 1166
    :try_start_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ao$i;->i()Lcom/google/android/gms/internal/measurement/ao$i$a;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/google/android/gms/measurement/internal/js;->a(Lcom/google/android/gms/internal/measurement/fm;[B)Lcom/google/android/gms/internal/measurement/fm;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$i$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ed$b;->u()Lcom/google/android/gms/internal/measurement/fn;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$i;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1175
    :try_start_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1176
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v0

    if-nez v0, :cond_2

    .line 1178
    if-eqz v2, :cond_3

    .line 1179
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v1

    .line 1180
    goto :goto_0

    .line 1168
    :catch_0
    move-exception v0

    .line 1169
    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v4

    .line 1170
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v4

    const-string/jumbo v5, "Failed to merge filter results. appId, audienceId, error"

    .line 1171
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 1172
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1173
    invoke-virtual {v4, v5, v6, v3, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 1181
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 1182
    :goto_2
    :try_start_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 1183
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Database error querying filter results. appId"

    .line 1184
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1185
    if-eqz v1, :cond_4

    .line 1186
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v8

    .line 1187
    goto :goto_0

    .line 1188
    :catchall_0
    move-exception v0

    move-object v2, v8

    :goto_3
    if-eqz v2, :cond_5

    .line 1189
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1190
    :cond_5
    throw v0

    .line 1188
    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_3

    .line 1181
    :catch_2
    move-exception v0

    move-object v1, v8

    goto :goto_2
.end method

.method final g(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/measurement/ag$e;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 1046
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jl;->K()V

    .line 1047
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 1048
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1049
    invoke-static {p2}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1050
    new-instance v8, Landroidx/b/a;

    invoke-direct {v8}, Landroidx/b/a;-><init>()V

    .line 1051
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1053
    :try_start_0
    const-string/jumbo v1, "property_filters"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "audience_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "data"

    aput-object v4, v2, v3

    const-string/jumbo v3, "app_id=? AND property_name=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1054
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1055
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1056
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 1057
    if-eqz v2, :cond_0

    .line 1058
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1085
    :cond_0
    :goto_0
    return-object v0

    .line 1060
    :cond_1
    const/4 v0, 0x1

    :try_start_2
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 1061
    :try_start_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ag$e;->i()Lcom/google/android/gms/internal/measurement/ag$e$a;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/measurement/internal/js;->a(Lcom/google/android/gms/internal/measurement/fm;[B)Lcom/google/android/gms/internal/measurement/fm;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ag$e$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ed$b;->u()Lcom/google/android/gms/internal/measurement/fn;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ag$e;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1066
    const/4 v1, 0x0

    :try_start_4
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1067
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1068
    if-nez v1, :cond_2

    .line 1069
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1070
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v8, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1071
    :cond_2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1072
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v0

    if-nez v0, :cond_1

    .line 1073
    if-eqz v2, :cond_3

    .line 1074
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v8

    .line 1085
    goto :goto_0

    .line 1063
    :catch_0
    move-exception v0

    .line 1064
    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v3, "Failed to merge filter"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 1075
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 1076
    :goto_2
    :try_start_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 1077
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Database error querying filters. appId"

    .line 1078
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1079
    if-eqz v1, :cond_4

    .line 1080
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v9

    .line 1081
    goto :goto_0

    .line 1082
    :catchall_0
    move-exception v0

    move-object v2, v9

    :goto_3
    if-eqz v2, :cond_5

    .line 1083
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1084
    :cond_5
    throw v0

    .line 1082
    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_3

    .line 1075
    :catch_2
    move-exception v0

    move-object v1, v9

    goto :goto_2
.end method

.method public final g()Z
    .locals 4

    .prologue
    .line 792
    const-string/jumbo v0, "select count(1) > 0 from queue where has_realtime = 1"

    const/4 v1, 0x0

    .line 793
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/c;->b(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    .line 794
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h(Ljava/lang/String;)J
    .locals 4

    .prologue
    .line 1285
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1286
    const-string/jumbo v0, "select count(1) from events where app_id=? and name not like \'!_%\' escape \'!\'"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/c;->a(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected final h(Ljava/lang/String;Ljava/lang/String;)J
    .locals 12

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v2, -0x1

    .line 1214
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1215
    invoke-static {p2}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1216
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 1217
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jl;->K()V

    .line 1219
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 1220
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1221
    :try_start_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v0, "select "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " from app2 where app_id=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v1, v7

    const-wide/16 v8, -0x1

    .line 1222
    invoke-direct {p0, v0, v1, v8, v9}, Lcom/google/android/gms/measurement/internal/c;->a(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v0

    .line 1223
    cmp-long v7, v0, v2

    if-nez v7, :cond_1

    .line 1225
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1226
    const-string/jumbo v1, "app_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    const-string/jumbo v1, "first_open_count"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1228
    const-string/jumbo v1, "previous_install_count"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1229
    const-string/jumbo v1, "app2"

    const/4 v7, 0x0

    const/4 v8, 0x5

    .line 1230
    invoke-virtual {v6, v1, v7, v0, v8}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    .line 1231
    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1232
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 1233
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Failed to insert column (got -1). appId"

    .line 1234
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v1, v7, p2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1235
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move-wide v0, v2

    .line 1258
    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v4

    .line 1237
    :cond_1
    :try_start_1
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1238
    const-string/jumbo v8, "app_id"

    invoke-virtual {v7, v8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    const-wide/16 v8, 0x1

    add-long/2addr v8, v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, p2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1240
    const-string/jumbo v8, "app2"

    const-string/jumbo v9, "app_id = ?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    invoke-virtual {v6, v8, v7, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    int-to-long v8, v7

    .line 1241
    cmp-long v4, v8, v4

    if-nez v4, :cond_2

    .line 1242
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v4

    .line 1243
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v4

    const-string/jumbo v5, "Failed to update column (got 0). appId"

    .line 1244
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v5, v7, p2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1245
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move-wide v0, v2

    .line 1246
    goto :goto_0

    .line 1247
    :cond_2
    :try_start_2
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1248
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 1250
    :catch_0
    move-exception v2

    move-wide v0, v4

    .line 1251
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v3

    .line 1252
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v3

    const-string/jumbo v4, "Error inserting column. appId"

    .line 1253
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5, p2, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1254
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 1256
    :catchall_0
    move-exception v0

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1257
    throw v0

    .line 1250
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method final h()V
    .locals 6

    .prologue
    .line 847
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 848
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jl;->K()V

    .line 849
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/c;->M()Z

    move-result v0

    if-nez v0, :cond_1

    .line 871
    :cond_0
    :goto_0
    return-void

    .line 851
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->w()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/el;->f:Lcom/google/android/gms/measurement/internal/ep;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ep;->a()J

    move-result-wide v0

    .line 852
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v2

    .line 853
    sub-long v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    .line 854
    sget-object v0, Lcom/google/android/gms/measurement/internal/t;->x:Lcom/google/android/gms/measurement/internal/dr;

    .line 855
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/dr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 856
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 857
    cmp-long v0, v4, v0

    if-lez v0, :cond_0

    .line 858
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->w()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/el;->f:Lcom/google/android/gms/measurement/internal/ep;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/ep;->a(J)V

    .line 860
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 861
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jl;->K()V

    .line 862
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/c;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 863
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 864
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 865
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 866
    invoke-static {}, Lcom/google/android/gms/measurement/internal/b;->g()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 867
    const-string/jumbo v2, "queue"

    const-string/jumbo v3, "abs(bundle_end_timestamp - ?) > cast(? as integer)"

    .line 868
    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 869
    if-lez v0, :cond_0

    .line 870
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Deleted stale rows. rowsDeleted"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final i()J
    .locals 4

    .prologue
    .line 1213
    const-string/jumbo v0, "select max(bundle_end_timestamp) from queue"

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/c;->a(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final j()J
    .locals 4

    .prologue
    .line 1259
    const-string/jumbo v0, "select max(timestamp) from raw_events"

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/c;->a(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final k()Z
    .locals 4

    .prologue
    .line 1280
    const-string/jumbo v0, "select count(1) > 0 from raw_events"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/c;->b(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    .line 1281
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final s_()V
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jl;->K()V

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 16
    return-void
.end method

.method public final z()Z
    .locals 4

    .prologue
    .line 1282
    const-string/jumbo v0, "select count(1) > 0 from raw_events where realtime = 1"

    const/4 v1, 0x0

    .line 1283
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/c;->b(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    .line 1284
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
