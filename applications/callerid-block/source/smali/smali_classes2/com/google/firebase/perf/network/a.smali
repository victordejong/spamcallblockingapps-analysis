.class public final Lcom/google/firebase/perf/network/a;
.super Ljava/io/InputStream;
.source ""


# instance fields
.field private final b:Ljava/io/InputStream;

.field private final c:Lcom/google/firebase/perf/e/a;

.field private final d:Lcom/google/firebase/perf/util/Timer;

.field private e:J

.field private f:J

.field private g:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/google/firebase/perf/e/a;Lcom/google/firebase/perf/util/Timer;)V
    .locals 2

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/firebase/perf/network/a;->e:J

    iput-wide v0, p0, Lcom/google/firebase/perf/network/a;->g:J

    iput-object p3, p0, Lcom/google/firebase/perf/network/a;->d:Lcom/google/firebase/perf/util/Timer;

    iput-object p1, p0, Lcom/google/firebase/perf/network/a;->b:Ljava/io/InputStream;

    iput-object p2, p0, Lcom/google/firebase/perf/network/a;->c:Lcom/google/firebase/perf/e/a;

    invoke-virtual {p2}, Lcom/google/firebase/perf/e/a;->e()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/firebase/perf/network/a;->f:J

    return-void
.end method


# virtual methods
.method public available()I
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/a;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/firebase/perf/network/a;->c:Lcom/google/firebase/perf/e/a;

    iget-object v2, p0, Lcom/google/firebase/perf/network/a;->d:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v2}, Lcom/google/firebase/perf/util/Timer;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/perf/e/a;->v(J)Lcom/google/firebase/perf/e/a;

    iget-object v1, p0, Lcom/google/firebase/perf/network/a;->c:Lcom/google/firebase/perf/e/a;

    invoke-static {v1}, Lcom/google/firebase/perf/network/h;->d(Lcom/google/firebase/perf/e/a;)V

    throw v0
.end method

.method public close()V
    .locals 7

    iget-object v0, p0, Lcom/google/firebase/perf/network/a;->d:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v0}, Lcom/google/firebase/perf/util/Timer;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/firebase/perf/network/a;->g:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    iput-wide v0, p0, Lcom/google/firebase/perf/network/a;->g:J

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/a;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iget-wide v0, p0, Lcom/google/firebase/perf/network/a;->e:J

    cmp-long v2, v0, v4

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/firebase/perf/network/a;->c:Lcom/google/firebase/perf/e/a;

    invoke-virtual {v2, v0, v1}, Lcom/google/firebase/perf/e/a;->s(J)Lcom/google/firebase/perf/e/a;

    :cond_1
    iget-wide v0, p0, Lcom/google/firebase/perf/network/a;->f:J

    cmp-long v2, v0, v4

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/firebase/perf/network/a;->c:Lcom/google/firebase/perf/e/a;

    invoke-virtual {v2, v0, v1}, Lcom/google/firebase/perf/e/a;->w(J)Lcom/google/firebase/perf/e/a;

    :cond_2
    iget-object v0, p0, Lcom/google/firebase/perf/network/a;->c:Lcom/google/firebase/perf/e/a;

    iget-wide v1, p0, Lcom/google/firebase/perf/network/a;->g:J

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/e/a;->v(J)Lcom/google/firebase/perf/e/a;

    iget-object v0, p0, Lcom/google/firebase/perf/network/a;->c:Lcom/google/firebase/perf/e/a;

    invoke-virtual {v0}, Lcom/google/firebase/perf/e/a;->b()Lcom/google/firebase/perf/v1/NetworkRequestMetric;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/firebase/perf/network/a;->c:Lcom/google/firebase/perf/e/a;

    iget-object v2, p0, Lcom/google/firebase/perf/network/a;->d:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v2}, Lcom/google/firebase/perf/util/Timer;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/perf/e/a;->v(J)Lcom/google/firebase/perf/e/a;

    iget-object v1, p0, Lcom/google/firebase/perf/network/a;->c:Lcom/google/firebase/perf/e/a;

    invoke-static {v1}, Lcom/google/firebase/perf/network/h;->d(Lcom/google/firebase/perf/e/a;)V

    throw v0
.end method

