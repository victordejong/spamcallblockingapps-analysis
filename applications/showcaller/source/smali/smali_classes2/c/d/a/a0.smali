.class public Lc/d/a/a0;
.super Ljava/lang/Object;
.source "MessageSnapshotGate.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/message/b$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/util/List;Lcom/liulishuo/filedownloader/message/MessageSnapshot;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/d/a/a$b;",
            ">;",
            "Lcom/liulishuo/filedownloader/message/MessageSnapshot;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    invoke-virtual {p2}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->k()B

    move-result v0

    const/4 v3, -0x3

    if-ne v0, v3, :cond_1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/d/a/a$b;

    .line 3
    invoke-interface {v3}, Lc/d/a/a$b;->B()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 4
    :try_start_0
    invoke-interface {v3}, Lc/d/a/a$b;->m()Lc/d/a/x$a;

    move-result-object v3

    invoke-interface {v3, p2}, Lc/d/a/x$a;->m(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string p1, "updateMoreLikelyCompleted"

    new-array p2, v2, [Ljava/lang/Object;

    .line 5
    invoke-static {p0, p1, p2}, Lc/d/a/i0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    monitor-exit v4

    return v1

    .line 7
    :cond_0
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 8
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/d/a/a$b;

    .line 9
    invoke-interface {v3}, Lc/d/a/a$b;->B()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 10
    :try_start_1
    invoke-interface {v3}, Lc/d/a/a$b;->m()Lc/d/a/x$a;

    move-result-object v3

    invoke-interface {v3, p2}, Lc/d/a/x$a;->o(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string p1, "updateKeepFlow"

    new-array p2, v2, [Ljava/lang/Object;

    .line 11
    invoke-static {p0, p1, p2}, Lc/d/a/i0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    monitor-exit v4

    return v1

    .line 13
    :cond_2
    monitor-exit v4

    goto :goto_1

    :catchall_1
    move-exception p1

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_3
    const/4 v0, -0x4

    .line 14
    invoke-virtual {p2}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->k()B

    move-result v3

    if-ne v0, v3, :cond_5

    .line 15
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/d/a/a$b;

    .line 16
    invoke-interface {v3}, Lc/d/a/a$b;->B()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 17
    :try_start_2
    invoke-interface {v3}, Lc/d/a/a$b;->m()Lc/d/a/x$a;

    move-result-object v3

    invoke-interface {v3, p2}, Lc/d/a/x$a;->a(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string p1, "updateSampleFilePathTaskRunning"

    new-array p2, v2, [Ljava/lang/Object;

    .line 18
    invoke-static {p0, p1, p2}, Lc/d/a/i0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    monitor-exit v4

    return v1

    .line 20
    :cond_4
    monitor-exit v4

    goto :goto_2

    :catchall_2
    move-exception p1

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    .line 21
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_6

    .line 22
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/d/a/a$b;

    .line 23
    invoke-interface {p1}, Lc/d/a/a$b;->B()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_3
    const-string v1, "updateKeepAhead"

    new-array v2, v2, [Ljava/lang/Object;

    .line 24
    invoke-static {p0, v1, v2}, Lc/d/a/i0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    invoke-interface {p1}, Lc/d/a/a$b;->m()Lc/d/a/x$a;

    move-result-object p1

    invoke-interface {p1, p2}, Lc/d/a/x$a;->h(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_3
    move-exception p1

    .line 26
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw p1

    :cond_6
    return v2
.end method


# virtual methods
.method public D0(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->e()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-static {}, Lc/d/a/h;->e()Lc/d/a/h;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Lc/d/a/h;->f(I)Ljava/util/List;

    move-result-object v1

    .line 5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_2

    .line 6
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/d/a/a$b;

    invoke-interface {v2}, Lc/d/a/a$b;->J()Lc/d/a/a;

    move-result-object v2

    .line 7
    sget-boolean v5, Lc/d/a/i0/d;->a:Z

    if-eqz v5, :cond_0

    const-string v5, "~~~callback %s old[%s] new[%s] %d"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    .line 8
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->e()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-interface {v2}, Lc/d/a/a;->e()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v6, v3

    const/4 v2, 0x2

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->k()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x3

    .line 9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    .line 10
    invoke-static {p0, v5, v6}, Lc/d/a/i0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    :cond_0
    invoke-direct {p0, v1, p1}, Lc/d/a/a0;->a(Ljava/util/List;Lcom/liulishuo/filedownloader/message/MessageSnapshot;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The event isn\'t consumed, id:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->e()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " status:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->k()B

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " task-count:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/d/a/a$b;

    const-string v3, " | "

    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lc/d/a/a$b;->J()Lc/d/a/a;

    move-result-object v1

    invoke-interface {v1}, Lc/d/a/a;->e()B

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, p1, v1}, Lc/d/a/i0/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const-string v1, "Receive the event %d, but there isn\'t any running task in the upper layer"

    new-array v2, v3, [Ljava/lang/Object;

    .line 18
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->k()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    aput-object p1, v2, v4

    .line 19
    invoke-static {p0, v1, v2}, Lc/d/a/i0/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    :cond_3
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
