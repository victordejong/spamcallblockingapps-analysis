.class final Lcom/google/android/exoplayer2/source/x$a;
.super Ljava/lang/Object;
.source "ProgressiveMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$e;
.implements Lcom/google/android/exoplayer2/source/t$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:Lcom/google/android/exoplayer2/upstream/w;

.field private final c:Lcom/google/android/exoplayer2/source/x$b;

.field private final d:Lcom/google/android/exoplayer2/c1/j;

.field private final e:Lcom/google/android/exoplayer2/util/i;

.field private final f:Lcom/google/android/exoplayer2/c1/s;

.field private volatile g:Z

.field private h:Z

.field private i:J

.field private j:Lcom/google/android/exoplayer2/upstream/l;

.field private k:J

.field private l:Lcom/google/android/exoplayer2/c1/v;

.field private m:Z

.field final synthetic n:Lcom/google/android/exoplayer2/source/x;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/x;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/j;Lcom/google/android/exoplayer2/source/x$b;Lcom/google/android/exoplayer2/c1/j;Lcom/google/android/exoplayer2/util/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/x$a;->n:Lcom/google/android/exoplayer2/source/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/x$a;->a:Landroid/net/Uri;

    .line 3
    new-instance p1, Lcom/google/android/exoplayer2/upstream/w;

    invoke-direct {p1, p3}, Lcom/google/android/exoplayer2/upstream/w;-><init>(Lcom/google/android/exoplayer2/upstream/j;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/x$a;->b:Lcom/google/android/exoplayer2/upstream/w;

    .line 4
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/x$a;->c:Lcom/google/android/exoplayer2/source/x$b;

    .line 5
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/x$a;->d:Lcom/google/android/exoplayer2/c1/j;

    .line 6
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/x$a;->e:Lcom/google/android/exoplayer2/util/i;

    .line 7
    new-instance p1, Lcom/google/android/exoplayer2/c1/s;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/c1/s;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/x$a;->f:Lcom/google/android/exoplayer2/c1/s;

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/x$a;->h:Z

    const-wide/16 p1, -0x1

    .line 9
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/x$a;->k:J

    const-wide/16 p1, 0x0

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/x$a;->i(J)Lcom/google/android/exoplayer2/upstream/l;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/x$a;->j:Lcom/google/android/exoplayer2/upstream/l;

    return-void
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/source/x$a;)Lcom/google/android/exoplayer2/upstream/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/x$a;->j:Lcom/google/android/exoplayer2/upstream/l;

    return-object p0
.end method

.method static synthetic e(Lcom/google/android/exoplayer2/source/x$a;)Lcom/google/android/exoplayer2/upstream/w;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/x$a;->b:Lcom/google/android/exoplayer2/upstream/w;

    return-object p0
.end method

