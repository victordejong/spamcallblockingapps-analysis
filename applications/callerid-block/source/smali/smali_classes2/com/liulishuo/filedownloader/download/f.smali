.class public Lcom/liulishuo/filedownloader/download/f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/download/f$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/liulishuo/filedownloader/download/g;

.field private final b:I

.field private final c:I

.field private final d:Lcom/liulishuo/filedownloader/download/d;

.field private final e:Le/e/a/d0/b;

.field private final f:Z

.field private final g:J

.field private final h:J

.field private final i:J

.field private final j:Ljava/lang/String;

.field k:J

.field private l:Le/e/a/g0/a;

.field private volatile m:Z

.field private final n:Le/e/a/e0/a;

.field private volatile o:J

.field private volatile p:J


# direct methods
.method private constructor <init>(Le/e/a/d0/b;Lcom/liulishuo/filedownloader/download/b;Lcom/liulishuo/filedownloader/download/d;IIZLcom/liulishuo/filedownloader/download/g;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/liulishuo/filedownloader/download/f;->o:J

    iput-wide v0, p0, Lcom/liulishuo/filedownloader/download/f;->p:J

    iput-object p7, p0, Lcom/liulishuo/filedownloader/download/f;->a:Lcom/liulishuo/filedownloader/download/g;

    iput-object p8, p0, Lcom/liulishuo/filedownloader/download/f;->j:Ljava/lang/String;

    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/f;->e:Le/e/a/d0/b;

    iput-boolean p6, p0, Lcom/liulishuo/filedownloader/download/f;->f:Z

    iput-object p3, p0, Lcom/liulishuo/filedownloader/download/f;->d:Lcom/liulishuo/filedownloader/download/d;

    iput p5, p0, Lcom/liulishuo/filedownloader/download/f;->c:I

    iput p4, p0, Lcom/liulishuo/filedownloader/download/f;->b:I

    invoke-static {}, Lcom/liulishuo/filedownloader/download/c;->j()Lcom/liulishuo/filedownloader/download/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/download/c;->f()Le/e/a/e0/a;

    move-result-object p1

    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/f;->n:Le/e/a/e0/a;

    iget-wide p3, p2, Lcom/liulishuo/filedownloader/download/b;->a:J

    iput-wide p3, p0, Lcom/liulishuo/filedownloader/download/f;->g:J

    iget-wide p3, p2, Lcom/liulishuo/filedownloader/download/b;->c:J

    iput-wide p3, p0, Lcom/liulishuo/filedownloader/download/f;->h:J

    iget-wide p3, p2, Lcom/liulishuo/filedownloader/download/b;->b:J

    iput-wide p3, p0, Lcom/liulishuo/filedownloader/download/f;->k:J

    iget-wide p1, p2, Lcom/liulishuo/filedownloader/download/b;->d:J

    iput-wide p1, p0, Lcom/liulishuo/filedownloader/download/f;->i:J

    return-void
.end method

.method synthetic constructor <init>(Le/e/a/d0/b;Lcom/liulishuo/filedownloader/download/b;Lcom/liulishuo/filedownloader/download/d;IIZLcom/liulishuo/filedownloader/download/g;Ljava/lang/String;Lcom/liulishuo/filedownloader/download/f$a;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/liulishuo/filedownloader/download/f;-><init>(Le/e/a/d0/b;Lcom/liulishuo/filedownloader/download/b;Lcom/liulishuo/filedownloader/download/d;IIZLcom/liulishuo/filedownloader/download/g;Ljava/lang/String;)V

    return-void
.end method

.method private a()V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/liulishuo/filedownloader/download/f;->k:J

    iget-wide v4, p0, Lcom/liulishuo/filedownloader/download/f;->o:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/liulishuo/filedownloader/download/f;->p:J

    sub-long v4, v0, v4

    invoke-static {v2, v3, v4, v5}, Le/e/a/h0/f;->L(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/f;->d()V

    iget-wide v2, p0, Lcom/liulishuo/filedownloader/download/f;->k:J

    iput-wide v2, p0, Lcom/liulishuo/filedownloader/download/f;->o:J

    iput-wide v0, p0, Lcom/liulishuo/filedownloader/download/f;->p:J

    :cond_0
    return-void
.end method

.method private d()V
    .locals 9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/liulishuo/filedownloader/download/f;->l:Le/e/a/g0/a;

    invoke-interface {v4}, Le/e/a/g0/a;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    sget-boolean v5, Le/e/a/h0/d;->a:Z

    if-eqz v5, :cond_0

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v4, v5, v3

    const-string v4, "Because of the system cannot guarantee that all the buffers have been synchronized with physical media, or write to filefailed, we just not flushAndSync process to database too %s"

    invoke-static {p0, v4, v5}, Le/e/a/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_3

    iget v4, p0, Lcom/liulishuo/filedownloader/download/f;->c:I

    if-ltz v4, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/liulishuo/filedownloader/download/f;->n:Le/e/a/e0/a;

    iget v6, p0, Lcom/liulishuo/filedownloader/download/f;->b:I

    iget-wide v7, p0, Lcom/liulishuo/filedownloader/download/f;->k:J

    invoke-interface {v5, v6, v4, v7, v8}, Le/e/a/e0/a;->k(IIJ)V

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lcom/liulishuo/filedownloader/download/f;->a:Lcom/liulishuo/filedownloader/download/g;

    invoke-interface {v4}, Lcom/liulishuo/filedownloader/download/g;->e()V

    :goto_2
    sget-boolean v4, Le/e/a/h0/d;->a:Z

    if-eqz v4, :cond_3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/liulishuo/filedownloader/download/f;->b:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    iget v3, p0, Lcom/liulishuo/filedownloader/download/f;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x2

    iget-wide v5, p0, Lcom/liulishuo/filedownloader/download/f;->k:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v2

    const-string v0, "require flushAndSync id[%d] index[%d] offset[%d], consume[%d]"

    invoke-static {p0, v0, v4}, Le/e/a/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/download/f;->m:Z

    return-void
.end method

.method public c()V
    .locals 19

    move-object/from16 v1, p0

    iget-boolean v0, v1, Lcom/liulishuo/filedownloader/download/f;->m:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, v1, Lcom/liulishuo/filedownloader/download/f;->c:I

    iget-object v2, v1, Lcom/liulishuo/filedownloader/download/f;->e:Le/e/a/d0/b;

    invoke-static {v0, v2}, Le/e/a/h0/f;->h(ILe/e/a/d0/b;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/liulishuo/filedownloader/download/f;->e:Le/e/a/d0/b;

    invoke-static {v0}, Le/e/a/h0/f;->i(Le/e/a/d0/b;)J

    move-result-wide v2

    :cond_1
    const-wide/16 v6, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    cmp-long v0, v2, v6

    if-eqz v0, :cond_1f

    iget-wide v11, v1, Lcom/liulishuo/filedownloader/download/f;->i:J

    const/4 v13, 0x5

    const/4 v14, 0x4

    const/4 v15, 0x3

    cmp-long v0, v11, v6

    if-lez v0, :cond_3

    cmp-long v0, v2, v11

    if-eqz v0, :cond_3

    iget-wide v6, v1, Lcom/liulishuo/filedownloader/download/f;->h:J

    cmp-long v0, v6, v4

    if-nez v0, :cond_2

    new-array v0, v9, [Ljava/lang/Object;

    iget-wide v4, v1, Lcom/liulishuo/filedownloader/download/f;->k:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v0, v10

    const-string v4, "range[%d-)"

    invoke-static {v4, v0}, Le/e/a/h0/f;->o(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-array v0, v8, [Ljava/lang/Object;

    iget-wide v4, v1, Lcom/liulishuo/filedownloader/download/f;->k:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v0, v10

    iget-wide v4, v1, Lcom/liulishuo/filedownloader/download/f;->h:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v0, v9

    const-string v4, "range[%d-%d)"

    invoke-static {v4, v0}, Le/e/a/h0/f;->o(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v4, Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException;

    new-array v5, v13, [Ljava/lang/Object;

    aput-object v0, v5, v10

    iget-wide v6, v1, Lcom/liulishuo/filedownloader/download/f;->i:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v8

    iget v0, v1, Lcom/liulishuo/filedownloader/download/f;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v15

    iget v0, v1, Lcom/liulishuo/filedownloader/download/f;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v14

    const-string v0, "require %s with contentLength(%d), but the backend response contentLength is %d on downloadId[%d]-connectionIndex[%d], please ask your backend dev to fix such problem."

    invoke-static {v0, v5}, Le/e/a/h0/f;->o(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    iget-wide v6, v1, Lcom/liulishuo/filedownloader/download/f;->k:J

    const/4 v11, 0x0

    :try_start_0
    invoke-static {}, Lcom/liulishuo/filedownloader/download/c;->j()Lcom/liulishuo/filedownloader/download/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/c;->m()Z

    move-result v0

    iget-object v12, v1, Lcom/liulishuo/filedownloader/download/f;->d:Lcom/liulishuo/filedownloader/download/d;

    if-eqz v12, :cond_5

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v2, "can\'t using multi-download when the output stream can\'t support seek"

    invoke-direct {v0, v2}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    iget-object v12, v1, Lcom/liulishuo/filedownloader/download/f;->j:Ljava/lang/String;

    invoke-static {v12}, Le/e/a/h0/f;->c(Ljava/lang/String;)Le/e/a/g0/a;

    move-result-object v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    iput-object v12, v1, Lcom/liulishuo/filedownloader/download/f;->l:Le/e/a/g0/a;

    if-eqz v0, :cond_6

    iget-wide v4, v1, Lcom/liulishuo/filedownloader/download/f;->k:J

    invoke-interface {v12, v4, v5}, Le/e/a/g0/a;->c(J)V

    :cond_6
    sget-boolean v0, Le/e/a/h0/d;->a:Z

    if-eqz v0, :cond_7

    const-string v0, "start fetch(%d): range [%d, %d), seek to[%d]"

    new-array v4, v14, [Ljava/lang/Object;

    iget v5, v1, Lcom/liulishuo/filedownloader/download/f;->c:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    iget-wide v13, v1, Lcom/liulishuo/filedownloader/download/f;->g:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v4, v9

    iget-wide v13, v1, Lcom/liulishuo/filedownloader/download/f;->h:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v4, v8

    iget-wide v13, v1, Lcom/liulishuo/filedownloader/download/f;->k:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v4, v15

    invoke-static {v1, v0, v4}, Le/e/a/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    iget-object v0, v1, Lcom/liulishuo/filedownloader/download/f;->e:Le/e/a/d0/b;

    invoke-interface {v0}, Le/e/a/d0/b;->a()Ljava/io/InputStream;

    move-result-object v11

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iget-boolean v4, v1, Lcom/liulishuo/filedownloader/download/f;->m:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v4, :cond_c

    if-eqz v11, :cond_8

    :try_start_2
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_8
    :goto_2
    if-eqz v12, :cond_a

    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/liulishuo/filedownloader/download/f;->d()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v2, v0

    if-eqz v12, :cond_9

    :try_start_4
    invoke-interface {v12}, Le/e/a/g0/a;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v3, v0

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_9
    :goto_3
    throw v2

    :cond_a
    :goto_4
    if-eqz v12, :cond_b

    :try_start_5
    invoke-interface {v12}, Le/e/a/g0/a;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_b
    :goto_5
    return-void

    :cond_c
    :goto_6
    :try_start_6
    invoke-virtual {v11, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    const/4 v13, -0x1

    if-ne v4, v13, :cond_13

    if-eqz v11, :cond_d

    :try_start_7
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_7

    :catch_3
    move-exception v0

    move-object v4, v0

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :cond_d
    :goto_7
    if-eqz v12, :cond_f

    :try_start_8
    invoke-direct/range {p0 .. p0}, Lcom/liulishuo/filedownloader/download/f;->d()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object v2, v0

    if-eqz v12, :cond_e

    :try_start_9
    invoke-interface {v12}, Le/e/a/g0/a;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_8

    :catch_4
    move-exception v0

    move-object v3, v0

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_e
    :goto_8
    throw v2

    :cond_f
    :goto_9
    if-eqz v12, :cond_10

    :try_start_a
    invoke-interface {v12}, Le/e/a/g0/a;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_a

    :catch_5
    move-exception v0

    move-object v4, v0

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :cond_10
    :goto_a
    iget-wide v11, v1, Lcom/liulishuo/filedownloader/download/f;->k:J

    sub-long/2addr v11, v6

    const-wide/16 v13, -0x1

    cmp-long v0, v2, v13

    if-eqz v0, :cond_12

    cmp-long v0, v2, v11

    if-nez v0, :cond_11

    goto :goto_b

    :cond_11
    new-instance v0, Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException;

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v4, v10

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v9

    iget-wide v2, v1, Lcom/liulishuo/filedownloader/download/f;->g:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v8

    iget-wide v2, v1, Lcom/liulishuo/filedownloader/download/f;->h:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v15

    iget-wide v2, v1, Lcom/liulishuo/filedownloader/download/f;->k:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v16, 0x4

    aput-object v2, v4, v16

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v5, 0x5

    aput-object v2, v4, v5

    const-string v2, "fetched length[%d] != content length[%d], range[%d, %d) offset[%d] fetch begin offset[%d]"

    invoke-static {v2, v4}, Le/e/a/h0/f;->o(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    :goto_b
    iget-object v3, v1, Lcom/liulishuo/filedownloader/download/f;->a:Lcom/liulishuo/filedownloader/download/g;

    iget-object v4, v1, Lcom/liulishuo/filedownloader/download/f;->d:Lcom/liulishuo/filedownloader/download/d;

    iget-wide v5, v1, Lcom/liulishuo/filedownloader/download/f;->g:J

    iget-wide v7, v1, Lcom/liulishuo/filedownloader/download/f;->h:J

    invoke-interface/range {v3 .. v8}, Lcom/liulishuo/filedownloader/download/g;->c(Lcom/liulishuo/filedownloader/download/d;JJ)V

    return-void

    :cond_13
    const/4 v5, 0x5

    const-wide/16 v13, -0x1

    const/16 v16, 0x4

    :try_start_b
    invoke-interface {v12, v0, v10, v4}, Le/e/a/g0/a;->write([BII)V

    move-wide/from16 v17, v6

    iget-wide v5, v1, Lcom/liulishuo/filedownloader/download/f;->k:J

    int-to-long v13, v4

    add-long/2addr v5, v13

    iput-wide v5, v1, Lcom/liulishuo/filedownloader/download/f;->k:J

    iget-object v4, v1, Lcom/liulishuo/filedownloader/download/f;->a:Lcom/liulishuo/filedownloader/download/g;

    invoke-interface {v4, v13, v14}, Lcom/liulishuo/filedownloader/download/g;->a(J)V

    invoke-direct/range {p0 .. p0}, Lcom/liulishuo/filedownloader/download/f;->a()V

    iget-boolean v4, v1, Lcom/liulishuo/filedownloader/download/f;->m:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    if-eqz v4, :cond_18

    if-eqz v11, :cond_14

    :try_start_c
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    goto :goto_c

    :catch_6
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_14
    :goto_c
    if-eqz v12, :cond_16

    :try_start_d
    invoke-direct/range {p0 .. p0}, Lcom/liulishuo/filedownloader/download/f;->d()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_e

    :catchall_2
    move-exception v0

    move-object v2, v0

    if-eqz v12, :cond_15

    :try_start_e
    invoke-interface {v12}, Le/e/a/g0/a;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    goto :goto_d

    :catch_7
    move-exception v0

    move-object v3, v0

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_15
    :goto_d
    throw v2

    :cond_16
    :goto_e
    if-eqz v12, :cond_17

    :try_start_f
    invoke-interface {v12}, Le/e/a/g0/a;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8

    goto :goto_f

    :catch_8
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_17
    :goto_f
    return-void

    :cond_18
    :try_start_10
    iget-boolean v4, v1, Lcom/liulishuo/filedownloader/download/f;->f:Z

    if-eqz v4, :cond_1a

    invoke-static {}, Le/e/a/h0/f;->M()Z

    move-result v4

    if-nez v4, :cond_19

    goto :goto_10

    :cond_19
    new-instance v0, Lcom/liulishuo/filedownloader/exception/FileDownloadNetworkPolicyException;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/exception/FileDownloadNetworkPolicyException;-><init>()V

    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :cond_1a
    :goto_10
    move-wide/from16 v6, v17

    goto/16 :goto_6

    :catchall_3
    move-exception v0

    move-object v2, v0

    goto :goto_11

    :catchall_4
    move-exception v0

    move-object v2, v0

    move-object v12, v11

    :goto_11
    if-eqz v11, :cond_1b

    :try_start_11
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_9

    goto :goto_12

    :catch_9
    move-exception v0

    move-object v3, v0

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_1b
    :goto_12
    if-eqz v12, :cond_1d

    :try_start_12
    invoke-direct/range {p0 .. p0}, Lcom/liulishuo/filedownloader/download/f;->d()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    goto :goto_14

    :catchall_5
    move-exception v0

    move-object v2, v0

    if-eqz v12, :cond_1c

    :try_start_13
    invoke-interface {v12}, Le/e/a/g0/a;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_a

    goto :goto_13

    :catch_a
    move-exception v0

    move-object v3, v0

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_1c
    :goto_13
    throw v2

    :cond_1d
    :goto_14
    if-eqz v12, :cond_1e

    :try_start_14
    invoke-interface {v12}, Le/e/a/g0/a;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_b

    goto :goto_15

    :catch_b
    move-exception v0

    move-object v3, v0

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_1e
    :goto_15
    throw v2

    :cond_1f
    new-instance v0, Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException;

    new-array v2, v8, [Ljava/lang/Object;

    iget v3, v1, Lcom/liulishuo/filedownloader/download/f;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v10

    iget v3, v1, Lcom/liulishuo/filedownloader/download/f;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    const-string v3, "there isn\'t any content need to download on %d-%d with the content-length is 0"

    invoke-static {v3, v2}, Le/e/a/h0/f;->o(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException;-><init>(Ljava/lang/String;)V

    goto :goto_17

    :goto_16
    throw v0

    :goto_17
    goto :goto_16
.end method
