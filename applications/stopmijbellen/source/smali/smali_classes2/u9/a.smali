.class public final Lu9/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt9/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu9/a$g;,
        Lu9/a$d;,
        Lu9/a$f;,
        Lu9/a$b;,
        Lu9/a$c;,
        Lu9/a$e;
    }
.end annotation


# instance fields
.field public final a:Lp9/v;

.field public final b:Ls9/e;

.field public final c:Laa/h;

.field public final d:Laa/g;

.field public e:I

.field public f:J


# direct methods
.method public constructor <init>(Lp9/v;Ls9/e;Laa/h;Laa/g;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lu9/a;->e:I

    const-wide/32 v0, 0x40000

    .line 3
    iput-wide v0, p0, Lu9/a;->f:J

    .line 4
    iput-object p1, p0, Lu9/a;->a:Lp9/v;

    .line 5
    iput-object p2, p0, Lu9/a;->b:Ls9/e;

    .line 6
    iput-object p3, p0, Lu9/a;->c:Laa/h;

    .line 7
    iput-object p4, p0, Lu9/a;->d:Laa/g;

    return-void
.end method


# virtual methods
.method public a(Lp9/b0;)Lp9/d0;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu9/a;->b:Ls9/e;

    iget-object v0, v0, Ls9/e;->f:Lp9/o;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p1, Lp9/b0;->f:Lp9/r;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lp9/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 3
    :goto_0
    invoke-static {p1}, Lt9/e;->b(Lp9/b0;)Z

    move-result v2

    if-nez v2, :cond_1

    const-wide/16 v1, 0x0

    .line 4
    invoke-virtual {p0, v1, v2}, Lu9/a;->h(J)Laa/y;

    move-result-object p1

    .line 5
    new-instance v3, Lt9/g;

    sget-object v4, Laa/o;->a:Ljava/util/logging/Logger;

    .line 6
    new-instance v4, Laa/t;

    invoke-direct {v4, p1}, Laa/t;-><init>(Laa/y;)V

    .line 7
    invoke-direct {v3, v0, v1, v2, v4}, Lt9/g;-><init>(Ljava/lang/String;JLaa/h;)V

    return-object v3

    .line 8
    :cond_1
    iget-object v2, p1, Lp9/b0;->f:Lp9/r;

    const-string v3, "Transfer-Encoding"

    invoke-virtual {v2, v3}, Lp9/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    move-object v1, v2

    :cond_2
    const-string v2, "chunked"

    .line 9
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x5

    const-string v3, "state: "

    const/4 v4, 0x4

    const-wide/16 v5, -0x1

    if-eqz v1, :cond_4

    .line 10
    iget-object p1, p1, Lp9/b0;->a:Lp9/y;

    .line 11
    iget-object p1, p1, Lp9/y;->a:Lp9/s;

    .line 12
    iget v1, p0, Lu9/a;->e:I

    if-ne v1, v4, :cond_3

    .line 13
    iput v2, p0, Lu9/a;->e:I

    .line 14
    new-instance v1, Lu9/a$d;

    invoke-direct {v1, p0, p1}, Lu9/a$d;-><init>(Lu9/a;Lp9/s;)V

    .line 15
    new-instance p1, Lt9/g;

    sget-object v2, Laa/o;->a:Ljava/util/logging/Logger;

    .line 16
    new-instance v2, Laa/t;

    invoke-direct {v2, v1}, Laa/t;-><init>(Laa/y;)V

    .line 17
    invoke-direct {p1, v0, v5, v6, v2}, Lt9/g;-><init>(Ljava/lang/String;JLaa/h;)V

    return-object p1

    .line 18
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {v3}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lu9/a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_4
    invoke-static {p1}, Lt9/e;->a(Lp9/b0;)J

    move-result-wide v7

    cmp-long p1, v7, v5

    if-eqz p1, :cond_5

    .line 20
    invoke-virtual {p0, v7, v8}, Lu9/a;->h(J)Laa/y;

    move-result-object p1

    .line 21
    new-instance v1, Lt9/g;

    sget-object v2, Laa/o;->a:Ljava/util/logging/Logger;

    .line 22
    new-instance v2, Laa/t;

    invoke-direct {v2, p1}, Laa/t;-><init>(Laa/y;)V

    .line 23
    invoke-direct {v1, v0, v7, v8, v2}, Lt9/g;-><init>(Ljava/lang/String;JLaa/h;)V

    return-object v1

    .line 24
    :cond_5
    new-instance p1, Lt9/g;

    .line 25
    iget v1, p0, Lu9/a;->e:I

    if-ne v1, v4, :cond_7

    .line 26
    iget-object v1, p0, Lu9/a;->b:Ls9/e;

    if-eqz v1, :cond_6

    .line 27
    iput v2, p0, Lu9/a;->e:I

    .line 28
    invoke-virtual {v1}, Ls9/e;->f()V

    .line 29
    new-instance v1, Lu9/a$g;

    invoke-direct {v1, p0}, Lu9/a$g;-><init>(Lu9/a;)V

    .line 30
    sget-object v2, Laa/o;->a:Ljava/util/logging/Logger;

    .line 31
    new-instance v2, Laa/t;

    invoke-direct {v2, v1}, Laa/t;-><init>(Laa/y;)V

    .line 32
    invoke-direct {p1, v0, v5, v6, v2}, Lt9/g;-><init>(Ljava/lang/String;JLaa/h;)V

    return-object p1

    .line 33
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "streamAllocation == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 34
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {v3}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lu9/a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu9/a;->d:Laa/g;

    invoke-interface {v0}, Laa/g;->flush()V

    return-void
.end method

.method public c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu9/a;->d:Laa/g;

    invoke-interface {v0}, Laa/g;->flush()V

    return-void
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lu9/a;->b:Ls9/e;

    invoke-virtual {v0}, Ls9/e;->b()Ls9/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Ls9/c;->d:Ljava/net/Socket;

    invoke-static {v0}, Lq9/c;->e(Ljava/net/Socket;)V

    :cond_0
    return-void
.end method

.method public d(Lp9/y;J)Laa/x;
    .locals 5

    .line 1
    iget-object p1, p1, Lp9/y;->c:Lp9/r;

    const-string v0, "Transfer-Encoding"

    invoke-virtual {p1, v0}, Lp9/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "chunked"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x2

    const-string v1, "state: "

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 3
    iget p1, p0, Lu9/a;->e:I

    if-ne p1, v2, :cond_0

    .line 4
    iput v0, p0, Lu9/a;->e:I

    .line 5
    new-instance p1, Lu9/a$c;

    invoke-direct {p1, p0}, Lu9/a$c;-><init>(Lu9/a;)V

    return-object p1

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {v1}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Lu9/a;->e:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-wide/16 v3, -0x1

    cmp-long p1, p2, v3

    if-eqz p1, :cond_3

    .line 7
    iget p1, p0, Lu9/a;->e:I

    if-ne p1, v2, :cond_2

    .line 8
    iput v0, p0, Lu9/a;->e:I

    .line 9
    new-instance p1, Lu9/a$e;

    invoke-direct {p1, p0, p2, p3}, Lu9/a$e;-><init>(Lu9/a;J)V

    return-object p1

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {v1}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Lu9/a;->e:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(Lp9/y;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu9/a;->b:Ls9/e;

    .line 2
    invoke-virtual {v0}, Ls9/e;->b()Ls9/c;

    move-result-object v0

    .line 3
    iget-object v0, v0, Ls9/c;->c:Lp9/e0;

    .line 4
    iget-object v0, v0, Lp9/e0;->b:Ljava/net/Proxy;

    .line 5
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    iget-object v2, p1, Lp9/y;->b:Ljava/lang/String;

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    iget-object v2, p1, Lp9/y;->a:Lp9/s;

    .line 11
    iget-object v2, v2, Lp9/s;->a:Ljava/lang/String;

    const-string v3, "https"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 12
    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p1, Lp9/y;->a:Lp9/s;

    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 15
    :cond_1
    iget-object v0, p1, Lp9/y;->a:Lp9/s;

    .line 16
    invoke-static {v0}, Lt9/h;->a(Lp9/s;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v0, " HTTP/1.1"

    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19
    iget-object p1, p1, Lp9/y;->c:Lp9/r;

    .line 20
    invoke-virtual {p0, p1, v0}, Lu9/a;->k(Lp9/r;Ljava/lang/String;)V

    return-void
.end method

.method public f(Z)Lp9/b0$a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lu9/a;->e:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "state: "

    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lu9/a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lu9/a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lt9/j;->a(Ljava/lang/String;)Lt9/j;

    move-result-object v0

    .line 4
    new-instance v2, Lp9/b0$a;

    invoke-direct {v2}, Lp9/b0$a;-><init>()V

    iget-object v3, v0, Lt9/j;->a:Lp9/w;

    .line 5
    iput-object v3, v2, Lp9/b0$a;->b:Lp9/w;

    .line 6
    iget v3, v0, Lt9/j;->b:I

    .line 7
    iput v3, v2, Lp9/b0$a;->c:I

    .line 8
    iget-object v3, v0, Lt9/j;->c:Ljava/lang/String;

    .line 9
    iput-object v3, v2, Lp9/b0$a;->d:Ljava/lang/String;

    .line 10
    invoke-virtual {p0}, Lu9/a;->j()Lp9/r;

    move-result-object v3

    invoke-virtual {v2, v3}, Lp9/b0$a;->e(Lp9/r;)Lp9/b0$a;

    const/16 v3, 0x64

    if-eqz p1, :cond_2

    .line 11
    iget p1, v0, Lt9/j;->b:I

    if-ne p1, v3, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 12
    :cond_2
    iget p1, v0, Lt9/j;->b:I

    if-ne p1, v3, :cond_3

    .line 13
    iput v1, p0, Lu9/a;->e:I

    return-object v2

    :cond_3
    const/4 p1, 0x4

    .line 14
    iput p1, p0, Lu9/a;->e:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    .line 15
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unexpected end of stream on "

    invoke-static {v1}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lu9/a;->b:Ls9/e;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 17
    throw v0
.end method

.method public g(Laa/l;)V
    .locals 2

    .line 1
    iget-object v0, p1, Laa/l;->e:Laa/z;

    .line 2
    sget-object v1, Laa/z;->d:Laa/z;

    .line 3
    iput-object v1, p1, Laa/l;->e:Laa/z;

    .line 4
    invoke-virtual {v0}, Laa/z;->a()Laa/z;

    .line 5
    invoke-virtual {v0}, Laa/z;->b()Laa/z;

    return-void
.end method

.method public h(J)Laa/y;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lu9/a;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    .line 2
    iput v0, p0, Lu9/a;->e:I

    .line 3
    new-instance v0, Lu9/a$f;

    invoke-direct {v0, p0, p1, p2}, Lu9/a$f;-><init>(Lu9/a;J)V

    return-object v0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "state: "

    invoke-static {p2}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lu9/a;->e:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final i()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu9/a;->c:Laa/h;

    iget-wide v1, p0, Lu9/a;->f:J

    invoke-interface {v0, v1, v2}, Laa/h;->H(J)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-wide v1, p0, Lu9/a;->f:J

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lu9/a;->f:J

    return-object v0
.end method

.method public j()Lp9/r;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lp9/r$a;

    invoke-direct {v0}, Lp9/r$a;-><init>()V

    .line 2
    :goto_0
    invoke-virtual {p0}, Lu9/a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    sget-object v2, Lq9/a;->a:Lq9/a;

    check-cast v2, Lp9/v$a;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {v0, v1}, Lp9/r$a;->a(Ljava/lang/String;)Lp9/r$a;

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Lp9/r;

    invoke-direct {v1, v0}, Lp9/r;-><init>(Lp9/r$a;)V

    return-object v1
.end method

.method public k(Lp9/r;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lu9/a;->e:I

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lu9/a;->d:Laa/g;

    invoke-interface {v0, p2}, Laa/g;->R(Ljava/lang/String;)Laa/g;

    move-result-object p2

    const-string v0, "\r\n"

    invoke-interface {p2, v0}, Laa/g;->R(Ljava/lang/String;)Laa/g;

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p1}, Lp9/r;->f()I

    move-result v1

    :goto_0
    if-ge p2, v1, :cond_0

    .line 4
    iget-object v2, p0, Lu9/a;->d:Laa/g;

    invoke-virtual {p1, p2}, Lp9/r;->d(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Laa/g;->R(Ljava/lang/String;)Laa/g;

    move-result-object v2

    const-string v3, ": "

    .line 5
    invoke-interface {v2, v3}, Laa/g;->R(Ljava/lang/String;)Laa/g;

    move-result-object v2

    .line 6
    invoke-virtual {p1, p2}, Lp9/r;->g(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Laa/g;->R(Ljava/lang/String;)Laa/g;

    move-result-object v2

    .line 7
    invoke-interface {v2, v0}, Laa/g;->R(Ljava/lang/String;)Laa/g;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lu9/a;->d:Laa/g;

    invoke-interface {p1, v0}, Laa/g;->R(Ljava/lang/String;)Laa/g;

    const/4 p1, 0x1

    .line 9
    iput p1, p0, Lu9/a;->e:I

    return-void

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "state: "

    invoke-static {p2}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lu9/a;->e:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
