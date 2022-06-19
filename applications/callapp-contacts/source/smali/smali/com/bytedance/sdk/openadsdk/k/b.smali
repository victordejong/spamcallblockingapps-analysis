.class Lcom/bytedance/sdk/openadsdk/k/b;
.super Lcom/bytedance/sdk/openadsdk/k/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/k/b$a;,
        Lcom/bytedance/sdk/openadsdk/k/b$b;
    }
.end annotation


# instance fields
.field final m:Ljava/lang/Object;

.field final n:Ljava/lang/Object;

.field private final o:I

.field private final p:Lcom/bytedance/sdk/openadsdk/k/b$b;

.field private volatile q:Lcom/bytedance/sdk/openadsdk/k/h$a;

.field private volatile r:Lcom/bytedance/sdk/openadsdk/k/c/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/k/b$a;)V
    .locals 2

    .line 42
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/k/b$a;->d:Lcom/bytedance/sdk/openadsdk/k/a/a;

    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/k/b$a;->e:Lcom/bytedance/sdk/openadsdk/k/b/c;

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/k/a;-><init>(Lcom/bytedance/sdk/openadsdk/k/a/a;Lcom/bytedance/sdk/openadsdk/k/b/c;)V

    .line 44
    iget v0, p1, Lcom/bytedance/sdk/openadsdk/k/b$a;->g:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/k/b;->o:I

    .line 45
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/k/b$a;->i:Lcom/bytedance/sdk/openadsdk/k/b$b;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/b;->p:Lcom/bytedance/sdk/openadsdk/k/b$b;

    .line 46
    iput-object p0, p0, Lcom/bytedance/sdk/openadsdk/k/b;->m:Ljava/lang/Object;

    .line 48
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/k/b$a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/b;->g:Ljava/lang/String;

    .line 49
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/k/b$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/b;->h:Ljava/lang/String;

    .line 50
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/k/b$a;->f:Ljava/util/List;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/b;->f:Ljava/util/List;

    .line 51
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/k/b$a;->c:Lcom/bytedance/sdk/openadsdk/k/l;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/b;->j:Lcom/bytedance/sdk/openadsdk/k/l;

    .line 52
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/k/b$a;->h:Lcom/bytedance/sdk/openadsdk/k/i;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/b;->i:Lcom/bytedance/sdk/openadsdk/k/i;

    .line 53
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/k/b$a;->j:Ljava/lang/Object;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/k/b;->n:Ljava/lang/Object;

    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/k/l$a;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/bytedance/sdk/openadsdk/k/h$a;,
            Lcom/bytedance/sdk/openadsdk/k/c/a;,
            Lcom/bytedance/sdk/openadsdk/k/c/b;,
            Lcom/bytedance/sdk/adnet/err/VAdError;
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/b;->a:Lcom/bytedance/sdk/openadsdk/k/a/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/k/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/k/a/a;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 145
    iget v3, p0, Lcom/bytedance/sdk/openadsdk/k/b;->o:I

    if-lez v3, :cond_1

    int-to-long v3, v3

    cmp-long v5, v1, v3

    if-ltz v5, :cond_1

    .line 146
    sget-boolean p1, Lcom/bytedance/sdk/openadsdk/k/e;->c:Z

    if-eqz p1, :cond_0

    .line 147
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "no necessary to download for "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/b;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", cache file size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", max: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/k/b;->o:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    return-void

    .line 151
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/k/b;->f()I

    move-result v3

    .line 152
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/k/b;->b:Lcom/bytedance/sdk/openadsdk/k/b/c;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/k/b;->h:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/bytedance/sdk/openadsdk/k/b/c;->a(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/k/b/a;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 153
    iget v5, v4, Lcom/bytedance/sdk/openadsdk/k/b/a;->c:I

    int-to-long v5, v5

    cmp-long v7, v1, v5

    if-ltz v7, :cond_3

    .line 154
    sget-boolean p1, Lcom/bytedance/sdk/openadsdk/k/e;->c:Z

    if-eqz p1, :cond_2

    .line 155
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "file download complete, key: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/b;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    return-void

    .line 160
    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/k/b;->e()V

    long-to-int v5, v1

    .line 161
    iget v6, p0, Lcom/bytedance/sdk/openadsdk/k/b;->o:I

    const-string v7, "GET"

    invoke-virtual {p0, p1, v5, v6, v7}, Lcom/bytedance/sdk/openadsdk/k/b;->a(Lcom/bytedance/sdk/openadsdk/k/l$a;IILjava/lang/String;)Lcom/bytedance/sdk/openadsdk/k/e/a;

    move-result-object v6

    if-nez v6, :cond_4

    return-void

    :cond_4
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 168
    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/k/b;->e()V

    .line 170
    iget-object v10, p0, Lcom/bytedance/sdk/openadsdk/k/b;->i:Lcom/bytedance/sdk/openadsdk/k/i;

    if-nez v10, :cond_5

    sget-boolean v10, Lcom/bytedance/sdk/openadsdk/k/e;->e:Z

    if-eqz v10, :cond_5

    const/4 v10, 0x1

    goto :goto_0

    :cond_5
    const/4 v10, 0x0

    :goto_0
    invoke-static {v6, v10, v8}, Lcom/bytedance/sdk/openadsdk/k/g/d;->a(Lcom/bytedance/sdk/openadsdk/k/e/a;ZZ)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_10

    .line 175
    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/k/g/d;->a(Lcom/bytedance/sdk/openadsdk/k/e/a;)I

    move-result v10

    if-eqz v4, :cond_7

    .line 176
    iget v11, v4, Lcom/bytedance/sdk/openadsdk/k/b/a;->c:I

    if-eq v11, v10, :cond_7

    .line 177
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/k/e;->c:Z

    if-eqz v0, :cond_6

    const-string v0, "TAG_PROXY_DownloadTask"

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Content-Length not match, old: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v4, Lcom/bytedance/sdk/openadsdk/k/b/a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/k/b;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_6
    new-instance v0, Lcom/bytedance/sdk/openadsdk/k/c/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Content-Length not match, old length: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v4, Lcom/bytedance/sdk/openadsdk/k/b/a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", new length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", rawKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/k/b;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", currentUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", previousInfo: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v4, Lcom/bytedance/sdk/openadsdk/k/b/a;->e:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/k/c/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/k/b;->b:Lcom/bytedance/sdk/openadsdk/k/b/c;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/k/b;->h:Ljava/lang/String;

    invoke-static {v6, p1, v4, v3}, Lcom/bytedance/sdk/openadsdk/k/g/d;->a(Lcom/bytedance/sdk/openadsdk/k/e/a;Lcom/bytedance/sdk/openadsdk/k/b/c;Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/k/b/a;

    .line 185
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/k/b;->b:Lcom/bytedance/sdk/openadsdk/k/b/c;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/k/b;->h:Ljava/lang/String;

    invoke-virtual {p1, v4, v3}, Lcom/bytedance/sdk/openadsdk/k/b/c;->a(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/k/b/a;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    goto :goto_1

    .line 186
    :cond_8
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/k/b/a;->c:I

    .line 187
    :goto_1
    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/k/e/a;->d()Ljava/io/InputStream;

    move-result-object v3

    .line 188
    new-instance v4, Lcom/bytedance/sdk/openadsdk/k/h;

    sget-boolean v10, Lcom/bytedance/sdk/openadsdk/k/e;->d:Z

    if-eqz v10, :cond_9

    const-string v10, "rwd"

    goto :goto_2

    :cond_9
    const-string v10, "rw"

    :goto_2
    invoke-direct {v4, v0, v10}, Lcom/bytedance/sdk/openadsdk/k/h;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 189
    :try_start_1
    invoke-virtual {v4, v1, v2}, Lcom/bytedance/sdk/openadsdk/k/h;->a(J)V

    .line 190
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/k/e;->c:Z

    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 197
    :goto_3
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-ltz v1, :cond_f

    .line 198
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/k/b;->e()V

    if-lez v1, :cond_b

    .line 201
    invoke-virtual {v4, v0, v9, v1}, Lcom/bytedance/sdk/openadsdk/k/h;->a([BII)V

    add-int/2addr v5, v1

    .line 204
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/k/b;->i:Lcom/bytedance/sdk/openadsdk/k/i;

    if-eqz v2, :cond_a

    .line 205
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/k/b;->m:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 206
    :try_start_2
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/k/b;->m:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 207
    monitor-exit v2

    goto :goto_4

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1

    .line 210
    :cond_a
    :goto_4
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/k/b;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 212
    invoke-virtual {p0, p1, v5}, Lcom/bytedance/sdk/openadsdk/k/b;->a(II)V

    .line 215
    :cond_b
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/k/b;->o:I

    if-lez v1, :cond_e

    if-lt v5, v1, :cond_e

    .line 216
    sget-boolean p1, Lcom/bytedance/sdk/openadsdk/k/e;->c:Z

    if-eqz p1, :cond_c

    const-string p1, "TAG_PROXY_DownloadTask"

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "download, more data received, currentCacheFileSize: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", max: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/k/b;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 230
    :cond_c
    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/k/e/a;->d()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/k/g/d;->a(Ljava/io/Closeable;)V

    .line 233
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/k/h;->a()V

    .line 237
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/k/b;->a()V

    .line 238
    sget-boolean p1, Lcom/bytedance/sdk/openadsdk/k/e;->c:Z

    if-eqz p1, :cond_d

    const-string p1, "TAG_PROXY_DownloadTask"

    const-string v0, "cancel call"

    .line 239
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return-void

    .line 221
    :cond_e
    :try_start_4
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/k/b;->e()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    .line 225
    :cond_f
    :try_start_5
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/k/b;->c()V

    .line 226
    sget-boolean p1, Lcom/bytedance/sdk/openadsdk/k/e;->c:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 230
    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/k/e/a;->d()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/k/g/d;->a(Ljava/io/Closeable;)V

    .line 233
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/k/h;->a()V

    return-void

    :catchall_1
    move-exception p1

    move-object v7, v4

    const/4 v8, 0x0

    goto :goto_5

    :catchall_2
    move-exception p1

    move-object v7, v4

    goto :goto_5

    .line 172
    :cond_10
    :try_start_6
    new-instance v0, Lcom/bytedance/sdk/openadsdk/k/c/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", rawKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/k/b;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/k/c/c;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception p1

    .line 230
    :goto_5
    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/k/e/a;->d()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/k/g/d;->a(Ljava/io/Closeable;)V

    if-eqz v7, :cond_11

    .line 233
    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/k/h;->a()V

    :cond_11
    if-eqz v8, :cond_12

    .line 237
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/k/b;->a()V

    .line 238
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/k/e;->c:Z

    if-eqz v0, :cond_12

    const-string v0, "TAG_PROXY_DownloadTask"

    const-string v1, "cancel call"

    .line 239
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_12
    throw p1
.end method

.method private j()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/openadsdk/k/c/a;,
            Lcom/bytedance/sdk/adnet/err/VAdError;
        }
    .end annotation

    const-string v0, "TAG_PROXY_DownloadTask"

    .line 93
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/k/b;->j:Lcom/bytedance/sdk/openadsdk/k/l;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/k/l;->a()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 94
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/k/b;->e()V

    .line 96
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/k/b;->j:Lcom/bytedance/sdk/openadsdk/k/l;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/k/l;->b()Lcom/bytedance/sdk/openadsdk/k/l$a;

    move-result-object v1

    .line 98
    :try_start_0
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/k/b;->a(Lcom/bytedance/sdk/openadsdk/k/l$a;)V
    :try_end_0
    .catch Lcom/bytedance/sdk/openadsdk/k/c/c; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/bytedance/sdk/openadsdk/k/h$a; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/bytedance/sdk/openadsdk/k/c/b; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    .line 133
    sget-boolean v3, Lcom/bytedance/sdk/openadsdk/k/e;->c:Z

    if-eqz v3, :cond_1

    .line 134
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v2

    :catch_0
    move-exception v1

    .line 125
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/k/b;->r:Lcom/bytedance/sdk/openadsdk/k/c/b;

    .line 126
    sget-boolean v3, Lcom/bytedance/sdk/openadsdk/k/e;->c:Z

    if-eqz v3, :cond_2

    .line 127
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v2

    :catch_1
    move-exception v0

    .line 121
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/b;->q:Lcom/bytedance/sdk/openadsdk/k/h$a;

    .line 122
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/k/b;->g()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/k/b;->g:Ljava/lang/String;

    invoke-virtual {p0, v1, v3, v0}, Lcom/bytedance/sdk/openadsdk/k/b;->a(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2

    :catch_2
    move-exception v2

    .line 105
    instance-of v3, v2, Ljava/net/SocketTimeoutException;

    if-eqz v3, :cond_3

    .line 106
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/k/l$a;->b()V

    .line 109
    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/k/b;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 110
    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/k/e;->c:Z

    if-eqz v1, :cond_0

    .line 111
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Canceled"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "okhttp call canceled"

    .line 112
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 114
    :cond_4
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 118
    :cond_5
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/k/b;->g()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/k/b;->g:Ljava/lang/String;

    invoke-virtual {p0, v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/k/b;->a(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_3
    move-exception v2

    .line 101
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/k/l$a;->a()V

    .line 102
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/k/b;->g()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/k/b;->g:Ljava/lang/String;

    invoke-virtual {p0, v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/k/b;->a(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_6
    return v2
.end method


# virtual methods
.method h()Lcom/bytedance/sdk/openadsdk/k/h$a;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/b;->q:Lcom/bytedance/sdk/openadsdk/k/h$a;

    return-object v0
.end method

.method i()Lcom/bytedance/sdk/openadsdk/k/c/b;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/b;->r:Lcom/bytedance/sdk/openadsdk/k/c/b;

    return-object v0
.end method

.method public run()V
    .locals 5

    const-string v0, "TAG_PROXY_DownloadTask"

    .line 58
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/k/b;->a:Lcom/bytedance/sdk/openadsdk/k/a/a;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/k/b;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/k/a/a;->a(Ljava/lang/String;)V

    .line 59
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 61
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/k/b;->j()Z
    :try_end_0
    .catch Lcom/bytedance/sdk/openadsdk/k/c/a; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/bytedance/sdk/adnet/err/a; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/bytedance/sdk/adnet/err/VAdError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 71
    sget-boolean v4, Lcom/bytedance/sdk/openadsdk/k/e;->c:Z

    if-eqz v4, :cond_0

    .line 72
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    .line 69
    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/err/VAdError;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 67
    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/err/a;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v3

    .line 63
    sget-boolean v4, Lcom/bytedance/sdk/openadsdk/k/e;->c:Z

    if-eqz v4, :cond_0

    .line 64
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/b;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 76
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/b;->a:Lcom/bytedance/sdk/openadsdk/k/a/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/k/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/k/a/a;->b(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/b;->p:Lcom/bytedance/sdk/openadsdk/k/b$b;

    if-eqz v0, :cond_1

    .line 78
    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/k/b$b;->a(Lcom/bytedance/sdk/openadsdk/k/b;)V

    :cond_1
    return-void
.end method
