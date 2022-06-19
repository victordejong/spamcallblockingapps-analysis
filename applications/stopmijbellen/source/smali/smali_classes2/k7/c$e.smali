.class public Lk7/c$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll7/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk7/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final a:Lu7/a;

.field public final b:Lk7/l;

.field public final synthetic c:Lk7/c;


# direct methods
.method public constructor <init>(Lk7/c;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lk7/c$e;->c:Lk7/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lu7/a;

    invoke-direct {p1}, Lu7/a;-><init>()V

    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Lu7/a;->b(I)Lu7/a;

    iput-object p1, p0, Lk7/c$e;->a:Lu7/a;

    .line 3
    new-instance p1, Lk7/l;

    invoke-direct {p1}, Lk7/l;-><init>()V

    iput-object p1, p0, Lk7/c$e;->b:Lk7/l;

    return-void
.end method


# virtual methods
.method public c(Lk7/m;Lk7/l;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lk7/c$e;->c:Lk7/c;

    iget-boolean v0, p1, Lk7/c;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iput-boolean v0, p1, Lk7/c;->c:Z

    .line 3
    iget-object p1, p0, Lk7/c$e;->b:Lk7/l;

    .line 4
    iget v2, p2, Lk7/l;->c:I

    .line 5
    invoke-virtual {p2, p1, v2}, Lk7/l;->d(Lk7/l;I)V

    .line 6
    iget-object p1, p0, Lk7/c$e;->b:Lk7/l;

    invoke-virtual {p1}, Lk7/l;->i()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Lk7/c$e;->b:Lk7/l;

    .line 8
    iget p2, p1, Lk7/l;->c:I

    if-nez p2, :cond_1

    .line 9
    sget-object p1, Lk7/l;->j:Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p1, p2}, Lk7/l;->l(I)Ljava/nio/ByteBuffer;

    .line 11
    invoke-virtual {p1}, Lk7/l;->o()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 12
    :goto_0
    iget-object p2, p0, Lk7/c$e;->b:Lk7/l;

    invoke-virtual {p2, p1}, Lk7/l;->a(Ljava/nio/ByteBuffer;)Lk7/l;

    .line 13
    :cond_2
    sget-object p1, Lk7/l;->j:Ljava/nio/ByteBuffer;

    .line 14
    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lk7/c$e;->b:Lk7/l;

    invoke-virtual {p2}, Lk7/l;->p()I

    move-result p2

    if-lez p2, :cond_4

    .line 15
    iget-object p1, p0, Lk7/c$e;->b:Lk7/l;

    invoke-virtual {p1}, Lk7/l;->o()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 16
    :cond_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    .line 17
    iget-object v2, p0, Lk7/c$e;->c:Lk7/c;

    iget-object v2, v2, Lk7/c;->p:Lk7/l;

    .line 18
    iget v2, v2, Lk7/l;->c:I

    .line 19
    iget-object v3, p0, Lk7/c$e;->a:Lu7/a;

    invoke-virtual {v3}, Lu7/a;->a()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 20
    iget-object v4, p0, Lk7/c$e;->c:Lk7/c;

    iget-object v4, v4, Lk7/c;->d:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v4, p1, v3}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v4

    .line 21
    iget-object v5, p0, Lk7/c$e;->c:Lk7/c;

    iget-object v5, v5, Lk7/c;->p:Lk7/l;

    .line 22
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 23
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 24
    invoke-virtual {v5, v3}, Lk7/l;->a(Ljava/nio/ByteBuffer;)Lk7/l;

    goto :goto_1

    .line 25
    :cond_5
    invoke-static {v3}, Lk7/l;->m(Ljava/nio/ByteBuffer;)V

    .line 26
    :goto_1
    iget-object v3, p0, Lk7/c$e;->a:Lu7/a;

    iget-object v5, p0, Lk7/c$e;->c:Lk7/c;

    iget-object v5, v5, Lk7/c;->p:Lk7/l;

    .line 27
    iget v5, v5, Lk7/l;->c:I

    sub-int/2addr v5, v2

    int-to-long v5, v5

    .line 28
    invoke-virtual {v3, v5, v6}, Lu7/a;->c(J)V

    .line 29
    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v3

    sget-object v5, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v3, v5, :cond_6

    .line 30
    iget-object p2, p0, Lk7/c$e;->a:Lu7/a;

    .line 31
    iget v3, p2, Lu7/a;->c:I

    mul-int/lit8 v3, v3, 0x2

    .line 32
    invoke-virtual {p2, v3}, Lu7/a;->b(I)Lu7/a;

    goto :goto_3

    .line 33
    :cond_6
    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v3

    sget-object v5, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v3, v5, :cond_9

    .line 34
    iget-object p2, p0, Lk7/c$e;->b:Lk7/l;

    invoke-virtual {p2, p1}, Lk7/l;->b(Ljava/nio/ByteBuffer;)V

    .line 35
    iget-object p1, p0, Lk7/c$e;->b:Lk7/l;

    invoke-virtual {p1}, Lk7/l;->p()I

    move-result p1

    if-gt p1, v0, :cond_7

    goto :goto_4

    .line 36
    :cond_7
    iget-object p1, p0, Lk7/c$e;->b:Lk7/l;

    .line 37
    iget p2, p1, Lk7/l;->c:I

    if-nez p2, :cond_8

    .line 38
    sget-object p1, Lk7/l;->j:Ljava/nio/ByteBuffer;

    goto :goto_2

    .line 39
    :cond_8
    invoke-virtual {p1, p2}, Lk7/l;->l(I)Ljava/nio/ByteBuffer;

    .line 40
    invoke-virtual {p1}, Lk7/l;->o()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 41
    :goto_2
    iget-object p2, p0, Lk7/c$e;->b:Lk7/l;

    invoke-virtual {p2, p1}, Lk7/l;->b(Ljava/nio/ByteBuffer;)V

    .line 42
    sget-object p1, Lk7/l;->j:Ljava/nio/ByteBuffer;

    :goto_3
    const/4 p2, -0x1

    .line 43
    :cond_9
    iget-object v3, p0, Lk7/c$e;->c:Lk7/c;

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v4

    .line 44
    invoke-virtual {v3, v4}, Lk7/c;->c(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)V

    .line 45
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-ne v3, p2, :cond_3

    iget-object p2, p0, Lk7/c$e;->c:Lk7/c;

    iget-object p2, p2, Lk7/c;->p:Lk7/l;

    .line 46
    iget p2, p2, Lk7/l;->c:I

    if-ne v2, p2, :cond_3

    .line 47
    iget-object p2, p0, Lk7/c$e;->b:Lk7/l;

    invoke-virtual {p2, p1}, Lk7/l;->b(Ljava/nio/ByteBuffer;)V

    .line 48
    :goto_4
    iget-object p1, p0, Lk7/c$e;->c:Lk7/c;

    invoke-virtual {p1}, Lk7/c;->n()V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception p1

    goto :goto_6

    :catch_0
    move-exception p1

    .line 49
    :try_start_1
    iget-object p2, p0, Lk7/c$e;->c:Lk7/c;

    .line 50
    invoke-virtual {p2, p1}, Lk7/c;->o(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    :goto_5
    iget-object p1, p0, Lk7/c$e;->c:Lk7/c;

    iput-boolean v1, p1, Lk7/c;->c:Z

    return-void

    :goto_6
    iget-object p2, p0, Lk7/c$e;->c:Lk7/c;

    iput-boolean v1, p2, Lk7/c;->c:Z

    throw p1
.end method
