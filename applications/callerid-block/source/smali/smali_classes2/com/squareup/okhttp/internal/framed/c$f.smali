.class Lcom/squareup/okhttp/internal/framed/c$f;
.super Lcom/squareup/okhttp/u/d;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/internal/framed/c;->q0(ILokio/BufferedSource;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:I

.field final synthetic d:Lokio/Buffer;

.field final synthetic e:I

.field final synthetic f:Z

.field final synthetic g:Lcom/squareup/okhttp/internal/framed/c;


# direct methods
.method varargs constructor <init>(Lcom/squareup/okhttp/internal/framed/c;Ljava/lang/String;[Ljava/lang/Object;ILokio/Buffer;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/c$f;->g:Lcom/squareup/okhttp/internal/framed/c;

    iput p4, p0, Lcom/squareup/okhttp/internal/framed/c$f;->c:I

    iput-object p5, p0, Lcom/squareup/okhttp/internal/framed/c$f;->d:Lokio/Buffer;

    iput p6, p0, Lcom/squareup/okhttp/internal/framed/c$f;->e:I

    iput-boolean p7, p0, Lcom/squareup/okhttp/internal/framed/c$f;->f:Z

    invoke-direct {p0, p2, p3}, Lcom/squareup/okhttp/u/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/c$f;->g:Lcom/squareup/okhttp/internal/framed/c;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/c;->e0(Lcom/squareup/okhttp/internal/framed/c;)Lcom/squareup/okhttp/internal/framed/l;

    move-result-object v0

    iget v1, p0, Lcom/squareup/okhttp/internal/framed/c$f;->c:I

    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/c$f;->d:Lokio/Buffer;

    iget v3, p0, Lcom/squareup/okhttp/internal/framed/c$f;->e:I

    iget-boolean v4, p0, Lcom/squareup/okhttp/internal/framed/c$f;->f:Z

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/squareup/okhttp/internal/framed/l;->onData(ILokio/BufferedSource;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/c$f;->g:Lcom/squareup/okhttp/internal/framed/c;

    iget-object v1, v1, Lcom/squareup/okhttp/internal/framed/c;->u:Lcom/squareup/okhttp/internal/framed/b;

    iget v2, p0, Lcom/squareup/okhttp/internal/framed/c$f;->c:I

    sget-object v3, Lcom/squareup/okhttp/internal/framed/ErrorCode;->m:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-interface {v1, v2, v3}, Lcom/squareup/okhttp/internal/framed/b;->f(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    :cond_0
    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/framed/c$f;->f:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/c$f;->g:Lcom/squareup/okhttp/internal/framed/c;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/c$f;->g:Lcom/squareup/okhttp/internal/framed/c;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/framed/c;->f0(Lcom/squareup/okhttp/internal/framed/c;)Ljava/util/Set;

    move-result-object v1

    iget v2, p0, Lcom/squareup/okhttp/internal/framed/c$f;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method
