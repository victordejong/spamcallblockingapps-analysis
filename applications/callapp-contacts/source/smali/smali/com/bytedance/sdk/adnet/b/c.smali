.class public Lcom/bytedance/sdk/adnet/b/c;
.super Lcom/bytedance/sdk/adnet/core/Request;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/adnet/b/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/adnet/core/Request<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private c:Ljava/io/File;

.field private d:Ljava/io/File;

.field private final e:Ljava/lang/Object;

.field private f:Lcom/bytedance/sdk/adnet/core/m$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/adnet/core/m$a<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/adnet/core/m$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/adnet/core/m$a<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 82
    invoke-direct {p0, p2, p3}, Lcom/bytedance/sdk/adnet/core/Request;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/adnet/core/m$a;)V

    .line 65
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bytedance/sdk/adnet/b/c;->e:Ljava/lang/Object;

    .line 83
    iput-object p3, p0, Lcom/bytedance/sdk/adnet/b/c;->f:Lcom/bytedance/sdk/adnet/core/m$a;

    .line 84
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/bytedance/sdk/adnet/b/c;->c:Ljava/io/File;

    .line 85
    new-instance p2, Ljava/io/File;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".tmp"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/bytedance/sdk/adnet/b/c;->d:Ljava/io/File;

    .line 88
    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/adnet/b/c;->c:Ljava/io/File;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/adnet/b/c;->c:Ljava/io/File;

    .line 89
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 90
    iget-object p1, p0, Lcom/bytedance/sdk/adnet/b/c;->c:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :catchall_0
    :cond_0
    new-instance p1, Lcom/bytedance/sdk/adnet/core/e;

    const/16 p2, 0x61a8

    const/4 p3, 0x1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, p3, v0}, Lcom/bytedance/sdk/adnet/core/e;-><init>(IIF)V

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/adnet/b/c;->setRetryPolicy(Lcom/bytedance/sdk/adnet/face/d;)Lcom/bytedance/sdk/adnet/core/Request;

    const/4 p1, 0x0

    .line 100
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/adnet/b/c;->setShouldCache(Z)Lcom/bytedance/sdk/adnet/core/Request;

    return-void
.end method

