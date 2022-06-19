.class public final Lv9/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt9/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv9/d$a;
    }
.end annotation


# static fields
.field public static final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lp9/t$a;

.field public final b:Ls9/e;

.field public final c:Lv9/f;

.field public d:Lv9/o;

.field public final e:Lp9/w;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    const-string v0, "connection"

    const-string v1, "host"

    const-string v2, "keep-alive"

    const-string v3, "proxy-connection"

    const-string v4, "te"

    const-string v5, "transfer-encoding"

    const-string v6, "encoding"

    const-string v7, "upgrade"

    const-string v8, ":method"

    const-string v9, ":path"

    const-string v10, ":scheme"

    const-string v11, ":authority"

    .line 1
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lq9/c;->o([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lv9/d;->f:Ljava/util/List;

    const-string v1, "connection"

    const-string v2, "host"

    const-string v3, "keep-alive"

    const-string v4, "proxy-connection"

    const-string v5, "te"

    const-string v6, "transfer-encoding"

    const-string v7, "encoding"

    const-string v8, "upgrade"

    .line 2
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lq9/c;->o([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lv9/d;->g:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lp9/v;Lp9/t$a;Ls9/e;Lv9/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lv9/d;->a:Lp9/t$a;

    .line 3
    iput-object p3, p0, Lv9/d;->b:Ls9/e;

    .line 4
    iput-object p4, p0, Lv9/d;->c:Lv9/f;

    .line 5
    iget-object p1, p1, Lp9/v;->b:Ljava/util/List;

    .line 6
    sget-object p2, Lp9/w;->f:Lp9/w;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    sget-object p2, Lp9/w;->e:Lp9/w;

    :goto_0
    iput-object p2, p0, Lv9/d;->e:Lp9/w;

    return-void
.end method


# virtual methods
.method public a(Lp9/b0;)Lp9/d0;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv9/d;->b:Ls9/e;

    iget-object v0, v0, Ls9/e;->f:Lp9/o;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p1, Lp9/b0;->f:Lp9/r;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lp9/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-static {p1}, Lt9/e;->a(Lp9/b0;)J

    move-result-wide v1

    .line 4
    new-instance p1, Lv9/d$a;

    iget-object v3, p0, Lv9/d;->d:Lv9/o;

    .line 5
    iget-object v3, v3, Lv9/o;->g:Lv9/o$b;

    .line 6
    invoke-direct {p1, p0, v3}, Lv9/d$a;-><init>(Lv9/d;Laa/y;)V

    .line 7
    new-instance v3, Lt9/g;

    sget-object v4, Laa/o;->a:Ljava/util/logging/Logger;

    .line 8
    new-instance v4, Laa/t;

    invoke-direct {v4, p1}, Laa/t;-><init>(Laa/y;)V

    .line 9
    invoke-direct {v3, v0, v1, v2, v4}, Lt9/g;-><init>(Ljava/lang/String;JLaa/h;)V

    return-object v3
.end method

.method public b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv9/d;->d:Lv9/o;

    invoke-virtual {v0}, Lv9/o;->f()Laa/x;

    move-result-object v0

    check-cast v0, Lv9/o$a;

    invoke-virtual {v0}, Lv9/o$a;->close()V

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
    iget-object v0, p0, Lv9/d;->c:Lv9/f;

    .line 2
    iget-object v0, v0, Lv9/f;->r:Lv9/p;

    invoke-virtual {v0}, Lv9/p;->flush()V

    return-void
.end method

.method public cancel()V
    .locals 2

    .line 1
    iget-object v0, p0, Lv9/d;->d:Lv9/o;

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lv9/o;->e(I)V

    :cond_0
    return-void
.end method

.method public d(Lp9/y;J)Laa/x;
    .locals 0

    .line 1
    iget-object p1, p0, Lv9/d;->d:Lv9/o;

    invoke-virtual {p1}, Lv9/o;->f()Laa/x;

    move-result-object p1

    return-object p1
.end method

.method public e(Lp9/y;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv9/d;->d:Lv9/o;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p1, Lp9/y;->d:Lp9/a0;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v3, p1, Lp9/y;->c:Lp9/r;

    .line 4
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v3}, Lp9/r;->f()I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    new-instance v5, Lv9/a;

    sget-object v6, Lv9/a;->f:Laa/i;

    .line 6
    iget-object v7, p1, Lp9/y;->b:Ljava/lang/String;

    .line 7
    invoke-direct {v5, v6, v7}, Lv9/a;-><init>(Laa/i;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v5, Lv9/a;

    sget-object v6, Lv9/a;->g:Laa/i;

    .line 9
    iget-object v7, p1, Lp9/y;->a:Lp9/s;

    .line 10
    invoke-static {v7}, Lt9/h;->a(Lp9/s;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lv9/a;-><init>(Laa/i;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v5, p1, Lp9/y;->c:Lp9/r;

    const-string v6, "Host"

    invoke-virtual {v5, v6}, Lp9/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 12
    new-instance v6, Lv9/a;

    sget-object v7, Lv9/a;->i:Laa/i;

    invoke-direct {v6, v7, v5}, Lv9/a;-><init>(Laa/i;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_2
    new-instance v5, Lv9/a;

    sget-object v6, Lv9/a;->h:Laa/i;

    .line 14
    iget-object p1, p1, Lp9/y;->a:Lp9/s;

    .line 15
    iget-object p1, p1, Lp9/s;->a:Ljava/lang/String;

    .line 16
    invoke-direct {v5, v6, p1}, Lv9/a;-><init>(Laa/i;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-virtual {v3}, Lp9/r;->f()I

    move-result p1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, p1, :cond_4

    .line 18
    invoke-virtual {v3, v5}, Lp9/r;->d(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Laa/i;->f(Ljava/lang/String;)Laa/i;

    move-result-object v6

    .line 19
    sget-object v7, Lv9/d;->f:Ljava/util/List;

    invoke-virtual {v6}, Laa/i;->o()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 20
    new-instance v7, Lv9/a;

    invoke-virtual {v3, v5}, Lp9/r;->g(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Lv9/a;-><init>(Laa/i;Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 21
    :cond_4
    iget-object p1, p0, Lv9/d;->c:Lv9/f;

    xor-int/lit8 v3, v0, 0x1

    const/4 v10, 0x0

    .line 22
    iget-object v5, p1, Lv9/f;->r:Lv9/p;

    monitor-enter v5

    .line 23
    :try_start_0
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 24
    :try_start_1
    iget v6, p1, Lv9/f;->f:I

    const v7, 0x3fffffff    # 1.9999999f

    if-le v6, v7, :cond_5

    const/4 v6, 0x5

    .line 25
    invoke-virtual {p1, v6}, Lv9/f;->A(I)V

    .line 26
    :cond_5
    iget-boolean v6, p1, Lv9/f;->g:Z

    if-nez v6, :cond_b

    .line 27
    iget v12, p1, Lv9/f;->f:I

    add-int/lit8 v6, v12, 0x2

    .line 28
    iput v6, p1, Lv9/f;->f:I

    .line 29
    new-instance v13, Lv9/o;

    const/4 v11, 0x0

    move-object v6, v13

    move v7, v12

    move-object v8, p1

    move v9, v3

    invoke-direct/range {v6 .. v11}, Lv9/o;-><init>(ILv9/f;ZZLp9/r;)V

    if-eqz v0, :cond_6

    .line 30
    iget-wide v6, p1, Lv9/f;->m:J

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-eqz v0, :cond_6

    iget-wide v6, v13, Lv9/o;->b:J

    cmp-long v0, v6, v8

    if-nez v0, :cond_7

    :cond_6
    const/4 v1, 0x1

    .line 31
    :cond_7
    invoke-virtual {v13}, Lv9/o;->h()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 32
    iget-object v0, p1, Lv9/f;->c:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    :cond_8
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 34
    :try_start_2
    iget-object v0, p1, Lv9/f;->r:Lv9/p;

    .line 35
    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 36
    :try_start_3
    iget-boolean v2, v0, Lv9/p;->e:Z

    if-nez v2, :cond_a

    .line 37
    invoke-virtual {v0, v3, v12, v4}, Lv9/p;->p(ZILjava/util/List;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 38
    :try_start_4
    monitor-exit v0

    .line 39
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v1, :cond_9

    .line 40
    iget-object p1, p1, Lv9/f;->r:Lv9/p;

    invoke-virtual {p1}, Lv9/p;->flush()V

    .line 41
    :cond_9
    iput-object v13, p0, Lv9/d;->d:Lv9/o;

    .line 42
    iget-object p1, v13, Lv9/o;->i:Lv9/o$c;

    .line 43
    iget-object v0, p0, Lv9/d;->a:Lp9/t$a;

    check-cast v0, Lt9/f;

    .line 44
    iget v0, v0, Lt9/f;->j:I

    int-to-long v0, v0

    .line 45
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Laa/z;->g(JLjava/util/concurrent/TimeUnit;)Laa/z;

    .line 46
    iget-object p1, p0, Lv9/d;->d:Lv9/o;

    .line 47
    iget-object p1, p1, Lv9/o;->j:Lv9/o$c;

    .line 48
    iget-object v0, p0, Lv9/d;->a:Lp9/t$a;

    check-cast v0, Lt9/f;

    .line 49
    iget v0, v0, Lt9/f;->k:I

    int-to-long v0, v0

    .line 50
    invoke-virtual {p1, v0, v1, v2}, Laa/z;->g(JLjava/util/concurrent/TimeUnit;)Laa/z;

    return-void

    .line 51
    :cond_a
    :try_start_5
    new-instance p1, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception p1

    :try_start_6
    monitor-exit v0

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 52
    :cond_b
    :try_start_7
    new-instance v0, Lokhttp3/internal/http2/ConnectionShutdownException;

    invoke-direct {v0}, Lokhttp3/internal/http2/ConnectionShutdownException;-><init>()V

    throw v0

    :catchall_1
    move-exception v0

    .line 53
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0

    :catchall_2
    move-exception p1

    .line 54
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw p1
.end method

.method public f(Z)Lp9/b0$a;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv9/d;->d:Lv9/o;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, v0, Lv9/o;->i:Lv9/o$c;

    invoke-virtual {v1}, Laa/c;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :goto_0
    :try_start_1
    iget-object v1, v0, Lv9/o;->e:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Lv9/o;->k:I

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {v0}, Lv9/o;->j()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6
    :cond_0
    :try_start_2
    iget-object v1, v0, Lv9/o;->i:Lv9/o$c;

    invoke-virtual {v1}, Lv9/o$c;->n()V

    .line 7
    iget-object v1, v0, Lv9/o;->e:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 8
    iget-object v1, v0, Lv9/o;->e:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp9/r;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    .line 9
    iget-object v0, p0, Lv9/d;->e:Lp9/w;

    .line 10
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    .line 11
    invoke-virtual {v1}, Lp9/r;->f()I

    move-result v4

    const/4 v5, 0x0

    move-object v6, v5

    :goto_1
    if-ge v3, v4, :cond_3

    .line 12
    invoke-virtual {v1, v3}, Lp9/r;->d(I)Ljava/lang/String;

    move-result-object v7

    .line 13
    invoke-virtual {v1, v3}, Lp9/r;->g(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, ":status"

    .line 14
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 15
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTTP/1.1 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lt9/j;->a(Ljava/lang/String;)Lt9/j;

    move-result-object v6

    goto :goto_2

    .line 16
    :cond_1
    sget-object v9, Lv9/d;->g:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 17
    sget-object v9, Lq9/a;->a:Lq9/a;

    check-cast v9, Lp9/v$a;

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    if-eqz v6, :cond_5

    .line 20
    new-instance v1, Lp9/b0$a;

    invoke-direct {v1}, Lp9/b0$a;-><init>()V

    .line 21
    iput-object v0, v1, Lp9/b0$a;->b:Lp9/w;

    .line 22
    iget v0, v6, Lt9/j;->b:I

    .line 23
    iput v0, v1, Lp9/b0$a;->c:I

    .line 24
    iget-object v0, v6, Lt9/j;->c:Ljava/lang/String;

    .line 25
    iput-object v0, v1, Lp9/b0$a;->d:Ljava/lang/String;

    .line 26
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 27
    new-instance v2, Lp9/r$a;

    invoke-direct {v2}, Lp9/r$a;-><init>()V

    .line 28
    iget-object v3, v2, Lp9/r$a;->a:Ljava/util/List;

    invoke-static {v3, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 29
    iput-object v2, v1, Lp9/b0$a;->f:Lp9/r$a;

    if-eqz p1, :cond_4

    .line 30
    sget-object p1, Lq9/a;->a:Lq9/a;

    check-cast p1, Lp9/v$a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget p1, v1, Lp9/b0$a;->c:I

    const/16 v0, 0x64

    if-ne p1, v0, :cond_4

    return-object v5

    :cond_4
    return-object v1

    .line 32
    :cond_5
    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "Expected \':status\' header not present"

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_6
    :try_start_3
    new-instance p1, Lokhttp3/internal/http2/StreamResetException;

    iget v1, v0, Lv9/o;->k:I

    invoke-direct {p1, v1}, Lokhttp3/internal/http2/StreamResetException;-><init>(I)V

    throw p1

    :catchall_0
    move-exception p1

    .line 34
    iget-object v1, v0, Lv9/o;->i:Lv9/o$c;

    invoke-virtual {v1}, Lv9/o$c;->n()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit v0

    throw p1
.end method
