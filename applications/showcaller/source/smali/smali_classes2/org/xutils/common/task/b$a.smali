.class Lorg/xutils/common/task/b$a;
.super Ljava/lang/Object;
.source "TaskProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xutils/common/task/b;->doBackground()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lorg/xutils/common/task/b;


# direct methods
.method constructor <init>(Lorg/xutils/common/task/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/xutils/common/task/b$a;->d:Lorg/xutils/common/task/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/xutils/common/task/b$a;->d:Lorg/xutils/common/task/b;

    invoke-static {v0}, Lorg/xutils/common/task/b;->d(Lorg/xutils/common/task/b;)Z

    move-result v0
    :try_end_0
    .catch Lorg/xutils/common/Callback$CancelledException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, ""

    if-nez v0, :cond_2

    :try_start_1
    iget-object v0, p0, Lorg/xutils/common/task/b$a;->d:Lorg/xutils/common/task/b;

    invoke-virtual {v0}, Lorg/xutils/common/task/AbsTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lorg/xutils/common/task/b$a;->d:Lorg/xutils/common/task/b;

    invoke-virtual {v0}, Lorg/xutils/common/task/b;->onStarted()V

    .line 3
    iget-object v0, p0, Lorg/xutils/common/task/b$a;->d:Lorg/xutils/common/task/b;

    invoke-virtual {v0}, Lorg/xutils/common/task/AbsTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lorg/xutils/common/task/b$a;->d:Lorg/xutils/common/task/b;

    invoke-static {v0}, Lorg/xutils/common/task/b;->f(Lorg/xutils/common/task/b;)Lorg/xutils/common/task/AbsTask;

    move-result-object v0

    iget-object v2, p0, Lorg/xutils/common/task/b$a;->d:Lorg/xutils/common/task/b;

    invoke-static {v2}, Lorg/xutils/common/task/b;->f(Lorg/xutils/common/task/b;)Lorg/xutils/common/task/AbsTask;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xutils/common/task/AbsTask;->doBackground()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/xutils/common/task/AbsTask;->a(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lorg/xutils/common/task/b$a;->d:Lorg/xutils/common/task/b;

    invoke-static {v0}, Lorg/xutils/common/task/b;->f(Lorg/xutils/common/task/b;)Lorg/xutils/common/task/AbsTask;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xutils/common/task/AbsTask;->getResult()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/xutils/common/task/AbsTask;->a(Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lorg/xutils/common/task/b$a;->d:Lorg/xutils/common/task/b;

    invoke-virtual {v0}, Lorg/xutils/common/task/AbsTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lorg/xutils/common/task/b$a;->d:Lorg/xutils/common/task/b;

    invoke-static {v0}, Lorg/xutils/common/task/b;->f(Lorg/xutils/common/task/b;)Lorg/xutils/common/task/AbsTask;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xutils/common/task/AbsTask;->getResult()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xutils/common/task/b;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Lorg/xutils/common/Callback$CancelledException;

    invoke-direct {v0, v1}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_1
    new-instance v0, Lorg/xutils/common/Callback$CancelledException;

    invoke-direct {v0, v1}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_2
    new-instance v0, Lorg/xutils/common/Callback$CancelledException;

    invoke-direct {v0, v1}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lorg/xutils/common/Callback$CancelledException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 11
    :try_start_2
    iget-object v1, p0, Lorg/xutils/common/task/b$a;->d:Lorg/xutils/common/task/b;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/xutils/common/task/b;->onError(Ljava/lang/Throwable;Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    iget-object v1, p0, Lorg/xutils/common/task/b$a;->d:Lorg/xutils/common/task/b;

    invoke-virtual {v1, v0}, Lorg/xutils/common/task/b;->onCancelled(Lorg/xutils/common/Callback$CancelledException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 13
    :goto_0
    iget-object v0, p0, Lorg/xutils/common/task/b$a;->d:Lorg/xutils/common/task/b;

    invoke-virtual {v0}, Lorg/xutils/common/task/b;->onFinished()V

    return-void

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lorg/xutils/common/task/b$a;->d:Lorg/xutils/common/task/b;

    invoke-virtual {v1}, Lorg/xutils/common/task/b;->onFinished()V

    .line 14
    throw v0
.end method
