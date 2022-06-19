.class Lcom/bytedance/sdk/openadsdk/video/a/c/a$1;
.super Lcom/bytedance/sdk/openadsdk/l/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/video/a/c/a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/video/a/c/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/video/a/c/a;Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/video/a/c/a$1;->a:Lcom/bytedance/sdk/openadsdk/video/a/c/a;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/l/g;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    move-object/from16 v1, p0

    const-string v2, " Preload size="

    const-string v3, "Pre finally "

    const-string v4, "VideoPreload"

    .line 76
    new-instance v0, Lcom/bytedance/sdk/a/b/v;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/b/v;-><init>()V

    .line 77
    new-instance v5, Lcom/bytedance/sdk/a/b/y$a;

    invoke-direct {v5}, Lcom/bytedance/sdk/a/b/y$a;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "bytes=0-"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/bytedance/sdk/openadsdk/video/a/c/a$1;->a:Lcom/bytedance/sdk/openadsdk/video/a/c/a;

    .line 78
    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/video/a/c/a;->b(Lcom/bytedance/sdk/openadsdk/video/a/c/a;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "RANGE"

    invoke-virtual {v5, v7, v6}, Lcom/bytedance/sdk/a/b/y$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/a/b/y$a;

    move-result-object v5

    iget-object v6, v1, Lcom/bytedance/sdk/openadsdk/video/a/c/a$1;->a:Lcom/bytedance/sdk/openadsdk/video/a/c/a;

    .line 79
    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/video/a/c/a;->a(Lcom/bytedance/sdk/openadsdk/video/a/c/a;)Lcom/bytedance/sdk/openadsdk/video/b/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/video/b/a;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/bytedance/sdk/a/b/y$a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/y$a;

    move-result-object v5

    .line 80
    invoke-virtual {v5}, Lcom/bytedance/sdk/a/b/y$a;->a()Lcom/bytedance/sdk/a/b/y$a;

    move-result-object v5

    .line 81
    invoke-virtual {v5}, Lcom/bytedance/sdk/a/b/y$a;->d()Lcom/bytedance/sdk/a/b/y;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x4

    const/4 v11, 0x0

    .line 87
    :try_start_0
    invoke-virtual {v0, v5}, Lcom/bytedance/sdk/a/b/v;->a(Lcom/bytedance/sdk/a/b/y;)Lcom/bytedance/sdk/a/b/e;

    move-result-object v0

    .line 88
    invoke-interface {v0}, Lcom/bytedance/sdk/a/b/e;->a()Lcom/bytedance/sdk/a/b/aa;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 89
    :try_start_1
    invoke-virtual {v5}, Lcom/bytedance/sdk/a/b/aa;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 90
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/video/a/c/a$1;->a:Lcom/bytedance/sdk/openadsdk/video/a/c/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/video/a/c/a;->c(Lcom/bytedance/sdk/openadsdk/video/a/c/a;)Lcom/bytedance/sdk/openadsdk/video/a/c/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/video/a/c/a$1;->a:Lcom/bytedance/sdk/openadsdk/video/a/c/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/video/a/c/a;->c(Lcom/bytedance/sdk/openadsdk/video/a/c/a;)Lcom/bytedance/sdk/openadsdk/video/a/c/a$a;

    move-result-object v0

    invoke-virtual {v5}, Lcom/bytedance/sdk/a/b/aa;->c()I

    move-result v12

    invoke-virtual {v5}, Lcom/bytedance/sdk/a/b/aa;->e()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v12, v13}, Lcom/bytedance/sdk/openadsdk/video/a/c/a$a;->a(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    if-eqz v5, :cond_1

    .line 150
    :try_start_2
    invoke-virtual {v5}, Lcom/bytedance/sdk/a/b/aa;->close()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    new-array v0, v10, [Ljava/lang/Object;

    aput-object v3, v0, v11

    .line 152
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/video/a/c/a$1;->a:Lcom/bytedance/sdk/openadsdk/video/a/c/a;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/video/a/c/a;->a(Lcom/bytedance/sdk/openadsdk/video/a/c/a;)Lcom/bytedance/sdk/openadsdk/video/b/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/video/b/a;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v9

    aput-object v2, v0, v8

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/video/a/c/a$1;->a:Lcom/bytedance/sdk/openadsdk/video/a/c/a;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/video/a/c/a;->b(Lcom/bytedance/sdk/openadsdk/video/a/c/a;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v7

    invoke-static {v4, v0}, Lcom/bytedance/sdk/openadsdk/video/d/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    .line 154
    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return-void

    .line 95
    :cond_2
    :try_start_3
    invoke-virtual {v5}, Lcom/bytedance/sdk/a/b/aa;->h()Lcom/bytedance/sdk/a/b/ab;

    move-result-object v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 97
    :try_start_4
    invoke-virtual {v5}, Lcom/bytedance/sdk/a/b/aa;->d()Z

    move-result v0

    .line 98
    invoke-virtual {v5}, Lcom/bytedance/sdk/a/b/aa;->h()Lcom/bytedance/sdk/a/b/ab;

    move-result-object v12

    const-wide/16 v13, 0x0

    if-eqz v0, :cond_3

    if-eqz v12, :cond_3

    .line 101
    invoke-virtual {v12}, Lcom/bytedance/sdk/a/b/ab;->b()J

    move-result-wide v15

    .line 102
    invoke-virtual {v12}, Lcom/bytedance/sdk/a/b/ab;->c()Ljava/io/InputStream;

    move-result-object v6

    goto :goto_2

    :cond_3
    move-wide v15, v13

    :goto_2
    if-nez v6, :cond_8

    .line 105
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/video/a/c/a$1;->a:Lcom/bytedance/sdk/openadsdk/video/a/c/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/video/a/c/a;->c(Lcom/bytedance/sdk/openadsdk/video/a/c/a;)Lcom/bytedance/sdk/openadsdk/video/a/c/a$a;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 106
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/video/a/c/a$1;->a:Lcom/bytedance/sdk/openadsdk/video/a/c/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/video/a/c/a;->c(Lcom/bytedance/sdk/openadsdk/video/a/c/a;)Lcom/bytedance/sdk/openadsdk/video/a/c/a$a;

    move-result-object v0

    invoke-virtual {v5}, Lcom/bytedance/sdk/a/b/aa;->c()I

    move-result v13

    invoke-virtual {v5}, Lcom/bytedance/sdk/a/b/aa;->e()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v0, v13, v14}, Lcom/bytedance/sdk/openadsdk/video/a/c/a$a;->a(ILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    if-eqz v6, :cond_5

    .line 144
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    :cond_5
    :goto_3
    if-eqz v12, :cond_6

    .line 147
    invoke-virtual {v12}, Lcom/bytedance/sdk/a/b/ab;->close()V

    :cond_6
    if-eqz v5, :cond_7

    .line 150
    invoke-virtual {v5}, Lcom/bytedance/sdk/a/b/aa;->close()V

    :cond_7
    new-array v0, v10, [Ljava/lang/Object;

    aput-object v3, v0, v11

    .line 152
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/video/a/c/a$1;->a:Lcom/bytedance/sdk/openadsdk/video/a/c/a;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/video/a/c/a;->a(Lcom/bytedance/sdk/openadsdk/video/a/c/a;)Lcom/bytedance/sdk/openadsdk/video/b/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/video/b/a;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v9

    aput-object v2, v0, v8

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/video/a/c/a$1;->a:Lcom/bytedance/sdk/openadsdk/video/a/c/a;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/video/a/c/a;->b(Lcom/bytedance/sdk/openadsdk/video/a/c/a;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v7

    invoke-static {v4, v0}, Lcom/bytedance/sdk/openadsdk/video/d/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    return-void

    .line 154
    :goto_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return-void

    .line 110
    :cond_8
    :try_start_6
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v7, v1, Lcom/bytedance/sdk/openadsdk/video/a/c/a$1;->a:Lcom/bytedance/sdk/openadsdk/video/a/c/a;

    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/video/a/c/a;->d(Lcom/bytedance/sdk/openadsdk/video/a/c/a;)Ljava/io/File;

    move-result-object v7

    const-string v8, "rw"

    invoke-direct {v0, v7, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/16 v7, 0x4000

    new-array v7, v7, [B

    move-wide/from16 v17, v13

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_5
    rsub-int v11, v8, 0x4000

    .line 115
    invoke-virtual {v6, v7, v8, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v11

    const/4 v10, -0x1

    if-eq v11, v10, :cond_c

    .line 116
    iget-object v10, v1, Lcom/bytedance/sdk/openadsdk/video/a/c/a$1;->a:Lcom/bytedance/sdk/openadsdk/video/a/c/a;

    invoke-static {v10}, Lcom/bytedance/sdk/openadsdk/video/a/c/a;->e(Lcom/bytedance/sdk/openadsdk/video/a/c/a;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 118
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/video/a/c/a$1;->a:Lcom/bytedance/sdk/openadsdk/video/a/c/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/video/a/c/a;->c(Lcom/bytedance/sdk/openadsdk/video/a/c/a;)Lcom/bytedance/sdk/openadsdk/video/a/c/a$a;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 119
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/video/a/c/a$1;->a:Lcom/bytedance/sdk/openadsdk/video/a/c/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/video/a/c/a;->c(Lcom/bytedance/sdk/openadsdk/video/a/c/a;)Lcom/bytedance/sdk/openadsdk/video/a/c/a$a;

    move-result-object v0

    invoke-virtual {v5}, Lcom/bytedance/sdk/a/b/aa;->c()I

    move-result v7

    iget-object v8, v1, Lcom/bytedance/sdk/openadsdk/video/a/c/a$1;->a:Lcom/bytedance/sdk/openadsdk/video/a/c/a;

    invoke-static {v8}, Lcom/bytedance/sdk/openadsdk/video/a/c/a;->a(Lcom/bytedance/sdk/openadsdk/video/a/c/a;)Lcom/bytedance/sdk/openadsdk/video/b/a;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Lcom/bytedance/sdk/openadsdk/video/a/c/a$a;->a(ILcom/bytedance/sdk/openadsdk/video/b/a;)V

    goto :goto_8

    :cond_9
    add-int/2addr v8, v11

    int-to-long v10, v11

    add-long v17, v17, v10

    const-wide/16 v10, 0x4000

    .line 125
    rem-long v10, v17, v10

    cmp-long v19, v10, v13

    if-eqz v19, :cond_b

    cmp-long v10, v17, v15

    if-nez v10, :cond_a

    goto :goto_7

    :cond_a
    :goto_6
    const/4 v10, 0x4

    const/4 v11, 0x0

    goto :goto_5

    :cond_b
    :goto_7
    int-to-long v10, v9

    .line 126
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->intValue()I

    move-result v10

    iget-object v11, v1, Lcom/bytedance/sdk/openadsdk/video/a/c/a$1;->a:Lcom/bytedance/sdk/openadsdk/video/a/c/a;

    invoke-static {v11}, Lcom/bytedance/sdk/openadsdk/video/a/c/a;->a(Lcom/bytedance/sdk/openadsdk/video/a/c/a;)Lcom/bytedance/sdk/openadsdk/video/b/a;

    move-result-object v11

    invoke-virtual {v11}, Lcom/bytedance/sdk/openadsdk/video/b/a;->b()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v7, v10, v8, v11}, Lcom/bytedance/sdk/openadsdk/video/d/c;->a(Ljava/io/RandomAccessFile;[BIILjava/lang/String;)V

    add-int/2addr v9, v8

    const/4 v8, 0x0

    goto :goto_6

    .line 132
    :cond_c
    :goto_8
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/video/a/c/a$1;->a:Lcom/bytedance/sdk/openadsdk/video/a/c/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/video/a/c/a;->c(Lcom/bytedance/sdk/openadsdk/video/a/c/a;)Lcom/bytedance/sdk/openadsdk/video/a/c/a$a;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 133
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/video/a/c/a$1;->a:Lcom/bytedance/sdk/openadsdk/video/a/c/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/video/a/c/a;->c(Lcom/bytedance/sdk/openadsdk/video/a/c/a;)Lcom/bytedance/sdk/openadsdk/video/a/c/a$a;

    move-result-object v0

    invoke-virtual {v5}, Lcom/bytedance/sdk/a/b/aa;->c()I

    move-result v7

    iget-object v8, v1, Lcom/bytedance/sdk/openadsdk/video/a/c/a$1;->a:Lcom/bytedance/sdk/openadsdk/video/a/c/a;

    invoke-static {v8}, Lcom/bytedance/sdk/openadsdk/video/a/c/a;->a(Lcom/bytedance/sdk/openadsdk/video/a/c/a;)Lcom/bytedance/sdk/openadsdk/video/b/a;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Lcom/bytedance/sdk/openadsdk/video/a/c/a$a;->a(ILcom/bytedance/sdk/openadsdk/video/b/a;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_d
    if-eqz v6, :cond_e

    .line 144
    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    goto :goto_9

    :catch_2
    move-exception v0

    goto :goto_a

    :cond_e
    :goto_9
    if-eqz v12, :cond_f

    .line 147
    invoke-virtual {v12}, Lcom/bytedance/sdk/a/b/ab;->close()V

    :cond_f
    if-eqz v5, :cond_10

    .line 150
    invoke-virtual {v5}, Lcom/bytedance/sdk/a/b/aa;->close()V

    :cond_10
    const/4 v5, 0x4

    new-array v0, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v0, v5

    .line 152
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/video/a/c/a$1;->a:Lcom/bytedance/sdk/openadsdk/video/a/c/a;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/video/a/c/a;->a(Lcom/bytedance/sdk/openadsdk/video/a/c/a;)Lcom/bytedance/sdk/openadsdk/video/b/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/video/b/a;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v0, v5

    const/4 v3, 0x2

    aput-object v2, v0, v3

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/video/a/c/a$1;->a:Lcom/bytedance/sdk/openadsdk/video/a/c/a;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/video/a/c/a;->b(Lcom/bytedance/sdk/openadsdk/video/a/c/a;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v0, v3

    invoke-static {v4, v0}, Lcom/bytedance/sdk/openadsdk/video/d/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    return-void

    .line 154
    :goto_a
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v20, v6

    move-object v6, v5

    move-object/from16 v5, v20

    goto :goto_b

    :catchall_1
    move-exception v0

    move-object v12, v6

    move-object v6, v5

    move-object v5, v12

    goto :goto_b

    :catchall_2
    move-exception v0

    move-object v5, v6

    move-object v12, v5

    .line 137
    :goto_b
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 138
    iget-object v7, v1, Lcom/bytedance/sdk/openadsdk/video/a/c/a$1;->a:Lcom/bytedance/sdk/openadsdk/video/a/c/a;

    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/video/a/c/a;->c(Lcom/bytedance/sdk/openadsdk/video/a/c/a;)Lcom/bytedance/sdk/openadsdk/video/a/c/a$a;

    move-result-object v7

    if-eqz v7, :cond_11

    .line 139
    iget-object v7, v1, Lcom/bytedance/sdk/openadsdk/video/a/c/a$1;->a:Lcom/bytedance/sdk/openadsdk/video/a/c/a;

    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/video/a/c/a;->c(Lcom/bytedance/sdk/openadsdk/video/a/c/a;)Lcom/bytedance/sdk/openadsdk/video/a/c/a$a;

    move-result-object v7

    invoke-virtual {v6}, Lcom/bytedance/sdk/a/b/aa;->c()I

    move-result v8

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v8, v0}, Lcom/bytedance/sdk/openadsdk/video/a/c/a$a;->a(ILjava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :cond_11
    if-eqz v5, :cond_12

    .line 144
    :try_start_9
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    goto :goto_c

    :catch_3
    move-exception v0

    goto :goto_d

    :cond_12
    :goto_c
    if-eqz v12, :cond_13

    .line 147
    invoke-virtual {v12}, Lcom/bytedance/sdk/a/b/ab;->close()V

    :cond_13
    if-eqz v6, :cond_14

    .line 150
    invoke-virtual {v6}, Lcom/bytedance/sdk/a/b/aa;->close()V

    :cond_14
    const/4 v5, 0x4

    new-array v0, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v0, v5

    .line 152
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/video/a/c/a$1;->a:Lcom/bytedance/sdk/openadsdk/video/a/c/a;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/video/a/c/a;->a(Lcom/bytedance/sdk/openadsdk/video/a/c/a;)Lcom/bytedance/sdk/openadsdk/video/b/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/video/b/a;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v0, v5

    const/4 v3, 0x2

    aput-object v2, v0, v3

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/video/a/c/a$1;->a:Lcom/bytedance/sdk/openadsdk/video/a/c/a;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/video/a/c/a;->b(Lcom/bytedance/sdk/openadsdk/video/a/c/a;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v0, v3

    invoke-static {v4, v0}, Lcom/bytedance/sdk/openadsdk/video/d/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    return-void

    .line 154
    :goto_d
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return-void

    :catchall_3
    move-exception v0

    move-object v7, v0

    if-eqz v5, :cond_15

    .line 144
    :try_start_a
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    goto :goto_e

    :catch_4
    move-exception v0

    goto :goto_f

    :cond_15
    :goto_e
    if-eqz v12, :cond_16

    .line 147
    invoke-virtual {v12}, Lcom/bytedance/sdk/a/b/ab;->close()V

    :cond_16
    if-eqz v6, :cond_17

    .line 150
    invoke-virtual {v6}, Lcom/bytedance/sdk/a/b/aa;->close()V

    :cond_17
    const/4 v5, 0x4

    new-array v0, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v0, v5

    .line 152
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/video/a/c/a$1;->a:Lcom/bytedance/sdk/openadsdk/video/a/c/a;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/video/a/c/a;->a(Lcom/bytedance/sdk/openadsdk/video/a/c/a;)Lcom/bytedance/sdk/openadsdk/video/b/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/video/b/a;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v0, v5

    const/4 v3, 0x2

    aput-object v2, v0, v3

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/video/a/c/a$1;->a:Lcom/bytedance/sdk/openadsdk/video/a/c/a;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/video/a/c/a;->b(Lcom/bytedance/sdk/openadsdk/video/a/c/a;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v0, v3

    invoke-static {v4, v0}, Lcom/bytedance/sdk/openadsdk/video/d/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_10

    .line 154
    :goto_f
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 157
    :goto_10
    throw v7
.end method
