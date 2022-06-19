.class final Lcom/google/android/exoplayer2/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/exoplayer2/source/p;

.field public final b:Ljava/lang/Object;

.field public final c:[Lcom/google/android/exoplayer2/source/aa;

.field public d:Z

.field public e:Z

.field public f:Lcom/google/android/exoplayer2/v;

.field public g:Z

.field h:Lcom/google/android/exoplayer2/u;

.field i:Lcom/google/android/exoplayer2/source/TrackGroupArray;

.field j:Lcom/google/android/exoplayer2/trackselection/i;

.field k:J

.field private final l:[Z

.field private final m:[Lcom/google/android/exoplayer2/ag;

.field private final n:Lcom/google/android/exoplayer2/trackselection/h;

.field private final o:Lcom/google/android/exoplayer2/y;


# direct methods
.method public constructor <init>([Lcom/google/android/exoplayer2/ag;JLcom/google/android/exoplayer2/trackselection/h;Lcom/google/android/exoplayer2/upstream/b;Lcom/google/android/exoplayer2/y;Lcom/google/android/exoplayer2/v;Lcom/google/android/exoplayer2/trackselection/i;)V
    .locals 7

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/google/android/exoplayer2/u;->m:[Lcom/google/android/exoplayer2/ag;

    .line 94
    iput-wide p2, p0, Lcom/google/android/exoplayer2/u;->k:J

    .line 95
    iput-object p4, p0, Lcom/google/android/exoplayer2/u;->n:Lcom/google/android/exoplayer2/trackselection/h;

    .line 96
    iput-object p6, p0, Lcom/google/android/exoplayer2/u;->o:Lcom/google/android/exoplayer2/y;

    .line 97
    iget-object p2, p7, Lcom/google/android/exoplayer2/v;->a:Lcom/google/android/exoplayer2/source/r$a;

    iget-object p2, p2, Lcom/google/android/exoplayer2/source/r$a;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/exoplayer2/u;->b:Ljava/lang/Object;

    .line 98
    iput-object p7, p0, Lcom/google/android/exoplayer2/u;->f:Lcom/google/android/exoplayer2/v;

    .line 99
    sget-object p2, Lcom/google/android/exoplayer2/source/TrackGroupArray;->EMPTY:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iput-object p2, p0, Lcom/google/android/exoplayer2/u;->i:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 100
    iput-object p8, p0, Lcom/google/android/exoplayer2/u;->j:Lcom/google/android/exoplayer2/trackselection/i;

    .line 101
    array-length p2, p1

    new-array p2, p2, [Lcom/google/android/exoplayer2/source/aa;

    iput-object p2, p0, Lcom/google/android/exoplayer2/u;->c:[Lcom/google/android/exoplayer2/source/aa;

    .line 102
    array-length p1, p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/google/android/exoplayer2/u;->l:[Z

    .line 103
    iget-object p1, p7, Lcom/google/android/exoplayer2/v;->a:Lcom/google/android/exoplayer2/source/r$a;

    iget-wide p2, p7, Lcom/google/android/exoplayer2/v;->b:J

    iget-wide v5, p7, Lcom/google/android/exoplayer2/v;->d:J

    .line 2303
    iget-object p4, p1, Lcom/google/android/exoplayer2/source/r$a;->a:Ljava/lang/Object;

    .line 2457
    invoke-static {p4}, Lcom/google/android/exoplayer2/ae;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    .line 2304
    iget-object p7, p1, Lcom/google/android/exoplayer2/source/r$a;->a:Ljava/lang/Object;

    .line 2462
    invoke-static {p7}, Lcom/google/android/exoplayer2/ae;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p7

    .line 2305
    invoke-virtual {p1, p7}, Lcom/google/android/exoplayer2/source/r$a;->b(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/r$a;

    move-result-object p1

    .line 2306
    iget-object p7, p6, Lcom/google/android/exoplayer2/y;->c:Ljava/util/Map;

    invoke-interface {p7, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/android/exoplayer2/y$c;

    invoke-static {p4}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/android/exoplayer2/y$c;

    .line 3365
    iget-object p7, p6, Lcom/google/android/exoplayer2/y;->g:Ljava/util/Set;

    invoke-interface {p7, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3366
    iget-object p7, p6, Lcom/google/android/exoplayer2/y;->f:Ljava/util/HashMap;

    invoke-virtual {p7, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Lcom/google/android/exoplayer2/y$b;

    if-eqz p7, :cond_0

    .line 3368
    iget-object p8, p7, Lcom/google/android/exoplayer2/y$b;->a:Lcom/google/android/exoplayer2/source/r;

    iget-object p7, p7, Lcom/google/android/exoplayer2/y$b;->b:Lcom/google/android/exoplayer2/source/r$b;

    invoke-interface {p8, p7}, Lcom/google/android/exoplayer2/source/r;->a(Lcom/google/android/exoplayer2/source/r$b;)V

    .line 2308
    :cond_0
    iget-object p7, p4, Lcom/google/android/exoplayer2/y$c;->c:Ljava/util/List;

    invoke-interface {p7, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2309
    iget-object p7, p4, Lcom/google/android/exoplayer2/y$c;->a:Lcom/google/android/exoplayer2/source/n;

    .line 2310
    invoke-virtual {p7, p1, p5, p2, p3}, Lcom/google/android/exoplayer2/source/n;->b(Lcom/google/android/exoplayer2/source/r$a;Lcom/google/android/exoplayer2/upstream/b;J)Lcom/google/android/exoplayer2/source/m;

    move-result-object v1

    .line 2311
    iget-object p1, p6, Lcom/google/android/exoplayer2/y;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {p1, v1, p4}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2312
    invoke-virtual {p6}, Lcom/google/android/exoplayer2/y;->d()V

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, v5, p1

    if-eqz p3, :cond_1

    const-wide/high16 p1, -0x8000000000000000L

    cmp-long p3, v5, p1

    if-eqz p3, :cond_1

    .line 1422
    new-instance p1, Lcom/google/android/exoplayer2/source/c;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/c;-><init>(Lcom/google/android/exoplayer2/source/p;ZJJ)V

    move-object v1, p1

    .line 104
    :cond_1
    iput-object v1, p0, Lcom/google/android/exoplayer2/u;->a:Lcom/google/android/exoplayer2/source/p;

    return-void
.end method

.method private a([Lcom/google/android/exoplayer2/source/aa;)V
    .locals 3

    const/4 v0, 0x0

    .line 388
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/u;->m:[Lcom/google/android/exoplayer2/ag;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 389
    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/google/android/exoplayer2/ag;->a()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 390
    aput-object v1, p1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private b([Lcom/google/android/exoplayer2/source/aa;)V
    .locals 3

    const/4 v0, 0x0

    .line 401
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/u;->m:[Lcom/google/android/exoplayer2/ag;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 402
    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/google/android/exoplayer2/ag;->a()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/u;->j:Lcom/google/android/exoplayer2/trackselection/i;

    .line 403
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/trackselection/i;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 404
    new-instance v1, Lcom/google/android/exoplayer2/source/i;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/source/i;-><init>()V

    aput-object v1, p1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private f()V
    .locals 3

    .line 357
    invoke-direct {p0}, Lcom/google/android/exoplayer2/u;->h()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 360
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/u;->j:Lcom/google/android/exoplayer2/trackselection/i;

    iget v1, v1, Lcom/google/android/exoplayer2/trackselection/i;->a:I

    if-ge v0, v1, :cond_2

    .line 361
    iget-object v1, p0, Lcom/google/android/exoplayer2/u;->j:Lcom/google/android/exoplayer2/trackselection/i;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/trackselection/i;->a(I)Z

    move-result v1

    .line 362
    iget-object v2, p0, Lcom/google/android/exoplayer2/u;->j:Lcom/google/android/exoplayer2/trackselection/i;

    iget-object v2, v2, Lcom/google/android/exoplayer2/trackselection/i;->c:[Lcom/google/android/exoplayer2/trackselection/c;

    aget-object v2, v2, v0

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 364
    invoke-interface {v2}, Lcom/google/android/exoplayer2/trackselection/c;->b()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private g()V
    .locals 3

    .line 370
    invoke-direct {p0}, Lcom/google/android/exoplayer2/u;->h()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 373
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/u;->j:Lcom/google/android/exoplayer2/trackselection/i;

    iget v1, v1, Lcom/google/android/exoplayer2/trackselection/i;->a:I

    if-ge v0, v1, :cond_2

    .line 374
    iget-object v1, p0, Lcom/google/android/exoplayer2/u;->j:Lcom/google/android/exoplayer2/trackselection/i;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/trackselection/i;->a(I)Z

    move-result v1

    .line 375
    iget-object v2, p0, Lcom/google/android/exoplayer2/u;->j:Lcom/google/android/exoplayer2/trackselection/i;

    iget-object v2, v2, Lcom/google/android/exoplayer2/trackselection/i;->c:[Lcom/google/android/exoplayer2/trackselection/c;

    aget-object v2, v2, v0

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 377
    invoke-interface {v2}, Lcom/google/android/exoplayer2/trackselection/c;->c()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private h()Z
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/google/android/exoplayer2/u;->h:Lcom/google/android/exoplayer2/u;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a()J
    .locals 4

    .line 140
    iget-object v0, p0, Lcom/google/android/exoplayer2/u;->f:Lcom/google/android/exoplayer2/v;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/v;->b:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/u;->k:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final a(Lcom/google/android/exoplayer2/trackselection/i;J)J
    .locals 7

    .line 255
    iget-object v0, p0, Lcom/google/android/exoplayer2/u;->m:[Lcom/google/android/exoplayer2/ag;

    array-length v0, v0

    new-array v6, v0, [Z

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/u;->a(Lcom/google/android/exoplayer2/trackselection/i;JZ[Z)J

    move-result-wide p1

    return-wide p1
.end method

.method public final a(Lcom/google/android/exoplayer2/trackselection/i;JZ[Z)J
    .locals 13

    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 279
    :goto_0
    iget v4, v1, Lcom/google/android/exoplayer2/trackselection/i;->a:I

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    .line 280
    iget-object v4, v0, Lcom/google/android/exoplayer2/u;->l:[Z

    if-nez p4, :cond_0

    iget-object v6, v0, Lcom/google/android/exoplayer2/u;->j:Lcom/google/android/exoplayer2/trackselection/i;

    .line 281
    invoke-virtual {p1, v6, v3}, Lcom/google/android/exoplayer2/trackselection/i;->a(Lcom/google/android/exoplayer2/trackselection/i;I)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    aput-boolean v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 286
    :cond_1
    iget-object v3, v0, Lcom/google/android/exoplayer2/u;->c:[Lcom/google/android/exoplayer2/source/aa;

    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/u;->a([Lcom/google/android/exoplayer2/source/aa;)V

    .line 287
    invoke-direct {p0}, Lcom/google/android/exoplayer2/u;->g()V

    .line 288
    iput-object v1, v0, Lcom/google/android/exoplayer2/u;->j:Lcom/google/android/exoplayer2/trackselection/i;

    .line 289
    invoke-direct {p0}, Lcom/google/android/exoplayer2/u;->f()V

    .line 291
    iget-object v6, v0, Lcom/google/android/exoplayer2/u;->a:Lcom/google/android/exoplayer2/source/p;

    iget-object v7, v1, Lcom/google/android/exoplayer2/trackselection/i;->c:[Lcom/google/android/exoplayer2/trackselection/c;

    iget-object v8, v0, Lcom/google/android/exoplayer2/u;->l:[Z

    iget-object v9, v0, Lcom/google/android/exoplayer2/u;->c:[Lcom/google/android/exoplayer2/source/aa;

    move-object/from16 v10, p5

    move-wide v11, p2

    .line 292
    invoke-interface/range {v6 .. v12}, Lcom/google/android/exoplayer2/source/p;->a([Lcom/google/android/exoplayer2/trackselection/c;[Z[Lcom/google/android/exoplayer2/source/aa;[ZJ)J

    move-result-wide v3

    .line 298
    iget-object v6, v0, Lcom/google/android/exoplayer2/u;->c:[Lcom/google/android/exoplayer2/source/aa;

    invoke-direct {p0, v6}, Lcom/google/android/exoplayer2/u;->b([Lcom/google/android/exoplayer2/source/aa;)V

    .line 301
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/u;->e:Z

    const/4 v6, 0x0

    .line 302
    :goto_2
    iget-object v7, v0, Lcom/google/android/exoplayer2/u;->c:[Lcom/google/android/exoplayer2/source/aa;

    array-length v8, v7

    if-ge v6, v8, :cond_5

    .line 303
    aget-object v7, v7, v6

    if-eqz v7, :cond_2

    .line 304
    invoke-virtual {p1, v6}, Lcom/google/android/exoplayer2/trackselection/i;->a(I)Z

    move-result v7

    invoke-static {v7}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 306
    iget-object v7, v0, Lcom/google/android/exoplayer2/u;->m:[Lcom/google/android/exoplayer2/ag;

    aget-object v7, v7, v6

    invoke-interface {v7}, Lcom/google/android/exoplayer2/ag;->a()I

    move-result v7

    const/4 v8, 0x7

    if-eq v7, v8, :cond_4

    .line 307
    iput-boolean v5, v0, Lcom/google/android/exoplayer2/u;->e:Z

    goto :goto_4

    .line 310
    :cond_2
    iget-object v7, v1, Lcom/google/android/exoplayer2/trackselection/i;->c:[Lcom/google/android/exoplayer2/trackselection/c;

    aget-object v7, v7, v6

    if-nez v7, :cond_3

    const/4 v7, 0x1

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    :goto_3
    invoke-static {v7}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    :cond_4
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    return-wide v3
.end method

.method public final a(FLcom/google/android/exoplayer2/al;)Lcom/google/android/exoplayer2/trackselection/i;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/google/android/exoplayer2/u;->n:Lcom/google/android/exoplayer2/trackselection/h;

    iget-object v1, p0, Lcom/google/android/exoplayer2/u;->m:[Lcom/google/android/exoplayer2/ag;

    .line 5348
    iget-object v2, p0, Lcom/google/android/exoplayer2/u;->i:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 234
    iget-object v3, p0, Lcom/google/android/exoplayer2/u;->f:Lcom/google/android/exoplayer2/v;

    iget-object v3, v3, Lcom/google/android/exoplayer2/v;->a:Lcom/google/android/exoplayer2/source/r$a;

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/google/android/exoplayer2/trackselection/h;->a([Lcom/google/android/exoplayer2/ag;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/source/r$a;Lcom/google/android/exoplayer2/al;)Lcom/google/android/exoplayer2/trackselection/i;

    move-result-object p2

    .line 235
    iget-object v0, p2, Lcom/google/android/exoplayer2/trackselection/i;->c:[Lcom/google/android/exoplayer2/trackselection/c;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 237
    invoke-interface {v3, p1}, Lcom/google/android/exoplayer2/trackselection/c;->a(F)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public final a(J)V
    .locals 3

    .line 202
    invoke-direct {p0}, Lcom/google/android/exoplayer2/u;->h()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 203
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/u;->d:Z

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/google/android/exoplayer2/u;->a:Lcom/google/android/exoplayer2/source/p;

    .line 4126
    iget-wide v1, p0, Lcom/google/android/exoplayer2/u;->k:J

    sub-long/2addr p1, v1

    .line 204
    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/p;->a(J)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/u;)V
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/google/android/exoplayer2/u;->h:Lcom/google/android/exoplayer2/u;

    if-ne p1, v0, :cond_0

    return-void

    .line 332
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/u;->g()V

    .line 333
    iput-object p1, p0, Lcom/google/android/exoplayer2/u;->h:Lcom/google/android/exoplayer2/u;

    .line 334
    invoke-direct {p0}, Lcom/google/android/exoplayer2/u;->f()V

    return-void
.end method

.method public final b(J)V
    .locals 2

    .line 215
    invoke-direct {p0}, Lcom/google/android/exoplayer2/u;->h()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 5126
    iget-wide v0, p0, Lcom/google/android/exoplayer2/u;->k:J

    sub-long/2addr p1, v0

    .line 217
    iget-object v0, p0, Lcom/google/android/exoplayer2/u;->a:Lcom/google/android/exoplayer2/source/p;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/p;->c(J)Z

    return-void
.end method

.method public final b()Z
    .locals 5

    .line 145
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/u;->d:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/u;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/u;->a:Lcom/google/android/exoplayer2/source/p;

    .line 146
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/p;->d()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final c()J
    .locals 5

    .line 156
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/u;->d:Z

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/google/android/exoplayer2/u;->f:Lcom/google/android/exoplayer2/v;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/v;->b:J

    return-wide v0

    .line 160
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/u;->e:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/u;->a:Lcom/google/android/exoplayer2/source/p;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/p;->d()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    move-wide v3, v1

    :goto_0
    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    .line 161
    iget-object v0, p0, Lcom/google/android/exoplayer2/u;->f:Lcom/google/android/exoplayer2/v;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/v;->e:J

    return-wide v0

    :cond_2
    return-wide v3
.end method

.method public final d()J
    .locals 2

    .line 169
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/u;->d:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/u;->a:Lcom/google/android/exoplayer2/source/p;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/p;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public final e()V
    .locals 7

    .line 318
    invoke-direct {p0}, Lcom/google/android/exoplayer2/u;->g()V

    .line 319
    iget-object v0, p0, Lcom/google/android/exoplayer2/u;->f:Lcom/google/android/exoplayer2/v;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/v;->d:J

    iget-object v2, p0, Lcom/google/android/exoplayer2/u;->o:Lcom/google/android/exoplayer2/y;

    iget-object v3, p0, Lcom/google/android/exoplayer2/u;->a:Lcom/google/android/exoplayer2/source/p;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v0, v4

    if-eqz v6, :cond_0

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, v0, v4

    if-eqz v6, :cond_0

    .line 5434
    :try_start_0
    check-cast v3, Lcom/google/android/exoplayer2/source/c;

    iget-object v0, v3, Lcom/google/android/exoplayer2/source/c;->a:Lcom/google/android/exoplayer2/source/p;

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/y;->a(Lcom/google/android/exoplayer2/source/p;)V

    return-void

    .line 5436
    :cond_0
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/y;->a(Lcom/google/android/exoplayer2/source/p;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "MediaPeriodHolder"

    const-string v2, "Period release failed."

    .line 5440
    invoke-static {v1, v2, v0}, Lcom/google/android/exoplayer2/util/n;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