.method private a(Lcom/bytedance/sdk/adnet/core/HttpResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_1

    .line 295
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/HttpResponse;->getHeaders()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/HttpResponse;->getHeaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 296
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/HttpResponse;->getHeaders()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/adnet/core/Header;

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/core/Header;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/core/Header;->getValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private b(Lcom/bytedance/sdk/adnet/core/HttpResponse;)Z
    .locals 1

    const-string v0, "Content-Encoding"

    .line 283
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/adnet/b/c;->a(Lcom/bytedance/sdk/adnet/core/HttpResponse;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "gzip"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method private c(Lcom/bytedance/sdk/adnet/core/HttpResponse;)Z
    .locals 3

    const-string v0, "Accept-Ranges"

    .line 287
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/adnet/b/c;->a(Lcom/bytedance/sdk/adnet/core/HttpResponse;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bytes"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const-string v0, "Content-Range"

    .line 290
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/adnet/b/c;->a(Lcom/bytedance/sdk/adnet/core/HttpResponse;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 291
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private h()V
    .locals 1

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/c;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    :catchall_0
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/c;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/adnet/core/i;)Lcom/bytedance/sdk/adnet/core/m;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/i;",
            ")",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 136
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/b/c;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 137
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/c;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/c;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 138
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/c;->d:Ljava/io/File;

    iget-object v1, p0, Lcom/bytedance/sdk/adnet/b/c;->c:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 139
    invoke-static {p1}, Lcom/bytedance/sdk/adnet/d/c;->a(Lcom/bytedance/sdk/adnet/core/i;)Lcom/bytedance/sdk/adnet/face/a$a;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/adnet/core/m;->a(Ljava/lang/Object;Lcom/bytedance/sdk/adnet/face/a$a;)Lcom/bytedance/sdk/adnet/core/m;

    move-result-object p1

    return-object p1

    .line 141
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/adnet/b/c;->h()V

    .line 142
    new-instance p1, Lcom/bytedance/sdk/adnet/err/VAdError;

    const/16 v0, 0x261

    const-string v1, "Can\'t rename the download temporary file!"

    invoke-direct {p1, v1, v0}, Lcom/bytedance/sdk/adnet/err/VAdError;-><init>(Ljava/lang/String;I)V

    invoke-static {p1}, Lcom/bytedance/sdk/adnet/core/m;->a(Lcom/bytedance/sdk/adnet/err/VAdError;)Lcom/bytedance/sdk/adnet/core/m;

    move-result-object p1

    return-object p1

    .line 146
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/adnet/b/c;->h()V

    .line 147
    new-instance p1, Lcom/bytedance/sdk/adnet/err/VAdError;

    const/16 v0, 0x262

    const-string v1, "Download temporary file was invalid!"

    invoke-direct {p1, v1, v0}, Lcom/bytedance/sdk/adnet/err/VAdError;-><init>(Ljava/lang/String;I)V

    invoke-static {p1}, Lcom/bytedance/sdk/adnet/core/m;->a(Lcom/bytedance/sdk/adnet/err/VAdError;)Lcom/bytedance/sdk/adnet/core/m;

    move-result-object p1

    return-object p1

    .line 151
    :cond_2
    invoke-direct {p0}, Lcom/bytedance/sdk/adnet/b/c;->h()V

    .line 152
    new-instance p1, Lcom/bytedance/sdk/adnet/err/VAdError;

    const/16 v0, 0x263

    const-string v1, "Request was Canceled!"

    invoke-direct {p1, v1, v0}, Lcom/bytedance/sdk/adnet/err/VAdError;-><init>(Ljava/lang/String;I)V

    invoke-static {p1}, Lcom/bytedance/sdk/adnet/core/m;->a(Lcom/bytedance/sdk/adnet/err/VAdError;)Lcom/bytedance/sdk/adnet/core/m;

    move-result-object p1

    return-object p1
.end method

.method public a(JJ)V
    .locals 2

    .line 321
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/c;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 322
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/b/c;->f:Lcom/bytedance/sdk/adnet/core/m$a;

    .line 323
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    instance-of v0, v1, Lcom/bytedance/sdk/adnet/b/c$a;

    if-eqz v0, :cond_0

    .line 326
    check-cast v1, Lcom/bytedance/sdk/adnet/b/c$a;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/bytedance/sdk/adnet/b/c$a;->a(JJ)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 323
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Lcom/bytedance/sdk/adnet/core/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 308
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/c;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 309
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/b/c;->f:Lcom/bytedance/sdk/adnet/core/m$a;

    .line 310
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 313
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/c;->c:Ljava/io/File;

    iget-object p1, p1, Lcom/bytedance/sdk/adnet/core/m;->b:Lcom/bytedance/sdk/adnet/face/a$a;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/adnet/core/m;->a(Ljava/lang/Object;Lcom/bytedance/sdk/adnet/face/a$a;)Lcom/bytedance/sdk/adnet/core/m;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/bytedance/sdk/adnet/core/m$a;->a(Lcom/bytedance/sdk/adnet/core/m;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 310
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Lcom/bytedance/sdk/adnet/core/HttpResponse;)[B
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/bytedance/sdk/adnet/err/f;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "Error occured when calling tmpFile.close"

    const-string v3, "Error occured when calling consumingContent"

    const-string v4, "Error occured when calling InputStream.close"

    .line 171
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/adnet/core/HttpResponse;->getContentLength()I

    move-result v0

    int-to-long v5, v0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    cmp-long v0, v5, v7

    if-gtz v0, :cond_0

    new-array v0, v9, [Ljava/lang/Object;

    const-string v10, "Response doesn\'t present Content-Length!"

    .line 173
    invoke-static {v10, v0}, Lcom/bytedance/sdk/adnet/core/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/adnet/b/c;->g()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 177
    invoke-direct/range {p0 .. p1}, Lcom/bytedance/sdk/adnet/b/c;->c(Lcom/bytedance/sdk/adnet/core/HttpResponse;)Z

    move-result v0

    const/4 v12, -0x1

    if-eqz v0, :cond_2

    add-long/2addr v5, v10

    const-string v13, "Content-Range"

    move-object/from16 v14, p1

    .line 184
    invoke-direct {v1, v14, v13}, Lcom/bytedance/sdk/adnet/b/c;->a(Lcom/bytedance/sdk/adnet/core/HttpResponse;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 186
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 187
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v9, "bytes "

    invoke-direct {v15, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "-"

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v16, 0x1

    sub-long v7, v5, v16

    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 188
    invoke-static {v13, v7}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v8

    if-eq v8, v12, :cond_1

    goto :goto_0

    .line 189
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The Content-Range Header is invalid Assume["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] vs Real["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "], please remove the temporary file ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/adnet/b/c;->g()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object/from16 v14, p1

    :cond_3
    :goto_0
    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    cmp-long v13, v5, v8

    if-lez v13, :cond_4

    .line 199
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/adnet/b/c;->f()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v13, v8, v5

    if-nez v13, :cond_4

    .line 201
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/adnet/b/c;->f()Ljava/io/File;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/adnet/b/c;->g()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 203
    invoke-virtual {v1, v5, v6, v5, v6}, Lcom/bytedance/sdk/adnet/b/c;->a(JJ)V

    return-object v7

    .line 207
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/adnet/b/c;->f()Ljava/io/File;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/adnet/b/c;->f()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/adnet/b/c;->f()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 213
    :cond_5
    :try_start_0
    new-instance v8, Ljava/io/RandomAccessFile;

    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/adnet/b/c;->g()Ljava/io/File;

    move-result-object v9

    const-string v13, "rw"

    invoke-direct {v8, v9, v13}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_6

    .line 217
    :try_start_1
    invoke-virtual {v8, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_1

    :cond_6
    const-wide/16 v12, 0x0

    .line 220
    invoke-virtual {v8, v12, v13}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-wide v10, v12

    goto :goto_1

    :catchall_0
    move-object v8, v7

    .line 228
    :catchall_1
    :goto_1
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/adnet/core/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 230
    :try_start_3
    invoke-direct/range {p0 .. p1}, Lcom/bytedance/sdk/adnet/b/c;->b(Lcom/bytedance/sdk/adnet/core/HttpResponse;)Z

    move-result v12

    if-eqz v12, :cond_7

    instance-of v12, v9, Ljava/util/zip/GZIPInputStream;

    if-nez v12, :cond_7

    .line 231
    new-instance v12, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v12, v9}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v9, v12

    :cond_7
    const/16 v12, 0x400

    new-array v12, v12, [B

    .line 237
    invoke-virtual {v1, v10, v11, v5, v6}, Lcom/bytedance/sdk/adnet/b/c;->a(JJ)V

    .line 239
    :cond_8
    invoke-virtual {v9, v12}, Ljava/io/InputStream;->read([B)I

    move-result v13

    const/4 v0, -0x1

    if-eq v13, v0, :cond_9

    const/4 v14, 0x0

    .line 240
    invoke-virtual {v8, v12, v14, v13}, Ljava/io/RandomAccessFile;->write([BII)V

    int-to-long v13, v13

    add-long/2addr v10, v13

    .line 245
    invoke-virtual {v1, v10, v11, v5, v6}, Lcom/bytedance/sdk/adnet/b/c;->a(JJ)V

    .line 247
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/adnet/b/c;->isCanceled()Z

    move-result v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    if-eqz v13, :cond_8

    :cond_9
    if-eqz v9, :cond_a

    .line 257
    :try_start_4
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    const/4 v5, 0x0

    new-array v0, v5, [Ljava/lang/Object;

    .line 259
    invoke-static {v4, v0}, Lcom/bytedance/sdk/adnet/core/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_a
    :goto_2
    const/4 v5, 0x0

    :goto_3
    if-eqz v9, :cond_b

    .line 265
    :try_start_5
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_4

    :catchall_3
    new-array v0, v5, [Ljava/lang/Object;

    .line 270
    invoke-static {v3, v0}, Lcom/bytedance/sdk/adnet/core/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    :cond_b
    :goto_4
    :try_start_6
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_7

    :catchall_4
    new-array v0, v5, [Ljava/lang/Object;

    .line 275
    invoke-static {v2, v0}, Lcom/bytedance/sdk/adnet/core/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    :catchall_5
    move-object v9, v7

    :catchall_6
    :try_start_7
    const-string v0, "Error occured when FileRequest.parseHttpResponse"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    .line 252
    invoke-static {v0, v6}, Lcom/bytedance/sdk/adnet/core/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/adnet/b/c;->h()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_a

    if-eqz v9, :cond_c

    .line 257
    :try_start_8
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    goto :goto_5

    :catchall_7
    new-array v0, v5, [Ljava/lang/Object;

    .line 259
    invoke-static {v4, v0}, Lcom/bytedance/sdk/adnet/core/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    :goto_5
    if-eqz v9, :cond_d

    .line 265
    :try_start_9
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    goto :goto_6

    :catchall_8
    new-array v0, v5, [Ljava/lang/Object;

    .line 270
    invoke-static {v3, v0}, Lcom/bytedance/sdk/adnet/core/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    :cond_d
    :goto_6
    :try_start_a
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    goto :goto_7

    :catchall_9
    new-array v0, v5, [Ljava/lang/Object;

    .line 275
    invoke-static {v2, v0}, Lcom/bytedance/sdk/adnet/core/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_7
    return-object v7

    :catchall_a
    move-exception v0

    if-eqz v9, :cond_e

    .line 257
    :try_start_b
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    goto :goto_8

    :catchall_b
    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    .line 259
    invoke-static {v4, v6}, Lcom/bytedance/sdk/adnet/core/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9

    :cond_e
    :goto_8
    const/4 v5, 0x0

    :goto_9
    if-eqz v9, :cond_f

    .line 265
    :try_start_c
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    goto :goto_a

    :catchall_c
    new-array v4, v5, [Ljava/lang/Object;

    .line 270
    invoke-static {v3, v4}, Lcom/bytedance/sdk/adnet/core/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    :cond_f
    :goto_a
    :try_start_d
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    goto :goto_b

    :catchall_d
    new-array v3, v5, [Ljava/lang/Object;

    .line 275
    invoke-static {v2, v3}, Lcom/bytedance/sdk/adnet/core/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 277
    :goto_b
    throw v0
.end method

.method public cancel()V
    .locals 2

    .line 113
    invoke-super {p0}, Lcom/bytedance/sdk/adnet/core/Request;->cancel()V

    .line 114
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/c;->e:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 115
    :try_start_0
    iput-object v1, p0, Lcom/bytedance/sdk/adnet/b/c;->f:Lcom/bytedance/sdk/adnet/core/m$a;

    .line 116
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public f()Ljava/io/File;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/c;->c:Ljava/io/File;

    return-object v0
.end method

.method public g()Ljava/io/File;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/c;->d:Ljava/io/File;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/adnet/err/a;
        }
    .end annotation

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bytes="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/sdk/adnet/b/c;->d:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Range"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Accept-Encoding"

    const-string v2, "identity"

    .line 126
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getPriority()Lcom/bytedance/sdk/adnet/core/Request$b;
    .locals 1

    .line 332
    sget-object v0, Lcom/bytedance/sdk/adnet/core/Request$b;->a:Lcom/bytedance/sdk/adnet/core/Request$b;

    return-object v0
.end method
