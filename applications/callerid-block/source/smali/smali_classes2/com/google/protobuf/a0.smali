.class public Lcom/google/protobuf/a0;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Lcom/google/protobuf/ByteString;

.field private b:Lcom/google/protobuf/o;

.field protected volatile c:Lcom/google/protobuf/m0;

.field private volatile d:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/google/protobuf/o;->b()Lcom/google/protobuf/o;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/protobuf/m0;)V
    .locals 3

    iget-object v0, p0, Lcom/google/protobuf/a0;->c:Lcom/google/protobuf/m0;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/a0;->c:Lcom/google/protobuf/m0;

    if-eqz v0, :cond_1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/protobuf/a0;->a:Lcom/google/protobuf/ByteString;

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/google/protobuf/m0;->l()Lcom/google/protobuf/u0;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/a0;->a:Lcom/google/protobuf/ByteString;

    iget-object v2, p0, Lcom/google/protobuf/a0;->b:Lcom/google/protobuf/o;

    invoke-interface {v0, v1, v2}, Lcom/google/protobuf/u0;->a(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/o;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/m0;

    iput-object v0, p0, Lcom/google/protobuf/a0;->c:Lcom/google/protobuf/m0;

    iget-object v0, p0, Lcom/google/protobuf/a0;->a:Lcom/google/protobuf/ByteString;

    :goto_0
    iput-object v0, p0, Lcom/google/protobuf/a0;->d:Lcom/google/protobuf/ByteString;

    goto :goto_1

    :cond_2
    iput-object p1, p0, Lcom/google/protobuf/a0;->c:Lcom/google/protobuf/m0;

    sget-object v0, Lcom/google/protobuf/ByteString;->b:Lcom/google/protobuf/ByteString;
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    iput-object p1, p0, Lcom/google/protobuf/a0;->c:Lcom/google/protobuf/m0;

    sget-object p1, Lcom/google/protobuf/ByteString;->b:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lcom/google/protobuf/a0;->d:Lcom/google/protobuf/ByteString;

    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/a0;->d:Lcom/google/protobuf/ByteString;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/a0;->d:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/a0;->a:Lcom/google/protobuf/ByteString;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/a0;->c:Lcom/google/protobuf/m0;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/protobuf/a0;->c:Lcom/google/protobuf/m0;

    invoke-interface {v0}, Lcom/google/protobuf/m0;->c()I

    move-result v0

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public c(Lcom/google/protobuf/m0;)Lcom/google/protobuf/m0;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/a0;->a(Lcom/google/protobuf/m0;)V

    iget-object p1, p0, Lcom/google/protobuf/a0;->c:Lcom/google/protobuf/m0;

    return-object p1
.end method

.method public d(Lcom/google/protobuf/m0;)Lcom/google/protobuf/m0;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/a0;->c:Lcom/google/protobuf/m0;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/protobuf/a0;->a:Lcom/google/protobuf/ByteString;

    iput-object v1, p0, Lcom/google/protobuf/a0;->d:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lcom/google/protobuf/a0;->c:Lcom/google/protobuf/m0;

    return-object v0
.end method

.method public e()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/a0;->d:Lcom/google/protobuf/ByteString;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/a0;->d:Lcom/google/protobuf/ByteString;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/a0;->a:Lcom/google/protobuf/ByteString;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/a0;->d:Lcom/google/protobuf/ByteString;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/protobuf/a0;->d:Lcom/google/protobuf/ByteString;

    monitor-exit p0

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/a0;->c:Lcom/google/protobuf/m0;

    if-nez v0, :cond_3

    sget-object v0, Lcom/google/protobuf/ByteString;->b:Lcom/google/protobuf/ByteString;

    :goto_0
    iput-object v0, p0, Lcom/google/protobuf/a0;->d:Lcom/google/protobuf/ByteString;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/a0;->c:Lcom/google/protobuf/m0;

    invoke-interface {v0}, Lcom/google/protobuf/m0;->k()Lcom/google/protobuf/ByteString;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/google/protobuf/a0;->d:Lcom/google/protobuf/ByteString;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/google/protobuf/a0;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/google/protobuf/a0;

    iget-object v0, p0, Lcom/google/protobuf/a0;->c:Lcom/google/protobuf/m0;

    iget-object v1, p1, Lcom/google/protobuf/a0;->c:Lcom/google/protobuf/m0;

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/google/protobuf/a0;->e()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/protobuf/a0;->e()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/google/protobuf/n0;->d()Lcom/google/protobuf/m0;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/a0;->c(Lcom/google/protobuf/m0;)Lcom/google/protobuf/m0;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    invoke-interface {v1}, Lcom/google/protobuf/n0;->d()Lcom/google/protobuf/m0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/a0;->c(Lcom/google/protobuf/m0;)Lcom/google/protobuf/m0;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