.method public mark(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/network/a;->b:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    return-void
.end method

.method public markSupported()Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/network/a;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/a;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iget-object v1, p0, Lcom/google/firebase/perf/network/a;->d:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Timer;->b()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/firebase/perf/network/a;->f:J

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    iput-wide v1, p0, Lcom/google/firebase/perf/network/a;->f:J

    :cond_0
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    iget-wide v3, p0, Lcom/google/firebase/perf/network/a;->g:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    iput-wide v1, p0, Lcom/google/firebase/perf/network/a;->g:J

    iget-object v3, p0, Lcom/google/firebase/perf/network/a;->c:Lcom/google/firebase/perf/e/a;

    invoke-virtual {v3, v1, v2}, Lcom/google/firebase/perf/e/a;->v(J)Lcom/google/firebase/perf/e/a;

    iget-object v1, p0, Lcom/google/firebase/perf/network/a;->c:Lcom/google/firebase/perf/e/a;

    invoke-virtual {v1}, Lcom/google/firebase/perf/e/a;->b()Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    goto :goto_0

    :cond_1
    iget-wide v1, p0, Lcom/google/firebase/perf/network/a;->e:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/firebase/perf/network/a;->e:J

    iget-object v3, p0, Lcom/google/firebase/perf/network/a;->c:Lcom/google/firebase/perf/e/a;

    invoke-virtual {v3, v1, v2}, Lcom/google/firebase/perf/e/a;->s(J)Lcom/google/firebase/perf/e/a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/firebase/perf/network/a;->c:Lcom/google/firebase/perf/e/a;

    iget-object v2, p0, Lcom/google/firebase/perf/network/a;->d:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v2}, Lcom/google/firebase/perf/util/Timer;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/perf/e/a;->v(J)Lcom/google/firebase/perf/e/a;

    iget-object v1, p0, Lcom/google/firebase/perf/network/a;->c:Lcom/google/firebase/perf/e/a;

    invoke-static {v1}, Lcom/google/firebase/perf/network/h;->d(Lcom/google/firebase/perf/e/a;)V

    throw v0
.end method

.method public read([B)I
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/a;->b:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    iget-object v0, p0, Lcom/google/firebase/perf/network/a;->d:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v0}, Lcom/google/firebase/perf/util/Timer;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/firebase/perf/network/a;->f:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    iput-wide v0, p0, Lcom/google/firebase/perf/network/a;->f:J

    :cond_0
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    iget-wide v2, p0, Lcom/google/firebase/perf/network/a;->g:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    iput-wide v0, p0, Lcom/google/firebase/perf/network/a;->g:J

    iget-object v2, p0, Lcom/google/firebase/perf/network/a;->c:Lcom/google/firebase/perf/e/a;

    invoke-virtual {v2, v0, v1}, Lcom/google/firebase/perf/e/a;->v(J)Lcom/google/firebase/perf/e/a;

    iget-object v0, p0, Lcom/google/firebase/perf/network/a;->c:Lcom/google/firebase/perf/e/a;

    invoke-virtual {v0}, Lcom/google/firebase/perf/e/a;->b()Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/google/firebase/perf/network/a;->e:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/firebase/perf/network/a;->e:J

    iget-object v2, p0, Lcom/google/firebase/perf/network/a;->c:Lcom/google/firebase/perf/e/a;

    invoke-virtual {v2, v0, v1}, Lcom/google/firebase/perf/e/a;->s(J)Lcom/google/firebase/perf/e/a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return p1

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/google/firebase/perf/network/a;->c:Lcom/google/firebase/perf/e/a;

    iget-object v1, p0, Lcom/google/firebase/perf/network/a;->d:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Timer;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/e/a;->v(J)Lcom/google/firebase/perf/e/a;

    iget-object v0, p0, Lcom/google/firebase/perf/network/a;->c:Lcom/google/firebase/perf/e/a;

    invoke-static {v0}, Lcom/google/firebase/perf/network/h;->d(Lcom/google/firebase/perf/e/a;)V

    throw p1
.end method

