.class Lcom/bytedance/sdk/openadsdk/video/a/a/b$1;
.super Lcom/bytedance/sdk/openadsdk/l/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/video/a/a/b;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/video/a/a/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/video/a/a/b;Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/video/a/a/b;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/l/g;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 27

    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 79
    :try_start_0
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/video/a/a/b;

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->a:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->a(Lcom/bytedance/sdk/openadsdk/video/a/a/b;J)J

    .line 80
    new-instance v0, Lcom/bytedance/sdk/a/b/v;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/b/v;-><init>()V

    const-string v3, "VideoCacheImpl"

    const/4 v4, 0x4

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "RANGE, bytes="

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 81
    iget-object v6, v1, Lcom/bytedance/sdk/openadsdk/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/video/a/a/b;

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->a(Lcom/bytedance/sdk/openadsdk/video/a/a/b;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v5, v8

    const-string v6, " file hash="

    const/4 v9, 0x2

    aput-object v6, v5, v9

    iget-object v6, v1, Lcom/bytedance/sdk/openadsdk/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/video/a/a/b;

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->b(Lcom/bytedance/sdk/openadsdk/video/a/a/b;)Lcom/bytedance/sdk/openadsdk/video/b/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/video/b/a;->b()Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x3

    aput-object v6, v5, v10

    invoke-static {v3, v5}, Lcom/bytedance/sdk/openadsdk/video/d/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    new-instance v3, Lcom/bytedance/sdk/a/b/y$a;

    invoke-direct {v3}, Lcom/bytedance/sdk/a/b/y$a;-><init>()V

    const-string v5, "RANGE"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v11, "bytes="

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v1, Lcom/bytedance/sdk/openadsdk/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/video/a/a/b;

    .line 83
    invoke-static {v11}, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->a(Lcom/bytedance/sdk/openadsdk/video/a/a/b;)J

    move-result-wide v11

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, "-"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/bytedance/sdk/a/b/y$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/a/b/y$a;

    move-result-object v3

    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/video/a/a/b;

    .line 84
    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->b(Lcom/bytedance/sdk/openadsdk/video/a/a/b;)Lcom/bytedance/sdk/openadsdk/video/b/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/video/b/a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/bytedance/sdk/a/b/y$a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/y$a;

    move-result-object v3

    .line 85
    invoke-virtual {v3}, Lcom/bytedance/sdk/a/b/y$a;->a()Lcom/bytedance/sdk/a/b/y$a;

    move-result-object v3

    .line 86
    invoke-virtual {v3}, Lcom/bytedance/sdk/a/b/y$a;->d()Lcom/bytedance/sdk/a/b/y;

    move-result-object v3

    .line 87
    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/a/b/v;->a(Lcom/bytedance/sdk/a/b/y;)Lcom/bytedance/sdk/a/b/e;

    move-result-object v0

    .line 88
    invoke-interface {v0}, Lcom/bytedance/sdk/a/b/e;->a()Lcom/bytedance/sdk/a/b/aa;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 89
    :try_start_1
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/video/a/a/b;

    invoke-virtual {v3}, Lcom/bytedance/sdk/a/b/aa;->d()Z

    move-result v5

    invoke-static {v0, v5}, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->a(Lcom/bytedance/sdk/openadsdk/video/a/a/b;Z)Z

    .line 90
    invoke-virtual {v3}, Lcom/bytedance/sdk/a/b/aa;->h()Lcom/bytedance/sdk/a/b/ab;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 91
    :try_start_2
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/video/a/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->c(Lcom/bytedance/sdk/openadsdk/video/a/a/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v5, :cond_0

    .line 92
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/video/a/a/b;

    invoke-virtual {v5}, Lcom/bytedance/sdk/a/b/ab;->b()J

    move-result-wide v11

    iget-object v6, v1, Lcom/bytedance/sdk/openadsdk/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/video/a/a/b;

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->a(Lcom/bytedance/sdk/openadsdk/video/a/a/b;)J

    move-result-wide v13

    add-long/2addr v11, v13

    invoke-static {v0, v11, v12}, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->b(Lcom/bytedance/sdk/openadsdk/video/a/a/b;J)J

    .line 93
    invoke-virtual {v5}, Lcom/bytedance/sdk/a/b/ab;->c()Ljava/io/InputStream;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    if-nez v2, :cond_5

    if-eqz v2, :cond_1

    .line 123
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz v5, :cond_2

    .line 126
    invoke-virtual {v5}, Lcom/bytedance/sdk/a/b/ab;->close()V

    :cond_2
    if-eqz v3, :cond_3

    .line 130
    invoke-virtual {v3}, Lcom/bytedance/sdk/a/b/aa;->close()V

    .line 132
    :cond_3
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/video/a/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->c(Lcom/bytedance/sdk/openadsdk/video/a/a/b;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/video/a/a/b;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/video/a/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->d(Lcom/bytedance/sdk/openadsdk/video/a/a/b;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_4

    .line 133
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/video/a/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->g(Lcom/bytedance/sdk/openadsdk/video/a/a/b;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_4
    return-void

    .line 137
    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return-void

    :cond_5
    const/16 v0, 0x4000

    :try_start_4
    new-array v0, v0, [B

    .line 102
    iget-object v6, v1, Lcom/bytedance/sdk/openadsdk/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/video/a/a/b;

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->a(Lcom/bytedance/sdk/openadsdk/video/a/a/b;)J

    move-result-wide v11

    const-wide/16 v13, 0x0

    move-wide v15, v13

    const/4 v6, 0x0

    :goto_2
    rsub-int v4, v6, 0x4000

    .line 103
    invoke-virtual {v2, v0, v6, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v10, -0x1

    const/16 v19, 0x9

    const/16 v20, 0x8

    const/16 v21, 0x7

    const/16 v22, 0x6

    const/16 v23, 0x5

    if-eq v4, v10, :cond_9

    add-int/2addr v6, v4

    int-to-long v9, v4

    add-long/2addr v15, v9

    const-wide/16 v9, 0x4000

    .line 106
    rem-long v9, v15, v9

    cmp-long v4, v9, v13

    if-eqz v4, :cond_7

    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/video/a/a/b;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->d(Lcom/bytedance/sdk/openadsdk/video/a/a/b;)J

    move-result-wide v9

    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/video/a/a/b;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->a(Lcom/bytedance/sdk/openadsdk/video/a/a/b;)J

    move-result-wide v25

    sub-long v9, v9, v25

    cmp-long v4, v15, v9

    if-nez v4, :cond_6

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    goto :goto_4

    :cond_7
    :goto_3
    const/4 v4, 0x1

    :goto_4
    const-string v9, "VideoCacheImpl"

    const/16 v10, 0xe

    new-array v10, v10, [Ljava/lang/Object;

    const-string v25, "Write segment,execAppend ="

    aput-object v25, v10, v7

    .line 107
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    aput-object v25, v10, v8

    const-string v25, " offset="

    const/16 v24, 0x2

    aput-object v25, v10, v24

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v18, 0x3

    aput-object v25, v10, v18

    const-string v25, " totalLength = "

    const/16 v17, 0x4

    aput-object v25, v10, v17

    iget-object v13, v1, Lcom/bytedance/sdk/openadsdk/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/video/a/a/b;

    invoke-static {v13}, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->d(Lcom/bytedance/sdk/openadsdk/video/a/a/b;)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v10, v23

    const-string v13, " saveSize ="

    aput-object v13, v10, v22

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v10, v21

    const-string v13, " startSaved="

    aput-object v13, v10, v20

    iget-object v13, v1, Lcom/bytedance/sdk/openadsdk/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/video/a/a/b;

    invoke-static {v13}, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->a(Lcom/bytedance/sdk/openadsdk/video/a/a/b;)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v10, v19

    const-string v13, " fileHash="

    const/16 v14, 0xa

    aput-object v13, v10, v14

    const/16 v13, 0xb

    iget-object v14, v1, Lcom/bytedance/sdk/openadsdk/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/video/a/a/b;

    invoke-static {v14}, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->b(Lcom/bytedance/sdk/openadsdk/video/a/a/b;)Lcom/bytedance/sdk/openadsdk/video/b/a;

    move-result-object v14

    invoke-virtual {v14}, Lcom/bytedance/sdk/openadsdk/video/b/a;->b()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v10, v13

    const/16 v13, 0xc

    const-string v14, " url="

    aput-object v14, v10, v13

    const/16 v13, 0xd

    iget-object v14, v1, Lcom/bytedance/sdk/openadsdk/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/video/a/a/b;

    invoke-static {v14}, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->b(Lcom/bytedance/sdk/openadsdk/video/a/a/b;)Lcom/bytedance/sdk/openadsdk/video/b/a;

    move-result-object v14

    invoke-virtual {v14}, Lcom/bytedance/sdk/openadsdk/video/b/a;->a()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v10, v13

    invoke-static {v9, v10}, Lcom/bytedance/sdk/openadsdk/video/d/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v4, :cond_8

    .line 109
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/video/a/a/b;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->e(Lcom/bytedance/sdk/openadsdk/video/a/a/b;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 110
    :try_start_5
    iget-object v9, v1, Lcom/bytedance/sdk/openadsdk/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/video/a/a/b;

    invoke-static {v9}, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->f(Lcom/bytedance/sdk/openadsdk/video/a/a/b;)Ljava/io/RandomAccessFile;

    move-result-object v9

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->intValue()I

    move-result v10

    iget-object v13, v1, Lcom/bytedance/sdk/openadsdk/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/video/a/a/b;

    invoke-static {v13}, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->b(Lcom/bytedance/sdk/openadsdk/video/a/a/b;)Lcom/bytedance/sdk/openadsdk/video/b/a;

    move-result-object v13

    invoke-virtual {v13}, Lcom/bytedance/sdk/openadsdk/video/b/a;->b()Ljava/lang/String;

    move-result-object v13

    invoke-static {v9, v0, v10, v6, v13}, Lcom/bytedance/sdk/openadsdk/video/d/c;->a(Ljava/io/RandomAccessFile;[BIILjava/lang/String;)V

    .line 111
    monitor-exit v4

    int-to-long v9, v6

    add-long/2addr v11, v9

    const/4 v6, 0x0

    goto :goto_5

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0

    :cond_8
    :goto_5
    const/4 v4, 0x4

    const/4 v9, 0x2

    const/4 v10, 0x3

    const-wide/16 v13, 0x0

    goto/16 :goto_2

    :cond_9
    const-string v0, "VideoCacheImpl"

    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/Object;

    const-string v6, "Write segment,Write over, startIndex ="

    aput-object v6, v4, v7

    .line 116
    iget-object v6, v1, Lcom/bytedance/sdk/openadsdk/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/video/a/a/b;

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->a(Lcom/bytedance/sdk/openadsdk/video/a/a/b;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v8

    const-string v6, " totalLength = "

    const/4 v9, 0x2

    aput-object v6, v4, v9

    iget-object v6, v1, Lcom/bytedance/sdk/openadsdk/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/video/a/a/b;

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->d(Lcom/bytedance/sdk/openadsdk/video/a/a/b;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v9, 0x3

    aput-object v6, v4, v9

    const-string v6, " saveSize = "

    const/4 v9, 0x4

    aput-object v6, v4, v9

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v23

    const-string v6, " writeEndSegment ="

    aput-object v6, v4, v22

    iget-object v6, v1, Lcom/bytedance/sdk/openadsdk/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/video/a/a/b;

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->d(Lcom/bytedance/sdk/openadsdk/video/a/a/b;)J

    move-result-wide v9

    iget-object v6, v1, Lcom/bytedance/sdk/openadsdk/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/video/a/a/b;

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->a(Lcom/bytedance/sdk/openadsdk/video/a/a/b;)J

    move-result-wide v11

    sub-long/2addr v9, v11

    cmp-long v6, v15, v9

    if-nez v6, :cond_a

    const/4 v7, 0x1

    :cond_a
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v21

    const-string v6, " url="

    aput-object v6, v4, v20

    iget-object v6, v1, Lcom/bytedance/sdk/openadsdk/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/video/a/a/b;

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->b(Lcom/bytedance/sdk/openadsdk/video/a/a/b;)Lcom/bytedance/sdk/openadsdk/video/b/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/video/b/a;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v19

    invoke-static {v0, v4}, Lcom/bytedance/sdk/openadsdk/video/d/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v2, :cond_b

    .line 123
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_7

    :cond_b
    :goto_6
    if-eqz v5, :cond_c

    .line 126
    invoke-virtual {v5}, Lcom/bytedance/sdk/a/b/ab;->close()V

    :cond_c
    if-eqz v3, :cond_d

    .line 130
    invoke-virtual {v3}, Lcom/bytedance/sdk/a/b/aa;->close()V

    .line 132
    :cond_d
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/video/a/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->c(Lcom/bytedance/sdk/openadsdk/video/a/a/b;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/video/a/a/b;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/video/a/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->d(Lcom/bytedance/sdk/openadsdk/video/a/a/b;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_e

    .line 133
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/video/a/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->g(Lcom/bytedance/sdk/openadsdk/video/a/a/b;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :cond_e
    return-void

    .line 137
    :goto_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return-void

    :catchall_1
    move-exception v0

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v5, v2

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object v3, v2

    move-object v5, v3

    .line 119
    :goto_8
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-eqz v2, :cond_f

    .line 123
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_9

    :catch_2
    move-exception v0

    goto :goto_a

    :cond_f
    :goto_9
    if-eqz v5, :cond_10

    .line 126
    invoke-virtual {v5}, Lcom/bytedance/sdk/a/b/ab;->close()V

    :cond_10
    if-eqz v3, :cond_11

    .line 130
    invoke-virtual {v3}, Lcom/bytedance/sdk/a/b/aa;->close()V

    .line 132
    :cond_11
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/video/a/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->c(Lcom/bytedance/sdk/openadsdk/video/a/a/b;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/video/a/a/b;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/video/a/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->d(Lcom/bytedance/sdk/openadsdk/video/a/a/b;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_12

    .line 133
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/video/a/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->g(Lcom/bytedance/sdk/openadsdk/video/a/a/b;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    :cond_12
    return-void

    .line 137
    :goto_a
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return-void

    :catchall_4
    move-exception v0

    move-object v4, v0

    if-eqz v2, :cond_13

    .line 123
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_b

    :catch_3
    move-exception v0

    goto :goto_c

    :cond_13
    :goto_b
    if-eqz v5, :cond_14

    .line 126
    invoke-virtual {v5}, Lcom/bytedance/sdk/a/b/ab;->close()V

    :cond_14
    if-eqz v3, :cond_15

    .line 130
    invoke-virtual {v3}, Lcom/bytedance/sdk/a/b/aa;->close()V

    .line 132
    :cond_15
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/video/a/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->c(Lcom/bytedance/sdk/openadsdk/video/a/a/b;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/video/a/a/b;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/video/a/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->d(Lcom/bytedance/sdk/openadsdk/video/a/a/b;)J

    move-result-wide v5

    cmp-long v0, v2, v5

    if-nez v0, :cond_16

    .line 133
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/video/a/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/video/a/a/b;->g(Lcom/bytedance/sdk/openadsdk/video/a/a/b;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_d

    .line 137
    :goto_c
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 139
    :cond_16
    :goto_d
    throw v4
.end method
