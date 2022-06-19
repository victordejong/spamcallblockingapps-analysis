.class public Lx1/r$a;
.super Ld1/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx1/r;-><init>(Ld1/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld1/b<",
        "Lx1/p;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lx1/r;Ld1/f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ld1/b;-><init>(Ld1/f;)V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR IGNORE INTO `WorkSpec` (`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`period_start_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`out_of_quota_policy`,`required_network_type`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method

.method public d(Lh1/f;Ljava/lang/Object;)V
    .locals 16

    move-object/from16 v1, p1

    .line 1
    move-object/from16 v0, p2

    check-cast v0, Lx1/p;

    .line 2
    iget-object v2, v0, Lx1/p;->a:Ljava/lang/String;

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 3
    iget-object v2, v1, Lh1/e;->a:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v4, v1, Lh1/e;->a:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v4, v3, v2}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 5
    :goto_0
    iget-object v2, v0, Lx1/p;->b:Lo1/m;

    invoke-static {v2}, Lx1/v;->f(Lo1/m;)I

    move-result v2

    int-to-long v4, v2

    .line 6
    iget-object v2, v1, Lh1/e;->a:Landroid/database/sqlite/SQLiteProgram;

    const/4 v6, 0x2

    invoke-virtual {v2, v6, v4, v5}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 7
    iget-object v2, v0, Lx1/p;->c:Ljava/lang/String;

    const/4 v4, 0x3

    if-nez v2, :cond_1

    .line 8
    iget-object v2, v1, Lh1/e;->a:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 9
    :cond_1
    iget-object v5, v1, Lh1/e;->a:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v5, v4, v2}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 10
    :goto_1
    iget-object v2, v0, Lx1/p;->d:Ljava/lang/String;

    const/4 v5, 0x4

    if-nez v2, :cond_2

    .line 11
    iget-object v2, v1, Lh1/e;->a:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v2, v5}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    goto :goto_2

    .line 12
    :cond_2
    iget-object v7, v1, Lh1/e;->a:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v7, v5, v2}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 13
    :goto_2
    iget-object v2, v0, Lx1/p;->e:Landroidx/work/b;

    invoke-static {v2}, Landroidx/work/b;->c(Landroidx/work/b;)[B

    move-result-object v2

    const/4 v7, 0x5

    if-nez v2, :cond_3

    .line 14
    iget-object v2, v1, Lh1/e;->a:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v2, v7}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    goto :goto_3

    .line 15
    :cond_3
    iget-object v8, v1, Lh1/e;->a:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v8, v7, v2}, Landroid/database/sqlite/SQLiteProgram;->bindBlob(I[B)V

    .line 16
    :goto_3
    iget-object v2, v0, Lx1/p;->f:Landroidx/work/b;

    invoke-static {v2}, Landroidx/work/b;->c(Landroidx/work/b;)[B

    move-result-object v2

    const/4 v8, 0x6

    if-nez v2, :cond_4

    .line 17
    iget-object v2, v1, Lh1/e;->a:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v2, v8}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    goto :goto_4

    .line 18
    :cond_4
    iget-object v9, v1, Lh1/e;->a:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v9, v8, v2}, Landroid/database/sqlite/SQLiteProgram;->bindBlob(I[B)V

    :goto_4
    const/4 v2, 0x7

    .line 19
    iget-wide v8, v0, Lx1/p;->g:J

    .line 20
    iget-object v10, v1, Lh1/e;->a:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v10, v2, v8, v9}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    const/16 v2, 0x8

    .line 21
    iget-wide v8, v0, Lx1/p;->h:J

    .line 22
    iget-object v10, v1, Lh1/e;->a:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v10, v2, v8, v9}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    const/16 v2, 0x9

    .line 23
    iget-wide v8, v0, Lx1/p;->i:J

    .line 24
    iget-object v10, v1, Lh1/e;->a:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v10, v2, v8, v9}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    const/16 v2, 0xa

    .line 25
    iget v8, v0, Lx1/p;->k:I

    int-to-long v8, v8

    .line 26
    iget-object v10, v1, Lh1/e;->a:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v10, v2, v8, v9}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 27
    iget v2, v0, Lx1/p;->l:I

    .line 28
    invoke-static {v2}, Lt/g;->c(I)I

    move-result v8

    const-string v9, " to int"

    const-string v10, "Could not convert "

    if-eqz v8, :cond_6

    if-ne v8, v3, :cond_5

    const/4 v2, 0x1

    goto :goto_5

    .line 29
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, La6/h;->q(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const/4 v2, 0x0

    :goto_5
    const/16 v8, 0xb

    int-to-long v12, v2

    .line 30
    iget-object v2, v1, Lh1/e;->a:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v2, v8, v12, v13}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    const/16 v2, 0xc

    .line 31
    iget-wide v12, v0, Lx1/p;->m:J

    .line 32
    iget-object v8, v1, Lh1/e;->a:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v8, v2, v12, v13}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    const/16 v2, 0xd

    .line 33
    iget-wide v12, v0, Lx1/p;->n:J

    .line 34
    iget-object v8, v1, Lh1/e;->a:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v8, v2, v12, v13}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    const/16 v2, 0xe

    .line 35
    iget-wide v12, v0, Lx1/p;->o:J

    .line 36
    iget-object v8, v1, Lh1/e;->a:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v8, v2, v12, v13}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    const/16 v2, 0xf

    .line 37
    iget-wide v12, v0, Lx1/p;->p:J

    .line 38
    iget-object v8, v1, Lh1/e;->a:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v8, v2, v12, v13}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 39
    iget-boolean v2, v0, Lx1/p;->q:Z

    const/16 v8, 0x10

    int-to-long v12, v2

    .line 40
    iget-object v2, v1, Lh1/e;->a:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v2, v8, v12, v13}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 41
    iget v2, v0, Lx1/p;->r:I

    .line 42
    invoke-static {v2}, Lt/g;->c(I)I

    move-result v8

    if-eqz v8, :cond_8

    if-ne v8, v3, :cond_7

    const/4 v2, 0x1

    goto :goto_6

    .line 43
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/support/v4/media/b;->n(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    const/4 v2, 0x0

    :goto_6
    const/16 v8, 0x11

    int-to-long v12, v2

    .line 44
    iget-object v2, v1, Lh1/e;->a:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v2, v8, v12, v13}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 45
    iget-object v0, v0, Lx1/p;->j:Lo1/b;

    const/16 v2, 0x17

    const/16 v8, 0x16

    const/16 v12, 0x15

    const/16 v13, 0x14

    const/16 v14, 0x13

    const/16 v15, 0x12

    if-eqz v0, :cond_14

    .line 46
    iget-object v11, v0, Lo1/b;->a:Lo1/i;

    .line 47
    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    if-eqz v7, :cond_d

    if-eq v7, v3, :cond_e

    if-eq v7, v6, :cond_c

    if-eq v7, v4, :cond_b

    if-eq v7, v5, :cond_a

    .line 48
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1e

    if-lt v3, v4, :cond_9

    sget-object v3, Lo1/i;->f:Lo1/i;

    if-ne v11, v3, :cond_9

    const/4 v3, 0x5

    goto :goto_7

    .line 49
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const/4 v3, 0x4

    goto :goto_7

    :cond_b
    const/4 v3, 0x3

    goto :goto_7

    :cond_c
    const/4 v3, 0x2

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :cond_e
    :goto_7
    int-to-long v3, v3

    .line 50
    iget-object v5, v1, Lh1/e;->a:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v5, v15, v3, v4}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 51
    iget-boolean v3, v0, Lo1/b;->b:Z

    int-to-long v3, v3

    .line 52
    iget-object v5, v1, Lh1/e;->a:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v5, v14, v3, v4}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 53
    iget-boolean v3, v0, Lo1/b;->c:Z

    int-to-long v3, v3

    .line 54
    iget-object v5, v1, Lh1/e;->a:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v5, v13, v3, v4}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 55
    iget-boolean v3, v0, Lo1/b;->d:Z

    int-to-long v3, v3

    .line 56
    iget-object v5, v1, Lh1/e;->a:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v5, v12, v3, v4}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 57
    iget-boolean v3, v0, Lo1/b;->e:Z

    int-to-long v3, v3

    .line 58
    iget-object v5, v1, Lh1/e;->a:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v5, v8, v3, v4}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 59
    iget-wide v3, v0, Lo1/b;->f:J

    .line 60
    iget-object v5, v1, Lh1/e;->a:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v5, v2, v3, v4}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 61
    iget-wide v2, v0, Lo1/b;->g:J

    .line 62
    iget-object v4, v1, Lh1/e;->a:Landroid/database/sqlite/SQLiteProgram;

    const/16 v5, 0x18

    invoke-virtual {v4, v5, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 63
    iget-object v0, v0, Lo1/b;->h:Lo1/c;

    .line 64
    invoke-virtual {v0}, Lo1/c;->a()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_f

    goto/16 :goto_f

    .line 65
    :cond_f
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 66
    :try_start_0
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 67
    :try_start_1
    invoke-virtual {v0}, Lo1/c;->a()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 68
    iget-object v0, v0, Lo1/c;->a:Ljava/util/Set;

    .line 69
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo1/c$a;

    .line 70
    iget-object v5, v3, Lo1/c$a;->a:Landroid/net/Uri;

    .line 71
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 72
    iget-boolean v3, v3, Lo1/c$a;->b:Z

    .line 73
    invoke-virtual {v4, v3}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_8

    :catchall_0
    move-exception v0

    goto :goto_a

    :catch_0
    move-exception v0

    goto :goto_b

    .line 74
    :cond_10
    :try_start_2
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_9

    :catch_1
    move-exception v0

    move-object v3, v0

    .line 75
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 76
    :cond_11
    :goto_9
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_e

    :catch_2
    move-exception v0

    goto :goto_d

    :goto_a
    move-object v1, v0

    goto :goto_11

    :goto_b
    move-object v3, v4

    goto :goto_c

    :catchall_1
    move-exception v0

    goto :goto_10

    :catch_3
    move-exception v0

    .line 77
    :goto_c
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v3, :cond_11

    .line 78
    :try_start_5
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_9

    :catch_4
    move-exception v0

    move-object v3, v0

    .line 79
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 80
    :goto_d
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 81
    :goto_e
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    :goto_f
    if-nez v3, :cond_12

    .line 82
    iget-object v0, v1, Lh1/e;->a:Landroid/database/sqlite/SQLiteProgram;

    const/16 v2, 0x19

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    goto :goto_14

    :cond_12
    const/16 v2, 0x19

    .line 83
    iget-object v0, v1, Lh1/e;->a:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindBlob(I[B)V

    goto :goto_14

    :goto_10
    move-object v1, v0

    move-object v4, v3

    :goto_11
    if-eqz v4, :cond_13

    .line 84
    :try_start_6
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_12

    :catch_5
    move-exception v0

    move-object v3, v0

    .line 85
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 86
    :cond_13
    :goto_12
    :try_start_7
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_13

    :catch_6
    move-exception v0

    move-object v2, v0

    .line 87
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 88
    :goto_13
    throw v1

    .line 89
    :cond_14
    iget-object v0, v1, Lh1/e;->a:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v0, v15}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    .line 90
    iget-object v0, v1, Lh1/e;->a:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v0, v14}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    .line 91
    iget-object v0, v1, Lh1/e;->a:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v0, v13}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    .line 92
    iget-object v0, v1, Lh1/e;->a:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v0, v12}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    .line 93
    iget-object v0, v1, Lh1/e;->a:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v0, v8}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    .line 94
    iget-object v0, v1, Lh1/e;->a:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    .line 95
    iget-object v0, v1, Lh1/e;->a:Landroid/database/sqlite/SQLiteProgram;

    const/16 v2, 0x18

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    .line 96
    iget-object v0, v1, Lh1/e;->a:Landroid/database/sqlite/SQLiteProgram;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    :goto_14
    return-void
.end method
