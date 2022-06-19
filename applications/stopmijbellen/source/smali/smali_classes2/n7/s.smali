.class public Ln7/s;
.super Ln7/d0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln7/s$b;,
        Ln7/s$c;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:Ln7/a;

.field public e:Z

.field public f:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ln7/s$b;",
            ">;"
        }
    .end annotation
.end field

.field public g:I


# direct methods
.method public constructor <init>(Ln7/a;Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ln7/d0;-><init>()V

    const v0, 0x493e0

    .line 2
    iput v0, p0, Ln7/s;->c:I

    .line 3
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ln7/s;->f:Ljava/util/Hashtable;

    const v0, 0x7fffffff

    .line 4
    iput v0, p0, Ln7/s;->g:I

    .line 5
    iput-object p1, p0, Ln7/s;->d:Ln7/a;

    .line 6
    iput-object p2, p0, Ln7/s;->a:Ljava/lang/String;

    .line 7
    iput p3, p0, Ln7/s;->b:I

    return-void
.end method


# virtual methods
.method public g(Ln7/g$g;)V
    .locals 3

    .line 1
    iget-object v0, p1, Ln7/g$e;->a:Ll1/p;

    .line 2
    iget-object v0, v0, Ll1/p;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/Hashtable;

    const-string v1, "socket-owner"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    return-void

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p1, Ln7/g$c;->e:Lk7/j;

    .line 4
    new-instance v1, Ln7/t;

    invoke-direct {v1, p0, v0}, Ln7/t;-><init>(Ln7/s;Lk7/j;)V

    invoke-interface {v0, v1}, Lk7/m;->h(Ll7/a;)V

    const/4 v1, 0x0

    .line 5
    invoke-interface {v0, v1}, Lk7/o;->m(Ll7/f;)V

    .line 6
    new-instance v2, Ln7/u;

    invoke-direct {v2, p0, v0}, Ln7/u;-><init>(Ln7/s;Lk7/j;)V

    invoke-interface {v0, v2}, Lk7/m;->b(Ll7/c;)V

    .line 7
    iget-object v0, p1, Ln7/g$g;->j:Ljava/lang/Exception;

    if-nez v0, :cond_3

    iget-object v0, p1, Ln7/g$c;->e:Lk7/j;

    invoke-interface {v0}, Lk7/o;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {p0, p1}, Ln7/s;->k(Ln7/g$g;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 9
    iget-object v0, p1, Ln7/g$e;->b:Ln7/h;

    const-string v2, "closing out socket (not keep alive)"

    invoke-virtual {v0, v2}, Ln7/h;->e(Ljava/lang/String;)V

    .line 10
    iget-object v0, p1, Ln7/g$c;->e:Lk7/j;

    invoke-interface {v0, v1}, Lk7/o;->g(Ll7/a;)V

    .line 11
    iget-object v0, p1, Ln7/g$c;->e:Lk7/j;

    invoke-interface {v0}, Lk7/m;->close()V

    goto :goto_0

    .line 12
    :cond_2
    iget-object v0, p1, Ln7/g$e;->b:Ln7/h;

    const-string v1, "Recycling keep-alive socket"

    invoke-virtual {v0, v1}, Ln7/h;->b(Ljava/lang/String;)V

    .line 13
    iget-object v0, p1, Ln7/g$c;->e:Lk7/j;

    iget-object v1, p1, Ln7/g$e;->b:Ln7/h;

    invoke-virtual {p0, v0, v1}, Ln7/s;->n(Lk7/j;Ln7/h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :goto_0
    iget-object p1, p1, Ln7/g$e;->b:Ln7/h;

    invoke-virtual {p0, p1}, Ln7/s;->m(Ln7/h;)V

    return-void

    .line 15
    :cond_3
    :goto_1
    :try_start_1
    iget-object v0, p1, Ln7/g$e;->b:Ln7/h;

    const-string v2, "closing out socket (exception)"

    invoke-virtual {v0, v2}, Ln7/h;->e(Ljava/lang/String;)V

    .line 16
    iget-object v0, p1, Ln7/g$c;->e:Lk7/j;

    invoke-interface {v0, v1}, Lk7/o;->g(Ll7/a;)V

    .line 17
    iget-object v0, p1, Ln7/g$c;->e:Lk7/j;

    invoke-interface {v0}, Lk7/m;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 18
    iget-object p1, p1, Ln7/g$e;->b:Ln7/h;

    invoke-virtual {p0, p1}, Ln7/s;->m(Ln7/h;)V

    throw v0
.end method

.method public h(Ln7/g$a;)Lm7/a;
    .locals 11

    .line 1
    iget-object v0, p1, Ln7/g$e;->b:Ln7/h;

    .line 2
    iget-object v3, v0, Ln7/h;->c:Landroid/net/Uri;

    .line 3
    invoke-virtual {p0, v3}, Ln7/s;->j(Landroid/net/Uri;)I

    move-result v4

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne v4, v0, :cond_0

    return-object v1

    .line 4
    :cond_0
    iget-object v0, p1, Ln7/g$e;->a:Ll1/p;

    const-string v2, "socket-owner"

    .line 5
    iget-object v0, v0, Ll1/p;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/Hashtable;

    invoke-virtual {v0, v2, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p1, Ln7/g$e;->b:Ln7/h;

    .line 7
    iget-object v2, v0, Ln7/h;->h:Ljava/lang/String;

    .line 8
    iget v0, v0, Ln7/h;->i:I

    .line 9
    invoke-virtual {p0, v3, v4, v2, v0}, Ln7/s;->i(Landroid/net/Uri;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 10
    iget-object v2, p0, Ln7/s;->f:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln7/s$b;

    if-nez v2, :cond_1

    .line 11
    new-instance v2, Ln7/s$b;

    invoke-direct {v2}, Ln7/s$b;-><init>()V

    .line 12
    iget-object v5, p0, Ln7/s;->f:Ljava/util/Hashtable;

    invoke-virtual {v5, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_1
    monitor-enter p0

    .line 14
    :try_start_0
    iget v0, v2, Ln7/s$b;->a:I

    iget v5, p0, Ln7/s;->g:I

    if-lt v0, v5, :cond_2

    .line 15
    new-instance v0, Lm7/f;

    invoke-direct {v0}, Lm7/f;-><init>()V

    .line 16
    iget-object v1, v2, Ln7/s$b;->b:Lu7/b;

    .line 17
    invoke-virtual {v1, p1}, Lu7/b;->addLast(Ljava/lang/Object;)V

    .line 18
    monitor-exit p0

    return-object v0

    :cond_2
    const/4 v5, 0x1

    add-int/2addr v0, v5

    .line 19
    iput v0, v2, Ln7/s$b;->a:I

    .line 20
    :goto_0
    iget-object v0, v2, Ln7/s$b;->c:Lu7/b;

    invoke-virtual {v0}, Lu7/b;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 21
    iget-object v0, v2, Ln7/s$b;->c:Lu7/b;

    .line 22
    invoke-virtual {v0}, Lu7/b;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 23
    check-cast v0, Ln7/s$c;

    .line 24
    iget-object v6, v0, Ln7/s$c;->a:Lk7/j;

    .line 25
    iget-wide v7, v0, Ln7/s$c;->b:J

    iget v0, p0, Ln7/s;->c:I

    int-to-long v9, v0

    add-long/2addr v7, v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    cmp-long v0, v7, v9

    if-gez v0, :cond_3

    .line 26
    invoke-interface {v6, v1}, Lk7/o;->g(Ll7/a;)V

    .line 27
    invoke-interface {v6}, Lk7/m;->close()V

    goto :goto_0

    .line 28
    :cond_3
    invoke-interface {v6}, Lk7/o;->isOpen()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 29
    :cond_4
    iget-object v0, p1, Ln7/g$e;->b:Ln7/h;

    const-string v2, "Reusing keep-alive socket"

    invoke-virtual {v0, v2}, Ln7/h;->b(Ljava/lang/String;)V

    .line 30
    iget-object p1, p1, Ln7/g$a;->c:Ll7/b;

    invoke-interface {p1, v1, v6}, Ll7/b;->a(Ljava/lang/Exception;Lk7/j;)V

    .line 31
    new-instance p1, Lm7/f;

    invoke-direct {p1}, Lm7/f;-><init>()V

    .line 32
    invoke-virtual {p1}, Lm7/f;->c()Z

    .line 33
    monitor-exit p0

    return-object p1

    .line 34
    :cond_5
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1

    .line 35
    :cond_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    iget-boolean v0, p0, Ln7/s;->e:Z

    if-eqz v0, :cond_8

    iget-object v0, p1, Ln7/g$e;->b:Ln7/h;

    .line 37
    iget-object v2, v0, Ln7/h;->h:Ljava/lang/String;

    if-eqz v2, :cond_7

    goto :goto_1

    :cond_7
    const-string v2, "Resolving domain and connecting to all available addresses"

    .line 38
    invoke-virtual {v0, v2}, Ln7/h;->e(Ljava/lang/String;)V

    .line 39
    new-instance v0, Lm7/g;

    invoke-direct {v0}, Lm7/g;-><init>()V

    .line 40
    iget-object v2, p0, Ln7/s;->d:Ln7/a;

    .line 41
    iget-object v2, v2, Ln7/a;->d:Lk7/h;

    .line 42
    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    new-instance v6, Lm7/g;

    invoke-direct {v6}, Lm7/g;-><init>()V

    .line 44
    sget-object v7, Lk7/h;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lk7/i;

    invoke-direct {v8, v2, v5, v6}, Lk7/i;-><init>(Lk7/h;Ljava/lang/String;Lm7/g;)V

    check-cast v7, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 45
    new-instance v2, Ln7/q;

    invoke-direct {v2, p0, v4, p1}, Ln7/q;-><init>(Ln7/s;ILn7/g$a;)V

    .line 46
    invoke-virtual {v6, v2}, Lm7/g;->s(Lm7/i;)Lm7/c;

    move-result-object v2

    new-instance v5, Ln7/o;

    invoke-direct {v5, p0, p1, v3, v4}, Ln7/o;-><init>(Ln7/s;Ln7/g$a;Landroid/net/Uri;I)V

    .line 47
    check-cast v2, Lm7/g;

    invoke-virtual {v2, v5}, Lm7/g;->f(Lm7/b;)Lm7/c;

    move-result-object v2

    .line 48
    invoke-virtual {v0, v2, v1}, Lm7/g;->m(Lm7/c;Lm7/g$b;)Lm7/c;

    move-result-object v1

    .line 49
    new-instance v2, Ln7/p;

    invoke-direct {v2, p0, p1, v3, v4}, Ln7/p;-><init>(Ln7/s;Ln7/g$a;Landroid/net/Uri;I)V

    .line 50
    check-cast v1, Lm7/g;

    invoke-virtual {v1, v2}, Lm7/g;->k(Lm7/d;)V

    return-object v0

    .line 51
    :cond_8
    :goto_1
    iget-object v0, p1, Ln7/g$e;->b:Ln7/h;

    const-string v1, "Connecting socket"

    invoke-virtual {v0, v1}, Ln7/h;->b(Ljava/lang/String;)V

    .line 52
    iget-object v0, p1, Ln7/g$e;->b:Ln7/h;

    .line 53
    iget-object v1, v0, Ln7/h;->h:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 54
    iget v0, v0, Ln7/h;->i:I

    move-object v7, v1

    goto :goto_2

    .line 55
    :cond_9
    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    move-object v7, v1

    move v0, v4

    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_a

    .line 56
    iget-object v1, p1, Ln7/g$e;->b:Ln7/h;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Using proxy: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ln7/h;->e(Ljava/lang/String;)V

    .line 57
    :cond_a
    iget-object v1, p0, Ln7/s;->d:Ln7/a;

    .line 58
    iget-object v8, v1, Ln7/a;->d:Lk7/h;

    .line 59
    iget-object v6, p1, Ln7/g$a;->c:Ll7/b;

    move-object v1, p0

    move-object v2, p1

    .line 60
    invoke-virtual/range {v1 .. v6}, Ln7/s;->o(Ln7/g$a;Landroid/net/Uri;IZLl7/b;)Ll7/b;

    move-result-object p1

    .line 61
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-static {v7, v0}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v8, v0, p1}, Lk7/h;->c(Ljava/net/InetSocketAddress;Ll7/b;)Lm7/a;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 63
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public i(Landroid/net/Uri;ILjava/lang/String;I)Ljava/lang/String;
    .locals 2

    const-string v0, ":"

    if-eqz p3, :cond_0

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    if-eqz p3, :cond_1

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "//"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "?proxy="

    invoke-static {p3, p1, v1}, Landroid/support/v4/media/b;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public j(Landroid/net/Uri;)I
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Ln7/s;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 3
    iget p1, p0, Ln7/s;->b:I

    return p1

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public k(Ln7/g$g;)Z
    .locals 7

    .line 1
    iget-object v0, p1, Ln7/g$c;->f:Ln7/g$i;

    check-cast v0, Ln7/j;

    .line 2
    iget-object v1, v0, Ln7/j;->n:Ljava/lang/String;

    .line 3
    iget-object v0, v0, Ln7/j;->k:Ln7/w;

    .line 4
    iget-object v0, v0, Ln7/w;->a:Ln7/a0;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "Connection"

    invoke-virtual {v3, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ln7/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "keep-alive"

    if-nez v0, :cond_1

    .line 5
    invoke-static {v1}, Ln7/b0;->a(Ljava/lang/String;)Ln7/b0;

    move-result-object v0

    sget-object v1, Ln7/b0;->c:Ln7/b0;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_3

    .line 7
    sget-object v0, Ln7/b0;->c:Ln7/b0;

    iget-object p1, p1, Ln7/g$e;->b:Ln7/h;

    .line 8
    iget-object p1, p1, Ln7/h;->d:Ln7/w;

    .line 9
    iget-object p1, p1, Ln7/w;->a:Ln7/a0;

    invoke-virtual {v3, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ln7/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    :goto_1
    if-eqz p1, :cond_3

    const/4 v4, 0x1

    :cond_3
    return v4
.end method

.method public final l(Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Ln7/s;->f:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln7/s$b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :goto_0
    iget-object v1, v0, Ln7/s$b;->c:Lu7/b;

    invoke-virtual {v1}, Lu7/b;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3
    iget-object v1, v0, Ln7/s$b;->c:Lu7/b;

    .line 4
    iget-object v2, v1, Lu7/b;->a:[Ljava/lang/Object;

    iget v1, v1, Lu7/b;->c:I

    add-int/lit8 v1, v1, -0x1

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v1, v3

    aget-object v1, v2, v1

    .line 5
    check-cast v1, Ln7/s$c;

    .line 6
    iget-object v2, v1, Ln7/s$c;->a:Lk7/j;

    .line 7
    iget-wide v3, v1, Ln7/s$c;->b:J

    iget v1, p0, Ln7/s;->c:I

    int-to-long v5, v1

    add-long/2addr v3, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-lez v1, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    iget-object v1, v0, Ln7/s$b;->c:Lu7/b;

    .line 9
    invoke-virtual {v1}, Lu7/b;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 10
    invoke-interface {v2, v1}, Lk7/o;->g(Ll7/a;)V

    .line 11
    invoke-interface {v2}, Lk7/m;->close()V

    goto :goto_0

    .line 12
    :cond_2
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1

    .line 13
    :cond_3
    :goto_1
    iget v1, v0, Ln7/s$b;->a:I

    if-nez v1, :cond_4

    iget-object v1, v0, Ln7/s$b;->b:Lu7/b;

    invoke-virtual {v1}, Lu7/b;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, v0, Ln7/s$b;->c:Lu7/b;

    invoke-virtual {v0}, Lu7/b;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14
    iget-object v0, p0, Ln7/s;->f:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method public final m(Ln7/h;)V
    .locals 4

    .line 1
    iget-object v0, p1, Ln7/h;->c:Landroid/net/Uri;

    .line 2
    invoke-virtual {p0, v0}, Ln7/s;->j(Landroid/net/Uri;)I

    move-result v1

    .line 3
    iget-object v2, p1, Ln7/h;->h:Ljava/lang/String;

    .line 4
    iget p1, p1, Ln7/h;->i:I

    .line 5
    invoke-virtual {p0, v0, v1, v2, p1}, Ln7/s;->i(Landroid/net/Uri;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v0, p0, Ln7/s;->f:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln7/s$b;

    if-nez v0, :cond_0

    .line 8
    monitor-exit p0

    return-void

    .line 9
    :cond_0
    iget v1, v0, Ln7/s$b;->a:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Ln7/s$b;->a:I

    .line 10
    :goto_0
    iget v1, v0, Ln7/s$b;->a:I

    iget v2, p0, Ln7/s;->g:I

    if-ge v1, v2, :cond_2

    iget-object v1, v0, Ln7/s$b;->b:Lu7/b;

    invoke-virtual {v1}, Lu7/b;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 11
    iget-object v1, v0, Ln7/s$b;->b:Lu7/b;

    invoke-virtual {v1}, Lu7/b;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln7/g$a;

    .line 12
    iget-object v2, v1, Ln7/g$a;->d:Lm7/a;

    check-cast v2, Lm7/f;

    .line 13
    invoke-virtual {v2}, Lm7/f;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {p0, v1}, Ln7/s;->h(Ln7/g$a;)Lm7/a;

    move-result-object v1

    .line 15
    invoke-virtual {v2, v1}, Lm7/f;->d(Lm7/a;)Z

    goto :goto_0

    .line 16
    :cond_2
    invoke-virtual {p0, p1}, Ln7/s;->l(Ljava/lang/String;)V

    .line 17
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final n(Lk7/j;Ln7/h;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p2, Ln7/h;->c:Landroid/net/Uri;

    .line 2
    invoke-virtual {p0, v0}, Ln7/s;->j(Landroid/net/Uri;)I

    move-result v1

    .line 3
    iget-object v2, p2, Ln7/h;->h:Ljava/lang/String;

    .line 4
    iget p2, p2, Ln7/h;->i:I

    .line 5
    invoke-virtual {p0, v0, v1, v2, p2}, Ln7/s;->i(Landroid/net/Uri;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 6
    new-instance v0, Ln7/s$c;

    invoke-direct {v0, p0, p1}, Ln7/s$c;-><init>(Ln7/s;Lk7/j;)V

    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v1, p0, Ln7/s;->f:Ljava/util/Hashtable;

    invoke-virtual {v1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln7/s$b;

    if-nez v1, :cond_1

    .line 9
    new-instance v1, Ln7/s$b;

    invoke-direct {v1}, Ln7/s$b;-><init>()V

    .line 10
    iget-object v2, p0, Ln7/s;->f:Ljava/util/Hashtable;

    invoke-virtual {v2, p2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_1
    iget-object v1, v1, Ln7/s$b;->c:Lu7/b;

    .line 12
    invoke-virtual {v1, v0}, Lu7/b;->addFirst(Ljava/lang/Object;)V

    .line 13
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    new-instance v2, Ln7/s$a;

    invoke-direct {v2, p0, v1, v0, p2}, Ln7/s$a;-><init>(Ln7/s;Lu7/b;Ln7/s$c;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Lk7/o;->g(Ll7/a;)V

    return-void

    :catchall_0
    move-exception p1

    .line 15
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public o(Ln7/g$a;Landroid/net/Uri;IZLl7/b;)Ll7/b;
    .locals 0

    return-object p5
.end method
