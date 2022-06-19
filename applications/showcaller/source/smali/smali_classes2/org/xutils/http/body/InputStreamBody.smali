.class public Lorg/xutils/http/body/InputStreamBody;
.super Ljava/lang/Object;
.source "InputStreamBody.java"

# interfaces
.implements Lorg/xutils/http/body/ProgressBody;


# instance fields
.field private a:Ljava/io/InputStream;

.field private b:Ljava/lang/String;

.field private final c:J

.field private d:J

.field private e:Lorg/xutils/http/ProgressHandler;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/xutils/http/body/InputStreamBody;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lorg/xutils/http/body/InputStreamBody;->d:J

    .line 4
    iput-object p1, p0, Lorg/xutils/http/body/InputStreamBody;->a:Ljava/io/InputStream;

    .line 5
    iput-object p2, p0, Lorg/xutils/http/body/InputStreamBody;->b:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lorg/xutils/http/body/InputStreamBody;->getInputStreamLength(Ljava/io/InputStream;)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/xutils/http/body/InputStreamBody;->c:J

    return-void
.end method

.method public static getInputStreamLength(Ljava/io/InputStream;)J
    .locals 2

    .line 1
    :try_start_0
    instance-of v0, p0, Ljava/io/FileInputStream;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v0, p0

    return-wide v0

    :catchall_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/xutils/common/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0
.end method


# virtual methods
.method public getContentLength()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/xutils/http/body/InputStreamBody;->c:J

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xutils/http/body/InputStreamBody;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "application/octet-stream"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/xutils/http/body/InputStreamBody;->b:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/xutils/http/body/InputStreamBody;->b:Ljava/lang/String;

    return-void
.end method

.method public setProgressHandler(Lorg/xutils/http/ProgressHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/xutils/http/body/InputStreamBody;->e:Lorg/xutils/http/ProgressHandler;

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lorg/xutils/http/body/InputStreamBody;->e:Lorg/xutils/http/ProgressHandler;

    const-string v6, "upload stopped!"

    if-eqz v0, :cond_1

    iget-wide v1, p0, Lorg/xutils/http/body/InputStreamBody;->c:J

    iget-wide v3, p0, Lorg/xutils/http/body/InputStreamBody;->d:J

    const/4 v5, 0x1

    invoke-interface/range {v0 .. v5}, Lorg/xutils/http/ProgressHandler;->updateProgress(JJZ)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Lorg/xutils/common/Callback$CancelledException;

    invoke-direct {p1, v6}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 3
    :cond_2
    :goto_1
    :try_start_0
    iget-object v1, p0, Lorg/xutils/http/body/InputStreamBody;->a:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 5
    iget-wide v2, p0, Lorg/xutils/http/body/InputStreamBody;->d:J

    int-to-long v4, v1

    add-long v10, v2, v4

    iput-wide v10, p0, Lorg/xutils/http/body/InputStreamBody;->d:J

    .line 6
    iget-object v7, p0, Lorg/xutils/http/body/InputStreamBody;->e:Lorg/xutils/http/ProgressHandler;

    if-eqz v7, :cond_2

    iget-wide v8, p0, Lorg/xutils/http/body/InputStreamBody;->c:J

    const/4 v12, 0x0

    invoke-interface/range {v7 .. v12}, Lorg/xutils/http/ProgressHandler;->updateProgress(JJZ)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 7
    :cond_3
    new-instance p1, Lorg/xutils/common/Callback$CancelledException;

    invoke-direct {p1, v6}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_4
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 9
    iget-object v0, p0, Lorg/xutils/http/body/InputStreamBody;->e:Lorg/xutils/http/ProgressHandler;

    if-eqz v0, :cond_5

    .line 10
    iget-wide v1, p0, Lorg/xutils/http/body/InputStreamBody;->c:J

    iget-wide v3, p0, Lorg/xutils/http/body/InputStreamBody;->d:J

    const/4 v5, 0x1

    invoke-interface/range {v0 .. v5}, Lorg/xutils/http/ProgressHandler;->updateProgress(JJZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :cond_5
    iget-object p1, p0, Lorg/xutils/http/body/InputStreamBody;->a:Ljava/io/InputStream;

    invoke-static {p1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/xutils/http/body/InputStreamBody;->a:Ljava/io/InputStream;

    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 12
    throw p1
.end method
