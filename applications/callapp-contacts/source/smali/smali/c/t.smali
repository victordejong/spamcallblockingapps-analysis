.class final Lc/t;
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
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0008\u0010\t\u001a\u00020\u0008H\u0016J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0018\u0010\u000c\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lokio/OutputStreamSink;",
        "Lokio/Sink;",
        "out",
        "Ljava/io/OutputStream;",
        "timeout",
        "Lokio/Timeout;",
        "(Ljava/io/OutputStream;Lokio/Timeout;)V",
        "close",
        "",
        "flush",
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
.field private final a:Ljava/io/OutputStream;

.field private final b:Lc/ae;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lc/ae;)V
    .locals 1

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeout"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/t;->a:Ljava/io/OutputStream;

    iput-object p2, p0, Lc/t;->b:Lc/ae;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 68
    iget-object v0, p0, Lc/t;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public final flush()V
    .locals 1

    .line 66
    iget-object v0, p0, Lc/t;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public final timeout()Lc/ae;
    .locals 1

    .line 70
    iget-object v0, p0, Lc/t;->b:Lc/ae;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sink("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lc/t;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final write(Lc/f;J)V
    .locals 7

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1073
    iget-wide v1, p1, Lc/f;->b:J

    const-wide/16 v3, 0x0

    move-wide v5, p2

    .line 47
    invoke-static/range {v1 .. v6}, Lc/c;->a(JJJ)V

    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    .line 50
    iget-object v0, p0, Lc/t;->b:Lc/ae;

    invoke-virtual {v0}, Lc/ae;->throwIfReached()V

    .line 51
    iget-object v0, p1, Lc/f;->a:Lc/y;

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    .line 52
    iget v1, v0, Lc/y;->c:I

    iget v2, v0, Lc/y;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    .line 200
    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    .line 53
    iget-object v1, p0, Lc/t;->a:Ljava/io/OutputStream;

    iget-object v3, v0, Lc/y;->a:[B

    iget v4, v0, Lc/y;->b:I

    invoke-virtual {v1, v3, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 55
    iget v1, v0, Lc/y;->b:I

    add-int/2addr v1, v2

    iput v1, v0, Lc/y;->b:I

    int-to-long v1, v2

    sub-long/2addr p2, v1

    .line 2073
    iget-wide v3, p1, Lc/f;->b:J

    sub-long/2addr v3, v1

    .line 3073
    iput-wide v3, p1, Lc/f;->b:J

    .line 59
    iget v1, v0, Lc/y;->b:I

    iget v2, v0, Lc/y;->c:I

    if-ne v1, v2, :cond_0

    .line 60
    invoke-virtual {v0}, Lc/y;->c()Lc/y;

    move-result-object v1

    iput-object v1, p1, Lc/f;->a:Lc/y;

    .line 61
    invoke-static {v0}, Lc/z;->a(Lc/y;)V

    goto :goto_0

    :cond_1
    return-void
.end method
