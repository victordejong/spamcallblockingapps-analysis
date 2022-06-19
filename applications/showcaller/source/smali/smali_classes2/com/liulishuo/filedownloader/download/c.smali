.class public Lcom/liulishuo/filedownloader/download/c;
.super Ljava/lang/Object;
.source "CustomComponentHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/download/c$a;
    }
.end annotation


# instance fields
.field private a:Lcom/liulishuo/filedownloader/services/c;

.field private b:Lc/d/a/i0/c$a;

.field private c:Lc/d/a/i0/c$b;

.field private d:Lc/d/a/i0/c$d;

.field private e:Lc/d/a/f0/a;

.field private f:Lc/d/a/i0/c$c;

.field private g:Lcom/liulishuo/filedownloader/services/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private d()Lc/d/a/i0/c$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/c;->b:Lc/d/a/i0/c$a;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/c;->b:Lc/d/a/i0/c$a;

    if-nez v0, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/c;->g()Lcom/liulishuo/filedownloader/services/c;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/services/c;->a()Lc/d/a/i0/c$a;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/download/c;->b:Lc/d/a/i0/c$a;

    .line 6
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/c;->b:Lc/d/a/i0/c$a;

    return-object v0

    :catchall_0
    move-exception v0

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private e()Lc/d/a/i0/c$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/c;->c:Lc/d/a/i0/c$b;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/c;->c:Lc/d/a/i0/c$b;

    if-nez v0, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/c;->g()Lcom/liulishuo/filedownloader/services/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/services/c;->b()Lc/d/a/i0/c$b;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/download/c;->c:Lc/d/a/i0/c$b;

    .line 5
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/c;->c:Lc/d/a/i0/c$b;

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private g()Lcom/liulishuo/filedownloader/services/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/c;->a:Lcom/liulishuo/filedownloader/services/c;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/c;->a:Lcom/liulishuo/filedownloader/services/c;

    if-nez v0, :cond_1

    new-instance v0, Lcom/liulishuo/filedownloader/services/c;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/services/c;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/download/c;->a:Lcom/liulishuo/filedownloader/services/c;

    .line 4
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/c;->a:Lcom/liulishuo/filedownloader/services/c;

    return-object v0

    :catchall_0
    move-exception v0

    .line 6
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static j()Lcom/liulishuo/filedownloader/download/c;
    .locals 1

    .line 1
    invoke-static {}, Lcom/liulishuo/filedownloader/download/c$a;->a()Lcom/liulishuo/filedownloader/download/c;

    move-result-object v0

    return-object v0
.end method

