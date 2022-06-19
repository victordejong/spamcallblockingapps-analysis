.class public abstract Lcom/criteo/publisher/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/criteo/publisher/logging/g;

.field private final b:[Ljava/lang/StackTraceElement;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-class v0, Lcom/criteo/publisher/v;

    invoke-static {v0}, Lcom/criteo/publisher/logging/h;->a(Ljava/lang/Class;)Lcom/criteo/publisher/logging/g;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/v;->a:Lcom/criteo/publisher/logging/g;

    .line 45
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/v;->b:[Ljava/lang/StackTraceElement;

    return-void
.end method

.method private a(Ljava/lang/Throwable;)Z
    .locals 1

    .line 73
    instance-of v0, p1, Ljava/net/SocketException;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/net/UnknownHostException;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljavax/net/ssl/SSLException;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/net/ProtocolException;

    if-nez v0, :cond_0

    instance-of p1, p1, Ljava/net/SocketTimeoutException;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method


# virtual methods
.method public abstract a()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public run()V
    .locals 3

    .line 51
    :try_start_0
    invoke-virtual {p0}, Lcom/criteo/publisher/v;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 53
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    .line 54
    iget-object v2, p0, Lcom/criteo/publisher/v;->b:[Ljava/lang/StackTraceElement;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ExecutionException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 56
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_0

    .line 57
    invoke-static {v1}, Lcom/criteo/publisher/m0/o;->a(Ljava/lang/Throwable;)V

    return-void

    .line 58
    :cond_0
    invoke-direct {p0, v0}, Lcom/criteo/publisher/v;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/criteo/publisher/v;->a:Lcom/criteo/publisher/logging/g;

    invoke-static {v1}, Lcom/criteo/publisher/t;->d(Ljava/lang/Throwable;)Lcom/criteo/publisher/logging/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V

    return-void

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/criteo/publisher/v;->a:Lcom/criteo/publisher/logging/g;

    invoke-static {v1}, Lcom/criteo/publisher/t;->b(Ljava/lang/Throwable;)Lcom/criteo/publisher/logging/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V

    return-void
.end method
