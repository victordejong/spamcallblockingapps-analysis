.class public Landroidx/work/impl/utils/SerialExecutor;
.super Ljava/lang/Object;
.source "SerialExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/utils/SerialExecutor$Task;
    }
.end annotation


# instance fields
.field private volatile mActive:Ljava/lang/Runnable;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mLock:Ljava/lang/Object;

.field private final mTasks:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/work/impl/utils/SerialExecutor$Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Landroidx/work/impl/utils/SerialExecutor;->mExecutor:Ljava/util/concurrent/Executor;

    .line 36
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/utils/SerialExecutor;->mTasks:Ljava/util/ArrayDeque;

    .line 37
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/utils/SerialExecutor;->mLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 3

    .line 42
    iget-object v0, p0, Landroidx/work/impl/utils/SerialExecutor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 43
    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/utils/SerialExecutor;->mTasks:Ljava/util/ArrayDeque;

    new-instance v2, Landroidx/work/impl/utils/SerialExecutor$Task;

    invoke-direct {v2, p0, p1}, Landroidx/work/impl/utils/SerialExecutor$Task;-><init>(Landroidx/work/impl/utils/SerialExecutor;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object p1, p0, Landroidx/work/impl/utils/SerialExecutor;->mActive:Ljava/lang/Runnable;

    if-nez p1, :cond_0

    .line 45
    invoke-virtual {p0}, Landroidx/work/impl/utils/SerialExecutor;->scheduleNext()V

    .line 47
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method scheduleNext()V
    .locals 3

    .line 52
    iget-object v0, p0, Landroidx/work/impl/utils/SerialExecutor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 53
    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/utils/SerialExecutor;->mTasks:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    iput-object v1, p0, Landroidx/work/impl/utils/SerialExecutor;->mActive:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 54
    iget-object v1, p0, Landroidx/work/impl/utils/SerialExecutor;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroidx/work/impl/utils/SerialExecutor;->mActive:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 56
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
