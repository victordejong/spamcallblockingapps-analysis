.class Landroidx/work/impl/utils/SerialExecutor$Task;
.super Ljava/lang/Object;
.source "SerialExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/utils/SerialExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Task"
.end annotation


# instance fields
.field final mRunnable:Ljava/lang/Runnable;

.field final mSerialExecutor:Landroidx/work/impl/utils/SerialExecutor;


# direct methods
.method constructor <init>(Landroidx/work/impl/utils/SerialExecutor;Ljava/lang/Runnable;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Landroidx/work/impl/utils/SerialExecutor$Task;->mSerialExecutor:Landroidx/work/impl/utils/SerialExecutor;

    .line 69
    iput-object p2, p0, Landroidx/work/impl/utils/SerialExecutor$Task;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 75
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/utils/SerialExecutor$Task;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    iget-object v0, p0, Landroidx/work/impl/utils/SerialExecutor$Task;->mSerialExecutor:Landroidx/work/impl/utils/SerialExecutor;

    invoke-virtual {v0}, Landroidx/work/impl/utils/SerialExecutor;->scheduleNext()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/work/impl/utils/SerialExecutor$Task;->mSerialExecutor:Landroidx/work/impl/utils/SerialExecutor;

    invoke-virtual {v1}, Landroidx/work/impl/utils/SerialExecutor;->scheduleNext()V

    .line 78
    throw v0
.end method