.method public read([BII)I
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/a;->b:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    iget-object p2, p0, Lcom/google/firebase/perf/network/a;->d:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {p2}, Lcom/google/firebase/perf/util/Timer;->b()J

    move-result-wide p2

    iget-wide v0, p0, Lcom/google/firebase/perf/network/a;->f:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iput-wide p2, p0, Lcom/google/firebase/perf/network/a;->f:J

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    iget-wide v0, p0, Lcom/google/firebase/perf/network/a;->g:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    iput-wide p2, p0, Lcom/google/firebase/perf/network/a;->g:J

    iget-object v0, p0, Lcom/google/firebase/perf/network/a;->c:Lcom/google/firebase/perf/e/a;

    invoke-virtual {v0, p2, p3}, Lcom/google/firebase/perf/e/a;->v(J)Lcom/google/firebase/perf/e/a;

    iget-object p2, p0, Lcom/google/firebase/perf/network/a;->c:Lcom/google/firebase/perf/e/a;

    invoke-virtual {p2}, Lcom/google/firebase/perf/e/a;->b()Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    goto :goto_0

    :cond_1
    iget-wide p2, p0, Lcom/google/firebase/perf/network/a;->e:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/firebase/perf/network/a;->e:J

    iget-object v0, p0, Lcom/google/firebase/perf/network/a;->c:Lcom/google/firebase/perf/e/a;

    invoke-virtual {v0, p2, p3}, Lcom/google/firebase/perf/e/a;->s(J)Lcom/google/firebase/perf/e/a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return p1

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/google/firebase/perf/network/a;->c:Lcom/google/firebase/perf/e/a;

    iget-object p3, p0, Lcom/google/firebase/perf/network/a;->d:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {p3}, Lcom/google/firebase/perf/util/Timer;->b()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/firebase/perf/e/a;->v(J)Lcom/google/firebase/perf/e/a;

    iget-object p2, p0, Lcom/google/firebase/perf/network/a;->c:Lcom/google/firebase/perf/e/a;

    invoke-static {p2}, Lcom/google/firebase/perf/network/h;->d(Lcom/google/firebase/perf/e/a;)V

    throw p1
.end method

.method public reset()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/a;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/firebase/perf/network/a;->c:Lcom/google/firebase/perf/e/a;

    iget-object v2, p0, Lcom/google/firebase/perf/network/a;->d:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v2}, Lcom/google/firebase/perf/util/Timer;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/perf/e/a;->v(J)Lcom/google/firebase/perf/e/a;

    iget-object v1, p0, Lcom/google/firebase/perf/network/a;->c:Lcom/google/firebase/perf/e/a;

    invoke-static {v1}, Lcom/google/firebase/perf/network/h;->d(Lcom/google/firebase/perf/e/a;)V

    throw v0
.end method

.method public skip(J)J
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/a;->b:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    iget-object v0, p0, Lcom/google/firebase/perf/network/a;->d:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v0}, Lcom/google/firebase/perf/util/Timer;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/firebase/perf/network/a;->f:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    iput-wide v0, p0, Lcom/google/firebase/perf/network/a;->f:J

    :cond_0
    cmp-long v2, p1, v4

    if-nez v2, :cond_1

    iget-wide v2, p0, Lcom/google/firebase/perf/network/a;->g:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    iput-wide v0, p0, Lcom/google/firebase/perf/network/a;->g:J

    iget-object v2, p0, Lcom/google/firebase/perf/network/a;->c:Lcom/google/firebase/perf/e/a;

    invoke-virtual {v2, v0, v1}, Lcom/google/firebase/perf/e/a;->v(J)Lcom/google/firebase/perf/e/a;

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/google/firebase/perf/network/a;->e:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/firebase/perf/network/a;->e:J

    iget-object v2, p0, Lcom/google/firebase/perf/network/a;->c:Lcom/google/firebase/perf/e/a;

    invoke-virtual {v2, v0, v1}, Lcom/google/firebase/perf/e/a;->s(J)Lcom/google/firebase/perf/e/a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-wide p1

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/google/firebase/perf/network/a;->c:Lcom/google/firebase/perf/e/a;

    iget-object v0, p0, Lcom/google/firebase/perf/network/a;->d:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v0}, Lcom/google/firebase/perf/util/Timer;->b()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/firebase/perf/e/a;->v(J)Lcom/google/firebase/perf/e/a;

    iget-object p2, p0, Lcom/google/firebase/perf/network/a;->c:Lcom/google/firebase/perf/e/a;

    invoke-static {p2}, Lcom/google/firebase/perf/network/h;->d(Lcom/google/firebase/perf/e/a;)V

    throw p1
.end method
