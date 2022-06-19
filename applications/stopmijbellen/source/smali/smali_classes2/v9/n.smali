.class public final Lv9/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv9/n$b;,
        Lv9/n$a;
    }
.end annotation


# static fields
.field public static final e:Ljava/util/logging/Logger;


# instance fields
.field public final a:Laa/h;

.field public final b:Lv9/n$a;

.field public final c:Z

.field public final d:Lv9/b$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lv9/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lv9/n;->e:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Laa/h;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lv9/n;->a:Laa/h;

    .line 3
    iput-boolean p2, p0, Lv9/n;->c:Z

    .line 4
    new-instance p2, Lv9/n$a;

    invoke-direct {p2, p1}, Lv9/n$a;-><init>(Laa/h;)V

    iput-object p2, p0, Lv9/n;->b:Lv9/n$a;

    .line 5
    new-instance p1, Lv9/b$a;

    const/16 v0, 0x1000

    invoke-direct {p1, v0, p2}, Lv9/b$a;-><init>(ILaa/y;)V

    iput-object p1, p0, Lv9/n;->d:Lv9/b$a;

    return-void
.end method

.method public static d(IBS)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_0

    add-int/lit8 p0, p0, -0x1

    :cond_0
    if-gt p2, p0, :cond_1

    sub-int/2addr p0, p2

    int-to-short p0, p0

    return p0

    :cond_1
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 1
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    aput-object p2, p1, v0

    const/4 p2, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, p2

    const-string p0, "PROTOCOL_ERROR padding %s > remaining length %s"

    invoke-static {p0, p1}, Lv9/c;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    const/4 p0, 0x0

    throw p0
.end method

