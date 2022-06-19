.class public final Lcom/google/android/gms/measurement/internal/du;
.super Lcom/google/android/gms/measurement/internal/de;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"


# instance fields
.field private final a:Lcom/google/android/gms/measurement/internal/dx;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/fd;)V
    .locals 3

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/de;-><init>(Lcom/google/android/gms/measurement/internal/fd;)V

    .line 2
    new-instance v0, Lcom/google/android/gms/measurement/internal/dx;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->r()Landroid/content/Context;

    move-result-object v1

    .line 3
    const-string/jumbo v2, "google_app_measurement_local.db"

    .line 4
    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/measurement/internal/dx;-><init>(Lcom/google/android/gms/measurement/internal/du;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/du;->a:Lcom/google/android/gms/measurement/internal/dx;

    .line 5
    return-void
.end method

.method private final E()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 314
    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/du;->b:Z

    if-eqz v1, :cond_0

    .line 320
    :goto_0
    return-object v0

    .line 316
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/du;->a:Lcom/google/android/gms/measurement/internal/dx;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dx;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 317
    if-nez v1, :cond_1

    .line 318
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/du;->b:Z

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 320
    goto :goto_0
.end method

.method private final F()Z
    .locals 2

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->r()Landroid/content/Context;

    move-result-object v0

    .line 322
    const-string/jumbo v1, "google_app_measurement_local.db"

    .line 323
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 298
    .line 299
    :try_start_0
    const-string/jumbo v1, "messages"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "rowid"

    aput-object v3, v2, v0

    const-string/jumbo v3, "type=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v5, "3"

    .line 300
    aput-object v5, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "rowid desc"

    const-string/jumbo v8, "1"

    move-object v0, p0

    .line 301
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 302
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v0

    .line 304
    if-eqz v2, :cond_0

    .line 305
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 310
    :cond_0
    :goto_0
    return-wide v0

    .line 308
    :cond_1
    if-eqz v2, :cond_2

    .line 309
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 310
    :cond_2
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 311
    :catchall_0
    move-exception v0

    move-object v1, v9

    :goto_1
    if-eqz v1, :cond_3

    .line 312
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 313
    :cond_3
    throw v0

    .line 311
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method private final a(I[B)Z
    .locals 13

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->m()V

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 19
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/du;->b:Z

    if-eqz v0, :cond_0

    .line 20
    const/4 v0, 0x0

    .line 90
    :goto_0
    return v0

    .line 21
    :cond_0
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 22
    const-string/jumbo v0, "type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 23
    const-string/jumbo v0, "entry"

    invoke-virtual {v7, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 24
    const/4 v0, 0x5

    .line 25
    const/4 v1, 0x0

    move v6, v1

    :goto_1
    const/4 v1, 0x5

    if-ge v6, v1, :cond_e

    .line 26
    const/4 v3, 0x0

    .line 27
    const/4 v2, 0x0

    .line 28
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/du;->E()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 29
    if-nez v3, :cond_2

    .line 30
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/du;->b:Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    if-eqz v3, :cond_1

    .line 32
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 33
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 34
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 35
    const-wide/16 v4, 0x0

    .line 36
    const-string/jumbo v1, "select count(1) from messages"

    const/4 v8, 0x0

    invoke-virtual {v3, v1, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 37
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 38
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 39
    :cond_3
    const-wide/32 v8, 0x186a0

    cmp-long v1, v4, v8

    if-ltz v1, :cond_4

    .line 40
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v8, "Data loss, local db full"

    invoke-virtual {v1, v8}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 41
    const-wide/32 v8, 0x186a0

    sub-long v4, v8, v4

    const-wide/16 v8, 0x1

    add-long/2addr v4, v8

    .line 42
    const-string/jumbo v1, "messages"

    const-string/jumbo v8, "rowid in (select rowid from messages order by rowid asc limit ?)"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    .line 43
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 44
    invoke-virtual {v3, v1, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    int-to-long v8, v1

    .line 45
    cmp-long v1, v8, v4

    if-eqz v1, :cond_4

    .line 46
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 47
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v10, "Different delete count than expected in local db. expected, received, difference"

    .line 48
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 49
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    sub-long/2addr v4, v8

    .line 50
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 51
    invoke-virtual {v1, v10, v11, v12, v4}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    :cond_4
    const-string/jumbo v1, "messages"

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 53
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 54
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    if-eqz v2, :cond_5

    .line 56
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 57
    :cond_5
    if-eqz v3, :cond_6

    .line 58
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 59
    :cond_6
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 60
    :catch_0
    move-exception v1

    .line 61
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v4

    const-string/jumbo v5, "Error writing entry; local database full"

    invoke-virtual {v4, v5, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/du;->b:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    if-eqz v2, :cond_7

    .line 64
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 65
    :cond_7
    if-eqz v3, :cond_8

    .line 66
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 88
    :cond_8
    :goto_2
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto/16 :goto_1

    .line 68
    :catch_1
    move-exception v1

    int-to-long v4, v0

    :try_start_3
    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 69
    add-int/lit8 v0, v0, 0x14

    .line 70
    if-eqz v2, :cond_9

    .line 71
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 72
    :cond_9
    if-eqz v3, :cond_8

    .line 73
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_2

    .line 74
    :catch_2
    move-exception v1

    .line 75
    if-eqz v3, :cond_a

    :try_start_4
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 76
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 77
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v4

    const-string/jumbo v5, "Error writing entry to local database"

    invoke-virtual {v4, v5, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/du;->b:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 79
    if-eqz v2, :cond_b

    .line 80
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 81
    :cond_b
    if-eqz v3, :cond_8

    .line 82
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_2

    .line 83
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_c

    .line 84
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 85
    :cond_c
    if-eqz v3, :cond_d

    .line 86
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 87
    :cond_d
    throw v0

    .line 89
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Failed to write entry to local database"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 90
    const/4 v0, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public final B()V
    .locals 4

    .prologue
    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->m()V

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 9
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/du;->E()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 10
    const-string/jumbo v1, "messages"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 11
    if-lez v0, :cond_0

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Reset local analytics data. records"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    :cond_0
    :goto_0
    return-void

    .line 14
    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Error resetting local analytics data. error"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final C()Z
    .locals 2

    .prologue
    .line 248
    const/4 v0, 0x3

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/du;->a(I[B)Z

    move-result v0

    return v0
.end method

.method public final D()Z
    .locals 11

    .prologue
    const/4 v6, 0x5

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 249
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 250
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->m()V

    .line 251
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/du;->b:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 297
    :goto_0
    return v0

    .line 253
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/du;->F()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 254
    goto :goto_0

    :cond_1
    move v5, v1

    move v0, v6

    .line 256
    :goto_1
    if-ge v5, v6, :cond_8

    .line 257
    const/4 v4, 0x0

    .line 258
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/du;->E()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 259
    if-nez v4, :cond_3

    .line 260
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/gms/measurement/internal/du;->b:Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    if-eqz v4, :cond_2

    .line 262
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    move v0, v1

    .line 263
    goto :goto_0

    .line 264
    :cond_3
    :try_start_1
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 265
    const-string/jumbo v3, "messages"

    const-string/jumbo v7, "type == ?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x3

    .line 266
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 267
    invoke-virtual {v4, v3, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 268
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 269
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    if-eqz v4, :cond_4

    .line 271
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_4
    move v0, v2

    .line 272
    goto :goto_0

    .line 273
    :catch_0
    move-exception v3

    .line 274
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v7

    const-string/jumbo v8, "Error deleting app launch break from local database"

    invoke-virtual {v7, v8, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 275
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/gms/measurement/internal/du;->b:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 276
    if-eqz v4, :cond_5

    .line 277
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 293
    :cond_5
    :goto_2
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_1

    .line 279
    :catch_1
    move-exception v3

    int-to-long v8, v0

    :try_start_3
    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 280
    add-int/lit8 v0, v0, 0x14

    .line 281
    if-eqz v4, :cond_5

    .line 282
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_2

    .line 283
    :catch_2
    move-exception v3

    .line 284
    if-eqz v4, :cond_6

    :try_start_4
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 285
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 286
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v7

    const-string/jumbo v8, "Error deleting app launch break from local database"

    invoke-virtual {v7, v8, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 287
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/gms/measurement/internal/du;->b:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 288
    if-eqz v4, :cond_5

    .line 289
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_2

    .line 290
    :catchall_0
    move-exception v0

    if-eqz v4, :cond_7

    .line 291
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 292
    :cond_7
    throw v0

    .line 294
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 295
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v2, "Error deleting app launch break from local database in reasonable time"

    .line 296
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    move v0, v1

    .line 297
    goto/16 :goto_0
.end method

.method public final bridge synthetic a()Lcom/google/android/gms/measurement/internal/ab;
    .locals 1

    .prologue
    .line 328
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->a()Lcom/google/android/gms/measurement/internal/ab;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/internal/safeparcel/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 119
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->m()V

    .line 120
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/gms/measurement/internal/du;->b:Z

    if-eqz v2, :cond_0

    .line 121
    const/4 v2, 0x0

    .line 247
    :goto_0
    return-object v2

    .line 122
    :cond_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 123
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/du;->F()Z

    move-result v2

    if-nez v2, :cond_1

    move-object v2, v12

    .line 124
    goto :goto_0

    .line 125
    :cond_1
    const/4 v11, 0x5

    .line 126
    const/4 v2, 0x0

    move v14, v2

    :goto_1
    const/4 v2, 0x5

    if-ge v14, v2, :cond_15

    .line 127
    const/4 v5, 0x0

    .line 128
    const/4 v13, 0x0

    .line 129
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/du;->E()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-result-object v2

    .line 130
    if-nez v2, :cond_3

    .line 131
    const/4 v3, 0x1

    :try_start_1
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/android/gms/measurement/internal/du;->b:Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 132
    if-eqz v2, :cond_2

    .line 133
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 134
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 135
    :cond_3
    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 136
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/du;->a(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v8

    .line 137
    const/4 v5, 0x0

    .line 138
    const/4 v6, 0x0

    .line 139
    const-wide/16 v16, -0x1

    cmp-long v3, v8, v16

    if-eqz v3, :cond_4

    .line 140
    const-string/jumbo v5, "rowid<?"

    .line 141
    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    .line 142
    :cond_4
    const-string/jumbo v3, "messages"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "rowid"

    aput-object v8, v4, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "type"

    aput-object v8, v4, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "entry"

    aput-object v8, v4, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string/jumbo v9, "rowid asc"

    const/16 v10, 0x64

    .line 143
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 144
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move-result-object v4

    .line 145
    const-wide/16 v6, -0x1

    .line 146
    :cond_5
    :goto_2
    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 147
    const/4 v3, 0x0

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 148
    const/4 v3, 0x1

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 149
    const/4 v5, 0x2

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 150
    if-nez v3, :cond_b

    .line 151
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v5

    .line 152
    const/4 v3, 0x0

    :try_start_4
    array-length v9, v8

    invoke-virtual {v5, v8, v3, v9}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 153
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 154
    sget-object v3, Lcom/google/android/gms/measurement/internal/r;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v5}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/measurement/internal/r;
    :try_end_4
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 155
    :try_start_5
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 163
    if-eqz v3, :cond_5

    .line 164
    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 217
    :catch_0
    move-exception v3

    move-object v5, v2

    .line 218
    :goto_3
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v6, "Error reading entries from local database"

    invoke-virtual {v2, v6, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 219
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/gms/measurement/internal/du;->b:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 220
    if-eqz v4, :cond_6

    .line 221
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 222
    :cond_6
    if-eqz v5, :cond_16

    .line 223
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move v2, v11

    .line 245
    :cond_7
    :goto_4
    add-int/lit8 v3, v14, 0x1

    move v14, v3

    move v11, v2

    goto/16 :goto_1

    .line 158
    :catch_1
    move-exception v3

    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v3

    const-string/jumbo v8, "Failed to load event from local database"

    invoke-virtual {v3, v8}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 159
    :try_start_8
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2

    .line 225
    :catch_2
    move-exception v3

    move-object v5, v2

    :goto_5
    int-to-long v2, v11

    :try_start_9
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 226
    add-int/lit8 v2, v11, 0x14

    .line 227
    if-eqz v4, :cond_8

    .line 228
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 229
    :cond_8
    if-eqz v5, :cond_7

    .line 230
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_4

    .line 161
    :catchall_0
    move-exception v3

    :try_start_a
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 162
    throw v3
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_a .. :try_end_a} :catch_0
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_a .. :try_end_a} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 231
    :catch_3
    move-exception v3

    move-object v5, v2

    .line 232
    :goto_6
    if-eqz v5, :cond_9

    :try_start_b
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 233
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 234
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v6, "Error reading entries from local database"

    invoke-virtual {v2, v6, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 235
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/gms/measurement/internal/du;->b:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 236
    if-eqz v4, :cond_a

    .line 237
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 238
    :cond_a
    if-eqz v5, :cond_16

    .line 239
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move v2, v11

    goto :goto_4

    .line 165
    :cond_b
    const/4 v5, 0x1

    if-ne v3, v5, :cond_e

    .line 166
    :try_start_c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_c .. :try_end_c} :catch_0
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_c .. :try_end_c} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-result-object v9

    .line 167
    const/4 v5, 0x0

    .line 168
    const/4 v3, 0x0

    :try_start_d
    array-length v10, v8

    invoke-virtual {v9, v8, v3, v10}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 169
    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 170
    sget-object v3, Lcom/google/android/gms/measurement/internal/jv;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/measurement/internal/jv;
    :try_end_d
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 171
    :try_start_e
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 179
    :goto_7
    if-eqz v3, :cond_5

    .line 180
    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_e .. :try_end_e} :catch_0
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_e .. :try_end_e} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto/16 :goto_2

    .line 240
    :catchall_1
    move-exception v3

    move-object v5, v2

    :goto_8
    if-eqz v4, :cond_c

    .line 241
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 242
    :cond_c
    if-eqz v5, :cond_d

    .line 243
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 244
    :cond_d
    throw v3

    .line 174
    :catch_4
    move-exception v3

    :try_start_f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v3

    const-string/jumbo v8, "Failed to load user property from local database"

    invoke-virtual {v3, v8}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 175
    :try_start_10
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    move-object v3, v5

    .line 176
    goto :goto_7

    .line 177
    :catchall_2
    move-exception v3

    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 178
    throw v3

    .line 181
    :cond_e
    const/4 v5, 0x2

    if-ne v3, v5, :cond_f

    .line 182
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    move-result-object v9

    .line 183
    const/4 v5, 0x0

    .line 184
    const/4 v3, 0x0

    :try_start_11
    array-length v10, v8

    invoke-virtual {v9, v8, v3, v10}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 185
    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 186
    sget-object v3, Lcom/google/android/gms/measurement/internal/kn;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 187
    invoke-interface {v3, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/measurement/internal/kn;
    :try_end_11
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 188
    :try_start_12
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 198
    :goto_9
    if-eqz v3, :cond_5

    .line 199
    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_12 .. :try_end_12} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_3
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    goto/16 :goto_2

    .line 191
    :catch_5
    move-exception v3

    :try_start_13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v3

    .line 192
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v3

    const-string/jumbo v8, "Failed to load conditional user property from local database"

    .line 193
    invoke-virtual {v3, v8}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 194
    :try_start_14
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    move-object v3, v5

    .line 195
    goto :goto_9

    .line 196
    :catchall_3
    move-exception v3

    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 197
    throw v3

    .line 200
    :cond_f
    const/4 v5, 0x3

    if-ne v3, v5, :cond_10

    .line 201
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v3

    const-string/jumbo v5, "Skipping app launch break"

    invoke-virtual {v3, v5}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 202
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v3

    const-string/jumbo v5, "Unknown record type in local database"

    invoke-virtual {v3, v5}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 204
    :cond_11
    const-string/jumbo v3, "messages"

    const-string/jumbo v5, "rowid <= ?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    .line 205
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v9

    .line 206
    invoke-virtual {v2, v3, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 207
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_12

    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v3

    const-string/jumbo v5, "Fewer entries removed from local database than expected"

    invoke-virtual {v3, v5}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 209
    :cond_12
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 210
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_14
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_14 .. :try_end_14} :catch_0
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_14 .. :try_end_14} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_14} :catch_3
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 212
    if-eqz v4, :cond_13

    .line 213
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 214
    :cond_13
    if-eqz v2, :cond_14

    .line 215
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_14
    move-object v2, v12

    .line 216
    goto/16 :goto_0

    .line 246
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Failed to read events from database in reasonable time"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 247
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 240
    :catchall_4
    move-exception v2

    move-object v3, v2

    move-object v4, v13

    goto/16 :goto_8

    :catchall_5
    move-exception v3

    move-object v4, v13

    move-object v5, v2

    goto/16 :goto_8

    :catchall_6
    move-exception v2

    move-object v3, v2

    goto/16 :goto_8

    .line 231
    :catch_6
    move-exception v2

    move-object v3, v2

    move-object v4, v13

    goto/16 :goto_6

    :catch_7
    move-exception v3

    move-object v4, v13

    move-object v5, v2

    goto/16 :goto_6

    .line 225
    :catch_8
    move-exception v2

    move-object v4, v13

    goto/16 :goto_5

    :catch_9
    move-exception v3

    move-object v4, v13

    move-object v5, v2

    goto/16 :goto_5

    .line 217
    :catch_a
    move-exception v2

    move-object v3, v2

    move-object v4, v13

    goto/16 :goto_3

    :catch_b
    move-exception v3

    move-object v4, v13

    move-object v5, v2

    goto/16 :goto_3

    :cond_16
    move v2, v11

    goto/16 :goto_4
.end method

.method public final a(Lcom/google/android/gms/measurement/internal/jv;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 101
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 102
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/measurement/internal/jv;->writeToParcel(Landroid/os/Parcel;I)V

    .line 103
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    .line 104
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 105
    array-length v1, v2

    const/high16 v3, 0x20000

    if-le v1, v3, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 107
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->c()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "User property too long for local database. Sending directly to service"

    .line 108
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 110
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0, v2}, Lcom/google/android/gms/measurement/internal/du;->a(I[B)Z

    move-result v0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/measurement/internal/kn;)Z
    .locals 3

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->t()Lcom/google/android/gms/measurement/internal/jw;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/jw;->a(Landroid/os/Parcelable;)[B

    move-result-object v0

    .line 112
    array-length v1, v0

    const/high16 v2, 0x20000

    if-le v1, v2, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->c()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Conditional user property too long for local database. Sending directly to service"

    .line 115
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 116
    const/4 v0, 0x0

    .line 117
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/measurement/internal/du;->a(I[B)Z

    move-result v0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/measurement/internal/r;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 91
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 92
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/measurement/internal/r;->writeToParcel(Landroid/os/Parcel;I)V

    .line 93
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    .line 94
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 95
    array-length v1, v2

    const/high16 v3, 0x20000

    if-le v1, v3, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 97
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->c()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Event is too long for local database. Sending event directly to service"

    .line 98
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 100
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, v0, v2}, Lcom/google/android/gms/measurement/internal/du;->a(I[B)Z

    move-result v0

    goto :goto_0
.end method

.method public final bridge synthetic b()Lcom/google/android/gms/measurement/internal/gk;
    .locals 1

    .prologue
    .line 329
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->b()Lcom/google/android/gms/measurement/internal/gk;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic c()Lcom/google/android/gms/measurement/internal/dv;
    .locals 1

    .prologue
    .line 330
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->c()Lcom/google/android/gms/measurement/internal/dv;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic d()Lcom/google/android/gms/measurement/internal/hu;
    .locals 1

    .prologue
    .line 331
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->d()Lcom/google/android/gms/measurement/internal/hu;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic e()Lcom/google/android/gms/measurement/internal/ho;
    .locals 1

    .prologue
    .line 332
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->e()Lcom/google/android/gms/measurement/internal/ho;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic f()Lcom/google/android/gms/measurement/internal/du;
    .locals 1

    .prologue
    .line 333
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->f()Lcom/google/android/gms/measurement/internal/du;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic g()Lcom/google/android/gms/measurement/internal/iz;
    .locals 1

    .prologue
    .line 334
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->g()Lcom/google/android/gms/measurement/internal/iz;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic l()V
    .locals 0

    .prologue
    .line 324
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->l()V

    return-void
.end method

.method public final bridge synthetic m()V
    .locals 0

    .prologue
    .line 325
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->m()V

    return-void
.end method

.method public final bridge synthetic n()V
    .locals 0

    .prologue
    .line 326
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->n()V

    return-void
.end method

.method public final bridge synthetic o()V
    .locals 0

    .prologue
    .line 327
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->o()V

    return-void
.end method

.method public final bridge synthetic p()Lcom/google/android/gms/measurement/internal/l;
    .locals 1

    .prologue
    .line 335
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->p()Lcom/google/android/gms/measurement/internal/l;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic q()Lcom/google/android/gms/common/util/e;
    .locals 1

    .prologue
    .line 336
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic r()Landroid/content/Context;
    .locals 1

    .prologue
    .line 337
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->r()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic s()Lcom/google/android/gms/measurement/internal/dw;
    .locals 1

    .prologue
    .line 338
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->s()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic t()Lcom/google/android/gms/measurement/internal/jw;
    .locals 1

    .prologue
    .line 339
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->t()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic u()Lcom/google/android/gms/measurement/internal/fa;
    .locals 1

    .prologue
    .line 340
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic v()Lcom/google/android/gms/measurement/internal/dy;
    .locals 1

    .prologue
    .line 341
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic w()Lcom/google/android/gms/measurement/internal/el;
    .locals 1

    .prologue
    .line 342
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->w()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic x()Lcom/google/android/gms/measurement/internal/b;
    .locals 1

    .prologue
    .line 343
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic y()Lcom/google/android/gms/measurement/internal/kk;
    .locals 1

    .prologue
    .line 344
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->y()Lcom/google/android/gms/measurement/internal/kk;

    move-result-object v0

    return-object v0
.end method

.method protected final z()Z
    .locals 1

    .prologue
    .line 6
    const/4 v0, 0x0

    return v0
.end method
