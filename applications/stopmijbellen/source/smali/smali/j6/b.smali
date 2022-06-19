.class public final Lj6/b;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field public final a:Ljava/io/OutputStream;

.field public final b:Ln6/e;

.field public c:Lh6/b;

.field public d:J


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lh6/b;Ln6/e;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lj6/b;->d:J

    .line 3
    iput-object p1, p0, Lj6/b;->a:Ljava/io/OutputStream;

    .line 4
    iput-object p2, p0, Lj6/b;->c:Lh6/b;

    .line 5
    iput-object p3, p0, Lj6/b;->b:Ln6/e;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lj6/b;->d:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    iget-object v2, p0, Lj6/b;->c:Lh6/b;

    invoke-virtual {v2, v0, v1}, Lh6/b;->f(J)Lh6/b;

    .line 3
    :cond_0
    iget-object v0, p0, Lj6/b;->c:Lh6/b;

    iget-object v1, p0, Lj6/b;->b:Ln6/e;

    invoke-virtual {v1}, Ln6/e;->a()J

    move-result-wide v1

    .line 4
    iget-object v0, v0, Lh6/b;->d:Lo6/h$b;

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/i$a;->n()V

    .line 6
    iget-object v0, v0, Lcom/google/protobuf/i$a;->b:Lcom/google/protobuf/i;

    check-cast v0, Lo6/h;

    invoke-static {v0, v1, v2}, Lo6/h;->F(Lo6/h;J)V

    .line 7
    :try_start_0
    iget-object v0, p0, Lj6/b;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 8
    iget-object v1, p0, Lj6/b;->c:Lh6/b;

    iget-object v2, p0, Lj6/b;->b:Ln6/e;

    invoke-virtual {v2}, Ln6/e;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lh6/b;->j(J)Lh6/b;

    .line 9
    iget-object v1, p0, Lj6/b;->c:Lh6/b;

    invoke-static {v1}, Lj6/h;->c(Lh6/b;)V

    .line 10
    throw v0
.end method

.method public flush()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lj6/b;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2
    iget-object v1, p0, Lj6/b;->c:Lh6/b;

    iget-object v2, p0, Lj6/b;->b:Ln6/e;

    invoke-virtual {v2}, Ln6/e;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lh6/b;->j(J)Lh6/b;

    .line 3
    iget-object v1, p0, Lj6/b;->c:Lh6/b;

    invoke-static {v1}, Lj6/h;->c(Lh6/b;)V

    .line 4
    throw v0
.end method

.method public write(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lj6/b;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 2
    iget-wide v0, p0, Lj6/b;->d:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lj6/b;->d:J

    .line 3
    iget-object p1, p0, Lj6/b;->c:Lh6/b;

    invoke-virtual {p1, v0, v1}, Lh6/b;->f(J)Lh6/b;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 4
    iget-object v0, p0, Lj6/b;->c:Lh6/b;

    iget-object v1, p0, Lj6/b;->b:Ln6/e;

    invoke-virtual {v1}, Ln6/e;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lh6/b;->j(J)Lh6/b;

    .line 5
    iget-object v0, p0, Lj6/b;->c:Lh6/b;

    invoke-static {v0}, Lj6/h;->c(Lh6/b;)V

    .line 6
    throw p1
.end method

.method public write([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    :try_start_0
    iget-object v0, p0, Lj6/b;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 8
    iget-wide v0, p0, Lj6/b;->d:J

    array-length p1, p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lj6/b;->d:J

    .line 9
    iget-object p1, p0, Lj6/b;->c:Lh6/b;

    invoke-virtual {p1, v0, v1}, Lh6/b;->f(J)Lh6/b;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 10
    iget-object v0, p0, Lj6/b;->c:Lh6/b;

    iget-object v1, p0, Lj6/b;->b:Ln6/e;

    invoke-virtual {v1}, Ln6/e;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lh6/b;->j(J)Lh6/b;

    .line 11
    iget-object v0, p0, Lj6/b;->c:Lh6/b;

    invoke-static {v0}, Lj6/h;->c(Lh6/b;)V

    .line 12
    throw p1
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    :try_start_0
    iget-object v0, p0, Lj6/b;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 14
    iget-wide p1, p0, Lj6/b;->d:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lj6/b;->d:J

    .line 15
    iget-object p3, p0, Lj6/b;->c:Lh6/b;

    invoke-virtual {p3, p1, p2}, Lh6/b;->f(J)Lh6/b;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 16
    iget-object p2, p0, Lj6/b;->c:Lh6/b;

    iget-object p3, p0, Lj6/b;->b:Ln6/e;

    invoke-virtual {p3}, Ln6/e;->a()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lh6/b;->j(J)Lh6/b;

    .line 17
    iget-object p2, p0, Lj6/b;->c:Lh6/b;

    invoke-static {p2}, Lj6/h;->c(Lh6/b;)V

    .line 18
    throw p1
.end method
