.class public Lcom/liulishuo/filedownloader/download/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/download/d$b;
    }
.end annotation


# instance fields
.field private final b:Lcom/liulishuo/filedownloader/download/a;

.field private final c:Lcom/liulishuo/filedownloader/download/g;

.field private final d:Ljava/lang/String;

.field private final e:Z

.field private f:Lcom/liulishuo/filedownloader/download/f;

.field private volatile g:Z

.field private final h:I

.field final i:I


# direct methods
.method private constructor <init>(IILcom/liulishuo/filedownloader/download/a;Lcom/liulishuo/filedownloader/download/g;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/liulishuo/filedownloader/download/d;->h:I

    iput p2, p0, Lcom/liulishuo/filedownloader/download/d;->i:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/liulishuo/filedownloader/download/d;->g:Z

    iput-object p4, p0, Lcom/liulishuo/filedownloader/download/d;->c:Lcom/liulishuo/filedownloader/download/g;

    iput-object p6, p0, Lcom/liulishuo/filedownloader/download/d;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/liulishuo/filedownloader/download/d;->b:Lcom/liulishuo/filedownloader/download/a;

    iput-boolean p5, p0, Lcom/liulishuo/filedownloader/download/d;->e:Z

    return-void
.end method

.method synthetic constructor <init>(IILcom/liulishuo/filedownloader/download/a;Lcom/liulishuo/filedownloader/download/g;ZLjava/lang/String;Lcom/liulishuo/filedownloader/download/d$a;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/liulishuo/filedownloader/download/d;-><init>(IILcom/liulishuo/filedownloader/download/a;Lcom/liulishuo/filedownloader/download/g;ZLjava/lang/String;)V

    return-void
.end method

.method private b()J
    .locals 4

    invoke-static {}, Lcom/liulishuo/filedownloader/download/c;->j()Lcom/liulishuo/filedownloader/download/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/c;->f()Le/e/a/e0/a;

    move-result-object v0

    iget v1, p0, Lcom/liulishuo/filedownloader/download/d;->i:I

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/liulishuo/filedownloader/download/d;->h:I

    invoke-interface {v0, v1}, Le/e/a/e0/a;->n(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liulishuo/filedownloader/model/a;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/a;->d()I

    move-result v2

    iget v3, p0, Lcom/liulishuo/filedownloader/download/d;->i:I

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/a;->a()J

    move-result-wide v0

    return-wide v0

    :cond_1
    iget v1, p0, Lcom/liulishuo/filedownloader/download/d;->h:I

    invoke-interface {v0, v1}, Le/e/a/e0/a;->o(I)Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g()J

    move-result-wide v0

    return-wide v0

    :cond_2
    const-wide/16 v0, 0x0

    return-wide v0
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/download/d;->c()V

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/download/d;->g:Z

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/d;->f:Lcom/liulishuo/filedownloader/download/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/f;->b()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 12

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/d;->b:Lcom/liulishuo/filedownloader/download/a;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/a;->f()Lcom/liulishuo/filedownloader/download/b;

    move-result-object v0

    iget-wide v0, v0, Lcom/liulishuo/filedownloader/download/b;->b:J

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    :try_start_0
    iget-boolean v2, p0, Lcom/liulishuo/filedownloader/download/d;->g:Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Le/e/a/d0/b;->f()V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/d;->b:Lcom/liulishuo/filedownloader/download/a;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/download/a;->c()Le/e/a/d0/b;

    move-result-object v1

    invoke-interface {v1}, Le/e/a/d0/b;->d()I

    move-result v2

    sget-boolean v4, Le/e/a/h0/d;->a:Z

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x4

    if-eqz v4, :cond_2

    const-string v4, "the connection[%d] for %d, is connected %s with code[%d]"

    new-array v8, v7, [Ljava/lang/Object;

    iget v9, p0, Lcom/liulishuo/filedownloader/download/d;->i:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v0

    iget v9, p0, Lcom/liulishuo/filedownloader/download/d;->h:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    iget-object v9, p0, Lcom/liulishuo/filedownloader/download/d;->b:Lcom/liulishuo/filedownloader/download/a;

    invoke-virtual {v9}, Lcom/liulishuo/filedownloader/download/a;->f()Lcom/liulishuo/filedownloader/download/b;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {p0, v4, v8}, Le/e/a/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    const/16 v4, 0xce

    if-eq v2, v4, :cond_4

    const/16 v4, 0xc8

    if-ne v2, v4, :cond_3

    goto :goto_1

    :cond_3
    new-instance v4, Ljava/net/SocketException;

    const-string v8, "Connection failed with request[%s] response[%s] http-state[%d] on task[%d-%d], which is changed after verify connection, so please try again."

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/liulishuo/filedownloader/download/d;->b:Lcom/liulishuo/filedownloader/download/a;

    invoke-virtual {v10}, Lcom/liulishuo/filedownloader/download/a;->g()Ljava/util/Map;

    move-result-object v10

    aput-object v10, v9, v0

    invoke-interface {v1}, Le/e/a/d0/b;->b()Ljava/util/Map;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v6

    iget v2, p0, Lcom/liulishuo/filedownloader/download/d;->h:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v5

    iget v2, p0, Lcom/liulishuo/filedownloader/download/d;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v7

    invoke-static {v8, v9}, Le/e/a/h0/f;->o(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :goto_1
    :try_start_2
    new-instance v2, Lcom/liulishuo/filedownloader/download/f$b;

    invoke-direct {v2}, Lcom/liulishuo/filedownloader/download/f$b;-><init>()V

    iget-boolean v4, p0, Lcom/liulishuo/filedownloader/download/d;->g:Z
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_6

    if-eqz v1, :cond_5

    invoke-interface {v1}, Le/e/a/d0/b;->f()V

    :cond_5
    return-void

    :cond_6
    :try_start_3
    iget v4, p0, Lcom/liulishuo/filedownloader/download/d;->h:I

    invoke-virtual {v2, v4}, Lcom/liulishuo/filedownloader/download/f$b;->f(I)Lcom/liulishuo/filedownloader/download/f$b;

    iget v4, p0, Lcom/liulishuo/filedownloader/download/d;->i:I

    invoke-virtual {v2, v4}, Lcom/liulishuo/filedownloader/download/f$b;->d(I)Lcom/liulishuo/filedownloader/download/f$b;

    iget-object v4, p0, Lcom/liulishuo/filedownloader/download/d;->c:Lcom/liulishuo/filedownloader/download/g;

    invoke-virtual {v2, v4}, Lcom/liulishuo/filedownloader/download/f$b;->b(Lcom/liulishuo/filedownloader/download/g;)Lcom/liulishuo/filedownloader/download/f$b;

    invoke-virtual {v2, p0}, Lcom/liulishuo/filedownloader/download/f$b;->g(Lcom/liulishuo/filedownloader/download/d;)Lcom/liulishuo/filedownloader/download/f$b;

    iget-boolean v4, p0, Lcom/liulishuo/filedownloader/download/d;->e:Z

    invoke-virtual {v2, v4}, Lcom/liulishuo/filedownloader/download/f$b;->i(Z)Lcom/liulishuo/filedownloader/download/f$b;

    invoke-virtual {v2, v1}, Lcom/liulishuo/filedownloader/download/f$b;->c(Le/e/a/d0/b;)Lcom/liulishuo/filedownloader/download/f$b;

    iget-object v4, p0, Lcom/liulishuo/filedownloader/download/d;->b:Lcom/liulishuo/filedownloader/download/a;

    invoke-virtual {v4}, Lcom/liulishuo/filedownloader/download/a;->f()Lcom/liulishuo/filedownloader/download/b;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/liulishuo/filedownloader/download/f$b;->e(Lcom/liulishuo/filedownloader/download/b;)Lcom/liulishuo/filedownloader/download/f$b;

    iget-object v4, p0, Lcom/liulishuo/filedownloader/download/d;->d:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/liulishuo/filedownloader/download/f$b;->h(Ljava/lang/String;)Lcom/liulishuo/filedownloader/download/f$b;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/download/f$b;->a()Lcom/liulishuo/filedownloader/download/f;

    move-result-object v2

    iput-object v2, p0, Lcom/liulishuo/filedownloader/download/d;->f:Lcom/liulishuo/filedownloader/download/f;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/download/f;->c()V

    iget-boolean v2, p0, Lcom/liulishuo/filedownloader/download/d;->g:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/d;->f:Lcom/liulishuo/filedownloader/download/f;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/download/f;->b()V
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_7
    if-eqz v1, :cond_c

    goto/16 :goto_6

    :catch_0
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_2

    :catch_2
    move-exception v2

    goto :goto_2

    :catch_3
    move-exception v2

    :goto_2
    const/4 v4, 0x1

    goto :goto_5

    :catch_4
    move-exception v2

    goto :goto_3

    :catch_5
    move-exception v2

    goto :goto_3

    :catch_6
    move-exception v2

    goto :goto_3

    :catch_7
    move-exception v2

    :goto_3
    const/4 v4, 0x0

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_7

    :catch_8
    move-exception v4

    goto :goto_4

    :catch_9
    move-exception v4

    goto :goto_4

    :catch_a
    move-exception v4

    goto :goto_4

    :catch_b
    move-exception v4

    :goto_4
    move-object v11, v4

    move v4, v2

    move-object v2, v11

    :goto_5
    :try_start_4
    iget-object v5, p0, Lcom/liulishuo/filedownloader/download/d;->c:Lcom/liulishuo/filedownloader/download/g;

    invoke-interface {v5, v2}, Lcom/liulishuo/filedownloader/download/g;->b(Ljava/lang/Exception;)Z

    move-result v5

    if-eqz v5, :cond_b

    if-eqz v4, :cond_8

    iget-object v5, p0, Lcom/liulishuo/filedownloader/download/d;->f:Lcom/liulishuo/filedownloader/download/f;

    if-nez v5, :cond_8

    const-string v4, "it is valid to retry and connection is valid but create fetch-data-task failed, so give up directly with %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v0

    invoke-static {p0, v4, v3}, Le/e/a/h0/d;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/d;->c:Lcom/liulishuo/filedownloader/download/g;

    invoke-interface {v0, v2}, Lcom/liulishuo/filedownloader/download/g;->d(Ljava/lang/Exception;)V

    if-eqz v1, :cond_c

    goto :goto_6

    :cond_8
    iget-object v3, p0, Lcom/liulishuo/filedownloader/download/d;->f:Lcom/liulishuo/filedownloader/download/f;

    if-eqz v3, :cond_9

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/d;->b()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-lez v3, :cond_9

    iget-object v3, p0, Lcom/liulishuo/filedownloader/download/d;->b:Lcom/liulishuo/filedownloader/download/a;

    invoke-virtual {v3, v5, v6}, Lcom/liulishuo/filedownloader/download/a;->i(J)V

    :cond_9
    iget-object v3, p0, Lcom/liulishuo/filedownloader/download/d;->c:Lcom/liulishuo/filedownloader/download/g;

    invoke-interface {v3, v2}, Lcom/liulishuo/filedownloader/download/g;->f(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_a

    invoke-interface {v1}, Le/e/a/d0/b;->f()V

    :cond_a
    move v2, v4

    goto/16 :goto_0

    :cond_b
    :try_start_5
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/d;->c:Lcom/liulishuo/filedownloader/download/g;

    invoke-interface {v0, v2}, Lcom/liulishuo/filedownloader/download/g;->d(Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_c

    :goto_6
    invoke-interface {v1}, Le/e/a/d0/b;->f()V

    :cond_c
    return-void

    :goto_7
    if-eqz v1, :cond_d

    invoke-interface {v1}, Le/e/a/d0/b;->f()V

    :cond_d
    goto :goto_9

    :goto_8
    throw v0

    :goto_9
    goto :goto_8
.end method
