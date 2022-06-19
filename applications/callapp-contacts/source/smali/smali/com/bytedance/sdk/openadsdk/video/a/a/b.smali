.class public Lcom/bytedance/sdk/openadsdk/video/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/video/a/a/a;


# instance fields
.field public a:Ljava/io/File;

.field private volatile b:J

.field private final c:Ljava/lang/Object;

.field private d:J

.field private volatile e:Z

.field private volatile f:Z

.field private g:Ljava/io/RandomAccessFile;

.field private final h:Lcom/bytedance/sdk/openadsdk/video/b/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/video/b/a;)V
    .locals 4

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, -0x80000000

    .line 32
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->b:J

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->c:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    .line 38
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->d:J

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->e:Z

    .line 44
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->f:Z

    const/4 v1, 0x0

    .line 46
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->g:Ljava/io/RandomAccessFile;

    .line 54
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->h:Lcom/bytedance/sdk/openadsdk/video/b/a;

    .line 56
    :try_start_0
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/video/b/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/video/d/c;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->a:Ljava/io/File;

    .line 57
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/video/d/c;->a(Ljava/io/File;)Z

    move-result p1

    .line 58
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->a:Ljava/io/File;

    if-eqz p1, :cond_0

    const-string v3, "r"

    goto :goto_0

    :cond_0
    const-string v3, "rw"

    :goto_0
    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->g:Ljava/io/RandomAccessFile;

    if-nez p1, :cond_1

    .line 62
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const-string v1, "Error using file "

    aput-object v1, p1, v0

    const/4 v0, 0x1

    .line 65
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/video/b/a;->a()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v0

    const/4 p2, 0x2

    const-string v0, " as disc cache"

    aput-object v0, p1, p2

    const-string p2, "VideoCacheImpl"

    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/video/d/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/video/a/a/b;)J
    .locals 2

    .line 26
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->d:J

    return-wide v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/video/a/a/b;J)J
    .locals 0

    .line 26
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->d:J

    return-wide p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/video/a/a/b;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/video/a/a/b;J)J
    .locals 0

    .line 26
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->b:J

    return-wide p1
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/video/a/a/b;)Lcom/bytedance/sdk/openadsdk/video/b/a;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->h:Lcom/bytedance/sdk/openadsdk/video/b/a;

    return-object p0
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/video/a/a/b;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->f:Z

    return p0
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/video/a/a/b;)J
    .locals 2

    .line 26
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->b:J

    return-wide v0
.end method

