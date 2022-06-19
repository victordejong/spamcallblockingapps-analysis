.class Lcom/squareup/okhttp/internal/framed/c$i;
.super Lcom/squareup/okhttp/u/d;
.source ""

# interfaces
.implements Lcom/squareup/okhttp/internal/framed/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/framed/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "i"
.end annotation


# instance fields
.field c:Lcom/squareup/okhttp/internal/framed/a;

.field final synthetic d:Lcom/squareup/okhttp/internal/framed/c;


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/internal/framed/c;)V
    .locals 2

    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/c$i;->d:Lcom/squareup/okhttp/internal/framed/c;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/squareup/okhttp/internal/framed/c;->h0(Lcom/squareup/okhttp/internal/framed/c;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OkHttp %s"

    invoke-direct {p0, p1, v0}, Lcom/squareup/okhttp/u/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/internal/framed/c;Lcom/squareup/okhttp/internal/framed/c$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/framed/c$i;-><init>(Lcom/squareup/okhttp/internal/framed/c;)V

    return-void
.end method

.method private b(Lcom/squareup/okhttp/internal/framed/m;)V
    .locals 5

    invoke-static {}, Lcom/squareup/okhttp/internal/framed/c;->X()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/squareup/okhttp/internal/framed/c$i$b;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/c$i;->d:Lcom/squareup/okhttp/internal/framed/c;

    invoke-static {v3}, Lcom/squareup/okhttp/internal/framed/c;->h0(Lcom/squareup/okhttp/internal/framed/c;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "OkHttp %s ACK Settings"

    invoke-direct {v1, p0, v3, v2, p1}, Lcom/squareup/okhttp/internal/framed/c$i$b;-><init>(Lcom/squareup/okhttp/internal/framed/c$i;Ljava/lang/String;[Ljava/lang/Object;Lcom/squareup/okhttp/internal/framed/m;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 5

    sget-object v0, Lcom/squareup/okhttp/internal/framed/ErrorCode;->h:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/c$i;->d:Lcom/squareup/okhttp/internal/framed/c;

    iget-object v2, v1, Lcom/squareup/okhttp/internal/framed/c;->s:Lcom/squareup/okhttp/internal/framed/o;

    iget-object v1, v1, Lcom/squareup/okhttp/internal/framed/c;->t:Ljava/net/Socket;

    invoke-static {v1}, Lokio/Okio;->source(Ljava/net/Socket;)Lokio/Source;

    move-result-object v1

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v1

    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/c$i;->d:Lcom/squareup/okhttp/internal/framed/c;

    iget-boolean v3, v3, Lcom/squareup/okhttp/internal/framed/c;->c:Z

    invoke-interface {v2, v1, v3}, Lcom/squareup/okhttp/internal/framed/o;->a(Lokio/BufferedSource;Z)Lcom/squareup/okhttp/internal/framed/a;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/okhttp/internal/framed/c$i;->c:Lcom/squareup/okhttp/internal/framed/a;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/c$i;->d:Lcom/squareup/okhttp/internal/framed/c;

    iget-boolean v2, v2, Lcom/squareup/okhttp/internal/framed/c;->c:Z

    if-nez v2, :cond_0

    invoke-interface {v1}, Lcom/squareup/okhttp/internal/framed/a;->q()V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/c$i;->c:Lcom/squareup/okhttp/internal/framed/a;

    invoke-interface {v1, p0}, Lcom/squareup/okhttp/internal/framed/a;->P(Lcom/squareup/okhttp/internal/framed/a$a;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/squareup/okhttp/internal/framed/ErrorCode;->b:Lcom/squareup/okhttp/internal/framed/ErrorCode;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v0, Lcom/squareup/okhttp/internal/framed/ErrorCode;->m:Lcom/squareup/okhttp/internal/framed/ErrorCode;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/c$i;->d:Lcom/squareup/okhttp/internal/framed/c;

    invoke-static {v2, v1, v0}, Lcom/squareup/okhttp/internal/framed/c;->a(Lcom/squareup/okhttp/internal/framed/c;Lcom/squareup/okhttp/internal/framed/ErrorCode;Lcom/squareup/okhttp/internal/framed/ErrorCode;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v2, v0

    goto :goto_2

    :catch_0
    move-object v1, v0

    :catch_1
    :try_start_3
    sget-object v0, Lcom/squareup/okhttp/internal/framed/ErrorCode;->c:Lcom/squareup/okhttp/internal/framed/ErrorCode;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/c$i;->d:Lcom/squareup/okhttp/internal/framed/c;

    invoke-static {v1, v0, v0}, Lcom/squareup/okhttp/internal/framed/c;->a(Lcom/squareup/okhttp/internal/framed/c;Lcom/squareup/okhttp/internal/framed/ErrorCode;Lcom/squareup/okhttp/internal/framed/ErrorCode;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :goto_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/c$i;->c:Lcom/squareup/okhttp/internal/framed/a;

    invoke-static {v0}, Lcom/squareup/okhttp/u/i;->c(Ljava/io/Closeable;)V

    return-void

    :catchall_1
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    :goto_2
    :try_start_5
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/c$i;->d:Lcom/squareup/okhttp/internal/framed/c;

    invoke-static {v3, v2, v0}, Lcom/squareup/okhttp/internal/framed/c;->a(Lcom/squareup/okhttp/internal/framed/c;Lcom/squareup/okhttp/internal/framed/ErrorCode;Lcom/squareup/okhttp/internal/framed/ErrorCode;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/c$i;->c:Lcom/squareup/okhttp/internal/framed/a;

    invoke-static {v0}, Lcom/squareup/okhttp/u/i;->c(Ljava/io/Closeable;)V

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method

.method public ackSettings()V
    .locals 0

    return-void
.end method

.method public data(ZILokio/BufferedSource;I)V
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/c$i;->d:Lcom/squareup/okhttp/internal/framed/c;

    invoke-static {v0, p2}, Lcom/squareup/okhttp/internal/framed/c;->p(Lcom/squareup/okhttp/internal/framed/c;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/c$i;->d:Lcom/squareup/okhttp/internal/framed/c;

    invoke-static {v0, p2, p3, p4, p1}, Lcom/squareup/okhttp/internal/framed/c;->x(Lcom/squareup/okhttp/internal/framed/c;ILokio/BufferedSource;IZ)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/c$i;->d:Lcom/squareup/okhttp/internal/framed/c;

    invoke-virtual {v0, p2}, Lcom/squareup/okhttp/internal/framed/c;->m0(I)Lcom/squareup/okhttp/internal/framed/d;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/c$i;->d:Lcom/squareup/okhttp/internal/framed/c;

    sget-object v0, Lcom/squareup/okhttp/internal/framed/ErrorCode;->d:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-virtual {p1, p2, v0}, Lcom/squareup/okhttp/internal/framed/c;->E0(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    int-to-long p1, p4

    invoke-interface {p3, p1, p2}, Lokio/BufferedSource;->skip(J)V

    return-void

    :cond_1
    invoke-virtual {v0, p3, p4}, Lcom/squareup/okhttp/internal/framed/d;->v(Lokio/BufferedSource;I)V

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/framed/d;->w()V

    :cond_2
    return-void
.end method

.method public f(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/c$i;->d:Lcom/squareup/okhttp/internal/framed/c;

    invoke-static {v0, p1}, Lcom/squareup/okhttp/internal/framed/c;->p(Lcom/squareup/okhttp/internal/framed/c;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/c$i;->d:Lcom/squareup/okhttp/internal/framed/c;

    invoke-static {v0, p1, p2}, Lcom/squareup/okhttp/internal/framed/c;->Y(Lcom/squareup/okhttp/internal/framed/c;ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/c$i;->d:Lcom/squareup/okhttp/internal/framed/c;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/framed/c;->w0(I)Lcom/squareup/okhttp/internal/framed/d;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lcom/squareup/okhttp/internal/framed/d;->y(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V

    :cond_1
    return-void
.end method

.method public g(ZLcom/squareup/okhttp/internal/framed/m;)V
    .locals 6

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/c$i;->d:Lcom/squareup/okhttp/internal/framed/c;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/c$i;->d:Lcom/squareup/okhttp/internal/framed/c;

    iget-object v1, v1, Lcom/squareup/okhttp/internal/framed/c;->q:Lcom/squareup/okhttp/internal/framed/m;

    const/high16 v2, 0x10000

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/internal/framed/m;->e(I)I

    move-result v1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/c$i;->d:Lcom/squareup/okhttp/internal/framed/c;

    iget-object p1, p1, Lcom/squareup/okhttp/internal/framed/c;->q:Lcom/squareup/okhttp/internal/framed/m;

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/framed/m;->a()V

    :cond_0
    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/c$i;->d:Lcom/squareup/okhttp/internal/framed/c;

    iget-object p1, p1, Lcom/squareup/okhttp/internal/framed/c;->q:Lcom/squareup/okhttp/internal/framed/m;

    invoke-virtual {p1, p2}, Lcom/squareup/okhttp/internal/framed/m;->i(Lcom/squareup/okhttp/internal/framed/m;)V

    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/c$i;->d:Lcom/squareup/okhttp/internal/framed/c;

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/framed/c;->l0()Lcom/squareup/okhttp/Protocol;

    move-result-object p1

    sget-object v3, Lcom/squareup/okhttp/Protocol;->e:Lcom/squareup/okhttp/Protocol;

    if-ne p1, v3, :cond_1

    invoke-direct {p0, p2}, Lcom/squareup/okhttp/internal/framed/c$i;->b(Lcom/squareup/okhttp/internal/framed/m;)V

    :cond_1
    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/c$i;->d:Lcom/squareup/okhttp/internal/framed/c;

    iget-object p1, p1, Lcom/squareup/okhttp/internal/framed/c;->q:Lcom/squareup/okhttp/internal/framed/m;

    invoke-virtual {p1, v2}, Lcom/squareup/okhttp/internal/framed/m;->e(I)I

    move-result p1

    const/4 p2, -0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    if-eq p1, p2, :cond_3

    if-eq p1, v1, :cond_3

    sub-int/2addr p1, v1

    int-to-long p1, p1

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/c$i;->d:Lcom/squareup/okhttp/internal/framed/c;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/framed/c;->Z(Lcom/squareup/okhttp/internal/framed/c;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/c$i;->d:Lcom/squareup/okhttp/internal/framed/c;

    invoke-virtual {v1, p1, p2}, Lcom/squareup/okhttp/internal/framed/c;->i0(J)V

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/c$i;->d:Lcom/squareup/okhttp/internal/framed/c;

    const/4 v5, 0x1

    invoke-static {v1, v5}, Lcom/squareup/okhttp/internal/framed/c;->a0(Lcom/squareup/okhttp/internal/framed/c;Z)Z

    :cond_2
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/c$i;->d:Lcom/squareup/okhttp/internal/framed/c;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/framed/c;->V(Lcom/squareup/okhttp/internal/framed/c;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/c$i;->d:Lcom/squareup/okhttp/internal/framed/c;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/framed/c;->V(Lcom/squareup/okhttp/internal/framed/c;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/c$i;->d:Lcom/squareup/okhttp/internal/framed/c;

    invoke-static {v4}, Lcom/squareup/okhttp/internal/framed/c;->V(Lcom/squareup/okhttp/internal/framed/c;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Lcom/squareup/okhttp/internal/framed/d;

    invoke-interface {v1, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, [Lcom/squareup/okhttp/internal/framed/d;

    goto :goto_0

    :cond_3
    move-wide p1, v2

    :cond_4
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_5

    cmp-long v0, p1, v2

    if-eqz v0, :cond_5

    array-length v0, v4

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_5

    aget-object v2, v4, v1

    monitor-enter v2

    :try_start_1
    invoke-virtual {v2, p1, p2}, Lcom/squareup/okhttp/internal/framed/d;->i(J)V

    monitor-exit v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_5
    return-void

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public h(ZZIILjava/util/List;Lcom/squareup/okhttp/internal/framed/HeadersMode;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/framed/e;",
            ">;",
            "Lcom/squareup/okhttp/internal/framed/HeadersMode;",
            ")V"
        }
    .end annotation

    iget-object p4, p0, Lcom/squareup/okhttp/internal/framed/c$i;->d:Lcom/squareup/okhttp/internal/framed/c;

    invoke-static {p4, p3}, Lcom/squareup/okhttp/internal/framed/c;->p(Lcom/squareup/okhttp/internal/framed/c;I)Z

    move-result p4

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/c$i;->d:Lcom/squareup/okhttp/internal/framed/c;

    invoke-static {p1, p3, p5, p2}, Lcom/squareup/okhttp/internal/framed/c;->B(Lcom/squareup/okhttp/internal/framed/c;ILjava/util/List;Z)V

    return-void

    :cond_0
    iget-object p4, p0, Lcom/squareup/okhttp/internal/framed/c$i;->d:Lcom/squareup/okhttp/internal/framed/c;

    monitor-enter p4

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/c$i;->d:Lcom/squareup/okhttp/internal/framed/c;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/c;->C(Lcom/squareup/okhttp/internal/framed/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit p4

    return-void

    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/c$i;->d:Lcom/squareup/okhttp/internal/framed/c;

    invoke-virtual {v0, p3}, Lcom/squareup/okhttp/internal/framed/c;->m0(I)Lcom/squareup/okhttp/internal/framed/d;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-virtual {p6}, Lcom/squareup/okhttp/internal/framed/HeadersMode;->failIfStreamAbsent()Z

    move-result p6

    if-eqz p6, :cond_2

    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/c$i;->d:Lcom/squareup/okhttp/internal/framed/c;

    sget-object p2, Lcom/squareup/okhttp/internal/framed/ErrorCode;->d:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-virtual {p1, p3, p2}, Lcom/squareup/okhttp/internal/framed/c;->E0(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    monitor-exit p4

    return-void

    :cond_2
    iget-object p6, p0, Lcom/squareup/okhttp/internal/framed/c$i;->d:Lcom/squareup/okhttp/internal/framed/c;

    invoke-static {p6}, Lcom/squareup/okhttp/internal/framed/c;->K(Lcom/squareup/okhttp/internal/framed/c;)I

    move-result p6

    if-gt p3, p6, :cond_3

    monitor-exit p4

    return-void

    :cond_3
    rem-int/lit8 p6, p3, 0x2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/c$i;->d:Lcom/squareup/okhttp/internal/framed/c;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/c;->U(Lcom/squareup/okhttp/internal/framed/c;)I

    move-result v0

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-ne p6, v0, :cond_4

    monitor-exit p4

    return-void

    :cond_4
    new-instance p6, Lcom/squareup/okhttp/internal/framed/d;

    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/c$i;->d:Lcom/squareup/okhttp/internal/framed/c;

    move-object v2, p6

    move v3, p3

    move v5, p1

    move v6, p2

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/squareup/okhttp/internal/framed/d;-><init>(ILcom/squareup/okhttp/internal/framed/c;ZZLjava/util/List;)V

    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/c$i;->d:Lcom/squareup/okhttp/internal/framed/c;

    invoke-static {p1, p3}, Lcom/squareup/okhttp/internal/framed/c;->O(Lcom/squareup/okhttp/internal/framed/c;I)I

    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/c$i;->d:Lcom/squareup/okhttp/internal/framed/c;

    invoke-static {p1}, Lcom/squareup/okhttp/internal/framed/c;->V(Lcom/squareup/okhttp/internal/framed/c;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/squareup/okhttp/internal/framed/c;->X()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance p2, Lcom/squareup/okhttp/internal/framed/c$i$a;

    const-string p5, "OkHttp %s stream %d"

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/c$i;->d:Lcom/squareup/okhttp/internal/framed/c;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/framed/c;->h0(Lcom/squareup/okhttp/internal/framed/c;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, v1

    invoke-direct {p2, p0, p5, v0, p6}, Lcom/squareup/okhttp/internal/framed/c$i$a;-><init>(Lcom/squareup/okhttp/internal/framed/c$i;Ljava/lang/String;[Ljava/lang/Object;Lcom/squareup/okhttp/internal/framed/d;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    monitor-exit p4

    return-void

    :cond_5
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p6}, Lcom/squareup/okhttp/internal/framed/HeadersMode;->failIfStreamPresent()Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lcom/squareup/okhttp/internal/framed/ErrorCode;->c:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/framed/d;->n(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V

    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/c$i;->d:Lcom/squareup/okhttp/internal/framed/c;

    invoke-virtual {p1, p3}, Lcom/squareup/okhttp/internal/framed/c;->w0(I)Lcom/squareup/okhttp/internal/framed/d;

    return-void

    :cond_6
    invoke-virtual {v0, p5, p6}, Lcom/squareup/okhttp/internal/framed/d;->x(Ljava/util/List;Lcom/squareup/okhttp/internal/framed/HeadersMode;)V

    if-eqz p2, :cond_7

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/framed/d;->w()V

    :cond_7
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public i(ILcom/squareup/okhttp/internal/framed/ErrorCode;Lokio/ByteString;)V
    .locals 3

    invoke-virtual {p3}, Lokio/ByteString;->size()I

    iget-object p2, p0, Lcom/squareup/okhttp/internal/framed/c$i;->d:Lcom/squareup/okhttp/internal/framed/c;

    monitor-enter p2

    :try_start_0
    iget-object p3, p0, Lcom/squareup/okhttp/internal/framed/c$i;->d:Lcom/squareup/okhttp/internal/framed/c;

    invoke-static {p3}, Lcom/squareup/okhttp/internal/framed/c;->V(Lcom/squareup/okhttp/internal/framed/c;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/c$i;->d:Lcom/squareup/okhttp/internal/framed/c;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/c;->V(Lcom/squareup/okhttp/internal/framed/c;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Lcom/squareup/okhttp/internal/framed/d;

    invoke-interface {p3, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lcom/squareup/okhttp/internal/framed/d;

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/c$i;->d:Lcom/squareup/okhttp/internal/framed/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/framed/c;->F(Lcom/squareup/okhttp/internal/framed/c;Z)Z

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    array-length p2, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    aget-object v1, p3, v0

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/framed/d;->o()I

    move-result v2

    if-le v2, p1, :cond_0

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/framed/d;->s()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/squareup/okhttp/internal/framed/ErrorCode;->l:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/internal/framed/d;->y(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V

    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/c$i;->d:Lcom/squareup/okhttp/internal/framed/c;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/framed/d;->o()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/squareup/okhttp/internal/framed/c;->w0(I)Lcom/squareup/okhttp/internal/framed/d;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public ping(ZII)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/c$i;->d:Lcom/squareup/okhttp/internal/framed/c;

    invoke-static {p1, p2}, Lcom/squareup/okhttp/internal/framed/c;->b0(Lcom/squareup/okhttp/internal/framed/c;I)Lcom/squareup/okhttp/internal/framed/k;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/framed/k;->b()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/c$i;->d:Lcom/squareup/okhttp/internal/framed/c;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, p3, v1}, Lcom/squareup/okhttp/internal/framed/c;->c0(Lcom/squareup/okhttp/internal/framed/c;ZIILcom/squareup/okhttp/internal/framed/k;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public priority(IIIZ)V
    .locals 0

    return-void
.end method

.method public pushPromise(IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/framed/e;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/c$i;->d:Lcom/squareup/okhttp/internal/framed/c;

    invoke-static {p1, p2, p3}, Lcom/squareup/okhttp/internal/framed/c;->d0(Lcom/squareup/okhttp/internal/framed/c;ILjava/util/List;)V

    return-void
.end method

.method public windowUpdate(IJ)V
    .locals 3

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/c$i;->d:Lcom/squareup/okhttp/internal/framed/c;

    if-nez p1, :cond_0

    monitor-enter v0

    :try_start_0
    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/c$i;->d:Lcom/squareup/okhttp/internal/framed/c;

    iget-wide v1, p1, Lcom/squareup/okhttp/internal/framed/c;->o:J

    add-long/2addr v1, p2

    iput-wide v1, p1, Lcom/squareup/okhttp/internal/framed/c;->o:J

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/framed/c;->m0(I)Lcom/squareup/okhttp/internal/framed/d;

    move-result-object p1

    if-eqz p1, :cond_1

    monitor-enter p1

    :try_start_1
    invoke-virtual {p1, p2, p3}, Lcom/squareup/okhttp/internal/framed/d;->i(J)V

    monitor-exit p1

    goto :goto_0

    :catchall_1
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p2

    :cond_1
    :goto_0
    return-void
.end method