.method private l()Lc/d/a/i0/c$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/c;->d:Lc/d/a/i0/c$d;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/c;->d:Lc/d/a/i0/c$d;

    if-nez v0, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/c;->g()Lcom/liulishuo/filedownloader/services/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/services/c;->l()Lc/d/a/i0/c$d;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/download/c;->d:Lc/d/a/i0/c$d;

    .line 5
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/c;->d:Lc/d/a/i0/c$d;

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static n(Lc/d/a/f0/a$a;)V
    .locals 26

    move-object/from16 v1, p0

    const-string v2, "refreshed data count: %d , delete data count: %d, reset id count: %d. consume %d"

    .line 1
    const-class v3, Lc/d/a/f0/a;

    invoke-interface/range {p0 .. p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/liulishuo/filedownloader/download/c;->j()Lcom/liulishuo/filedownloader/download/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/liulishuo/filedownloader/download/c;->i()Lc/d/a/i0/c$c;

    move-result-object v4

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    :goto_0
    const/4 v15, 0x3

    .line 4
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_c

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v8, v19

    check-cast v8, Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 6
    invoke-virtual {v8}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->h()B

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object/from16 v21, v2

    const/4 v2, -0x2

    if-eq v7, v15, :cond_0

    .line 7
    :try_start_1
    invoke-virtual {v8}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->h()B

    move-result v7

    const/4 v15, 0x2

    if-eq v7, v15, :cond_0

    .line 8
    invoke-virtual {v8}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->h()B

    move-result v7

    const/4 v15, -0x1

    if-eq v7, v15, :cond_0

    .line 9
    invoke-virtual {v8}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->h()B

    move-result v7

    const/4 v15, 0x1

    if-ne v7, v15, :cond_1

    .line 10
    invoke-virtual {v8}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g()J

    move-result-wide v22

    const-wide/16 v16, 0x0

    cmp-long v7, v22, v16

    if-lez v7, :cond_1

    .line 11
    :cond_0
    invoke-virtual {v8, v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->B(B)V

    .line 12
    :cond_1
    invoke-virtual {v8}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->i()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_2

    move-wide/from16 v22, v5

    move-wide/from16 v24, v9

    const/4 v2, 0x1

    const-wide/16 v9, 0x0

    goto/16 :goto_3

    .line 13
    :cond_2
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v8}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->h()B

    move-result v7

    if-ne v7, v2, :cond_3

    .line 15
    invoke-virtual {v8}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->e()I

    move-result v2

    .line 16
    invoke-virtual {v8}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->f()Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-wide/from16 v22, v5

    const/4 v5, 0x0

    .line 17
    :try_start_2
    invoke-static {v2, v8, v7, v5}, Lc/d/a/i0/f;->I(ILcom/liulishuo/filedownloader/model/FileDownloadModel;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 18
    new-instance v2, Ljava/io/File;

    invoke-virtual {v8}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->j()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 20
    invoke-virtual {v15, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    .line 21
    sget-boolean v6, Lc/d/a/i0/d;->a:Z

    if-eqz v6, :cond_4

    const-string v6, "resume from the old no-temp-file architecture [%B], [%s]->[%s]"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-wide/from16 v24, v9

    const/4 v7, 0x3

    :try_start_3
    new-array v9, v7, [Ljava/lang/Object;

    .line 22
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v9, v7

    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v9, v7

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v9, v5

    .line 23
    invoke-static {v3, v6, v9}, Lc/d/a/i0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_3
    move-wide/from16 v22, v5

    :cond_4
    move-wide/from16 v24, v9

    .line 24
    :goto_1
    invoke-virtual {v8}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->h()B

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_5

    invoke-virtual {v8}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g()J

    move-result-wide v5

    const-wide/16 v9, 0x0

    cmp-long v2, v5, v9

    if-gtz v2, :cond_6

    :goto_2
    const/4 v2, 0x1

    goto :goto_3

    :cond_5
    const-wide/16 v9, 0x0

    .line 25
    :cond_6
    invoke-virtual {v8}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->e()I

    move-result v2

    invoke-static {v2, v8}, Lc/d/a/i0/f;->G(ILcom/liulishuo/filedownloader/model/FileDownloadModel;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_2

    .line 26
    :cond_7
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_2

    :cond_8
    const/4 v2, 0x0

    :goto_3
    const-wide/16 v5, 0x1

    if-eqz v2, :cond_9

    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 28
    invoke-interface {v1, v8}, Lc/d/a/f0/a$a;->u(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V

    add-long/2addr v11, v5

    move-wide/from16 v9, v24

    goto :goto_4

    .line 29
    :cond_9
    invoke-virtual {v8}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->e()I

    move-result v2

    .line 30
    invoke-virtual {v8}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->l()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->f()Ljava/lang/String;

    move-result-object v15

    .line 31
    invoke-virtual {v8}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->r()Z

    move-result v9

    .line 32
    invoke-interface {v4, v2, v7, v15, v9}, Lc/d/a/i0/c$c;->b(ILjava/lang/String;Ljava/lang/String;Z)I

    move-result v7

    if-eq v7, v2, :cond_b

    .line 33
    sget-boolean v9, Lc/d/a/i0/d;->a:Z

    if-eqz v9, :cond_a

    const-string v9, "the id is changed on restoring from db: old[%d] -> new[%d]"

    const/4 v10, 0x2

    new-array v15, v10, [Ljava/lang/Object;

    .line 34
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v18, 0x0

    aput-object v10, v15, v18

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v20, 0x1

    aput-object v10, v15, v20

    .line 35
    invoke-static {v3, v9, v15}, Lc/d/a/i0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    :cond_a
    invoke-virtual {v8, v7}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->x(I)V

    .line 37
    invoke-interface {v1, v2, v8}, Lc/d/a/f0/a$a;->E(ILcom/liulishuo/filedownloader/model/FileDownloadModel;)V

    add-long/2addr v13, v5

    .line 38
    :cond_b
    invoke-interface {v1, v8}, Lc/d/a/f0/a$a;->z(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    add-long v9, v24, v5

    :goto_4
    move-object/from16 v2, v21

    move-wide/from16 v5, v22

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    goto :goto_6

    :catchall_2
    move-exception v0

    move-wide/from16 v22, v5

    :goto_5
    move-wide/from16 v24, v9

    :goto_6
    move-object/from16 v2, v21

    goto :goto_7

    :cond_c
    move-object/from16 v21, v2

    move-wide/from16 v22, v5

    move-wide/from16 v24, v9

    .line 39
    invoke-static {}, Lc/d/a/i0/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc/d/a/i0/f;->N(Landroid/content/Context;)V

    .line 40
    invoke-interface/range {p0 .. p0}, Lc/d/a/f0/a$a;->Y()V

    .line 41
    sget-boolean v0, Lc/d/a/i0/d;->a:Z

    if-eqz v0, :cond_d

    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/Object;

    .line 42
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v1, v1, v22

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    move-object/from16 v2, v21

    .line 44
    invoke-static {v3, v2, v0}, Lc/d/a/i0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    return-void

    :catchall_3
    move-exception v0

    move-wide/from16 v22, v5

    move-wide/from16 v24, v9

    .line 45
    :goto_7
    invoke-static {}, Lc/d/a/i0/c;->a()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lc/d/a/i0/f;->N(Landroid/content/Context;)V

    .line 46
    invoke-interface/range {p0 .. p0}, Lc/d/a/f0/a$a;->Y()V

    .line 47
    sget-boolean v1, Lc/d/a/i0/d;->a:Z

    if-eqz v1, :cond_e

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 48
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v1, v5

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v1, v5

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v1, v5

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v22

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v1, v5

    .line 50
    invoke-static {v3, v2, v1}, Lc/d/a/i0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    :cond_e
    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lc/d/a/e0/b;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/c;->e()Lc/d/a/i0/c$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lc/d/a/i0/c$b;->a(Ljava/lang/String;)Lc/d/a/e0/b;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/io/File;)Lc/d/a/h0/a;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/c;->l()Lc/d/a/i0/c$d;

    move-result-object v0

    invoke-interface {v0, p1}, Lc/d/a/i0/c$d;->a(Ljava/io/File;)Lc/d/a/h0/a;

    move-result-object p1

    return-object p1
.end method

.method public c(ILjava/lang/String;Ljava/lang/String;J)I
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/c;->d()Lc/d/a/i0/c$a;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    .line 2
    invoke-interface/range {v0 .. v5}, Lc/d/a/i0/c$a;->a(ILjava/lang/String;Ljava/lang/String;J)I

    move-result p1

    return p1
.end method

.method public f()Lc/d/a/f0/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/c;->e:Lc/d/a/f0/a;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/c;->e:Lc/d/a/f0/a;

    if-nez v0, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/c;->g()Lcom/liulishuo/filedownloader/services/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/services/c;->c()Lc/d/a/f0/a;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/download/c;->e:Lc/d/a/f0/a;

    .line 5
    invoke-interface {v0}, Lc/d/a/f0/a;->b()Lc/d/a/f0/a$a;

    move-result-object v0

    invoke-static {v0}, Lcom/liulishuo/filedownloader/download/c;->n(Lc/d/a/f0/a$a;)V

    .line 6
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/c;->e:Lc/d/a/f0/a;

    return-object v0

    :catchall_0
    move-exception v0

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public h()Lcom/liulishuo/filedownloader/services/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/c;->g:Lcom/liulishuo/filedownloader/services/i;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/c;->g:Lcom/liulishuo/filedownloader/services/i;

    if-nez v0, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/c;->g()Lcom/liulishuo/filedownloader/services/c;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/services/c;->j()Lcom/liulishuo/filedownloader/services/i;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/download/c;->g:Lcom/liulishuo/filedownloader/services/i;

    .line 6
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/c;->g:Lcom/liulishuo/filedownloader/services/i;

    return-object v0

    :catchall_0
    move-exception v0

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public i()Lc/d/a/i0/c$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/c;->f:Lc/d/a/i0/c$c;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/c;->f:Lc/d/a/i0/c$c;

    if-nez v0, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/c;->g()Lcom/liulishuo/filedownloader/services/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/services/c;->k()Lc/d/a/i0/c$c;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/download/c;->f:Lc/d/a/i0/c$c;

    .line 5
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/c;->f:Lc/d/a/i0/c$c;

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public k()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/c;->g()Lcom/liulishuo/filedownloader/services/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/services/c;->n()I

    move-result v0

    return v0
.end method

.method public m()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/c;->l()Lc/d/a/i0/c$d;

    move-result-object v0

    invoke-interface {v0}, Lc/d/a/i0/c$d;->b()Z

    move-result v0

    return v0
.end method
