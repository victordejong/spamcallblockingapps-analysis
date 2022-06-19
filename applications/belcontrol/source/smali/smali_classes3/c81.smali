.class public Lc81;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lc81;->b(Z)V

    const/4 v0, 0x1

    invoke-static {v0}, Lc81;->b(Z)V

    return-void
.end method

.method public static b(Z)V
    .locals 16

    const-string v0, "typeid"

    const-string v1, "name"

    const-string v2, "country"

    const-string v3, "display"

    if-eqz p0, :cond_0

    const-string v4, "le"

    goto :goto_0

    :cond_0
    const-string v4, "jb"

    :goto_0
    move-object v6, v4

    :try_start_0
    invoke-static {}, Le81;->g()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v4, "strftime(\'%s\', stamp)*1000 AS stamp"

    filled-new-array {v3, v4, v2, v1, v0}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "stamp"

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v4, :cond_1

    return-void

    :cond_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    return-void

    :cond_2
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :cond_3
    add-int/lit8 v6, v6, 0x1

    const-string v8, "Migration - AreaRules"

    if-eqz p0, :cond_4

    :try_start_1
    sget-object v9, Lq71$g;->b:Lq71$g;

    goto :goto_1

    :cond_4
    sget-object v9, Lq71$g;->c:Lq71$g;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lfa1$e;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    goto/16 :goto_4

    :cond_5
    const-string v11, "stamp"

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "555555555555"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v14, 0x3

    if-eq v12, v14, :cond_6

    const/4 v14, 0x4

    if-eq v12, v14, :cond_6

    const/4 v14, 0x5

    if-eq v12, v14, :cond_6

    const/4 v14, 0x6

    if-eq v12, v14, :cond_6

    sget-object v12, Li91$b;->b:Li91$b;

    :goto_2
    invoke-static {v10}, Lfa1$e;->o(Ljava/lang/String;)Li91;

    move-result-object v10

    goto :goto_3

    :cond_6
    sget-object v12, Li91$b;->d:Li91$b;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    rsub-int/lit8 v10, v10, 0xb

    invoke-virtual {v13, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    :goto_3
    new-instance v13, Lx81;

    invoke-direct {v13}, Lx81;-><init>()V

    iput-object v9, v13, Lx81;->l:Lq71$g;

    iput-object v10, v13, Lx81;->g:Li91;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    iput-wide v14, v13, Lx81;->m:J

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v13, Lx81;->f:Ljava/lang/String;

    sget-object v9, Lq71$a;->c:Lq71$a;

    iput-object v9, v13, Lx81;->k:Lq71$a;

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Le81;->f(Ljava/lang/String;)Ljava/util/EnumSet;

    move-result-object v9

    iput-object v9, v13, Lx81;->j:Ljava/util/EnumSet;

    iput-object v12, v13, Lx81;->h:Li91$b;

    invoke-virtual {v10}, Li91;->t()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v13}, Lx81;->z()Z

    move-result v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v9, :cond_7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :catch_0
    :try_start_3
    const-string v9, "Area migration error"

    invoke-static {v8, v9}, Lj91;->k(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_7
    :goto_4
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v8, :cond_3

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Migrating area rules. Count record: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", inserted record: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    :try_start_4
    const-string v1, ""

    invoke-static {v8, v1, v0}, Lj91;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    return-void

    :goto_5
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v0

    :catch_2
    return-void
.end method
