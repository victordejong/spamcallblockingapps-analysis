.class public Lcom/liulishuo/filedownloader/download/f;
.super Ljava/lang/Object;
.source "FetchDataTask.java"


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

.field private final e:Lc/d/a/e0/b;

.field private final f:Z

.field private final g:J

.field private final h:J

.field private final i:J

.field private final j:Ljava/lang/String;

.field k:J

.field private l:Lc/d/a/h0/a;

.field private volatile m:Z

.field private final n:Lc/d/a/f0/a;

.field private volatile o:J

.field private volatile p:J


# direct methods
.method private constructor <init>(Lc/d/a/e0/b;Lcom/liulishuo/filedownloader/download/b;Lcom/liulishuo/filedownloader/download/d;IIZLcom/liulishuo/filedownloader/download/g;Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/liulishuo/filedownloader/download/f;->o:J

    .line 4
    iput-wide v0, p0, Lcom/liulishuo/filedownloader/download/f;->p:J

    .line 5
    iput-object p7, p0, Lcom/liulishuo/filedownloader/download/f;->a:Lcom/liulishuo/filedownloader/download/g;

    .line 6
    iput-object p8, p0, Lcom/liulishuo/filedownloader/download/f;->j:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/f;->e:Lc/d/a/e0/b;

    .line 8
    iput-boolean p6, p0, Lcom/liulishuo/filedownloader/download/f;->f:Z

    .line 9
    iput-object p3, p0, Lcom/liulishuo/filedownloader/download/f;->d:Lcom/liulishuo/filedownloader/download/d;

    .line 10
    iput p5, p0, Lcom/liulishuo/filedownloader/download/f;->c:I

    .line 11
    iput p4, p0, Lcom/liulishuo/filedownloader/download/f;->b:I

    .line 12
    invoke-static {}, Lcom/liulishuo/filedownloader/download/c;->j()Lcom/liulishuo/filedownloader/download/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/download/c;->f()Lc/d/a/f0/a;

    move-result-object p1

    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/f;->n:Lc/d/a/f0/a;

    .line 13
    iget-wide p3, p2, Lcom/liulishuo/filedownloader/download/b;->a:J

    iput-wide p3, p0, Lcom/liulishuo/filedownloader/download/f;->g:J

    .line 14
    iget-wide p3, p2, Lcom/liulishuo/filedownloader/download/b;->c:J

    iput-wide p3, p0, Lcom/liulishuo/filedownloader/download/f;->h:J

    .line 15
    iget-wide p3, p2, Lcom/liulishuo/filedownloader/download/b;->b:J

    iput-wide p3, p0, Lcom/liulishuo/filedownloader/download/f;->k:J

    .line 16
    iget-wide p1, p2, Lcom/liulishuo/filedownloader/download/b;->d:J

    iput-wide p1, p0, Lcom/liulishuo/filedownloader/download/f;->i:J

    return-void
.end method

.method synthetic constructor <init>(Lc/d/a/e0/b;Lcom/liulishuo/filedownloader/download/b;Lcom/liulishuo/filedownloader/download/d;IIZLcom/liulishuo/filedownloader/download/g;Ljava/lang/String;Lcom/liulishuo/filedownloader/download/f$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Lcom/liulishuo/filedownloader/download/f;-><init>(Lc/d/a/e0/b;Lcom/liulishuo/filedownloader/download/b;Lcom/liulishuo/filedownloader/download/d;IIZLcom/liulishuo/filedownloader/download/g;Ljava/lang/String;)V

    return-void
.end method

.method private a()V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lcom/liulishuo/filedownloader/download/f;->k:J

    iget-wide v4, p0, Lcom/liulishuo/filedownloader/download/f;->o:J

    sub-long/2addr v2, v4

    .line 3
    iget-wide v4, p0, Lcom/liulishuo/filedownloader/download/f;->p:J

    sub-long v4, v0, v4

    .line 4
    invoke-static {v2, v3, v4, v5}, Lc/d/a/i0/f;->L(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/f;->d()V

    .line 6
    iget-wide v2, p0, Lcom/liulishuo/filedownloader/download/f;->k:J

    iput-wide v2, p0, Lcom/liulishuo/filedownloader/download/f;->o:J

    .line 7
    iput-wide v0, p0, Lcom/liulishuo/filedownloader/download/f;->p:J

    :cond_0
    return-void
.end method

.method private d()V
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2
    :try_start_0
    iget-object v4, p0, Lcom/liulishuo/filedownloader/download/f;->l:Lc/d/a/h0/a;

    invoke-interface {v4}, Lc/d/a/h0/a;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    .line 3
    sget-boolean v5, Lc/d/a/i0/d;->a:Z

    if-eqz v5, :cond_0

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v4, v5, v3

    const-string v4, "Because of the system cannot guarantee that all the buffers have been synchronized with physical media, or write to filefailed, we just not flushAndSync process to database too %s"

    .line 4
    invoke-static {p0, v4, v5}, Lc/d/a/i0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_3

    .line 5
    iget v4, p0, Lcom/liulishuo/filedownloader/download/f;->c:I

    if-ltz v4, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_2

    .line 6
    iget-object v5, p0, Lcom/liulishuo/filedownloader/download/f;->n:Lc/d/a/f0/a;

    iget v6, p0, Lcom/liulishuo/filedownloader/download/f;->b:I

    iget-wide v7, p0, Lcom/liulishuo/filedownloader/download/f;->k:J

    invoke-interface {v5, v6, v4, v7, v8}, Lc/d/a/f0/a;->f(IIJ)V

    goto :goto_2

    .line 7
    :cond_2
    iget-object v4, p0, Lcom/liulishuo/filedownloader/download/f;->a:Lcom/liulishuo/filedownloader/download/g;

    invoke-interface {v4}, Lcom/liulishuo/filedownloader/download/g;->f()V

    .line 8
    :goto_2
    sget-boolean v4, Lc/d/a/i0/d;->a:Z

    if-eqz v4, :cond_3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    .line 9
    iget v5, p0, Lcom/liulishuo/filedownloader/download/f;->b:I

    .line 10
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

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v2

    const-string v0, "require flushAndSync id[%d] index[%d] offset[%d], consume[%d]"

    .line 12
    invoke-static {p0, v0, v4}, Lc/d/a/i0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/download/f;->m:Z

    return-void
.end method

.method public c()V
    .locals 19

    move-object/from16 v1, p0

    .line 1
    iget-boolean v0, v1, Lcom/liulishuo/filedownloader/download/f;->m:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, v1, Lcom/liulishuo/filedownloader/download/f;->c:I

    iget-object v2, v1, Lcom/liulishuo/filedownloader/download/f;->e:Lc/d/a/e0/b;

    invoke-static {v0, v2}, Lc/d/a/i0/f;->h(ILc/d/a/e0/b;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 3
    iget-object v0, v1, Lcom/liulishuo/filedownloader/download/f;->e:Lc/d/a/e0/b;

    invoke-static {v0}, Lc/d/a/i0/f;->i(Lc/d/a/e0/b;)J

    move-result-wide v2

    :cond_1
    const-wide/16 v6, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    cmp-long v0, v2, v6

    if-eqz v0, :cond_17

    .line 4
    iget-wide v11, v1, Lcom/liulishuo/filedownloader/download/f;->i:J

    const/4 v13, 0x5

    const/4 v14, 0x4

    const/4 v15, 0x3

    cmp-long v0, v11, v6

    if-lez v0, :cond_3

    cmp-long v0, v2, v11

    if-eqz v0, :cond_3

    .line 5
    iget-wide v6, v1, Lcom/liulishuo/filedownloader/download/f;->h:J

    cmp-long v0, v6, v4

    if-nez v0, :cond_2

    new-array v0, v9, [Ljava/lang/Object;

    .line 6
    iget-wide v4, v1, Lcom/liulishuo/filedownloader/download/f;->k:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v0, v10

    const-string v4, "range[%d-)"

    invoke-static {v4, v0}, Lc/d/a/i0/f;->o(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-array v0, v8, [Ljava/lang/Object;

    .line 7
    iget-wide v4, v1, Lcom/liulishuo/filedownloader/download/f;->k:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v0, v10

    iget-wide v4, v1, Lcom/liulishuo/filedownloader/download/f;->h:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v0, v9

    const-string v4, "range[%d-%d)"

    invoke-static {v4, v0}, Lc/d/a/i0/f;->o(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 8
    :goto_0
    new-instance v4, Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException;

    new-array v5, v13, [Ljava/lang/Object;

    aput-object v0, v5, v10

    iget-wide v6, v1, Lcom/liulishuo/filedownloader/download/f;->i:J

    .line 9
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

    .line 10
    invoke-static {v0, v5}, Lc/d/a/i0/f;->o(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 11
    :cond_3
    iget-wide v6, v1, Lcom/liulishuo/filedownloader/download/f;->k:J

    const/4 v11, 0x0

    .line 12
    :try_start_0
    invoke-static {}, Lcom/liulishuo/filedownloader/download/c;->j()Lcom/liulishuo/filedownloader/download/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/c;->m()Z

    move-result v0

    .line 13
    iget-object v12, v1, Lcom/liulishuo/filedownloader/download/f;->d:Lcom/liulishuo/filedownloader/download/d;

    if-eqz v12, :cond_5

    if-eqz v0, :cond_4

    goto :goto_1

    .line 14
    :cond_4
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v2, "can\'t using multi-download when the output stream can\'t support seek"

    invoke-direct {v0, v2}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_5
    :goto_1
    iget-object v12, v1, Lcom/liulishuo/filedownloader/download/f;->j:Ljava/lang/String;

    invoke-static {v12}, Lc/d/a/i0/f;->c(Ljava/lang/String;)Lc/d/a/h0/a;

    move-result-object v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    iput-object v12, v1, Lcom/liulishuo/filedownloader/download/f;->l:Lc/d/a/h0/a;

    if-eqz v0, :cond_6

    .line 16
    iget-wide v4, v1, Lcom/liulishuo/filedownloader/download/f;->k:J

    invoke-interface {v12, v4, v5}, Lc/d/a/h0/a;->c(J)V

    .line 17
    :cond_6
    sget-boolean v0, Lc/d/a/i0/d;->a:Z

    if-eqz v0, :cond_7

    const-string v0, "start fetch(%d): range [%d, %d), seek to[%d]"

    new-array v4, v14, [Ljava/lang/Object;

    .line 18
    iget v5, v1, Lcom/liulishuo/filedownloader/download/f;->c:I

    .line 19
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

    .line 20
    invoke-static {v1, v0, v4}, Lc/d/a/i0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    :cond_7
    iget-object v0, v1, Lcom/liulishuo/filedownloader/download/f;->e:Lc/d/a/e0/b;

    invoke-interface {v0}, Lc/d/a/e0/b;->a()Ljava/io/InputStream;

    move-result-object v11

    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 22
    iget-boolean v4, v1, Lcom/liulishuo/filedownloader/download/f;->m:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v4, :cond_b

    if-eqz v11, :cond_8

    .line 23
    :try_start_2
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 24
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_8
    :goto_2
    if-eqz v12, :cond_9

    .line 25
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/liulishuo/filedownloader/download/f;->d()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 26
    :try_start_4
    invoke-interface {v12}, Lc/d/a/h0/a;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v3, v0

    .line 27
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 28
    :goto_3
    throw v2

    :cond_9
    :goto_4
    if-eqz v12, :cond_a

    .line 29
    :try_start_5
    invoke-interface {v12}, Lc/d/a/h0/a;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v2, v0

    .line 30
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_a
    :goto_5
    return-void

    .line 31
    :cond_b
    :goto_6
    :try_start_6
    invoke-virtual {v11, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    const/4 v13, -0x1

    if-ne v4, v13, :cond_10

    .line 32
    :try_start_7
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_7

    :catch_3
    move-exception v0

    move-object v4, v0

    .line 33
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :goto_7
    if-eqz v12, :cond_c

    .line 34
    :try_start_8
    invoke-direct/range {p0 .. p0}, Lcom/liulishuo/filedownloader/download/f;->d()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object v2, v0

    .line 35
    :try_start_9
    invoke-interface {v12}, Lc/d/a/h0/a;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_8

    :catch_4
    move-exception v0

    move-object v3, v0

    .line 36
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 37
    :goto_8
    throw v2

    :cond_c
    :goto_9
    if-eqz v12, :cond_d

    .line 38
    :try_start_a
    invoke-interface {v12}, Lc/d/a/h0/a;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_a

    :catch_5
    move-exception v0

    move-object v4, v0

    .line 39
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 40
    :cond_d
    :goto_a
    iget-wide v11, v1, Lcom/liulishuo/filedownloader/download/f;->k:J

    sub-long/2addr v11, v6

    const-wide/16 v13, -0x1

    cmp-long v0, v2, v13

    if-eqz v0, :cond_f

    cmp-long v0, v2, v11

    if-nez v0, :cond_e

    goto :goto_b

    .line 41
    :cond_e
    new-instance v0, Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException;

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    .line 42
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v4, v10

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v9

    iget-wide v2, v1, Lcom/liulishuo/filedownloader/download/f;->g:J

    .line 43
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

    .line 44
    invoke-static {v2, v4}, Lc/d/a/i0/f;->o(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_f
    :goto_b
    iget-object v3, v1, Lcom/liulishuo/filedownloader/download/f;->a:Lcom/liulishuo/filedownloader/download/g;

    iget-object v4, v1, Lcom/liulishuo/filedownloader/download/f;->d:Lcom/liulishuo/filedownloader/download/d;

    iget-wide v5, v1, Lcom/liulishuo/filedownloader/download/f;->g:J

    iget-wide v7, v1, Lcom/liulishuo/filedownloader/download/f;->h:J

    invoke-interface/range {v3 .. v8}, Lcom/liulishuo/filedownloader/download/g;->a(Lcom/liulishuo/filedownloader/download/d;JJ)V

    return-void

    :cond_10
    const/4 v5, 0x5

    const-wide/16 v13, -0x1

    const/16 v16, 0x4

    .line 46
    :try_start_b
    invoke-interface {v12, v0, v10, v4}, Lc/d/a/h0/a;->write([BII)V

    move-wide/from16 v17, v6

    .line 47
    iget-wide v5, v1, Lcom/liulishuo/filedownloader/download/f;->k:J

    int-to-long v13, v4

    add-long/2addr v5, v13

    iput-wide v5, v1, Lcom/liulishuo/filedownloader/download/f;->k:J

    .line 48
    iget-object v4, v1, Lcom/liulishuo/filedownloader/download/f;->a:Lcom/liulishuo/filedownloader/download/g;

    invoke-interface {v4, v13, v14}, Lcom/liulishuo/filedownloader/download/g;->d(J)V

    .line 49
    invoke-direct/range {p0 .. p0}, Lcom/liulishuo/filedownloader/download/f;->a()V

    .line 50
    iget-boolean v4, v1, Lcom/liulishuo/filedownloader/download/f;->m:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    if-eqz v4, :cond_11

    .line 51
    :try_start_c
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    goto :goto_c

    :catch_6
    move-exception v0

    move-object v2, v0

    .line 52
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 53
    :goto_c
    :try_start_d
    invoke-direct/range {p0 .. p0}, Lcom/liulishuo/filedownloader/download/f;->d()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 54
    :try_start_e
    invoke-interface {v12}, Lc/d/a/h0/a;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    goto :goto_d

    :catch_7
    move-exception v0

    move-object v2, v0

    .line 55
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :goto_d
    return-void

    :catchall_2
    move-exception v0

    move-object v2, v0

    .line 56
    :try_start_f
    invoke-interface {v12}, Lc/d/a/h0/a;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8

    goto :goto_e

    :catch_8
    move-exception v0

    move-object v3, v0

    .line 57
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 58
    :goto_e
    throw v2

    .line 59
    :cond_11
    :try_start_10
    iget-boolean v4, v1, Lcom/liulishuo/filedownloader/download/f;->f:Z

    if-eqz v4, :cond_13

    invoke-static {}, Lc/d/a/i0/f;->M()Z

    move-result v4

    if-nez v4, :cond_12

    goto :goto_f

    .line 60
    :cond_12
    new-instance v0, Lcom/liulishuo/filedownloader/exception/FileDownloadNetworkPolicyException;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/exception/FileDownloadNetworkPolicyException;-><init>()V

    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :cond_13
    :goto_f
    move-wide/from16 v6, v17

    goto/16 :goto_6

    :catchall_3
    move-exception v0

    move-object v2, v0

    goto :goto_10

    :catchall_4
    move-exception v0

    move-object v2, v0

    move-object v12, v11

    :goto_10
    if-eqz v11, :cond_14

    .line 61
    :try_start_11
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_9

    goto :goto_11

    :catch_9
    move-exception v0

    move-object v3, v0

    .line 62
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_14
    :goto_11
    if-eqz v12, :cond_15

    .line 63
    :try_start_12
    invoke-direct/range {p0 .. p0}, Lcom/liulishuo/filedownloader/download/f;->d()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    goto :goto_13

    :catchall_5
    move-exception v0

    move-object v2, v0

    .line 64
    :try_start_13
    invoke-interface {v12}, Lc/d/a/h0/a;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_a

    goto :goto_12

    :catch_a
    move-exception v0

    move-object v3, v0

    .line 65
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 66
    :goto_12
    throw v2

    :cond_15
    :goto_13
    if-eqz v12, :cond_16

    .line 67
    :try_start_14
    invoke-interface {v12}, Lc/d/a/h0/a;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_b

    goto :goto_14

    :catch_b
    move-exception v0

    move-object v3, v0

    .line 68
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 69
    :cond_16
    :goto_14
    throw v2

    .line 70
    :cond_17
    new-instance v0, Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException;

    new-array v2, v8, [Ljava/lang/Object;

    iget v3, v1, Lcom/liulishuo/filedownloader/download/f;->b:I

    .line 71
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v10

    iget v3, v1, Lcom/liulishuo/filedownloader/download/f;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    const-string v3, "there isn\'t any content need to download on %d-%d with the content-length is 0"

    .line 72
    invoke-static {v3, v2}, Lc/d/a/i0/f;->o(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
