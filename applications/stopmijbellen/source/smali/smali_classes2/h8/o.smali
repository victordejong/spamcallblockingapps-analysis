.class public final synthetic Lh8/o;
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
    iput p2, p0, Lh8/o;->a:I

    iput-object p1, p0, Lh8/o;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 23

    move-object/from16 v1, p0

    iget v0, v1, Lh8/o;->a:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "_id"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    iget-object v6, v1, Lh8/o;->b:Landroid/content/Context;

    .line 1
    :goto_0
    sget v0, Lh8/q;->b:I

    if-lez v0, :cond_0

    const-wide/16 v7, 0xbb8

    .line 2
    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v7, v0

    .line 3
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lh8/q;->w()I

    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1d

    const/16 v8, 0xc8

    if-lt v0, v7, :cond_1

    .line 6
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 7
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "LIMIT"

    invoke-virtual {v0, v7, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v10

    const/4 v11, 0x0

    new-array v13, v2, [Ljava/lang/String;

    .line 8
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v13, v3

    invoke-static {}, Lh8/q;->w()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v13, v4

    const-string v12, "type!= ? AND _id>?"

    const-string v14, "date DESC"

    .line 9
    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v11, 0x0

    new-array v13, v2, [Ljava/lang/String;

    .line 11
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v13, v3

    invoke-static {}, Lh8/q;->w()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v13, v4

    const-string v12, "type!= ? AND _id>?"

    const-string v14, "date DESC LIMIT 200"

    .line 12
    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_1
    move-object v6, v0

    .line 13
    :cond_2
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "type"

    .line 14
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-ne v7, v2, :cond_3

    goto :goto_2

    .line 15
    :cond_3
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    new-array v9, v3, [Lx8/a;

    .line 16
    new-instance v10, Lw8/o;

    invoke-direct {v10, v9}, Lw8/o;-><init>([Lx8/a;)V

    .line 17
    const-class v9, Lh8/l;

    .line 18
    new-instance v11, Lw8/g;

    invoke-direct {v11, v10, v9}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    new-array v9, v4, [Lw8/n;

    .line 19
    sget-object v10, Lh8/m;->k:Lx8/b;

    .line 20
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v10

    aput-object v10, v9, v3

    .line 21
    new-instance v10, Lw8/r;

    invoke-direct {v10, v11, v9}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 22
    invoke-virtual {v10}, Lw8/r;->p()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lh8/l;

    if-eqz v9, :cond_4

    const/4 v9, 0x1

    goto :goto_3

    :cond_4
    const/4 v9, 0x0

    :goto_3
    if-eqz v9, :cond_5

    goto :goto_2

    .line 23
    :cond_5
    new-instance v9, Lh8/l;

    invoke-direct {v9}, Lh8/l;-><init>()V

    const-string v10, "countryiso"

    .line 24
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lh8/l;->l:Ljava/lang/String;

    .line 25
    new-instance v10, Ljava/sql/Date;

    const-string v11, "date"

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-direct {v10, v11, v12}, Ljava/sql/Date;-><init>(J)V

    iput-object v10, v9, Lh8/l;->i:Ljava/sql/Date;

    .line 26
    iput-object v10, v9, Lh8/l;->e:Ljava/sql/Date;

    const-string v10, "duration"

    .line 27
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iput-object v10, v9, Lh8/l;->k:Ljava/lang/Integer;

    .line 28
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v9, Lh8/l;->g:Ljava/lang/Integer;

    const-string v7, "name"

    .line 29
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v9, Lh8/l;->h:Ljava/lang/String;

    .line 30
    iput-object v7, v9, Lh8/l;->Q:Ljava/lang/String;

    const-string v7, "number"

    .line 31
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v9, Lh8/l;->c:Ljava/lang/String;

    .line 32
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v9, Lh8/l;->j:Ljava/lang/Integer;

    .line 33
    iget-object v0, v9, Lh8/l;->c:Ljava/lang/String;

    invoke-static {v0}, Lh8/q;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lh8/l;->v:Ljava/lang/String;

    :try_start_1
    const-string v0, "subscription_id"

    .line 34
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v9, Lh8/l;->f:Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 36
    :goto_4
    invoke-virtual {v9}, Lb9/a;->a()Z

    .line 37
    invoke-interface {v6}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    if-le v0, v8, :cond_2

    .line 38
    :cond_6
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object v0

    new-instance v2, Lk8/q;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Lk8/q;-><init>(I)V

    invoke-virtual {v0, v2}, Lba/b;->g(Ljava/lang/Object;)V

    .line 39
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object v0

    new-instance v2, Lk8/l;

    const-string v3, "MGDB.updateLogWithCallLog"

    invoke-direct {v2, v3}, Lk8/l;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lba/b;->g(Ljava/lang/Object;)V

    .line 40
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-void

    .line 41
    :goto_5
    iget-object v6, v1, Lh8/o;->b:Landroid/content/Context;

    const-string v0, "AND"

    .line 42
    const-class v7, Lh8/i;

    :try_start_2
    invoke-static {v6}, Lf8/g;->v(Landroid/content/Context;)V

    const-string v13, "_id"

    .line 43
    invoke-static {v6}, Lf8/h;->j(Landroid/content/Context;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    const-string v11, "data1 NOT NULL AND contact_last_updated_timestamp > ? "

    .line 44
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    new-array v12, v4, [Ljava/lang/String;

    aput-object v14, v12, v3

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 45
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    .line 46
    invoke-static {v6}, Lf8/h;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 47
    :goto_6
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const-string v11, "contact_id"

    if-eqz v10, :cond_b

    :try_start_3
    const-string v10, "data1"

    .line 48
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Lh8/q;->z(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 49
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_7

    goto :goto_6

    .line 50
    :cond_7
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 51
    invoke-interface {v8, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v8, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const-string v13, "display_name"

    .line 52
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v15, "display_name_alt"

    .line 53
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v8, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string v2, "photo_thumb_uri"

    .line 54
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Lx8/a;

    .line 55
    new-instance v3, Lw8/o;

    invoke-direct {v3, v4}, Lw8/o;-><init>([Lx8/a;)V

    .line 56
    new-instance v4, Lw8/g;

    invoke-direct {v4, v3, v7}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    const/4 v3, 0x1

    new-array v1, v3, [Lw8/n;

    .line 57
    sget-object v3, Lh8/j;->g:Lx8/b;

    move-object/from16 v21, v5

    .line 58
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v5

    const/16 v16, 0x0

    aput-object v5, v1, v16

    .line 59
    new-instance v5, Lw8/r;

    invoke-direct {v5, v4, v1}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 60
    sget-object v1, Lh8/j;->h:Lx8/b;

    .line 61
    invoke-virtual {v1, v10}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v4

    move-object/from16 v22, v9

    .line 62
    iget-object v9, v5, Lw8/r;->d:Lw8/l;

    .line 63
    invoke-virtual {v9, v0, v4}, Lw8/l;->k(Ljava/lang/String;Lw8/n;)Lw8/l;

    .line 64
    invoke-virtual {v5}, Lw8/r;->l()Ljava/util/List;

    move-result-object v4

    .line 65
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v9, 0x1

    if-eq v5, v9, :cond_9

    .line 66
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v9, :cond_8

    .line 67
    new-instance v4, Lw8/f;

    invoke-direct {v4}, Lw8/f;-><init>()V

    .line 68
    new-instance v5, Lw8/g;

    invoke-direct {v5, v4, v7}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    new-array v4, v9, [Lw8/n;

    .line 69
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v3

    const/4 v9, 0x0

    aput-object v3, v4, v9

    .line 70
    new-instance v3, Lw8/r;

    invoke-direct {v3, v5, v4}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 71
    invoke-virtual {v1, v10}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v1

    .line 72
    iget-object v4, v3, Lw8/r;->d:Lw8/l;

    .line 73
    invoke-virtual {v4, v0, v1}, Lw8/l;->k(Ljava/lang/String;Lw8/n;)Lw8/l;

    .line 74
    invoke-virtual {v3}, Lw8/d;->d()V

    .line 75
    :cond_8
    new-instance v1, Lh8/i;

    invoke-direct {v1}, Lh8/i;-><init>()V

    .line 76
    iput v12, v1, Lh8/i;->i:I

    .line 77
    iput v11, v1, Lh8/i;->c:I

    .line 78
    iput-object v10, v1, Lh8/i;->d:Ljava/lang/String;

    .line 79
    iput-object v13, v1, Lh8/i;->e:Ljava/lang/String;

    .line 80
    iput-object v15, v1, Lh8/i;->f:Ljava/lang/String;

    .line 81
    iput-object v2, v1, Lh8/i;->h:Ljava/lang/String;

    const/4 v2, 0x1

    .line 82
    iput v2, v1, Lh8/i;->g:I

    .line 83
    invoke-virtual {v1}, Lb9/a;->a()Z

    goto/16 :goto_7

    :cond_9
    const/4 v5, 0x0

    .line 84
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lh8/i;

    move-object v5, v15

    move-object v15, v4

    move-object/from16 v16, v10

    move-object/from16 v17, v13

    move-object/from16 v18, v5

    move-object/from16 v19, v2

    move/from16 v20, v11

    invoke-static/range {v15 .. v20}, Lh8/q;->j(Lh8/i;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_a

    .line 85
    new-instance v4, Lw8/q;

    invoke-direct {v4, v7}, Lw8/q;-><init>(Ljava/lang/Class;)V

    const/4 v9, 0x6

    new-array v9, v9, [Lw8/n;

    .line 86
    invoke-virtual {v1, v10}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v12

    const/4 v15, 0x0

    aput-object v12, v9, v15

    sget-object v12, Lh8/j;->i:Lx8/b;

    .line 87
    invoke-virtual {v12, v13}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v9, v13

    sget-object v12, Lh8/j;->j:Lx8/b;

    .line 88
    invoke-virtual {v12, v5}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v5

    const/4 v12, 0x2

    aput-object v5, v9, v12

    const/4 v5, 0x3

    sget-object v13, Lh8/j;->l:Lx8/b;

    .line 89
    invoke-virtual {v13, v2}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v2

    aput-object v2, v9, v5

    const/4 v2, 0x4

    sget-object v5, Lh8/j;->k:Lx8/b;

    const/4 v13, 0x1

    .line 90
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v5, v15}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v5

    aput-object v5, v9, v2

    const/4 v2, 0x5

    .line 91
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v5

    aput-object v5, v9, v2

    .line 92
    invoke-virtual {v4, v9}, Lw8/q;->a([Lw8/n;)Lw8/p;

    move-result-object v2

    const/4 v4, 0x1

    new-array v5, v4, [Lw8/n;

    .line 93
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v5, v4

    .line 94
    new-instance v3, Lw8/r;

    invoke-direct {v3, v2, v5}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 95
    invoke-virtual {v1, v10}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v1

    .line 96
    iget-object v2, v3, Lw8/r;->d:Lw8/l;

    .line 97
    invoke-virtual {v2, v0, v1}, Lw8/l;->k(Ljava/lang/String;Lw8/n;)Lw8/l;

    .line 98
    invoke-virtual {v3}, Lw8/d;->d()V

    goto :goto_8

    :cond_a
    :goto_7
    const/4 v12, 0x2

    :goto_8
    move-object/from16 v1, p0

    move-object/from16 v5, v21

    move-object/from16 v9, v22

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto/16 :goto_6

    .line 99
    :cond_b
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const-string v18, "contact_deleted_timestamp > ?"

    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v14, v0, v1

    .line 100
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    sget-object v16, Landroid/provider/ContactsContract$DeletedContacts;->CONTENT_URI:Landroid/net/Uri;

    const/16 v17, 0x0

    const/16 v20, 0x0

    move-object/from16 v19, v0

    invoke-virtual/range {v15 .. v20}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 101
    :goto_9
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 102
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 103
    new-instance v2, Lw8/f;

    invoke-direct {v2}, Lw8/f;-><init>()V

    .line 104
    new-instance v3, Lw8/g;

    invoke-direct {v3, v2, v7}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    const/4 v2, 0x1

    new-array v4, v2, [Lw8/n;

    .line 105
    sget-object v5, Lh8/j;->g:Lx8/b;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v1

    const/4 v5, 0x0

    aput-object v1, v4, v5

    .line 106
    new-instance v1, Lw8/r;

    invoke-direct {v1, v3, v4}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 107
    invoke-virtual {v1}, Lw8/d;->d()V

    goto :goto_9

    .line 108
    :cond_c
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_a

    :catch_2
    move-exception v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    :goto_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "contactslastsync"

    .line 111
    invoke-static {v6, v2, v0, v1}, Lf8/h;->k0(Landroid/content/Context;Ljava/lang/String;J)V

    .line 112
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object v0

    new-instance v1, Lk8/q;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lk8/q;-><init>(I)V

    invoke-virtual {v0, v1}, Lba/b;->g(Ljava/lang/Object;)V

    .line 113
    invoke-static {v6}, Lf8/g;->D(Landroid/content/Context;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
