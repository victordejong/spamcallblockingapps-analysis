.class public final Lc/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/ab;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005B\u0017\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0006\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\tH\u0003J\r\u0010\u000e\u001a\u00020\u000bH\u0000\u00a2\u0006\u0002\u0008\u000fJ\u0008\u0010\u0010\u001a\u00020\u000bH\u0016J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u0018\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0016R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lokio/DeflaterSink;",
        "Lokio/Sink;",
        "sink",
        "deflater",
        "Ljava/util/zip/Deflater;",
        "(Lokio/Sink;Ljava/util/zip/Deflater;)V",
        "Lokio/BufferedSink;",
        "(Lokio/BufferedSink;Ljava/util/zip/Deflater;)V",
        "closed",
        "",
        "close",
        "",
        "deflate",
        "syncFlush",
        "finishDeflate",
        "finishDeflate$okio",
        "flush",
        "timeout",
        "Lokio/Timeout;",
        "toString",
        "",
        "write",
        "source",
        "Lokio/Buffer;",
        "byteCount",
        "",
        "okio"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field private a:Z

.field private final b:Lc/g;

.field private final c:Ljava/util/zip/Deflater;


# direct methods
.method public constructor <init>(Lc/ab;Ljava/util/zip/Deflater;)V
    .locals 1

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6001
    invoke-static {p1}, Lc/r;->a(Lc/ab;)Lc/g;

    move-result-object p1

    .line 48
    invoke-direct {p0, p1, p2}, Lc/j;-><init>(Lc/g;Ljava/util/zip/Deflater;)V

    return-void
.end method

.method public constructor <init>(Lc/g;Ljava/util/zip/Deflater;)V
    .locals 1

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/j;->b:Lc/g;

    iput-object p2, p0, Lc/j;->c:Ljava/util/zip/Deflater;

    return-void
.end method

.method private final a(Z)V
    .locals 7

    .line 80
    iget-object v0, p0, Lc/j;->b:Lc/g;

    invoke-interface {v0}, Lc/g;->b()Lc/f;

    move-result-object v0

    :cond_0
    :goto_0
    const/4 v1, 0x1

    .line 82
    invoke-virtual {v0, v1}, Lc/f;->h(I)Lc/y;

    move-result-object v1

    if-eqz p1, :cond_1

    .line 89
    iget-object v2, p0, Lc/j;->c:Ljava/util/zip/Deflater;

    iget-object v3, v1, Lc/y;->a:[B

    iget v4, v1, Lc/y;->c:I

    iget v5, v1, Lc/y;->c:I

    rsub-int v5, v5, 0x2000

    const/4 v6, 0x2

    invoke-virtual {v2, v3, v4, v5, v6}, Ljava/util/zip/Deflater;->deflate([BIII)I

    move-result v2

    goto :goto_1

    .line 91
    :cond_1
    iget-object v2, p0, Lc/j;->c:Ljava/util/zip/Deflater;

    iget-object v3, v1, Lc/y;->a:[B

    iget v4, v1, Lc/y;->c:I

    iget v5, v1, Lc/y;->c:I

    rsub-int v5, v5, 0x2000

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v2

    :goto_1
    if-lez v2, :cond_2

    .line 95
    iget v3, v1, Lc/y;->c:I

    add-int/2addr v3, v2

    iput v3, v1, Lc/y;->c:I

    .line 4073
    iget-wide v3, v0, Lc/f;->b:J

    int-to-long v1, v2

    add-long/2addr v3, v1

    .line 5073
    iput-wide v3, v0, Lc/f;->b:J

    .line 97
    iget-object v1, p0, Lc/j;->b:Lc/g;

    invoke-interface {v1}, Lc/g;->c()Lc/g;

    goto :goto_0

    .line 98
    :cond_2
    iget-object v2, p0, Lc/j;->c:Ljava/util/zip/Deflater;

    invoke-virtual {v2}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    iget p1, v1, Lc/y;->b:I

    iget v2, v1, Lc/y;->c:I

    if-ne p1, v2, :cond_3

    .line 101
    invoke-virtual {v1}, Lc/y;->c()Lc/y;

    move-result-object p1

    iput-object p1, v0, Lc/f;->a:Lc/y;

    .line 102
    invoke-static {v1}, Lc/z;->a(Lc/y;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    iget-boolean v0, p0, Lc/j;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 5116
    :try_start_0
    iget-object v1, p0, Lc/j;->c:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->finish()V

    const/4 v1, 0x0

    .line 5117
    invoke-direct {p0, v1}, Lc/j;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 134
    :goto_0
    :try_start_1
    iget-object v1, p0, Lc/j;->c:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    if-nez v0, :cond_1

    move-object v0, v1

    .line 140
    :cond_1
    :goto_1
    :try_start_2
    iget-object v1, p0, Lc/j;->b:Lc/g;

    invoke-interface {v1}, Lc/g;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    :goto_2
    const/4 v1, 0x1

    .line 145
    iput-boolean v1, p0, Lc/j;->a:Z

    if-nez v0, :cond_3

    return-void

    .line 147
    :cond_3
    throw v0
.end method

.method public final flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 111
    invoke-direct {p0, v0}, Lc/j;->a(Z)V

    .line 112
    iget-object v0, p0, Lc/j;->b:Lc/g;

    invoke-interface {v0}, Lc/g;->flush()V

    return-void
.end method

.method public final timeout()Lc/ae;
    .locals 1

    .line 150
    iget-object v0, p0, Lc/j;->b:Lc/g;

    invoke-interface {v0}, Lc/g;->timeout()Lc/ae;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DeflaterSink("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lc/j;->b:Lc/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final write(Lc/f;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1073
    iget-wide v1, p1, Lc/f;->b:J

    const-wide/16 v3, 0x0

    move-wide v5, p2

    .line 54
    invoke-static/range {v1 .. v6}, Lc/c;->a(JJJ)V

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    .line 59
    iget-object v0, p1, Lc/f;->a:Lc/y;

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    .line 60
    iget v1, v0, Lc/y;->c:I

    iget v2, v0, Lc/y;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    .line 163
    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    .line 61
    iget-object v1, p0, Lc/j;->c:Ljava/util/zip/Deflater;

    iget-object v3, v0, Lc/y;->a:[B

    iget v4, v0, Lc/y;->b:I

    invoke-virtual {v1, v3, v4, v2}, Ljava/util/zip/Deflater;->setInput([BII)V

    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, v1}, Lc/j;->a(Z)V

    .line 2073
    iget-wide v3, p1, Lc/f;->b:J

    int-to-long v5, v2

    sub-long/2addr v3, v5

    .line 3073
    iput-wide v3, p1, Lc/f;->b:J

    .line 68
    iget v1, v0, Lc/y;->b:I

    add-int/2addr v1, v2

    iput v1, v0, Lc/y;->b:I

    .line 69
    iget v1, v0, Lc/y;->b:I

    iget v2, v0, Lc/y;->c:I

    if-ne v1, v2, :cond_0

    .line 70
    invoke-virtual {v0}, Lc/y;->c()Lc/y;

    move-result-object v1

    iput-object v1, p1, Lc/f;->a:Lc/y;

    .line 71
    invoke-static {v0}, Lc/z;->a(Lc/y;)V

    :cond_0
    sub-long/2addr p2, v5

    goto :goto_0

    :cond_1
    return-void
.end method
