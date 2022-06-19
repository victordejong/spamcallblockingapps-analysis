.class public Lnf1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmf1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnf1$c;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lmf1$a;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile c:Lmf1$b;

.field public static volatile d:Z

.field public static volatile e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lnf1;->a:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lnf1;->b:Ljava/util/Queue;

    sget-object v0, Lmf1$b;->a:Lmf1$b;

    sput-object v0, Lnf1;->c:Lmf1$b;

    sget-object v0, Lue1;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lnf1;->d:Z

    const/16 v0, 0xc8

    sput v0, Lnf1;->e:I

    return-void
.end method

.method public constructor <init>(Ldf1;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lnf1;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lnf1$a;

    invoke-direct {v1, p0}, Lnf1$a;-><init>(Lnf1;)V

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lnf1$c;

    new-instance v3, Lnf1$b;

    invoke-direct {v3, p0}, Lnf1$b;-><init>(Lnf1;)V

    const-string v4, "AOL"

    invoke-direct {v1, v4, p1, v3, v2}, Lnf1$c;-><init>(Ljava/lang/String;Ldf1;Lnf1$c$b;Lnf1$a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method

.method public static synthetic d()Lmf1$b;
    .locals 1

    sget-object v0, Lnf1;->c:Lmf1$b;

    return-object v0
.end method

.method public static synthetic e(Lmf1$b;)Lmf1$b;
    .locals 0

    sput-object p0, Lnf1;->c:Lmf1$b;

    return-object p0
.end method

.method public static synthetic f()Ljava/util/Queue;
    .locals 1

    sget-object v0, Lnf1;->b:Ljava/util/Queue;

    return-object v0
.end method

.method public static synthetic g()Z
    .locals 1

    sget-boolean v0, Lnf1;->d:Z

    return v0
.end method

.method public static synthetic h(Z)Z
    .locals 0

    sput-boolean p0, Lnf1;->d:Z

    return p0
.end method

.method public static synthetic i(Lnf1;)V
    .locals 0

    invoke-virtual {p0}, Lnf1;->k()V

    return-void
.end method

.method public static synthetic j(I)I
    .locals 0

    sput p0, Lnf1;->e:I

    return p0
.end method


# virtual methods
.method public a(Lmf1$a;)V
    .locals 1

    invoke-virtual {p0}, Lnf1;->k()V

    sget-object v0, Lnf1;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()Z
    .locals 1

    sget-boolean v0, Lnf1;->d:Z

    return v0
.end method

.method public c()I
    .locals 1

    sget v0, Lnf1;->e:I

    return v0
.end method

.method public getStatus()Lmf1$b;
    .locals 1

    sget-object v0, Lnf1;->c:Lmf1$b;

    return-object v0
.end method

.method public final k()V
    .locals 9

    sget-object v0, Lnf1;->b:Ljava/util/Queue;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmf1$a;

    invoke-interface {v4}, Lmf1$a;->a()Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    invoke-interface {v4}, Lmf1$a;->c()J

    move-result-wide v4

    sub-long v4, v1, v4

    const-wide/32 v6, 0x493e0

    cmp-long v8, v4, v6

    if-ltz v8, :cond_0

    goto :goto_1

    :cond_2
    sget-object v1, Lnf1;->b:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    const/16 v2, 0xf

    if-lt v1, v2, :cond_3

    const/4 v1, 0x0

    :goto_2
    const/4 v2, 0x5

    if-ge v1, v2, :cond_3

    sget-object v2, Lnf1;->b:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