.method static synthetic f(Lcom/google/android/exoplayer2/source/x$a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/x$a;->i:J

    return-wide v0
.end method

.method static synthetic g(Lcom/google/android/exoplayer2/source/x$a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/x$a;->k:J

    return-wide v0
.end method

.method static synthetic h(Lcom/google/android/exoplayer2/source/x$a;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/x$a;->j(JJ)V

    return-void
.end method

.method private i(J)Lcom/google/android/exoplayer2/upstream/l;
    .locals 10

    .line 1
    new-instance v9, Lcom/google/android/exoplayer2/upstream/l;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/x$a;->a:Landroid/net/Uri;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/x$a;->n:Lcom/google/android/exoplayer2/source/x;

    .line 2
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/x;->x(Lcom/google/android/exoplayer2/source/x;)Ljava/lang/String;

    move-result-object v6

    .line 3
    invoke-static {}, Lcom/google/android/exoplayer2/source/x;->y()Ljava/util/Map;

    move-result-object v8

    const-wide/16 v4, -0x1

    const/4 v7, 0x6

    move-object v0, v9

    move-wide v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/upstream/l;-><init>(Landroid/net/Uri;JJLjava/lang/String;ILjava/util/Map;)V

    return-object v9
.end method

.method private j(JJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/x$a;->f:Lcom/google/android/exoplayer2/c1/s;

    iput-wide p1, v0, Lcom/google/android/exoplayer2/c1/s;->a:J

    .line 2
    iput-wide p3, p0, Lcom/google/android/exoplayer2/source/x$a;->i:J

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/x$a;->h:Z

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/x$a;->m:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 14

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_7

    .line 1
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/x$a;->g:Z

    if-nez v2, :cond_7

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2
    :try_start_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/x$a;->f:Lcom/google/android/exoplayer2/c1/s;

    iget-wide v11, v4, Lcom/google/android/exoplayer2/c1/s;->a:J

    .line 3
    invoke-direct {p0, v11, v12}, Lcom/google/android/exoplayer2/source/x$a;->i(J)Lcom/google/android/exoplayer2/upstream/l;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/exoplayer2/source/x$a;->j:Lcom/google/android/exoplayer2/upstream/l;

    .line 4
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/x$a;->b:Lcom/google/android/exoplayer2/upstream/w;

    invoke-virtual {v5, v4}, Lcom/google/android/exoplayer2/upstream/w;->b(Lcom/google/android/exoplayer2/upstream/l;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer2/source/x$a;->k:J

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-eqz v8, :cond_0

    add-long/2addr v4, v11

    .line 5
    iput-wide v4, p0, Lcom/google/android/exoplayer2/source/x$a;->k:J

    .line 6
    :cond_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/x$a;->b:Lcom/google/android/exoplayer2/upstream/w;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/upstream/w;->c()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 7
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/x$a;->n:Lcom/google/android/exoplayer2/source/x;

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/x$a;->b:Lcom/google/android/exoplayer2/upstream/w;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/upstream/w;->getResponseHeaders()Ljava/util/Map;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->a(Ljava/util/Map;)Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/source/x;->A(Lcom/google/android/exoplayer2/source/x;Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;)Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    .line 8
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/x$a;->b:Lcom/google/android/exoplayer2/upstream/w;

    .line 9
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/x$a;->n:Lcom/google/android/exoplayer2/source/x;

    invoke-static {v6}, Lcom/google/android/exoplayer2/source/x;->z(Lcom/google/android/exoplayer2/source/x;)Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/x$a;->n:Lcom/google/android/exoplayer2/source/x;

    invoke-static {v6}, Lcom/google/android/exoplayer2/source/x;->z(Lcom/google/android/exoplayer2/source/x;)Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    move-result-object v6

    iget v6, v6, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->i:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 10
    new-instance v5, Lcom/google/android/exoplayer2/source/t;

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/x$a;->b:Lcom/google/android/exoplayer2/upstream/w;

    iget-object v7, p0, Lcom/google/android/exoplayer2/source/x$a;->n:Lcom/google/android/exoplayer2/source/x;

    invoke-static {v7}, Lcom/google/android/exoplayer2/source/x;->z(Lcom/google/android/exoplayer2/source/x;)Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    move-result-object v7

    iget v7, v7, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->i:I

    invoke-direct {v5, v6, v7, p0}, Lcom/google/android/exoplayer2/source/t;-><init>(Lcom/google/android/exoplayer2/upstream/j;ILcom/google/android/exoplayer2/source/t$a;)V

    .line 11
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/x$a;->n:Lcom/google/android/exoplayer2/source/x;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/source/x;->K()Lcom/google/android/exoplayer2/c1/v;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/exoplayer2/source/x$a;->l:Lcom/google/android/exoplayer2/c1/v;

    .line 12
    invoke-static {}, Lcom/google/android/exoplayer2/source/x;->B()Lcom/google/android/exoplayer2/Format;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/google/android/exoplayer2/c1/v;->d(Lcom/google/android/exoplayer2/Format;)V

    :cond_1
    move-object v6, v5

    .line 13
    new-instance v13, Lcom/google/android/exoplayer2/c1/e;

    iget-wide v9, p0, Lcom/google/android/exoplayer2/source/x$a;->k:J

    move-object v5, v13

    move-wide v7, v11

    invoke-direct/range {v5 .. v10}, Lcom/google/android/exoplayer2/c1/e;-><init>(Lcom/google/android/exoplayer2/upstream/j;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14
    :try_start_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/x$a;->c:Lcom/google/android/exoplayer2/source/x$b;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/x$a;->d:Lcom/google/android/exoplayer2/c1/j;

    invoke-virtual {v2, v13, v5, v4}, Lcom/google/android/exoplayer2/source/x$b;->b(Lcom/google/android/exoplayer2/c1/i;Lcom/google/android/exoplayer2/c1/j;Landroid/net/Uri;)Lcom/google/android/exoplayer2/c1/h;

    move-result-object v2

    .line 15
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/x$a;->n:Lcom/google/android/exoplayer2/source/x;

    invoke-static {v4}, Lcom/google/android/exoplayer2/source/x;->z(Lcom/google/android/exoplayer2/source/x;)Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    move-result-object v4

    if-eqz v4, :cond_2

    instance-of v4, v2, Lcom/google/android/exoplayer2/c1/b0/e;

    if-eqz v4, :cond_2

    .line 16
    move-object v4, v2

    check-cast v4, Lcom/google/android/exoplayer2/c1/b0/e;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/c1/b0/e;->a()V

    .line 17
    :cond_2
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/source/x$a;->h:Z

    if-eqz v4, :cond_3

    .line 18
    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/x$a;->i:J

    invoke-interface {v2, v11, v12, v4, v5}, Lcom/google/android/exoplayer2/c1/h;->h(JJ)V

    .line 19
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/x$a;->h:Z

    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 20
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/source/x$a;->g:Z

    if-nez v4, :cond_4

    .line 21
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/x$a;->e:Lcom/google/android/exoplayer2/util/i;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/i;->a()V

    .line 22
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/x$a;->f:Lcom/google/android/exoplayer2/c1/s;

    invoke-interface {v2, v13, v4}, Lcom/google/android/exoplayer2/c1/h;->f(Lcom/google/android/exoplayer2/c1/i;Lcom/google/android/exoplayer2/c1/s;)I

    move-result v1

    .line 23
    invoke-interface {v13}, Lcom/google/android/exoplayer2/c1/i;->k()J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/x$a;->n:Lcom/google/android/exoplayer2/source/x;

    invoke-static {v6}, Lcom/google/android/exoplayer2/source/x;->C(Lcom/google/android/exoplayer2/source/x;)J

    move-result-wide v6

    add-long/2addr v6, v11

    cmp-long v8, v4, v6

    if-lez v8, :cond_3

    .line 24
    invoke-interface {v13}, Lcom/google/android/exoplayer2/c1/i;->k()J

    move-result-wide v11

    .line 25
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/x$a;->e:Lcom/google/android/exoplayer2/util/i;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/i;->b()Z

    .line 26
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/x$a;->n:Lcom/google/android/exoplayer2/source/x;

    invoke-static {v4}, Lcom/google/android/exoplayer2/source/x;->v(Lcom/google/android/exoplayer2/source/x;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/x$a;->n:Lcom/google/android/exoplayer2/source/x;

    invoke-static {v5}, Lcom/google/android/exoplayer2/source/x;->D(Lcom/google/android/exoplayer2/source/x;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_4
    if-ne v1, v3, :cond_5

    const/4 v1, 0x0

    goto :goto_2

    .line 27
    :cond_5
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/x$a;->f:Lcom/google/android/exoplayer2/c1/s;

    invoke-interface {v13}, Lcom/google/android/exoplayer2/c1/i;->k()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/google/android/exoplayer2/c1/s;->a:J

    .line 28
    :goto_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/x$a;->b:Lcom/google/android/exoplayer2/upstream/w;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/h0;->j(Lcom/google/android/exoplayer2/upstream/j;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v13

    goto :goto_3

    :catchall_1
    move-exception v0

    :goto_3
    if-eq v1, v3, :cond_6

    if-eqz v2, :cond_6

    .line 29
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/x$a;->f:Lcom/google/android/exoplayer2/c1/s;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/c1/i;->k()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/android/exoplayer2/c1/s;->a:J

    .line 30
    :cond_6
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/x$a;->b:Lcom/google/android/exoplayer2/upstream/w;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/h0;->j(Lcom/google/android/exoplayer2/upstream/j;)V

    .line 31
    throw v0

    :cond_7
    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/util/v;)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/x$a;->m:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/x$a;->i:J

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/x$a;->n:Lcom/google/android/exoplayer2/source/x;

    .line 2
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/x;->w(Lcom/google/android/exoplayer2/source/x;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/x$a;->i:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_0
    move-wide v3, v0

    .line 3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/v;->a()I

    move-result v6

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/x$a;->l:Lcom/google/android/exoplayer2/c1/v;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/android/exoplayer2/c1/v;

    .line 5
    invoke-interface {v2, p1, v6}, Lcom/google/android/exoplayer2/c1/v;->b(Lcom/google/android/exoplayer2/util/v;I)V

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 6
    invoke-interface/range {v2 .. v8}, Lcom/google/android/exoplayer2/c1/v;->c(JIIILcom/google/android/exoplayer2/c1/v$a;)V

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/x$a;->m:Z

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/x$a;->g:Z

    return-void
.end method
