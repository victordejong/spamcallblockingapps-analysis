.class public final Lcom/google/android/gms/measurement/internal/i3;
.super Lcom/google/android/gms/measurement/internal/c4;
.source ""


# instance fields
.field private final c:Lcom/google/android/gms/measurement/internal/h3;

.field private d:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/s4;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/c4;-><init>(Lcom/google/android/gms/measurement/internal/s4;)V

    new-instance p1, Lcom/google/android/gms/measurement/internal/h3;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s4;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/s4;->z()Lcom/google/android/gms/measurement/internal/e;

    const-string v1, "google_app_measurement_local.db"

    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/gms/measurement/internal/h3;-><init>(Lcom/google/android/gms/measurement/internal/i3;Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/i3;->c:Lcom/google/android/gms/measurement/internal/h3;

    return-void
.end method

.method private final x(I[B)Z
    .locals 16

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/m5;->f()V

    iget-boolean v0, v1, Lcom/google/android/gms/measurement/internal/i3;->d:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v4, "type"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "entry"

    move-object/from16 v4, p2

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s4;->z()Lcom/google/android/gms/measurement/internal/e;

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x5

    :goto_0
    if-ge v5, v4, :cond_c

    const/4 v7, 0x1

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/i3;->u()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v9, :cond_1

    :try_start_1
    iput-boolean v7, v1, Lcom/google/android/gms/measurement/internal/i3;->d:Z

    return v2

    :cond_1
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v0, "select count(1) from messages"

    invoke-virtual {v9, v0, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-wide/16 v11, 0x0

    if-eqz v10, :cond_2

    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_2
    :goto_1
    const-string v0, "messages"

    const-wide/32 v13, 0x186a0

    cmp-long v15, v11, v13

    if-ltz v15, :cond_3

    :try_start_3
    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/s4;->t()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v15

    const-string v4, "Data loss, local db full"

    invoke-virtual {v15, v4}, Lcom/google/android/gms/measurement/internal/m3;->a(Ljava/lang/String;)V

    sub-long/2addr v13, v11

    const-wide/16 v11, 0x1

    add-long/2addr v13, v11

    new-array v4, v7, [Ljava/lang/String;

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v2

    const-string v11, "rowid in (select rowid from messages order by rowid asc limit ?)"

    invoke-virtual {v9, v0, v11, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    int-to-long v11, v4

    cmp-long v4, v11, v13

    if-eqz v4, :cond_3

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/s4;->t()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v4

    const-string v15, "Different delete count than expected in local db. expected, received, difference"

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    sub-long/2addr v13, v11

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v4, v15, v2, v7, v11}, Lcom/google/android/gms/measurement/internal/m3;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {v9, v0, v8, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v10, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_4
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v2, 0x1

    return v2

    :catch_2
    move-object v8, v10

    goto :goto_5

    :catchall_1
    move-exception v0

    goto/16 :goto_a

    :catch_3
    move-exception v0

    move-object v10, v8

    :goto_2
    move-object v8, v9

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v10, v8

    :goto_3
    move-object v8, v9

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v9, v8

    goto :goto_a

    :catch_5
    move-exception v0

    move-object v10, v8

    :goto_4
    if-eqz v8, :cond_5

    :try_start_4
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_5
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/s4;->t()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v2

    const-string v4, "Error writing entry to local database"

    invoke-virtual {v2, v4, v0}, Lcom/google/android/gms/measurement/internal/m3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/i3;->d:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v10, :cond_6

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_6
    if-eqz v8, :cond_9

    goto :goto_7

    :catch_6
    move-object v9, v8

    :catch_7
    :goto_5
    int-to-long v10, v6

    :try_start_5
    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    add-int/lit8 v6, v6, 0x14

    if-eqz v8, :cond_7

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_7
    if-eqz v9, :cond_9

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_8

    :catch_8
    move-exception v0

    move-object v10, v8

    :goto_6
    :try_start_6
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/s4;->t()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v2

    const-string v4, "Error writing entry; local database full"

    invoke-virtual {v2, v4, v0}, Lcom/google/android/gms/measurement/internal/m3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/i3;->d:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v10, :cond_8

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_8
    if-eqz v8, :cond_9

    :goto_7
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_9
    :goto_8
    add-int/lit8 v5, v5, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x5

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    move-object v9, v8

    :goto_9
    move-object v8, v10

    :goto_a
    if-eqz v8, :cond_a

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_a
    if-eqz v9, :cond_b

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_b
    throw v0

    :cond_c
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s4;->t()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/o3;->w()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v0

    const-string v2, "Failed to write entry to local database"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/m3;->a(Ljava/lang/String;)V

    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method protected final k()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final m()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/m5;->f()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/i3;->u()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "messages"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/s4;->t()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/o3;->w()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v1

    const-string v2, "Reset local analytics data. records"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/m3;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/s4;->t()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v1

    const-string v2, "Error resetting local analytics data. error"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/m3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final n(Lcom/google/android/gms/measurement/internal/zzas;)Z
    .locals 3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/r;->a(Lcom/google/android/gms/measurement/internal/zzas;Landroid/os/Parcel;I)V

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    array-length v0, p1

    const/high16 v2, 0x20000

    if-le v0, v2, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/s4;->t()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/o3;->n()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object p1

    const-string v0, "Event is too long for local database. Sending event directly to service"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/m3;->a(Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-direct {p0, v1, p1}, Lcom/google/android/gms/measurement/internal/i3;->x(I[B)Z

    move-result p1

    return p1
.end method

.method public final o(Lcom/google/android/gms/measurement/internal/zzkl;)Z
    .locals 3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/r9;->a(Lcom/google/android/gms/measurement/internal/zzkl;Landroid/os/Parcel;I)V

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    array-length v0, p1

    const/high16 v2, 0x20000

    if-le v0, v2, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/s4;->t()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/o3;->n()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object p1

    const-string v0, "User property too long for local database. Sending directly to service"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/m3;->a(Ljava/lang/String;)V

    return v1

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/i3;->x(I[B)Z

    move-result p1

    return p1
.end method

.method public final p(Lcom/google/android/gms/measurement/internal/zzaa;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s4;->G()Lcom/google/android/gms/measurement/internal/u9;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/u9;->L(Landroid/os/Parcelable;)[B

    move-result-object p1

    array-length v0, p1

    const/high16 v1, 0x20000

    if-le v0, v1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/s4;->t()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/o3;->n()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object p1

    const-string v0, "Conditional user property too long for local database. Sending directly to service"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/m3;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/i3;->x(I[B)Z

    move-result p1

    return p1
.end method

.method public final q(I)Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "rowid"

    const-string v3, "Error reading entries from local database"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/m5;->f()V

    iget-boolean v0, v1, Lcom/google/android/gms/measurement/internal/i3;->d:Z

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    return-object v4

    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/i3;->w()Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v6, 0x5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x5

    :goto_0
    if-ge v8, v6, :cond_16

    const/4 v10, 0x1

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/i3;->u()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_14
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_12
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    if-nez v15, :cond_1

    :try_start_1
    iput-boolean v10, v1, Lcom/google/android/gms/measurement/internal/i3;->d:Z

    return-object v4

    :cond_1
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v0, "3"
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_d
    .catchall {:try_start_1 .. :try_end_1} :catchall_a

    :try_start_2
    const-string v12, "messages"

    new-array v13, v10, [Ljava/lang/String;

    aput-object v2, v13, v7

    const-string v14, "type=?"

    new-array v11, v10, [Ljava/lang/String;

    aput-object v0, v11, v7

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "rowid desc"

    const-string v19, "1"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    move-object v0, v11

    move-object v11, v15

    move-object/from16 p1, v15

    move-object v15, v0

    :try_start_3
    invoke-virtual/range {v11 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    :try_start_4
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    const-wide/16 v20, -0x1

    if-eqz v0, :cond_2

    invoke-interface {v11, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    if-eqz v11, :cond_4

    :try_start_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :cond_2
    if-eqz v11, :cond_3

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object/from16 v13, p1

    goto/16 :goto_f

    :catch_0
    move-exception v0

    move-object/from16 v13, p1

    goto/16 :goto_10

    :catch_1
    move-object/from16 v13, p1

    goto/16 :goto_12

    :catch_2
    move-exception v0

    move-object/from16 v13, p1

    goto/16 :goto_14

    :cond_3
    :goto_1
    move-wide/from16 v12, v20

    :cond_4
    :goto_2
    cmp-long v0, v12, v20

    if-eqz v0, :cond_5

    const-string v0, "rowid<?"

    new-array v11, v10, [Ljava/lang/String;

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v7

    move-object v14, v0

    move-object v15, v11

    goto :goto_3

    :cond_5
    move-object v14, v4

    move-object v15, v14

    :goto_3
    const/4 v0, 0x3

    new-array v13, v0, [Ljava/lang/String;

    aput-object v2, v13, v7

    const-string v11, "type"

    aput-object v11, v13, v10

    const-string v11, "entry"

    const/4 v12, 0x2

    aput-object v11, v13, v12

    const-string v16, "messages"

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v19, "rowid asc"

    const/16 v11, 0x64

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v11, p1

    const/4 v6, 0x2

    move-object/from16 v12, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v22

    invoke-virtual/range {v11 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_6
    :goto_4
    :try_start_6
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v11, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    invoke-interface {v11, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v13

    if-nez v12, :cond_7

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v12
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :try_start_7
    array-length v14, v13

    invoke-virtual {v12, v13, v7, v14}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v12, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v13, Lcom/google/android/gms/measurement/internal/zzas;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v13, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/measurement/internal/zzas;
    :try_end_7
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    if-eqz v13, :cond_6

    :goto_5
    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_8 .. :try_end_8} :catch_a
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_3
    :try_start_9
    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/s4;->t()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v13

    const-string v14, "Failed to load event from local database"

    invoke-virtual {v13, v14}, Lcom/google/android/gms/measurement/internal/m3;->a(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    goto :goto_4

    :goto_6
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    throw v0

    :cond_7
    if-ne v12, v10, :cond_8

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v12
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_a .. :try_end_a} :catch_a
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_a .. :try_end_a} :catch_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :try_start_b
    array-length v14, v13

    invoke-virtual {v12, v13, v7, v14}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v12, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v13, Lcom/google/android/gms/measurement/internal/zzkl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v13, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/measurement/internal/zzkl;
    :try_end_b
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_c .. :try_end_c} :catch_a
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_c .. :try_end_c} :catch_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_8
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_8

    :catch_4
    :try_start_d
    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/s4;->t()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v13

    const-string v14, "Failed to load user property from local database"

    invoke-virtual {v13, v14}, Lcom/google/android/gms/measurement/internal/m3;->a(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :try_start_e
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    move-object v13, v4

    :goto_7
    if-eqz v13, :cond_6

    goto :goto_5

    :goto_8
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    throw v0

    :cond_8
    if-ne v12, v6, :cond_9

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v12
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_e .. :try_end_e} :catch_a
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_e .. :try_end_e} :catch_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :try_start_f
    array-length v14, v13

    invoke-virtual {v12, v13, v7, v14}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v12, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v13, Lcom/google/android/gms/measurement/internal/zzaa;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v13, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/measurement/internal/zzaa;
    :try_end_f
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :try_start_10
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_10 .. :try_end_10} :catch_a
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_10 .. :try_end_10} :catch_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_8
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    goto :goto_9

    :catchall_3
    move-exception v0

    goto :goto_a

    :catch_5
    :try_start_11
    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/s4;->t()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v13

    const-string v14, "Failed to load conditional user property from local database"

    invoke-virtual {v13, v14}, Lcom/google/android/gms/measurement/internal/m3;->a(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    :try_start_12
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    move-object v13, v4

    :goto_9
    if-eqz v13, :cond_6

    goto/16 :goto_5

    :goto_a
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    throw v0

    :cond_9
    if-ne v12, v0, :cond_a

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/s4;->t()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/o3;->p()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v12

    const-string v13, "Skipping app launch break"

    :goto_b
    invoke-virtual {v12, v13}, Lcom/google/android/gms/measurement/internal/m3;->a(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_a
    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/s4;->t()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v12

    const-string v13, "Unknown record type in local database"

    goto :goto_b

    :cond_b
    new-array v0, v10, [Ljava/lang/String;

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v7

    const-string v6, "messages"

    const-string v12, "rowid <= ?"
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_12 .. :try_end_12} :catch_a
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_12 .. :try_end_12} :catch_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_8
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    move-object/from16 v13, p1

    :try_start_13
    invoke-virtual {v13, v6, v12, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_c

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s4;->t()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v0

    const-string v6, "Fewer entries removed from local database than expected"

    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/m3;->a(Ljava/lang/String;)V

    :cond_c
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_13 .. :try_end_13} :catch_7
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_13 .. :try_end_13} :catch_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    if-eqz v11, :cond_d

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_d
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-object v5

    :catchall_4
    move-exception v0

    goto :goto_c

    :catch_6
    move-exception v0

    goto :goto_11

    :catch_7
    move-exception v0

    goto :goto_15

    :catchall_5
    move-exception v0

    move-object/from16 v13, p1

    :goto_c
    move-object v4, v11

    goto :goto_f

    :catch_8
    move-exception v0

    move-object/from16 v13, p1

    goto :goto_11

    :catch_9
    move-object/from16 v13, p1

    goto :goto_13

    :catch_a
    move-exception v0

    move-object/from16 v13, p1

    goto :goto_15

    :catchall_6
    move-exception v0

    move-object/from16 v13, p1

    goto :goto_e

    :catchall_7
    move-exception v0

    move-object/from16 v13, p1

    goto :goto_d

    :catchall_8
    move-exception v0

    move-object v13, v15

    :goto_d
    move-object v11, v4

    :goto_e
    if-eqz v11, :cond_e

    :try_start_14
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_e
    throw v0
    :try_end_14
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_14 .. :try_end_14} :catch_c
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_14 .. :try_end_14} :catch_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_14} :catch_b
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    :catchall_9
    move-exception v0

    goto :goto_f

    :catch_b
    move-exception v0

    goto :goto_10

    :catch_c
    move-exception v0

    goto :goto_14

    :catchall_a
    move-exception v0

    move-object v13, v15

    :goto_f
    move-object v15, v13

    goto/16 :goto_1b

    :catch_d
    move-exception v0

    move-object v13, v15

    :goto_10
    move-object v11, v4

    :goto_11
    move-object v15, v13

    goto :goto_16

    :catch_e
    move-object v13, v15

    :catch_f
    :goto_12
    move-object v11, v4

    :catch_10
    :goto_13
    move-object v15, v13

    goto :goto_17

    :catch_11
    move-exception v0

    move-object v13, v15

    :goto_14
    move-object v11, v4

    :goto_15
    move-object v15, v13

    goto :goto_19

    :catchall_b
    move-exception v0

    move-object v15, v4

    goto :goto_1b

    :catch_12
    move-exception v0

    move-object v11, v4

    move-object v15, v11

    :goto_16
    if-eqz v15, :cond_f

    :try_start_15
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_f
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/s4;->t()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v6

    invoke-virtual {v6, v3, v0}, Lcom/google/android/gms/measurement/internal/m3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean v10, v1, Lcom/google/android/gms/measurement/internal/i3;->d:Z
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_c

    if-eqz v11, :cond_10

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_10
    if-eqz v15, :cond_13

    goto :goto_18

    :catch_13
    move-object v11, v4

    move-object v15, v11

    :goto_17
    int-to-long v12, v9

    :try_start_16
    invoke-static {v12, v13}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_c

    add-int/lit8 v9, v9, 0x14

    if-eqz v11, :cond_11

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_11
    if-eqz v15, :cond_13

    :goto_18
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1a

    :catch_14
    move-exception v0

    move-object v11, v4

    move-object v15, v11

    :goto_19
    :try_start_17
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/s4;->t()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v6

    invoke-virtual {v6, v3, v0}, Lcom/google/android/gms/measurement/internal/m3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean v10, v1, Lcom/google/android/gms/measurement/internal/i3;->d:Z
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_c

    if-eqz v11, :cond_12

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_12
    if-eqz v15, :cond_13

    goto :goto_18

    :cond_13
    :goto_1a
    add-int/lit8 v8, v8, 0x1

    const/4 v6, 0x5

    goto/16 :goto_0

    :catchall_c
    move-exception v0

    move-object v4, v11

    :goto_1b
    if-eqz v4, :cond_14

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_14
    if-eqz v15, :cond_15

    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_15
    throw v0

    :cond_16
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s4;->t()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/o3;->p()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v0

    const-string v2, "Failed to read events from database in reasonable time"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/m3;->a(Ljava/lang/String;)V

    return-object v4

    :cond_17
    return-object v5
.end method

.method public final r()Z
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [B

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/measurement/internal/i3;->x(I[B)Z

    move-result v0

    return v0
.end method

.method public final s()Z
    .locals 10

    const-string v0, "Error deleting app launch break from local database"

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/m5;->f()V

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/i3;->d:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/i3;->w()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x5

    :goto_0
    if-ge v3, v1, :cond_5

    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/i3;->u()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    if-nez v5, :cond_1

    iput-boolean v6, p0, Lcom/google/android/gms/measurement/internal/i3;->d:Z

    return v2

    :cond_1
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-array v7, v6, [Ljava/lang/String;

    const/4 v8, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    const-string v8, "messages"

    const-string v9, "type == ?"

    invoke-virtual {v5, v8, v9, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return v6

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v7

    goto :goto_1

    :catch_1
    move-exception v7

    goto :goto_3

    :goto_1
    if-eqz v5, :cond_2

    :try_start_1
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_2
    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/s4;->t()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v8

    invoke-virtual {v8, v0, v7}, Lcom/google/android/gms/measurement/internal/m3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean v6, p0, Lcom/google/android/gms/measurement/internal/i3;->d:Z

    if-eqz v5, :cond_3

    goto :goto_2

    :catch_2
    int-to-long v6, v4

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v4, v4, 0x14

    if-eqz v5, :cond_3

    :goto_2
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_4

    :goto_3
    :try_start_2
    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/s4;->t()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v8

    invoke-virtual {v8, v0, v7}, Lcom/google/android/gms/measurement/internal/m3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean v6, p0, Lcom/google/android/gms/measurement/internal/i3;->d:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :goto_5
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_4
    throw v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s4;->t()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/o3;->p()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v0

    const-string v1, "Error deleting app launch break from local database in reasonable time"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/m3;->a(Ljava/lang/String;)V

    :cond_6
    return v2
.end method

.method final u()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/i3;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/i3;->c:Lcom/google/android/gms/measurement/internal/h3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/h3;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/i3;->d:Z

    return-object v1

    :cond_1
    return-object v0
.end method

.method final w()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s4;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/s4;->z()Lcom/google/android/gms/measurement/internal/e;

    const-string v1, "google_app_measurement_local.db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method
