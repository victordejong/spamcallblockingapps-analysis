.class public Lc/d/a/z;
.super Lc/d/a/e;
.source "LostServiceConnectedHandler.java"

# interfaces
.implements Lc/d/a/v;


# instance fields
.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc/d/a/a$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/d/a/e;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/d/a/z;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a(Lc/d/a/a$b;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/z;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc/d/a/z;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b(Lc/d/a/a$b;)Z
    .locals 6

    .line 1
    invoke-static {}, Lc/d/a/q;->d()Lc/d/a/q;

    move-result-object v0

    invoke-virtual {v0}, Lc/d/a/q;->g()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lc/d/a/z;->b:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-static {}, Lc/d/a/q;->d()Lc/d/a/q;

    move-result-object v2

    invoke-virtual {v2}, Lc/d/a/q;->g()Z

    move-result v2

    if-nez v2, :cond_2

    .line 4
    sget-boolean v2, Lc/d/a/i0/d;->a:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const-string v2, "Waiting for connecting with the downloader service... %d"

    new-array v4, v3, [Ljava/lang/Object;

    .line 5
    invoke-interface {p1}, Lc/d/a/a$b;->J()Lc/d/a/a;

    move-result-object v5

    invoke-interface {v5}, Lc/d/a/a;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    .line 6
    invoke-static {p0, v2, v4}, Lc/d/a/i0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    :cond_0
    invoke-static {}, Lc/d/a/m;->c()Lc/d/a/m;

    move-result-object v1

    .line 8
    invoke-static {}, Lc/d/a/i0/c;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc/d/a/m;->B0(Landroid/content/Context;)V

    .line 9
    iget-object v1, p0, Lc/d/a/z;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 10
    invoke-interface {p1}, Lc/d/a/a$b;->b()V

    .line 11
    iget-object v1, p0, Lc/d/a/z;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_1
    monitor-exit v0

    return v3

    .line 13
    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 14
    :cond_3
    :goto_0
    invoke-virtual {p0, p1}, Lc/d/a/z;->c(Lc/d/a/a$b;)V

    return v1
.end method

.method public c(Lc/d/a/a$b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/d/a/z;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/d/a/z;->b:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lc/d/a/z;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public e()V
    .locals 7

    .line 1
    invoke-static {}, Lc/d/a/q;->d()Lc/d/a/q;

    move-result-object v0

    invoke-virtual {v0}, Lc/d/a/q;->f()Lc/d/a/w;

    move-result-object v0

    .line 2
    sget-boolean v1, Lc/d/a/i0/d;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "The downloader service is connected."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 3
    invoke-static {p0, v1, v2}, Lc/d/a/i0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :cond_0
    iget-object v1, p0, Lc/d/a/z;->b:Ljava/util/ArrayList;

    monitor-enter v1

    .line 5
    :try_start_0
    iget-object v2, p0, Lc/d/a/z;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 6
    iget-object v3, p0, Lc/d/a/z;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 7
    new-instance v3, Ljava/util/ArrayList;

    .line 8
    invoke-interface {v0}, Lc/d/a/w;->a()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/d/a/a$b;

    .line 10
    invoke-interface {v4}, Lc/d/a/a$b;->k()I

    move-result v5

    .line 11
    invoke-interface {v0, v5}, Lc/d/a/w;->d(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 12
    invoke-interface {v4}, Lc/d/a/a$b;->J()Lc/d/a/a;

    move-result-object v4

    invoke-interface {v4}, Lc/d/a/a;->l()Lc/d/a/a$c;

    move-result-object v4

    invoke-interface {v4}, Lc/d/a/a$c;->a()I

    .line 13
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 14
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_2
    invoke-interface {v4}, Lc/d/a/a$b;->i()V

    goto :goto_0

    .line 16
    :cond_3
    invoke-interface {v0, v3}, Lc/d/a/w;->c(Ljava/util/List;)V

    .line 17
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public f()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lc/d/a/e;->g()Lcom/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;

    move-result-object v0

    sget-object v1, Lcom/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;->f:Lcom/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    .line 2
    invoke-static {}, Lc/d/a/q;->d()Lc/d/a/q;

    move-result-object v0

    invoke-virtual {v0}, Lc/d/a/q;->f()Lc/d/a/w;

    move-result-object v0

    .line 3
    sget-boolean v1, Lc/d/a/i0/d;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "lost the connection to the file download service, and current active task size is %d"

    new-array v2, v2, [Ljava/lang/Object;

    .line 4
    invoke-static {}, Lc/d/a/h;->e()Lc/d/a/h;

    move-result-object v4

    invoke-virtual {v4}, Lc/d/a/h;->i()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 5
    invoke-static {p0, v1, v2}, Lc/d/a/i0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    :cond_0
    invoke-static {}, Lc/d/a/h;->e()Lc/d/a/h;

    move-result-object v1

    invoke-virtual {v1}, Lc/d/a/h;->i()I

    move-result v1

    if-lez v1, :cond_3

    .line 7
    iget-object v1, p0, Lc/d/a/z;->b:Ljava/util/ArrayList;

    monitor-enter v1

    .line 8
    :try_start_0
    invoke-static {}, Lc/d/a/h;->e()Lc/d/a/h;

    move-result-object v2

    iget-object v4, p0, Lc/d/a/z;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Lc/d/a/h;->d(Ljava/util/List;)V

    .line 9
    iget-object v2, p0, Lc/d/a/z;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/d/a/a$b;

    .line 10
    invoke-interface {v4}, Lc/d/a/a$b;->b()V

    goto :goto_0

    .line 11
    :cond_1
    invoke-interface {v0}, Lc/d/a/w;->b()V

    .line 12
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :try_start_1
    invoke-static {}, Lc/d/a/q;->d()Lc/d/a/q;

    move-result-object v0

    invoke-virtual {v0}, Lc/d/a/q;->b()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    const-string v0, "restart service failed, you may need to restart downloading manually when the app comes back to foreground"

    new-array v1, v3, [Ljava/lang/Object;

    .line 14
    invoke-static {p0, v0, v1}, Lc/d/a/i0/d;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 15
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 16
    :cond_2
    invoke-static {}, Lc/d/a/h;->e()Lc/d/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lc/d/a/h;->i()I

    move-result v0

    if-lez v0, :cond_3

    const-string v0, "file download service has be unbound but the size of active tasks are not empty %d "

    new-array v1, v2, [Ljava/lang/Object;

    .line 17
    invoke-static {}, Lc/d/a/h;->e()Lc/d/a/h;

    move-result-object v2

    invoke-virtual {v2}, Lc/d/a/h;->i()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    .line 18
    invoke-static {p0, v0, v1}, Lc/d/a/i0/d;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method
