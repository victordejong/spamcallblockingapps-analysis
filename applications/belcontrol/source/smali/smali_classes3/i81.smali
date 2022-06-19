.class public Li81;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a()V
    .locals 26

    const-string v1, "ScheduleId: "

    const-string v2, "allcontacts"

    const-string v3, "whitelist"

    const-string v4, "IS_ACTIVE"

    const-string v5, ","

    const-string v6, "_id"

    const-string v7, ""

    const-string v8, "Migration - Schedule"

    const/4 v10, 0x1

    :try_start_0
    invoke-static {}, Lh81;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v11, "KEY_BLOCKING_MODE_CURRENT"

    invoke-interface {v0, v11, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "PRIVACY_MODE"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v10}, Lu71;->w(Z)V

    const-string v11, "KEY_BLOCKING_MODE_GROUPS"

    invoke-interface {v0, v11, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v11, v0

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v11, :cond_2

    aget-object v13, v0, v12

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-static {v10}, Lu71;->C(Z)V

    :cond_0
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-static {v10}, Lu71;->x(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v8, v7, v0}, Lj91;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :try_start_1
    invoke-static {}, Le81;->g()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    const-string v12, "ba"

    filled-new-array {v6, v4}, [Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v11 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    if-nez v11, :cond_3

    return-void

    :cond_3
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    return-void

    :cond_4
    const/4 v0, -0x1

    const/4 v12, -0x1

    :cond_5
    :try_start_2
    invoke-interface {v11, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v10, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Active scheduleId: "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    goto/16 :goto_b

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lj91;->k(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v0, :cond_5

    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    invoke-static {}, Le81;->g()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    const-string v4, "SCHEDULE_ID"

    const-string v11, "WEEK_DAY_SET"

    filled-new-array {v6, v4, v11}, [Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v14, "bb"

    invoke-virtual/range {v13 .. v20}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    if-nez v13, :cond_7

    return-void

    :cond_7
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    return-void

    :cond_8
    new-instance v14, Landroid/util/SparseArray;

    invoke-direct {v14}, Landroid/util/SparseArray;-><init>()V

    :goto_2
    :try_start_4
    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eq v0, v12, :cond_9

    goto :goto_3

    :cond_9
    invoke-interface {v13, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-interface {v13, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v13, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v0, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", day set: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", daysetId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    goto/16 :goto_a

    :catch_1
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lj91;->k(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_3
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-nez v0, :cond_14

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    invoke-static {}, Le81;->g()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v18

    const-string v19, "SCHEDULE_ID"

    const-string v20, "DAY_SET_ID"

    const-string v21, "ACTION"

    const-string v22, "DTRANGE_START"

    const-string v23, "DTRANGE_END"

    const-string v24, "ALLOWED_GROUPS"

    filled-new-array/range {v19 .. v24}, [Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-string v19, "b"

    invoke-virtual/range {v18 .. v25}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_a

    return-void

    :cond_a
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-void

    :cond_b
    :goto_4
    :try_start_6
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eq v0, v12, :cond_c

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Skip passive schedule with ID: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    goto/16 :goto_8

    :cond_c
    const-string v9, "ACTION"

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "DTRANGE_START"

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const-string v11, "DTRANGE_END"

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const-string v13, "ALLOWED_GROUPS"

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v15, "DAY_SET_ID"

    invoke-interface {v6, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v6, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v15, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    move-object/from16 v18, v4

    array-length v4, v13

    move-object/from16 v19, v5

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v4, :cond_10

    move/from16 v20, v4

    aget-object v4, v13, v5

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_e

    invoke-static {}, Lb81;->e()Z

    move-result v21

    if-eqz v21, :cond_d

    invoke-static {}, Lb81;->a()[Ljava/lang/Integer;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lu71;->y([Ljava/lang/Integer;)V

    goto :goto_6

    :cond_d
    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Lu71;->x(Z)V

    :cond_e
    :goto_6
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v4, 0x1

    invoke-static {v4}, Lu71;->C(Z)V

    :cond_f
    add-int/lit8 v5, v5, 0x1

    move/from16 v4, v20

    goto :goto_5

    :cond_10
    array-length v4, v15

    const/4 v5, 0x0

    :goto_7
    if-ge v5, v4, :cond_12

    aget-object v13, v15, v5

    move-object/from16 v20, v2

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v21, v3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_11

    const/16 v2, 0x8

    :cond_11
    add-int/lit8 v2, v2, -0x2

    invoke-static {v2, v10, v11, v3}, Lu71;->z(IIIZ)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "For day #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", scheduleAction: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", range_start: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", rangeEnd: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    goto :goto_7

    :cond_12
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    :goto_8
    :try_start_7
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-nez v0, :cond_13

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-void

    :cond_13
    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    goto/16 :goto_4

    :catchall_3
    move-exception v0

    goto :goto_9

    :catch_2
    move-exception v0

    :try_start_8
    const-string v1, "Error migration schedule"

    invoke-static {v8, v1, v0}, Lj91;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-void

    :catch_3
    move-exception v0

    :try_start_9
    invoke-static {v8, v7, v0}, Lj91;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-void

    :goto_9
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_14
    const/4 v10, 0x1

    goto/16 :goto_2

    :catch_4
    move-exception v0

    :try_start_a
    invoke-static {v8, v7, v0}, Lj91;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    return-void

    :goto_a
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v0

    :catch_5
    move-exception v0

    :try_start_b
    invoke-static {v8, v7, v0}, Lj91;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    return-void

    :goto_b
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v0

    :catch_6
    return-void
.end method
