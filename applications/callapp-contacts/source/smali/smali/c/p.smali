.class final Lc/p;
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
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\nH\u0016J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lokio/InputStreamSource;",
        "Lokio/Source;",
        "input",
        "Ljava/io/InputStream;",
        "timeout",
        "Lokio/Timeout;",
        "(Ljava/io/InputStream;Lokio/Timeout;)V",
        "close",
        "",
        "read",
        "",
        "sink",
        "Lokio/Buffer;",
        "byteCount",
        "toString",
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
.field private final a:Ljava/io/InputStream;

.field private final b:Lc/ae;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lc/ae;)V
    .locals 1

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeout"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/p;->a:Ljava/io/InputStream;

    iput-object p2, p0, Lc/p;->b:Lc/ae;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 108
    iget-object v0, p0, Lc/p;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public final read(Lc/f;J)J
    .locals 3

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    const/4 v0, 0x1

    if-ltz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_5

    .line 87
    :try_start_0
    iget-object v1, p0, Lc/p;->b:Lc/ae;

    invoke-virtual {v1}, Lc/ae;->throwIfReached()V

    .line 88
    invoke-virtual {p1, v0}, Lc/f;->h(I)Lc/y;

    move-result-object v0

    .line 89
    iget v1, v0, Lc/y;->c:I

    rsub-int v1, v1, 0x2000

    int-to-long v1, v1

    .line 201
    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    long-to-int p3, p2

    .line 90
    iget-object p2, p0, Lc/p;->a:Ljava/io/InputStream;

    iget-object v1, v0, Lc/y;->a:[B

    iget v2, v0, Lc/y;->c:I

    invoke-virtual {p2, v1, v2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_3

    .line 92
    iget p2, v0, Lc/y;->b:I

    iget p3, v0, Lc/y;->c:I

    if-ne p2, p3, :cond_2

    .line 94
    invoke-virtual {v0}, Lc/y;->c()Lc/y;

    move-result-object p2

    iput-object p2, p1, Lc/f;->a:Lc/y;

    .line 95
    invoke-static {v0}, Lc/z;->a(Lc/y;)V

    :cond_2
    const-wide/16 p1, -0x1

    return-wide p1

    .line 99
    :cond_3
    iget p3, v0, Lc/y;->c:I

    add-int/2addr p3, p2

    iput p3, v0, Lc/y;->c:I

    .line 1073
    iget-wide v0, p1, Lc/f;->b:J

    int-to-long p2, p2

    add-long/2addr v0, p2

    .line 2073
    iput-wide v0, p1, Lc/f;->b:J
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p2

    :catch_0
    move-exception p1

    .line 3001
    invoke-static {p1}, Lc/q;->a(Ljava/lang/AssertionError;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 103
    new-instance p2, Ljava/io/IOException;

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    .line 104
    :cond_4
    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 85
    :cond_5
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

.method public final timeout()Lc/ae;
    .locals 1

    .line 110
    iget-object v0, p0, Lc/p;->b:Lc/ae;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "source("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lc/p;->a:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
