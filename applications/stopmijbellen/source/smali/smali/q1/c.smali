.class public Lq1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp1/d;
.implements Lt1/c;
.implements Lp1/a;


# static fields
.field public static final i:Ljava/lang/String;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lp1/j;

.field public final c:Lt1/d;

.field public final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lx1/p;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lq1/b;

.field public f:Z

.field public final g:Ljava/lang/Object;

.field public h:Ljava/lang/Boolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "GreedyScheduler"

    .line 1
    invoke-static {v0}, Lo1/h;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lq1/c;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/a;La2/a;Lp1/j;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lq1/c;->d:Ljava/util/Set;

    .line 3
    iput-object p1, p0, Lq1/c;->a:Landroid/content/Context;

    .line 4
    iput-object p4, p0, Lq1/c;->b:Lp1/j;

    .line 5
    new-instance p4, Lt1/d;

    invoke-direct {p4, p1, p3, p0}, Lt1/d;-><init>(Landroid/content/Context;La2/a;Lt1/c;)V

    iput-object p4, p0, Lq1/c;->c:Lt1/d;

    .line 6
    new-instance p1, Lq1/b;

    .line 7
    iget-object p2, p2, Landroidx/work/a;->e:Lf/t;

    .line 8
    invoke-direct {p1, p0, p2}, Lq1/b;-><init>(Lq1/c;Lf/t;)V

    iput-object p1, p0, Lq1/c;->e:Lq1/b;

    .line 9
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq1/c;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)V
    .locals 6

    .line 1
    iget-object p2, p0, Lq1/c;->g:Ljava/lang/Object;

    monitor-enter p2

    .line 2
    :try_start_0
    iget-object v0, p0, Lq1/c;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx1/p;

    .line 3
    iget-object v2, v1, Lx1/p;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-static {}, Lo1/h;->c()Lo1/h;

    move-result-object v0

    sget-object v2, Lq1/c;->i:Ljava/lang/String;

    const-string v3, "Stopping tracking for %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v3, v5, [Ljava/lang/Throwable;

    invoke-virtual {v0, v2, p1, v3}, Lo1/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 5
    iget-object p1, p0, Lq1/c;->d:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 6
    iget-object p1, p0, Lq1/c;->c:Lt1/d;

    iget-object v0, p0, Lq1/c;->d:Ljava/util/Set;

    invoke-virtual {p1, v0}, Lt1/d;->b(Ljava/lang/Iterable;)V

    .line 7
    :cond_1
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lq1/c;->h:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lq1/c;->b:Lp1/j;

    .line 3
    iget-object v0, v0, Lp1/j;->b:Landroidx/work/a;

    .line 4
    iget-object v1, p0, Lq1/c;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Ly1/i;->a(Landroid/content/Context;Landroidx/work/a;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lq1/c;->h:Ljava/lang/Boolean;

    .line 5
    :cond_0
    iget-object v0, p0, Lq1/c;->h:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 6
    invoke-static {}, Lo1/h;->c()Lo1/h;

    move-result-object p1

    sget-object v0, Lq1/c;->i:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Throwable;

    const-string v2, "Ignoring schedule request in non-main process"

    invoke-virtual {p1, v0, v2, v1}, Lo1/h;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-void

    .line 7
    :cond_1
    iget-boolean v0, p0, Lq1/c;->f:Z

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lq1/c;->b:Lp1/j;

    .line 9
    iget-object v0, v0, Lp1/j;->f:Lp1/c;

    .line 10
    invoke-virtual {v0, p0}, Lp1/c;->b(Lp1/a;)V

    .line 11
    iput-boolean v2, p0, Lq1/c;->f:Z

    .line 12
    :cond_2
    invoke-static {}, Lo1/h;->c()Lo1/h;

    move-result-object v0

    sget-object v3, Lq1/c;->i:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string v4, "Cancelling work ID %s"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-virtual {v0, v3, v2, v1}, Lo1/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 13
    iget-object v0, p0, Lq1/c;->e:Lq1/b;

    if-eqz v0, :cond_3

    .line 14
    iget-object v1, v0, Lq1/b;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    if-eqz v1, :cond_3

    .line 15
    iget-object v0, v0, Lq1/b;->b:Lf/t;

    .line 16
    iget-object v0, v0, Lf/t;->a:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 17
    :cond_3
    iget-object v0, p0, Lq1/c;->b:Lp1/j;

    invoke-virtual {v0, p1}, Lp1/j;->g(Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    invoke-static {}, Lo1/h;->c()Lo1/h;

    move-result-object v1

    sget-object v2, Lq1/c;->i:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v5, "Constraints not met: Cancelling work ID %s"

    .line 3
    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Throwable;

    .line 4
    invoke-virtual {v1, v2, v3, v4}, Lo1/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 5
    iget-object v1, p0, Lq1/c;->b:Lp1/j;

    invoke-virtual {v1, v0}, Lp1/j;->g(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs d([Lx1/p;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lq1/c;->h:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lq1/c;->b:Lp1/j;

    .line 3
    iget-object v0, v0, Lp1/j;->b:Landroidx/work/a;

    .line 4
    iget-object v1, p0, Lq1/c;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Ly1/i;->a(Landroid/content/Context;Landroidx/work/a;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lq1/c;->h:Ljava/lang/Boolean;

    .line 5
    :cond_0
    iget-object v0, p0, Lq1/c;->h:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 6
    invoke-static {}, Lo1/h;->c()Lo1/h;

    move-result-object p1

    sget-object v0, Lq1/c;->i:Ljava/lang/String;

    const-string v2, "Ignoring schedule request in a secondary process"

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-virtual {p1, v0, v2, v1}, Lo1/h;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-void

    .line 7
    :cond_1
    iget-boolean v0, p0, Lq1/c;->f:Z

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lq1/c;->b:Lp1/j;

    .line 9
    iget-object v0, v0, Lp1/j;->f:Lp1/c;

    .line 10
    invoke-virtual {v0, p0}, Lp1/c;->b(Lp1/a;)V

    .line 11
    iput-boolean v2, p0, Lq1/c;->f:Z

    .line 12
    :cond_2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 13
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 14
    array-length v4, p1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_9

    aget-object v6, p1, v5

    .line 15
    invoke-virtual {v6}, Lx1/p;->a()J

    move-result-wide v7

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 17
    iget-object v11, v6, Lx1/p;->b:Lo1/m;

    sget-object v12, Lo1/m;->a:Lo1/m;

    if-ne v11, v12, :cond_8

    cmp-long v11, v9, v7

    if-gez v11, :cond_4

    .line 18
    iget-object v7, p0, Lq1/c;->e:Lq1/b;

    if-eqz v7, :cond_8

    .line 19
    iget-object v8, v7, Lq1/b;->c:Ljava/util/Map;

    iget-object v9, v6, Lx1/p;->a:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Runnable;

    if-eqz v8, :cond_3

    .line 20
    iget-object v9, v7, Lq1/b;->b:Lf/t;

    .line 21
    iget-object v9, v9, Lf/t;->a:Ljava/lang/Object;

    check-cast v9, Landroid/os/Handler;

    invoke-virtual {v9, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 22
    :cond_3
    new-instance v8, Lq1/a;

    invoke-direct {v8, v7, v6}, Lq1/a;-><init>(Lq1/b;Lx1/p;)V

    .line 23
    iget-object v9, v7, Lq1/b;->c:Ljava/util/Map;

    iget-object v10, v6, Lx1/p;->a:Ljava/lang/String;

    invoke-interface {v9, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 25
    invoke-virtual {v6}, Lx1/p;->a()J

    move-result-wide v11

    sub-long/2addr v11, v9

    .line 26
    iget-object v6, v7, Lq1/b;->b:Lf/t;

    .line 27
    iget-object v6, v6, Lf/t;->a:Ljava/lang/Object;

    check-cast v6, Landroid/os/Handler;

    invoke-virtual {v6, v8, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 28
    :cond_4
    invoke-virtual {v6}, Lx1/p;->b()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 29
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x17

    if-lt v7, v8, :cond_5

    iget-object v8, v6, Lx1/p;->j:Lo1/b;

    .line 30
    iget-boolean v8, v8, Lo1/b;->c:Z

    if-eqz v8, :cond_5

    .line 31
    invoke-static {}, Lo1/h;->c()Lo1/h;

    move-result-object v7

    sget-object v8, Lq1/c;->i:Ljava/lang/String;

    const-string v9, "Ignoring WorkSpec %s, Requires device idle."

    new-array v10, v2, [Ljava/lang/Object;

    aput-object v6, v10, v1

    .line 32
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v9, v1, [Ljava/lang/Throwable;

    .line 33
    invoke-virtual {v7, v8, v6, v9}, Lo1/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_5
    const/16 v8, 0x18

    if-lt v7, v8, :cond_6

    .line 34
    iget-object v7, v6, Lx1/p;->j:Lo1/b;

    invoke-virtual {v7}, Lo1/b;->a()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 35
    invoke-static {}, Lo1/h;->c()Lo1/h;

    move-result-object v7

    sget-object v8, Lq1/c;->i:Ljava/lang/String;

    const-string v9, "Ignoring WorkSpec %s, Requires ContentUri triggers."

    new-array v10, v2, [Ljava/lang/Object;

    aput-object v6, v10, v1

    .line 36
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v9, v1, [Ljava/lang/Throwable;

    .line 37
    invoke-virtual {v7, v8, v6, v9}, Lo1/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_1

    .line 38
    :cond_6
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v6, v6, Lx1/p;->a:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 40
    :cond_7
    invoke-static {}, Lo1/h;->c()Lo1/h;

    move-result-object v7

    sget-object v8, Lq1/c;->i:Ljava/lang/String;

    const-string v9, "Starting work for %s"

    new-array v10, v2, [Ljava/lang/Object;

    iget-object v11, v6, Lx1/p;->a:Ljava/lang/String;

    aput-object v11, v10, v1

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    new-array v10, v1, [Ljava/lang/Throwable;

    invoke-virtual {v7, v8, v9, v10}, Lo1/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 41
    iget-object v7, p0, Lq1/c;->b:Lp1/j;

    iget-object v6, v6, Lx1/p;->a:Ljava/lang/String;

    .line 42
    iget-object v8, v7, Lp1/j;->d:La2/a;

    new-instance v9, Ly1/k;

    const/4 v10, 0x0

    invoke-direct {v9, v7, v6, v10}, Ly1/k;-><init>(Lp1/j;Ljava/lang/String;Landroidx/work/WorkerParameters$a;)V

    .line 43
    check-cast v8, La2/b;

    .line 44
    iget-object v6, v8, La2/b;->a:Ly1/j;

    invoke-virtual {v6, v9}, Ly1/j;->execute(Ljava/lang/Runnable;)V

    :cond_8
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 45
    :cond_9
    iget-object p1, p0, Lq1/c;->g:Ljava/lang/Object;

    monitor-enter p1

    .line 46
    :try_start_0
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a

    .line 47
    invoke-static {}, Lo1/h;->c()Lo1/h;

    move-result-object v4

    sget-object v5, Lq1/c;->i:Ljava/lang/String;

    const-string v6, "Starting tracking for [%s]"

    new-array v2, v2, [Ljava/lang/Object;

    const-string v7, ","

    .line 48
    invoke-static {v7, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 49
    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-virtual {v4, v5, v2, v1}, Lo1/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 50
    iget-object v1, p0, Lq1/c;->d:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 51
    iget-object v0, p0, Lq1/c;->c:Lt1/d;

    iget-object v1, p0, Lq1/c;->d:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lt1/d;->b(Ljava/lang/Iterable;)V

    .line 52
    :cond_a
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    invoke-static {}, Lo1/h;->c()Lo1/h;

    move-result-object v1

    sget-object v2, Lq1/c;->i:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v5, "Constraints met: Scheduling work ID %s"

    .line 3
    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Throwable;

    .line 4
    invoke-virtual {v1, v2, v3, v4}, Lo1/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 5
    iget-object v1, p0, Lq1/c;->b:Lp1/j;

    .line 6
    iget-object v2, v1, Lp1/j;->d:La2/a;

    new-instance v3, Ly1/k;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v0, v4}, Ly1/k;-><init>(Lp1/j;Ljava/lang/String;Landroidx/work/WorkerParameters$a;)V

    .line 7
    check-cast v2, La2/b;

    .line 8
    iget-object v0, v2, La2/b;->a:Ly1/j;

    invoke-virtual {v0, v3}, Ly1/j;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
