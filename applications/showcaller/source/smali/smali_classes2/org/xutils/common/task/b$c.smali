.class final Lorg/xutils/common/task/b$c;
.super Landroid/os/Handler;
.source "TaskProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xutils/common/task/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/xutils/common/task/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/xutils/common/task/b$c;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_7

    .line 2
    instance-of v1, v0, Lorg/xutils/common/task/b;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lorg/xutils/common/task/b;

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_0

    .line 4
    :cond_0
    instance-of v1, v0, Lorg/xutils/common/task/b$b;

    if-eqz v1, :cond_1

    .line 5
    check-cast v0, Lorg/xutils/common/task/b$b;

    .line 6
    iget-object v2, v0, Lorg/xutils/common/task/b$b;->a:Lorg/xutils/common/task/b;

    .line 7
    iget-object v0, v0, Lorg/xutils/common/task/b$b;->b:[Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-eqz v2, :cond_6

    const/4 v1, 0x1

    .line 8
    :try_start_0
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    .line 9
    :pswitch_0
    invoke-static {v2}, Lorg/xutils/common/task/b;->g(Lorg/xutils/common/task/b;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 10
    :cond_2
    invoke-static {v2, v1}, Lorg/xutils/common/task/b;->h(Lorg/xutils/common/task/b;Z)Z

    .line 11
    invoke-static {v2}, Lorg/xutils/common/task/b;->f(Lorg/xutils/common/task/b;)Lorg/xutils/common/task/AbsTask;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xutils/common/task/AbsTask;->onFinished()V

    goto :goto_1

    .line 12
    :pswitch_1
    invoke-static {v2}, Lorg/xutils/common/task/b;->d(Lorg/xutils/common/task/b;)Z

    move-result v3

    if-eqz v3, :cond_3

    return-void

    .line 13
    :cond_3
    invoke-static {v2, v1}, Lorg/xutils/common/task/b;->e(Lorg/xutils/common/task/b;Z)Z

    .line 14
    invoke-static {v2}, Lorg/xutils/common/task/b;->f(Lorg/xutils/common/task/b;)Lorg/xutils/common/task/AbsTask;

    move-result-object v3

    aget-object v0, v0, v4

    check-cast v0, Lorg/xutils/common/Callback$CancelledException;

    invoke-virtual {v3, v0}, Lorg/xutils/common/task/AbsTask;->onCancelled(Lorg/xutils/common/Callback$CancelledException;)V

    goto :goto_1

    .line 15
    :pswitch_2
    invoke-static {v2}, Lorg/xutils/common/task/b;->f(Lorg/xutils/common/task/b;)Lorg/xutils/common/task/AbsTask;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4, v0}, Lorg/xutils/common/task/AbsTask;->onUpdate(I[Ljava/lang/Object;)V

    goto :goto_1

    .line 16
    :pswitch_3
    aget-object v0, v0, v4

    check-cast v0, Ljava/lang/Throwable;

    .line 17
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lorg/xutils/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    invoke-static {v2}, Lorg/xutils/common/task/b;->f(Lorg/xutils/common/task/b;)Lorg/xutils/common/task/AbsTask;

    move-result-object v3

    invoke-virtual {v3, v0, v4}, Lorg/xutils/common/task/AbsTask;->onError(Ljava/lang/Throwable;Z)V

    goto :goto_1

    .line 19
    :pswitch_4
    invoke-static {v2}, Lorg/xutils/common/task/b;->f(Lorg/xutils/common/task/b;)Lorg/xutils/common/task/AbsTask;

    move-result-object v0

    invoke-virtual {v2}, Lorg/xutils/common/task/AbsTask;->getResult()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/xutils/common/task/AbsTask;->onSuccess(Ljava/lang/Object;)V

    goto :goto_1

    .line 20
    :pswitch_5
    invoke-static {v2}, Lorg/xutils/common/task/b;->f(Lorg/xutils/common/task/b;)Lorg/xutils/common/task/AbsTask;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xutils/common/task/AbsTask;->onStarted()V

    goto :goto_1

    .line 21
    :pswitch_6
    invoke-static {v2}, Lorg/xutils/common/task/b;->f(Lorg/xutils/common/task/b;)Lorg/xutils/common/task/AbsTask;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xutils/common/task/AbsTask;->onWaiting()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 22
    sget-object v3, Lorg/xutils/common/task/AbsTask$State;->ERROR:Lorg/xutils/common/task/AbsTask$State;

    invoke-virtual {v2, v3}, Lorg/xutils/common/task/b;->b(Lorg/xutils/common/task/AbsTask$State;)V

    .line 23
    iget p1, p1, Landroid/os/Message;->what:I

    const v3, 0x3b9aca04

    if-eq p1, v3, :cond_4

    .line 24
    invoke-static {v2}, Lorg/xutils/common/task/b;->f(Lorg/xutils/common/task/b;)Lorg/xutils/common/task/AbsTask;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lorg/xutils/common/task/AbsTask;->onError(Ljava/lang/Throwable;Z)V

    goto :goto_1

    .line 25
    :cond_4
    invoke-static {}, Lorg/xutils/x;->isDebug()Z

    move-result p1

    if-nez p1, :cond_5

    :goto_1
    return-void

    .line 26
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 27
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "msg.obj not instanceof TaskProxy"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "msg must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x3b9aca01
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
