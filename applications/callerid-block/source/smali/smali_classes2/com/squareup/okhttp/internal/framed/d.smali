.class public final Lcom/squareup/okhttp/internal/framed/d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/framed/d$d;,
        Lcom/squareup/okhttp/internal/framed/d$b;,
        Lcom/squareup/okhttp/internal/framed/d$c;
    }
.end annotation


# instance fields
.field a:J

.field b:J

.field private final c:I

.field private final d:Lcom/squareup/okhttp/internal/framed/c;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/framed/e;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/framed/e;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/squareup/okhttp/internal/framed/d$c;

.field final h:Lcom/squareup/okhttp/internal/framed/d$b;

.field private final i:Lcom/squareup/okhttp/internal/framed/d$d;

.field private final j:Lcom/squareup/okhttp/internal/framed/d$d;

.field private k:Lcom/squareup/okhttp/internal/framed/ErrorCode;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(ILcom/squareup/okhttp/internal/framed/c;ZZLjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/squareup/okhttp/internal/framed/c;",
            "ZZ",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/framed/e;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/framed/d;->a:J

    new-instance v0, Lcom/squareup/okhttp/internal/framed/d$d;

    invoke-direct {v0, p0}, Lcom/squareup/okhttp/internal/framed/d$d;-><init>(Lcom/squareup/okhttp/internal/framed/d;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/framed/d;->i:Lcom/squareup/okhttp/internal/framed/d$d;

    new-instance v0, Lcom/squareup/okhttp/internal/framed/d$d;

    invoke-direct {v0, p0}, Lcom/squareup/okhttp/internal/framed/d$d;-><init>(Lcom/squareup/okhttp/internal/framed/d;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/framed/d;->j:Lcom/squareup/okhttp/internal/framed/d$d;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/framed/d;->k:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    if-eqz p2, :cond_1

    if-eqz p5, :cond_0

    iput p1, p0, Lcom/squareup/okhttp/internal/framed/d;->c:I

    iput-object p2, p0, Lcom/squareup/okhttp/internal/framed/d;->d:Lcom/squareup/okhttp/internal/framed/c;

    iget-object p1, p2, Lcom/squareup/okhttp/internal/framed/c;->q:Lcom/squareup/okhttp/internal/framed/m;

    const/high16 v1, 0x10000

    invoke-virtual {p1, v1}, Lcom/squareup/okhttp/internal/framed/m;->e(I)I

    move-result p1

    int-to-long v2, p1

    iput-wide v2, p0, Lcom/squareup/okhttp/internal/framed/d;->b:J

    new-instance p1, Lcom/squareup/okhttp/internal/framed/d$c;

    iget-object p2, p2, Lcom/squareup/okhttp/internal/framed/c;->p:Lcom/squareup/okhttp/internal/framed/m;

    invoke-virtual {p2, v1}, Lcom/squareup/okhttp/internal/framed/m;->e(I)I

    move-result p2

    int-to-long v1, p2

    invoke-direct {p1, p0, v1, v2, v0}, Lcom/squareup/okhttp/internal/framed/d$c;-><init>(Lcom/squareup/okhttp/internal/framed/d;JLcom/squareup/okhttp/internal/framed/d$a;)V

    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/d;->g:Lcom/squareup/okhttp/internal/framed/d$c;

    new-instance p2, Lcom/squareup/okhttp/internal/framed/d$b;

    invoke-direct {p2, p0}, Lcom/squareup/okhttp/internal/framed/d$b;-><init>(Lcom/squareup/okhttp/internal/framed/d;)V

    iput-object p2, p0, Lcom/squareup/okhttp/internal/framed/d;->h:Lcom/squareup/okhttp/internal/framed/d$b;

    invoke-static {p1, p4}, Lcom/squareup/okhttp/internal/framed/d$c;->p(Lcom/squareup/okhttp/internal/framed/d$c;Z)Z

    invoke-static {p2, p3}, Lcom/squareup/okhttp/internal/framed/d$b;->p(Lcom/squareup/okhttp/internal/framed/d$b;Z)Z

    iput-object p5, p0, Lcom/squareup/okhttp/internal/framed/d;->e:Ljava/util/List;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "requestHeaders == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "connection == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/framed/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/framed/d;->j()V

    return-void
.end method

.method static synthetic b(Lcom/squareup/okhttp/internal/framed/d;)Lcom/squareup/okhttp/internal/framed/d$d;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/framed/d;->j:Lcom/squareup/okhttp/internal/framed/d$d;

    return-object p0
.end method

.method static synthetic c(Lcom/squareup/okhttp/internal/framed/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/framed/d;->k()V

    return-void
.end method

.method static synthetic d(Lcom/squareup/okhttp/internal/framed/d;)Lcom/squareup/okhttp/internal/framed/c;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/framed/d;->d:Lcom/squareup/okhttp/internal/framed/c;

    return-object p0
.end method

.method static synthetic e(Lcom/squareup/okhttp/internal/framed/d;)I
    .locals 0

    iget p0, p0, Lcom/squareup/okhttp/internal/framed/d;->c:I

    return p0
.end method

.method static synthetic f(Lcom/squareup/okhttp/internal/framed/d;)Lcom/squareup/okhttp/internal/framed/d$d;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/framed/d;->i:Lcom/squareup/okhttp/internal/framed/d$d;

    return-object p0
.end method

.method static synthetic g(Lcom/squareup/okhttp/internal/framed/d;)Lcom/squareup/okhttp/internal/framed/ErrorCode;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/framed/d;->k:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    return-object p0
.end method

.method static synthetic h(Lcom/squareup/okhttp/internal/framed/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/framed/d;->z()V

    return-void
.end method

.method private j()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/d;->g:Lcom/squareup/okhttp/internal/framed/d$c;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/d$c;->a(Lcom/squareup/okhttp/internal/framed/d$c;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/d;->g:Lcom/squareup/okhttp/internal/framed/d$c;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/d$c;->x(Lcom/squareup/okhttp/internal/framed/d$c;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/d;->h:Lcom/squareup/okhttp/internal/framed/d$b;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/d$b;->a(Lcom/squareup/okhttp/internal/framed/d$b;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/d;->h:Lcom/squareup/okhttp/internal/framed/d$b;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/d$b;->x(Lcom/squareup/okhttp/internal/framed/d$b;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/framed/d;->t()Z

    move-result v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/squareup/okhttp/internal/framed/ErrorCode;->m:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/internal/framed/d;->l(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/d;->d:Lcom/squareup/okhttp/internal/framed/c;

    iget v1, p0, Lcom/squareup/okhttp/internal/framed/d;->c:I

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/framed/c;->w0(I)Lcom/squareup/okhttp/internal/framed/d;

    :cond_3
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private k()V
    .locals 3

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/d;->h:Lcom/squareup/okhttp/internal/framed/d$b;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/d$b;->x(Lcom/squareup/okhttp/internal/framed/d$b;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/d;->h:Lcom/squareup/okhttp/internal/framed/d$b;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/d$b;->a(Lcom/squareup/okhttp/internal/framed/d$b;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/d;->k:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stream was reset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/d;->k:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private m(Lcom/squareup/okhttp/internal/framed/ErrorCode;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/d;->k:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/d;->g:Lcom/squareup/okhttp/internal/framed/d$c;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/d$c;->a(Lcom/squareup/okhttp/internal/framed/d$c;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/d;->h:Lcom/squareup/okhttp/internal/framed/d$b;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/d$b;->a(Lcom/squareup/okhttp/internal/framed/d$b;)Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/d;->k:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/d;->d:Lcom/squareup/okhttp/internal/framed/c;

    iget v0, p0, Lcom/squareup/okhttp/internal/framed/d;->c:I

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/internal/framed/c;->w0(I)Lcom/squareup/okhttp/internal/framed/d;

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private z()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
.end method


# virtual methods
.method i(J)V
    .locals 3

    iget-wide v0, p0, Lcom/squareup/okhttp/internal/framed/d;->b:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/framed/d;->b:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    return-void
.end method

.method public l(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/framed/d;->m(Lcom/squareup/okhttp/internal/framed/ErrorCode;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/d;->d:Lcom/squareup/okhttp/internal/framed/c;

    iget v1, p0, Lcom/squareup/okhttp/internal/framed/d;->c:I

    invoke-virtual {v0, v1, p1}, Lcom/squareup/okhttp/internal/framed/c;->D0(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    return-void
.end method

.method public n(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/framed/d;->m(Lcom/squareup/okhttp/internal/framed/ErrorCode;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/d;->d:Lcom/squareup/okhttp/internal/framed/c;

    iget v1, p0, Lcom/squareup/okhttp/internal/framed/d;->c:I

    invoke-virtual {v0, v1, p1}, Lcom/squareup/okhttp/internal/framed/c;->E0(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    return-void
.end method

.method public o()I
    .locals 1

    iget v0, p0, Lcom/squareup/okhttp/internal/framed/d;->c:I

    return v0
.end method

.method public declared-synchronized p()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/framed/e;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/d;->i:Lcom/squareup/okhttp/internal/framed/d$d;

    invoke-virtual {v0}, Lokio/AsyncTimeout;->enter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/d;->f:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/d;->k:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/framed/d;->z()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/d;->i:Lcom/squareup/okhttp/internal/framed/d$d;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/framed/d$d;->exitAndThrowIfTimedOut()V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/d;->f:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_1

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stream was reset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/d;->k:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/d;->i:Lcom/squareup/okhttp/internal/framed/d$d;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/framed/d$d;->exitAndThrowIfTimedOut()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public q()Lokio/Sink;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/d;->f:Ljava/util/List;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/framed/d;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "reply before requesting the sink"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/d;->h:Lcom/squareup/okhttp/internal/framed/d$b;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public r()Lokio/Source;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/d;->g:Lcom/squareup/okhttp/internal/framed/d$c;

    return-object v0
.end method

.method public s()Z
    .locals 4

    iget v0, p0, Lcom/squareup/okhttp/internal/framed/d;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/d;->d:Lcom/squareup/okhttp/internal/framed/c;

    iget-boolean v3, v3, Lcom/squareup/okhttp/internal/framed/c;->c:Z

    if-ne v3, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public declared-synchronized t()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/d;->k:Lcom/squareup/okhttp/internal/framed/ErrorCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/d;->g:Lcom/squareup/okhttp/internal/framed/d$c;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/d$c;->a(Lcom/squareup/okhttp/internal/framed/d$c;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/d;->g:Lcom/squareup/okhttp/internal/framed/d$c;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/d$c;->x(Lcom/squareup/okhttp/internal/framed/d$c;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/d;->h:Lcom/squareup/okhttp/internal/framed/d$b;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/d$b;->a(Lcom/squareup/okhttp/internal/framed/d$b;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/d;->h:Lcom/squareup/okhttp/internal/framed/d$b;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/d$b;->x(Lcom/squareup/okhttp/internal/framed/d$b;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/d;->f:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    monitor-exit p0

    return v1

    :cond_3
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public u()Lokio/Timeout;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/d;->i:Lcom/squareup/okhttp/internal/framed/d$d;

    return-object v0
.end method

.method v(Lokio/BufferedSource;I)V
    .locals 3

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/d;->g:Lcom/squareup/okhttp/internal/framed/d$c;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/okhttp/internal/framed/d$c;->C(Lokio/BufferedSource;J)V

    return-void
.end method

.method w()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/d;->g:Lcom/squareup/okhttp/internal/framed/d$c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/framed/d$c;->p(Lcom/squareup/okhttp/internal/framed/d$c;Z)Z

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/framed/d;->t()Z

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/d;->d:Lcom/squareup/okhttp/internal/framed/c;

    iget v1, p0, Lcom/squareup/okhttp/internal/framed/d;->c:I

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/framed/c;->w0(I)Lcom/squareup/okhttp/internal/framed/d;

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method x(Ljava/util/List;Lcom/squareup/okhttp/internal/framed/HeadersMode;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/framed/e;",
            ">;",
            "Lcom/squareup/okhttp/internal/framed/HeadersMode;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/d;->f:Ljava/util/List;

    if-nez v2, :cond_1

    invoke-virtual {p2}, Lcom/squareup/okhttp/internal/framed/HeadersMode;->failIfHeadersAbsent()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object v0, Lcom/squareup/okhttp/internal/framed/ErrorCode;->c:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/d;->f:Ljava/util/List;

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/framed/d;->t()Z

    move-result v1

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/squareup/okhttp/internal/framed/HeadersMode;->failIfHeadersPresent()Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object v0, Lcom/squareup/okhttp/internal/framed/ErrorCode;->f:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    goto :goto_0

    :cond_2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/d;->f:Ljava/util/List;

    invoke-interface {p2, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object p2, p0, Lcom/squareup/okhttp/internal/framed/d;->f:Ljava/util/List;

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/internal/framed/d;->n(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V

    goto :goto_1

    :cond_3
    if-nez v1, :cond_4

    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/d;->d:Lcom/squareup/okhttp/internal/framed/c;

    iget p2, p0, Lcom/squareup/okhttp/internal/framed/d;->c:I

    invoke-virtual {p1, p2}, Lcom/squareup/okhttp/internal/framed/c;->w0(I)Lcom/squareup/okhttp/internal/framed/d;

    :cond_4
    :goto_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized y(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/d;->k:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/d;->k:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
