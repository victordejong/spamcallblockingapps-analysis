.class public final Lcom/bytedance/sdk/a/b/a/e/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/a/b/a/e/g$b;,
        Lcom/bytedance/sdk/a/b/a/e/g$c;,
        Lcom/bytedance/sdk/a/b/a/e/g$a;
    }
.end annotation


# static fields
.field static final a:Ljava/util/concurrent/ExecutorService;

.field static final synthetic s:Z = true


# instance fields
.field final b:Z

.field final c:Lcom/bytedance/sdk/a/b/a/e/g$b;

.field final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/bytedance/sdk/a/b/a/e/i;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/lang/String;

.field f:I

.field g:I

.field h:Z

.field final i:Lcom/bytedance/sdk/a/b/a/e/m;

.field j:J

.field k:J

.field l:Lcom/bytedance/sdk/a/b/a/e/n;

.field final m:Lcom/bytedance/sdk/a/b/a/e/n;

.field n:Z

.field final o:Ljava/net/Socket;

.field final p:Lcom/bytedance/sdk/a/b/a/e/j;

.field final q:Lcom/bytedance/sdk/a/b/a/e/g$c;

.field final r:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Ljava/util/concurrent/ExecutorService;

.field private u:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/bytedance/sdk/a/b/a/e/l;",
            ">;"
        }
    .end annotation
.end field

