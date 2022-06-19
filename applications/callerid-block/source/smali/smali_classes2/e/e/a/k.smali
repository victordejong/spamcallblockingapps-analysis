.class Le/e/a/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/e/a/s;


# instance fields
.field private a:Le/e/a/a$b;

.field private b:Le/e/a/a$d;

.field private c:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/liulishuo/filedownloader/message/MessageSnapshot;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method constructor <init>(Le/e/a/a$b;Le/e/a/a$d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Le/e/a/k;->d:Z

    invoke-direct {p0, p1, p2}, Le/e/a/k;->n(Le/e/a/a$b;Le/e/a/a$d;)V

    return-void
.end method

.method private n(Le/e/a/a$b;Le/e/a/a$d;)V
    .locals 0

    iput-object p1, p0, Le/e/a/k;->a:Le/e/a/a$b;

    iput-object p2, p0, Le/e/a/k;->b:Le/e/a/a$d;

    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Le/e/a/k;->c:Ljava/util/Queue;

    return-void
.end method

.method private o(I)V
    .locals 3

    invoke-static {p1}, Lcom/liulishuo/filedownloader/model/b;->e(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Le/e/a/k;->c:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Le/e/a/k;->c:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->e()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Le/e/a/k;->c:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->m()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "the messenger[%s](with id[%d]) has already accomplished all his job, but there still are some messages in parcel queue[%d] queue-top-status[%d]"

    invoke-static {p0, p1, v0}, Le/e/a/h0/d;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Le/e/a/k;->a:Le/e/a/a$b;

    :cond_1
    return-void
.end method

.method private q(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 3

    iget-object v0, p0, Le/e/a/k;->a:Le/e/a/a$b;

    if-nez v0, :cond_1

    sget-boolean v0, Le/e/a/h0/d;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->e()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->m()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "occur this case, it would be the host task of this messenger has been over(paused/warn/completed/error) on the other thread before receiving the snapshot(id[%d], status[%d])"

    invoke-static {p0, p1, v0}, Le/e/a/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    iget-boolean v1, p0, Le/e/a/k;->d:Z

    if-nez v1, :cond_3

    invoke-interface {v0}, Le/e/a/a$b;->J()Le/e/a/a;

    move-result-object v0

    invoke-interface {v0}, Le/e/a/a;->r()Le/e/a/i;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Le/e/a/k;->c:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    invoke-static {}, Le/e/a/j;->d()Le/e/a/j;

    move-result-object p1

    invoke-virtual {p1, p0}, Le/e/a/j;->i(Le/e/a/s;)V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-static {}, Le/e/a/l;->b()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Le/e/a/k;->a:Le/e/a/a$b;

    invoke-interface {v0}, Le/e/a/a$b;->L()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->m()B

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Le/e/a/k;->b:Le/e/a/a$d;

    invoke-interface {v0}, Le/e/a/a$d;->h()V

    :cond_5
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->m()B

    move-result p1

    invoke-direct {p0, p1}, Le/e/a/k;->o(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public a(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 3

    sget-boolean v0, Le/e/a/h0/d;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Le/e/a/k;->a:Le/e/a/a$b;

    aput-object v2, v0, v1

    const-string v1, "notify connected %s"

    invoke-static {p0, v1, v0}, Le/e/a/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Le/e/a/k;->b:Le/e/a/a$d;

    invoke-interface {v0}, Le/e/a/a$d;->l()V

    invoke-direct {p0, p1}, Le/e/a/k;->q(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    return-void
.end method

.method public b()Z
    .locals 4

    sget-boolean v0, Le/e/a/h0/d;->a:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    iget-object v3, p0, Le/e/a/k;->a:Le/e/a/a$b;

    aput-object v3, v0, v1

    const-string v3, "notify begin %s"

    invoke-static {p0, v3, v0}, Le/e/a/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Le/e/a/k;->a:Le/e/a/a$b;

    if-nez v0, :cond_1

    new-array v0, v2, [Ljava/lang/Object;

    iget-object v2, p0, Le/e/a/k;->c:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v2, "can\'t begin the task, the holder fo the messenger is nil, %d"

    invoke-static {p0, v2, v0}, Le/e/a/h0/d;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_1
    iget-object v0, p0, Le/e/a/k;->b:Le/e/a/a$d;

    invoke-interface {v0}, Le/e/a/a$d;->o()V

    return v2
.end method

.method public c()Z
    .locals 2

    iget-object v0, p0, Le/e/a/k;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->m()B

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 3

    sget-boolean v0, Le/e/a/h0/d;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Le/e/a/k;->a:Le/e/a/a$b;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "notify block completed %s %s"

    invoke-static {p0, v1, v0}, Le/e/a/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Le/e/a/k;->b:Le/e/a/a$d;

    invoke-interface {v0}, Le/e/a/a$d;->l()V

    invoke-direct {p0, p1}, Le/e/a/k;->q(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    return-void
.end method

.method public e(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 3

    sget-boolean v0, Le/e/a/h0/d;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Le/e/a/k;->a:Le/e/a/a$b;

    aput-object v2, v0, v1

    const-string v1, "notify started %s"

    invoke-static {p0, v1, v0}, Le/e/a/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Le/e/a/k;->b:Le/e/a/a$d;

    invoke-interface {v0}, Le/e/a/a$d;->l()V

    invoke-direct {p0, p1}, Le/e/a/k;->q(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    return-void
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Le/e/a/k;->a:Le/e/a/a$b;

    invoke-interface {v0}, Le/e/a/a$b;->J()Le/e/a/a;

    move-result-object v0

    invoke-interface {v0}, Le/e/a/a;->N()Z

    move-result v0

    return v0
.end method

.method public g(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 3

    sget-boolean v0, Le/e/a/h0/d;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Le/e/a/k;->a:Le/e/a/a$b;

    aput-object v2, v0, v1

    const-string v1, "notify pending %s"

    invoke-static {p0, v1, v0}, Le/e/a/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Le/e/a/k;->b:Le/e/a/a$d;

    invoke-interface {v0}, Le/e/a/a$d;->l()V

    invoke-direct {p0, p1}, Le/e/a/k;->q(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    return-void
.end method

.method public h(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 3

    sget-boolean v0, Le/e/a/h0/d;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Le/e/a/k;->a:Le/e/a/a$b;

    aput-object v2, v0, v1

    const-string v1, "notify paused %s"

    invoke-static {p0, v1, v0}, Le/e/a/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Le/e/a/k;->b:Le/e/a/a$d;

    invoke-interface {v0}, Le/e/a/a$d;->h()V

    invoke-direct {p0, p1}, Le/e/a/k;->q(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    return-void
.end method

.method public i(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 3

    sget-boolean v0, Le/e/a/h0/d;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Le/e/a/k;->a:Le/e/a/a$b;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-interface {v2}, Le/e/a/a$b;->J()Le/e/a/a;

    move-result-object v2

    invoke-interface {v2}, Le/e/a/a;->c()Ljava/lang/Throwable;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "notify error %s %s"

    invoke-static {p0, v1, v0}, Le/e/a/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Le/e/a/k;->b:Le/e/a/a$d;

    invoke-interface {v0}, Le/e/a/a$d;->h()V

    invoke-direct {p0, p1}, Le/e/a/k;->q(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    return-void
.end method

.method public j(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 4

    sget-boolean v0, Le/e/a/h0/d;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/e/a/k;->a:Le/e/a/a$b;

    invoke-interface {v0}, Le/e/a/a$b;->J()Le/e/a/a;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Le/e/a/k;->a:Le/e/a/a$b;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-interface {v0}, Le/e/a/a;->i()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-interface {v0}, Le/e/a/a;->d()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-interface {v0}, Le/e/a/a;->c()Ljava/lang/Throwable;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "notify retry %s %d %d %s"

    invoke-static {p0, v0, v1}, Le/e/a/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Le/e/a/k;->b:Le/e/a/a$d;

    invoke-interface {v0}, Le/e/a/a$d;->l()V

    invoke-direct {p0, p1}, Le/e/a/k;->q(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    return-void
.end method

.method public k(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 7

    iget-object v0, p0, Le/e/a/k;->a:Le/e/a/a$b;

    invoke-interface {v0}, Le/e/a/a$b;->J()Le/e/a/a;

    move-result-object v0

    sget-boolean v1, Le/e/a/h0/d;->a:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v3

    invoke-interface {v0}, Le/e/a/a;->z()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v4, 0x2

    invoke-interface {v0}, Le/e/a/a;->n()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v1, v4

    const-string v4, "notify progress %s %d %d"

    invoke-static {p0, v4, v1}, Le/e/a/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-interface {v0}, Le/e/a/a;->y()I

    move-result v0

    if-gtz v0, :cond_2

    sget-boolean p1, Le/e/a/h0/d;->a:Z

    if-eqz p1, :cond_1

    new-array p1, v2, [Ljava/lang/Object;

    iget-object v0, p0, Le/e/a/k;->a:Le/e/a/a$b;

    aput-object v0, p1, v3

    const-string v0, "notify progress but client not request notify %s"

    invoke-static {p0, v0, p1}, Le/e/a/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Le/e/a/k;->b:Le/e/a/a$d;

    invoke-interface {v0}, Le/e/a/a$d;->l()V

    invoke-direct {p0, p1}, Le/e/a/k;->q(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    return-void
.end method

.method public l()V
    .locals 13

    iget-boolean v0, p0, Le/e/a/k;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Le/e/a/k;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->m()B

    move-result v1

    iget-object v2, p0, Le/e/a/k;->a:Le/e/a/a$b;

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v2, :cond_13

    invoke-interface {v2}, Le/e/a/a$b;->J()Le/e/a/a;

    move-result-object v6

    invoke-interface {v6}, Le/e/a/a;->r()Le/e/a/i;

    move-result-object v5

    invoke-interface {v2}, Le/e/a/a$b;->w()Le/e/a/w$a;

    move-result-object v2

    invoke-direct {p0, v1}, Le/e/a/k;->o(I)V

    if-eqz v5, :cond_12

    invoke-virtual {v5}, Le/e/a/i;->e()Z

    move-result v7

    if-eqz v7, :cond_1

    goto/16 :goto_0

    :cond_1
    const/4 v7, 0x4

    if-ne v1, v7, :cond_2

    :try_start_0
    invoke-virtual {v5, v6}, Le/e/a/i;->a(Le/e/a/a;)V

    check-cast v0, Lcom/liulishuo/filedownloader/message/BlockCompleteMessage;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/message/BlockCompleteMessage;->b()Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    move-result-object v0

    invoke-virtual {p0, v0}, Le/e/a/k;->p(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v2, v0}, Le/e/a/w$a;->n(Ljava/lang/Throwable;)Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    move-result-object v0

    invoke-virtual {p0, v0}, Le/e/a/k;->i(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    goto/16 :goto_0

    :cond_2
    const/4 v2, 0x0

    instance-of v7, v5, Le/e/a/g;

    if-eqz v7, :cond_3

    move-object v2, v5

    check-cast v2, Le/e/a/g;

    :cond_3
    const/4 v7, -0x4

    if-eq v1, v7, :cond_11

    const/4 v7, -0x3

    if-eq v1, v7, :cond_10

    const/4 v7, -0x2

    if-eq v1, v7, :cond_e

    const/4 v7, -0x1

    if-eq v1, v7, :cond_d

    if-eq v1, v3, :cond_b

    if-eq v1, v4, :cond_9

    const/4 v3, 0x3

    if-eq v1, v3, :cond_7

    const/4 v3, 0x5

    if-eq v1, v3, :cond_5

    const/4 v0, 0x6

    if-eq v1, v0, :cond_4

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v5, v6}, Le/e/a/i;->j(Le/e/a/a;)V

    goto/16 :goto_0

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->n()Ljava/lang/Throwable;

    move-result-object v7

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->h()I

    move-result v8

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->f()J

    move-result-wide v9

    move-object v5, v2

    invoke-virtual/range {v5 .. v10}, Le/e/a/g;->p(Le/e/a/a;Ljava/lang/Throwable;IJ)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->n()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->h()I

    move-result v2

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->i()I

    move-result v0

    invoke-virtual {v5, v6, v1, v2, v0}, Le/e/a/i;->i(Le/e/a/a;Ljava/lang/Throwable;II)V

    goto/16 :goto_0

    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->f()J

    move-result-wide v7

    invoke-interface {v6}, Le/e/a/a;->n()J

    move-result-wide v9

    move-object v5, v2

    invoke-virtual/range {v5 .. v10}, Le/e/a/g;->o(Le/e/a/a;JJ)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->i()I

    move-result v0

    invoke-interface {v6}, Le/e/a/a;->h()I

    move-result v1

    invoke-virtual {v5, v6, v0, v1}, Le/e/a/i;->h(Le/e/a/a;II)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->p()Z

    move-result v8

    if-eqz v2, :cond_a

    invoke-interface {v6}, Le/e/a/a;->z()J

    move-result-wide v9

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->g()J

    move-result-wide v11

    move-object v5, v2

    invoke-virtual/range {v5 .. v12}, Le/e/a/g;->l(Le/e/a/a;Ljava/lang/String;ZJJ)V

    goto :goto_0

    :cond_a
    invoke-interface {v6}, Le/e/a/a;->k()I

    move-result v9

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->l()I

    move-result v10

    invoke-virtual/range {v5 .. v10}, Le/e/a/i;->c(Le/e/a/a;Ljava/lang/String;ZII)V

    goto :goto_0

    :cond_b
    if-eqz v2, :cond_c

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->f()J

    move-result-wide v7

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->g()J

    move-result-wide v9

    move-object v5, v2

    invoke-virtual/range {v5 .. v10}, Le/e/a/g;->n(Le/e/a/a;JJ)V

    goto :goto_0

    :cond_c
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->i()I

    move-result v1

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->l()I

    move-result v0

    invoke-virtual {v5, v6, v1, v0}, Le/e/a/i;->g(Le/e/a/a;II)V

    goto :goto_0

    :cond_d
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->n()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Le/e/a/i;->d(Le/e/a/a;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_e
    if-eqz v2, :cond_f

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->f()J

    move-result-wide v7

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->g()J

    move-result-wide v9

    move-object v5, v2

    invoke-virtual/range {v5 .. v10}, Le/e/a/g;->m(Le/e/a/a;JJ)V

    goto :goto_0

    :cond_f
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->i()I

    move-result v1

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->l()I

    move-result v0

    invoke-virtual {v5, v6, v1, v0}, Le/e/a/i;->f(Le/e/a/a;II)V

    goto :goto_0

    :cond_10
    invoke-virtual {v5, v6}, Le/e/a/i;->b(Le/e/a/a;)V

    goto :goto_0

    :cond_11
    invoke-virtual {v5, v6}, Le/e/a/i;->k(Le/e/a/a;)V

    :cond_12
    :goto_0
    return-void

    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v4

    iget-object v1, p0, Le/e/a/k;->c:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    const-string v1, "can\'t handover the message, no master to receive this message(status[%d]) size[%d]"

    invoke-static {v1, v2}, Le/e/a/h0/f;->o(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public m(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 3

    sget-boolean v0, Le/e/a/h0/d;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Le/e/a/k;->a:Le/e/a/a$b;

    aput-object v2, v0, v1

    const-string v1, "notify warn %s"

    invoke-static {p0, v1, v0}, Le/e/a/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Le/e/a/k;->b:Le/e/a/a$d;

    invoke-interface {v0}, Le/e/a/a$d;->h()V

    invoke-direct {p0, p1}, Le/e/a/k;->q(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    return-void
.end method

.method public p(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 3

    sget-boolean v0, Le/e/a/h0/d;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Le/e/a/k;->a:Le/e/a/a$b;

    aput-object v2, v0, v1

    const-string v1, "notify completed %s"

    invoke-static {p0, v1, v0}, Le/e/a/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Le/e/a/k;->b:Le/e/a/a$d;

    invoke-interface {v0}, Le/e/a/a$d;->h()V

    invoke-direct {p0, p1}, Le/e/a/k;->q(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Le/e/a/k;->a:Le/e/a/a$b;

    if-nez v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Le/e/a/a$b;->J()Le/e/a/a;

    move-result-object v1

    invoke-interface {v1}, Le/e/a/a;->F()I

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "%d:%s"

    invoke-static {v1, v0}, Le/e/a/h0/f;->o(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
