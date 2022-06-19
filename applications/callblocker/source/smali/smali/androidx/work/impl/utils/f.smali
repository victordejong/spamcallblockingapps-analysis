.class public Landroidx/work/impl/utils/f;
.super Ljava/lang/Object;
.source "SerialExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/utils/f$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Landroidx/work/impl/utils/f$a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Ljava/lang/Object;

.field private volatile d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Landroidx/work/impl/utils/f;->b:Ljava/util/concurrent/Executor;

    .line 37
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/utils/f;->a:Ljava/util/ArrayDeque;

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/utils/f;->c:Ljava/lang/Object;

    .line 39
    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    .prologue
    .line 53
    iget-object v1, p0, Landroidx/work/impl/utils/f;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 54
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/utils/f;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Landroidx/work/impl/utils/f;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Landroidx/work/impl/utils/f;->b:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroidx/work/impl/utils/f;->d:Ljava/lang/Runnable;

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 57
    :cond_0
    monitor-exit v1

    .line 58
    return-void

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 64
    iget-object v1, p0, Landroidx/work/impl/utils/f;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 65
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/utils/f;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 43
    iget-object v1, p0, Landroidx/work/impl/utils/f;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 44
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/utils/f;->a:Ljava/util/ArrayDeque;

    new-instance v2, Landroidx/work/impl/utils/f$a;

    invoke-direct {v2, p0, p1}, Landroidx/work/impl/utils/f$a;-><init>(Landroidx/work/impl/utils/f;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v0, p0, Landroidx/work/impl/utils/f;->d:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 46
    invoke-virtual {p0}, Landroidx/work/impl/utils/f;->a()V

    .line 48
    :cond_0
    monitor-exit v1

    .line 49
    return-void

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
