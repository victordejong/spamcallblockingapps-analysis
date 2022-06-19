.class public abstract Landroidx/work/impl/a/b/d;
.super Ljava/lang/Object;
.source "ConstraintTracker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field protected final a:Landroidx/work/impl/utils/b/a;

.field protected final b:Landroid/content/Context;

.field c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/Object;

.field private final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroidx/work/impl/a/a",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string/jumbo v0, "ConstraintTracker"

    invoke-static {v0}, Landroidx/work/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/a/b/d;->d:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroidx/work/impl/utils/b/a;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/a/b/d;->e:Ljava/lang/Object;

    .line 46
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/a/b/d;->f:Ljava/util/Set;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/a/b/d;->b:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Landroidx/work/impl/a/b/d;->a:Landroidx/work/impl/utils/b/a;

    .line 54
    return-void
.end method


# virtual methods
.method public a(Landroidx/work/impl/a/a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/impl/a/a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 64
    iget-object v1, p0, Landroidx/work/impl/a/b/d;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 65
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/a/b/d;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Landroidx/work/impl/a/b/d;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 67
    invoke-virtual {p0}, Landroidx/work/impl/a/b/d;->c()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/a/b/d;->c:Ljava/lang/Object;

    .line 68
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v2, Landroidx/work/impl/a/b/d;->d:Ljava/lang/String;

    const-string/jumbo v3, "%s: initial state = %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Landroidx/work/impl/a/b/d;->c:Ljava/lang/Object;

    aput-object v6, v4, v5

    .line 68
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Throwable;

    invoke-virtual {v0, v2, v3, v4}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 71
    invoke-virtual {p0}, Landroidx/work/impl/a/b/d;->d()V

    .line 73
    :cond_0
    iget-object v0, p0, Landroidx/work/impl/a/b/d;->c:Ljava/lang/Object;

    invoke-interface {p1, v0}, Landroidx/work/impl/a/a;->a(Ljava/lang/Object;)V

    .line 75
    :cond_1
    monitor-exit v1

    .line 76
    return-void

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v1, p0, Landroidx/work/impl/a/b/d;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 99
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/a/b/d;->c:Ljava/lang/Object;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroidx/work/impl/a/b/d;->c:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/work/impl/a/b/d;->c:Ljava/lang/Object;

    .line 100
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    :cond_0
    monitor-exit v1

    .line 119
    :goto_0
    return-void

    .line 103
    :cond_1
    iput-object p1, p0, Landroidx/work/impl/a/b/d;->c:Ljava/lang/Object;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/work/impl/a/b/d;->f:Ljava/util/Set;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 110
    iget-object v2, p0, Landroidx/work/impl/a/b/d;->a:Landroidx/work/impl/utils/b/a;

    invoke-interface {v2}, Landroidx/work/impl/utils/b/a;->a()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Landroidx/work/impl/a/b/d$1;

    invoke-direct {v3, p0, v0}, Landroidx/work/impl/a/b/d$1;-><init>(Landroidx/work/impl/a/b/d;Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 118
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Landroidx/work/impl/a/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/impl/a/a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v1, p0, Landroidx/work/impl/a/b/d;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 85
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/a/b/d;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/work/impl/a/b/d;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0}, Landroidx/work/impl/a/b/d;->e()V

    .line 88
    :cond_0
    monitor-exit v1

    .line 89
    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract c()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract d()V
.end method

.method public abstract e()V
.end method
