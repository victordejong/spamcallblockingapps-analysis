.class final Lcom/squareup/okhttp/internal/framed/d$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/framed/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field private final b:Lokio/Buffer;

.field private c:Z

.field private d:Z

.field final synthetic e:Lcom/squareup/okhttp/internal/framed/d;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/squareup/okhttp/internal/framed/d;)V
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/d$b;->e:Lcom/squareup/okhttp/internal/framed/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lokio/Buffer;

    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/d$b;->b:Lokio/Buffer;

    return-void
.end method

.method private B(Z)V
    .locals 11

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/d$b;->e:Lcom/squareup/okhttp/internal/framed/d;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/d$b;->e:Lcom/squareup/okhttp/internal/framed/d;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/framed/d;->b(Lcom/squareup/okhttp/internal/framed/d;)Lcom/squareup/okhttp/internal/framed/d$d;

    move-result-object v1

    invoke-virtual {v1}, Lokio/AsyncTimeout;->enter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/d$b;->e:Lcom/squareup/okhttp/internal/framed/d;

    iget-wide v2, v1, Lcom/squareup/okhttp/internal/framed/d;->b:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    iget-boolean v2, p0, Lcom/squareup/okhttp/internal/framed/d$b;->d:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/squareup/okhttp/internal/framed/d$b;->c:Z

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/squareup/okhttp/internal/framed/d;->g(Lcom/squareup/okhttp/internal/framed/d;)Lcom/squareup/okhttp/internal/framed/ErrorCode;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/d$b;->e:Lcom/squareup/okhttp/internal/framed/d;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/framed/d;->h(Lcom/squareup/okhttp/internal/framed/d;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/d$b;->e:Lcom/squareup/okhttp/internal/framed/d;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/framed/d;->b(Lcom/squareup/okhttp/internal/framed/d;)Lcom/squareup/okhttp/internal/framed/d$d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/framed/d$d;->exitAndThrowIfTimedOut()V

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/d$b;->e:Lcom/squareup/okhttp/internal/framed/d;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/framed/d;->c(Lcom/squareup/okhttp/internal/framed/d;)V

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/d$b;->e:Lcom/squareup/okhttp/internal/framed/d;

    iget-wide v1, v1, Lcom/squareup/okhttp/internal/framed/d;->b:J

    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/d$b;->b:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/d$b;->e:Lcom/squareup/okhttp/internal/framed/d;

    iget-wide v2, v1, Lcom/squareup/okhttp/internal/framed/d;->b:J

    sub-long/2addr v2, v9

    iput-wide v2, v1, Lcom/squareup/okhttp/internal/framed/d;->b:J

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {v1}, Lcom/squareup/okhttp/internal/framed/d;->b(Lcom/squareup/okhttp/internal/framed/d;)Lcom/squareup/okhttp/internal/framed/d$d;

    move-result-object v0

    invoke-virtual {v0}, Lokio/AsyncTimeout;->enter()V

    :try_start_3
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/d$b;->e:Lcom/squareup/okhttp/internal/framed/d;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/d;->d(Lcom/squareup/okhttp/internal/framed/d;)Lcom/squareup/okhttp/internal/framed/c;

    move-result-object v5

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/d$b;->e:Lcom/squareup/okhttp/internal/framed/d;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/d;->e(Lcom/squareup/okhttp/internal/framed/d;)I

    move-result v6

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/d$b;->b:Lokio/Buffer;

    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v0

    cmp-long p1, v9, v0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    const/4 v7, 0x0

    :goto_1
    iget-object v8, p0, Lcom/squareup/okhttp/internal/framed/d$b;->b:Lokio/Buffer;

    invoke-virtual/range {v5 .. v10}, Lcom/squareup/okhttp/internal/framed/c;->A0(IZLokio/Buffer;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/d$b;->e:Lcom/squareup/okhttp/internal/framed/d;

    invoke-static {p1}, Lcom/squareup/okhttp/internal/framed/d;->b(Lcom/squareup/okhttp/internal/framed/d;)Lcom/squareup/okhttp/internal/framed/d$d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/framed/d$d;->exitAndThrowIfTimedOut()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/d$b;->e:Lcom/squareup/okhttp/internal/framed/d;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/d;->b(Lcom/squareup/okhttp/internal/framed/d;)Lcom/squareup/okhttp/internal/framed/d$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/framed/d$d;->exitAndThrowIfTimedOut()V

    throw p1

    :catchall_1
    move-exception p1

    :try_start_4
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/d$b;->e:Lcom/squareup/okhttp/internal/framed/d;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/framed/d;->b(Lcom/squareup/okhttp/internal/framed/d;)Lcom/squareup/okhttp/internal/framed/d$d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/framed/d$d;->exitAndThrowIfTimedOut()V

    throw p1

    :catchall_2
    move-exception p1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/framed/d$b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/squareup/okhttp/internal/framed/d$b;->d:Z

    return p0
.end method

.method static synthetic p(Lcom/squareup/okhttp/internal/framed/d$b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/framed/d$b;->d:Z

    return p1
.end method

.method static synthetic x(Lcom/squareup/okhttp/internal/framed/d$b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/squareup/okhttp/internal/framed/d$b;->c:Z

    return p0
.end method


# virtual methods
.method public close()V
    .locals 8

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/d$b;->e:Lcom/squareup/okhttp/internal/framed/d;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/framed/d$b;->c:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/d$b;->e:Lcom/squareup/okhttp/internal/framed/d;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/framed/d;->h:Lcom/squareup/okhttp/internal/framed/d$b;

    iget-boolean v0, v0, Lcom/squareup/okhttp/internal/framed/d$b;->d:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/d$b;->b:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/d$b;->b:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    invoke-direct {p0, v1}, Lcom/squareup/okhttp/internal/framed/d$b;->B(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/d$b;->e:Lcom/squareup/okhttp/internal/framed/d;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/d;->d(Lcom/squareup/okhttp/internal/framed/d;)Lcom/squareup/okhttp/internal/framed/c;

    move-result-object v2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/d$b;->e:Lcom/squareup/okhttp/internal/framed/d;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/d;->e(Lcom/squareup/okhttp/internal/framed/d;)I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/squareup/okhttp/internal/framed/c;->A0(IZLokio/Buffer;J)V

    :cond_2
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/d$b;->e:Lcom/squareup/okhttp/internal/framed/d;

    monitor-enter v2

    :try_start_1
    iput-boolean v1, p0, Lcom/squareup/okhttp/internal/framed/d$b;->c:Z

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/d$b;->e:Lcom/squareup/okhttp/internal/framed/d;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/d;->d(Lcom/squareup/okhttp/internal/framed/d;)Lcom/squareup/okhttp/internal/framed/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/framed/c;->flush()V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/d$b;->e:Lcom/squareup/okhttp/internal/framed/d;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/d;->a(Lcom/squareup/okhttp/internal/framed/d;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public flush()V
    .locals 5

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/d$b;->e:Lcom/squareup/okhttp/internal/framed/d;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/d$b;->e:Lcom/squareup/okhttp/internal/framed/d;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/framed/d;->c(Lcom/squareup/okhttp/internal/framed/d;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/d$b;->b:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/framed/d$b;->B(Z)V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/d$b;->e:Lcom/squareup/okhttp/internal/framed/d;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/d;->d(Lcom/squareup/okhttp/internal/framed/d;)Lcom/squareup/okhttp/internal/framed/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/framed/c;->flush()V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/d$b;->e:Lcom/squareup/okhttp/internal/framed/d;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/d;->b(Lcom/squareup/okhttp/internal/framed/d;)Lcom/squareup/okhttp/internal/framed/d$d;

    move-result-object v0

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .locals 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/d$b;->b:Lokio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    :goto_0
    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/d$b;->b:Lokio/Buffer;

    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide p1

    const-wide/16 v0, 0x4000

    cmp-long p3, p1, v0

    if-ltz p3, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/framed/d$b;->B(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
