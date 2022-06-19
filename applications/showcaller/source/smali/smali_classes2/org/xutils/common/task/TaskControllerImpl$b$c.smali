.class Lorg/xutils/common/task/TaskControllerImpl$b$c;
.super Ljava/lang/Object;
.source "TaskControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xutils/common/task/TaskControllerImpl$b;->onError(Ljava/lang/Throwable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/Throwable;

.field final synthetic e:Z

.field final synthetic f:Lorg/xutils/common/task/TaskControllerImpl$b;


# direct methods
.method constructor <init>(Lorg/xutils/common/task/TaskControllerImpl$b;Ljava/lang/Throwable;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/xutils/common/task/TaskControllerImpl$b$c;->f:Lorg/xutils/common/task/TaskControllerImpl$b;

    iput-object p2, p0, Lorg/xutils/common/task/TaskControllerImpl$b$c;->d:Ljava/lang/Throwable;

    iput-boolean p3, p0, Lorg/xutils/common/task/TaskControllerImpl$b$c;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/xutils/common/task/TaskControllerImpl$b$c;->f:Lorg/xutils/common/task/TaskControllerImpl$b;

    iget-object v1, v0, Lorg/xutils/common/task/TaskControllerImpl$b;->l:Lorg/xutils/common/Callback$GroupCallback;

    if-eqz v1, :cond_0

    .line 2
    :try_start_0
    iget-object v0, v0, Lorg/xutils/common/task/TaskControllerImpl$b;->m:Lorg/xutils/common/task/AbsTask;

    iget-object v2, p0, Lorg/xutils/common/task/TaskControllerImpl$b$c;->d:Ljava/lang/Throwable;

    iget-boolean v3, p0, Lorg/xutils/common/task/TaskControllerImpl$b$c;->e:Z

    invoke-interface {v1, v0, v2, v3}, Lorg/xutils/common/Callback$GroupCallback;->onError(Ljava/lang/Object;Ljava/lang/Throwable;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
