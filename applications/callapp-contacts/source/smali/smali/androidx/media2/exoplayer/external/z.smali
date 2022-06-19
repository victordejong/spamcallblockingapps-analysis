.class final Landroidx/media2/exoplayer/external/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/media2/exoplayer/external/source/s;

.field public final b:Ljava/lang/Object;

.field public final c:[Landroidx/media2/exoplayer/external/source/al;

.field public d:Z

.field public e:Z

.field public f:Landroidx/media2/exoplayer/external/aa;

.field g:Landroidx/media2/exoplayer/external/z;

.field h:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

.field i:Landroidx/media2/exoplayer/external/trackselection/h;

.field j:J

.field private final k:[Z

.field private final l:[Landroidx/media2/exoplayer/external/ah;

.field private final m:Landroidx/media2/exoplayer/external/trackselection/g;

.field private final n:Landroidx/media2/exoplayer/external/source/t;


# direct methods
.method public constructor <init>([Landroidx/media2/exoplayer/external/ah;JLandroidx/media2/exoplayer/external/trackselection/g;Landroidx/media2/exoplayer/external/upstream/b;Landroidx/media2/exoplayer/external/source/t;Landroidx/media2/exoplayer/external/aa;Landroidx/media2/exoplayer/external/trackselection/h;)V
    .locals 7

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Landroidx/media2/exoplayer/external/z;->l:[Landroidx/media2/exoplayer/external/ah;

    .line 95
    iput-wide p2, p0, Landroidx/media2/exoplayer/external/z;->j:J

    .line 96
    iput-object p4, p0, Landroidx/media2/exoplayer/external/z;->m:Landroidx/media2/exoplayer/external/trackselection/g;

    .line 97
    iput-object p6, p0, Landroidx/media2/exoplayer/external/z;->n:Landroidx/media2/exoplayer/external/source/t;

    .line 98
    iget-object p2, p7, Landroidx/media2/exoplayer/external/aa;->a:Landroidx/media2/exoplayer/external/source/t$a;

    iget-object p2, p2, Landroidx/media2/exoplayer/external/source/t$a;->a:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/media2/exoplayer/external/z;->b:Ljava/lang/Object;

    .line 99
    iput-object p7, p0, Landroidx/media2/exoplayer/external/z;->f:Landroidx/media2/exoplayer/external/aa;

    .line 100
    sget-object p2, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->EMPTY:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    iput-object p2, p0, Landroidx/media2/exoplayer/external/z;->h:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    .line 101
    iput-object p8, p0, Landroidx/media2/exoplayer/external/z;->i:Landroidx/media2/exoplayer/external/trackselection/h;

    .line 102
    array-length p2, p1

    new-array p2, p2, [Landroidx/media2/exoplayer/external/source/al;

    iput-object p2, p0, Landroidx/media2/exoplayer/external/z;->c:[Landroidx/media2/exoplayer/external/source/al;

    .line 103
    array-length p1, p1

    new-array p1, p1, [Z

    iput-object p1, p0, Landroidx/media2/exoplayer/external/z;->k:[Z

    .line 104
    iget-object p1, p7, Landroidx/media2/exoplayer/external/aa;->a:Landroidx/media2/exoplayer/external/source/t$a;

    iget-wide p2, p7, Landroidx/media2/exoplayer/external/aa;->b:J

    iget-wide v5, p7, Landroidx/media2/exoplayer/external/aa;->d:J

    .line 1417
    invoke-interface {p6, p1, p5, p2, p3}, Landroidx/media2/exoplayer/external/source/t;->a(Landroidx/media2/exoplayer/external/source/t$a;Landroidx/media2/exoplayer/external/upstream/b;J)Landroidx/media2/exoplayer/external/source/s;

    move-result-object v1

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, v5, p1

    if-eqz p3, :cond_0

    const-wide/high16 p1, -0x8000000000000000L

    cmp-long p3, v5, p1

    if-eqz p3, :cond_0

    .line 1419
    new-instance p1, Landroidx/media2/exoplayer/external/source/c;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Landroidx/media2/exoplayer/external/source/c;-><init>(Landroidx/media2/exoplayer/external/source/s;ZJJ)V

    move-object v1, p1

    .line 105
    :cond_0
    iput-object v1, p0, Landroidx/media2/exoplayer/external/z;->a:Landroidx/media2/exoplayer/external/source/s;

    return-void
.end method

.method private a([Landroidx/media2/exoplayer/external/source/al;)V
    .locals 3

    const/4 v0, 0x0

    .line 385
    :goto_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/z;->l:[Landroidx/media2/exoplayer/external/ah;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 386
    aget-object v1, v1, v0

    invoke-interface {v1}, Landroidx/media2/exoplayer/external/ah;->a()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 387
    aput-object v1, p1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private b([Landroidx/media2/exoplayer/external/source/al;)V
    .locals 3

    const/4 v0, 0x0

    .line 398
    :goto_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/z;->l:[Landroidx/media2/exoplayer/external/ah;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 399
    aget-object v1, v1, v0

    invoke-interface {v1}, Landroidx/media2/exoplayer/external/ah;->a()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroidx/media2/exoplayer/external/z;->i:Landroidx/media2/exoplayer/external/trackselection/h;

    .line 400
    invoke-virtual {v1, v0}, Landroidx/media2/exoplayer/external/trackselection/h;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 401
    new-instance v1, Landroidx/media2/exoplayer/external/source/m;

    invoke-direct {v1}, Landroidx/media2/exoplayer/external/source/m;-><init>()V

    aput-object v1, p1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private f()V
    .locals 3

    .line 354
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/z;->h()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 357
    :goto_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/z;->i:Landroidx/media2/exoplayer/external/trackselection/h;

    iget v1, v1, Landroidx/media2/exoplayer/external/trackselection/h;->a:I

    if-ge v0, v1, :cond_2

    .line 358
    iget-object v1, p0, Landroidx/media2/exoplayer/external/z;->i:Landroidx/media2/exoplayer/external/trackselection/h;

    invoke-virtual {v1, v0}, Landroidx/media2/exoplayer/external/trackselection/h;->a(I)Z

    move-result v1

    .line 359
    iget-object v2, p0, Landroidx/media2/exoplayer/external/z;->i:Landroidx/media2/exoplayer/external/trackselection/h;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/trackselection/h;->c:Landroidx/media2/exoplayer/external/trackselection/f;

    .line 5055
    iget-object v2, v2, Landroidx/media2/exoplayer/external/trackselection/f;->b:[Landroidx/media2/exoplayer/external/trackselection/e;

    aget-object v2, v2, v0

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 361
    invoke-interface {v2}, Landroidx/media2/exoplayer/external/trackselection/e;->d()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private g()V
    .locals 2

    .line 367
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/z;->h()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 370
    :goto_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/z;->i:Landroidx/media2/exoplayer/external/trackselection/h;

    iget v1, v1, Landroidx/media2/exoplayer/external/trackselection/h;->a:I

    if-ge v0, v1, :cond_1

    .line 371
    iget-object v1, p0, Landroidx/media2/exoplayer/external/z;->i:Landroidx/media2/exoplayer/external/trackselection/h;

    invoke-virtual {v1, v0}, Landroidx/media2/exoplayer/external/trackselection/h;->a(I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private h()Z
    .locals 1

    .line 407
    iget-object v0, p0, Landroidx/media2/exoplayer/external/z;->g:Landroidx/media2/exoplayer/external/z;

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

    .line 141
    iget-object v0, p0, Landroidx/media2/exoplayer/external/z;->f:Landroidx/media2/exoplayer/external/aa;

    iget-wide v0, v0, Landroidx/media2/exoplayer/external/aa;->b:J

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/z;->j:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final a(Landroidx/media2/exoplayer/external/trackselection/h;J)J
    .locals 7

    .line 251
    iget-object v0, p0, Landroidx/media2/exoplayer/external/z;->l:[Landroidx/media2/exoplayer/external/ah;

    array-length v0, v0

    new-array v6, v0, [Z

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    invoke-virtual/range {v1 .. v6}, Landroidx/media2/exoplayer/external/z;->a(Landroidx/media2/exoplayer/external/trackselection/h;JZ[Z)J

    move-result-wide p1

    return-wide p1
.end method

.method public final a(Landroidx/media2/exoplayer/external/trackselection/h;JZ[Z)J
    .locals 13

    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 275
    :goto_0
    iget v4, v1, Landroidx/media2/exoplayer/external/trackselection/h;->a:I

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    .line 276
    iget-object v4, v0, Landroidx/media2/exoplayer/external/z;->k:[Z

    if-nez p4, :cond_0

    iget-object v6, v0, Landroidx/media2/exoplayer/external/z;->i:Landroidx/media2/exoplayer/external/trackselection/h;

    .line 277
    invoke-virtual {p1, v6, v3}, Landroidx/media2/exoplayer/external/trackselection/h;->a(Landroidx/media2/exoplayer/external/trackselection/h;I)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    aput-boolean v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 282
    :cond_1
    iget-object v3, v0, Landroidx/media2/exoplayer/external/z;->c:[Landroidx/media2/exoplayer/external/source/al;

    invoke-direct {p0, v3}, Landroidx/media2/exoplayer/external/z;->a([Landroidx/media2/exoplayer/external/source/al;)V

    .line 283
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/z;->g()V

    .line 284
    iput-object v1, v0, Landroidx/media2/exoplayer/external/z;->i:Landroidx/media2/exoplayer/external/trackselection/h;

    .line 285
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/z;->f()V

    .line 287
    iget-object v3, v1, Landroidx/media2/exoplayer/external/trackselection/h;->c:Landroidx/media2/exoplayer/external/trackselection/f;

    .line 288
    iget-object v6, v0, Landroidx/media2/exoplayer/external/z;->a:Landroidx/media2/exoplayer/external/source/s;

    .line 290
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/trackselection/f;->a()[Landroidx/media2/exoplayer/external/trackselection/e;

    move-result-object v7

    iget-object v8, v0, Landroidx/media2/exoplayer/external/z;->k:[Z

    iget-object v9, v0, Landroidx/media2/exoplayer/external/z;->c:[Landroidx/media2/exoplayer/external/source/al;

    move-object/from16 v10, p5

    move-wide v11, p2

    .line 289
    invoke-interface/range {v6 .. v12}, Landroidx/media2/exoplayer/external/source/s;->a([Landroidx/media2/exoplayer/external/trackselection/e;[Z[Landroidx/media2/exoplayer/external/source/al;[ZJ)J

    move-result-wide v6

    .line 295
    iget-object v4, v0, Landroidx/media2/exoplayer/external/z;->c:[Landroidx/media2/exoplayer/external/source/al;

    invoke-direct {p0, v4}, Landroidx/media2/exoplayer/external/z;->b([Landroidx/media2/exoplayer/external/source/al;)V

    .line 298
    iput-boolean v2, v0, Landroidx/media2/exoplayer/external/z;->e:Z

    const/4 v4, 0x0

    .line 299
    :goto_2
    iget-object v8, v0, Landroidx/media2/exoplayer/external/z;->c:[Landroidx/media2/exoplayer/external/source/al;

    array-length v9, v8

    if-ge v4, v9, :cond_5

    .line 300
    aget-object v8, v8, v4

    if-eqz v8, :cond_2

    .line 301
    invoke-virtual {p1, v4}, Landroidx/media2/exoplayer/external/trackselection/h;->a(I)Z

    move-result v8

    invoke-static {v8}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    .line 303
    iget-object v8, v0, Landroidx/media2/exoplayer/external/z;->l:[Landroidx/media2/exoplayer/external/ah;

    aget-object v8, v8, v4

    invoke-interface {v8}, Landroidx/media2/exoplayer/external/ah;->a()I

    move-result v8

    const/4 v9, 0x6

    if-eq v8, v9, :cond_4

    .line 304
    iput-boolean v5, v0, Landroidx/media2/exoplayer/external/z;->e:Z

    goto :goto_4

    .line 4055
    :cond_2
    iget-object v8, v3, Landroidx/media2/exoplayer/external/trackselection/f;->b:[Landroidx/media2/exoplayer/external/trackselection/e;

    aget-object v8, v8, v4

    if-nez v8, :cond_3

    const/4 v8, 0x1

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    .line 307
    :goto_3
    invoke-static {v8}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    :cond_4
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    return-wide v6
.end method

.method public final a(F)Landroidx/media2/exoplayer/external/trackselection/h;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 229
    iget-object v0, p0, Landroidx/media2/exoplayer/external/z;->m:Landroidx/media2/exoplayer/external/trackselection/g;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/z;->l:[Landroidx/media2/exoplayer/external/ah;

    .line 3345
    iget-object v2, p0, Landroidx/media2/exoplayer/external/z;->h:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    .line 230
    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/trackselection/g;->a([Landroidx/media2/exoplayer/external/ah;Landroidx/media2/exoplayer/external/source/TrackGroupArray;)Landroidx/media2/exoplayer/external/trackselection/h;

    move-result-object v0

    .line 231
    iget-object v1, v0, Landroidx/media2/exoplayer/external/trackselection/h;->c:Landroidx/media2/exoplayer/external/trackselection/f;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/trackselection/f;->a()[Landroidx/media2/exoplayer/external/trackselection/e;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    .line 233
    invoke-interface {v4, p1}, Landroidx/media2/exoplayer/external/trackselection/e;->a(F)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final a(J)V
    .locals 3

    .line 198
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/z;->h()Z

    move-result v0

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    .line 199
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/z;->d:Z

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Landroidx/media2/exoplayer/external/z;->a:Landroidx/media2/exoplayer/external/source/s;

    .line 2127
    iget-wide v1, p0, Landroidx/media2/exoplayer/external/z;->j:J

    sub-long/2addr p1, v1

    .line 200
    invoke-interface {v0, p1, p2}, Landroidx/media2/exoplayer/external/source/s;->a(J)V

    :cond_0
    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/z;)V
    .locals 1

    .line 326
    iget-object v0, p0, Landroidx/media2/exoplayer/external/z;->g:Landroidx/media2/exoplayer/external/z;

    if-ne p1, v0, :cond_0

    return-void

    .line 329
    :cond_0
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/z;->g()V

    .line 330
    iput-object p1, p0, Landroidx/media2/exoplayer/external/z;->g:Landroidx/media2/exoplayer/external/z;

    .line 331
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/z;->f()V

    return-void
.end method

.method public final b(J)V
    .locals 2

    .line 211
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/z;->h()Z

    move-result v0

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    .line 3127
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/z;->j:J

    sub-long/2addr p1, v0

    .line 213
    iget-object v0, p0, Landroidx/media2/exoplayer/external/z;->a:Landroidx/media2/exoplayer/external/source/s;

    invoke-interface {v0, p1, p2}, Landroidx/media2/exoplayer/external/source/s;->c(J)Z

    return-void
.end method

.method public final b()Z
    .locals 5

    .line 146
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/z;->d:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/z;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media2/exoplayer/external/z;->a:Landroidx/media2/exoplayer/external/source/s;

    .line 147
    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/s;->d()J

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

    .line 157
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/z;->d:Z

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Landroidx/media2/exoplayer/external/z;->f:Landroidx/media2/exoplayer/external/aa;

    iget-wide v0, v0, Landroidx/media2/exoplayer/external/aa;->b:J

    return-wide v0

    .line 161
    :cond_0
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/z;->e:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media2/exoplayer/external/z;->a:Landroidx/media2/exoplayer/external/source/s;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/s;->d()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    move-wide v3, v1

    :goto_0
    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    .line 162
    iget-object v0, p0, Landroidx/media2/exoplayer/external/z;->f:Landroidx/media2/exoplayer/external/aa;

    iget-wide v0, v0, Landroidx/media2/exoplayer/external/aa;->e:J

    return-wide v0

    :cond_2
    return-wide v3
.end method

.method public final d()J
    .locals 2

    .line 170
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/z;->d:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/z;->a:Landroidx/media2/exoplayer/external/source/s;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/s;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public final e()V
    .locals 7

    .line 315
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/z;->g()V

    .line 316
    iget-object v0, p0, Landroidx/media2/exoplayer/external/z;->f:Landroidx/media2/exoplayer/external/aa;

    iget-wide v0, v0, Landroidx/media2/exoplayer/external/aa;->d:J

    iget-object v2, p0, Landroidx/media2/exoplayer/external/z;->n:Landroidx/media2/exoplayer/external/source/t;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/z;->a:Landroidx/media2/exoplayer/external/source/s;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v0, v4

    if-eqz v6, :cond_0

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, v0, v4

    if-eqz v6, :cond_0

    .line 4431
    :try_start_0
    check-cast v3, Landroidx/media2/exoplayer/external/source/c;

    iget-object v0, v3, Landroidx/media2/exoplayer/external/source/c;->a:Landroidx/media2/exoplayer/external/source/s;

    invoke-interface {v2, v0}, Landroidx/media2/exoplayer/external/source/t;->a(Landroidx/media2/exoplayer/external/source/s;)V

    return-void

    .line 4433
    :cond_0
    invoke-interface {v2, v3}, Landroidx/media2/exoplayer/external/source/t;->a(Landroidx/media2/exoplayer/external/source/s;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "MediaPeriodHolder"

    const-string v2, "Period release failed."

    .line 4437
    invoke-static {v1, v2, v0}, Landroidx/media2/exoplayer/external/util/j;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
