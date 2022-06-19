.class public final Lt9/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp9/t;


# instance fields
.field public final a:Lp9/l;


# direct methods
.method public constructor <init>(Lp9/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lt9/a;->a:Lp9/l;

    return-void
.end method


# virtual methods
.method public a(Lp9/t$a;)Lp9/b0;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lt9/f;

    .line 2
    iget-object v0, p1, Lt9/f;->f:Lp9/y;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v1, Lp9/y$a;

    invoke-direct {v1, v0}, Lp9/y$a;-><init>(Lp9/y;)V

    .line 5
    iget-object v2, v0, Lp9/y;->d:Lp9/a0;

    const-string v3, "Content-Type"

    const-wide/16 v4, -0x1

    const-string v6, "Content-Length"

    if-eqz v2, :cond_2

    .line 6
    check-cast v2, Lp9/z;

    .line 7
    iget-object v7, v2, Lp9/z;->a:Lp9/u;

    if-eqz v7, :cond_0

    .line 8
    iget-object v7, v7, Lp9/u;->a:Ljava/lang/String;

    .line 9
    invoke-virtual {v1, v3, v7}, Lp9/y$a;->b(Ljava/lang/String;Ljava/lang/String;)Lp9/y$a;

    .line 10
    :cond_0
    iget v2, v2, Lp9/z;->b:I

    int-to-long v7, v2

    const-string v2, "Transfer-Encoding"

    cmp-long v9, v7, v4

    if-eqz v9, :cond_1

    .line 11
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lp9/y$a;->b(Ljava/lang/String;Ljava/lang/String;)Lp9/y$a;

    .line 12
    iget-object v7, v1, Lp9/y$a;->c:Lp9/r$a;

    invoke-virtual {v7, v2}, Lp9/r$a;->d(Ljava/lang/String;)Lp9/r$a;

    goto :goto_0

    :cond_1
    const-string v7, "chunked"

    .line 13
    invoke-virtual {v1, v2, v7}, Lp9/y$a;->b(Ljava/lang/String;Ljava/lang/String;)Lp9/y$a;

    .line 14
    iget-object v2, v1, Lp9/y$a;->c:Lp9/r$a;

    invoke-virtual {v2, v6}, Lp9/r$a;->d(Ljava/lang/String;)Lp9/r$a;

    .line 15
    :cond_2
    :goto_0
    iget-object v2, v0, Lp9/y;->c:Lp9/r;

    const-string v7, "Host"

    invoke-virtual {v2, v7}, Lp9/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    if-nez v2, :cond_3

    .line 16
    iget-object v2, v0, Lp9/y;->a:Lp9/s;

    .line 17
    invoke-static {v2, v8}, Lq9/c;->m(Lp9/s;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Lp9/y$a;->b(Ljava/lang/String;Ljava/lang/String;)Lp9/y$a;

    .line 18
    :cond_3
    iget-object v2, v0, Lp9/y;->c:Lp9/r;

    const-string v7, "Connection"

    invoke-virtual {v2, v7}, Lp9/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    const-string v2, "Keep-Alive"

    .line 19
    invoke-virtual {v1, v7, v2}, Lp9/y$a;->b(Ljava/lang/String;Ljava/lang/String;)Lp9/y$a;

    .line 20
    :cond_4
    iget-object v2, v0, Lp9/y;->c:Lp9/r;

    const-string v7, "Accept-Encoding"

    invoke-virtual {v2, v7}, Lp9/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v9, "gzip"

    if-nez v2, :cond_5

    iget-object v2, v0, Lp9/y;->c:Lp9/r;

    const-string v10, "Range"

    invoke-virtual {v2, v10}, Lp9/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    .line 21
    invoke-virtual {v1, v7, v9}, Lp9/y$a;->b(Ljava/lang/String;Ljava/lang/String;)Lp9/y$a;

    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    .line 22
    :goto_1
    iget-object v7, p0, Lt9/a;->a:Lp9/l;

    check-cast v7, Lp9/l$a;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 24
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_8

    .line 25
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    :goto_2
    if-ge v8, v11, :cond_7

    if-lez v8, :cond_6

    const-string v12, "; "

    .line 27
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    :cond_6
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lp9/k;

    .line 29
    iget-object v13, v12, Lp9/k;->a:Ljava/lang/String;

    .line 30
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v13, 0x3d

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    iget-object v12, v12, Lp9/k;->b:Ljava/lang/String;

    .line 32
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 33
    :cond_7
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Cookie"

    .line 34
    invoke-virtual {v1, v8, v7}, Lp9/y$a;->b(Ljava/lang/String;Ljava/lang/String;)Lp9/y$a;

    .line 35
    :cond_8
    iget-object v7, v0, Lp9/y;->c:Lp9/r;

    const-string v8, "User-Agent"

    invoke-virtual {v7, v8}, Lp9/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_9

    const-string v7, "okhttp/3.12.1"

    .line 36
    invoke-virtual {v1, v8, v7}, Lp9/y$a;->b(Ljava/lang/String;Ljava/lang/String;)Lp9/y$a;

    .line 37
    :cond_9
    invoke-virtual {v1}, Lp9/y$a;->a()Lp9/y;

    move-result-object v1

    .line 38
    iget-object v7, p1, Lt9/f;->b:Ls9/e;

    iget-object v8, p1, Lt9/f;->c:Lt9/c;

    iget-object v10, p1, Lt9/f;->d:Ls9/c;

    invoke-virtual {p1, v1, v7, v8, v10}, Lt9/f;->b(Lp9/y;Ls9/e;Lt9/c;Ls9/c;)Lp9/b0;

    move-result-object p1

    .line 39
    iget-object v1, p0, Lt9/a;->a:Lp9/l;

    .line 40
    iget-object v7, v0, Lp9/y;->a:Lp9/s;

    .line 41
    iget-object v8, p1, Lp9/b0;->f:Lp9/r;

    .line 42
    invoke-static {v1, v7, v8}, Lt9/e;->d(Lp9/l;Lp9/s;Lp9/r;)V

    .line 43
    new-instance v1, Lp9/b0$a;

    invoke-direct {v1, p1}, Lp9/b0$a;-><init>(Lp9/b0;)V

    .line 44
    iput-object v0, v1, Lp9/b0$a;->a:Lp9/y;

    if-eqz v2, :cond_c

    .line 45
    iget-object v0, p1, Lp9/b0;->f:Lp9/r;

    const-string v2, "Content-Encoding"

    invoke-virtual {v0, v2}, Lp9/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    if-eqz v0, :cond_a

    goto :goto_3

    :cond_a
    move-object v0, v7

    .line 46
    :goto_3
    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 47
    invoke-static {p1}, Lt9/e;->b(Lp9/b0;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 48
    new-instance v0, Laa/m;

    .line 49
    iget-object v8, p1, Lp9/b0;->g:Lp9/d0;

    .line 50
    invoke-virtual {v8}, Lp9/d0;->l()Laa/h;

    move-result-object v8

    invoke-direct {v0, v8}, Laa/m;-><init>(Laa/y;)V

    .line 51
    iget-object v8, p1, Lp9/b0;->f:Lp9/r;

    .line 52
    invoke-virtual {v8}, Lp9/r;->e()Lp9/r$a;

    move-result-object v8

    .line 53
    invoke-virtual {v8, v2}, Lp9/r$a;->d(Ljava/lang/String;)Lp9/r$a;

    .line 54
    invoke-virtual {v8, v6}, Lp9/r$a;->d(Ljava/lang/String;)Lp9/r$a;

    .line 55
    iget-object v2, v8, Lp9/r$a;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 56
    new-instance v6, Lp9/r$a;

    invoke-direct {v6}, Lp9/r$a;-><init>()V

    .line 57
    iget-object v8, v6, Lp9/r$a;->a:Ljava/util/List;

    invoke-static {v8, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 58
    iput-object v6, v1, Lp9/b0$a;->f:Lp9/r$a;

    .line 59
    iget-object p1, p1, Lp9/b0;->f:Lp9/r;

    invoke-virtual {p1, v3}, Lp9/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b

    move-object v7, p1

    .line 60
    :cond_b
    new-instance p1, Lt9/g;

    sget-object v2, Laa/o;->a:Ljava/util/logging/Logger;

    .line 61
    new-instance v2, Laa/t;

    invoke-direct {v2, v0}, Laa/t;-><init>(Laa/y;)V

    .line 62
    invoke-direct {p1, v7, v4, v5, v2}, Lt9/g;-><init>(Ljava/lang/String;JLaa/h;)V

    .line 63
    iput-object p1, v1, Lp9/b0$a;->g:Lp9/d0;

    .line 64
    :cond_c
    invoke-virtual {v1}, Lp9/b0$a;->b()Lp9/b0;

    move-result-object p1

    return-object p1
.end method
