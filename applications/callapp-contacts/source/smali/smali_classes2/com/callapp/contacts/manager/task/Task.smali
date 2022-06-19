.class public abstract Lcom/callapp/contacts/manager/task/Task;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/manager/task/Task$DoneListener;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "Task"


# instance fields
.field private cancelled:Z

.field private final coroutineContext:Lkotlin/c/f;

.field private deferred:Lkotlinx/coroutines/as;

.field private listener:Lcom/callapp/contacts/manager/task/Task$DoneListener;

.field private metaData:Ljava/lang/String;

.field private final millisSinceCreation:J

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, v0}, Lcom/callapp/contacts/manager/task/Task;-><init>(Lkotlin/c/f;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/c/f;)V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 18
    iput-object v0, p0, Lcom/callapp/contacts/manager/task/Task;->metaData:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 35
    invoke-static {}, Lkotlinx/coroutines/az;->a()Lkotlinx/coroutines/af;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/callapp/contacts/manager/task/Task;->coroutineContext:Lkotlin/c/f;

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/callapp/contacts/manager/task/Task;->millisSinceCreation:J

    return-void
.end method


# virtual methods
.method public await(J)Z
    .locals 2

    .line 65
    :try_start_0
    sget-object v0, Lb/a;->a:Lb/a$a;

    const-string v0, "task"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1078
    new-instance v0, Lb/a$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lb/a$a$a;-><init>(Lcom/callapp/contacts/manager/task/Task;JLkotlin/c/d;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x1

    .line 2001
    invoke-static {v1, v0, p1}, Lkotlinx/coroutines/i;->a(Lkotlin/c/f;Lkotlin/jvm/functions/Function2;I)Ljava/lang/Object;
    :try_end_0
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public final cancel()V
    .locals 1

    .line 86
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/task/Task;->doCancel()V

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/callapp/contacts/manager/task/Task;->listener:Lcom/callapp/contacts/manager/task/Task$DoneListener;

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lcom/callapp/contacts/manager/task/Task;->cancelled:Z

    return-void
.end method

.method public doCancel()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/callapp/contacts/manager/task/Task;->deferred:Lkotlinx/coroutines/as;

    if-eqz v0, :cond_0

    .line 94
    invoke-interface {v0}, Lkotlinx/coroutines/as;->l()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 95
    invoke-interface {v0, v1}, Lkotlinx/coroutines/as;->a(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    return-void
.end method

.method public abstract doTask()V
.end method

.method public execute()Lcom/callapp/contacts/manager/task/Task;
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/manager/task/Task;->schedule(I)Lcom/callapp/contacts/manager/task/Task;

    move-result-object v0

    return-object v0
.end method

.method public getMiilisSinceTaskCreation()J
    .locals 4

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/callapp/contacts/manager/task/Task;->millisSinceCreation:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/callapp/contacts/manager/task/Task;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/manager/task/Task;->name:Ljava/lang/String;

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/task/Task;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .line 110
    iget-boolean v0, p0, Lcom/callapp/contacts/manager/task/Task;->cancelled:Z

    return v0
.end method

.method public isDone()Z
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/callapp/contacts/manager/task/Task;->deferred:Lkotlinx/coroutines/as;

    if-eqz v0, :cond_0

    .line 106
    invoke-interface {v0}, Lkotlinx/coroutines/as;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/callapp/contacts/manager/task/Task;->deferred:Lkotlinx/coroutines/as;

    if-eqz v0, :cond_0

    .line 115
    invoke-interface {v0}, Lkotlinx/coroutines/as;->k()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final markAsCancelWithoutCancelling()Z
    .locals 1

    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Lcom/callapp/contacts/manager/task/Task;->cancelled:Z

    return v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 43
    new-instance v0, Lcom/callapp/contacts/manager/task/TaskException;

    invoke-direct {v0, p1}, Lcom/callapp/contacts/manager/task/TaskException;-><init>(Ljava/lang/Throwable;)V

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, p1, v2

    invoke-virtual {p0}, Lcom/callapp/contacts/manager/task/Task;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, p1, v2

    iget-object v1, p0, Lcom/callapp/contacts/manager/task/Task;->metaData:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, p1, v2

    const-string v1, "Task"

    const-string v2, "%s.doTask() error on Task[%s][%s] "

    invoke-static {v1, v0, v2, p1}, Lcom/callapp/contacts/util/CLog;->b(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public run()V
    .locals 6

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 132
    :try_start_0
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/task/Task;->doTask()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    iget-object v2, p0, Lcom/callapp/contacts/manager/task/Task;->listener:Lcom/callapp/contacts/manager/task/Task$DoneListener;

    if-eqz v2, :cond_0

    .line 137
    :goto_0
    invoke-interface {v2}, Lcom/callapp/contacts/manager/task/Task$DoneListener;->onDone()V

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 134
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/manager/task/Task;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 136
    iget-object v2, p0, Lcom/callapp/contacts/manager/task/Task;->listener:Lcom/callapp/contacts/manager/task/Task$DoneListener;

    if-eqz v2, :cond_0

    .line 137
    iget-object v2, p0, Lcom/callapp/contacts/manager/task/Task;->listener:Lcom/callapp/contacts/manager/task/Task$DoneListener;

    goto :goto_0

    .line 141
    :cond_0
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/callapp/contacts/manager/task/Task;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".doTask() took "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void

    :catchall_1
    move-exception v0

    .line 136
    iget-object v1, p0, Lcom/callapp/contacts/manager/task/Task;->listener:Lcom/callapp/contacts/manager/task/Task$DoneListener;

    if-eqz v1, :cond_1

    .line 137
    iget-object v1, p0, Lcom/callapp/contacts/manager/task/Task;->listener:Lcom/callapp/contacts/manager/task/Task$DoneListener;

    invoke-interface {v1}, Lcom/callapp/contacts/manager/task/Task$DoneListener;->onDone()V

    .line 139
    :cond_1
    throw v0
.end method

.method public schedule(I)Lcom/callapp/contacts/manager/task/Task;
    .locals 2

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/callapp/contacts/manager/task/Task;->cancelled:Z

    .line 79
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/task/Task;->doCancel()V

    .line 80
    sget-object v0, Lb/a;->a:Lb/a$a;

    int-to-long v0, p1

    iget-object p1, p0, Lcom/callapp/contacts/manager/task/Task;->coroutineContext:Lkotlin/c/f;

    invoke-static {p0, v0, v1, p1}, Lb/a$a;->a(Lcom/callapp/contacts/manager/task/Task;JLkotlin/c/f;)Lkotlinx/coroutines/as;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/manager/task/Task;->deferred:Lkotlinx/coroutines/as;

    return-object p0
.end method

.method public setDoneListener(Lcom/callapp/contacts/manager/task/Task$DoneListener;)Lcom/callapp/contacts/manager/task/Task;
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/callapp/contacts/manager/task/Task;->listener:Lcom/callapp/contacts/manager/task/Task$DoneListener;

    return-object p0
.end method

.method public setMetaData(Ljava/lang/String;)Lcom/callapp/contacts/manager/task/Task;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/callapp/contacts/manager/task/Task;->metaData:Ljava/lang/String;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/callapp/contacts/manager/task/Task;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/callapp/contacts/manager/task/Task;->name:Ljava/lang/String;

    return-object p0
.end method
