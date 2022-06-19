.class public Lg81;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lg81;->b(Z)V

    const/4 v0, 0x1

    invoke-static {v0}, Lg81;->b(Z)V

    return-void
.end method

.method public static b(Z)V
    .locals 14

    const-string v0, "typeid"

    const-string v1, "name"

    const-string v2, "display"

    if-eqz p0, :cond_0

    const-string v3, "ld"

    goto :goto_0

    :cond_0
    const-string v3, "ja"

    :goto_0
    move-object v5, v3

    :try_start_0
    invoke-static {}, Le81;->g()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v3, "strftime(\'%s\', stamp)*1000 AS stamp"

    filled-new-array {v2, v3, v1, v0}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "stamp"

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v3, :cond_1

    return-void

    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-void

    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    const-string v6, "Migration - NumberRules"

    if-eqz p0, :cond_4

    :try_start_1
    sget-object v7, Lq71$g;->b:Lq71$g;

    goto :goto_1

    :cond_4
    sget-object v7, Lq71$g;->c:Lq71$g;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lfa1$e;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {v8}, Lfa1$e;->o(Ljava/lang/String;)Li91;

    move-result-object v8

    const-string v9, "stamp"

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lx81;

    invoke-direct {v11}, Lx81;-><init>()V

    iput-object v8, v11, Lx81;->g:Li91;

    iput-object v10, v11, Lx81;->f:Ljava/lang/String;

    iput-object v7, v11, Lx81;->l:Lq71$g;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iput-wide v12, v11, Lx81;->m:J

    sget-object v7, Lq71$a;->c:Lq71$a;

    iput-object v7, v11, Lx81;->k:Lq71$a;

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Le81;->f(Ljava/lang/String;)Ljava/util/EnumSet;

    move-result-object v7

    iput-object v7, v11, Lx81;->j:Ljava/util/EnumSet;

    sget-object v7, Li91$b;->b:Li91$b;

    iput-object v7, v11, Lx81;->h:Li91$b;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Phone: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", stamp: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", Name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v11}, Lx81;->z()Z

    move-result v7

    if-eqz v7, :cond_6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    const-string v7, "Save fails"

    invoke-static {v6, v7}, Lj91;->k(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v7

    :try_start_3
    const-string v8, "Skip wrong record"

    invoke-static {v6, v8, v7}, Lj91;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v6, :cond_3

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Migrating phone list. Count record: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", inserted record: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    :try_start_4
    const-string v0, ""

    invoke-static {v6, v0, p0}, Lj91;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-void

    :goto_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw p0

    :catch_2
    return-void
.end method
