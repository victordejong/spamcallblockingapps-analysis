.class public Landroidx/work/impl/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/work/impl/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/c$a;
    }
.end annotation


# static fields
.field private static final k:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroidx/work/a;

.field private d:Landroidx/work/impl/utils/j/a;

.field private e:Landroidx/work/impl/WorkDatabase;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/work/impl/i;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/work/impl/d;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/work/impl/a;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Processor"

    invoke-static {v0}, Landroidx/work/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/c;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/a;Landroidx/work/impl/utils/j/a;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/work/a;",
            "Landroidx/work/impl/utils/j/a;",
            "Landroidx/work/impl/WorkDatabase;",
            "Ljava/util/List<",
            "Landroidx/work/impl/d;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/c;->b:Landroid/content/Context;

    iput-object p2, p0, Landroidx/work/impl/c;->c:Landroidx/work/a;

    iput-object p3, p0, Landroidx/work/impl/c;->d:Landroidx/work/impl/utils/j/a;

    iput-object p4, p0, Landroidx/work/impl/c;->e:Landroidx/work/impl/WorkDatabase;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/c;->f:Ljava/util/Map;

    iput-object p5, p0, Landroidx/work/impl/c;->g:Ljava/util/List;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/c;->h:Ljava/util/Set;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/c;->i:Ljava/util/List;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/c;->j:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)V
    .locals 8

    iget-object v0, p0, Landroidx/work/impl/c;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/c;->f:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroidx/work/f;->c()Landroidx/work/f;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/c;->k:Ljava/lang/String;

    const-string v3, "%s %s executed; reschedule = %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v4}, Landroidx/work/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    iget-object v1, p0, Landroidx/work/impl/c;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/work/impl/a;

    invoke-interface {v2, p1, p2}, Landroidx/work/impl/a;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public b(Landroidx/work/impl/a;)V
    .locals 2

    iget-object v0, p0, Landroidx/work/impl/c;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/c;->i:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Landroidx/work/impl/c;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/c;->h:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public d(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Landroidx/work/impl/c;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/c;->f:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public e(Landroidx/work/impl/a;)V
    .locals 2

    iget-object v0, p0, Landroidx/work/impl/c;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/c;->i:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public f(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/work/impl/c;->g(Ljava/lang/String;Landroidx/work/WorkerParameters$a;)Z

    move-result p1

    return p1
.end method

.method public g(Ljava/lang/String;Landroidx/work/WorkerParameters$a;)Z
    .locals 10

    iget-object v0, p0, Landroidx/work/impl/c;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/c;->f:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-static {}, Landroidx/work/f;->c()Landroidx/work/f;

    move-result-object p2

    sget-object v1, Landroidx/work/impl/c;->k:Ljava/lang/String;

    const-string v4, "Work %s is already enqueued for processing"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v2, v3, [Ljava/lang/Throwable;

    invoke-virtual {p2, v1, p1, v2}, Landroidx/work/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    monitor-exit v0

    return v3

    :cond_0
    new-instance v1, Landroidx/work/impl/i$c;

    iget-object v5, p0, Landroidx/work/impl/c;->b:Landroid/content/Context;

    iget-object v6, p0, Landroidx/work/impl/c;->c:Landroidx/work/a;

    iget-object v7, p0, Landroidx/work/impl/c;->d:Landroidx/work/impl/utils/j/a;

    iget-object v8, p0, Landroidx/work/impl/c;->e:Landroidx/work/impl/WorkDatabase;

    move-object v4, v1

    move-object v9, p1

    invoke-direct/range {v4 .. v9}, Landroidx/work/impl/i$c;-><init>(Landroid/content/Context;Landroidx/work/a;Landroidx/work/impl/utils/j/a;Landroidx/work/impl/WorkDatabase;Ljava/lang/String;)V

    iget-object v4, p0, Landroidx/work/impl/c;->g:Ljava/util/List;

    invoke-virtual {v1, v4}, Landroidx/work/impl/i$c;->c(Ljava/util/List;)Landroidx/work/impl/i$c;

    invoke-virtual {v1, p2}, Landroidx/work/impl/i$c;->b(Landroidx/work/WorkerParameters$a;)Landroidx/work/impl/i$c;

    invoke-virtual {v1}, Landroidx/work/impl/i$c;->a()Landroidx/work/impl/i;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/work/impl/i;->b()Le/c/b/a/a/a;

    move-result-object v1

    new-instance v4, Landroidx/work/impl/c$a;

    invoke-direct {v4, p0, p1, v1}, Landroidx/work/impl/c$a;-><init>(Landroidx/work/impl/a;Ljava/lang/String;Le/c/b/a/a/a;)V

    iget-object v5, p0, Landroidx/work/impl/c;->d:Landroidx/work/impl/utils/j/a;

    invoke-interface {v5}, Landroidx/work/impl/utils/j/a;->a()Ljava/util/concurrent/Executor;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Le/c/b/a/a/a;->h(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object v1, p0, Landroidx/work/impl/c;->f:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroidx/work/impl/c;->d:Landroidx/work/impl/utils/j/a;

    invoke-interface {v0}, Landroidx/work/impl/utils/j/a;->c()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-static {}, Landroidx/work/f;->c()Landroidx/work/f;

    move-result-object p2

    sget-object v0, Landroidx/work/impl/c;->k:Ljava/lang/String;

    const-string v1, "%s: processing %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-class v5, Landroidx/work/impl/c;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    aput-object p1, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v1, v3, [Ljava/lang/Throwable;

    invoke-virtual {p2, v0, p1, v1}, Landroidx/work/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return v2

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public h(Ljava/lang/String;)Z
    .locals 7

    iget-object v0, p0, Landroidx/work/impl/c;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroidx/work/f;->c()Landroidx/work/f;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/c;->k:Ljava/lang/String;

    const-string v3, "Processor cancelling %s"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v5, v6, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v5}, Landroidx/work/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    iget-object v1, p0, Landroidx/work/impl/c;->h:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroidx/work/impl/c;->f:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/work/impl/i;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v4}, Landroidx/work/impl/i;->d(Z)V

    invoke-static {}, Landroidx/work/f;->c()Landroidx/work/f;

    move-result-object v1

    const-string v3, "WorkerWrapper cancelled for %s"

    new-array v5, v4, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v3, v6, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, p1, v3}, Landroidx/work/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    monitor-exit v0

    return v4

    :cond_0
    invoke-static {}, Landroidx/work/f;->c()Landroidx/work/f;

    move-result-object v1

    const-string v3, "WorkerWrapper could not be found for %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v3, v6, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, p1, v3}, Landroidx/work/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    monitor-exit v0

    return v6

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public i(Ljava/lang/String;)Z
    .locals 7

    iget-object v0, p0, Landroidx/work/impl/c;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroidx/work/f;->c()Landroidx/work/f;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/c;->k:Ljava/lang/String;

    const-string v3, "Processor stopping %s"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v5, v6, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v5}, Landroidx/work/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    iget-object v1, p0, Landroidx/work/impl/c;->f:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/work/impl/i;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v6}, Landroidx/work/impl/i;->d(Z)V

    invoke-static {}, Landroidx/work/f;->c()Landroidx/work/f;

    move-result-object v1

    const-string v3, "WorkerWrapper stopped for %s"

    new-array v5, v4, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v3, v6, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, p1, v3}, Landroidx/work/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    monitor-exit v0

    return v4

    :cond_0
    invoke-static {}, Landroidx/work/f;->c()Landroidx/work/f;

    move-result-object v1

    const-string v3, "WorkerWrapper could not be found for %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v3, v6, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, p1, v3}, Landroidx/work/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    monitor-exit v0

    return v6

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
