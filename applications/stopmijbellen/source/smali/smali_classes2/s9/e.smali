.class public final Ls9/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls9/e$a;
    }
.end annotation


# instance fields
.field public final a:Lp9/a;

.field public b:Ls9/d$a;

.field public c:Lp9/e0;

.field public final d:Lp9/i;

.field public final e:Lp9/e;

.field public final f:Lp9/o;

.field public final g:Ljava/lang/Object;

.field public final h:Ls9/d;

.field public i:I

.field public j:Ls9/c;

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Lt9/c;


# direct methods
.method public constructor <init>(Lp9/i;Lp9/a;Lp9/e;Lp9/o;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ls9/e;->d:Lp9/i;

    .line 3
    iput-object p2, p0, Ls9/e;->a:Lp9/a;

    .line 4
    iput-object p3, p0, Ls9/e;->e:Lp9/e;

    .line 5
    iput-object p4, p0, Ls9/e;->f:Lp9/o;

    .line 6
    new-instance v0, Ls9/d;

    .line 7
    sget-object v1, Lq9/a;->a:Lq9/a;

    check-cast v1, Lp9/v$a;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object p1, p1, Lp9/i;->e:Lf/t;

    .line 9
    invoke-direct {v0, p2, p1, p3, p4}, Ls9/d;-><init>(Lp9/a;Lf/t;Lp9/e;Lp9/o;)V

    iput-object v0, p0, Ls9/e;->h:Ls9/d;

    .line 10
    iput-object p5, p0, Ls9/e;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ls9/c;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Ls9/e;->j:Ls9/c;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Ls9/e;->j:Ls9/c;

    .line 3
    iput-boolean p2, p0, Ls9/e;->k:Z

    .line 4
    iget-object p1, p1, Ls9/c;->n:Ljava/util/List;

    new-instance p2, Ls9/e$a;

    iget-object v0, p0, Ls9/e;->g:Ljava/lang/Object;

    invoke-direct {p2, p0, v0}, Ls9/e$a;-><init>(Ls9/e;Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public declared-synchronized b()Ls9/c;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Ls9/e;->j:Ls9/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c(ZZZ)Ljava/net/Socket;
    .locals 4

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 1
    iput-object v0, p0, Ls9/e;->n:Lt9/c;

    :cond_0
    const/4 p3, 0x1

    if-eqz p2, :cond_1

    .line 2
    iput-boolean p3, p0, Ls9/e;->l:Z

    .line 3
    :cond_1
    iget-object p2, p0, Ls9/e;->j:Ls9/c;

    if-eqz p2, :cond_9

    if-eqz p1, :cond_2

    .line 4
    iput-boolean p3, p2, Ls9/c;->k:Z

    .line 5
    :cond_2
    iget-object p1, p0, Ls9/e;->n:Lt9/c;

    if-nez p1, :cond_9

    iget-boolean p1, p0, Ls9/e;->l:Z

    if-nez p1, :cond_3

    iget-boolean p1, p2, Ls9/c;->k:Z

    if-eqz p1, :cond_9

    .line 6
    :cond_3
    iget-object p1, p2, Ls9/c;->n:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_8

    .line 7
    iget-object v3, p2, Ls9/c;->n:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/Reference;

    .line 8
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_7

    .line 9
    iget-object p1, p2, Ls9/c;->n:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 10
    iget-object p1, p0, Ls9/e;->j:Ls9/c;

    iget-object p1, p1, Ls9/c;->n:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 11
    iget-object p1, p0, Ls9/e;->j:Ls9/c;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p1, Ls9/c;->o:J

    .line 12
    sget-object p1, Lq9/a;->a:Lq9/a;

    iget-object p2, p0, Ls9/e;->d:Lp9/i;

    iget-object v2, p0, Ls9/e;->j:Ls9/c;

    check-cast p1, Lp9/v$a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-boolean p1, v2, Ls9/c;->k:Z

    if-nez p1, :cond_5

    iget p1, p2, Lp9/i;->a:I

    if-nez p1, :cond_4

    goto :goto_1

    .line 15
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    const/4 p3, 0x0

    goto :goto_2

    .line 16
    :cond_5
    :goto_1
    iget-object p1, p2, Lp9/i;->d:Ljava/util/Deque;

    invoke-interface {p1, v2}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    :goto_2
    if-eqz p3, :cond_6

    .line 17
    iget-object p1, p0, Ls9/e;->j:Ls9/c;

    .line 18
    iget-object p1, p1, Ls9/c;->e:Ljava/net/Socket;

    goto :goto_3

    :cond_6
    move-object p1, v0

    .line 19
    :goto_3
    iput-object v0, p0, Ls9/e;->j:Ls9/c;

    move-object v0, p1

    goto :goto_4

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 20
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_9
    :goto_4
    return-object v0
.end method

.method public final d(IIIIZ)Ls9/c;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    iget-object v2, v1, Ls9/e;->d:Lp9/i;

    monitor-enter v2

    .line 2
    :try_start_0
    iget-boolean v0, v1, Ls9/e;->l:Z

    if-nez v0, :cond_25

    .line 3
    iget-object v0, v1, Ls9/e;->n:Lt9/c;

    if-nez v0, :cond_24

    .line 4
    iget-boolean v0, v1, Ls9/e;->m:Z

    if-nez v0, :cond_23

    .line 5
    iget-object v0, v1, Ls9/e;->j:Ls9/c;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    .line 6
    iget-boolean v6, v0, Ls9/c;->k:Z

    if-eqz v6, :cond_0

    .line 7
    invoke-virtual {v1, v4, v4, v5}, Ls9/e;->c(ZZZ)Ljava/net/Socket;

    move-result-object v6

    goto :goto_0

    :cond_0
    move-object v6, v3

    .line 8
    :goto_0
    iget-object v7, v1, Ls9/e;->j:Ls9/c;

    if-eqz v7, :cond_1

    move-object v0, v3

    goto :goto_1

    :cond_1
    move-object v7, v3

    .line 9
    :goto_1
    iget-boolean v8, v1, Ls9/e;->k:Z

    if-nez v8, :cond_2

    move-object v0, v3

    :cond_2
    if-nez v7, :cond_4

    .line 10
    sget-object v8, Lq9/a;->a:Lq9/a;

    iget-object v9, v1, Ls9/e;->d:Lp9/i;

    iget-object v10, v1, Ls9/e;->a:Lp9/a;

    invoke-virtual {v8, v9, v10, v1, v3}, Lq9/a;->c(Lp9/i;Lp9/a;Ls9/e;Lp9/e0;)Ls9/c;

    .line 11
    iget-object v8, v1, Ls9/e;->j:Ls9/c;

    if-eqz v8, :cond_3

    const/4 v7, 0x1

    goto :goto_2

    .line 12
    :cond_3
    iget-object v3, v1, Ls9/e;->c:Lp9/e0;

    :cond_4
    const/4 v8, 0x0

    move-object v8, v7

    const/4 v7, 0x0

    .line 13
    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 14
    invoke-static {v6}, Lq9/c;->e(Ljava/net/Socket;)V

    if-eqz v0, :cond_5

    .line 15
    iget-object v0, v1, Ls9/e;->f:Lp9/o;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    if-eqz v7, :cond_6

    .line 16
    iget-object v0, v1, Ls9/e;->f:Lp9/o;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    if-eqz v8, :cond_7

    return-object v8

    :cond_7
    if-nez v3, :cond_19

    .line 17
    iget-object v0, v1, Ls9/e;->b:Ls9/d$a;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ls9/d$a;->a()Z

    move-result v0

    if-nez v0, :cond_19

    .line 18
    :cond_8
    iget-object v0, v1, Ls9/e;->h:Ls9/d;

    .line 19
    invoke-virtual {v0}, Ls9/d;->b()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 20
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 21
    :cond_9
    invoke-virtual {v0}, Ls9/d;->c()Z

    move-result v6

    if-eqz v6, :cond_16

    .line 22
    invoke-virtual {v0}, Ls9/d;->c()Z

    move-result v6

    const-string v9, "No route to "

    if-eqz v6, :cond_15

    .line 23
    iget-object v6, v0, Ls9/d;->d:Ljava/util/List;

    iget v10, v0, Ls9/d;->e:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v0, Ls9/d;->e:I

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/Proxy;

    .line 24
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v0, Ls9/d;->f:Ljava/util/List;

    .line 25
    invoke-virtual {v6}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v10

    sget-object v11, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v10, v11, :cond_d

    invoke-virtual {v6}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v10

    sget-object v11, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v10, v11, :cond_a

    goto :goto_4

    .line 26
    :cond_a
    invoke-virtual {v6}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v10

    .line 27
    instance-of v11, v10, Ljava/net/InetSocketAddress;

    if-eqz v11, :cond_c

    .line 28
    check-cast v10, Ljava/net/InetSocketAddress;

    .line 29
    invoke-virtual {v10}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v11

    if-nez v11, :cond_b

    .line 30
    invoke-virtual {v10}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    .line 31
    :cond_b
    invoke-virtual {v11}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    .line 32
    :goto_3
    invoke-virtual {v10}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v10

    goto :goto_5

    .line 33
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Proxy.address() is not an InetSocketAddress: "

    invoke-static {v2}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 34
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_d
    :goto_4
    iget-object v10, v0, Ls9/d;->a:Lp9/a;

    .line 36
    iget-object v10, v10, Lp9/a;->a:Lp9/s;

    .line 37
    iget-object v11, v10, Lp9/s;->d:Ljava/lang/String;

    .line 38
    iget v10, v10, Lp9/s;->e:I

    :goto_5
    if-lt v10, v5, :cond_14

    const v12, 0xffff

    if-gt v10, v12, :cond_14

    .line 39
    invoke-virtual {v6}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v9

    sget-object v12, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v9, v12, :cond_e

    .line 40
    iget-object v9, v0, Ls9/d;->f:Ljava/util/List;

    invoke-static {v11, v10}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 41
    :cond_e
    iget-object v9, v0, Ls9/d;->c:Lp9/o;

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v9, v0, Ls9/d;->a:Lp9/a;

    .line 43
    iget-object v9, v9, Lp9/a;->b:Lp9/n;

    .line 44
    check-cast v9, Lp9/n$a;

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v11, :cond_13

    .line 45
    :try_start_1
    invoke-static {v11}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 46
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_12

    .line 47
    iget-object v11, v0, Ls9/d;->c:Lp9/o;

    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_6
    if-ge v12, v11, :cond_f

    .line 49
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/net/InetAddress;

    .line 50
    iget-object v14, v0, Ls9/d;->f:Ljava/util/List;

    new-instance v15, Ljava/net/InetSocketAddress;

    invoke-direct {v15, v13, v10}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 51
    :cond_f
    :goto_7
    iget-object v9, v0, Ls9/d;->f:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_8
    if-ge v10, v9, :cond_11

    .line 52
    new-instance v11, Lp9/e0;

    iget-object v12, v0, Ls9/d;->a:Lp9/a;

    iget-object v13, v0, Ls9/d;->f:Ljava/util/List;

    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/net/InetSocketAddress;

    invoke-direct {v11, v12, v6, v13}, Lp9/e0;-><init>(Lp9/a;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V

    .line 53
    iget-object v12, v0, Ls9/d;->b:Lf/t;

    .line 54
    monitor-enter v12

    .line 55
    :try_start_2
    iget-object v13, v12, Lf/t;->a:Ljava/lang/Object;

    check-cast v13, Ljava/util/Set;

    invoke-interface {v13, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v12

    if-eqz v13, :cond_10

    .line 56
    iget-object v12, v0, Ls9/d;->g:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 57
    :cond_10
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :catchall_0
    move-exception v0

    .line 58
    monitor-exit v12

    throw v0

    .line 59
    :cond_11
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_a

    .line 60
    :cond_12
    new-instance v2, Ljava/net/UnknownHostException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Ls9/d;->a:Lp9/a;

    .line 61
    iget-object v0, v0, Lp9/a;->b:Lp9/n;

    .line 62
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " returned no addresses for "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_0
    move-exception v0

    .line 63
    new-instance v2, Ljava/net/UnknownHostException;

    const-string v3, "Broken system behaviour for dns lookup of "

    invoke-static {v3, v11}, Lcom/google/android/gms/internal/ads/a;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v2, v0}, Ljava/net/UnknownHostException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 65
    throw v2

    .line 66
    :cond_13
    new-instance v0, Ljava/net/UnknownHostException;

    const-string v2, "hostname == null"

    invoke-direct {v0, v2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_14
    new-instance v0, Ljava/net/SocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; port is out of range"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_15
    new-instance v2, Ljava/net/SocketException;

    invoke-static {v9}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Ls9/d;->a:Lp9/a;

    .line 69
    iget-object v4, v4, Lp9/a;->a:Lp9/s;

    .line 70
    iget-object v4, v4, Lp9/s;->d:Ljava/lang/String;

    .line 71
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; exhausted proxy configurations: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Ls9/d;->d:Ljava/util/List;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 72
    :cond_16
    :goto_a
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_17

    .line 73
    iget-object v6, v0, Ls9/d;->g:Ljava/util/List;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 74
    iget-object v0, v0, Ls9/d;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 75
    :cond_17
    new-instance v0, Ls9/d$a;

    invoke-direct {v0, v2}, Ls9/d$a;-><init>(Ljava/util/List;)V

    .line 76
    iput-object v0, v1, Ls9/e;->b:Ls9/d$a;

    const/4 v0, 0x1

    goto :goto_b

    .line 77
    :cond_18
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_19
    const/4 v0, 0x0

    .line 78
    :goto_b
    iget-object v6, v1, Ls9/e;->d:Lp9/i;

    monitor-enter v6

    .line 79
    :try_start_3
    iget-boolean v2, v1, Ls9/e;->m:Z

    if-nez v2, :cond_22

    if-eqz v0, :cond_1b

    .line 80
    iget-object v0, v1, Ls9/e;->b:Ls9/d$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, v0, Ls9/d$a;->a:Ljava/util/List;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 82
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v9, 0x0

    :goto_c
    if-ge v9, v0, :cond_1b

    .line 83
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lp9/e0;

    .line 84
    sget-object v11, Lq9/a;->a:Lq9/a;

    iget-object v12, v1, Ls9/e;->d:Lp9/i;

    iget-object v13, v1, Ls9/e;->a:Lp9/a;

    invoke-virtual {v11, v12, v13, v1, v10}, Lq9/a;->c(Lp9/i;Lp9/a;Ls9/e;Lp9/e0;)Ls9/c;

    .line 85
    iget-object v11, v1, Ls9/e;->j:Ls9/c;

    if-eqz v11, :cond_1a

    .line 86
    iput-object v10, v1, Ls9/e;->c:Lp9/e0;

    const/4 v7, 0x1

    move-object v8, v11

    goto :goto_d

    :cond_1a
    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    :cond_1b
    :goto_d
    if-nez v7, :cond_1e

    if-nez v3, :cond_1d

    .line 87
    iget-object v0, v1, Ls9/e;->b:Ls9/d$a;

    .line 88
    invoke-virtual {v0}, Ls9/d$a;->a()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 89
    iget-object v2, v0, Ls9/d$a;->a:Ljava/util/List;

    iget v3, v0, Ls9/d$a;->b:I

    add-int/lit8 v8, v3, 0x1

    iput v8, v0, Ls9/d$a;->b:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lp9/e0;

    goto :goto_e

    .line 90
    :cond_1c
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 91
    :cond_1d
    :goto_e
    iput-object v3, v1, Ls9/e;->c:Lp9/e0;

    .line 92
    iput v4, v1, Ls9/e;->i:I

    .line 93
    new-instance v8, Ls9/c;

    iget-object v0, v1, Ls9/e;->d:Lp9/i;

    invoke-direct {v8, v0, v3}, Ls9/c;-><init>(Lp9/i;Lp9/e0;)V

    .line 94
    invoke-virtual {v1, v8, v4}, Ls9/e;->a(Ls9/c;Z)V

    .line 95
    :cond_1e
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v7, :cond_1f

    .line 96
    iget-object v0, v1, Ls9/e;->f:Lp9/o;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v8

    .line 97
    :cond_1f
    iget-object v15, v1, Ls9/e;->e:Lp9/e;

    iget-object v0, v1, Ls9/e;->f:Lp9/o;

    move-object v9, v8

    move/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    move/from16 v14, p5

    move-object/from16 v16, v0

    invoke-virtual/range {v9 .. v16}, Ls9/c;->c(IIIIZLp9/e;Lp9/o;)V

    .line 98
    sget-object v0, Lq9/a;->a:Lq9/a;

    iget-object v2, v1, Ls9/e;->d:Lp9/i;

    check-cast v0, Lp9/v$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, v2, Lp9/i;->e:Lf/t;

    .line 100
    iget-object v2, v8, Ls9/c;->c:Lp9/e0;

    .line 101
    invoke-virtual {v0, v2}, Lf/t;->b(Lp9/e0;)V

    .line 102
    iget-object v2, v1, Ls9/e;->d:Lp9/i;

    monitor-enter v2

    .line 103
    :try_start_4
    iput-boolean v5, v1, Ls9/e;->k:Z

    .line 104
    sget-object v0, Lq9/a;->a:Lq9/a;

    iget-object v3, v1, Ls9/e;->d:Lp9/i;

    check-cast v0, Lp9/v$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-boolean v0, v3, Lp9/i;->f:Z

    if-nez v0, :cond_20

    .line 106
    iput-boolean v5, v3, Lp9/i;->f:Z

    .line 107
    sget-object v0, Lp9/i;->g:Ljava/util/concurrent/Executor;

    iget-object v4, v3, Lp9/i;->c:Ljava/lang/Runnable;

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 108
    :cond_20
    iget-object v0, v3, Lp9/i;->d:Ljava/util/Deque;

    invoke-interface {v0, v8}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 109
    invoke-virtual {v8}, Ls9/c;->h()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 110
    sget-object v0, Lq9/a;->a:Lq9/a;

    iget-object v3, v1, Ls9/e;->d:Lp9/i;

    iget-object v4, v1, Ls9/e;->a:Lp9/a;

    invoke-virtual {v0, v3, v4, v1}, Lq9/a;->b(Lp9/i;Lp9/a;Ls9/e;)Ljava/net/Socket;

    move-result-object v0

    .line 111
    iget-object v8, v1, Ls9/e;->j:Ls9/c;

    goto :goto_f

    :cond_21
    const/4 v0, 0x0

    .line 112
    :goto_f
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 113
    invoke-static {v0}, Lq9/c;->e(Ljava/net/Socket;)V

    .line 114
    iget-object v0, v1, Ls9/e;->f:Lp9/o;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v8

    :catchall_1
    move-exception v0

    .line 115
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 116
    :cond_22
    :try_start_6
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_2
    move-exception v0

    .line 117
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 118
    :cond_23
    :try_start_7
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Canceled"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_24
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "codec != null"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_25
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "released"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_3
    move-exception v0

    .line 121
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0
.end method

.method public final e(IIIIZZ)Ls9/c;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :goto_0
    invoke-virtual/range {p0 .. p5}, Ls9/e;->d(IIIIZ)Ls9/c;

    move-result-object v0

    .line 2
    iget-object v1, p0, Ls9/e;->d:Lp9/i;

    monitor-enter v1

    .line 3
    :try_start_0
    iget v2, v0, Ls9/c;->l:I

    if-nez v2, :cond_0

    .line 4
    monitor-exit v1

    return-object v0

    .line 5
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 6
    iget-object v1, v0, Ls9/c;->e:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_5

    iget-object v1, v0, Ls9/c;->e:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v0, Ls9/c;->e:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    .line 7
    :cond_1
    iget-object v1, v0, Ls9/c;->h:Lv9/f;

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 8
    monitor-enter v1

    .line 9
    :try_start_1
    iget-boolean v2, v1, Lv9/f;->g:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    xor-int/2addr v2, v3

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v1

    throw p1

    :cond_2
    if-eqz p6, :cond_4

    .line 10
    :try_start_2
    iget-object v1, v0, Ls9/c;->e:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getSoTimeout()I

    move-result v1
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 11
    :try_start_3
    iget-object v4, v0, Ls9/c;->e:Ljava/net/Socket;

    invoke-virtual {v4, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 12
    iget-object v4, v0, Ls9/c;->i:Laa/h;

    invoke-interface {v4}, Laa/h;->v()Z

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v4, :cond_3

    .line 13
    :try_start_4
    iget-object v4, v0, Ls9/c;->e:Ljava/net/Socket;

    invoke-virtual {v4, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    goto :goto_2

    :cond_3
    iget-object v4, v0, Ls9/c;->e:Ljava/net/Socket;

    invoke-virtual {v4, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    goto :goto_1

    :catchall_1
    move-exception v4

    iget-object v5, v0, Ls9/c;->e:Ljava/net/Socket;

    invoke-virtual {v5, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v4
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_0
    :cond_4
    :goto_1
    const/4 v2, 0x1

    :catch_1
    :cond_5
    :goto_2
    if-nez v2, :cond_6

    .line 14
    invoke-virtual {p0}, Ls9/e;->f()V

    goto :goto_0

    :cond_6
    return-object v0

    :catchall_2
    move-exception p1

    .line 15
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1
.end method

.method public f()V
    .locals 4

    .line 1
    iget-object v0, p0, Ls9/e;->d:Lp9/i;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Ls9/e;->j:Ls9/c;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3
    invoke-virtual {p0, v2, v3, v3}, Ls9/e;->c(ZZZ)Ljava/net/Socket;

    move-result-object v2

    .line 4
    iget-object v3, p0, Ls9/e;->j:Ls9/c;

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-static {v2}, Lq9/c;->e(Ljava/net/Socket;)V

    if-eqz v1, :cond_1

    .line 7
    iget-object v0, p0, Ls9/e;->f:Lp9/o;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public g()V
    .locals 5

    .line 1
    iget-object v0, p0, Ls9/e;->d:Lp9/i;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Ls9/e;->j:Ls9/c;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3
    invoke-virtual {p0, v3, v2, v3}, Ls9/e;->c(ZZZ)Ljava/net/Socket;

    move-result-object v2

    .line 4
    iget-object v3, p0, Ls9/e;->j:Ls9/c;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    move-object v1, v4

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-static {v2}, Lq9/c;->e(Ljava/net/Socket;)V

    if-eqz v1, :cond_1

    .line 7
    sget-object v0, Lq9/a;->a:Lq9/a;

    iget-object v1, p0, Ls9/e;->e:Lp9/e;

    invoke-virtual {v0, v1, v4}, Lq9/a;->d(Lp9/e;Ljava/io/IOException;)Ljava/io/IOException;

    .line 8
    iget-object v0, p0, Ls9/e;->f:Lp9/o;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Ls9/e;->f:Lp9/o;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public h(Ljava/io/IOException;)V
    .locals 6

    .line 1
    iget-object v0, p0, Ls9/e;->d:Lp9/i;

    monitor-enter v0

    .line 2
    :try_start_0
    instance-of v1, p1, Lokhttp3/internal/http2/StreamResetException;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 3
    check-cast p1, Lokhttp3/internal/http2/StreamResetException;

    iget p1, p1, Lokhttp3/internal/http2/StreamResetException;->a:I

    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    .line 4
    iget p1, p0, Ls9/e;->i:I

    add-int/2addr p1, v3

    iput p1, p0, Ls9/e;->i:I

    if-le p1, v3, :cond_5

    .line 5
    iput-object v2, p0, Ls9/e;->c:Lp9/e0;

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    if-eq p1, v1, :cond_5

    .line 6
    iput-object v2, p0, Ls9/e;->c:Lp9/e0;

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, p0, Ls9/e;->j:Ls9/c;

    if-eqz v1, :cond_5

    .line 8
    invoke-virtual {v1}, Ls9/c;->h()Z

    move-result v1

    if-eqz v1, :cond_2

    instance-of v1, p1, Lokhttp3/internal/http2/ConnectionShutdownException;

    if-eqz v1, :cond_5

    .line 9
    :cond_2
    iget-object v1, p0, Ls9/e;->j:Ls9/c;

    iget v1, v1, Ls9/c;->l:I

    if-nez v1, :cond_4

    .line 10
    iget-object v1, p0, Ls9/e;->c:Lp9/e0;

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    .line 11
    iget-object v5, p0, Ls9/e;->h:Ls9/d;

    invoke-virtual {v5, v1, p1}, Ls9/d;->a(Lp9/e0;Ljava/io/IOException;)V

    .line 12
    :cond_3
    iput-object v2, p0, Ls9/e;->c:Lp9/e0;

    :cond_4
    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    .line 13
    :goto_1
    iget-object v1, p0, Ls9/e;->j:Ls9/c;

    .line 14
    invoke-virtual {p0, p1, v4, v3}, Ls9/e;->c(ZZZ)Ljava/net/Socket;

    move-result-object p1

    .line 15
    iget-object v3, p0, Ls9/e;->j:Ls9/c;

    if-nez v3, :cond_7

    iget-boolean v3, p0, Ls9/e;->k:Z

    if-nez v3, :cond_6

    goto :goto_2

    :cond_6
    move-object v2, v1

    .line 16
    :cond_7
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-static {p1}, Lq9/c;->e(Ljava/net/Socket;)V

    if-eqz v2, :cond_8

    .line 18
    iget-object p1, p0, Ls9/e;->f:Lp9/o;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    return-void

    :catchall_0
    move-exception p1

    .line 19
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public i(ZLt9/c;JLjava/io/IOException;)V
    .locals 1

    .line 1
    iget-object p3, p0, Ls9/e;->f:Lp9/o;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p3, p0, Ls9/e;->d:Lp9/i;

    monitor-enter p3

    if-eqz p2, :cond_5

    .line 3
    :try_start_0
    iget-object p4, p0, Ls9/e;->n:Lt9/c;

    if-ne p2, p4, :cond_5

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 4
    iget-object p4, p0, Ls9/e;->j:Ls9/c;

    iget v0, p4, Ls9/c;->l:I

    add-int/2addr v0, p2

    iput v0, p4, Ls9/c;->l:I

    .line 5
    :cond_0
    iget-object p4, p0, Ls9/e;->j:Ls9/c;

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, p1, v0, p2}, Ls9/e;->c(ZZZ)Ljava/net/Socket;

    move-result-object p1

    .line 7
    iget-object p2, p0, Ls9/e;->j:Ls9/c;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    move-object p4, v0

    .line 8
    :cond_1
    iget-boolean p2, p0, Ls9/e;->l:Z

    .line 9
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-static {p1}, Lq9/c;->e(Ljava/net/Socket;)V

    if-eqz p4, :cond_2

    .line 11
    iget-object p1, p0, Ls9/e;->f:Lp9/o;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz p5, :cond_3

    .line 12
    sget-object p1, Lq9/a;->a:Lq9/a;

    iget-object p2, p0, Ls9/e;->e:Lp9/e;

    invoke-virtual {p1, p2, p5}, Lq9/a;->d(Lp9/e;Ljava/io/IOException;)Ljava/io/IOException;

    .line 13
    iget-object p1, p0, Ls9/e;->f:Lp9/o;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    .line 14
    sget-object p1, Lq9/a;->a:Lq9/a;

    iget-object p2, p0, Ls9/e;->e:Lp9/e;

    invoke-virtual {p1, p2, v0}, Lq9/a;->d(Lp9/e;Ljava/io/IOException;)Ljava/io/IOException;

    .line 15
    iget-object p1, p0, Ls9/e;->f:Lp9/o;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_0
    return-void

    .line 16
    :cond_5
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "expected "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Ls9/e;->n:Lt9/c;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p5, " but was "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls9/e;->b()Ls9/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ls9/c;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ls9/e;->a:Lp9/a;

    invoke-virtual {v0}, Lp9/a;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
