.class final La/n;
.super Ljava/lang/Object;
.source "RealBufferedSource.java"

# interfaces
.implements La/e;


# instance fields
.field public final a:La/c;

.field public final b:La/s;

.field c:Z


# direct methods
.method constructor <init>(La/s;)V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, La/c;

    invoke-direct {v0}, La/c;-><init>()V

    iput-object v0, p0, La/n;->a:La/c;

    .line 33
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_0
    iput-object p1, p0, La/n;->b:La/s;

    .line 35
    return-void
.end method


# virtual methods
.method public a(B)J
    .locals 6

    .prologue
    .line 334
    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, La/n;->a(BJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(BJJ)J
    .locals 10

    .prologue
    const-wide/16 v6, -0x1

    .line 342
    iget-boolean v0, p0, La/n;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_1

    cmp-long v0, p4, p2

    if-gez v0, :cond_6

    .line 344
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "fromIndex=%s toIndex=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 345
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :cond_2
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 348
    :goto_0
    cmp-long v0, v2, p4

    if-gez v0, :cond_5

    .line 349
    iget-object v0, p0, La/n;->a:La/c;

    move v1, p1

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, La/c;->a(BJJ)J

    move-result-wide v0

    .line 350
    cmp-long v4, v0, v6

    if-eqz v4, :cond_3

    .line 360
    :goto_1
    return-wide v0

    .line 354
    :cond_3
    iget-object v0, p0, La/n;->a:La/c;

    iget-wide v0, v0, La/c;->b:J

    .line 355
    cmp-long v4, v0, p4

    if-gez v4, :cond_4

    iget-object v4, p0, La/n;->b:La/s;

    iget-object v5, p0, La/n;->a:La/c;

    const-wide/16 v8, 0x2000

    invoke-interface {v4, v5, v8, v9}, La/s;->a(La/c;J)J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    :cond_4
    move-wide v0, v6

    goto :goto_1

    :cond_5
    move-wide v0, v6

    .line 360
    goto :goto_1

    :cond_6
    move-wide v2, p2

    goto :goto_0
.end method

.method public a(La/c;J)J
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v0, -0x1

    .line 42
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    cmp-long v2, p2, v4

    if-gez v2, :cond_1

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

    .line 44
    :cond_1
    iget-boolean v2, p0, La/n;->c:Z

    if-eqz v2, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_2
    iget-object v2, p0, La/n;->a:La/c;

    iget-wide v2, v2, La/c;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 47
    iget-object v2, p0, La/n;->b:La/s;

    iget-object v3, p0, La/n;->a:La/c;

    const-wide/16 v4, 0x2000

    invoke-interface {v2, v3, v4, v5}, La/s;->a(La/c;J)J

    move-result-wide v2

    .line 48
    cmp-long v2, v2, v0

    if-nez v2, :cond_3

    .line 52
    :goto_0
    return-wide v0

    .line 51
    :cond_3
    iget-object v0, p0, La/n;->a:La/c;

    iget-wide v0, v0, La/c;->b:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 52
    iget-object v2, p0, La/n;->a:La/c;

    invoke-virtual {v2, p1, v0, v1}, La/c;->a(La/c;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public a(La/r;)J
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .line 170
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-wide v0, v2

    .line 173
    :cond_1
    :goto_0
    iget-object v4, p0, La/n;->b:La/s;

    iget-object v5, p0, La/n;->a:La/c;

    const-wide/16 v6, 0x2000

    invoke-interface {v4, v5, v6, v7}, La/s;->a(La/c;J)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    .line 174
    iget-object v4, p0, La/n;->a:La/c;

    invoke-virtual {v4}, La/c;->f()J

    move-result-wide v4

    .line 175
    cmp-long v6, v4, v2

    if-lez v6, :cond_1

    .line 176
    add-long/2addr v0, v4

    .line 177
    iget-object v6, p0, La/n;->a:La/c;

    invoke-interface {p1, v6, v4, v5}, La/r;->a_(La/c;J)V

    goto :goto_0

    .line 180
    :cond_2
    iget-object v4, p0, La/n;->a:La/c;

    invoke-virtual {v4}, La/c;->b()J

    move-result-wide v4

    cmp-long v2, v4, v2

    if-lez v2, :cond_3

    .line 181
    iget-object v2, p0, La/n;->a:La/c;

    invoke-virtual {v2}, La/c;->b()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 182
    iget-object v2, p0, La/n;->a:La/c;

    iget-object v3, p0, La/n;->a:La/c;

    invoke-virtual {v3}, La/c;->b()J

    move-result-wide v4

    invoke-interface {p1, v2, v4, v5}, La/r;->a_(La/c;J)V

    .line 184
    :cond_3
    return-wide v0
.end method

.method public a()La/t;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, La/n;->b:La/s;

    invoke-interface {v0}, La/s;->a()La/t;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 198
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "charset == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_0
    iget-object v0, p0, La/n;->a:La/c;

    iget-object v1, p0, La/n;->b:La/s;

    invoke-virtual {v0, v1}, La/c;->a(La/s;)J

    .line 201
    iget-object v0, p0, La/n;->a:La/c;

    invoke-virtual {v0, p1}, La/c;->a(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0, p1, p2}, La/n;->b(J)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 62
    :cond_0
    return-void
.end method

.method public a([B)V
    .locals 6

    .prologue
    .line 123
    :try_start_0
    array-length v0, p1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, La/n;->a(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    iget-object v0, p0, La/n;->a:La/c;

    invoke-virtual {v0, p1}, La/c;->a([B)V

    .line 135
    return-void

    .line 124
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 126
    const/4 v0, 0x0

    .line 127
    :goto_0
    iget-object v2, p0, La/n;->a:La/c;

    iget-wide v2, v2, La/c;->b:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 128
    iget-object v2, p0, La/n;->a:La/c;

    iget-object v3, p0, La/n;->a:La/c;

    iget-wide v4, v3, La/c;->b:J

    long-to-int v3, v4

    invoke-virtual {v2, p1, v0, v3}, La/c;->a([BII)I

    move-result v2

    .line 129
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 130
    :cond_0
    add-int/2addr v0, v2

    .line 131
    goto :goto_0

    .line 132
    :cond_1
    throw v1
.end method

.method public a(JLa/f;)Z
    .locals 7

    .prologue
    .line 402
    const/4 v5, 0x0

    invoke-virtual {p3}, La/f;->g()I

    move-result v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, La/n;->a(JLa/f;II)Z

    move-result v0

    return v0
.end method

.method public a(JLa/f;II)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 408
    iget-boolean v1, p0, La/n;->c:Z

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 410
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-ltz v1, :cond_1

    if-ltz p4, :cond_1

    if-ltz p5, :cond_1

    .line 413
    invoke-virtual {p3}, La/f;->g()I

    move-result v1

    sub-int/2addr v1, p4

    if-ge v1, p5, :cond_2

    .line 421
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v1, v0

    .line 416
    :goto_1
    if-ge v1, p5, :cond_3

    .line 417
    int-to-long v2, v1

    add-long/2addr v2, p1

    .line 418
    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    invoke-virtual {p0, v4, v5}, La/n;->b(J)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 419
    iget-object v4, p0, La/n;->a:La/c;

    invoke-virtual {v4, v2, v3}, La/c;->b(J)B

    move-result v2

    add-int v3, p4, v1

    invoke-virtual {p3, v3}, La/f;->a(I)B

    move-result v3

    if-ne v2, v3, :cond_1

    .line 416
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 421
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(J)Z
    .locals 5

    .prologue
    .line 65
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    iget-boolean v0, p0, La/n;->c:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_1
    iget-object v0, p0, La/n;->a:La/c;

    iget-wide v0, v0, La/c;->b:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_2

    .line 68
    iget-object v0, p0, La/n;->b:La/s;

    iget-object v1, p0, La/n;->a:La/c;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, La/s;->a(La/c;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 70
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c()La/c;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, La/n;->a:La/c;

    return-object v0
.end method

.method public c(J)La/f;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0, p1, p2}, La/n;->a(J)V

    .line 85
    iget-object v0, p0, La/n;->a:La/c;

    invoke-virtual {v0, p1, p2}, La/c;->c(J)La/f;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 467
    iget-boolean v0, p0, La/n;->c:Z

    if-eqz v0, :cond_0

    .line 471
    :goto_0
    return-void

    .line 468
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, La/n;->c:Z

    .line 469
    iget-object v0, p0, La/n;->b:La/s;

    invoke-interface {v0}, La/s;->close()V

    .line 470
    iget-object v0, p0, La/n;->a:La/c;

    invoke-virtual {v0}, La/c;->q()V

    goto :goto_0
.end method

.method public e(J)Ljava/lang/String;
    .locals 9

    .prologue
    .line 225
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "limit < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    const-wide v4, 0x7fffffffffffffffL

    .line 227
    :goto_0
    const/16 v1, 0xa

    const-wide/16 v2, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, La/n;->a(BJJ)J

    move-result-wide v0

    .line 228
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    iget-object v2, p0, La/n;->a:La/c;

    invoke-virtual {v2, v0, v1}, La/c;->f(J)Ljava/lang/String;

    move-result-object v0

    .line 232
    :goto_1
    return-object v0

    .line 226
    :cond_1
    const-wide/16 v0, 0x1

    add-long v4, p1, v0

    goto :goto_0

    .line 229
    :cond_2
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, v4, v0

    if-gez v0, :cond_3

    .line 230
    invoke-virtual {p0, v4, v5}, La/n;->b(J)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, La/n;->a:La/c;

    const-wide/16 v2, 0x1

    sub-long v2, v4, v2

    invoke-virtual {v0, v2, v3}, La/c;->b(J)B

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    const-wide/16 v0, 0x1

    add-long/2addr v0, v4

    .line 231
    invoke-virtual {p0, v0, v1}, La/n;->b(J)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, La/n;->a:La/c;

    invoke-virtual {v0, v4, v5}, La/c;->b(J)B

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    .line 232
    iget-object v0, p0, La/n;->a:La/c;

    invoke-virtual {v0, v4, v5}, La/c;->f(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 234
    :cond_3
    new-instance v1, La/c;

    invoke-direct {v1}, La/c;-><init>()V

    .line 235
    iget-object v0, p0, La/n;->a:La/c;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x20

    iget-object v6, p0, La/n;->a:La/c;

    invoke-virtual {v6}, La/c;->b()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, La/c;->a(La/c;JJ)La/c;

    .line 236
    new-instance v0, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\\n not found: limit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, La/n;->a:La/c;

    invoke-virtual {v3}, La/c;->b()J

    move-result-wide v4

    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " content="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 237
    invoke-virtual {v1}, La/c;->m()La/f;

    move-result-object v1

    invoke-virtual {v1}, La/f;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2026

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()Z
    .locals 4

    .prologue
    .line 56
    iget-boolean v0, p0, La/n;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    iget-object v0, p0, La/n;->a:La/c;

    invoke-virtual {v0}, La/c;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, La/n;->b:La/s;

    iget-object v1, p0, La/n;->a:La/c;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, La/s;->a(La/c;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()B
    .locals 2

    .prologue
    .line 74
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, La/n;->a(J)V

    .line 75
    iget-object v0, p0, La/n;->a:La/c;

    invoke-virtual {v0}, La/c;->g()B

    move-result v0

    return v0
.end method

.method public g(J)[B
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0, p1, p2}, La/n;->a(J)V

    .line 114
    iget-object v0, p0, La/n;->a:La/c;

    invoke-virtual {v0, p1, p2}, La/c;->g(J)[B

    move-result-object v0

    return-object v0
.end method

.method public h()S
    .locals 2

    .prologue
    .line 256
    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, La/n;->a(J)V

    .line 257
    iget-object v0, p0, La/n;->a:La/c;

    invoke-virtual {v0}, La/c;->h()S

    move-result v0

    return v0
.end method

.method public h(J)V
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    .line 322
    iget-boolean v0, p0, La/n;->c:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 327
    :cond_0
    iget-object v0, p0, La/n;->a:La/c;

    invoke-virtual {v0}, La/c;->b()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 328
    iget-object v2, p0, La/n;->a:La/c;

    invoke-virtual {v2, v0, v1}, La/c;->h(J)V

    .line 329
    sub-long/2addr p1, v0

    .line 323
    :cond_1
    cmp-long v0, p1, v4

    if-lez v0, :cond_2

    .line 324
    iget-object v0, p0, La/n;->a:La/c;

    iget-wide v0, v0, La/c;->b:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    iget-object v0, p0, La/n;->b:La/s;

    iget-object v1, p0, La/n;->a:La/c;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, La/s;->a(La/c;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 325
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 331
    :cond_2
    return-void
.end method

.method public i()I
    .locals 2

    .prologue
    .line 266
    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, La/n;->a(J)V

    .line 267
    iget-object v0, p0, La/n;->a:La/c;

    invoke-virtual {v0}, La/c;->i()I

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 463
    iget-boolean v0, p0, La/n;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()S
    .locals 2

    .prologue
    .line 261
    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, La/n;->a(J)V

    .line 262
    iget-object v0, p0, La/n;->a:La/c;

    invoke-virtual {v0}, La/c;->j()S

    move-result v0

    return v0
.end method

.method public k()I
    .locals 2

    .prologue
    .line 271
    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, La/n;->a(J)V

    .line 272
    iget-object v0, p0, La/n;->a:La/c;

    invoke-virtual {v0}, La/c;->k()I

    move-result v0

    return v0
.end method

.method public l()J
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 304
    const-wide/16 v2, 0x1

    invoke-virtual {p0, v2, v3}, La/n;->a(J)V

    move v0, v1

    .line 306
    :goto_0
    add-int/lit8 v2, v0, 0x1

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, La/n;->b(J)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 307
    iget-object v2, p0, La/n;->a:La/c;

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, La/c;->b(J)B

    move-result v2

    .line 308
    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    const/16 v3, 0x39

    if-le v2, v3, :cond_3

    :cond_0
    const/16 v3, 0x61

    if-lt v2, v3, :cond_1

    const/16 v3, 0x66

    if-le v2, v3, :cond_3

    :cond_1
    const/16 v3, 0x41

    if-lt v2, v3, :cond_2

    const/16 v3, 0x46

    if-le v2, v3, :cond_3

    .line 310
    :cond_2
    if-nez v0, :cond_4

    .line 311
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string/jumbo v3, "Expected leading [0-9a-fA-F] character but was %#x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 312
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v4, v1

    .line 311
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 318
    :cond_4
    iget-object v0, p0, La/n;->a:La/c;

    invoke-virtual {v0}, La/c;->l()J

    move-result-wide v0

    return-wide v0
.end method

.method public o()Ljava/lang/String;
    .locals 2

    .prologue
    .line 221
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, La/n;->e(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 4

    .prologue
    .line 150
    iget-object v0, p0, La/n;->a:La/c;

    iget-wide v0, v0, La/c;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, La/n;->b:La/s;

    iget-object v1, p0, La/n;->a:La/c;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, La/s;->a(La/c;J)J

    move-result-wide v0

    .line 152
    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 155
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, La/n;->a:La/c;

    invoke-virtual {v0, p1}, La/c;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/n;->b:La/s;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
