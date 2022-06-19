.class public final synthetic Lf8/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    iput p2, p0, Lf8/c;->a:I

    iput-object p1, p0, Lf8/c;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    move-object/from16 v1, p0

    const-class v0, Lh8/l;

    iget v2, v1, Lf8/c;->a:I

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, ""

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_d

    :pswitch_0
    iget-object v2, v1, Lf8/c;->b:Landroid/content/Context;

    const-string v0, "DBMain.db"

    .line 1
    invoke-virtual {v2, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 2
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 4
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 5
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->mkdir()Z

    .line 6
    :cond_1
    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 7
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v8, 0x2000

    new-array v8, v8, [B

    .line 8
    :goto_0
    invoke-virtual {v0, v8}, Ljava/io/InputStream;->read([B)I

    move-result v9

    if-lez v9, :cond_2

    .line 9
    invoke-virtual {v7, v8, v6, v9}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 11
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 12
    invoke-static {v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 13
    invoke-static {v2}, Lf8/h;->k(Landroid/content/Context;)Ljava/lang/String;

    const-string v11, "Main"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v10, v3

    .line 14
    invoke-virtual/range {v10 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 15
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    const-string v4, "Main"

    const-string v7, "tcc<>?"

    new-array v5, v5, [Ljava/lang/String;

    .line 16
    invoke-static {v2}, Lf8/h;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-virtual {v3, v4, v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 17
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const-string v0, "vacuum"

    .line 18
    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v11, "AData"

    const/4 v12, 0x0

    const-string v13, "key=?"

    const-string v0, "INITIAL_DEL_ID"

    .line 19
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v10, v3

    invoke-virtual/range {v10 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 20
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-eqz v4, :cond_3

    .line 21
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v4, "value"

    .line 22
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 23
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 24
    invoke-static {v2, v4}, Lf8/h;->h0(Landroid/content/Context;I)V

    .line 25
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, "CREATE UNIQUE INDEX data ON Main (data)"

    .line 26
    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 27
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    const-string v11, "Main"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v10, v3

    .line 28
    invoke-virtual/range {v10 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 29
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    .line 30
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 31
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    const-string v0, "needinitdb"

    .line 33
    invoke-static {v2, v0, v6}, Lf8/h;->g0(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 34
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object v0

    new-instance v2, Lk8/q;

    const/16 v3, 0xc8

    invoke-direct {v2, v3}, Lk8/q;-><init>(I)V

    invoke-virtual {v0, v2}, Lba/b;->g(Ljava/lang/Object;)V

    return-void

    .line 35
    :pswitch_1
    iget-object v2, v1, Lf8/c;->b:Landroid/content/Context;

    .line 36
    :try_start_3
    invoke-static {v2}, Lf8/h;->O(Landroid/content/Context;)Z

    move-result v8

    .line 37
    invoke-static {v2}, Lf8/g;->v(Landroid/content/Context;)V

    new-array v9, v6, [Lx8/a;

    .line 38
    new-instance v10, Lw8/o;

    invoke-direct {v10, v9}, Lw8/o;-><init>([Lx8/a;)V

    .line 39
    new-instance v9, Lw8/g;

    invoke-direct {v9, v10, v0}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    .line 40
    invoke-virtual {v9}, Lw8/e;->l()Ljava/util/List;

    move-result-object v9

    new-array v10, v6, [Lx8/a;

    .line 41
    new-instance v11, Lw8/o;

    invoke-direct {v11, v10}, Lw8/o;-><init>([Lx8/a;)V

    .line 42
    const-class v10, Lh8/w;

    .line 43
    new-instance v12, Lw8/g;

    invoke-direct {v12, v11, v10}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    .line 44
    invoke-virtual {v12}, Lw8/e;->l()Ljava/util/List;

    move-result-object v10

    new-array v11, v6, [Lx8/a;

    .line 45
    new-instance v12, Lw8/o;

    invoke-direct {v12, v11}, Lw8/o;-><init>([Lx8/a;)V

    .line 46
    const-class v11, Lh8/c;

    .line 47
    new-instance v13, Lw8/g;

    invoke-direct {v13, v12, v11}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    .line 48
    invoke-virtual {v13}, Lw8/e;->l()Ljava/util/List;

    move-result-object v11

    new-array v12, v6, [Lx8/a;

    .line 49
    new-instance v13, Lw8/o;

    invoke-direct {v13, v12}, Lw8/o;-><init>([Lx8/a;)V

    .line 50
    const-class v12, Lh8/i;

    .line 51
    new-instance v14, Lw8/g;

    invoke-direct {v14, v13, v12}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    .line 52
    invoke-virtual {v14}, Lw8/e;->l()Ljava/util/List;

    move-result-object v12

    .line 53
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_12

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lh8/l;

    .line 54
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    const/4 v3, -0x1

    if-eqz v15, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lh8/w;

    .line 55
    iget v4, v15, Lh8/w;->f:I

    if-eq v4, v3, :cond_5

    .line 56
    iget-object v4, v15, Lh8/w;->c:Ljava/lang/String;

    iget-object v6, v13, Lh8/l;->c:Ljava/lang/String;

    invoke-static {v4, v6}, Lh8/q;->y(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 57
    iget-object v4, v15, Lh8/w;->d:Ljava/lang/String;

    .line 58
    iget-object v6, v15, Lh8/w;->e:Ljava/lang/String;

    goto :goto_5

    :cond_4
    const/4 v3, 0x0

    const/4 v6, 0x0

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    goto :goto_4

    :cond_6
    move-object v4, v7

    const/4 v6, 0x0

    .line 59
    :goto_5
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 60
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lh8/c;

    .line 61
    iget v5, v15, Lh8/c;->f:I

    if-eq v5, v3, :cond_7

    .line 62
    iget-object v5, v15, Lh8/c;->c:Ljava/lang/String;

    iget-object v3, v13, Lh8/l;->c:Ljava/lang/String;

    invoke-static {v5, v3}, Lh8/q;->y(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 63
    iget-object v4, v15, Lh8/c;->d:Ljava/lang/String;

    .line 64
    iget-object v6, v15, Lh8/c;->e:Ljava/lang/String;

    goto :goto_7

    :cond_7
    const/4 v3, -0x1

    const/4 v5, 0x1

    goto :goto_6

    .line 65
    :cond_8
    :goto_7
    invoke-static {v2}, Lf8/g;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 66
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lh8/i;

    .line 67
    iget-object v14, v5, Lh8/i;->d:Ljava/lang/String;

    iget-object v15, v13, Lh8/l;->c:Ljava/lang/String;

    invoke-static {v14, v15}, Lh8/q;->y(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 68
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 69
    invoke-static {v2}, Lf8/h;->W(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, v5, Lh8/i;->f:Ljava/lang/String;

    goto :goto_8

    :cond_a
    iget-object v3, v5, Lh8/i;->e:Ljava/lang/String;

    :goto_8
    move-object v4, v3

    .line 70
    :cond_b
    iget-object v6, v5, Lh8/i;->h:Ljava/lang/String;

    .line 71
    :cond_c
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 72
    invoke-static {v2}, Lf8/g;->a(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_d

    iget-object v3, v13, Lh8/l;->Q:Ljava/lang/String;

    if-eqz v3, :cond_d

    move-object v4, v3

    goto :goto_9

    .line 73
    :cond_d
    invoke-static {}, Lf8/g;->y()Z

    move-result v3

    if-eqz v3, :cond_e

    if-eqz v8, :cond_e

    .line 74
    iget-object v3, v13, Lh8/l;->P:Ljava/lang/String;

    if-eqz v3, :cond_e

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 75
    iget-object v4, v13, Lh8/l;->P:Ljava/lang/String;

    .line 76
    :cond_e
    :goto_9
    iget-object v3, v13, Lh8/l;->h:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    if-nez v6, :cond_f

    iget-object v3, v13, Lh8/l;->v:Ljava/lang/String;

    if-nez v3, :cond_11

    :cond_f
    if-eqz v6, :cond_10

    iget-object v3, v13, Lh8/l;->v:Ljava/lang/String;

    .line 77
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    goto :goto_a

    .line 78
    :cond_10
    new-instance v3, Lw8/q;

    invoke-direct {v3, v0}, Lw8/q;-><init>(Ljava/lang/Class;)V

    const/4 v4, 0x1

    new-array v5, v4, [Lw8/n;

    .line 79
    sget-object v4, Lh8/m;->m:Lx8/b;

    .line 80
    invoke-virtual {v4, v6}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-virtual {v3, v5}, Lw8/q;->a([Lw8/n;)Lw8/p;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Lw8/n;

    sget-object v4, Lh8/m;->g:Lx8/b;

    iget v6, v13, Lh8/l;->b:I

    .line 81
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v5, v6

    .line 82
    new-instance v4, Lw8/r;

    invoke-direct {v4, v3, v5}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 83
    invoke-virtual {v4}, Lw8/d;->d()V

    goto :goto_b

    .line 84
    :cond_11
    :goto_a
    new-instance v3, Lw8/q;

    invoke-direct {v3, v0}, Lw8/q;-><init>(Ljava/lang/Class;)V

    const/4 v5, 0x2

    new-array v14, v5, [Lw8/n;

    .line 85
    sget-object v5, Lh8/m;->l:Lx8/b;

    .line 86
    invoke-virtual {v5, v4}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v14, v5

    sget-object v4, Lh8/m;->m:Lx8/b;

    invoke-virtual {v4, v6}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v14, v5

    invoke-virtual {v3, v14}, Lw8/q;->a([Lw8/n;)Lw8/p;

    move-result-object v3

    new-array v4, v5, [Lw8/n;

    sget-object v5, Lh8/m;->g:Lx8/b;

    iget v6, v13, Lh8/l;->b:I

    .line 87
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 88
    new-instance v5, Lw8/r;

    invoke-direct {v5, v3, v4}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 89
    invoke-virtual {v5}, Lw8/d;->d()V

    :goto_b
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto/16 :goto_3

    .line 90
    :cond_12
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object v0

    new-instance v2, Lk8/n;

    const-string v3, "GLib.resolveNamesImagesAndUpdateLogTable"

    invoke-direct {v2, v3}, Lk8/n;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lba/b;->g(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_c

    :catch_2
    move-exception v0

    .line 91
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_c
    return-void

    .line 92
    :goto_d
    iget-object v2, v1, Lf8/c;->b:Landroid/content/Context;

    .line 93
    :try_start_4
    sget v3, Lh8/q;->b:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    sput v3, Lh8/q;->b:I

    .line 94
    :goto_e
    sget-boolean v3, Lh8/q;->a:Z

    const-wide/16 v4, 0xbb8

    if-eqz v3, :cond_13

    .line 95
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_e

    :cond_13
    const/4 v3, 0x1

    .line 96
    sput-boolean v3, Lh8/q;->a:Z

    .line 97
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    const-string v3, "android.permission.READ_CALL_LOG"

    .line 98
    invoke-static {v2, v3}, Ld0/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_14

    goto/16 :goto_13

    :cond_14
    const/4 v3, 0x0

    new-array v4, v3, [Lx8/a;

    .line 99
    new-instance v3, Lw8/o;

    invoke-direct {v3, v4}, Lw8/o;-><init>([Lx8/a;)V

    .line 100
    new-instance v4, Lw8/g;

    invoke-direct {v4, v3, v0}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    const/4 v0, 0x2

    new-array v3, v0, [Lw8/n;

    .line 101
    sget-object v0, Lh8/m;->k:Lx8/b;

    .line 102
    invoke-virtual {v0}, Lx8/b;->h()Lw8/k;

    move-result-object v0

    const/4 v5, 0x0

    aput-object v0, v3, v5

    sget-object v0, Lh8/m;->j:Lx8/c;

    new-instance v5, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/32 v10, 0x5265c00

    sub-long/2addr v8, v10

    invoke-direct {v5, v8, v9}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v0, v5}, Lx8/b;->d(Ljava/lang/Object;)Lw8/k;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    .line 103
    new-instance v5, Lw8/r;

    invoke-direct {v5, v4, v3}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 104
    iget-object v3, v5, Lw8/r;->f:Ljava/util/List;

    new-instance v4, Lw8/m;

    invoke-virtual {v0}, Lx8/b;->f()Lw8/j;

    move-result-object v0

    const/4 v6, 0x0

    invoke-direct {v4, v0, v6}, Lw8/m;-><init>(Lw8/j;Z)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-virtual {v5}, Lw8/r;->l()Ljava/util/List;

    move-result-object v0

    .line 106
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 107
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "date DESC"

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    const/4 v4, 0x0

    .line 108
    :goto_f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1e

    .line 109
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lh8/l;

    iget v5, v5, Lh8/l;->b:I

    .line 110
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lh8/l;

    iget-object v5, v5, Lh8/l;->c:Ljava/lang/String;

    .line 111
    :cond_15
    :goto_10
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1b

    const-string v5, "_id"

    .line 112
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "number"

    .line 113
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v8, "type"

    .line 114
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v9, "date"

    .line 115
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string v10, "duration"

    .line 116
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v11, "name"

    .line 117
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 118
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 119
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "countryiso"

    .line 120
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 121
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 122
    invoke-interface {v3, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_16

    move-object v14, v7

    .line 123
    :cond_16
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lh8/l;

    iget-object v11, v11, Lh8/l;->e:Ljava/sql/Date;

    invoke-virtual {v11}, Ljava/sql/Date;->getTime()J

    move-result-wide v18

    sub-long v15, v15, v18

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(J)J

    .line 124
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v15, 0x2

    if-ne v11, v15, :cond_17

    goto :goto_10

    .line 125
    :cond_17
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lh8/l;

    .line 126
    iget-object v15, v11, Lh8/l;->c:Ljava/lang/String;

    if-nez v15, :cond_18

    invoke-static {v6}, Ln8/d;->d(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_18

    const/4 v6, 0x1

    goto :goto_11

    .line 127
    :cond_18
    iget-object v11, v11, Lh8/l;->c:Ljava/lang/String;

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    :goto_11
    if-eqz v6, :cond_15

    .line 128
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lh8/l;

    iget-object v6, v6, Lh8/l;->e:Ljava/sql/Date;

    invoke-virtual {v6}, Ljava/sql/Date;->getTime()J

    .line 129
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lh8/l;

    iget-object v6, v6, Lh8/l;->e:Ljava/sql/Date;

    invoke-virtual {v6}, Ljava/sql/Date;->getTime()J

    move-result-wide v18

    sub-long v15, v15, v18

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(J)J

    move-result-wide v15

    const-wide/32 v18, 0x15f90

    cmp-long v6, v15, v18

    if-lez v6, :cond_19

    goto/16 :goto_12

    .line 130
    :cond_19
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lh8/l;

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v6, Lh8/l;->g:Ljava/lang/Integer;

    if-eqz v14, :cond_1a

    .line 131
    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    .line 132
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lh8/l;

    iput-object v14, v5, Lh8/l;->h:Ljava/lang/String;

    .line 133
    :cond_1a
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lh8/l;

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v5, Lh8/l;->k:Ljava/lang/Integer;

    .line 134
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lh8/l;

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v5, Lh8/l;->j:Ljava/lang/Integer;

    .line 135
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lh8/l;

    iput-object v13, v5, Lh8/l;->l:Ljava/lang/String;

    .line 136
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lh8/l;

    new-instance v6, Ljava/sql/Date;

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-direct {v6, v8, v9}, Ljava/sql/Date;-><init>(J)V

    iput-object v6, v5, Lh8/l;->i:Ljava/sql/Date;

    .line 137
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lh8/l;

    invoke-virtual {v5}, Lb9/a;->c()Z

    .line 138
    invoke-static {v2}, Lf8/g;->b(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 139
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lh8/l;

    iget-boolean v5, v5, Lh8/l;->m:Z

    if-eqz v5, :cond_1b

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lh8/l;

    iget-object v5, v5, Lh8/l;->d:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_1b

    .line 140
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v8, "_id = ? "

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/String;

    .line 141
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    aput-object v9, v10, v11

    .line 142
    invoke-virtual {v5, v6, v8, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 143
    :cond_1b
    :goto_12
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lh8/l;

    iget-object v5, v5, Lh8/l;->h:Ljava/lang/String;

    .line 144
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lh8/l;

    iget-object v5, v5, Lh8/l;->h:Ljava/lang/String;

    if-eqz v5, :cond_1c

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lh8/l;

    iget-object v5, v5, Lh8/l;->h:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 145
    :cond_1c
    invoke-static {}, Lf8/g;->y()Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-static {v2}, Lf8/h;->O(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 146
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lh8/l;

    iget-object v5, v5, Lh8/l;->c:Ljava/lang/String;

    invoke-static {v2, v5}, Lf8/g;->R(Landroid/content/Context;Ljava/lang/String;)V

    .line 147
    :cond_1d
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object v5

    new-instance v6, Lk8/m;

    new-instance v8, Lcom/mglab/scm/visual/CallItem;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lh8/l;

    invoke-direct {v8, v9}, Lcom/mglab/scm/visual/CallItem;-><init>(Lh8/l;)V

    invoke-direct {v6, v8}, Lk8/m;-><init>(Lcom/mglab/scm/visual/CallItem;)V

    invoke-virtual {v5, v6}, Lba/b;->g(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_f

    .line 148
    :cond_1e
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    const/4 v2, 0x0

    .line 149
    sput-boolean v2, Lh8/q;->a:Z

    .line 150
    sget v0, Lh8/q;->b:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    sput v0, Lh8/q;->b:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_13

    :catch_3
    move-exception v0

    .line 151
    sget v2, Lh8/q;->b:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    sput v2, Lh8/q;->b:I

    const/4 v2, 0x0

    .line 152
    sput-boolean v2, Lh8/q;->a:Z

    .line 153
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_13
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
