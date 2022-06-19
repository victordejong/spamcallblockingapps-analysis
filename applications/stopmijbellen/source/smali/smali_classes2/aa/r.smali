.class public final Laa/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laa/g;


# instance fields
.field public final a:Laa/f;

.field public final b:Laa/x;

.field public c:Z


# direct methods
.method public constructor <init>(Laa/x;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Laa/f;

    invoke-direct {v0}, Laa/f;-><init>()V

    iput-object v0, p0, Laa/r;->a:Laa/f;

    const-string v0, "sink == null"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Laa/r;->b:Laa/x;

    return-void
.end method


# virtual methods
.method public E(Laa/f;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Laa/r;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Laa/r;->a:Laa/f;

    invoke-virtual {v0, p1, p2, p3}, Laa/f;->E(Laa/f;J)V

    .line 3
    invoke-virtual {p0}, Laa/r;->F()Laa/g;

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public F()Laa/g;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Laa/r;->c:Z

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Laa/r;->a:Laa/f;

    .line 3
    iget-wide v1, v0, Laa/f;->b:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    move-wide v1, v3

    goto :goto_0

    .line 4
    :cond_0
    iget-object v5, v0, Laa/f;->a:Laa/u;

    iget-object v5, v5, Laa/u;->g:Laa/u;

    .line 5
    iget v6, v5, Laa/u;->c:I

    const/16 v7, 0x2000

    if-ge v6, v7, :cond_1

    iget-boolean v7, v5, Laa/u;->e:Z

    if-eqz v7, :cond_1

    .line 6
    iget v5, v5, Laa/u;->b:I

    sub-int/2addr v6, v5

    int-to-long v5, v6

    sub-long/2addr v1, v5

    :cond_1
    :goto_0
    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    .line 7
    iget-object v3, p0, Laa/r;->b:Laa/x;

    invoke-interface {v3, v0, v1, v2}, Laa/x;->E(Laa/f;J)V

    :cond_2
    return-object p0

    .line 8
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public R(Ljava/lang/String;)Laa/g;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Laa/r;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Laa/r;->a:Laa/f;

    invoke-virtual {v0, p1}, Laa/f;->d0(Ljava/lang/String;)Laa/f;

    .line 3
    invoke-virtual {p0}, Laa/r;->F()Laa/g;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public S(J)Laa/g;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Laa/r;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Laa/r;->a:Laa/f;

    invoke-virtual {v0, p1, p2}, Laa/f;->Z(J)Laa/f;

    .line 3
    invoke-virtual {p0}, Laa/r;->F()Laa/g;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()Laa/f;
    .locals 1

    .line 1
    iget-object v0, p0, Laa/r;->a:Laa/f;

    return-object v0
.end method

.method public b()Laa/z;
    .locals 1

    .line 1
    iget-object v0, p0, Laa/r;->b:Laa/x;

    invoke-interface {v0}, Laa/x;->b()Laa/z;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Laa/r;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Laa/r;->a:Laa/f;

    iget-wide v2, v1, Laa/f;->b:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 3
    iget-object v4, p0, Laa/r;->b:Laa/x;

    invoke-interface {v4, v1, v2, v3}, Laa/x;->E(Laa/f;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Laa/r;->b:Laa/x;

    invoke-interface {v1}, Laa/x;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    :goto_1
    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Laa/r;->c:Z

    if-nez v0, :cond_3

    return-void

    .line 6
    :cond_3
    sget-object v1, Laa/a0;->a:Ljava/nio/charset/Charset;

    .line 7
    throw v0
.end method

.method public d([BII)Laa/g;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Laa/r;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Laa/r;->a:Laa/f;

    invoke-virtual {v0, p1, p2, p3}, Laa/f;->U([BII)Laa/f;

    .line 3
    invoke-virtual {p0}, Laa/r;->F()Laa/g;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public flush()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Laa/r;->c:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Laa/r;->a:Laa/f;

    iget-wide v1, v0, Laa/f;->b:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 3
    iget-object v3, p0, Laa/r;->b:Laa/x;

    invoke-interface {v3, v0, v1, v2}, Laa/x;->E(Laa/f;J)V

    .line 4
    :cond_0
    iget-object v0, p0, Laa/r;->b:Laa/x;

    invoke-interface {v0}, Laa/x;->flush()V

    return-void

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g(J)Laa/g;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Laa/r;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Laa/r;->a:Laa/f;

    invoke-virtual {v0, p1, p2}, Laa/f;->a0(J)Laa/f;

    .line 3
    invoke-virtual {p0}, Laa/r;->F()Laa/g;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isOpen()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Laa/r;->c:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public m(I)Laa/g;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Laa/r;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Laa/r;->a:Laa/f;

    invoke-virtual {v0, p1}, Laa/f;->c0(I)Laa/f;

    .line 3
    invoke-virtual {p0}, Laa/r;->F()Laa/g;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public q(I)Laa/g;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Laa/r;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Laa/r;->a:Laa/f;

    invoke-virtual {v0, p1}, Laa/f;->b0(I)Laa/f;

    .line 3
    invoke-virtual {p0}, Laa/r;->F()Laa/g;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "buffer("

    .line 1
    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Laa/r;->b:Laa/x;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w(I)Laa/g;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Laa/r;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Laa/r;->a:Laa/f;

    invoke-virtual {v0, p1}, Laa/f;->Y(I)Laa/f;

    .line 3
    invoke-virtual {p0}, Laa/r;->F()Laa/g;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Laa/r;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Laa/r;->a:Laa/f;

    invoke-virtual {v0, p1}, Laa/f;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    .line 3
    invoke-virtual {p0}, Laa/r;->F()Laa/g;

    return p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public z([B)Laa/g;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Laa/r;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Laa/r;->a:Laa/f;

    invoke-virtual {v0, p1}, Laa/f;->P([B)Laa/f;

    .line 3
    invoke-virtual {p0}, Laa/r;->F()Laa/g;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
