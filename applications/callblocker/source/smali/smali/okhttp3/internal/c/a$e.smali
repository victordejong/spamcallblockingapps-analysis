.class Lokhttp3/internal/c/a$e;
.super Lokhttp3/internal/c/a$a;
.source "Http1Codec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic e:Lokhttp3/internal/c/a;

.field private f:J


# direct methods
.method constructor <init>(Lokhttp3/internal/c/a;J)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 395
    iput-object p1, p0, Lokhttp3/internal/c/a$e;->e:Lokhttp3/internal/c/a;

    invoke-direct {p0, p1, v4}, Lokhttp3/internal/c/a$a;-><init>(Lokhttp3/internal/c/a;Lokhttp3/internal/c/a$1;)V

    .line 396
    iput-wide p2, p0, Lokhttp3/internal/c/a$e;->f:J

    .line 397
    iget-wide v0, p0, Lokhttp3/internal/c/a$e;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 398
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v4}, Lokhttp3/internal/c/a$e;->a(ZLjava/io/IOException;)V

    .line 400
    :cond_0
    return-void
.end method


# virtual methods
.method public a(La/c;J)J
    .locals 6

    .prologue
    const-wide/16 v0, -0x1

    const-wide/16 v4, 0x0

    .line 403
    cmp-long v2, p2, v4

    if-gez v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 404
    :cond_0
    iget-boolean v2, p0, Lokhttp3/internal/c/a$e;->b:Z

    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 405
    :cond_1
    iget-wide v2, p0, Lokhttp3/internal/c/a$e;->f:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 418
    :goto_0
    return-wide v0

    .line 407
    :cond_2
    iget-wide v2, p0, Lokhttp3/internal/c/a$e;->f:J

    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-super {p0, p1, v2, v3}, Lokhttp3/internal/c/a$a;->a(La/c;J)J

    move-result-wide v2

    .line 408
    cmp-long v0, v2, v0

    if-nez v0, :cond_3

    .line 409
    new-instance v0, Ljava/net/ProtocolException;

    const-string/jumbo v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 410
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lokhttp3/internal/c/a$e;->a(ZLjava/io/IOException;)V

    .line 411
    throw v0

    .line 414
    :cond_3
    iget-wide v0, p0, Lokhttp3/internal/c/a$e;->f:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lokhttp3/internal/c/a$e;->f:J

    .line 415
    iget-wide v0, p0, Lokhttp3/internal/c/a$e;->f:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_4

    .line 416
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lokhttp3/internal/c/a$e;->a(ZLjava/io/IOException;)V

    :cond_4
    move-wide v0, v2

    .line 418
    goto :goto_0
.end method

.method public close()V
    .locals 4

    .prologue
    .line 422
    iget-boolean v0, p0, Lokhttp3/internal/c/a$e;->b:Z

    if-eqz v0, :cond_0

    .line 429
    :goto_0
    return-void

    .line 424
    :cond_0
    iget-wide v0, p0, Lokhttp3/internal/c/a$e;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, Lokhttp3/internal/c;->a(La/s;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 425
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lokhttp3/internal/c/a$e;->a(ZLjava/io/IOException;)V

    .line 428
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/c/a$e;->b:Z

    goto :goto_0
.end method
