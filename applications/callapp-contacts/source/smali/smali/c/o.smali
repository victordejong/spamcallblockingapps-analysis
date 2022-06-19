.class public final Lc/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/ad;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005B\u0017\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0006\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u000fH\u0016J\u0016\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u000fJ\u0006\u0010\u0014\u001a\u00020\u000bJ\u0008\u0010\u0015\u001a\u00020\rH\u0002J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lokio/InflaterSource;",
        "Lokio/Source;",
        "source",
        "inflater",
        "Ljava/util/zip/Inflater;",
        "(Lokio/Source;Ljava/util/zip/Inflater;)V",
        "Lokio/BufferedSource;",
        "(Lokio/BufferedSource;Ljava/util/zip/Inflater;)V",
        "bufferBytesHeldByInflater",
        "",
        "closed",
        "",
        "close",
        "",
        "read",
        "",
        "sink",
        "Lokio/Buffer;",
        "byteCount",
        "readOrInflate",
        "refill",
        "releaseBytesAfterInflate",
        "timeout",
        "Lokio/Timeout;",
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
.field private a:I

.field private b:Z

.field private final c:Lc/h;

.field private final d:Ljava/util/zip/Inflater;


# direct methods
.method public constructor <init>(Lc/ad;Ljava/util/zip/Inflater;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4001
    invoke-static {p1}, Lc/r;->a(Lc/ad;)Lc/h;

    move-result-object p1

    .line 44
    invoke-direct {p0, p1, p2}, Lc/o;-><init>(Lc/h;Ljava/util/zip/Inflater;)V

    return-void
.end method

.method public constructor <init>(Lc/h;Ljava/util/zip/Inflater;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/o;->c:Lc/h;

    iput-object p2, p0, Lc/o;->d:Ljava/util/zip/Inflater;

    return-void
.end method


# virtual methods
.method public final a(Lc/f;J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-ltz v3, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_7

    .line 67
    iget-boolean v4, p0, Lc/o;->b:Z

    xor-int/2addr v4, v0

    if-eqz v4, :cond_6

    if-nez v3, :cond_1

    return-wide v1

    .line 72
    :cond_1
    :try_start_0
    invoke-virtual {p1, v0}, Lc/f;->h(I)Lc/y;

    move-result-object v0

    .line 73
    iget v3, v0, Lc/y;->c:I

    rsub-int v3, v3, 0x2000

    int-to-long v3, v3

    .line 149
    invoke-static {p2, p3, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    long-to-int p3, p2

    .line 1109
    iget-object p2, p0, Lc/o;->d:Ljava/util/zip/Inflater;

    invoke-virtual {p2}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1112
    iget-object p2, p0, Lc/o;->c:Lc/h;

    invoke-interface {p2}, Lc/h;->e()Z

    move-result p2

    if-nez p2, :cond_2

    .line 1115
    iget-object p2, p0, Lc/o;->c:Lc/h;

    invoke-interface {p2}, Lc/h;->b()Lc/f;

    move-result-object p2

    iget-object p2, p2, Lc/f;->a:Lc/y;

    invoke-static {p2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    .line 1116
    iget v3, p2, Lc/y;->c:I

    iget v4, p2, Lc/y;->b:I

    sub-int/2addr v3, v4

    iput v3, p0, Lc/o;->a:I

    .line 1117
    iget-object v3, p0, Lc/o;->d:Ljava/util/zip/Inflater;

    iget-object v4, p2, Lc/y;->a:[B

    iget p2, p2, Lc/y;->b:I

    iget v5, p0, Lc/o;->a:I

    invoke-virtual {v3, v4, p2, v5}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 79
    :cond_2
    iget-object p2, p0, Lc/o;->d:Ljava/util/zip/Inflater;

    iget-object v3, v0, Lc/y;->a:[B

    iget v4, v0, Lc/y;->c:I

    invoke-virtual {p2, v3, v4, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result p2

    .line 1123
    iget p3, p0, Lc/o;->a:I

    if-eqz p3, :cond_3

    .line 1124
    iget-object v3, p0, Lc/o;->d:Ljava/util/zip/Inflater;

    invoke-virtual {v3}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v3

    sub-int/2addr p3, v3

    .line 1125
    iget v3, p0, Lc/o;->a:I

    sub-int/2addr v3, p3

    iput v3, p0, Lc/o;->a:I

    .line 1126
    iget-object v3, p0, Lc/o;->c:Lc/h;

    int-to-long v4, p3

    invoke-interface {v3, v4, v5}, Lc/h;->h(J)V

    :cond_3
    if-lez p2, :cond_4

    .line 86
    iget p3, v0, Lc/y;->c:I

    add-int/2addr p3, p2

    iput p3, v0, Lc/y;->c:I

    .line 2073
    iget-wide v0, p1, Lc/f;->b:J

    int-to-long p2, p2

    add-long/2addr v0, p2

    .line 3073
    iput-wide v0, p1, Lc/f;->b:J

    return-wide p2

    .line 92
    :cond_4
    iget p2, v0, Lc/y;->b:I

    iget p3, v0, Lc/y;->c:I

    if-ne p2, p3, :cond_5

    .line 93
    invoke-virtual {v0}, Lc/y;->c()Lc/y;

    move-result-object p2

    iput-object p2, p1, Lc/f;->a:Lc/y;

    .line 94
    invoke-static {v0}, Lc/z;->a(Lc/y;)V
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-wide v1

    :catch_0
    move-exception p1

    .line 99
    new-instance p2, Ljava/io/IOException;

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    .line 67
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 66
    :cond_7
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "byteCount < 0: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    iget-boolean v0, p0, Lc/o;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lc/o;->d:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    const/4 v0, 0x1

    .line 135
    iput-boolean v0, p0, Lc/o;->b:Z

    .line 136
    iget-object v0, p0, Lc/o;->c:Lc/h;

    invoke-interface {v0}, Lc/h;->close()V

    return-void
.end method

.method public final read(Lc/f;J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lc/o;->a(Lc/f;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    return-wide v0

    .line 51
    :cond_0
    iget-object v0, p0, Lc/o;->d:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->finished()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lc/o;->d:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 52
    :cond_1
    iget-object v0, p0, Lc/o;->c:Lc/h;

    invoke-interface {v0}, Lc/h;->e()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/io/EOFException;

    const-string p2, "source exhausted prematurely"

    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_3
    :goto_1
    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method public final timeout()Lc/ae;
    .locals 1

    .line 129
    iget-object v0, p0, Lc/o;->c:Lc/h;

    invoke-interface {v0}, Lc/h;->timeout()Lc/ae;

    move-result-object v0

    return-object v0
.end method