.method public static r(Laa/h;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Laa/h;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    .line 2
    invoke-interface {p0}, Laa/h;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 3
    invoke-interface {p0}, Laa/h;->readByte()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public final A(Lv9/n$b;IBI)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p4, :cond_2

    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_0

    .line 1
    iget-object v1, p0, Lv9/n;->a:Laa/h;

    invoke-interface {v1}, Laa/h;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lv9/n;->a:Laa/h;

    invoke-interface {v2}, Laa/h;->readInt()I

    move-result v2

    const v3, 0x7fffffff

    and-int v8, v2, v3

    add-int/lit8 p2, p2, -0x4

    .line 3
    invoke-static {p2, p3, v1}, Lv9/n;->d(IBS)I

    move-result p2

    .line 4
    invoke-virtual {p0, p2, v1, p3, p4}, Lv9/n;->p(ISBI)Ljava/util/List;

    move-result-object v9

    .line 5
    check-cast p1, Lv9/f$e;

    .line 6
    iget-object p1, p1, Lv9/f$e;->c:Lv9/f;

    .line 7
    monitor-enter p1

    .line 8
    :try_start_0
    iget-object p2, p1, Lv9/f;->t:Ljava/util/Set;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x2

    if-eqz p2, :cond_1

    .line 9
    invoke-virtual {p1, v8, p3}, Lv9/f;->J(II)V

    .line 10
    monitor-exit p1

    goto :goto_1

    .line 11
    :cond_1
    iget-object p2, p1, Lv9/f;->t:Ljava/util/Set;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 12
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :try_start_1
    new-instance p2, Lv9/g;

    const-string v6, "OkHttp %s Push Request[%s]"

    new-array v7, p3, [Ljava/lang/Object;

    iget-object p3, p1, Lv9/f;->d:Ljava/lang/String;

    aput-object p3, v7, v0

    const/4 p3, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v7, p3

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Lv9/g;-><init>(Lv9/f;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V

    invoke-virtual {p1, p2}, Lv9/f;->p(Lq9/b;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :goto_1
    return-void

    :catchall_0
    move-exception p2

    .line 14
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2

    :cond_2
    const-string p1, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    new-array p2, v0, [Ljava/lang/Object;

    .line 15
    invoke-static {p1, p2}, Lv9/c;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    const/4 p1, 0x0

    throw p1
.end method

.method public final B(Lv9/n$b;II)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-ne p2, v3, :cond_5

    if-eqz p3, :cond_4

    .line 1
    iget-object p2, p0, Lv9/n;->a:Laa/h;

    invoke-interface {p2}, Laa/h;->readInt()I

    move-result p2

    .line 2
    invoke-static {p2}, La6/h;->a(I)I

    move-result v8

    if-eqz v8, :cond_3

    .line 3
    check-cast p1, Lv9/f$e;

    .line 4
    iget-object p2, p1, Lv9/f$e;->c:Lv9/f;

    invoke-virtual {p2, p3}, Lv9/f;->r(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5
    iget-object p1, p1, Lv9/f$e;->c:Lv9/f;

    .line 6
    new-instance p2, Lv9/j;

    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/Object;

    iget-object v0, p1, Lv9/f;->d:Ljava/lang/String;

    aput-object v0, v6, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v1

    const-string v5, "OkHttp %s Push Reset[%s]"

    move-object v3, p2

    move-object v4, p1

    move v7, p3

    invoke-direct/range {v3 .. v8}, Lv9/j;-><init>(Lv9/f;Ljava/lang/String;[Ljava/lang/Object;II)V

    invoke-virtual {p1, p2}, Lv9/f;->p(Lq9/b;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p1, Lv9/f$e;->c:Lv9/f;

    invoke-virtual {p1, p3}, Lv9/f;->s(I)Lv9/o;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 8
    monitor-enter p1

    .line 9
    :try_start_0
    iget p2, p1, Lv9/o;->k:I

    if-nez p2, :cond_1

    .line 10
    iput v8, p1, Lv9/o;->k:I

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :cond_1
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1

    throw p2

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string p1, "TYPE_RST_STREAM unexpected error code: %d"

    new-array p3, v1, [Ljava/lang/Object;

    .line 13
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v2

    invoke-static {p1, p3}, Lv9/c;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v0

    :cond_4
    const-string p1, "TYPE_RST_STREAM streamId == 0"

    new-array p2, v2, [Ljava/lang/Object;

    .line 14
    invoke-static {p1, p2}, Lv9/c;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v0

    :cond_5
    const-string p1, "TYPE_RST_STREAM length: %d != 4"

    new-array p3, v1, [Ljava/lang/Object;

    .line 15
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v2

    invoke-static {p1, p3}, Lv9/c;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v0
.end method

.method public final D(Lv9/n$b;IBI)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p4, :cond_14

    const/4 p4, 0x1

    and-int/2addr p3, p4

    if-eqz p3, :cond_1

    if-nez p2, :cond_0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    const-string p1, "FRAME_SIZE_ERROR ack frame should be empty!"

    new-array p2, v1, [Ljava/lang/Object;

    .line 2
    invoke-static {p1, p2}, Lv9/c;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v0

    .line 3
    :cond_1
    rem-int/lit8 p3, p2, 0x6

    if-nez p3, :cond_13

    .line 4
    new-instance p3, Lj4/s0;

    invoke-direct {p3}, Lj4/s0;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_a

    .line 5
    iget-object v3, p0, Lv9/n;->a:Laa/h;

    invoke-interface {v3}, Laa/h;->readShort()S

    move-result v3

    const v4, 0xffff

    and-int/2addr v3, v4

    .line 6
    iget-object v4, p0, Lv9/n;->a:Laa/h;

    invoke-interface {v4}, Laa/h;->readInt()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x4

    if-eq v3, v5, :cond_7

    const/4 v5, 0x3

    if-eq v3, v5, :cond_6

    if-eq v3, v6, :cond_4

    const/4 v5, 0x5

    if-eq v3, v5, :cond_2

    goto :goto_1

    :cond_2
    const/16 v5, 0x4000

    if-lt v4, v5, :cond_3

    const v5, 0xffffff

    if-gt v4, v5, :cond_3

    goto :goto_1

    :cond_3
    const-string p1, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s"

    new-array p2, p4, [Ljava/lang/Object;

    .line 7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v1

    invoke-static {p1, p2}, Lv9/c;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v0

    :cond_4
    const/4 v3, 0x7

    if-ltz v4, :cond_5

    goto :goto_1

    :cond_5
    const-string p1, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    new-array p2, v1, [Ljava/lang/Object;

    .line 8
    invoke-static {p1, p2}, Lv9/c;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v0

    :cond_6
    const/4 v3, 0x4

    goto :goto_1

    :cond_7
    if-eqz v4, :cond_9

    if-ne v4, p4, :cond_8

    goto :goto_1

    :cond_8
    const-string p1, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    new-array p2, v1, [Ljava/lang/Object;

    .line 9
    invoke-static {p1, p2}, Lv9/c;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v0

    .line 10
    :cond_9
    :goto_1
    invoke-virtual {p3, v3, v4}, Lj4/s0;->b(II)Lj4/s0;

    add-int/lit8 v2, v2, 0x6

    goto :goto_0

    .line 11
    :cond_a
    check-cast p1, Lv9/f$e;

    .line 12
    iget-object v2, p1, Lv9/f$e;->c:Lv9/f;

    monitor-enter v2

    .line 13
    :try_start_0
    iget-object p2, p1, Lv9/f$e;->c:Lv9/f;

    iget-object p2, p2, Lv9/f;->o:Lj4/s0;

    invoke-virtual {p2}, Lj4/s0;->a()I

    move-result p2

    .line 14
    iget-object v3, p1, Lv9/f$e;->c:Lv9/f;

    iget-object v3, v3, Lv9/f;->o:Lj4/s0;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    :goto_2
    const/16 v5, 0xa

    if-ge v4, v5, :cond_d

    shl-int v5, p4, v4

    .line 15
    iget v6, p3, Lj4/s0;->a:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_b

    const/4 v5, 0x1

    goto :goto_3

    :cond_b
    const/4 v5, 0x0

    :goto_3
    if-nez v5, :cond_c

    goto :goto_4

    .line 16
    :cond_c
    iget-object v5, p3, Lj4/s0;->b:Ljava/lang/Object;

    check-cast v5, [I

    aget v5, v5, v4

    .line 17
    invoke-virtual {v3, v4, v5}, Lj4/s0;->b(II)Lj4/s0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 18
    :cond_d
    :try_start_1
    iget-object v3, p1, Lv9/f$e;->c:Lv9/f;

    .line 19
    iget-object v4, v3, Lv9/f;->h:Ljava/util/concurrent/ScheduledExecutorService;

    .line 20
    new-instance v5, Lv9/m;

    const-string v6, "OkHttp %s ACK Settings"

    new-array v7, p4, [Ljava/lang/Object;

    iget-object v3, v3, Lv9/f;->d:Ljava/lang/String;

    aput-object v3, v7, v1

    invoke-direct {v5, p1, v6, v7, p3}, Lv9/m;-><init>(Lv9/f$e;Ljava/lang/String;[Ljava/lang/Object;Lj4/s0;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 21
    :catch_0
    :try_start_2
    iget-object p3, p1, Lv9/f$e;->c:Lv9/f;

    iget-object p3, p3, Lv9/f;->o:Lj4/s0;

    invoke-virtual {p3}, Lj4/s0;->a()I

    move-result p3

    const/4 v3, -0x1

    const-wide/16 v4, 0x0

    if-eq p3, v3, :cond_f

    if-eq p3, p2, :cond_f

    sub-int/2addr p3, p2

    int-to-long p2, p3

    .line 22
    iget-object v3, p1, Lv9/f$e;->c:Lv9/f;

    iget-boolean v6, v3, Lv9/f;->p:Z

    if-nez v6, :cond_e

    .line 23
    iput-boolean p4, v3, Lv9/f;->p:Z

    .line 24
    :cond_e
    iget-object v3, v3, Lv9/f;->c:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_10

    .line 25
    iget-object v0, p1, Lv9/f$e;->c:Lv9/f;

    iget-object v0, v0, Lv9/f;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v3, p1, Lv9/f$e;->c:Lv9/f;

    iget-object v3, v3, Lv9/f;->c:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    new-array v3, v3, [Lv9/o;

    invoke-interface {v0, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lv9/o;

    goto :goto_5

    :cond_f
    move-wide p2, v4

    .line 26
    :cond_10
    :goto_5
    sget-object v3, Lv9/f;->u:Ljava/util/concurrent/ExecutorService;

    .line 27
    new-instance v6, Lv9/l;

    const-string v7, "OkHttp %s settings"

    new-array p4, p4, [Ljava/lang/Object;

    iget-object v8, p1, Lv9/f$e;->c:Lv9/f;

    iget-object v8, v8, Lv9/f;->d:Ljava/lang/String;

    aput-object v8, p4, v1

    invoke-direct {v6, p1, v7, p4}, Lv9/l;-><init>(Lv9/f$e;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast v3, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v3, v6}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 28
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_12

    cmp-long p1, p2, v4

    if-eqz p1, :cond_12

    .line 29
    array-length p4, v0

    :goto_6
    if-ge v1, p4, :cond_12

    aget-object v2, v0, v1

    .line 30
    monitor-enter v2

    .line 31
    :try_start_3
    iget-wide v3, v2, Lv9/o;->b:J

    add-long/2addr v3, p2

    iput-wide v3, v2, Lv9/o;->b:J

    if-lez p1, :cond_11

    .line 32
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 33
    :cond_11
    monitor-exit v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :cond_12
    return-void

    :catchall_1
    move-exception p1

    .line 34
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    :cond_13
    const-string p1, "TYPE_SETTINGS length %% 6 != 0: %s"

    new-array p3, p4, [Ljava/lang/Object;

    .line 35
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v1

    invoke-static {p1, p3}, Lv9/c;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v0

    :cond_14
    const-string p1, "TYPE_SETTINGS streamId != 0"

    new-array p2, v1, [Ljava/lang/Object;

    .line 36
    invoke-static {p1, p2}, Lv9/c;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v0
.end method

.method public final J(Lv9/n$b;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-ne p2, v3, :cond_4

    .line 1
    iget-object p2, p0, Lv9/n;->a:Laa/h;

    invoke-interface {p2}, Laa/h;->readInt()I

    move-result p2

    int-to-long v3, p2

    const-wide/32 v5, 0x7fffffff

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long p2, v3, v5

    if-eqz p2, :cond_3

    .line 2
    check-cast p1, Lv9/f$e;

    if-nez p3, :cond_0

    .line 3
    iget-object v0, p1, Lv9/f$e;->c:Lv9/f;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p1, p1, Lv9/f$e;->c:Lv9/f;

    iget-wide p2, p1, Lv9/f;->m:J

    add-long/2addr p2, v3

    iput-wide p2, p1, Lv9/f;->m:J

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 6
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 7
    :cond_0
    iget-object p1, p1, Lv9/f$e;->c:Lv9/f;

    invoke-virtual {p1, p3}, Lv9/f;->l(I)Lv9/o;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 8
    monitor-enter p1

    .line 9
    :try_start_1
    iget-wide v0, p1, Lv9/o;->b:J

    add-long/2addr v0, v3

    iput-wide v0, p1, Lv9/o;->b:J

    if-lez p2, :cond_1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 11
    :cond_1
    monitor-exit p1

    goto :goto_0

    :catchall_1
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p2

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string p1, "windowSizeIncrement was 0"

    new-array p2, v2, [Ljava/lang/Object;

    .line 12
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p2, v1

    invoke-static {p1, p2}, Lv9/c;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v0

    :cond_4
    const-string p1, "TYPE_WINDOW_UPDATE length !=4: %s"

    new-array p3, v2, [Ljava/lang/Object;

    .line 13
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v1

    invoke-static {p1, p3}, Lv9/c;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv9/n;->a:Laa/h;

    invoke-interface {v0}, Laa/y;->close()V

    return-void
.end method

.method public k(ZLv9/n$b;)Z
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const/4 v2, 0x0

    .line 1
    :try_start_0
    iget-object v3, v1, Lv9/n;->a:Laa/h;

    const-wide/16 v4, 0x9

    invoke-interface {v3, v4, v5}, Laa/h;->Q(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2
    iget-object v3, v1, Lv9/n;->a:Laa/h;

    invoke-static {v3}, Lv9/n;->r(Laa/h;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ltz v3, :cond_20

    const/16 v6, 0x4000

    if-gt v3, v6, :cond_20

    .line 3
    iget-object v6, v1, Lv9/n;->a:Laa/h;

    invoke-interface {v6}, Laa/h;->readByte()B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    const/4 v7, 0x4

    if-eqz p1, :cond_1

    if-ne v6, v7, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Expected a SETTINGS frame but was %s"

    new-array v3, v5, [Ljava/lang/Object;

    .line 4
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-static {v0, v3}, Lv9/c;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v4

    .line 5
    :cond_1
    :goto_0
    iget-object v8, v1, Lv9/n;->a:Laa/h;

    invoke-interface {v8}, Laa/h;->readByte()B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    .line 6
    iget-object v9, v1, Lv9/n;->a:Laa/h;

    invoke-interface {v9}, Laa/h;->readInt()I

    move-result v9

    const v10, 0x7fffffff

    and-int/2addr v9, v10

    .line 7
    sget-object v10, Lv9/n;->e:Ljava/util/logging/Logger;

    sget-object v11, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v10, v11}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v5, v9, v3, v6, v8}, Lv9/c;->a(ZIIBB)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_2
    const/4 v10, 0x2

    packed-switch v6, :pswitch_data_0

    .line 8
    iget-object v0, v1, Lv9/n;->a:Laa/h;

    int-to-long v2, v3

    invoke-interface {v0, v2, v3}, Laa/h;->j(J)V

    goto/16 :goto_b

    .line 9
    :pswitch_0
    invoke-virtual {v1, v0, v3, v9}, Lv9/n;->J(Lv9/n$b;II)V

    goto/16 :goto_b

    .line 10
    :pswitch_1
    invoke-virtual {v1, v0, v3, v9}, Lv9/n;->o(Lv9/n$b;II)V

    goto/16 :goto_b

    .line 11
    :pswitch_2
    invoke-virtual {v1, v0, v3, v8, v9}, Lv9/n;->s(Lv9/n$b;IBI)V

    goto/16 :goto_b

    .line 12
    :pswitch_3
    invoke-virtual {v1, v0, v3, v8, v9}, Lv9/n;->A(Lv9/n$b;IBI)V

    goto/16 :goto_b

    .line 13
    :pswitch_4
    invoke-virtual {v1, v0, v3, v8, v9}, Lv9/n;->D(Lv9/n$b;IBI)V

    goto/16 :goto_b

    .line 14
    :pswitch_5
    invoke-virtual {v1, v0, v3, v9}, Lv9/n;->B(Lv9/n$b;II)V

    goto/16 :goto_b

    :pswitch_6
    const/4 v6, 0x5

    if-ne v3, v6, :cond_4

    if-eqz v9, :cond_3

    .line 15
    iget-object v2, v1, Lv9/n;->a:Laa/h;

    invoke-interface {v2}, Laa/h;->readInt()I

    .line 16
    iget-object v2, v1, Lv9/n;->a:Laa/h;

    invoke-interface {v2}, Laa/h;->readByte()B

    .line 17
    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b

    :cond_3
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "TYPE_PRIORITY streamId == 0"

    .line 18
    invoke-static {v2, v0}, Lv9/c;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v4

    :cond_4
    new-array v0, v5, [Ljava/lang/Object;

    .line 19
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "TYPE_PRIORITY length: %d != 5"

    invoke-static {v2, v0}, Lv9/c;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v4

    :pswitch_7
    if-eqz v9, :cond_e

    and-int/lit8 v4, v8, 0x1

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    :goto_1
    and-int/lit8 v6, v8, 0x8

    if-eqz v6, :cond_6

    .line 20
    iget-object v6, v1, Lv9/n;->a:Laa/h;

    invoke-interface {v6}, Laa/h;->readByte()B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    int-to-short v6, v6

    goto :goto_2

    :cond_6
    const/4 v6, 0x0

    :goto_2
    and-int/lit8 v7, v8, 0x20

    if-eqz v7, :cond_7

    .line 21
    iget-object v7, v1, Lv9/n;->a:Laa/h;

    invoke-interface {v7}, Laa/h;->readInt()I

    .line 22
    iget-object v7, v1, Lv9/n;->a:Laa/h;

    invoke-interface {v7}, Laa/h;->readByte()B

    .line 23
    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x5

    .line 24
    :cond_7
    invoke-static {v3, v8, v6}, Lv9/n;->d(IBS)I

    move-result v3

    .line 25
    invoke-virtual {v1, v3, v6, v8, v9}, Lv9/n;->p(ISBI)Ljava/util/List;

    move-result-object v16

    .line 26
    check-cast v0, Lv9/f$e;

    .line 27
    iget-object v3, v0, Lv9/f$e;->c:Lv9/f;

    invoke-virtual {v3, v9}, Lv9/f;->r(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 28
    iget-object v0, v0, Lv9/f$e;->c:Lv9/f;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :try_start_1
    new-instance v3, Lv9/h;

    const-string v13, "OkHttp %s Push Headers[%s]"

    new-array v14, v10, [Ljava/lang/Object;

    iget-object v6, v0, Lv9/f;->d:Ljava/lang/String;

    aput-object v6, v14, v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v14, v5

    move-object v11, v3

    move-object v12, v0

    move v15, v9

    move/from16 v17, v4

    invoke-direct/range {v11 .. v17}, Lv9/h;-><init>(Lv9/f;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V

    invoke-virtual {v0, v3}, Lv9/f;->p(Lq9/b;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_b

    .line 30
    :cond_8
    iget-object v3, v0, Lv9/f$e;->c:Lv9/f;

    monitor-enter v3

    .line 31
    :try_start_2
    iget-object v6, v0, Lv9/f$e;->c:Lv9/f;

    invoke-virtual {v6, v9}, Lv9/f;->l(I)Lv9/o;

    move-result-object v6

    if-nez v6, :cond_c

    .line 32
    iget-object v6, v0, Lv9/f$e;->c:Lv9/f;

    iget-boolean v7, v6, Lv9/f;->g:Z

    if-eqz v7, :cond_9

    monitor-exit v3

    goto/16 :goto_b

    .line 33
    :cond_9
    iget v7, v6, Lv9/f;->e:I

    if-gt v9, v7, :cond_a

    monitor-exit v3

    goto/16 :goto_b

    .line 34
    :cond_a
    rem-int/lit8 v7, v9, 0x2

    iget v6, v6, Lv9/f;->f:I

    rem-int/2addr v6, v10

    if-ne v7, v6, :cond_b

    monitor-exit v3

    goto/16 :goto_b

    .line 35
    :cond_b
    invoke-static/range {v16 .. v16}, Lq9/c;->w(Ljava/util/List;)Lp9/r;

    move-result-object v16

    .line 36
    new-instance v6, Lv9/o;

    iget-object v13, v0, Lv9/f$e;->c:Lv9/f;

    const/4 v14, 0x0

    move-object v11, v6

    move v12, v9

    move v15, v4

    invoke-direct/range {v11 .. v16}, Lv9/o;-><init>(ILv9/f;ZZLp9/r;)V

    .line 37
    iget-object v4, v0, Lv9/f$e;->c:Lv9/f;

    iput v9, v4, Lv9/f;->e:I

    .line 38
    iget-object v4, v4, Lv9/f;->c:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v4, Lv9/f;->u:Ljava/util/concurrent/ExecutorService;

    .line 40
    new-instance v7, Lv9/k;

    const-string v8, "OkHttp %s stream %d"

    new-array v10, v10, [Ljava/lang/Object;

    iget-object v11, v0, Lv9/f$e;->c:Lv9/f;

    iget-object v11, v11, Lv9/f;->d:Ljava/lang/String;

    aput-object v11, v10, v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v10, v5

    invoke-direct {v7, v0, v8, v10, v6}, Lv9/k;-><init>(Lv9/f$e;Ljava/lang/String;[Ljava/lang/Object;Lv9/o;)V

    check-cast v4, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v4, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 41
    monitor-exit v3

    goto/16 :goto_b

    .line 42
    :cond_c
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 43
    monitor-enter v6

    .line 44
    :try_start_3
    iput-boolean v5, v6, Lv9/o;->f:Z

    .line 45
    iget-object v0, v6, Lv9/o;->e:Ljava/util/Deque;

    invoke-static/range {v16 .. v16}, Lq9/c;->w(Ljava/util/List;)Lp9/r;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 46
    invoke-virtual {v6}, Lv9/o;->h()Z

    move-result v0

    .line 47
    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 48
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v0, :cond_d

    .line 49
    iget-object v0, v6, Lv9/o;->d:Lv9/f;

    iget v2, v6, Lv9/o;->c:I

    invoke-virtual {v0, v2}, Lv9/f;->s(I)Lv9/o;

    :cond_d
    if-eqz v4, :cond_1f

    .line 50
    invoke-virtual {v6}, Lv9/o;->i()V

    goto/16 :goto_b

    :catchall_0
    move-exception v0

    .line 51
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 52
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :cond_e
    const-string v0, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    new-array v2, v2, [Ljava/lang/Object;

    .line 53
    invoke-static {v0, v2}, Lv9/c;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v4

    :pswitch_8
    if-eqz v9, :cond_1e

    and-int/lit8 v6, v8, 0x1

    if-eqz v6, :cond_f

    const/16 v18, 0x1

    goto :goto_3

    :cond_f
    const/16 v18, 0x0

    :goto_3
    and-int/lit8 v6, v8, 0x20

    if-eqz v6, :cond_10

    const/4 v6, 0x1

    goto :goto_4

    :cond_10
    const/4 v6, 0x0

    :goto_4
    if-nez v6, :cond_1d

    and-int/lit8 v4, v8, 0x8

    if-eqz v4, :cond_11

    .line 54
    iget-object v4, v1, Lv9/n;->a:Laa/h;

    invoke-interface {v4}, Laa/h;->readByte()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-short v4, v4

    goto :goto_5

    :cond_11
    const/4 v4, 0x0

    .line 55
    :goto_5
    invoke-static {v3, v8, v4}, Lv9/n;->d(IBS)I

    move-result v3

    .line 56
    iget-object v6, v1, Lv9/n;->a:Laa/h;

    check-cast v0, Lv9/f$e;

    .line 57
    iget-object v8, v0, Lv9/f$e;->c:Lv9/f;

    invoke-virtual {v8, v9}, Lv9/f;->r(I)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 58
    iget-object v0, v0, Lv9/f$e;->c:Lv9/f;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    new-instance v7, Laa/f;

    invoke-direct {v7}, Laa/f;-><init>()V

    int-to-long v11, v3

    .line 60
    invoke-interface {v6, v11, v12}, Laa/h;->Q(J)V

    .line 61
    invoke-interface {v6, v7, v11, v12}, Laa/y;->f(Laa/f;J)J

    .line 62
    iget-wide v13, v7, Laa/f;->b:J

    cmp-long v6, v13, v11

    if-nez v6, :cond_12

    .line 63
    new-instance v6, Lv9/i;

    new-array v14, v10, [Ljava/lang/Object;

    iget-object v8, v0, Lv9/f;->d:Ljava/lang/String;

    aput-object v8, v14, v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v14, v5

    const-string v13, "OkHttp %s Push Data[%s]"

    move-object v11, v6

    move-object v12, v0

    move v15, v9

    move-object/from16 v16, v7

    move/from16 v17, v3

    invoke-direct/range {v11 .. v18}, Lv9/i;-><init>(Lv9/f;Ljava/lang/String;[Ljava/lang/Object;ILaa/f;IZ)V

    invoke-virtual {v0, v6}, Lv9/f;->p(Lq9/b;)V

    goto/16 :goto_a

    .line 64
    :cond_12
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    iget-wide v4, v7, Laa/f;->b:J

    .line 66
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " != "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_13
    iget-object v8, v0, Lv9/f$e;->c:Lv9/f;

    invoke-virtual {v8, v9}, Lv9/f;->l(I)Lv9/o;

    move-result-object v8

    if-nez v8, :cond_14

    .line 68
    iget-object v2, v0, Lv9/f$e;->c:Lv9/f;

    invoke-virtual {v2, v9, v10}, Lv9/f;->J(II)V

    .line 69
    iget-object v0, v0, Lv9/f$e;->c:Lv9/f;

    int-to-long v2, v3

    invoke-virtual {v0, v2, v3}, Lv9/f;->B(J)V

    .line 70
    invoke-interface {v6, v2, v3}, Laa/h;->j(J)V

    goto/16 :goto_a

    .line 71
    :cond_14
    iget-object v0, v8, Lv9/o;->g:Lv9/o$b;

    int-to-long v9, v3

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    const-wide/16 v11, 0x0

    cmp-long v3, v9, v11

    if-lez v3, :cond_1b

    .line 72
    iget-object v3, v0, Lv9/o$b;->f:Lv9/o;

    monitor-enter v3

    .line 73
    :try_start_6
    iget-boolean v13, v0, Lv9/o$b;->e:Z

    .line 74
    iget-object v14, v0, Lv9/o$b;->b:Laa/f;

    .line 75
    iget-wide v14, v14, Laa/f;->b:J

    add-long/2addr v14, v9

    .line 76
    iget-wide v11, v0, Lv9/o$b;->c:J

    cmp-long v16, v14, v11

    if-lez v16, :cond_15

    const/4 v11, 0x1

    goto :goto_7

    :cond_15
    const/4 v11, 0x0

    .line 77
    :goto_7
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v11, :cond_16

    .line 78
    invoke-interface {v6, v9, v10}, Laa/h;->j(J)V

    .line 79
    iget-object v0, v0, Lv9/o$b;->f:Lv9/o;

    invoke-virtual {v0, v7}, Lv9/o;->e(I)V

    goto :goto_9

    :cond_16
    if-eqz v13, :cond_17

    .line 80
    invoke-interface {v6, v9, v10}, Laa/h;->j(J)V

    goto :goto_9

    .line 81
    :cond_17
    iget-object v3, v0, Lv9/o$b;->a:Laa/f;

    invoke-interface {v6, v3, v9, v10}, Laa/y;->f(Laa/f;J)J

    move-result-wide v11

    const-wide/16 v13, -0x1

    cmp-long v3, v11, v13

    if-eqz v3, :cond_1a

    sub-long/2addr v9, v11

    .line 82
    iget-object v3, v0, Lv9/o$b;->f:Lv9/o;

    monitor-enter v3

    .line 83
    :try_start_7
    iget-object v11, v0, Lv9/o$b;->b:Laa/f;

    .line 84
    iget-wide v12, v11, Laa/f;->b:J

    const-wide/16 v14, 0x0

    cmp-long v16, v12, v14

    if-nez v16, :cond_18

    const/4 v12, 0x1

    goto :goto_8

    :cond_18
    const/4 v12, 0x0

    .line 85
    :goto_8
    iget-object v13, v0, Lv9/o$b;->a:Laa/f;

    invoke-virtual {v11, v13}, Laa/f;->W(Laa/y;)J

    if-eqz v12, :cond_19

    .line 86
    iget-object v11, v0, Lv9/o$b;->f:Lv9/o;

    invoke-virtual {v11}, Ljava/lang/Object;->notifyAll()V

    .line 87
    :cond_19
    monitor-exit v3

    goto :goto_6

    :catchall_2
    move-exception v0

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    .line 88
    :cond_1a
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :catchall_3
    move-exception v0

    .line 89
    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0

    :cond_1b
    :goto_9
    if-eqz v18, :cond_1c

    .line 90
    invoke-virtual {v8}, Lv9/o;->i()V

    .line 91
    :cond_1c
    :goto_a
    iget-object v0, v1, Lv9/n;->a:Laa/h;

    int-to-long v2, v4

    invoke-interface {v0, v2, v3}, Laa/h;->j(J)V

    goto :goto_b

    :cond_1d
    const-string v0, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    new-array v2, v2, [Ljava/lang/Object;

    .line 92
    invoke-static {v0, v2}, Lv9/c;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v4

    :cond_1e
    const-string v0, "PROTOCOL_ERROR: TYPE_DATA streamId == 0"

    new-array v2, v2, [Ljava/lang/Object;

    .line 93
    invoke-static {v0, v2}, Lv9/c;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v4

    :catch_0
    :cond_1f
    :goto_b
    return v5

    :cond_20
    const-string v0, "FRAME_SIZE_ERROR: %s"

    new-array v5, v5, [Ljava/lang/Object;

    .line 94
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v0, v5}, Lv9/c;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v4

    :catch_1
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public l(Lv9/n$b;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lv9/n;->c:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0, v3, p1}, Lv9/n;->k(ZLv9/n$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "Required SETTINGS preface not received"

    .line 3
    invoke-static {v0, p1}, Lv9/c;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v1

    .line 4
    :cond_1
    iget-object p1, p0, Lv9/n;->a:Laa/h;

    sget-object v0, Lv9/c;->a:Laa/i;

    .line 5
    iget-object v4, v0, Laa/i;->a:[B

    array-length v4, v4

    int-to-long v4, v4

    .line 6
    invoke-interface {p1, v4, v5}, Laa/h;->i(J)Laa/i;

    move-result-object p1

    .line 7
    sget-object v4, Lv9/n;->e:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Laa/i;->h()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v6, "<< CONNECTION %s"

    invoke-static {v6, v5}, Lq9/c;->l(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 8
    :cond_2
    invoke-virtual {v0, p1}, Laa/i;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    return-void

    :cond_3
    new-array v0, v3, [Ljava/lang/Object;

    .line 9
    invoke-virtual {p1}, Laa/i;->o()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "Expected a connection header but was %s"

    invoke-static {p1, v0}, Lv9/c;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v1
.end method

.method public final o(Lv9/n$b;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-lt p2, v2, :cond_6

    if-nez p3, :cond_5

    .line 1
    iget-object p3, p0, Lv9/n;->a:Laa/h;

    invoke-interface {p3}, Laa/h;->readInt()I

    move-result p3

    .line 2
    iget-object v4, p0, Lv9/n;->a:Laa/h;

    invoke-interface {v4}, Laa/h;->readInt()I

    move-result v4

    sub-int/2addr p2, v2

    .line 3
    invoke-static {v4}, La6/h;->a(I)I

    move-result v2

    if-eqz v2, :cond_4

    .line 4
    sget-object v1, Laa/i;->e:Laa/i;

    if-lez p2, :cond_0

    .line 5
    iget-object v1, p0, Lv9/n;->a:Laa/h;

    int-to-long v4, p2

    invoke-interface {v1, v4, v5}, Laa/h;->i(J)Laa/i;

    move-result-object v1

    .line 6
    :cond_0
    check-cast p1, Lv9/f$e;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {v1}, Laa/i;->l()I

    .line 8
    iget-object p2, p1, Lv9/f$e;->c:Lv9/f;

    monitor-enter p2

    .line 9
    :try_start_0
    iget-object v1, p1, Lv9/f$e;->c:Lv9/f;

    iget-object v1, v1, Lv9/f;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p1, Lv9/f$e;->c:Lv9/f;

    iget-object v2, v2, Lv9/f;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lv9/o;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lv9/o;

    .line 10
    iget-object v2, p1, Lv9/f$e;->c:Lv9/f;

    iput-boolean v0, v2, Lv9/f;->g:Z

    .line 11
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    array-length p2, v1

    :goto_0
    if-ge v3, p2, :cond_3

    aget-object v0, v1, v3

    .line 13
    iget v2, v0, Lv9/o;->c:I

    if-le v2, p3, :cond_2

    .line 14
    invoke-virtual {v0}, Lv9/o;->g()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x5

    .line 15
    monitor-enter v0

    .line 16
    :try_start_1
    iget v4, v0, Lv9/o;->k:I

    if-nez v4, :cond_1

    .line 17
    iput v2, v0, Lv9/o;->k:I

    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    :cond_1
    monitor-exit v0

    .line 20
    iget-object v2, p1, Lv9/f$e;->c:Lv9/f;

    .line 21
    iget v0, v0, Lv9/o;->c:I

    .line 22
    invoke-virtual {v2, v0}, Lv9/f;->s(I)Lv9/o;

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 23
    monitor-exit v0

    throw p1

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void

    :catchall_1
    move-exception p1

    .line 24
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_4
    const-string p1, "TYPE_GOAWAY unexpected error code: %d"

    new-array p2, v0, [Ljava/lang/Object;

    .line 25
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v3

    invoke-static {p1, p2}, Lv9/c;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v1

    :cond_5
    const-string p1, "TYPE_GOAWAY streamId != 0"

    new-array p2, v3, [Ljava/lang/Object;

    .line 26
    invoke-static {p1, p2}, Lv9/c;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v1

    :cond_6
    const-string p1, "TYPE_GOAWAY length < 8: %s"

    new-array p3, v0, [Ljava/lang/Object;

    .line 27
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v3

    invoke-static {p1, p3}, Lv9/c;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v1
.end method

.method public final p(ISBI)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ISBI)",
            "Ljava/util/List<",
            "Lv9/a;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv9/n;->b:Lv9/n$a;

    iput p1, v0, Lv9/n$a;->e:I

    iput p1, v0, Lv9/n$a;->b:I

    .line 2
    iput-short p2, v0, Lv9/n$a;->f:S

    .line 3
    iput-byte p3, v0, Lv9/n$a;->c:B

    .line 4
    iput p4, v0, Lv9/n$a;->d:I

    .line 5
    iget-object p1, p0, Lv9/n;->d:Lv9/b$a;

    .line 6
    :cond_0
    :goto_0
    iget-object p2, p1, Lv9/b$a;->b:Laa/h;

    invoke-interface {p2}, Laa/h;->v()Z

    move-result p2

    if-nez p2, :cond_d

    .line 7
    iget-object p2, p1, Lv9/b$a;->b:Laa/h;

    invoke-interface {p2}, Laa/h;->readByte()B

    move-result p2

    and-int/lit16 p2, p2, 0xff

    const/16 p3, 0x80

    if-eq p2, p3, :cond_c

    and-int/lit16 p4, p2, 0x80

    if-ne p4, p3, :cond_4

    const/16 p3, 0x7f

    .line 8
    invoke-virtual {p1, p2, p3}, Lv9/b$a;->g(II)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_1

    .line 9
    sget-object p3, Lv9/b;->a:[Lv9/a;

    array-length p3, p3

    add-int/lit8 p3, p3, -0x1

    if-gt p2, p3, :cond_1

    const/4 p3, 0x1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    :goto_1
    if-eqz p3, :cond_2

    .line 10
    sget-object p3, Lv9/b;->a:[Lv9/a;

    aget-object p2, p3, p2

    .line 11
    iget-object p3, p1, Lv9/b$a;->a:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_2
    sget-object p3, Lv9/b;->a:[Lv9/a;

    array-length p3, p3

    sub-int p3, p2, p3

    invoke-virtual {p1, p3}, Lv9/b$a;->b(I)I

    move-result p3

    if-ltz p3, :cond_3

    .line 13
    iget-object p4, p1, Lv9/b$a;->e:[Lv9/a;

    array-length v0, p4

    if-ge p3, v0, :cond_3

    .line 14
    iget-object p2, p1, Lv9/b$a;->a:Ljava/util/List;

    aget-object p3, p4, p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p3, "Header index too large "

    invoke-static {p3}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const/4 p3, -0x1

    const/16 p4, 0x40

    if-ne p2, p4, :cond_5

    .line 16
    invoke-virtual {p1}, Lv9/b$a;->f()Laa/i;

    move-result-object p2

    invoke-static {p2}, Lv9/b;->a(Laa/i;)Laa/i;

    .line 17
    invoke-virtual {p1}, Lv9/b$a;->f()Laa/i;

    move-result-object p4

    .line 18
    new-instance v0, Lv9/a;

    invoke-direct {v0, p2, p4}, Lv9/a;-><init>(Laa/i;Laa/i;)V

    invoke-virtual {p1, p3, v0}, Lv9/b$a;->e(ILv9/a;)V

    goto :goto_0

    :cond_5
    and-int/lit8 v0, p2, 0x40

    if-ne v0, p4, :cond_6

    const/16 p4, 0x3f

    .line 19
    invoke-virtual {p1, p2, p4}, Lv9/b$a;->g(II)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    .line 20
    invoke-virtual {p1, p2}, Lv9/b$a;->d(I)Laa/i;

    move-result-object p2

    .line 21
    invoke-virtual {p1}, Lv9/b$a;->f()Laa/i;

    move-result-object p4

    .line 22
    new-instance v0, Lv9/a;

    invoke-direct {v0, p2, p4}, Lv9/a;-><init>(Laa/i;Laa/i;)V

    invoke-virtual {p1, p3, v0}, Lv9/b$a;->e(ILv9/a;)V

    goto/16 :goto_0

    :cond_6
    and-int/lit8 p3, p2, 0x20

    const/16 p4, 0x20

    if-ne p3, p4, :cond_9

    const/16 p3, 0x1f

    .line 23
    invoke-virtual {p1, p2, p3}, Lv9/b$a;->g(II)I

    move-result p2

    iput p2, p1, Lv9/b$a;->d:I

    if-ltz p2, :cond_8

    .line 24
    iget p3, p1, Lv9/b$a;->c:I

    if-gt p2, p3, :cond_8

    .line 25
    iget p3, p1, Lv9/b$a;->h:I

    if-ge p2, p3, :cond_0

    if-nez p2, :cond_7

    .line 26
    invoke-virtual {p1}, Lv9/b$a;->a()V

    goto/16 :goto_0

    :cond_7
    sub-int/2addr p3, p2

    .line 27
    invoke-virtual {p1, p3}, Lv9/b$a;->c(I)I

    goto/16 :goto_0

    .line 28
    :cond_8
    new-instance p2, Ljava/io/IOException;

    const-string p3, "Invalid dynamic table size update "

    invoke-static {p3}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget p1, p1, Lv9/b$a;->d:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_9
    const/16 p3, 0x10

    if-eq p2, p3, :cond_b

    if-nez p2, :cond_a

    goto :goto_2

    :cond_a
    const/16 p3, 0xf

    .line 29
    invoke-virtual {p1, p2, p3}, Lv9/b$a;->g(II)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    .line 30
    invoke-virtual {p1, p2}, Lv9/b$a;->d(I)Laa/i;

    move-result-object p2

    .line 31
    invoke-virtual {p1}, Lv9/b$a;->f()Laa/i;

    move-result-object p3

    .line 32
    iget-object p4, p1, Lv9/b$a;->a:Ljava/util/List;

    new-instance v0, Lv9/a;

    invoke-direct {v0, p2, p3}, Lv9/a;-><init>(Laa/i;Laa/i;)V

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 33
    :cond_b
    :goto_2
    invoke-virtual {p1}, Lv9/b$a;->f()Laa/i;

    move-result-object p2

    invoke-static {p2}, Lv9/b;->a(Laa/i;)Laa/i;

    .line 34
    invoke-virtual {p1}, Lv9/b$a;->f()Laa/i;

    move-result-object p3

    .line 35
    iget-object p4, p1, Lv9/b$a;->a:Ljava/util/List;

    new-instance v0, Lv9/a;

    invoke-direct {v0, p2, p3}, Lv9/a;-><init>(Laa/i;Laa/i;)V

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 36
    :cond_c
    new-instance p1, Ljava/io/IOException;

    const-string p2, "index == 0"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_d
    iget-object p1, p0, Lv9/n;->d:Lv9/b$a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    new-instance p2, Ljava/util/ArrayList;

    iget-object p3, p1, Lv9/b$a;->a:Ljava/util/List;

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 39
    iget-object p1, p1, Lv9/b$a;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-object p2
.end method

.method public final s(Lv9/n$b;IBI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x8

    if-ne p2, v3, :cond_3

    if-nez p4, :cond_2

    .line 1
    iget-object p2, p0, Lv9/n;->a:Laa/h;

    invoke-interface {p2}, Laa/h;->readInt()I

    move-result p2

    .line 2
    iget-object p4, p0, Lv9/n;->a:Laa/h;

    invoke-interface {p4}, Laa/h;->readInt()I

    move-result p4

    and-int/2addr p3, v2

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 3
    :goto_0
    check-cast p1, Lv9/f$e;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_1

    .line 4
    iget-object p3, p1, Lv9/f$e;->c:Lv9/f;

    monitor-enter p3

    .line 5
    :try_start_0
    iget-object p1, p1, Lv9/f$e;->c:Lv9/f;

    .line 6
    iput-boolean v1, p1, Lv9/f;->k:Z

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 8
    monitor-exit p3

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 9
    :cond_1
    :try_start_1
    iget-object p1, p1, Lv9/f$e;->c:Lv9/f;

    .line 10
    iget-object p3, p1, Lv9/f;->h:Ljava/util/concurrent/ScheduledExecutorService;

    .line 11
    new-instance v0, Lv9/f$d;

    invoke-direct {v0, p1, v2, p2, p4}, Lv9/f$d;-><init>(Lv9/f;ZII)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :goto_1
    return-void

    :cond_2
    const-string p1, "TYPE_PING streamId != 0"

    new-array p2, v1, [Ljava/lang/Object;

    .line 12
    invoke-static {p1, p2}, Lv9/c;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v0

    :cond_3
    const-string p1, "TYPE_PING length != 8: %s"

    new-array p3, v2, [Ljava/lang/Object;

    .line 13
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v1

    invoke-static {p1, p3}, Lv9/c;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v0
.end method
