.class public Lf81;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lf81;->b(Z)V

    const/4 v0, 0x1

    invoke-static {v0}, Lf81;->b(Z)V

    return-void
.end method

.method public static b(Z)V
    .locals 14

    const-string v0, "Migration - MaskRules"

    const-string v1, "typeid"

    const-string v2, "name"

    const-string v3, "display"

    const-string v4, ""

    if-eqz p0, :cond_0

    const-string v5, "lf"

    goto :goto_0

    :cond_0
    const-string v5, "jc"

    :goto_0
    move-object v7, v5

    :try_start_0
    invoke-static {}, Le81;->g()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v5, "strftime(\'%s\', stamp)*1000 AS stamp"

    filled-new-array {v3, v5, v2, v1}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "stamp"

    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v5, :cond_1

    return-void

    :cond_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    return-void

    :cond_2
    if-eqz p0, :cond_3

    sget-object p0, Lq71$g;->b:Lq71$g;

    goto :goto_1

    :cond_3
    sget-object p0, Lq71$g;->c:Lq71$g;

    :goto_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    :cond_4
    add-int/lit8 v6, v6, 0x1

    :try_start_1
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "[^\\d\\?]+"

    invoke-virtual {v8, v9, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    goto/16 :goto_2

    :cond_5
    const-string v9, "stamp"

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Pattern is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v10, Lx81;

    invoke-direct {v10}, Lx81;-><init>()V

    iput-object p0, v10, Lx81;->l:Lq71$g;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    iput-wide v11, v10, Lx81;->m:J

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v10, Lx81;->f:Ljava/lang/String;

    sget-object v9, Lq71$a;->c:Lq71$a;

    iput-object v9, v10, Lx81;->k:Lq71$a;

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Le81;->f(Ljava/lang/String;)Ljava/util/EnumSet;

    move-result-object v9

    iput-object v9, v10, Lx81;->j:Ljava/util/EnumSet;

    sget-object v9, Li91$b;->g:Li91$b;

    iput-object v9, v10, Lx81;->h:Li91$b;

    const-string v9, "\\D"

    const-string v11, "5"

    invoke-virtual {v8, v9, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lfa1$e;->o(Ljava/lang/String;)Li91;

    move-result-object v9

    iput-object v9, v10, Lx81;->g:Li91;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "*"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v10, Lx81;->g:Li91;

    invoke-virtual {v9, v8}, Li91;->w(Ljava/lang/String;)V

    invoke-virtual {v10}, Lx81;->z()Z

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_6

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    :try_start_2
    const-string v8, "Error migration rule row"

    invoke-static {v0, v8}, Lj91;->k(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    :goto_2
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v8, :cond_4

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Migrating rules. Count record: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", inserted record: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void

    :catch_1
    move-exception p0

    :try_start_3
    invoke-static {v0, v4, p0}, Lj91;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    return-void

    :goto_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    throw p0

    :catch_2
    return-void
.end method
