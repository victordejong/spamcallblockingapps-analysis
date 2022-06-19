.class public Lk7/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk7/j;


# instance fields
.field public a:Lk7/v;

.field public b:Ljava/nio/channels/SelectionKey;

.field public c:Lk7/h;

.field public d:Lk7/l;

.field public e:Lu7/a;

.field public f:Z

.field public g:Ll7/f;

.field public h:Ll7/c;

.field public i:Ll7/a;

.field public j:Z

.field public k:Ll7/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lk7/l;

    invoke-direct {v0}, Lk7/l;-><init>()V

    iput-object v0, p0, Lk7/a;->d:Lk7/l;

    return-void
.end method


# virtual methods
.method public a()Lk7/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lk7/a;->c:Lk7/h;

    return-object v0
.end method

.method public b(Ll7/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk7/a;->h:Ll7/c;

    return-void
.end method

.method public final c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk7/a;->b:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lk7/a;->a:Lk7/v;

    .line 3
    iget-object v0, v0, Lk7/v;->a:Ljava/nio/channels/spi/AbstractSelectableChannel;

    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public close()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk7/a;->c()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lk7/a;->o(Ljava/lang/Exception;)V

    return-void
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public g(Ll7/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk7/a;->i:Ll7/a;

    return-void
.end method

.method public h(Ll7/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk7/a;->k:Ll7/a;

    return-void
.end method

.method public i()Ll7/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lk7/a;->h:Ll7/c;

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lk7/a;->a:Lk7/v;

    .line 2
    iget-object v0, v0, Lk7/v;->b:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lk7/a;->b:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk7/a;->a:Lk7/v;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :try_start_0
    iget-object v0, v0, Lk7/v;->b:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownOutput()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public k(Lk7/l;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lk7/a;->c:Lk7/h;

    .line 2
    iget-object v0, v0, Lk7/h;->e:Ljava/lang/Thread;

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lk7/a;->c:Lk7/h;

    new-instance v1, Lk7/a$a;

    invoke-direct {v1, p0, p1}, Lk7/a$a;-><init>(Lk7/a;Lk7/l;)V

    invoke-virtual {v0, v1}, Lk7/h;->k(Ljava/lang/Runnable;)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lk7/a;->a:Lk7/v;

    .line 6
    iget-object v0, v0, Lk7/v;->b:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 7
    :cond_1
    :try_start_0
    iget v0, p1, Lk7/l;->c:I

    .line 8
    invoke-virtual {p1}, Lk7/l;->f()[Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lk7/a;->a:Lk7/v;

    .line 10
    iget-object v1, v1, Lk7/v;->b:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1, v0}, Ljava/nio/channels/SocketChannel;->write([Ljava/nio/ByteBuffer;)J

    .line 11
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 12
    invoke-virtual {p1, v3}, Lk7/l;->a(Ljava/nio/ByteBuffer;)Lk7/l;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 13
    :cond_2
    iget p1, p1, Lk7/l;->c:I

    .line 14
    iget-object v0, p0, Lk7/a;->b:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-eqz v0, :cond_4

    if-lez p1, :cond_3

    .line 15
    iget-object p1, p0, Lk7/a;->b:Ljava/nio/channels/SelectionKey;

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v0

    or-int/lit8 v0, v0, 0x4

    invoke-virtual {p1, v0}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    goto :goto_1

    .line 16
    :cond_3
    iget-object p1, p0, Lk7/a;->b:Ljava/nio/channels/SelectionKey;

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v0

    and-int/lit8 v0, v0, -0x5

    invoke-virtual {p1, v0}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 17
    :goto_1
    iget-object p1, p0, Lk7/a;->c:Lk7/h;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 18
    :cond_4
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/nio/channels/CancelledKeyException;

    invoke-direct {v0}, Ljava/nio/channels/CancelledKeyException;-><init>()V

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p0}, Lk7/a;->c()V

    .line 20
    invoke-virtual {p0, p1}, Lk7/a;->p(Ljava/lang/Exception;)V

    .line 21
    invoke-virtual {p0, p1}, Lk7/a;->o(Ljava/lang/Exception;)V

    :goto_2
    return-void
.end method

.method public m(Ll7/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk7/a;->g:Ll7/f;

    return-void
.end method

.method public n()I
    .locals 7

    .line 1
    iget-object v0, p0, Lk7/a;->d:Lk7/l;

    invoke-virtual {v0}, Lk7/l;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lk7/a;->d:Lk7/l;

    invoke-static {p0, v0}, Li4/d;->p(Lk7/m;Lk7/l;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lk7/a;->e:Lu7/a;

    invoke-virtual {v0}, Lu7/a;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lk7/a;->a:Lk7/v;

    invoke-virtual {v1, v0}, Lk7/v;->read(Ljava/nio/ByteBuffer;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v1, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-wide/16 v2, -0x1

    .line 5
    invoke-virtual {p0}, Lk7/a;->c()V

    .line 6
    invoke-virtual {p0, v1}, Lk7/a;->p(Ljava/lang/Exception;)V

    .line 7
    invoke-virtual {p0, v1}, Lk7/a;->o(Ljava/lang/Exception;)V

    move-wide v1, v2

    :goto_0
    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    cmp-long v6, v1, v3

    if-gez v6, :cond_1

    .line 8
    invoke-virtual {p0}, Lk7/a;->c()V

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    int-to-long v3, v5

    add-long/2addr v3, v1

    long-to-int v4, v3

    :goto_1
    if-lez v6, :cond_2

    .line 9
    iget-object v3, p0, Lk7/a;->e:Lu7/a;

    invoke-virtual {v3, v1, v2}, Lu7/a;->c(J)V

    .line 10
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 11
    iget-object v1, p0, Lk7/a;->d:Lk7/l;

    invoke-virtual {v1, v0}, Lk7/l;->a(Ljava/nio/ByteBuffer;)Lk7/l;

    .line 12
    iget-object v0, p0, Lk7/a;->d:Lk7/l;

    invoke-static {p0, v0}, Li4/d;->p(Lk7/m;Lk7/l;)V

    goto :goto_2

    .line 13
    :cond_2
    invoke-static {v0}, Lk7/l;->m(Ljava/nio/ByteBuffer;)V

    :goto_2
    if-eqz v5, :cond_3

    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, v0}, Lk7/a;->p(Ljava/lang/Exception;)V

    .line 15
    invoke-virtual {p0, v0}, Lk7/a;->o(Ljava/lang/Exception;)V

    :cond_3
    return v4
.end method

.method public o(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lk7/a;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lk7/a;->f:Z

    .line 3
    iget-object v0, p0, Lk7/a;->i:Ll7/a;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p1}, Ll7/a;->a(Ljava/lang/Exception;)V

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lk7/a;->i:Ll7/a;

    :cond_1
    return-void
.end method

.method public p(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lk7/a;->d:Lk7/l;

    invoke-virtual {v0}, Lk7/l;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lk7/a;->j:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lk7/a;->j:Z

    .line 4
    iget-object v0, p0, Lk7/a;->k:Ll7/a;

    if-eqz v0, :cond_2

    .line 5
    invoke-interface {v0, p1}, Ll7/a;->a(Ljava/lang/Exception;)V

    :cond_2
    :goto_0
    return-void
.end method
