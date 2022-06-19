.class public Lc/d/a/h;
.super Ljava/lang/Object;
.source "FileDownloadList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d/a/h$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc/d/a/a$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/d/a/h;->a:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lc/d/a/h$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/d/a/h;-><init>()V

    return-void
.end method

.method public static e()Lc/d/a/h;
    .locals 1

    .line 1
    invoke-static {}, Lc/d/a/h$b;->a()Lc/d/a/h;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a(Lc/d/a/a$b;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lc/d/a/a$b;->J()Lc/d/a/a;

    move-result-object v0

    invoke-interface {v0}, Lc/d/a/a;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p1}, Lc/d/a/a$b;->y()V

    .line 3
    :cond_0
    invoke-interface {p1}, Lc/d/a/a$b;->m()Lc/d/a/x$a;

    move-result-object v0

    invoke-interface {v0}, Lc/d/a/x$a;->f()Lc/d/a/t;

    move-result-object v0

    invoke-interface {v0}, Lc/d/a/t;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Lc/d/a/h;->b(Lc/d/a/a$b;)V

    :cond_1
    return-void
.end method

.method b(Lc/d/a/a$b;)V
    .locals 5

    .line 1
    invoke-interface {p1}, Lc/d/a/a$b;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lc/d/a/h;->a:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lc/d/a/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    const-string v1, "already has %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    .line 4
    invoke-static {p0, v1, v3}, Lc/d/a/i0/d;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {p1}, Lc/d/a/a$b;->L()V

    .line 6
    iget-object v1, p0, Lc/d/a/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    sget-boolean v1, Lc/d/a/i0/d;->a:Z

    if-eqz v1, :cond_2

    const-string v1, "add list in all %s %d %d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    .line 8
    invoke-interface {p1}, Lc/d/a/a$b;->J()Lc/d/a/a;

    move-result-object p1

    invoke-interface {p1}, Lc/d/a/a;->e()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    aput-object p1, v4, v3

    const/4 p1, 0x2

    iget-object v2, p0, Lc/d/a/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, p1

    .line 9
    invoke-static {p0, v1, v4}, Lc/d/a/i0/d;->h(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method c(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lc/d/a/h;->a:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lc/d/a/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/d/a/a$b;

    .line 3
    invoke-interface {v3, p1}, Lc/d/a/a$b;->t(I)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_1
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method d(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/d/a/a$b;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/d/a/h;->a:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lc/d/a/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/d/a/a$b;

    .line 3
    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lc/d/a/h;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method f(I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lc/d/a/a$b;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lc/d/a/h;->a:Ljava/util/ArrayList;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v2, p0, Lc/d/a/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/d/a/a$b;

    .line 4
    invoke-interface {v3, p1}, Lc/d/a/a$b;->t(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Lc/d/a/a$b;->G()Z

    move-result v4

    if-nez v4, :cond_0

    .line 5
    invoke-interface {v3}, Lc/d/a/a$b;->J()Lc/d/a/a;

    move-result-object v4

    invoke-interface {v4}, Lc/d/a/a;->e()B

    move-result v4

    if-eqz v4, :cond_0

    const/16 v5, 0xa

    if-eq v4, v5, :cond_0

    .line 6
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method g(Lc/d/a/a$b;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lc/d/a/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public h(Lc/d/a/a$b;Lcom/liulishuo/filedownloader/message/MessageSnapshot;)Z
    .locals 8

    .line 1
    invoke-virtual {p2}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->k()B

    move-result v0

    .line 2
    iget-object v1, p0, Lc/d/a/h;->a:Ljava/util/ArrayList;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v2, p0, Lc/d/a/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 4
    iget-object v4, p0, Lc/d/a/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 5
    invoke-static {}, Lc/d/a/m;->c()Lc/d/a/m;

    move-result-object v4

    invoke-virtual {v4}, Lc/d/a/m;->C0()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6
    invoke-static {}, Lc/d/a/q;->d()Lc/d/a/q;

    move-result-object v4

    invoke-virtual {v4, v3}, Lc/d/a/q;->i(Z)V

    .line 7
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    sget-boolean v1, Lc/d/a/i0/d;->a:Z

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v1, :cond_1

    .line 9
    iget-object v1, p0, Lc/d/a/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "remove %s left %d %d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v4

    .line 10
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v3

    iget-object v7, p0, Lc/d/a/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    .line 11
    invoke-static {p0, v1, v6}, Lc/d/a/i0/d;->h(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    if-eqz v2, :cond_6

    .line 12
    invoke-interface {p1}, Lc/d/a/a$b;->m()Lc/d/a/x$a;

    move-result-object p1

    .line 13
    invoke-interface {p1}, Lc/d/a/x$a;->f()Lc/d/a/t;

    move-result-object p1

    const/4 v1, -0x4

    if-eq v0, v1, :cond_5

    const/4 v1, -0x3

    if-eq v0, v1, :cond_4

    const/4 v1, -0x2

    if-eq v0, v1, :cond_3

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 14
    :cond_2
    invoke-interface {p1, p2}, Lc/d/a/t;->d(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    goto :goto_0

    .line 15
    :cond_3
    invoke-interface {p1, p2}, Lc/d/a/t;->c(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    goto :goto_0

    .line 16
    :cond_4
    invoke-static {p2}, Lcom/liulishuo/filedownloader/message/c;->e(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    move-result-object p2

    invoke-interface {p1, p2}, Lc/d/a/t;->k(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    goto :goto_0

    .line 17
    :cond_5
    invoke-interface {p1, p2}, Lc/d/a/t;->g(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    goto :goto_0

    :cond_6
    const-string p2, "remove error, not exist: %s %d"

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v4

    .line 18
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    aput-object p1, v1, v3

    .line 19
    invoke-static {p0, p2, v1}, Lc/d/a/i0/d;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v2

    :catchall_0
    move-exception p1

    .line 20
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method i()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
