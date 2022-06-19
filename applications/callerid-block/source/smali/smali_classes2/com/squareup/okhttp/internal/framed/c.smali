.class public final Lcom/squareup/okhttp/internal/framed/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/framed/c$i;,
        Lcom/squareup/okhttp/internal/framed/c$h;
    }
.end annotation


# static fields
.field private static final x:Ljava/util/concurrent/ExecutorService;


# instance fields
.field final b:Lcom/squareup/okhttp/Protocol;

.field final c:Z

.field private final d:Lcom/squareup/okhttp/internal/framed/i;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/squareup/okhttp/internal/framed/d;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:Z

.field private j:J

.field private final k:Ljava/util/concurrent/ExecutorService;

.field private l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/squareup/okhttp/internal/framed/k;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Lcom/squareup/okhttp/internal/framed/l;

.field n:J

.field o:J

.field final p:Lcom/squareup/okhttp/internal/framed/m;

.field final q:Lcom/squareup/okhttp/internal/framed/m;

.field private r:Z

.field final s:Lcom/squareup/okhttp/internal/framed/o;

.field final t:Ljava/net/Socket;

.field final u:Lcom/squareup/okhttp/internal/framed/b;

.field final v:Lcom/squareup/okhttp/internal/framed/c$i;

.field private final w:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-class v0, Lcom/squareup/okhttp/internal/framed/c;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const/4 v1, 0x1

    const-string v8, "OkHttp FramedConnection"

    invoke-static {v8, v1}, Lcom/squareup/okhttp/u/i;->p(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/squareup/okhttp/internal/framed/c;->x:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private constructor <init>(Lcom/squareup/okhttp/internal/framed/c$h;)V
    .locals 18

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/squareup/okhttp/internal/framed/c;->e:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/squareup/okhttp/internal/framed/c;->j:J

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/squareup/okhttp/internal/framed/c;->n:J

    new-instance v1, Lcom/squareup/okhttp/internal/framed/m;

    invoke-direct {v1}, Lcom/squareup/okhttp/internal/framed/m;-><init>()V

    iput-object v1, v0, Lcom/squareup/okhttp/internal/framed/c;->p:Lcom/squareup/okhttp/internal/framed/m;

    new-instance v2, Lcom/squareup/okhttp/internal/framed/m;

    invoke-direct {v2}, Lcom/squareup/okhttp/internal/framed/m;-><init>()V

    iput-object v2, v0, Lcom/squareup/okhttp/internal/framed/c;->q:Lcom/squareup/okhttp/internal/framed/m;

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/squareup/okhttp/internal/framed/c;->r:Z

    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v4, v0, Lcom/squareup/okhttp/internal/framed/c;->w:Ljava/util/Set;

    invoke-static/range {p1 .. p1}, Lcom/squareup/okhttp/internal/framed/c$h;->a(Lcom/squareup/okhttp/internal/framed/c$h;)Lcom/squareup/okhttp/Protocol;

    move-result-object v4

    iput-object v4, v0, Lcom/squareup/okhttp/internal/framed/c;->b:Lcom/squareup/okhttp/Protocol;

    invoke-static/range {p1 .. p1}, Lcom/squareup/okhttp/internal/framed/c$h;->b(Lcom/squareup/okhttp/internal/framed/c$h;)Lcom/squareup/okhttp/internal/framed/l;

    move-result-object v5

    iput-object v5, v0, Lcom/squareup/okhttp/internal/framed/c;->m:Lcom/squareup/okhttp/internal/framed/l;

    invoke-static/range {p1 .. p1}, Lcom/squareup/okhttp/internal/framed/c$h;->c(Lcom/squareup/okhttp/internal/framed/c$h;)Z

    move-result v5

    iput-boolean v5, v0, Lcom/squareup/okhttp/internal/framed/c;->c:Z

    invoke-static/range {p1 .. p1}, Lcom/squareup/okhttp/internal/framed/c$h;->d(Lcom/squareup/okhttp/internal/framed/c$h;)Lcom/squareup/okhttp/internal/framed/i;

    move-result-object v6

    iput-object v6, v0, Lcom/squareup/okhttp/internal/framed/c;->d:Lcom/squareup/okhttp/internal/framed/i;

    invoke-static/range {p1 .. p1}, Lcom/squareup/okhttp/internal/framed/c$h;->c(Lcom/squareup/okhttp/internal/framed/c$h;)Z

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x2

    :goto_0
    iput v6, v0, Lcom/squareup/okhttp/internal/framed/c;->h:I

    invoke-static/range {p1 .. p1}, Lcom/squareup/okhttp/internal/framed/c$h;->c(Lcom/squareup/okhttp/internal/framed/c$h;)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Lcom/squareup/okhttp/Protocol;->e:Lcom/squareup/okhttp/Protocol;

    if-ne v4, v6, :cond_1

    iget v6, v0, Lcom/squareup/okhttp/internal/framed/c;->h:I

    add-int/2addr v6, v7

    iput v6, v0, Lcom/squareup/okhttp/internal/framed/c;->h:I

    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/squareup/okhttp/internal/framed/c$h;->c(Lcom/squareup/okhttp/internal/framed/c$h;)Z

    move-result v6

    invoke-static/range {p1 .. p1}, Lcom/squareup/okhttp/internal/framed/c$h;->c(Lcom/squareup/okhttp/internal/framed/c$h;)Z

    move-result v6

    const/4 v7, 0x7

    if-eqz v6, :cond_2

    const/high16 v6, 0x1000000

    invoke-virtual {v1, v7, v3, v6}, Lcom/squareup/okhttp/internal/framed/m;->k(III)Lcom/squareup/okhttp/internal/framed/m;

    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/squareup/okhttp/internal/framed/c$h;->e(Lcom/squareup/okhttp/internal/framed/c$h;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/squareup/okhttp/internal/framed/c;->f:Ljava/lang/String;

    sget-object v6, Lcom/squareup/okhttp/Protocol;->e:Lcom/squareup/okhttp/Protocol;

    const/4 v9, 0x0

    if-ne v4, v6, :cond_3

    new-instance v4, Lcom/squareup/okhttp/internal/framed/g;

    invoke-direct {v4}, Lcom/squareup/okhttp/internal/framed/g;-><init>()V

    iput-object v4, v0, Lcom/squareup/okhttp/internal/framed/c;->s:Lcom/squareup/okhttp/internal/framed/o;

    new-instance v4, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const-wide/16 v13, 0x3c

    sget-object v15, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v16, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct/range {v16 .. v16}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v1, v6, v3

    const-string v1, "OkHttp %s Push Observer"

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v8}, Lcom/squareup/okhttp/u/i;->p(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v17

    move-object v10, v4

    invoke-direct/range {v10 .. v17}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v4, v0, Lcom/squareup/okhttp/internal/framed/c;->k:Ljava/util/concurrent/ExecutorService;

    const v1, 0xffff

    invoke-virtual {v2, v7, v3, v1}, Lcom/squareup/okhttp/internal/framed/m;->k(III)Lcom/squareup/okhttp/internal/framed/m;

    const/4 v1, 0x5

    const/16 v4, 0x4000

    invoke-virtual {v2, v1, v3, v4}, Lcom/squareup/okhttp/internal/framed/m;->k(III)Lcom/squareup/okhttp/internal/framed/m;

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/squareup/okhttp/Protocol;->d:Lcom/squareup/okhttp/Protocol;

    if-ne v4, v1, :cond_4

    new-instance v1, Lcom/squareup/okhttp/internal/framed/n;

    invoke-direct {v1}, Lcom/squareup/okhttp/internal/framed/n;-><init>()V

    iput-object v1, v0, Lcom/squareup/okhttp/internal/framed/c;->s:Lcom/squareup/okhttp/internal/framed/o;

    iput-object v9, v0, Lcom/squareup/okhttp/internal/framed/c;->k:Ljava/util/concurrent/ExecutorService;

    :goto_1
    const/high16 v1, 0x10000

    invoke-virtual {v2, v1}, Lcom/squareup/okhttp/internal/framed/m;->e(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/squareup/okhttp/internal/framed/c;->o:J

    invoke-static/range {p1 .. p1}, Lcom/squareup/okhttp/internal/framed/c$h;->f(Lcom/squareup/okhttp/internal/framed/c$h;)Ljava/net/Socket;

    move-result-object v1

    iput-object v1, v0, Lcom/squareup/okhttp/internal/framed/c;->t:Ljava/net/Socket;

    iget-object v1, v0, Lcom/squareup/okhttp/internal/framed/c;->s:Lcom/squareup/okhttp/internal/framed/o;

    invoke-static/range {p1 .. p1}, Lcom/squareup/okhttp/internal/framed/c$h;->f(Lcom/squareup/okhttp/internal/framed/c$h;)Ljava/net/Socket;

    move-result-object v2

    invoke-static {v2}, Lokio/Okio;->sink(Ljava/net/Socket;)Lokio/Sink;

    move-result-object v2

    invoke-static {v2}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v2

    invoke-interface {v1, v2, v5}, Lcom/squareup/okhttp/internal/framed/o;->b(Lokio/BufferedSink;Z)Lcom/squareup/okhttp/internal/framed/b;

    move-result-object v1

    iput-object v1, v0, Lcom/squareup/okhttp/internal/framed/c;->u:Lcom/squareup/okhttp/internal/framed/b;

    new-instance v1, Lcom/squareup/okhttp/internal/framed/c$i;

    invoke-direct {v1, v0, v9}, Lcom/squareup/okhttp/internal/framed/c$i;-><init>(Lcom/squareup/okhttp/internal/framed/c;Lcom/squareup/okhttp/internal/framed/c$a;)V

    iput-object v1, v0, Lcom/squareup/okhttp/internal/framed/c;->v:Lcom/squareup/okhttp/internal/framed/c$i;

    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void

    :cond_4
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/internal/framed/c$h;Lcom/squareup/okhttp/internal/framed/c$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/framed/c;-><init>(Lcom/squareup/okhttp/internal/framed/c$h;)V

    return-void
.end method

.method static synthetic B(Lcom/squareup/okhttp/internal/framed/c;ILjava/util/List;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/squareup/okhttp/internal/framed/c;->r0(ILjava/util/List;Z)V

    return-void
.end method

.method private B0(ZIILcom/squareup/okhttp/internal/framed/k;)V
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/c;->u:Lcom/squareup/okhttp/internal/framed/b;

    monitor-enter v0

    if-eqz p4, :cond_0

    :try_start_0
    invoke-virtual {p4}, Lcom/squareup/okhttp/internal/framed/k;->c()V

    :cond_0
    iget-object p4, p0, Lcom/squareup/okhttp/internal/framed/c;->u:Lcom/squareup/okhttp/internal/framed/b;

    invoke-interface {p4, p1, p2, p3}, Lcom/squareup/okhttp/internal/framed/b;->ping(ZII)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic C(Lcom/squareup/okhttp/internal/framed/c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/squareup/okhttp/internal/framed/c;->i:Z

    return p0
.end method

.method private C0(ZIILcom/squareup/okhttp/internal/framed/k;)V
    .locals 10

    sget-object v0, Lcom/squareup/okhttp/internal/framed/c;->x:Ljava/util/concurrent/ExecutorService;

    new-instance v9, Lcom/squareup/okhttp/internal/framed/c$c;

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/c;->f:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v4, v2

    const-string v3, "OkHttp %s ping %08x%08x"

    move-object v1, v9

    move-object v2, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/squareup/okhttp/internal/framed/c$c;-><init>(Lcom/squareup/okhttp/internal/framed/c;Ljava/lang/String;[Ljava/lang/Object;ZIILcom/squareup/okhttp/internal/framed/k;)V

    invoke-interface {v0, v9}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic F(Lcom/squareup/okhttp/internal/framed/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/framed/c;->i:Z

    return p1
.end method

.method static synthetic K(Lcom/squareup/okhttp/internal/framed/c;)I
    .locals 0

    iget p0, p0, Lcom/squareup/okhttp/internal/framed/c;->g:I

    return p0
.end method

.method static synthetic O(Lcom/squareup/okhttp/internal/framed/c;I)I
    .locals 0

    iput p1, p0, Lcom/squareup/okhttp/internal/framed/c;->g:I

    return p1
.end method

.method static synthetic U(Lcom/squareup/okhttp/internal/framed/c;)I
    .locals 0

    iget p0, p0, Lcom/squareup/okhttp/internal/framed/c;->h:I

    return p0
.end method

.method static synthetic V(Lcom/squareup/okhttp/internal/framed/c;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/framed/c;->e:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic W(Lcom/squareup/okhttp/internal/framed/c;)Lcom/squareup/okhttp/internal/framed/i;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/framed/c;->d:Lcom/squareup/okhttp/internal/framed/i;

    return-object p0
.end method

.method static synthetic X()Ljava/util/concurrent/ExecutorService;
    .locals 1

    sget-object v0, Lcom/squareup/okhttp/internal/framed/c;->x:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic Y(Lcom/squareup/okhttp/internal/framed/c;ILcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/internal/framed/c;->t0(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    return-void
.end method

.method static synthetic Z(Lcom/squareup/okhttp/internal/framed/c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/squareup/okhttp/internal/framed/c;->r:Z

    return p0
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/framed/c;Lcom/squareup/okhttp/internal/framed/ErrorCode;Lcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/internal/framed/c;->j0(Lcom/squareup/okhttp/internal/framed/ErrorCode;Lcom/squareup/okhttp/internal/framed/ErrorCode;)V

    return-void
.end method

.method static synthetic a0(Lcom/squareup/okhttp/internal/framed/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/framed/c;->r:Z

    return p1
.end method

.method static synthetic b0(Lcom/squareup/okhttp/internal/framed/c;I)Lcom/squareup/okhttp/internal/framed/k;
    .locals 0

    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/framed/c;->v0(I)Lcom/squareup/okhttp/internal/framed/k;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c0(Lcom/squareup/okhttp/internal/framed/c;ZIILcom/squareup/okhttp/internal/framed/k;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/squareup/okhttp/internal/framed/c;->C0(ZIILcom/squareup/okhttp/internal/framed/k;)V

    return-void
.end method

.method static synthetic d0(Lcom/squareup/okhttp/internal/framed/c;ILjava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/internal/framed/c;->s0(ILjava/util/List;)V

    return-void
.end method

.method static synthetic e0(Lcom/squareup/okhttp/internal/framed/c;)Lcom/squareup/okhttp/internal/framed/l;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/framed/c;->m:Lcom/squareup/okhttp/internal/framed/l;

    return-object p0
.end method

.method static synthetic f0(Lcom/squareup/okhttp/internal/framed/c;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/framed/c;->w:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic g0(Lcom/squareup/okhttp/internal/framed/c;ZIILcom/squareup/okhttp/internal/framed/k;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/squareup/okhttp/internal/framed/c;->B0(ZIILcom/squareup/okhttp/internal/framed/k;)V

    return-void
.end method

.method static synthetic h0(Lcom/squareup/okhttp/internal/framed/c;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/framed/c;->f:Ljava/lang/String;

    return-object p0
.end method

.method private j0(Lcom/squareup/okhttp/internal/framed/ErrorCode;Lcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/internal/framed/c;->z0(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    goto :goto_0

    :catch_0
    move-exception p1

    :goto_0
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/c;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/c;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/c;->e:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    new-array v3, v3, [Lcom/squareup/okhttp/internal/framed/d;

    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/squareup/okhttp/internal/framed/d;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/c;->e:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    invoke-direct {p0, v2}, Lcom/squareup/okhttp/internal/framed/c;->y0(Z)V

    goto :goto_1

    :cond_0
    move-object v1, v0

    :goto_1
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/c;->l:Ljava/util/Map;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/c;->l:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Lcom/squareup/okhttp/internal/framed/k;

    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/squareup/okhttp/internal/framed/k;

    iput-object v0, p0, Lcom/squareup/okhttp/internal/framed/c;->l:Ljava/util/Map;

    move-object v0, v3

    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    array-length v3, v1

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_3

    aget-object v5, v1, v4

    :try_start_2
    invoke-virtual {v5, p2}, Lcom/squareup/okhttp/internal/framed/d;->l(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v5

    if-eqz p1, :cond_2

    move-object p1, v5

    :cond_2
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_4

    array-length p2, v0

    :goto_4
    if-ge v2, p2, :cond_4

    aget-object v1, v0, v2

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/framed/k;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    :try_start_3
    iget-object p2, p0, Lcom/squareup/okhttp/internal/framed/c;->u:Lcom/squareup/okhttp/internal/framed/b;

    invoke-interface {p2}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :catch_2
    move-exception p2

    if-nez p1, :cond_5

    move-object p1, p2

    :cond_5
    :goto_5
    :try_start_4
    iget-object p2, p0, Lcom/squareup/okhttp/internal/framed/c;->t:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_6

    :catch_3
    move-exception p1

    :goto_6
    if-nez p1, :cond_6

    return-void

    :cond_6
    throw p1

    :catchall_0
    move-exception p1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7
.end method

.method private o0(ILjava/util/List;ZZ)Lcom/squareup/okhttp/internal/framed/d;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/framed/e;",
            ">;ZZ)",
            "Lcom/squareup/okhttp/internal/framed/d;"
        }
    .end annotation

    xor-int/lit8 v6, p3, 0x1

    xor-int/lit8 p4, p4, 0x1

    iget-object v7, p0, Lcom/squareup/okhttp/internal/framed/c;->u:Lcom/squareup/okhttp/internal/framed/b;

    monitor-enter v7

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/framed/c;->i:Z

    if-nez v0, :cond_4

    iget v8, p0, Lcom/squareup/okhttp/internal/framed/c;->h:I

    add-int/lit8 v0, v8, 0x2

    iput v0, p0, Lcom/squareup/okhttp/internal/framed/c;->h:I

    new-instance v9, Lcom/squareup/okhttp/internal/framed/d;

    move-object v0, v9

    move v1, v8

    move-object v2, p0

    move v3, v6

    move v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/squareup/okhttp/internal/framed/d;-><init>(ILcom/squareup/okhttp/internal/framed/c;ZZLjava/util/List;)V

    invoke-virtual {v9}, Lcom/squareup/okhttp/internal/framed/d;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/c;->e:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/framed/c;->y0(Z)V

    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_1

    :try_start_2
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/c;->u:Lcom/squareup/okhttp/internal/framed/b;

    move v1, v6

    move v2, p4

    move v3, v8

    move v4, p1

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/squareup/okhttp/internal/framed/b;->Q(ZZIILjava/util/List;)V

    goto :goto_0

    :cond_1
    iget-boolean p4, p0, Lcom/squareup/okhttp/internal/framed/c;->c:Z

    if-nez p4, :cond_3

    iget-object p4, p0, Lcom/squareup/okhttp/internal/framed/c;->u:Lcom/squareup/okhttp/internal/framed/b;

    invoke-interface {p4, p1, v8, p2}, Lcom/squareup/okhttp/internal/framed/b;->pushPromise(IILjava/util/List;)V

    :goto_0
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez p3, :cond_2

    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/c;->u:Lcom/squareup/okhttp/internal/framed/b;

    invoke-interface {p1}, Lcom/squareup/okhttp/internal/framed/b;->flush()V

    :cond_2
    return-object v9

    :cond_3
    :try_start_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "client streams shouldn\'t have associated stream IDs"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_4
    :try_start_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "shutdown"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1

    :catchall_1
    move-exception p1

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1
.end method

.method static synthetic p(Lcom/squareup/okhttp/internal/framed/c;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/framed/c;->u0(I)Z

    move-result p0

    return p0
.end method

.method private q0(ILokio/BufferedSource;IZ)V
    .locals 9

    new-instance v5, Lokio/Buffer;

    invoke-direct {v5}, Lokio/Buffer;-><init>()V

    int-to-long v0, p3

    invoke-interface {p2, v0, v1}, Lokio/BufferedSource;->require(J)V

    invoke-interface {p2, v5, v0, v1}, Lokio/Source;->read(Lokio/Buffer;J)J

    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v2

    cmp-long p2, v2, v0

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/squareup/okhttp/internal/framed/c;->k:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/squareup/okhttp/internal/framed/c$f;

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/c;->f:Ljava/lang/String;

    aput-object v1, v3, v0

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    const-string v2, "OkHttp %s Push Data[%s]"

    move-object v0, v8

    move-object v1, p0

    move v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/squareup/okhttp/internal/framed/c$f;-><init>(Lcom/squareup/okhttp/internal/framed/c;Ljava/lang/String;[Ljava/lang/Object;ILokio/Buffer;IZ)V

    invoke-interface {p2, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, " != "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private r0(ILjava/util/List;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/framed/e;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/c;->k:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/squareup/okhttp/internal/framed/c$e;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/c;->f:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    const-string v3, "OkHttp %s Push Headers[%s]"

    move-object v1, v8

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/squareup/okhttp/internal/framed/c$e;-><init>(Lcom/squareup/okhttp/internal/framed/c;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private s0(ILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/framed/e;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/c;->w:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p2, Lcom/squareup/okhttp/internal/framed/ErrorCode;->c:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-virtual {p0, p1, p2}, Lcom/squareup/okhttp/internal/framed/c;->E0(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/c;->w:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/c;->k:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/squareup/okhttp/internal/framed/c$d;

    const-string v3, "OkHttp %s Push Request[%s]"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/c;->f:Ljava/lang/String;

    aput-object v2, v4, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/squareup/okhttp/internal/framed/c$d;-><init>(Lcom/squareup/okhttp/internal/framed/c;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private t0(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .locals 8

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/c;->k:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/squareup/okhttp/internal/framed/c$g;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/c;->f:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    const-string v3, "OkHttp %s Push Reset[%s]"

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/squareup/okhttp/internal/framed/c$g;-><init>(Lcom/squareup/okhttp/internal/framed/c;Ljava/lang/String;[Ljava/lang/Object;ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private u0(I)Z
    .locals 3

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/c;->b:Lcom/squareup/okhttp/Protocol;

    sget-object v1, Lcom/squareup/okhttp/Protocol;->e:Lcom/squareup/okhttp/Protocol;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    and-int/2addr p1, v2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private declared-synchronized v0(I)Lcom/squareup/okhttp/internal/framed/k;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/c;->l:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/squareup/okhttp/internal/framed/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic x(Lcom/squareup/okhttp/internal/framed/c;ILokio/BufferedSource;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/squareup/okhttp/internal/framed/c;->q0(ILokio/BufferedSource;IZ)V

    return-void
.end method

.method private declared-synchronized y0(Z)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    iput-wide v0, p0, Lcom/squareup/okhttp/internal/framed/c;->j:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public A0(IZLokio/Buffer;J)V
    .locals 8

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p4, v1

    if-nez v3, :cond_0

    iget-object p4, p0, Lcom/squareup/okhttp/internal/framed/c;->u:Lcom/squareup/okhttp/internal/framed/b;

    invoke-interface {p4, p2, p1, p3, v0}, Lcom/squareup/okhttp/internal/framed/b;->data(ZILokio/Buffer;I)V

    return-void

    :cond_0
    :goto_0
    cmp-long v3, p4, v1

    if-lez v3, :cond_4

    monitor-enter p0

    :goto_1
    :try_start_0
    iget-wide v3, p0, Lcom/squareup/okhttp/internal/framed/c;->o:J

    cmp-long v5, v3, v1

    if-gtz v5, :cond_2

    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/c;->e:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :try_start_1
    invoke-static {p4, p5, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v4, v3

    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/c;->u:Lcom/squareup/okhttp/internal/framed/b;

    invoke-interface {v3}, Lcom/squareup/okhttp/internal/framed/b;->maxDataLength()I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-wide v4, p0, Lcom/squareup/okhttp/internal/framed/c;->o:J

    int-to-long v6, v3

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/squareup/okhttp/internal/framed/c;->o:J

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long/2addr p4, v6

    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/c;->u:Lcom/squareup/okhttp/internal/framed/b;

    if-eqz p2, :cond_3

    cmp-long v5, p4, v1

    if-nez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    invoke-interface {v4, v5, p1, p3, v3}, Lcom/squareup/okhttp/internal/framed/b;->data(ZILokio/Buffer;I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    :try_start_2
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    :goto_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_4
    return-void
.end method

.method D0(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/c;->u:Lcom/squareup/okhttp/internal/framed/b;

    invoke-interface {v0, p1, p2}, Lcom/squareup/okhttp/internal/framed/b;->f(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    return-void
.end method

.method E0(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .locals 8

    sget-object v0, Lcom/squareup/okhttp/internal/framed/c;->x:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/squareup/okhttp/internal/framed/c$a;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/c;->f:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    const-string v3, "OkHttp %s stream %d"

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/squareup/okhttp/internal/framed/c$a;-><init>(Lcom/squareup/okhttp/internal/framed/c;Ljava/lang/String;[Ljava/lang/Object;ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method F0(IJ)V
    .locals 9

    sget-object v0, Lcom/squareup/okhttp/internal/framed/c;->x:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/squareup/okhttp/internal/framed/c$b;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/c;->f:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    const-string v3, "OkHttp Window Update %s stream %d"

    move-object v1, v8

    move-object v2, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/squareup/okhttp/internal/framed/c$b;-><init>(Lcom/squareup/okhttp/internal/framed/c;Ljava/lang/String;[Ljava/lang/Object;IJ)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public close()V
    .locals 2

    sget-object v0, Lcom/squareup/okhttp/internal/framed/ErrorCode;->b:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    sget-object v1, Lcom/squareup/okhttp/internal/framed/ErrorCode;->m:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-direct {p0, v0, v1}, Lcom/squareup/okhttp/internal/framed/c;->j0(Lcom/squareup/okhttp/internal/framed/ErrorCode;Lcom/squareup/okhttp/internal/framed/ErrorCode;)V

    return-void
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/c;->u:Lcom/squareup/okhttp/internal/framed/b;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/framed/b;->flush()V

    return-void
.end method

.method i0(J)V
    .locals 3

    iget-wide v0, p0, Lcom/squareup/okhttp/internal/framed/c;->o:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/framed/c;->o:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    return-void
.end method

.method public declared-synchronized k0()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/framed/c;->j:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public l0()Lcom/squareup/okhttp/Protocol;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/c;->b:Lcom/squareup/okhttp/Protocol;

    return-object v0
.end method

.method declared-synchronized m0(I)Lcom/squareup/okhttp/internal/framed/d;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/c;->e:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/squareup/okhttp/internal/framed/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized n0()Z
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/framed/c;->j:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public p0(Ljava/util/List;ZZ)Lcom/squareup/okhttp/internal/framed/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/framed/e;",
            ">;ZZ)",
            "Lcom/squareup/okhttp/internal/framed/d;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/squareup/okhttp/internal/framed/c;->o0(ILjava/util/List;ZZ)Lcom/squareup/okhttp/internal/framed/d;

    move-result-object p1

    return-object p1
.end method

.method declared-synchronized w0(I)Lcom/squareup/okhttp/internal/framed/d;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/c;->e:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/squareup/okhttp/internal/framed/d;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/c;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/framed/c;->y0(Z)V

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public x0()V
    .locals 4

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/c;->u:Lcom/squareup/okhttp/internal/framed/b;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/framed/b;->connectionPreface()V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/c;->u:Lcom/squareup/okhttp/internal/framed/b;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/c;->p:Lcom/squareup/okhttp/internal/framed/m;

    invoke-interface {v0, v1}, Lcom/squareup/okhttp/internal/framed/b;->S(Lcom/squareup/okhttp/internal/framed/m;)V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/c;->p:Lcom/squareup/okhttp/internal/framed/m;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/framed/m;->e(I)I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/c;->u:Lcom/squareup/okhttp/internal/framed/b;

    const/4 v3, 0x0

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-interface {v2, v3, v0, v1}, Lcom/squareup/okhttp/internal/framed/b;->windowUpdate(IJ)V

    :cond_0
    return-void
.end method

.method public z0(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .locals 4

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/c;->u:Lcom/squareup/okhttp/internal/framed/b;

    monitor-enter v0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/framed/c;->i:Z

    if-eqz v1, :cond_0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :cond_0
    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, p0, Lcom/squareup/okhttp/internal/framed/c;->i:Z

    iget v1, p0, Lcom/squareup/okhttp/internal/framed/c;->g:I

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/c;->u:Lcom/squareup/okhttp/internal/framed/b;

    sget-object v3, Lcom/squareup/okhttp/u/i;->a:[B

    invoke-interface {v2, v1, p1, v3}, Lcom/squareup/okhttp/internal/framed/b;->t(ILcom/squareup/okhttp/internal/framed/ErrorCode;[B)V

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1
.end method