.field private v:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 73
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const/4 v0, 0x1

    const-string v7, "OkHttp Http2Connection"

    .line 75
    invoke-static {v7, v0}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v8, Lcom/bytedance/sdk/a/b/a/e/g;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method constructor <init>(Lcom/bytedance/sdk/a/b/a/e/g$a;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 141
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v0, Lcom/bytedance/sdk/a/b/a/e/g;->d:Ljava/util/Map;

    const-wide/16 v2, 0x0

    .line 113
    iput-wide v2, v0, Lcom/bytedance/sdk/a/b/a/e/g;->j:J

    .line 124
    new-instance v2, Lcom/bytedance/sdk/a/b/a/e/n;

    invoke-direct {v2}, Lcom/bytedance/sdk/a/b/a/e/n;-><init>()V

    iput-object v2, v0, Lcom/bytedance/sdk/a/b/a/e/g;->l:Lcom/bytedance/sdk/a/b/a/e/n;

    .line 132
    new-instance v2, Lcom/bytedance/sdk/a/b/a/e/n;

    invoke-direct {v2}, Lcom/bytedance/sdk/a/b/a/e/n;-><init>()V

    iput-object v2, v0, Lcom/bytedance/sdk/a/b/a/e/g;->m:Lcom/bytedance/sdk/a/b/a/e/n;

    const/4 v3, 0x0

    .line 134
    iput-boolean v3, v0, Lcom/bytedance/sdk/a/b/a/e/g;->n:Z

    .line 820
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v4, v0, Lcom/bytedance/sdk/a/b/a/e/g;->r:Ljava/util/Set;

    .line 142
    iget-object v4, v1, Lcom/bytedance/sdk/a/b/a/e/g$a;->f:Lcom/bytedance/sdk/a/b/a/e/m;

    iput-object v4, v0, Lcom/bytedance/sdk/a/b/a/e/g;->i:Lcom/bytedance/sdk/a/b/a/e/m;

    .line 143
    iget-boolean v4, v1, Lcom/bytedance/sdk/a/b/a/e/g$a;->g:Z

    iput-boolean v4, v0, Lcom/bytedance/sdk/a/b/a/e/g;->b:Z

    .line 144
    iget-object v5, v1, Lcom/bytedance/sdk/a/b/a/e/g$a;->e:Lcom/bytedance/sdk/a/b/a/e/g$b;

    iput-object v5, v0, Lcom/bytedance/sdk/a/b/a/e/g;->c:Lcom/bytedance/sdk/a/b/a/e/g$b;

    .line 146
    iget-boolean v5, v1, Lcom/bytedance/sdk/a/b/a/e/g$a;->g:Z

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    :goto_0
    iput v5, v0, Lcom/bytedance/sdk/a/b/a/e/g;->g:I

    .line 147
    iget-boolean v5, v1, Lcom/bytedance/sdk/a/b/a/e/g$a;->g:Z

    if-eqz v5, :cond_1

    .line 148
    iget v5, v0, Lcom/bytedance/sdk/a/b/a/e/g;->g:I

    add-int/2addr v5, v6

    iput v5, v0, Lcom/bytedance/sdk/a/b/a/e/g;->g:I

    .line 151
    :cond_1
    iget-boolean v5, v1, Lcom/bytedance/sdk/a/b/a/e/g$a;->g:Z

    if-eqz v5, :cond_2

    const/4 v6, 0x1

    :cond_2
    iput v6, v0, Lcom/bytedance/sdk/a/b/a/e/g;->v:I

    .line 157
    iget-boolean v5, v1, Lcom/bytedance/sdk/a/b/a/e/g$a;->g:Z

    const/4 v6, 0x7

    if-eqz v5, :cond_3

    .line 158
    iget-object v5, v0, Lcom/bytedance/sdk/a/b/a/e/g;->l:Lcom/bytedance/sdk/a/b/a/e/n;

    const/high16 v8, 0x1000000

    invoke-virtual {v5, v6, v8}, Lcom/bytedance/sdk/a/b/a/e/n;->a(II)Lcom/bytedance/sdk/a/b/a/e/n;

    .line 161
    :cond_3
    iget-object v5, v1, Lcom/bytedance/sdk/a/b/a/e/g$a;->b:Ljava/lang/String;

    iput-object v5, v0, Lcom/bytedance/sdk/a/b/a/e/g;->e:Ljava/lang/String;

    .line 164
    new-instance v15, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-wide/16 v11, 0x3c

    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v14, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v14}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-array v8, v7, [Ljava/lang/Object;

    aput-object v5, v8, v3

    const-string v3, "OkHttp %s Push Observer"

    .line 166
    invoke-static {v3, v8}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v3

    move-object v8, v15

    move-object v5, v15

    move-object v15, v3

    invoke-direct/range {v8 .. v15}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v5, v0, Lcom/bytedance/sdk/a/b/a/e/g;->t:Ljava/util/concurrent/ExecutorService;

    const v3, 0xffff

    .line 167
    invoke-virtual {v2, v6, v3}, Lcom/bytedance/sdk/a/b/a/e/n;->a(II)Lcom/bytedance/sdk/a/b/a/e/n;

    const/4 v3, 0x5

    const/16 v5, 0x4000

    .line 168
    invoke-virtual {v2, v3, v5}, Lcom/bytedance/sdk/a/b/a/e/n;->a(II)Lcom/bytedance/sdk/a/b/a/e/n;

    .line 169
    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/a/e/n;->d()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, Lcom/bytedance/sdk/a/b/a/e/g;->k:J

    .line 170
    iget-object v2, v1, Lcom/bytedance/sdk/a/b/a/e/g$a;->a:Ljava/net/Socket;

    iput-object v2, v0, Lcom/bytedance/sdk/a/b/a/e/g;->o:Ljava/net/Socket;

    .line 171
    new-instance v2, Lcom/bytedance/sdk/a/b/a/e/j;

    iget-object v3, v1, Lcom/bytedance/sdk/a/b/a/e/g$a;->d:Lcom/bytedance/sdk/a/a/d;

    invoke-direct {v2, v3, v4}, Lcom/bytedance/sdk/a/b/a/e/j;-><init>(Lcom/bytedance/sdk/a/a/d;Z)V

    iput-object v2, v0, Lcom/bytedance/sdk/a/b/a/e/g;->p:Lcom/bytedance/sdk/a/b/a/e/j;

    .line 173
    new-instance v2, Lcom/bytedance/sdk/a/b/a/e/g$c;

    new-instance v3, Lcom/bytedance/sdk/a/b/a/e/h;

    iget-object v1, v1, Lcom/bytedance/sdk/a/b/a/e/g$a;->c:Lcom/bytedance/sdk/a/a/e;

    invoke-direct {v3, v1, v4}, Lcom/bytedance/sdk/a/b/a/e/h;-><init>(Lcom/bytedance/sdk/a/a/e;Z)V

    invoke-direct {v2, v0, v3}, Lcom/bytedance/sdk/a/b/a/e/g$c;-><init>(Lcom/bytedance/sdk/a/b/a/e/g;Lcom/bytedance/sdk/a/b/a/e/h;)V

    iput-object v2, v0, Lcom/bytedance/sdk/a/b/a/e/g;->q:Lcom/bytedance/sdk/a/b/a/e/g$c;

    return-void
.end method

.method private b(ILjava/util/List;Z)Lcom/bytedance/sdk/a/b/a/e/i;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/a/b/a/e/c;",
            ">;Z)",
            "Lcom/bytedance/sdk/a/b/a/e/i;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    xor-int/lit8 v6, p3, 0x1

    .line 235
    iget-object v7, p0, Lcom/bytedance/sdk/a/b/a/e/g;->p:Lcom/bytedance/sdk/a/b/a/e/j;

    monitor-enter v7

    .line 236
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 237
    :try_start_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->h:Z

    if-nez v0, :cond_6

    .line 240
    iget v8, p0, Lcom/bytedance/sdk/a/b/a/e/g;->g:I

    add-int/lit8 v0, v8, 0x2

    .line 241
    iput v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->g:I

    .line 242
    new-instance v9, Lcom/bytedance/sdk/a/b/a/e/i;

    const/4 v4, 0x0

    move-object v0, v9

    move v1, v8

    move-object v2, p0

    move v3, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/a/b/a/e/i;-><init>(ILcom/bytedance/sdk/a/b/a/e/g;ZZLjava/util/List;)V

    if-eqz p3, :cond_1

    .line 243
    iget-wide v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->k:J

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-eqz p3, :cond_1

    iget-wide v0, v9, Lcom/bytedance/sdk/a/b/a/e/i;->b:J

    cmp-long p3, v0, v2

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p3, 0x1

    .line 244
    :goto_1
    invoke-virtual {v9}, Lcom/bytedance/sdk/a/b/a/e/i;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 245
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->d:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_3

    .line 249
    :try_start_2
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->p:Lcom/bytedance/sdk/a/b/a/e/j;

    invoke-virtual {v0, v6, v8, p1, p2}, Lcom/bytedance/sdk/a/b/a/e/j;->a(ZIILjava/util/List;)V

    goto :goto_2

    .line 250
    :cond_3
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->b:Z

    if-nez v0, :cond_5

    .line 253
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->p:Lcom/bytedance/sdk/a/b/a/e/j;

    invoke-virtual {v0, p1, v8, p2}, Lcom/bytedance/sdk/a/b/a/e/j;->a(IILjava/util/List;)V

    .line 255
    :goto_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p3, :cond_4

    .line 258
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/g;->p:Lcom/bytedance/sdk/a/b/a/e/j;

    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/e/j;->b()V

    :cond_4
    return-object v9

    .line 251
    :cond_5
    :try_start_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "client streams shouldn\'t have associated stream IDs"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 238
    :cond_6
    :try_start_4
    new-instance p1, Lcom/bytedance/sdk/a/b/a/e/a;

    invoke-direct {p1}, Lcom/bytedance/sdk/a/b/a/e/a;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    .line 247
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1

    :catchall_1
    move-exception p1

    .line 255
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1
.end method


# virtual methods
.method public final declared-synchronized a()I
    .locals 2

    monitor-enter p0

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->m:Lcom/bytedance/sdk/a/b/a/e/n;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/b/a/e/n;->c(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(I)Lcom/bytedance/sdk/a/b/a/e/i;
    .locals 1

    monitor-enter p0

    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/a/b/a/e/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Ljava/util/List;Z)Lcom/bytedance/sdk/a/b/a/e/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/a/b/a/e/c;",
            ">;Z)",
            "Lcom/bytedance/sdk/a/b/a/e/i;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 224
    invoke-direct {p0, v0, p1, p2}, Lcom/bytedance/sdk/a/b/a/e/g;->b(ILjava/util/List;Z)Lcom/bytedance/sdk/a/b/a/e/i;

    move-result-object p1

    return-object p1
.end method

.method final a(IJ)V
    .locals 9

    .line 339
    sget-object v0, Lcom/bytedance/sdk/a/b/a/e/g;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/bytedance/sdk/a/b/a/e/g$2;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/g;->e:Ljava/lang/String;

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

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/a/b/a/e/g$2;-><init>(Lcom/bytedance/sdk/a/b/a/e/g;Ljava/lang/String;[Ljava/lang/Object;IJ)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method final a(ILcom/bytedance/sdk/a/a/e;IZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 872
    new-instance v5, Lcom/bytedance/sdk/a/a/c;

    invoke-direct {v5}, Lcom/bytedance/sdk/a/a/c;-><init>()V

    int-to-long v0, p3

    .line 873
    invoke-interface {p2, v0, v1}, Lcom/bytedance/sdk/a/a/e;->a(J)V

    .line 874
    invoke-interface {p2, v5, v0, v1}, Lcom/bytedance/sdk/a/a/e;->a(Lcom/bytedance/sdk/a/a/c;J)J

    .line 875
    invoke-virtual {v5}, Lcom/bytedance/sdk/a/a/c;->b()J

    move-result-wide v2

    cmp-long p2, v2, v0

    if-nez p2, :cond_0

    .line 876
    iget-object p2, p0, Lcom/bytedance/sdk/a/b/a/e/g;->t:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/bytedance/sdk/a/b/a/e/g$6;

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/g;->e:Ljava/lang/String;

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

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/a/b/a/e/g$6;-><init>(Lcom/bytedance/sdk/a/b/a/e/g;Ljava/lang/String;[Ljava/lang/Object;ILcom/bytedance/sdk/a/a/c;IZ)V

    invoke-interface {p2, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 875
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/bytedance/sdk/a/a/c;->b()J

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

.method final a(ILcom/bytedance/sdk/a/b/a/e/b;)V
    .locals 8

    .line 323
    sget-object v0, Lcom/bytedance/sdk/a/b/a/e/g;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/bytedance/sdk/a/b/a/e/g$1;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/g;->e:Ljava/lang/String;

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

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/a/b/a/e/g$1;-><init>(Lcom/bytedance/sdk/a/b/a/e/g;Ljava/lang/String;[Ljava/lang/Object;ILcom/bytedance/sdk/a/b/a/e/b;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method final a(ILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/a/b/a/e/c;",
            ">;)V"
        }
    .end annotation

    .line 823
    monitor-enter p0

    .line 824
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->r:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 825
    sget-object p2, Lcom/bytedance/sdk/a/b/a/e/b;->b:Lcom/bytedance/sdk/a/b/a/e/b;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/a/b/a/e/g;->a(ILcom/bytedance/sdk/a/b/a/e/b;)V

    .line 826
    monitor-exit p0

    return-void

    .line 828
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->r:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 829
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 830
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->t:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/bytedance/sdk/a/b/a/e/g$4;

    const-string v3, "OkHttp %s Push Request[%s]"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/g;->e:Ljava/lang/String;

    aput-object v2, v4, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/a/b/a/e/g$4;-><init>(Lcom/bytedance/sdk/a/b/a/e/g;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 829
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method final a(ILjava/util/List;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/a/b/a/e/c;",
            ">;Z)V"
        }
    .end annotation

    .line 849
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->t:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/bytedance/sdk/a/b/a/e/g$5;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/g;->e:Ljava/lang/String;

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

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/a/b/a/e/g$5;-><init>(Lcom/bytedance/sdk/a/b/a/e/g;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(IZLcom/bytedance/sdk/a/a/c;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p4, v1

    if-nez v3, :cond_0

    .line 284
    iget-object p4, p0, Lcom/bytedance/sdk/a/b/a/e/g;->p:Lcom/bytedance/sdk/a/b/a/e/j;

    invoke-virtual {p4, p2, p1, p3, v0}, Lcom/bytedance/sdk/a/b/a/e/j;->a(ZILcom/bytedance/sdk/a/a/c;I)V

    return-void

    :cond_0
    :goto_0
    cmp-long v3, p4, v1

    if-lez v3, :cond_4

    .line 290
    monitor-enter p0

    .line 292
    :goto_1
    :try_start_0
    iget-wide v3, p0, Lcom/bytedance/sdk/a/b/a/e/g;->k:J

    cmp-long v5, v3, v1

    if-gtz v5, :cond_2

    .line 295
    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/e/g;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 298
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 296
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    :cond_2
    :try_start_1
    invoke-static {p4, p5, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v4, v3

    .line 305
    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/e/g;->p:Lcom/bytedance/sdk/a/b/a/e/j;

    invoke-virtual {v3}, Lcom/bytedance/sdk/a/b/a/e/j;->c()I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 306
    iget-wide v4, p0, Lcom/bytedance/sdk/a/b/a/e/g;->k:J

    int-to-long v6, v3

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/bytedance/sdk/a/b/a/e/g;->k:J

    .line 307
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long/2addr p4, v6

    .line 310
    iget-object v4, p0, Lcom/bytedance/sdk/a/b/a/e/g;->p:Lcom/bytedance/sdk/a/b/a/e/j;

    if-eqz p2, :cond_3

    cmp-long v5, p4, v1

    if-nez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v4, v5, p1, p3, v3}, Lcom/bytedance/sdk/a/b/a/e/j;->a(ZILcom/bytedance/sdk/a/a/c;I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 301
    :catch_0
    :try_start_2
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    .line 307
    :goto_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_4
    return-void
.end method

.method final a(J)V
    .locals 3

    .line 318
    iget-wide v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->k:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->k:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 319
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/bytedance/sdk/a/b/a/e/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 406
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->p:Lcom/bytedance/sdk/a/b/a/e/j;

    monitor-enter v0

    .line 408
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 409
    :try_start_1
    iget-boolean v1, p0, Lcom/bytedance/sdk/a/b/a/e/g;->h:Z

    if-eqz v1, :cond_0

    .line 410
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

    .line 412
    :try_start_3
    iput-boolean v1, p0, Lcom/bytedance/sdk/a/b/a/e/g;->h:Z

    .line 413
    iget v1, p0, Lcom/bytedance/sdk/a/b/a/e/g;->f:I

    .line 414
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 417
    :try_start_4
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/g;->p:Lcom/bytedance/sdk/a/b/a/e/j;

    sget-object v3, Lcom/bytedance/sdk/a/b/a/c;->a:[B

    invoke-virtual {v2, v1, p1, v3}, Lcom/bytedance/sdk/a/b/a/e/j;->a(ILcom/bytedance/sdk/a/b/a/e/b;[B)V

    .line 418
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    .line 414
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1

    :catchall_1
    move-exception p1

    .line 418
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1
.end method

.method final a(Lcom/bytedance/sdk/a/b/a/e/b;Lcom/bytedance/sdk/a/b/a/e/b;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 431
    sget-boolean v0, Lcom/bytedance/sdk/a/b/a/e/g;->s:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 434
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/a/b/a/e/g;->a(Lcom/bytedance/sdk/a/b/a/e/b;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 441
    :goto_1
    monitor-enter p0

    .line 442
    :try_start_1
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/g;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 443
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/g;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/g;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lcom/bytedance/sdk/a/b/a/e/i;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/bytedance/sdk/a/b/a/e/i;

    .line 444
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/g;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    goto :goto_2

    :cond_2
    move-object v1, v0

    .line 446
    :goto_2
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/g;->u:Ljava/util/Map;

    if-eqz v2, :cond_3

    .line 447
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/e/g;->u:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    new-array v3, v3, [Lcom/bytedance/sdk/a/b/a/e/l;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/bytedance/sdk/a/b/a/e/l;

    .line 448
    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->u:Ljava/util/Map;

    move-object v0, v2

    .line 450
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 453
    array-length v3, v1

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v3, :cond_5

    aget-object v5, v1, v4

    .line 455
    :try_start_2
    invoke-virtual {v5, p2}, Lcom/bytedance/sdk/a/b/a/e/i;->a(Lcom/bytedance/sdk/a/b/a/e/b;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v5

    if-eqz p1, :cond_4

    move-object p1, v5

    :cond_4
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    if-eqz v0, :cond_6

    .line 463
    array-length p2, v0

    :goto_5
    if-ge v2, p2, :cond_6

    aget-object v1, v0, v2

    .line 464
    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/a/e/l;->c()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 470
    :cond_6
    :try_start_3
    iget-object p2, p0, Lcom/bytedance/sdk/a/b/a/e/g;->p:Lcom/bytedance/sdk/a/b/a/e/j;

    invoke-virtual {p2}, Lcom/bytedance/sdk/a/b/a/e/j;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_6

    :catch_2
    move-exception p2

    if-nez p1, :cond_7

    move-object p1, p2

    .line 477
    :cond_7
    :goto_6
    :try_start_4
    iget-object p2, p0, Lcom/bytedance/sdk/a/b/a/e/g;->o:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_7

    :catch_3
    move-exception p1

    :goto_7
    if-nez p1, :cond_8

    return-void

    .line 482
    :cond_8
    throw p1

    :catchall_0
    move-exception p1

    .line 450
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method final a(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 499
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/g;->p:Lcom/bytedance/sdk/a/b/a/e/j;

    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/e/j;->a()V

    .line 500
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/g;->p:Lcom/bytedance/sdk/a/b/a/e/j;

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->l:Lcom/bytedance/sdk/a/b/a/e/n;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/a/b/a/e/j;->b(Lcom/bytedance/sdk/a/b/a/e/n;)V

    .line 501
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/g;->l:Lcom/bytedance/sdk/a/b/a/e/n;

    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/e/n;->d()I

    move-result p1

    const v0, 0xffff

    if-eq p1, v0, :cond_0

    .line 503
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/g;->p:Lcom/bytedance/sdk/a/b/a/e/j;

    const/4 v2, 0x0

    sub-int/2addr p1, v0

    int-to-long v3, p1

    invoke-virtual {v1, v2, v3, v4}, Lcom/bytedance/sdk/a/b/a/e/j;->a(IJ)V

    .line 506
    :cond_0
    new-instance p1, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->q:Lcom/bytedance/sdk/a/b/a/e/g$c;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tt_pangle_thread_http2_connection"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 508
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method final a(ZIILcom/bytedance/sdk/a/b/a/e/l;)V
    .locals 10

    .line 372
    sget-object v0, Lcom/bytedance/sdk/a/b/a/e/g;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v9, Lcom/bytedance/sdk/a/b/a/e/g$3;

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/g;->e:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    .line 373
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

    invoke-direct/range {v1 .. v8}, Lcom/bytedance/sdk/a/b/a/e/g$3;-><init>(Lcom/bytedance/sdk/a/b/a/e/g;Ljava/lang/String;[Ljava/lang/Object;ZIILcom/bytedance/sdk/a/b/a/e/l;)V

    .line 372
    invoke-interface {v0, v9}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method final declared-synchronized b(I)Lcom/bytedance/sdk/a/b/a/e/i;
    .locals 1

    monitor-enter p0

    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/a/b/a/e/i;

    .line 196
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 397
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->p:Lcom/bytedance/sdk/a/b/a/e/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/e/j;->b()V

    return-void
.end method

.method final b(ILcom/bytedance/sdk/a/b/a/e/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 335
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->p:Lcom/bytedance/sdk/a/b/a/e/j;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/a/b/a/e/j;->a(ILcom/bytedance/sdk/a/b/a/e/b;)V

    return-void
.end method

.method final b(ZIILcom/bytedance/sdk/a/b/a/e/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 385
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->p:Lcom/bytedance/sdk/a/b/a/e/j;

    monitor-enter v0

    if-eqz p4, :cond_0

    .line 387
    :try_start_0
    invoke-virtual {p4}, Lcom/bytedance/sdk/a/b/a/e/l;->a()V

    .line 388
    :cond_0
    iget-object p4, p0, Lcom/bytedance/sdk/a/b/a/e/g;->p:Lcom/bytedance/sdk/a/b/a/e/j;

    invoke-virtual {p4, p1, p2, p3}, Lcom/bytedance/sdk/a/b/a/e/j;->a(ZII)V

    .line 389
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method final declared-synchronized c(I)Lcom/bytedance/sdk/a/b/a/e/l;
    .locals 1

    monitor-enter p0

    .line 393
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->u:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/a/b/a/e/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 490
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/a/b/a/e/g;->a(Z)V

    return-void
.end method

.method final c(ILcom/bytedance/sdk/a/b/a/e/b;)V
    .locals 8

    .line 894
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->t:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/bytedance/sdk/a/b/a/e/g$7;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/g;->e:Ljava/lang/String;

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

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/a/b/a/e/g$7;-><init>(Lcom/bytedance/sdk/a/b/a/e/g;Ljava/lang/String;[Ljava/lang/Object;ILcom/bytedance/sdk/a/b/a/e/b;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 427
    sget-object v0, Lcom/bytedance/sdk/a/b/a/e/b;->a:Lcom/bytedance/sdk/a/b/a/e/b;

    sget-object v1, Lcom/bytedance/sdk/a/b/a/e/b;->f:Lcom/bytedance/sdk/a/b/a/e/b;

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/a/b/a/e/g;->a(Lcom/bytedance/sdk/a/b/a/e/b;Lcom/bytedance/sdk/a/b/a/e/b;)V

    return-void
.end method

.method public final declared-synchronized d()Z
    .locals 1

    monitor-enter p0

    .line 527
    :try_start_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final d(I)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
