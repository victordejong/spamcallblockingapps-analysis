.class public Ld81;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a()V
    .locals 12

    const-string v0, ""

    const-string v1, "Migration - BlockedLog"

    :try_start_0
    invoke-static {}, Le81;->g()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "a"

    const-string v4, "address"

    const-string v5, "caller"

    const-string v6, "strftime(\'%s\', stamp)*1000 AS stamp"

    const-string v7, "reason"

    const-string v8, "media"

    const-string v9, "message"

    filled-new-array/range {v4 .. v9}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "stamp"

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-void

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_2
    const/4 v6, 0x1

    add-int/2addr v4, v6

    :try_start_1
    const-string v7, "address"

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lfa1$e;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto/16 :goto_4

    :cond_3
    invoke-static {v7}, Lfa1$e;->o(Ljava/lang/String;)Li91;

    move-result-object v8

    const-string v9, "caller"

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_4

    goto :goto_0

    :cond_4
    move-object v7, v9

    :goto_0
    const-string v9, "stamp"

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-string v10, "reason"

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    packed-switch v10, :pswitch_data_0

    :pswitch_0
    sget-object v10, Ln91$a;->b:Ln91$a;

    goto :goto_1

    :pswitch_1
    sget-object v10, Ln91$a;->n:Ln91$a;

    goto :goto_1

    :pswitch_2
    sget-object v10, Ln91$a;->m:Ln91$a;

    goto :goto_1

    :pswitch_3
    sget-object v10, Ln91$a;->k:Ln91$a;

    goto :goto_1

    :pswitch_4
    sget-object v10, Ln91$a;->j:Ln91$a;

    goto :goto_1

    :pswitch_5
    sget-object v10, Ln91$a;->d:Ln91$a;

    goto :goto_1

    :pswitch_6
    sget-object v10, Ln91$a;->h:Ln91$a;

    goto :goto_1

    :pswitch_7
    sget-object v10, Ln91$a;->g:Ln91$a;

    goto :goto_1

    :pswitch_8
    sget-object v10, Ln91$a;->c:Ln91$a;

    goto :goto_1

    :pswitch_9
    sget-object v10, Ln91$a;->p:Ln91$a;

    goto :goto_1

    :pswitch_a
    sget-object v10, Ln91$a;->q:Ln91$a;

    :goto_1
    new-instance v11, Ll81;

    invoke-direct {v11}, Ll81;-><init>()V

    iput-object v10, v11, Ll81;->p:Ln91$a;

    iput-object v8, v11, Ll81;->m:Li91;

    iput v3, v11, Ll81;->g:I

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, v11, Ll81;->s:J

    iput v3, v11, Ll81;->r:I

    iput-object v7, v11, Ll81;->h:Ljava/lang/String;

    iput-boolean v6, v11, Ll81;->j:Z

    const-string v7, "media"

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_6

    const/4 v8, 0x3

    if-eq v7, v8, :cond_5

    sget-object v7, Lq71$e;->b:Lq71$e;

    invoke-static {v7}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v7

    iput-object v7, v11, Ll81;->o:Ljava/util/EnumSet;

    :goto_2
    iput v6, v11, Ll81;->n:I

    goto :goto_3

    :cond_5
    sget-object v7, Lq71$e;->d:Lq71$e;

    invoke-static {v7}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v7

    iput-object v7, v11, Ll81;->o:Ljava/util/EnumSet;

    goto :goto_2

    :cond_6
    sget-object v7, Lq71$e;->c:Lq71$e;

    invoke-static {v7}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v7

    iput-object v7, v11, Ll81;->o:Ljava/util/EnumSet;

    goto :goto_2

    :goto_3
    const-string v6, "message"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    iput-object v6, v11, Ll81;->l:Ljava/lang/String;

    :cond_7
    iget-object v6, v11, Ll81;->o:Ljava/util/EnumSet;

    sget-object v7, Lq71$e;->c:Lq71$e;

    invoke-virtual {v6, v7}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, v11, Ll81;->o:Ljava/util/EnumSet;

    sget-object v7, Lq71$e;->d:Lq71$e;

    invoke-virtual {v6, v7}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_8
    invoke-virtual {v11}, Ll81;->F()V

    :cond_9
    invoke-virtual {v11}, Lv71;->z()Z

    move-result v6

    if-eqz v6, :cond_a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Migrated "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v11, Ll81;->h:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v11, Ll81;->m:Li91;

    invoke-virtual {v7}, Li91;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v6

    :try_start_2
    invoke-static {v1, v0, v6}, Lj91;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a
    :goto_4
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v6, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Records migrated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", inserted record: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void

    :catch_1
    move-exception v3

    :try_start_3
    invoke-static {v1, v0, v3}, Lj91;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-void

    :goto_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    :catch_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method
