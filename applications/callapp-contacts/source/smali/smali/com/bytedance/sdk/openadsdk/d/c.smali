.class public Lcom/bytedance/sdk/openadsdk/d/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/d/c$b;,
        Lcom/bytedance/sdk/openadsdk/d/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/bytedance/sdk/openadsdk/d/j;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/d/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/d/h<",
            "TT;>;"
        }
    .end annotation
.end field

.field private b:Landroid/os/Handler;

.field private c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/d/f;Lcom/bytedance/sdk/openadsdk/core/o;Lcom/bytedance/sdk/openadsdk/d/h$b;Lcom/bytedance/sdk/openadsdk/d/h$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/d/f<",
            "TT;>;",
            "Lcom/bytedance/sdk/openadsdk/core/o<",
            "TT;>;",
            "Lcom/bytedance/sdk/openadsdk/d/h$b;",
            "Lcom/bytedance/sdk/openadsdk/d/h$a;",
            ")V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/bytedance/sdk/openadsdk/d/h;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/d/h;-><init>(Lcom/bytedance/sdk/openadsdk/d/f;Lcom/bytedance/sdk/openadsdk/core/o;Lcom/bytedance/sdk/openadsdk/d/h$b;Lcom/bytedance/sdk/openadsdk/d/h$a;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/c;->a:Lcom/bytedance/sdk/openadsdk/d/h;

    .line 27
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/d/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/d/f;Lcom/bytedance/sdk/openadsdk/core/o;Lcom/bytedance/sdk/openadsdk/d/h$b;Lcom/bytedance/sdk/openadsdk/d/h$a;Lcom/bytedance/sdk/openadsdk/d/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/d/f<",
            "TT;>;",
            "Lcom/bytedance/sdk/openadsdk/core/o<",
            "TT;>;",
            "Lcom/bytedance/sdk/openadsdk/d/h$b;",
            "Lcom/bytedance/sdk/openadsdk/d/h$a;",
            "Lcom/bytedance/sdk/openadsdk/d/h<",
            "TT;>;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/d/c;->a:Lcom/bytedance/sdk/openadsdk/d/h;

    .line 36
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/d/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static c()Lcom/bytedance/sdk/openadsdk/d/c$a;
    .locals 1

    .line 76
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/d/c$a;->e()Lcom/bytedance/sdk/openadsdk/d/c$a;

    move-result-object v0

    return-object v0
.end method

.method public static d()Lcom/bytedance/sdk/openadsdk/d/c$b;
    .locals 1

    .line 80
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/d/c$b;->e()Lcom/bytedance/sdk/openadsdk/d/c$b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 4

    monitor-enter p0

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/c;->a:Lcom/bytedance/sdk/openadsdk/d/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/d/h;->getLooper()Landroid/os/Looper;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 45
    :cond_1
    monitor-exit p0

    return-void

    .line 47
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    .line 48
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/c;->a:Lcom/bytedance/sdk/openadsdk/d/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/d/h;->start()V

    .line 49
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/d/c;->a:Lcom/bytedance/sdk/openadsdk/d/h;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/d/h;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/d/c;->a:Lcom/bytedance/sdk/openadsdk/d/h;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/c;->b:Landroid/os/Handler;

    .line 50
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x5

    .line 51
    iput v1, v0, Landroid/os/Message;->what:I

    .line 52
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/d/c;->b:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 53
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/d/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/d/c;->a()V

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/c;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 70
    iput v1, v0, Landroid/os/Message;->what:I

    .line 71
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 72
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/d/c;->b:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public b()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 59
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/c;->a:Lcom/bytedance/sdk/openadsdk/d/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/d/h;->quit()Z

    .line 60
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/c;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
