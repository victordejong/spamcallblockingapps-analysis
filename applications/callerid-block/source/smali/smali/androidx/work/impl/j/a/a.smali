.class public Landroidx/work/impl/j/a/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/work/impl/d;
.implements Landroidx/work/impl/k/c;
.implements Landroidx/work/impl/a;


# static fields
.field private static final g:Ljava/lang/String;


# instance fields
.field private b:Landroidx/work/impl/h;

.field private c:Landroidx/work/impl/k/d;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/work/impl/l/j;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private final f:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "GreedyScheduler"

    invoke-static {v0}, Landroidx/work/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/j/a/a;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/impl/utils/j/a;Landroidx/work/impl/h;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/j/a/a;->d:Ljava/util/List;

    iput-object p3, p0, Landroidx/work/impl/j/a/a;->b:Landroidx/work/impl/h;

    new-instance p3, Landroidx/work/impl/k/d;

    invoke-direct {p3, p1, p2, p0}, Landroidx/work/impl/k/d;-><init>(Landroid/content/Context;Landroidx/work/impl/utils/j/a;Landroidx/work/impl/k/c;)V

    iput-object p3, p0, Landroidx/work/impl/j/a/a;->c:Landroidx/work/impl/k/d;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/j/a/a;->f:Ljava/lang/Object;

    return-void
.end method

.method private f()V
    .locals 1

    iget-boolean v0, p0, Landroidx/work/impl/j/a/a;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/work/impl/j/a/a;->b:Landroidx/work/impl/h;

    invoke-virtual {v0}, Landroidx/work/impl/h;->l()Landroidx/work/impl/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/work/impl/c;->b(Landroidx/work/impl/a;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/work/impl/j/a/a;->e:Z

    :cond_0
    return-void
.end method

.method private g(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Landroidx/work/impl/j/a/a;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/j/a/a;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    iget-object v4, p0, Landroidx/work/impl/j/a/a;->d:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/work/impl/l/j;

    iget-object v4, v4, Landroidx/work/impl/l/j;->a:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Landroidx/work/f;->c()Landroidx/work/f;

    move-result-object v1

    sget-object v4, Landroidx/work/impl/j/a/a;->g:Ljava/lang/String;

    const-string v5, "Stopping tracking for %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Throwable;

    invoke-virtual {v1, v4, p1, v2}, Landroidx/work/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    iget-object p1, p0, Landroidx/work/impl/j/a/a;->d:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Landroidx/work/impl/j/a/a;->c:Landroidx/work/impl/k/d;

    iget-object v1, p0, Landroidx/work/impl/j/a/a;->d:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroidx/work/impl/k/d;->d(Ljava/util/List;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/work/impl/j/a/a;->g(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Landroidx/work/impl/j/a/a;->f()V

    invoke-static {}, Landroidx/work/f;->c()Landroidx/work/f;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/j/a/a;->g:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v4, "Cancelling work ID %s"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/work/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    iget-object v0, p0, Landroidx/work/impl/j/a/a;->b:Landroidx/work/impl/h;

    invoke-virtual {v0, p1}, Landroidx/work/impl/h;->v(Ljava/lang/String;)V

    return-void
.end method

.method public varargs c([Landroidx/work/impl/l/j;)V
    .locals 12

    invoke-direct {p0}, Landroidx/work/impl/j/a/a;->f()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_3

    aget-object v6, p1, v4

    iget-object v7, v6, Landroidx/work/impl/l/j;->b:Landroidx/work/WorkInfo$State;

    sget-object v8, Landroidx/work/WorkInfo$State;->b:Landroidx/work/WorkInfo$State;

    if-ne v7, v8, :cond_2

    invoke-virtual {v6}, Landroidx/work/impl/l/j;->d()Z

    move-result v7

    if-nez v7, :cond_2

    iget-wide v7, v6, Landroidx/work/impl/l/j;->g:J

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-nez v11, :cond_2

    invoke-virtual {v6}, Landroidx/work/impl/l/j;->c()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v6}, Landroidx/work/impl/l/j;->b()Z

    move-result v7

    if-eqz v7, :cond_1

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x18

    if-lt v5, v7, :cond_0

    iget-object v5, v6, Landroidx/work/impl/l/j;->j:Landroidx/work/b;

    invoke-virtual {v5}, Landroidx/work/b;->e()Z

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, v6, Landroidx/work/impl/l/j;->a:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {}, Landroidx/work/f;->c()Landroidx/work/f;

    move-result-object v7

    sget-object v8, Landroidx/work/impl/j/a/a;->g:Ljava/lang/String;

    const-string v9, "Starting work for %s"

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v10, v6, Landroidx/work/impl/l/j;->a:Ljava/lang/String;

    aput-object v10, v5, v3

    invoke-static {v9, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v9, v3, [Ljava/lang/Throwable;

    invoke-virtual {v7, v8, v5, v9}, Landroidx/work/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    iget-object v5, p0, Landroidx/work/impl/j/a/a;->b:Landroidx/work/impl/h;

    iget-object v6, v6, Landroidx/work/impl/l/j;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroidx/work/impl/h;->t(Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Landroidx/work/impl/j/a/a;->f:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, Landroidx/work/f;->c()Landroidx/work/f;

    move-result-object v2

    sget-object v4, Landroidx/work/impl/j/a/a;->g:Ljava/lang/String;

    const-string v6, "Starting tracking for [%s]"

    new-array v5, v5, [Ljava/lang/Object;

    const-string v7, ","

    invoke-static {v7, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v3

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v2, v4, v1, v3}, Landroidx/work/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    iget-object v1, p0, Landroidx/work/impl/j/a/a;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Landroidx/work/impl/j/a/a;->c:Landroidx/work/impl/k/d;

    iget-object v1, p0, Landroidx/work/impl/j/a/a;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroidx/work/impl/k/d;->d(Ljava/util/List;)V

    :cond_4
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public d(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Landroidx/work/f;->c()Landroidx/work/f;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/j/a/a;->g:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v5, "Constraints not met: Cancelling work ID %s"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v4}, Landroidx/work/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    iget-object v1, p0, Landroidx/work/impl/j/a/a;->b:Landroidx/work/impl/h;

    invoke-virtual {v1, v0}, Landroidx/work/impl/h;->v(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
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

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Landroidx/work/f;->c()Landroidx/work/f;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/j/a/a;->g:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v5, "Constraints met: Scheduling work ID %s"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v4}, Landroidx/work/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    iget-object v1, p0, Landroidx/work/impl/j/a/a;->b:Landroidx/work/impl/h;

    invoke-virtual {v1, v0}, Landroidx/work/impl/h;->t(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
