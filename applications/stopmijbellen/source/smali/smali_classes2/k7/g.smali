.class public Lk7/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lk7/h$e;

.field public final synthetic b:Ll7/b;

.field public final synthetic c:Ll7/e;

.field public final synthetic d:Ljava/net/InetSocketAddress;

.field public final synthetic e:Lk7/h;


# direct methods
.method public constructor <init>(Lk7/h;Lk7/h$e;Ll7/b;Ll7/e;Ljava/net/InetSocketAddress;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk7/g;->e:Lk7/h;

    iput-object p2, p0, Lk7/g;->a:Lk7/h$e;

    iput-object p3, p0, Lk7/g;->b:Ll7/b;

    iput-object p4, p0, Lk7/g;->c:Ll7/e;

    iput-object p5, p0, Lk7/g;->d:Ljava/net/InetSocketAddress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lk7/g;->a:Lk7/h$e;

    invoke-virtual {v0}, Lm7/f;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lk7/g;->a:Lk7/h$e;

    iget-object v1, p0, Lk7/g;->b:Ll7/b;

    iput-object v1, v0, Lk7/h$e;->k:Ll7/b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    :try_start_0
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v3

    iput-object v3, v0, Lk7/h$e;->j:Ljava/nio/channels/SocketChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 4
    :try_start_1
    invoke-virtual {v3, v1}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 5
    iget-object v0, p0, Lk7/g;->e:Lk7/h;

    .line 6
    iget-object v0, v0, Lk7/h;->a:Lk7/u;

    .line 7
    iget-object v0, v0, Lk7/u;->a:Ljava/nio/channels/Selector;

    const/16 v4, 0x8

    .line 8
    invoke-virtual {v3, v0, v4}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 9
    :try_start_2
    iget-object v4, p0, Lk7/g;->a:Lk7/h$e;

    invoke-virtual {v0, v4}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v4, p0, Lk7/g;->c:Ll7/e;

    if-eqz v4, :cond_1

    .line 11
    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/Socket;->getLocalPort()I

    move-result v5

    invoke-interface {v4, v5}, Ll7/e;->a(I)V

    .line 12
    :cond_1
    iget-object v4, p0, Lk7/g;->d:Ljava/net/InetSocketAddress;

    invoke-virtual {v3, v4}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    goto :goto_0

    :catchall_1
    move-exception v4

    move-object v0, v2

    goto :goto_0

    :catchall_2
    move-exception v4

    move-object v0, v2

    move-object v3, v0

    :goto_0
    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    :cond_2
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/Closeable;

    aput-object v3, v0, v1

    .line 14
    invoke-static {v0}, Ly/d;->e([Ljava/io/Closeable;)V

    .line 15
    iget-object v0, p0, Lk7/g;->a:Lk7/h$e;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 16
    invoke-virtual {v0, v1, v2, v2}, Lm7/g;->p(Ljava/lang/Exception;Ljava/lang/Object;Lm7/g$b;)Z

    :goto_1
    return-void
.end method
