.class public Lcom/callapp/contacts/manager/ExceptionManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/ManagedLifecycle;


# instance fields
.field public a:Z

.field public b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/callapp/contacts/manager/ExceptionManager;->a:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;Ljava/io/IOException;)V
    .locals 2

    .line 51
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/callapp/contacts/manager/ExceptionManager;->a(Ljava/lang/Class;Ljava/io/IOException;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final varargs declared-synchronized a(Ljava/lang/Class;Ljava/io/IOException;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    monitor-enter p0

    .line 29
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 31
    iget-object v2, p0, Lcom/callapp/contacts/manager/ExceptionManager;->b:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    :goto_0
    if-eqz v2, :cond_0

    const-wide/32 v3, 0xea60

    sub-long v3, v0, v3

    .line 33
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v2, v3, v5

    if-lez v2, :cond_0

    .line 34
    iget-object v2, p0, Lcom/callapp/contacts/manager/ExceptionManager;->b:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 35
    iget-object v2, p0, Lcom/callapp/contacts/manager/ExceptionManager;->b:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    goto :goto_0

    .line 38
    :cond_0
    iget-object v2, p0, Lcom/callapp/contacts/manager/ExceptionManager;->b:Ljava/util/Queue;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object v0, p0, Lcom/callapp/contacts/manager/ExceptionManager;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcom/callapp/contacts/manager/ExceptionManager;->a:Z

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/callapp/contacts/manager/ExceptionManager;->a:Z

    .line 47
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ExceptionManager > "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3, p4}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/callapp/contacts/manager/ExceptionManager;->b:Ljava/util/Queue;

    return-void
.end method

.method public init()V
    .locals 1

    .line 19
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/manager/ExceptionManager;->b:Ljava/util/Queue;

    return-void
.end method

.method public isInternetIsDown()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/callapp/contacts/manager/ExceptionManager;->a:Z

    return v0
.end method
