.class Lorg/xutils/common/task/TaskControllerImpl$b$d;
.super Ljava/lang/Object;
.source "TaskControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xutils/common/task/TaskControllerImpl$b;->onFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lorg/xutils/common/task/TaskControllerImpl$b;


# direct methods
.method constructor <init>(Lorg/xutils/common/task/TaskControllerImpl$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/xutils/common/task/TaskControllerImpl$b$d;->d:Lorg/xutils/common/task/TaskControllerImpl$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/xutils/common/task/TaskControllerImpl$b$d;->d:Lorg/xutils/common/task/TaskControllerImpl$b;

    iget-object v1, v0, Lorg/xutils/common/task/TaskControllerImpl$b;->l:Lorg/xutils/common/Callback$GroupCallback;

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, v0, Lorg/xutils/common/task/TaskControllerImpl$b;->m:Lorg/xutils/common/task/AbsTask;

    invoke-interface {v1, v0}, Lorg/xutils/common/Callback$GroupCallback;->onFinished(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/xutils/common/task/TaskControllerImpl$b$d;->d:Lorg/xutils/common/task/TaskControllerImpl$b;

    iget-object v0, v0, Lorg/xutils/common/task/TaskControllerImpl$b;->n:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 4
    :try_start_1
    iget-object v1, p0, Lorg/xutils/common/task/TaskControllerImpl$b$d;->d:Lorg/xutils/common/task/TaskControllerImpl$b;

    iget-object v2, v1, Lorg/xutils/common/task/TaskControllerImpl$b;->l:Lorg/xutils/common/Callback$GroupCallback;

    iget-object v1, v1, Lorg/xutils/common/task/TaskControllerImpl$b;->m:Lorg/xutils/common/task/AbsTask;

    const/4 v3, 0x1

    invoke-interface {v2, v1, v0, v3}, Lorg/xutils/common/Callback$GroupCallback;->onError(Ljava/lang/Object;Ljava/lang/Throwable;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 5
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :goto_1
    return-void

    :catchall_2
    move-exception v0

    .line 6
    iget-object v1, p0, Lorg/xutils/common/task/TaskControllerImpl$b$d;->d:Lorg/xutils/common/task/TaskControllerImpl$b;

    iget-object v1, v1, Lorg/xutils/common/task/TaskControllerImpl$b;->n:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 7
    throw v0
.end method
