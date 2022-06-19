.class final Lcom/squareup/okhttp/internal/framed/n$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/squareup/okhttp/internal/framed/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/framed/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final b:Lokio/BufferedSink;

.field private final c:Lokio/Buffer;

.field private final d:Lokio/BufferedSink;

.field private final e:Z

.field private f:Z


# direct methods
.method constructor <init>(Lokio/BufferedSink;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/n$b;->b:Lokio/BufferedSink;

    iput-boolean p2, p0, Lcom/squareup/okhttp/internal/framed/n$b;->e:Z

    new-instance p1, Ljava/util/zip/Deflater;

    invoke-direct {p1}, Ljava/util/zip/Deflater;-><init>()V

    sget-object p2, Lcom/squareup/okhttp/internal/framed/n;->a:[B

    invoke-virtual {p1, p2}, Ljava/util/zip/Deflater;->setDictionary([B)V

    new-instance p2, Lokio/Buffer;

    invoke-direct {p2}, Lokio/Buffer;-><init>()V

    iput-object p2, p0, Lcom/squareup/okhttp/internal/framed/n$b;->c:Lokio/Buffer;

    new-instance v0, Lokio/DeflaterSink;

    invoke-direct {v0, p2, p1}, Lokio/DeflaterSink;-><init>(Lokio/Sink;Ljava/util/zip/Deflater;)V

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/n$b;->d:Lokio/BufferedSink;

    return-void
.end method

.method private p(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/framed/e;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/n$b;->d:Lokio/BufferedSink;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/okhttp/internal/framed/e;

    iget-object v2, v2, Lcom/squareup/okhttp/internal/framed/e;->a:Lokio/ByteString;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/n$b;->d:Lokio/BufferedSink;

    invoke-virtual {v2}, Lokio/ByteString;->size()I

    move-result v4

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/n$b;->d:Lokio/BufferedSink;

    invoke-interface {v3, v2}, Lokio/BufferedSink;->write(Lokio/ByteString;)Lokio/BufferedSink;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/okhttp/internal/framed/e;

    iget-object v2, v2, Lcom/squareup/okhttp/internal/framed/e;->b:Lokio/ByteString;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/n$b;->d:Lokio/BufferedSink;

    invoke-virtual {v2}, Lokio/ByteString;->size()I

    move-result v4

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/n$b;->d:Lokio/BufferedSink;

    invoke-interface {v3, v2}, Lokio/BufferedSink;->write(Lokio/ByteString;)Lokio/BufferedSink;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/n$b;->d:Lokio/BufferedSink;

    invoke-interface {p1}, Lokio/BufferedSink;->flush()V

    return-void
.end method


# virtual methods
.method public declared-synchronized Q(ZZIILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/framed/e;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/framed/n$b;->f:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p5}, Lcom/squareup/okhttp/internal/framed/n$b;->p(Ljava/util/List;)V

    const-wide/16 v0, 0xa

    iget-object p5, p0, Lcom/squareup/okhttp/internal/framed/n$b;->c:Lokio/Buffer;

    invoke-virtual {p5}, Lokio/Buffer;->size()J

    move-result-wide v2

    add-long/2addr v2, v0

    long-to-int p5, v2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    or-int/2addr p1, p2

    iget-object p2, p0, Lcom/squareup/okhttp/internal/framed/n$b;->b:Lokio/BufferedSink;

    const v1, -0x7ffcffff

    invoke-interface {p2, v1}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    iget-object p2, p0, Lcom/squareup/okhttp/internal/framed/n$b;->b:Lokio/BufferedSink;

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    const v1, 0xffffff

    and-int/2addr p5, v1

    or-int/2addr p1, p5

    invoke-interface {p2, p1}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/n$b;->b:Lokio/BufferedSink;

    const p2, 0x7fffffff

    and-int/2addr p3, p2

    invoke-interface {p1, p3}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/n$b;->b:Lokio/BufferedSink;

    and-int/2addr p2, p4

    invoke-interface {p1, p2}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/n$b;->b:Lokio/BufferedSink;

    invoke-interface {p1, v0}, Lokio/BufferedSink;->writeShort(I)Lokio/BufferedSink;

    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/n$b;->b:Lokio/BufferedSink;

    iget-object p2, p0, Lcom/squareup/okhttp/internal/framed/n$b;->c:Lokio/Buffer;

    invoke-interface {p1, p2}, Lokio/BufferedSink;->writeAll(Lokio/Source;)J

    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/n$b;->b:Lokio/BufferedSink;

    invoke-interface {p1}, Lokio/BufferedSink;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized S(Lcom/squareup/okhttp/internal/framed/m;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/framed/n$b;->f:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/framed/m;->l()I

    move-result v0

    mul-int/lit8 v1, v0, 0x8

    add-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/n$b;->b:Lokio/BufferedSink;

    const v3, -0x7ffcfffc

    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/n$b;->b:Lokio/BufferedSink;

    const v3, 0xffffff

    and-int/2addr v1, v3

    const/4 v4, 0x0

    or-int/2addr v1, v4

    invoke-interface {v2, v1}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/n$b;->b:Lokio/BufferedSink;

    invoke-interface {v1, v0}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    :goto_0
    const/16 v0, 0xa

    if-gt v4, v0, :cond_1

    invoke-virtual {p1, v4}, Lcom/squareup/okhttp/internal/framed/m;->h(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v4}, Lcom/squareup/okhttp/internal/framed/m;->b(I)I

    move-result v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/n$b;->b:Lokio/BufferedSink;

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    and-int v2, v4, v3

    or-int/2addr v0, v2

    invoke-interface {v1, v0}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/n$b;->b:Lokio/BufferedSink;

    invoke-virtual {p1, v4}, Lcom/squareup/okhttp/internal/framed/m;->c(I)I

    move-result v1

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/n$b;->b:Lokio/BufferedSink;

    invoke-interface {p1}, Lokio/BufferedSink;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method a(IILokio/Buffer;I)V
    .locals 5

    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/framed/n$b;->f:Z

    if-nez v0, :cond_2

    int-to-long v0, p4

    const-wide/32 v2, 0xffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/n$b;->b:Lokio/BufferedSink;

    const v3, 0x7fffffff

    and-int/2addr p1, v3

    invoke-interface {v2, p1}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/n$b;->b:Lokio/BufferedSink;

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x18

    const v2, 0xffffff

    and-int/2addr v2, p4

    or-int/2addr p2, v2

    invoke-interface {p1, p2}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    if-lez p4, :cond_0

    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/n$b;->b:Lokio/BufferedSink;

    invoke-interface {p1, p3, v0, v1}, Lokio/Sink;->write(Lokio/Buffer;J)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "FRAME_TOO_LARGE max size is 16Mib: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized close()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/framed/n$b;->f:Z

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/n$b;->b:Lokio/BufferedSink;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/n$b;->d:Lokio/BufferedSink;

    invoke-static {v0, v1}, Lcom/squareup/okhttp/u/i;->b(Ljava/io/Closeable;Ljava/io/Closeable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connectionPreface()V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized data(ZILokio/Buffer;I)V
    .locals 0

    monitor-enter p0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/squareup/okhttp/internal/framed/n$b;->a(IILokio/Buffer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized f(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/framed/n$b;->f:Z

    if-nez v0, :cond_1

    iget v0, p2, Lcom/squareup/okhttp/internal/framed/ErrorCode;->spdyRstCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/n$b;->b:Lokio/BufferedSink;

    const v1, -0x7ffcfffd

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/n$b;->b:Lokio/BufferedSink;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/n$b;->b:Lokio/BufferedSink;

    const v1, 0x7fffffff

    and-int/2addr p1, v1

    invoke-interface {v0, p1}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/n$b;->b:Lokio/BufferedSink;

    iget p2, p2, Lcom/squareup/okhttp/internal/framed/ErrorCode;->spdyRstCode:I

    invoke-interface {p1, p2}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/n$b;->b:Lokio/BufferedSink;

    invoke-interface {p1}, Lokio/BufferedSink;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized flush()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/framed/n$b;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/n$b;->b:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public k(Lcom/squareup/okhttp/internal/framed/m;)V
    .locals 0

    return-void
.end method

.method public maxDataLength()I
    .locals 1

    const/16 v0, 0x3fff

    return v0
.end method

.method public declared-synchronized ping(ZII)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean p3, p0, Lcom/squareup/okhttp/internal/framed/n$b;->f:Z

    if-nez p3, :cond_3

    iget-boolean p3, p0, Lcom/squareup/okhttp/internal/framed/n$b;->e:Z

    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eq p3, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/n$b;->b:Lokio/BufferedSink;

    const p3, -0x7ffcfffa

    invoke-interface {p1, p3}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/n$b;->b:Lokio/BufferedSink;

    const/4 p3, 0x4

    invoke-interface {p1, p3}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/n$b;->b:Lokio/BufferedSink;

    invoke-interface {p1, p2}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/n$b;->b:Lokio/BufferedSink;

    invoke-interface {p1}, Lokio/BufferedSink;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "payload != reply"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public pushPromise(IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/framed/e;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public declared-synchronized t(ILcom/squareup/okhttp/internal/framed/ErrorCode;[B)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean p3, p0, Lcom/squareup/okhttp/internal/framed/n$b;->f:Z

    if-nez p3, :cond_1

    iget p3, p2, Lcom/squareup/okhttp/internal/framed/ErrorCode;->spdyGoAwayCode:I

    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    iget-object p3, p0, Lcom/squareup/okhttp/internal/framed/n$b;->b:Lokio/BufferedSink;

    const v0, -0x7ffcfff9

    invoke-interface {p3, v0}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    iget-object p3, p0, Lcom/squareup/okhttp/internal/framed/n$b;->b:Lokio/BufferedSink;

    const/16 v0, 0x8

    invoke-interface {p3, v0}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    iget-object p3, p0, Lcom/squareup/okhttp/internal/framed/n$b;->b:Lokio/BufferedSink;

    invoke-interface {p3, p1}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/n$b;->b:Lokio/BufferedSink;

    iget p2, p2, Lcom/squareup/okhttp/internal/framed/ErrorCode;->spdyGoAwayCode:I

    invoke-interface {p1, p2}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/n$b;->b:Lokio/BufferedSink;

    invoke-interface {p1}, Lokio/BufferedSink;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "errorCode.spdyGoAwayCode == -1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized windowUpdate(IJ)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/framed/n$b;->f:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-eqz v2, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p2, v0

    if-gtz v2, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/n$b;->b:Lokio/BufferedSink;

    const v1, -0x7ffcfff7

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/n$b;->b:Lokio/BufferedSink;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/n$b;->b:Lokio/BufferedSink;

    invoke-interface {v0, p1}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/n$b;->b:Lokio/BufferedSink;

    long-to-int p3, p2

    invoke-interface {p1, p3}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/n$b;->b:Lokio/BufferedSink;

    invoke-interface {p1}, Lokio/BufferedSink;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "windowSizeIncrement must be between 1 and 0x7fffffff: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