.method private d()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 202
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->a:Ljava/io/File;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/video/d/c;->a(Ljava/io/File;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    const-string v1, "VideoCacheImpl"

    new-array v3, v3, [Ljava/lang/Object;

    const-string v6, "complete: isCompleted "

    aput-object v6, v3, v5

    .line 203
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->h:Lcom/bytedance/sdk/openadsdk/video/b/a;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/video/b/a;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->h:Lcom/bytedance/sdk/openadsdk/video/b/a;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/video/b/a;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/video/d/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    return-void

    .line 207
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->a:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x9

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 208
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->a:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 209
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->a:Ljava/io/File;

    invoke-virtual {v1, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 213
    iput-object v6, p0, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->a:Ljava/io/File;

    .line 214
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->g:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_1

    .line 215
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 217
    :cond_1
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->a:Ljava/io/File;

    const-string v7, "rw"

    invoke-direct {v1, v6, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->g:Ljava/io/RandomAccessFile;

    const-string v1, "VideoCacheImpl"

    new-array v3, v3, [Ljava/lang/Object;

    const-string v6, "complete: rename "

    aput-object v6, v3, v5

    .line 218
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->h:Lcom/bytedance/sdk/openadsdk/video/b/a;

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/video/b/a;->b()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->h:Lcom/bytedance/sdk/openadsdk/video/b/a;

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/video/b/a;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v2

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/video/d/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 211
    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error renaming file "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->a:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " for completion!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    .line 220
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v2, "VideoCacheImpl"

    new-array v3, v4, [Ljava/lang/Object;

    .line 221
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/video/d/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 224
    :goto_0
    :try_start_3
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    .line 223
    throw v1

    :catchall_2
    move-exception v1

    .line 224
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/video/a/a/b;)Ljava/lang/Object;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->c:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic f(Lcom/bytedance/sdk/openadsdk/video/a/a/b;)Ljava/io/RandomAccessFile;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->g:Ljava/io/RandomAccessFile;

    return-object p0
.end method

.method static synthetic g(Lcom/bytedance/sdk/openadsdk/video/a/a/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->d()V

    return-void
.end method


# virtual methods
.method public a(J[BII)I
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x4

    const/4 v8, 0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    .line 148
    :try_start_0
    iget-wide v11, v1, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->b:J

    cmp-long v0, v2, v11

    if-nez v0, :cond_0

    return v9

    :cond_0
    const/4 v0, 0x0

    const/4 v11, 0x0

    .line 152
    :goto_0
    iget-boolean v12, v1, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->e:Z

    if-nez v12, :cond_4

    .line 153
    iget-object v12, v1, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->c:Ljava/lang/Object;

    monitor-enter v12
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 154
    :try_start_1
    iget-object v13, v1, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->a:Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v13

    cmp-long v15, v2, v13

    if-gez v15, :cond_1

    const-string v11, "VideoCacheImpl"

    new-array v13, v8, [Ljava/lang/Object;

    .line 155
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "read:  read "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, " success"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v10

    invoke-static {v11, v13}, Lcom/bytedance/sdk/openadsdk/video/d/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    iget-object v11, v1, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->g:Ljava/io/RandomAccessFile;

    invoke-virtual {v11, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 157
    iget-object v11, v1, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->g:Ljava/io/RandomAccessFile;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v13, p4

    move/from16 v14, p5

    :try_start_2
    invoke-virtual {v11, v4, v13, v14}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v11

    goto :goto_1

    :cond_1
    move/from16 v13, p4

    move/from16 v14, p5

    const-string v15, "VideoCacheImpl"

    new-array v9, v7, [Ljava/lang/Object;

    const-string v16, "read: wait at "

    aput-object v16, v9, v10

    .line 159
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v9, v8

    const-string v16, "  file size = "

    aput-object v16, v9, v6

    iget-object v6, v1, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->a:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v9, v5

    invoke-static {v15, v9}, Lcom/bytedance/sdk/openadsdk/video/d/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x21

    .line 161
    iget-object v6, v1, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->c:Ljava/lang/Object;

    const-wide/16 v8, 0x21

    invoke-virtual {v6, v8, v9}, Ljava/lang/Object;->wait(J)V

    .line 163
    :goto_1
    monitor-exit v12

    if-lez v11, :cond_2

    return v11

    :cond_2
    const/16 v6, 0x4e20

    if-le v0, v6, :cond_3

    const/4 v6, -0x1

    return v6

    :cond_3
    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v9, -0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    move/from16 v13, p4

    move/from16 v14, p5

    :goto_2
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catch_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    .line 175
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_4
    const/4 v2, -0x1

    return v2

    :catch_2
    move-exception v0

    move/from16 v13, p4

    move/from16 v14, p5

    :goto_3
    const-string v2, "Error reading %d bytes with offset %d from file[%d bytes] to buffer[%d bytes]"

    .line 173
    new-instance v3, Ljava/io/IOException;

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    iget-object v7, v1, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->a:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v6, v8

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v5

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 177
    :goto_4
    throw v0
.end method

.method public a()V
    .locals 1

    .line 185
    :try_start_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->e:Z

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->g:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 189
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 194
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->e:Z

    return-void

    :catchall_1
    move-exception v0

    .line 192
    throw v0
.end method

.method public b()J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->a:Ljava/io/File;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/video/d/c;->a(Ljava/io/File;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->b:J

    goto :goto_0

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->c:Ljava/lang/Object;

    monitor-enter v0

    const/4 v3, 0x0

    .line 235
    :cond_1
    :try_start_0
    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/32 v6, -0x80000000

    cmp-long v8, v4, v6

    if-nez v8, :cond_2

    :try_start_1
    const-string v4, "VideoCacheImpl"

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "totalLength: wait"

    aput-object v6, v5, v2

    .line 237
    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/video/d/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0xf

    .line 239
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->c:Ljava/lang/Object;

    const-wide/16 v5, 0x5

    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v4, 0x4e20

    if-le v3, v4, :cond_1

    const-wide/16 v1, -0x1

    .line 245
    :try_start_2
    monitor-exit v0

    return-wide v1

    :catch_0
    move-exception v1

    .line 241
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 242
    new-instance v1, Ljava/io/IOException;

    const-string v2, "total length InterruptException"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 248
    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    const-string v0, "VideoCacheImpl"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "totalLength= "

    aput-object v4, v3, v2

    .line 250
    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/video/d/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->b:J

    return-wide v0

    :catchall_0
    move-exception v1

    .line 248
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public c()V
    .locals 2

    .line 71
    new-instance v0, Lcom/bytedance/sdk/openadsdk/video/a/a/b$1;

    const-string v1, "executeNetRequest"

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/video/a/a/b$1;-><init>(Lcom/bytedance/sdk/openadsdk/video/a/a/b;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/l/e;->a(Lcom/bytedance/sdk/openadsdk/l/g;)V

    return-void
.end method
