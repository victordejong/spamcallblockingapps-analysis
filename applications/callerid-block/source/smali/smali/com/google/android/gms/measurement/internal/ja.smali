.class final Lcom/google/android/gms/measurement/internal/ja;
.super Lcom/google/android/gms/measurement/internal/e9;
.source ""


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/measurement/internal/ea;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/Long;

.field private h:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/o9;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/e9;-><init>(Lcom/google/android/gms/measurement/internal/o9;)V

    return-void
.end method

.method private final l(Ljava/lang/Integer;)Lcom/google/android/gms/measurement/internal/ea;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ja;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ja;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/ea;

    return-object p1

    :cond_0
    new-instance v0, Lcom/google/android/gms/measurement/internal/ea;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ja;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/measurement/internal/ea;-><init>(Lcom/google/android/gms/measurement/internal/ja;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ja;->f:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private final m(II)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ja;->f:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/ea;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/ea;->c(Lcom/google/android/gms/measurement/internal/ea;)Ljava/util/BitSet;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    return p1
.end method


# virtual methods
.method protected final i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final k(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/List;
    .locals 64
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/p1;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/g2;",
            ">;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/k1;",
            ">;"
        }
    .end annotation

    move-object/from16 v10, p0

    const-string v11, "current_results"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/h;->d(Ljava/lang/String;)Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/h;->h(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/common/internal/h;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p1

    iput-object v0, v10, Lcom/google/android/gms/measurement/internal/ja;->d:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, v10, Lcom/google/android/gms/measurement/internal/ja;->e:Ljava/util/Set;

    new-instance v0, Ld/e/a;

    invoke-direct {v0}, Ld/e/a;-><init>()V

    iput-object v0, v10, Lcom/google/android/gms/measurement/internal/ja;->f:Ljava/util/Map;

    move-object/from16 v0, p4

    iput-object v0, v10, Lcom/google/android/gms/measurement/internal/ja;->g:Ljava/lang/Long;

    move-object/from16 v0, p5

    iput-object v0, v10, Lcom/google/android/gms/measurement/internal/ja;->h:Ljava/lang/Long;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/p1;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/p1;->y()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_s"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/k9;->a()Z

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s4;->z()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v0

    iget-object v2, v10, Lcom/google/android/gms/measurement/internal/ja;->d:Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/measurement/internal/c3;->a0:Lcom/google/android/gms/measurement/internal/a3;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/e;->w(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)Z

    move-result v14

    invoke-static {}, Lcom/google/android/gms/internal/measurement/k9;->a()Z

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s4;->z()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v0

    iget-object v2, v10, Lcom/google/android/gms/measurement/internal/ja;->d:Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/measurement/internal/c3;->Z:Lcom/google/android/gms/measurement/internal/a3;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/e;->w(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)Z

    move-result v15

    if-eqz v1, :cond_2

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/d9;->b:Lcom/google/android/gms/measurement/internal/o9;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/o9;->V()Lcom/google/android/gms/measurement/internal/i;

    move-result-object v2

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/ja;->d:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e9;->h()V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/m5;->f()V

    invoke-static {v3}, Lcom/google/android/gms/common/internal/h;->d(Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "current_session_count"

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_0
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i;->P()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    new-array v5, v13, [Ljava/lang/String;

    aput-object v3, v5, v12

    const-string v6, "events"

    const-string v7, "app_id = ?"

    invoke-virtual {v4, v6, v0, v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/s4;->t()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v2

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/o3;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Error resetting session-scoped event counts. appId"

    invoke-virtual {v2, v4, v3, v0}, Lcom/google/android/gms/measurement/internal/m3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    const-string v9, "Failed to merge filter. appId"

    const-string v8, "Database error querying filters. appId"

    const-string v16, "data"

    const-string v7, "audience_id"

    const/4 v6, 0x2

    if-eqz v15, :cond_9

    if-eqz v14, :cond_9

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/d9;->b:Lcom/google/android/gms/measurement/internal/o9;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/o9;->V()Lcom/google/android/gms/measurement/internal/i;

    move-result-object v2

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/ja;->d:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/h;->d(Ljava/lang/String;)Ljava/lang/String;

    new-instance v4, Ld/e/a;

    invoke-direct {v4}, Ld/e/a;-><init>()V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i;->P()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v17

    :try_start_1
    new-array v0, v6, [Ljava/lang/String;

    aput-object v7, v0, v12

    aput-object v16, v0, v13

    new-array v5, v13, [Ljava/lang/String;

    aput-object v3, v5, v12

    const-string v18, "event_filters"

    const-string v20, "app_id=?"

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v19, v0

    move-object/from16 v21, v5

    invoke-virtual/range {v17 .. v24}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_2
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/o0;->J()Lcom/google/android/gms/internal/measurement/n0;

    move-result-object v13

    invoke-static {v13, v0}, Lcom/google/android/gms/measurement/internal/q9;->I(Lcom/google/android/gms/internal/measurement/p6;[B)Lcom/google/android/gms/internal/measurement/p6;

    check-cast v13, Lcom/google/android/gms/internal/measurement/n0;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/n5;->k()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/o0;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/o0;->C()Z

    move-result v13

    if-nez v13, :cond_3

    goto :goto_4

    :cond_3
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v4, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/List;

    if-nez v17, :cond_4

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    move-object/from16 v12, v17

    :goto_3
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :catch_1
    move-exception v0

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/s4;->t()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v12

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/o3;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v9, v13, v0}, Lcom/google/android/gms/measurement/internal/m3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_4
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v0, :cond_6

    if-eqz v5, :cond_5

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v12, v4

    goto :goto_9

    :cond_6
    const/4 v12, 0x0

    const/4 v13, 0x1

    goto :goto_2

    :cond_7
    :try_start_5
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v5, :cond_9

    :goto_5
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_8

    :catchall_0
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    const/4 v5, 0x0

    goto :goto_7

    :catch_3
    move-exception v0

    const/4 v5, 0x0

    :goto_6
    :try_start_6
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/s4;->t()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v2

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/o3;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v8, v3, v0}, Lcom/google/android/gms/measurement/internal/m3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v5, :cond_9

    goto :goto_5

    :goto_7
    if-eqz v5, :cond_8

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0

    :cond_9
    :goto_8
    move-object v12, v0

    :goto_9
    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/d9;->b:Lcom/google/android/gms/measurement/internal/o9;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/o9;->V()Lcom/google/android/gms/measurement/internal/i;

    move-result-object v2

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/ja;->d:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e9;->h()V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/m5;->f()V

    invoke-static {v3}, Lcom/google/android/gms/common/internal/h;->d(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i;->P()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v17

    :try_start_7
    new-array v0, v6, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v7, v0, v4

    const/4 v5, 0x1

    aput-object v11, v0, v5

    new-array v13, v5, [Ljava/lang/String;

    aput-object v3, v13, v4

    const-string v18, "audience_filter_values"

    const-string v20, "app_id=?"

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v19, v0

    move-object/from16 v21, v13

    invoke-virtual/range {v17 .. v24}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    if-eqz v4, :cond_a

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_a
    move-object v13, v0

    move-object/from16 v20, v7

    goto/16 :goto_d

    :cond_b
    :try_start_9
    new-instance v5, Ld/e/a;

    invoke-direct {v5}, Ld/e/a;-><init>()V

    :goto_a
    const/4 v13, 0x0

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    const/4 v13, 0x1

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    :try_start_a
    invoke-static {}, Lcom/google/android/gms/internal/measurement/c2;->H()Lcom/google/android/gms/internal/measurement/b2;

    move-result-object v13

    invoke-static {v13, v0}, Lcom/google/android/gms/measurement/internal/q9;->I(Lcom/google/android/gms/internal/measurement/p6;[B)Lcom/google/android/gms/internal/measurement/p6;

    check-cast v13, Lcom/google/android/gms/internal/measurement/b2;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/n5;->k()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/c2;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    :try_start_b
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v5, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v5

    move-object/from16 v20, v7

    goto :goto_b

    :catch_4
    move-exception v0

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/s4;->t()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v13

    const-string v6, "Failed to merge filter results. appId, audienceId, error"

    move-object/from16 v19, v5

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/o3;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    move-object/from16 v20, v7

    :try_start_c
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v13, v6, v5, v7, v0}, Lcom/google/android/gms/measurement/internal/m3;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_b
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    if-nez v0, :cond_d

    if-eqz v4, :cond_c

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_c
    move-object/from16 v13, v19

    goto :goto_d

    :cond_d
    move-object/from16 v5, v19

    move-object/from16 v7, v20

    const/4 v6, 0x2

    goto :goto_a

    :catch_5
    move-exception v0

    goto :goto_c

    :catch_6
    move-exception v0

    move-object/from16 v20, v7

    goto :goto_c

    :catchall_2
    move-exception v0

    const/4 v5, 0x0

    goto/16 :goto_47

    :catch_7
    move-exception v0

    move-object/from16 v20, v7

    const/4 v4, 0x0

    :goto_c
    :try_start_d
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/s4;->t()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v2

    const-string v5, "Database error querying filter results. appId"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/o3;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v5, v3, v0}, Lcom/google/android/gms/measurement/internal/m3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    if-eqz v4, :cond_e

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_e
    move-object v13, v0

    :goto_d
    invoke-interface {v13}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_f
    move-object v12, v8

    move-object/from16 v29, v9

    move-object/from16 v28, v20

    const/4 v13, 0x0

    goto/16 :goto_23

    :cond_10
    new-instance v2, Ljava/util/HashSet;

    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    if-eqz v1, :cond_1f

    iget-object v1, v10, Lcom/google/android/gms/measurement/internal/ja;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/h;->d(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v13}, Lcom/google/android/gms/common/internal/h;->h(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ld/e/a;

    invoke-direct {v3}, Ld/e/a;-><init>()V

    invoke-interface {v13}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    goto/16 :goto_16

    :cond_11
    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/d9;->b:Lcom/google/android/gms/measurement/internal/o9;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/o9;->V()Lcom/google/android/gms/measurement/internal/i;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/e9;->h()V

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/m5;->f()V

    invoke-static {v1}, Lcom/google/android/gms/common/internal/h;->d(Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Ld/e/a;

    invoke-direct {v0}, Ld/e/a;-><init>()V

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/i;->P()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const/4 v6, 0x2

    :try_start_e
    new-array v7, v6, [Ljava/lang/String;

    const/16 v17, 0x0

    aput-object v1, v7, v17

    const/16 v17, 0x1

    aput-object v1, v7, v17

    const-string v6, "select audience_id, filter_id from event_filters where app_id = ? and session_scoped = 1 UNION select audience_id, filter_id from property_filters where app_id = ? and session_scoped = 1;"

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_9
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :try_start_f
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_14

    :cond_12
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-nez v7, :cond_13

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_8
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    if-nez v6, :cond_12

    if-eqz v5, :cond_15

    :goto_e
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_10

    :cond_14
    :try_start_10
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_8
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    if-eqz v5, :cond_15

    goto :goto_e

    :catchall_3
    move-exception v0

    goto/16 :goto_17

    :catch_8
    move-exception v0

    goto :goto_f

    :catchall_4
    move-exception v0

    const/4 v5, 0x0

    goto/16 :goto_17

    :catch_9
    move-exception v0

    const/4 v5, 0x0

    :goto_f
    :try_start_11
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/s4;->t()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v4

    const-string v6, "Database error querying scoped filters. appId"

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/o3;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v6, v1, v0}, Lcom/google/android/gms/measurement/internal/m3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    if-eqz v5, :cond_15

    goto :goto_e

    :cond_15
    :goto_10
    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v13, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/c2;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-eqz v7, :cond_1c

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_16

    goto/16 :goto_14

    :cond_16
    iget-object v5, v10, Lcom/google/android/gms/measurement/internal/d9;->b:Lcom/google/android/gms/measurement/internal/o9;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/o9;->Y()Lcom/google/android/gms/measurement/internal/q9;

    move-result-object v5

    move-object/from16 v17, v0

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/c2;->x()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v5, v0, v7}, Lcom/google/android/gms/measurement/internal/q9;->E(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1b

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/q5;->q()Lcom/google/android/gms/internal/measurement/n5;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/b2;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/b2;->u()Lcom/google/android/gms/internal/measurement/b2;

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/b2;->t(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/b2;

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/d9;->b:Lcom/google/android/gms/measurement/internal/o9;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/o9;->Y()Lcom/google/android/gms/measurement/internal/q9;

    move-result-object v0

    move-object/from16 v19, v1

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/c2;->v()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Lcom/google/android/gms/measurement/internal/q9;->E(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/b2;->s()Lcom/google/android/gms/internal/measurement/b2;

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/b2;->r(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/b2;

    const/4 v0, 0x0

    :goto_12
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/c2;->A()I

    move-result v1

    if-ge v0, v1, :cond_18

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/measurement/c2;->C(I)Lcom/google/android/gms/internal/measurement/n1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/n1;->w()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/b2;->w(I)Lcom/google/android/gms/internal/measurement/b2;

    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_18
    const/4 v0, 0x0

    :goto_13
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/c2;->E()I

    move-result v1

    if-ge v0, v1, :cond_1a

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/measurement/c2;->G(I)Lcom/google/android/gms/internal/measurement/e2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/e2;->w()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/b2;->z(I)Lcom/google/android/gms/internal/measurement/b2;

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_1a
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/n5;->k()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/c2;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    :cond_1b
    move-object/from16 v0, v17

    goto/16 :goto_11

    :cond_1c
    :goto_14
    move-object/from16 v17, v0

    move-object/from16 v19, v1

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_15
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    goto/16 :goto_11

    :cond_1d
    :goto_16
    move-object v0, v3

    goto :goto_18

    :goto_17
    if-eqz v5, :cond_1e

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_1e
    throw v0

    :cond_1f
    move-object v0, v13

    :goto_18
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_19
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/c2;

    new-instance v5, Ljava/util/BitSet;

    invoke-direct {v5}, Ljava/util/BitSet;-><init>()V

    new-instance v6, Ljava/util/BitSet;

    invoke-direct {v6}, Ljava/util/BitSet;-><init>()V

    new-instance v7, Ld/e/a;

    invoke-direct {v7}, Ld/e/a;-><init>()V

    if-eqz v1, :cond_23

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/c2;->A()I

    move-result v2

    if-nez v2, :cond_20

    goto :goto_1c

    :cond_20
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/c2;->z()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_21
    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/n1;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/n1;->v()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/n1;->w()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/n1;->x()Z

    move-result v21

    if-eqz v21, :cond_22

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/n1;->y()J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_1b

    :cond_22
    const/4 v3, 0x0

    :goto_1b
    invoke-interface {v7, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    :cond_23
    :goto_1c
    new-instance v4, Ld/e/a;

    invoke-direct {v4}, Ld/e/a;-><init>()V

    if-eqz v1, :cond_26

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/c2;->E()I

    move-result v2

    if-nez v2, :cond_24

    goto :goto_1e

    :cond_24
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/c2;->D()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_25
    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/e2;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/e2;->v()Z

    move-result v21

    if-eqz v21, :cond_25

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/e2;->y()I

    move-result v21

    if-lez v21, :cond_25

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/e2;->w()I

    move-result v21

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/e2;->y()I

    move-result v21

    move-object/from16 v23, v2

    add-int/lit8 v2, v21, -0x1

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/measurement/e2;->z(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v22

    move-object/from16 v2, v23

    goto :goto_1d

    :cond_26
    :goto_1e
    move-object/from16 v22, v0

    if-eqz v1, :cond_29

    const/4 v0, 0x0

    :goto_1f
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/c2;->w()I

    move-result v2

    mul-int/lit8 v2, v2, 0x40

    if-ge v0, v2, :cond_29

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/c2;->v()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/android/gms/measurement/internal/q9;->C(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_27

    iget-object v2, v10, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/s4;->t()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/o3;->w()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v2

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v21, v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v23, v9

    const-string v9, "Filter already evaluated. audience ID, filter ID"

    invoke-virtual {v2, v9, v3, v8}, Lcom/google/android/gms/measurement/internal/m3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v0}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/c2;->x()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/android/gms/measurement/internal/q9;->C(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-virtual {v5, v0}, Ljava/util/BitSet;->set(I)V

    goto :goto_20

    :cond_27
    move-object/from16 v21, v8

    move-object/from16 v23, v9

    :cond_28
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_20
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v8, v21

    move-object/from16 v9, v23

    goto :goto_1f

    :cond_29
    move-object/from16 v21, v8

    move-object/from16 v23, v9

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/google/android/gms/internal/measurement/c2;

    if-eqz v15, :cond_2e

    if-eqz v14, :cond_2e

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2e

    iget-object v1, v10, Lcom/google/android/gms/measurement/internal/ja;->h:Ljava/lang/Long;

    if-eqz v1, :cond_2e

    iget-object v1, v10, Lcom/google/android/gms/measurement/internal/ja;->g:Ljava/lang/Long;

    if-nez v1, :cond_2a

    goto :goto_22

    :cond_2a
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2b
    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/o0;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/o0;->w()I

    move-result v2

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/ja;->h:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    const-wide/16 v26, 0x3e8

    div-long v24, v24, v26

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/o0;->G()Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, v10, Lcom/google/android/gms/measurement/internal/ja;->g:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    div-long v24, v24, v26

    :cond_2c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2d
    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_21

    :cond_2e
    :goto_22
    new-instance v0, Lcom/google/android/gms/measurement/internal/ea;

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/ja;->d:Ljava/lang/String;

    const/4 v9, 0x0

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v24, v4

    move-object v4, v8

    const/4 v8, 0x0

    move-object/from16 v28, v20

    move-object/from16 v18, v12

    move-object/from16 p1, v13

    move-object/from16 v12, v21

    move-object v13, v8

    move-object/from16 v8, v24

    move-object/from16 v29, v23

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/measurement/internal/ea;-><init>(Lcom/google/android/gms/measurement/internal/ja;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/c2;Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/Map;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/da;)V

    iget-object v1, v10, Lcom/google/android/gms/measurement/internal/ja;->f:Ljava/util/Map;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, p1

    move-object v8, v12

    move-object/from16 v12, v18

    move-object/from16 v0, v22

    move-object/from16 v9, v29

    goto/16 :goto_19

    :goto_23
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "Skipping failed audience ID"

    if-eqz v0, :cond_30

    :cond_2f
    move-object/from16 v26, v11

    goto/16 :goto_34

    :cond_30
    new-instance v2, Lcom/google/android/gms/measurement/internal/fa;

    invoke-direct {v2, v10, v13}, Lcom/google/android/gms/measurement/internal/fa;-><init>(Lcom/google/android/gms/measurement/internal/ja;Lcom/google/android/gms/measurement/internal/da;)V

    new-instance v3, Ld/e/a;

    invoke-direct {v3}, Ld/e/a;-><init>()V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_24
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/p1;

    iget-object v5, v10, Lcom/google/android/gms/measurement/internal/ja;->d:Ljava/lang/String;

    invoke-virtual {v2, v5, v0}, Lcom/google/android/gms/measurement/internal/fa;->a(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/p1;)Lcom/google/android/gms/internal/measurement/p1;

    move-result-object v5

    if-eqz v5, :cond_3e

    iget-object v6, v10, Lcom/google/android/gms/measurement/internal/d9;->b:Lcom/google/android/gms/measurement/internal/o9;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/o9;->V()Lcom/google/android/gms/measurement/internal/i;

    move-result-object v6

    iget-object v7, v10, Lcom/google/android/gms/measurement/internal/ja;->d:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/p1;->y()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p1;->y()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Lcom/google/android/gms/measurement/internal/i;->Q(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/o;

    move-result-object v9

    if-nez v9, :cond_31

    iget-object v9, v6, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/s4;->t()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/o3;->p()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v9

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/o3;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/s4;->H()Lcom/google/android/gms/measurement/internal/j3;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/google/android/gms/measurement/internal/j3;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "Event aggregate wasn\'t created during raw event logging. appId, event"

    invoke-virtual {v9, v8, v14, v6}, Lcom/google/android/gms/measurement/internal/m3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v6, Lcom/google/android/gms/measurement/internal/o;

    move-object/from16 v30, v6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p1;->y()Ljava/lang/String;

    move-result-object v32

    const-wide/16 v33, 0x1

    const-wide/16 v35, 0x1

    const-wide/16 v37, 0x1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p1;->A()J

    move-result-wide v39

    const-wide/16 v41, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    move-object/from16 v31, v7

    invoke-direct/range {v30 .. v46}, Lcom/google/android/gms/measurement/internal/o;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    goto :goto_25

    :cond_31
    new-instance v6, Lcom/google/android/gms/measurement/internal/o;

    move-object/from16 v47, v6

    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/o;->a:Ljava/lang/String;

    move-object/from16 v48, v0

    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/o;->b:Ljava/lang/String;

    move-object/from16 v49, v0

    iget-wide v7, v9, Lcom/google/android/gms/measurement/internal/o;->c:J

    const-wide/16 v14, 0x1

    add-long v50, v7, v14

    iget-wide v7, v9, Lcom/google/android/gms/measurement/internal/o;->d:J

    add-long v52, v7, v14

    iget-wide v7, v9, Lcom/google/android/gms/measurement/internal/o;->e:J

    add-long v54, v7, v14

    iget-wide v7, v9, Lcom/google/android/gms/measurement/internal/o;->f:J

    move-wide/from16 v56, v7

    iget-wide v7, v9, Lcom/google/android/gms/measurement/internal/o;->g:J

    move-wide/from16 v58, v7

    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/o;->h:Ljava/lang/Long;

    move-object/from16 v60, v0

    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/o;->i:Ljava/lang/Long;

    move-object/from16 v61, v0

    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/o;->j:Ljava/lang/Long;

    move-object/from16 v62, v0

    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/o;->k:Ljava/lang/Boolean;

    move-object/from16 v63, v0

    invoke-direct/range {v47 .. v63}, Lcom/google/android/gms/measurement/internal/o;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    :goto_25
    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/d9;->b:Lcom/google/android/gms/measurement/internal/o9;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/o9;->V()Lcom/google/android/gms/measurement/internal/i;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/i;->R(Lcom/google/android/gms/measurement/internal/o;)V

    iget-wide v7, v6, Lcom/google/android/gms/measurement/internal/o;->c:J

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/p1;->y()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_38

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/d9;->b:Lcom/google/android/gms/measurement/internal/o9;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/o9;->V()Lcom/google/android/gms/measurement/internal/i;

    move-result-object v14

    iget-object v15, v10, Lcom/google/android/gms/measurement/internal/ja;->d:Ljava/lang/String;

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/e9;->h()V

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/m5;->f()V

    invoke-static {v15}, Lcom/google/android/gms/common/internal/h;->d(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v9}, Lcom/google/android/gms/common/internal/h;->d(Ljava/lang/String;)Ljava/lang/String;

    new-instance v13, Ld/e/a;

    invoke-direct {v13}, Ld/e/a;-><init>()V

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/i;->P()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v17

    move-object/from16 v25, v2

    const/4 v2, 0x2

    :try_start_12
    new-array v0, v2, [Ljava/lang/String;
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_10
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    move-object/from16 v2, v28

    const/16 v18, 0x0

    :try_start_13
    aput-object v2, v0, v18

    const/16 v19, 0x1

    aput-object v16, v0, v19
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_f
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    move-object/from16 p2, v4

    move-object/from16 v26, v11

    const/4 v4, 0x2

    :try_start_14
    new-array v11, v4, [Ljava/lang/String;

    aput-object v15, v11, v18

    aput-object v9, v11, v19

    const-string v18, "event_filters"

    const-string v20, "app_id=? AND event_name=?"

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v19, v0

    move-object/from16 v21, v11

    invoke-virtual/range {v17 .. v24}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_14
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_14} :catch_e
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    :try_start_15
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_35

    :goto_26
    const/4 v11, 0x1

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_15} :catch_d
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    :try_start_16
    invoke-static {}, Lcom/google/android/gms/internal/measurement/o0;->J()Lcom/google/android/gms/internal/measurement/n0;

    move-result-object v11

    invoke-static {v11, v0}, Lcom/google/android/gms/measurement/internal/q9;->I(Lcom/google/android/gms/internal/measurement/p6;[B)Lcom/google/android/gms/internal/measurement/p6;

    check-cast v11, Lcom/google/android/gms/internal/measurement/n0;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/n5;->k()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/o0;
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_16} :catch_d
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    const/4 v11, 0x0

    :try_start_17
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v13, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/List;
    :try_end_17
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_17 .. :try_end_17} :catch_d
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    if-nez v17, :cond_32

    move-object/from16 v28, v2

    :try_start_18
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v13, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_27

    :cond_32
    move-object/from16 v28, v2

    move-object/from16 v2, v17

    :goto_27
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v17, v13

    move-object/from16 v13, v29

    goto :goto_28

    :catch_a
    move-exception v0

    move-object/from16 v28, v2

    iget-object v2, v14, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/s4;->t()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v2

    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/o3;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11
    :try_end_18
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_18 .. :try_end_18} :catch_b
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    move-object/from16 v17, v13

    move-object/from16 v13, v29

    :try_start_19
    invoke-virtual {v2, v13, v11, v0}, Lcom/google/android/gms/measurement/internal/m3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_28
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_19
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_19 .. :try_end_19} :catch_c
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    if-nez v0, :cond_34

    if-eqz v4, :cond_33

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_33
    move-object/from16 v0, v17

    goto :goto_2e

    :cond_34
    move-object/from16 v29, v13

    move-object/from16 v13, v17

    move-object/from16 v2, v28

    goto :goto_26

    :catch_b
    move-exception v0

    goto :goto_2a

    :cond_35
    move-object/from16 v28, v2

    move-object/from16 v13, v29

    :try_start_1a
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_1a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1a .. :try_end_1a} :catch_c
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    if-eqz v4, :cond_36

    :goto_29
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_2e

    :catch_c
    move-exception v0

    goto :goto_2d

    :catch_d
    move-exception v0

    move-object/from16 v28, v2

    :goto_2a
    move-object/from16 v13, v29

    goto :goto_2d

    :catch_e
    move-exception v0

    move-object/from16 v28, v2

    goto :goto_2c

    :catch_f
    move-exception v0

    move-object/from16 v28, v2

    goto :goto_2b

    :catchall_5
    move-exception v0

    const/4 v5, 0x0

    goto :goto_2f

    :catch_10
    move-exception v0

    :goto_2b
    move-object/from16 p2, v4

    move-object/from16 v26, v11

    :goto_2c
    move-object/from16 v13, v29

    const/4 v4, 0x0

    :goto_2d
    :try_start_1b
    iget-object v2, v14, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/s4;->t()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v2

    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/o3;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v2, v12, v11, v0}, Lcom/google/android/gms/measurement/internal/m3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    if-eqz v4, :cond_36

    goto :goto_29

    :cond_36
    :goto_2e
    invoke-interface {v3, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_30

    :catchall_6
    move-exception v0

    move-object v5, v4

    :goto_2f
    if-eqz v5, :cond_37

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_37
    throw v0

    :cond_38
    move-object/from16 v25, v2

    move-object/from16 p2, v4

    move-object/from16 v26, v11

    move-object/from16 v13, v29

    :goto_30
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v9, v10, Lcom/google/android/gms/measurement/internal/ja;->e:Ljava/util/Set;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_39

    iget-object v4, v10, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/s4;->t()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/o3;->w()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v4

    invoke-virtual {v4, v1, v11}, Lcom/google/android/gms/measurement/internal/m3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_31

    :cond_39
    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v11, 0x1

    :goto_32
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/o0;

    new-instance v14, Lcom/google/android/gms/measurement/internal/ga;

    iget-object v15, v10, Lcom/google/android/gms/measurement/internal/ja;->d:Ljava/lang/String;

    invoke-direct {v14, v10, v15, v4, v11}, Lcom/google/android/gms/measurement/internal/ga;-><init>(Lcom/google/android/gms/measurement/internal/ja;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/o0;)V

    iget-object v15, v10, Lcom/google/android/gms/measurement/internal/ja;->g:Ljava/lang/Long;

    move-object/from16 v27, v0

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/ja;->h:Ljava/lang/Long;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/o0;->w()I

    move-result v11

    invoke-direct {v10, v4, v11}, Lcom/google/android/gms/measurement/internal/ja;->m(II)Z

    move-result v24

    move-object/from16 v17, v14

    move-object/from16 v18, v15

    move-object/from16 v19, v0

    move-object/from16 v20, v5

    move-wide/from16 v21, v7

    move-object/from16 v23, v6

    invoke-virtual/range {v17 .. v24}, Lcom/google/android/gms/measurement/internal/ga;->k(Ljava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/measurement/p1;JLcom/google/android/gms/measurement/internal/o;Z)Z

    move-result v11

    if-eqz v11, :cond_3a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/google/android/gms/measurement/internal/ja;->l(Ljava/lang/Integer;)Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/google/android/gms/measurement/internal/ea;->a(Lcom/google/android/gms/measurement/internal/ha;)V

    move-object/from16 v0, v27

    goto :goto_32

    :cond_3a
    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/ja;->e:Ljava/util/Set;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_33

    :cond_3b
    move-object/from16 v27, v0

    :goto_33
    if-nez v11, :cond_3c

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/ja;->e:Ljava/util/Set;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3c
    move-object/from16 v0, v27

    goto/16 :goto_31

    :cond_3d
    move-object/from16 v4, p2

    move-object/from16 v29, v13

    move-object/from16 v2, v25

    move-object/from16 v11, v26

    :cond_3e
    const/4 v13, 0x0

    goto/16 :goto_24

    :goto_34
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3f

    goto/16 :goto_43

    :cond_3f
    new-instance v2, Ld/e/a;

    invoke-direct {v2}, Ld/e/a;-><init>()V

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_40
    :goto_35
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/internal/measurement/g2;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/g2;->x()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_47

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/d9;->b:Lcom/google/android/gms/measurement/internal/o9;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/o9;->V()Lcom/google/android/gms/measurement/internal/i;

    move-result-object v6

    iget-object v7, v10, Lcom/google/android/gms/measurement/internal/ja;->d:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/e9;->h()V

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/m5;->f()V

    invoke-static {v7}, Lcom/google/android/gms/common/internal/h;->d(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/common/internal/h;->d(Ljava/lang/String;)Ljava/lang/String;

    new-instance v8, Ld/e/a;

    invoke-direct {v8}, Ld/e/a;-><init>()V

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/i;->P()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v17

    const/4 v9, 0x2

    :try_start_1c
    new-array v0, v9, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v28, v0, v11

    const/4 v13, 0x1

    aput-object v16, v0, v13

    new-array v14, v9, [Ljava/lang/String;

    aput-object v7, v14, v11

    aput-object v5, v14, v13

    const-string v18, "property_filters"

    const-string v20, "app_id=? AND property_name=?"

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v19, v0

    move-object/from16 v21, v14

    invoke-virtual/range {v17 .. v24}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9
    :try_end_1c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1c .. :try_end_1c} :catch_14
    .catchall {:try_start_1c .. :try_end_1c} :catchall_7

    :try_start_1d
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_44

    :cond_41
    const/4 v11, 0x1

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0
    :try_end_1d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1d .. :try_end_1d} :catch_13
    .catchall {:try_start_1d .. :try_end_1d} :catchall_8

    :try_start_1e
    invoke-static {}, Lcom/google/android/gms/internal/measurement/w0;->E()Lcom/google/android/gms/internal/measurement/v0;

    move-result-object v13

    invoke-static {v13, v0}, Lcom/google/android/gms/measurement/internal/q9;->I(Lcom/google/android/gms/internal/measurement/p6;[B)Lcom/google/android/gms/internal/measurement/p6;

    check-cast v13, Lcom/google/android/gms/internal/measurement/v0;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/n5;->k()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/w0;
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1e .. :try_end_1e} :catch_13
    .catchall {:try_start_1e .. :try_end_1e} :catchall_8

    const/4 v13, 0x0

    :try_start_1f
    invoke-interface {v9, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v8, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    if-nez v15, :cond_42

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_42
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_36

    :catch_11
    move-exception v0

    const/4 v13, 0x0

    iget-object v14, v6, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/s4;->t()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v14

    const-string v15, "Failed to merge filter"

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/o3;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v14, v15, v11, v0}, Lcom/google/android/gms/measurement/internal/m3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_36
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_1f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1f .. :try_end_1f} :catch_12
    .catchall {:try_start_1f .. :try_end_1f} :catchall_8

    if-nez v0, :cond_41

    if-eqz v9, :cond_43

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_43
    move-object v0, v8

    goto :goto_39

    :cond_44
    const/4 v13, 0x0

    :try_start_20
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_20
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_20 .. :try_end_20} :catch_12
    .catchall {:try_start_20 .. :try_end_20} :catchall_8

    if-eqz v9, :cond_45

    :goto_37
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_39

    :catch_12
    move-exception v0

    goto :goto_38

    :catch_13
    move-exception v0

    const/4 v13, 0x0

    goto :goto_38

    :catchall_7
    move-exception v0

    const/4 v5, 0x0

    goto :goto_3a

    :catch_14
    move-exception v0

    const/4 v13, 0x0

    const/4 v9, 0x0

    :goto_38
    :try_start_21
    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/s4;->t()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v6

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/o3;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v12, v7, v0}, Lcom/google/android/gms/measurement/internal/m3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_8

    if-eqz v9, :cond_45

    goto :goto_37

    :cond_45
    :goto_39
    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3b

    :catchall_8
    move-exception v0

    move-object v5, v9

    :goto_3a
    if-eqz v5, :cond_46

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_46
    throw v0

    :cond_47
    const/4 v13, 0x0

    :goto_3b
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_40

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v10, Lcom/google/android/gms/measurement/internal/ja;->e:Ljava/util/Set;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_48

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s4;->t()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/o3;->w()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v0

    invoke-virtual {v0, v1, v8}, Lcom/google/android/gms/measurement/internal/m3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_35

    :cond_48
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x1

    :goto_3d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/w0;

    iget-object v9, v10, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/s4;->t()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/o3;->z()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x2

    invoke-static {v9, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_4a

    iget-object v9, v10, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/s4;->t()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/o3;->w()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/w0;->v()Z

    move-result v15

    if-eqz v15, :cond_49

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/w0;->w()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    goto :goto_3e

    :cond_49
    const/4 v15, 0x0

    :goto_3e
    iget-object v11, v10, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/s4;->H()Lcom/google/android/gms/measurement/internal/j3;

    move-result-object v11

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/w0;->x()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/google/android/gms/measurement/internal/j3;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v13, "Evaluating filter. audience, filter, property"

    invoke-virtual {v9, v13, v14, v15, v11}, Lcom/google/android/gms/measurement/internal/m3;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v9, v10, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/s4;->t()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/o3;->w()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v9

    iget-object v11, v10, Lcom/google/android/gms/measurement/internal/d9;->b:Lcom/google/android/gms/measurement/internal/o9;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/o9;->Y()Lcom/google/android/gms/measurement/internal/q9;

    move-result-object v11

    invoke-virtual {v11, v8}, Lcom/google/android/gms/measurement/internal/q9;->z(Lcom/google/android/gms/internal/measurement/w0;)Ljava/lang/String;

    move-result-object v11

    const-string v13, "Filter definition"

    invoke-virtual {v9, v13, v11}, Lcom/google/android/gms/measurement/internal/m3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4a
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/w0;->v()Z

    move-result v9

    if-eqz v9, :cond_4d

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/w0;->w()I

    move-result v9

    const/16 v11, 0x100

    if-le v9, v11, :cond_4b

    goto :goto_3f

    :cond_4b
    new-instance v9, Lcom/google/android/gms/measurement/internal/ia;

    iget-object v11, v10, Lcom/google/android/gms/measurement/internal/ja;->d:Ljava/lang/String;

    invoke-direct {v9, v10, v11, v6, v8}, Lcom/google/android/gms/measurement/internal/ia;-><init>(Lcom/google/android/gms/measurement/internal/ja;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/w0;)V

    iget-object v11, v10, Lcom/google/android/gms/measurement/internal/ja;->g:Ljava/lang/Long;

    iget-object v13, v10, Lcom/google/android/gms/measurement/internal/ja;->h:Ljava/lang/Long;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/w0;->w()I

    move-result v8

    invoke-direct {v10, v6, v8}, Lcom/google/android/gms/measurement/internal/ja;->m(II)Z

    move-result v8

    invoke-virtual {v9, v11, v13, v4, v8}, Lcom/google/android/gms/measurement/internal/ia;->k(Ljava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/measurement/g2;Z)Z

    move-result v8

    if-eqz v8, :cond_4c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/google/android/gms/measurement/internal/ja;->l(Ljava/lang/Integer;)Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/google/android/gms/measurement/internal/ea;->a(Lcom/google/android/gms/measurement/internal/ha;)V

    const/4 v13, 0x0

    goto/16 :goto_3d

    :cond_4c
    iget-object v7, v10, Lcom/google/android/gms/measurement/internal/ja;->e:Ljava/util/Set;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_41

    :cond_4d
    :goto_3f
    iget-object v7, v10, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/s4;->t()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/o3;->p()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v7

    iget-object v9, v10, Lcom/google/android/gms/measurement/internal/ja;->d:Ljava/lang/String;

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/o3;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/w0;->v()Z

    move-result v11

    if-eqz v11, :cond_4e

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/w0;->w()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_40

    :cond_4e
    const/4 v8, 0x0

    :goto_40
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v11, "Invalid property filter ID. appId, id"

    invoke-virtual {v7, v11, v9, v8}, Lcom/google/android/gms/measurement/internal/m3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_42

    :cond_4f
    :goto_41
    if-nez v8, :cond_50

    :goto_42
    iget-object v7, v10, Lcom/google/android/gms/measurement/internal/ja;->e:Ljava/util/Set;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_50
    const/4 v13, 0x0

    goto/16 :goto_3c

    :cond_51
    :goto_43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/ja;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v2, v10, Lcom/google/android/gms/measurement/internal/ja;->e:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_44
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/ja;->f:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/measurement/internal/ea;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/h;->h(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/measurement/internal/ea;->b(I)Lcom/google/android/gms/internal/measurement/k1;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/d9;->b:Lcom/google/android/gms/measurement/internal/o9;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/o9;->V()Lcom/google/android/gms/measurement/internal/i;

    move-result-object v3

    iget-object v5, v10, Lcom/google/android/gms/measurement/internal/ja;->d:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/k1;->x()Lcom/google/android/gms/internal/measurement/c2;

    move-result-object v0

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/e9;->h()V

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/m5;->f()V

    invoke-static {v5}, Lcom/google/android/gms/common/internal/h;->d(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/h;->h(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/j4;->a()[B

    move-result-object v0

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "app_id"

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v7, v28

    invoke-virtual {v6, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v4, v26

    invoke-virtual {v6, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :try_start_22
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/i;->P()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v8, "audience_filter_values"
    :try_end_22
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_22 .. :try_end_22} :catch_16

    const/4 v9, 0x5

    const/4 v11, 0x0

    :try_start_23
    invoke-virtual {v0, v8, v11, v6, v9}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v8

    const-wide/16 v12, -0x1

    cmp-long v0, v8, v12

    if-nez v0, :cond_52

    iget-object v0, v3, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s4;->t()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v0

    const-string v6, "Failed to insert filter results (got -1). appId"

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/o3;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Lcom/google/android/gms/measurement/internal/m3;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_23
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_23 .. :try_end_23} :catch_15

    goto :goto_46

    :catch_15
    move-exception v0

    goto :goto_45

    :catch_16
    move-exception v0

    const/4 v11, 0x0

    :goto_45
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/s4;->t()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v3

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/o3;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Error storing filter results. appId"

    invoke-virtual {v3, v6, v5, v0}, Lcom/google/android/gms/measurement/internal/m3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_52
    :goto_46
    move-object/from16 v26, v4

    move-object/from16 v28, v7

    goto/16 :goto_44

    :cond_53
    return-object v1

    :catchall_9
    move-exception v0

    move-object v5, v4

    :goto_47
    if-eqz v5, :cond_54

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_54
    goto :goto_49

    :goto_48
    throw v0

    :goto_49
    goto :goto_48
.end method
